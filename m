Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDDC9E539
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 12:03:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6D7D89911;
	Tue, 27 Aug 2019 10:03:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 191628996F
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:03:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B8881308123B
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:03:47 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 179395D6B0;
 Tue, 27 Aug 2019 10:03:46 +0000 (UTC)
Date: Tue, 27 Aug 2019 12:03:46 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827100346.5ychjjqx2daxu5n5@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-7-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-7-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Tue, 27 Aug 2019 10:03:47 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 06/29] usb-redir: extend USB
 backend to support emulated devices
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0879037743=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0879037743==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fjtosc5bq6emgarn"
Content-Disposition: inline


--fjtosc5bq6emgarn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Didn't check the whole series yet but I recall some other
comments in the patch besides the fixup. I'll comment later on
it.

On Tue, Aug 27, 2019 at 10:22:23AM +0100, Frediano Ziglio wrote:
> From: Yuri Benditovich <yuri.benditovich@daynix.com>
>=20
> Redirection of emulated devices requires special approach,
> as usbredirhost can't be used for that (it works only with
> libusb devices). For emulated devices we create instance of
> usbredirparser that implements USB redirection protocol.
> In order to work with the same set of protocol capabilities
> that usbredirhost sets up with remote side, the parser shall:
> - not send its own 'hello' to the server
> - initialize the same capabilities that usbredirhost
> - receive the same 'hello' response
> For that we analyze 'hello' sent by USB redir parser and
> extract set of capabilities from it and upon receive of
> 'hello' response we provide it also to the parser.
> When libusb device is redirected via a channel, instance of
> usbredirhost serves it.
> When emulated device is redirected via a channel, instance
> of usbredirparser does the job.
>=20
> Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> ---
>  src/usb-backend.c | 616 +++++++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 580 insertions(+), 36 deletions(-)
>=20
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> index 252c0a64..9369bf5e 100644
> --- a/src/usb-backend.c
> +++ b/src/usb-backend.c
> @@ -55,6 +55,7 @@ struct _SpiceUsbBackendDevice
>      gint ref_count;
>      SpiceUsbBackendChannel *attached_to;
>      UsbDeviceInformation device_info;
> +    gboolean edev_configured;
>  };
> =20
>  struct _SpiceUsbBackend
> @@ -80,10 +81,20 @@ struct _SpiceUsbBackend
>  struct _SpiceUsbBackendChannel
>  {
>      struct usbredirhost *usbredirhost;
> +    struct usbredirhost *hidden_host;
> +    struct usbredirparser *parser;
> +    struct usbredirparser *hidden_parser;
>      uint8_t *read_buf;
>      int read_buf_size;
>      struct usbredirfilter_rule *rules;
>      int rules_count;
> +    uint32_t host_caps;
> +    uint32_t parser_init_done  : 1;
> +    uint32_t parser_with_hello : 1;
> +    uint32_t hello_done_parser : 1;
> +    uint32_t hello_sent        : 1;
> +    uint32_t rejected          : 1;
> +    uint32_t wait_disc_ack     : 1;
>      SpiceUsbBackendDevice *attached;
>      SpiceUsbredirChannel  *user_data;
>      SpiceUsbBackend *backend;
> @@ -355,7 +366,11 @@ gboolean spice_usb_backend_device_isoch(SpiceUsbBack=
endDevice *dev)
>      gint i, j, k;
>      int rc;
> =20
> -    g_return_val_if_fail(libdev !=3D NULL, 0);
> +    g_return_val_if_fail(libdev !=3D NULL || dev->edev !=3D NULL, 0);
> +    if (dev->edev) {
> +        /* currently we do not emulate isoch devices */
> +        return FALSE;
> +    }
> =20
>      rc =3D libusb_get_active_config_descriptor(libdev, &conf_desc);
>      if (rc) {
> @@ -390,13 +405,16 @@ from both the main thread as well as from the usb e=
vent handling thread */
>  static void usbredir_write_flush_callback(void *user_data)
>  {
>      SpiceUsbBackendChannel *ch =3D user_data;
> -    if (!ch->usbredirhost) {
> -        /* just to be on the safe side */
> -        return;
> -    }
>      if (is_channel_ready(ch->user_data)) {
> -        SPICE_DEBUG("%s ch %p -> usbredirhost", __FUNCTION__, ch);
> -        usbredirhost_write_guest_data(ch->usbredirhost);
> +        if (ch->usbredirhost) {
> +            SPICE_DEBUG("%s ch %p -> usbredirhost", __FUNCTION__, ch);
> +            usbredirhost_write_guest_data(ch->usbredirhost);
> +        } else if (ch->parser) {
> +            SPICE_DEBUG("%s ch %p -> parser", __FUNCTION__, ch);
> +            usbredirparser_do_write(ch->parser);
> +        } else {
> +            SPICE_DEBUG("%s ch %p (NOT ACTIVE)", __FUNCTION__, ch);
> +        }
>      } else {
>          SPICE_DEBUG("%s ch %p (not ready)", __FUNCTION__, ch);
>      }
> @@ -551,13 +569,52 @@ void spice_usb_backend_device_unref(SpiceUsbBackend=
Device *dev)
>      }
>  }
> =20
> -int spice_usb_backend_device_check_filter(
> -    SpiceUsbBackendDevice *dev,
> -    const struct usbredirfilter_rule *rules,
> -    int count)
> +static int check_edev_device_filter(SpiceUsbBackendDevice *dev,
> +                                    const struct usbredirfilter_rule *ru=
les,
> +                                    int count)
>  {
> -    return usbredirhost_check_device_filter(
> -        rules, count, dev->libusb_device, 0);
> +    SpiceUsbEmulatedDevice *edev =3D dev->edev;
> +    uint8_t cls[32], subcls[32], proto[32], *cfg, ifnum =3D 0;
> +    uint16_t size, offset =3D 0;
> +    if (!edev) {
> +        return 1;
> +    }
> +    if (!device_ops(edev)->get_descriptor(edev, LIBUSB_DT_CONFIG, 0, (vo=
id **)&cfg, &size)) {
> +        return 1;
> +    }
> +    while ((offset + 1) < size) {
> +        uint8_t len  =3D cfg[offset];
> +        uint8_t type =3D cfg[offset + 1];
> +        if ((offset + len) > size) {
> +            break;
> +        }
> +        if (type =3D=3D LIBUSB_DT_INTERFACE) {
> +            cls[ifnum] =3D cfg[offset + 5];
> +            subcls[ifnum] =3D cfg[offset + 6];
> +            proto[ifnum] =3D cfg[offset + 7];
> +            ifnum++;
> +        }
> +        offset +=3D len;
> +    }
> +
> +    return usbredirfilter_check(rules, count,
> +                                dev->device_info.class,
> +                                dev->device_info.subclass,
> +                                dev->device_info.protocol,
> +                                cls, subcls, proto, ifnum,
> +                                dev->device_info.vid,
> +                                dev->device_info.pid,
> +                                dev->device_info.bcdUSB, 0);
> +}
> +
> +int spice_usb_backend_device_check_filter(SpiceUsbBackendDevice *dev,
> +                                          const struct usbredirfilter_ru=
le *rules, int count)
> +{
> +    if (dev->libusb_device) {
> +        return usbredirhost_check_device_filter(rules, count, dev->libus=
b_device, 0);
> +    } else {
> +        return check_edev_device_filter(dev, rules, count);
> +    }
>  }
> =20
>  static int usbredir_read_callback(void *user_data, uint8_t *data, int co=
unt)
> @@ -621,6 +678,17 @@ static int usbredir_write_callback(void *user_data, =
uint8_t *data, int count)
>      SpiceUsbBackendChannel *ch =3D user_data;
>      int res;
>      SPICE_DEBUG("%s ch %p, %d bytes", __FUNCTION__, ch, count);
> +    if (!ch->hello_sent) {
> +        /* hello is short header (12) + hello struct (64) + capabilities=
 (4) */
> +        int hello_size =3D sizeof(struct usb_redir_header) + sizeof(stru=
ct usb_redir_hello_header);
> +        ch->hello_sent =3D 1;
> +        if (count =3D=3D hello_size) {
> +            memcpy(&ch->host_caps, data + hello_size - sizeof(ch->host_c=
aps),
> +                   sizeof(ch->host_caps));
> +            SPICE_DEBUG("%s ch %p, sending first hello, caps %08X",
> +                        __FUNCTION__, ch, ch->host_caps);
> +        }
> +    }
>      res =3D spice_usbredir_write_callback(ch->user_data, data, count);
>      return res;
>  }
> @@ -641,6 +709,27 @@ int spice_usb_backend_read_guest_data(SpiceUsbBacken=
dChannel *ch, uint8_t *data,
>      ch->read_buf_size =3D count;
>      if (ch->usbredirhost) {
>          res =3D usbredirhost_read_guest_data(ch->usbredirhost);
> +        if (!ch->hello_done_parser) {
> +            int res_parser;
> +            /* usbredirhost should consume hello response */
> +            g_return_val_if_fail(ch->read_buf =3D=3D NULL, USB_REDIR_ERR=
OR_READ_PARSE);
> +
> +            ch->read_buf =3D data;
> +            ch->read_buf_size =3D count;
> +            ch->hello_done_parser =3D 1;
> +            if (ch->attached && ch->attached->edev) {
> +                /* case of CD sharing on connect */
> +                ch->usbredirhost =3D NULL;
> +                ch->parser =3D ch->hidden_parser;
> +                SPICE_DEBUG("%s: switch %p to parser", __FUNCTION__, ch);
> +            }
> +            res_parser =3D usbredirparser_do_read(ch->hidden_parser);
> +            if (res >=3D 0) {
> +                res =3D res_parser;
> +            }
> +        }
> +    } else if (ch->parser) {
> +        res =3D usbredirparser_do_read(ch->parser);
>      } else {
>          res =3D USB_REDIR_ERROR_IO;
>      }
> @@ -661,6 +750,11 @@ int spice_usb_backend_read_guest_data(SpiceUsbBacken=
dChannel *ch, uint8_t *data,
>      }
>      SPICE_DEBUG("%s ch %p, %d bytes, res %d", __FUNCTION__, ch, count, r=
es);
> =20
> +    if (ch->rejected) {
> +        ch->rejected =3D 0;
> +        res =3D USB_REDIR_ERROR_DEV_REJECTED;
> +    }
> +
>      return res;
>  }
> =20
> @@ -690,13 +784,426 @@ GError *spice_usb_backend_get_error_details(int er=
ror_code, gchar *desc)
>  void spice_usb_backend_return_write_data(SpiceUsbBackendChannel *ch, voi=
d *data)
>  {
>      if (ch->usbredirhost) {
> -        SPICE_DEBUG("%s ch %p", __FUNCTION__, ch);
> +        SPICE_DEBUG("%s ch %p -> usbredirhost", __FUNCTION__, ch);
>          usbredirhost_free_write_buffer(ch->usbredirhost, data);
> +    } else if (ch->parser) {
> +        SPICE_DEBUG("%s ch %p -> parser", __FUNCTION__, ch);
> +        usbredirparser_free_write_buffer(ch->parser, data);
>      } else {
>          SPICE_DEBUG("%s ch %p - NOBODY TO CALL", __FUNCTION__, ch);
>      }
>  }
> =20
> +static void usbredir_control_packet(void *priv,
> +    uint64_t id, struct usb_redir_control_packet_header *h,
> +    uint8_t *data, int data_len)
> +{
> +    SpiceUsbBackendChannel *ch =3D priv;
> +    SpiceUsbBackendDevice *d =3D ch->attached;
> +    SpiceUsbEmulatedDevice *edev =3D d ? d->edev : NULL;
> +    struct usb_redir_control_packet_header response =3D *h;
> +    uint8_t reqtype =3D h->requesttype & 0x7f;
> +    gboolean done =3D FALSE;
> +    void *out_buffer =3D NULL;
> +
> +    response.status =3D usb_redir_stall;
> +    SPICE_DEBUG("%s %p: TRVIL %02X %02X %04X %04X %04X",
> +                __FUNCTION__,
> +                ch, h->requesttype, h->request,
> +                h->value, h->index, h->length);
> +
> +    if (!edev) {
> +        SPICE_DEBUG("%s: device not attached", __FUNCTION__);
> +        response.status =3D usb_redir_ioerror;
> +        done =3D TRUE;
> +    } else if (reqtype =3D=3D (LIBUSB_REQUEST_TYPE_STANDARD | LIBUSB_REC=
IPIENT_DEVICE) &&
> +               h->request =3D=3D LIBUSB_REQUEST_GET_DESCRIPTOR) {
> +        uint16_t size;
> +        done =3D device_ops(edev)->get_descriptor(edev, h->value >> 8, h=
->value & 0xff,
> +                                                &out_buffer, &size);
> +        response.length =3D size;
> +        if (done) {
> +            response.status =3D 0;
> +        }
> +        done =3D TRUE;
> +    }
> +
> +    if (!done) {
> +        device_ops(edev)->control_request(edev, data, data_len, &respons=
e, &out_buffer);
> +        done =3D TRUE;
> +    }
> +
> +    if (response.status) {
> +        response.length =3D 0;
> +    } else if (response.length > h->length) {
> +        response.length =3D h->length;
> +    }
> +
> +    SPICE_DEBUG("%s responding with payload of %02X, status %X",
> +                __FUNCTION__, response.length, response.status);
> +    usbredirparser_send_control_packet(ch->parser, id, &response,
> +                                       response.length ? out_buffer : NU=
LL,
> +                                       response.length);
> +
> +    usbredir_write_flush_callback(ch);
> +    usbredirparser_free_packet_data(ch->parser, data);
> +}
> +
> +static void usbredir_bulk_packet(void *priv,
> +    uint64_t id, struct usb_redir_bulk_packet_header *h,
> +    uint8_t *data, int data_len)
> +{
> +    SpiceUsbBackendChannel *ch =3D priv;
> +    SpiceUsbBackendDevice *d =3D ch->attached;
> +    SpiceUsbEmulatedDevice *edev =3D d ? d->edev : NULL;
> +    struct usb_redir_bulk_packet_header hout =3D *h;
> +    uint32_t len =3D (h->length_high << 16) | h->length;
> +    SPICE_DEBUG("%s %p: ep %X, len %u, id %" G_GUINT64_FORMAT, __FUNCTIO=
N__,
> +                ch, h->endpoint, len, id);
> +
> +    if (!edev) {
> +        SPICE_DEBUG("%s: device not attached", __FUNCTION__);
> +        hout.status =3D usb_redir_ioerror;
> +        hout.length =3D hout.length_high =3D 0;
> +        SPICE_DEBUG("%s: responding with ZLP status %d", __FUNCTION__, h=
out.status);
> +    } else if (h->endpoint & LIBUSB_ENDPOINT_IN) {
> +        if (device_ops(edev)->bulk_in_request(edev, id, &hout)) {
> +            usbredirparser_free_packet_data(ch->parser, data);
> +            /* completion is asynchronous */
> +            return;
> +        }
> +    } else {
> +        hout.status =3D usb_redir_stall;
> +        device_ops(edev)->bulk_out_request(edev, h->endpoint, data, data=
_len, &hout.status);
> +        SPICE_DEBUG("%s: responding status %d", __FUNCTION__, hout.statu=
s);
> +    }
> +
> +    usbredirparser_send_bulk_packet(ch->parser, id, &hout, NULL, 0);
> +    usbredirparser_free_packet_data(ch->parser, data);
> +    usbredir_write_flush_callback(ch);
> +}
> +
> +static void usbredir_device_reset(void *priv)
> +{
> +    SpiceUsbBackendChannel *ch =3D priv;
> +    SpiceUsbBackendDevice *d =3D ch->attached;
> +    SpiceUsbEmulatedDevice *edev =3D d ? d->edev : NULL;
> +    SPICE_DEBUG("%s ch %p", __FUNCTION__, ch);
> +    if (edev) {
> +        device_ops(edev)->reset(edev);
> +    }
> +}
> +
> +static void usbredir_interface_info(void *priv,
> +    struct usb_redir_interface_info_header *interface_info)
> +{
> +    SpiceUsbBackendChannel *ch =3D priv;
> +    SPICE_DEBUG("%s not implemented %p", __FUNCTION__, ch);
> +}
> +
> +static void usbredir_interface_ep_info(void *priv,
> +    struct usb_redir_ep_info_header *ep_info)
> +{
> +    SpiceUsbBackendChannel *ch =3D priv;
> +    SPICE_DEBUG("%s not implemented %p", __FUNCTION__, ch);
> +}
> +
> +static void usbredir_set_configuration(void *priv,
> +    uint64_t id, struct usb_redir_set_configuration_header *set_configur=
ation)
> +{
> +    SpiceUsbBackendChannel *ch =3D priv;
> +    struct usb_redir_configuration_status_header h;
> +    h.status =3D 0;
> +    h.configuration =3D set_configuration->configuration;
> +    SPICE_DEBUG("%s ch %p, cfg %d", __FUNCTION__, ch, h.configuration);
> +    if (ch->attached) {
> +        ch->attached->edev_configured =3D h.configuration !=3D 0;
> +    }
> +    usbredirparser_send_configuration_status(ch->parser, id, &h);
> +    usbredir_write_flush_callback(ch);
> +}
> +
> +static void usbredir_get_configuration(void *priv, uint64_t id)
> +{
> +    SpiceUsbBackendChannel *ch =3D priv;
> +    struct usb_redir_configuration_status_header h;
> +    h.status =3D 0;
> +    h.configuration =3D ch->attached && ch->attached->edev_configured;
> +    SPICE_DEBUG("%s ch %p, cfg %d", __FUNCTION__, ch, h.configuration);
> +    usbredirparser_send_configuration_status(ch->parser, id, &h);
> +    usbredir_write_flush_callback(ch);
> +}
> +
> +static void usbredir_set_alt_setting(void *priv,
> +    uint64_t id, struct usb_redir_set_alt_setting_header *s)
> +{
> +    SpiceUsbBackendChannel *ch =3D priv;
> +    struct usb_redir_alt_setting_status_header sh;
> +    sh.status =3D (!s->interface && !s->alt) ? 0 : usb_redir_stall;
> +    sh.interface =3D s->interface;
> +    sh.alt =3D s->alt;
> +    SPICE_DEBUG("%s ch %p, %d:%d", __FUNCTION__, ch, s->interface, s->al=
t);
> +    usbredirparser_send_alt_setting_status(ch->parser, id, &sh);
> +    usbredir_write_flush_callback(ch);
> +}
> +
> +static void usbredir_get_alt_setting(void *priv,
> +    uint64_t id, struct usb_redir_get_alt_setting_header *s)
> +{
> +    SpiceUsbBackendChannel *ch =3D priv;
> +    struct usb_redir_alt_setting_status_header sh;
> +    sh.status =3D (s->interface =3D=3D 0) ? 0 : usb_redir_stall;
> +    sh.interface =3D s->interface;
> +    sh.alt =3D 0;
> +    SPICE_DEBUG("%s ch %p, if %d", __FUNCTION__, ch, s->interface);
> +    usbredirparser_send_alt_setting_status(ch->parser, id, &sh);
> +    usbredir_write_flush_callback(ch);
> +}
> +
> +static void usbredir_cancel_data(void *priv, uint64_t id)
> +{
> +    SpiceUsbBackendChannel *ch =3D priv;
> +    SpiceUsbBackendDevice *d =3D ch->attached;
> +    SpiceUsbEmulatedDevice *edev =3D d ? d->edev : NULL;
> +    if (!edev) {
> +        SPICE_DEBUG("%s: device not attached", __FUNCTION__);
> +        return;
> +    }
> +    device_ops(edev)->cancel_request(edev, id);
> +}
> +
> +static void usbredir_filter_reject(void *priv)
> +{
> +    SpiceUsbBackendChannel *ch =3D priv;
> +    SPICE_DEBUG("%s %p", __FUNCTION__, ch);
> +    ch->rejected =3D 1;
> +}
> +
> +/* Note that the ownership of the rules array is passed on to the callba=
ck. */
> +static void usbredir_filter_filter(void *priv,
> +    struct usbredirfilter_rule *r, int count)
> +{
> +    SpiceUsbBackendChannel *ch =3D priv;
> +    SPICE_DEBUG("%s ch %p %d filters", __FUNCTION__, ch, count);
> +
> +    free(ch->rules);
> +
> +    ch->rules =3D r;
> +    ch->rules_count =3D count;
> +    if (count) {
> +        int i;
> +        for (i =3D 0; i < count; i++) {
> +            SPICE_DEBUG("%s class %d, %X:%X",
> +                r[i].allow ? "allowed" : "denied", r[i].device_class,
> +                (uint32_t)r[i].vendor_id, (uint32_t)r[i].product_id);
> +        }
> +    }
> +}
> +
> +static void usbredir_device_disconnect_ack(void *priv)
> +{
> +    SpiceUsbBackendChannel *ch =3D priv;
> +    SPICE_DEBUG("%s ch %p", __FUNCTION__, ch);
> +    if (ch->parser && ch->wait_disc_ack) {
> +        ch->parser =3D NULL;
> +        SPICE_DEBUG("%s switch to usbredirhost", __FUNCTION__);
> +        ch->usbredirhost =3D ch->hidden_host;
> +    }
> +    ch->wait_disc_ack =3D 0;
> +}
> +
> +static void usbredir_hello(void *priv,
> +    struct usb_redir_hello_header *hello)
> +{
> +    SpiceUsbBackendChannel *ch =3D priv;
> +    SpiceUsbBackendDevice *d =3D ch->attached;
> +    SpiceUsbEmulatedDevice *edev =3D d ? d->edev : NULL;
> +    struct usb_redir_device_connect_header device_connect;
> +    struct usb_redir_ep_info_header ep_info =3D { 0 };
> +    struct usb_redir_interface_info_header interface_info =3D { 0 };
> +    uint8_t *cfg;
> +    uint16_t size, offset =3D 0;
> +    SPICE_DEBUG("%s %p %sattached %s", __FUNCTION__, ch,
> +        edev ? "" : "not ",  hello ? "" : "(internal)");
> +
> +    if (hello) {
> +        ch->hello_done_parser =3D 1;
> +    }
> +    if (!edev) {
> +        return;
> +    }
> +    if (!device_ops(edev)->get_descriptor(edev, LIBUSB_DT_CONFIG, 0, (vo=
id **)&cfg, &size)) {
> +        return;
> +    }
> +    while ((offset + 1) < size) {
> +        uint8_t len  =3D cfg[offset];
> +        uint8_t type =3D cfg[offset + 1];
> +        if ((offset + len) > size) {
> +            break;
> +        }
> +        if (type =3D=3D LIBUSB_DT_INTERFACE) {
> +            uint32_t i =3D interface_info.interface_count;
> +            uint8_t class, subclass, protocol;
> +            class =3D cfg[offset + 5];
> +            subclass =3D cfg[offset + 6];
> +            protocol =3D cfg[offset + 7];
> +            interface_info.interface_class[i] =3D class;
> +            interface_info.interface_subclass[i] =3D subclass;
> +            interface_info.interface_protocol[i] =3D protocol;
> +            interface_info.interface_count++;
> +            SPICE_DEBUG("%s IF%d: %d/%d/%d", __FUNCTION__, i, class, sub=
class, protocol);
> +        } else if (type =3D=3D LIBUSB_DT_ENDPOINT) {
> +            uint8_t address =3D cfg[offset + 2];
> +            uint16_t max_packet_size =3D 0x100 * cfg[offset + 5] + cfg[o=
ffset + 4];
> +            uint8_t index =3D address & 0xf;
> +            if (address & 0x80) index +=3D 0x10;
> +            ep_info.type[index] =3D cfg[offset + 3] & 0x3;
> +            ep_info.max_packet_size[index] =3D max_packet_size;
> +            SPICE_DEBUG("%s EP[%02X]: %d/%d", __FUNCTION__, index, ep_in=
fo.type[index], max_packet_size);
> +        }
> +        offset +=3D len;
> +    }
> +
> +    usbredirparser_send_interface_info(ch->parser, &interface_info);
> +    usbredirparser_send_ep_info(ch->parser, &ep_info);
> +
> +    device_connect.device_class =3D 0; //d->device_info.class;
> +    device_connect.device_subclass =3D 0; //d->device_info.subclass;
> +    device_connect.device_protocol =3D 0; //d->device_info.protocol;;
> +    device_connect.vendor_id =3D d->device_info.vid;
> +    device_connect.product_id =3D d->device_info.pid;
> +    device_connect.device_version_bcd =3D d->device_info.bcdUSB;
> +    device_connect.speed =3D usb_redir_speed_high;
> +    usbredirparser_send_device_connect(ch->parser, &device_connect);
> +    usbredir_write_flush_callback(ch);
> +}
> +
> +static void initialize_parser(SpiceUsbBackendChannel *ch, gboolean do_he=
llo)
> +{
> +    uint32_t flags, caps[USB_REDIR_CAPS_SIZE] =3D { 0 };
> +
> +    g_return_if_fail(ch->hidden_parser !=3D NULL);
> +    if (ch->parser_init_done) {
> +        if (ch->parser_with_hello !=3D do_hello) {
> +            g_return_if_reached();
> +        }
> +        return;
> +    }
> +
> +    ch->parser_init_done =3D 1;
> +    ch->parser_with_hello =3D do_hello;
> +    flags =3D usbredirparser_fl_write_cb_owns_buffer | usbredirparser_fl=
_usb_host;
> +
> +    if (do_hello) {
> +        ch->hello_sent =3D 1;
> +        ch->host_caps |=3D 1 << usb_redir_cap_connect_device_version;
> +        ch->host_caps |=3D 1 << usb_redir_cap_device_disconnect_ack;
> +        ch->host_caps |=3D 1 << usb_redir_cap_ep_info_max_packet_size;
> +        ch->host_caps |=3D 1 << usb_redir_cap_64bits_ids;
> +        ch->host_caps |=3D 1 << usb_redir_cap_32bits_bulk_length;
> +    } else {
> +        flags |=3D usbredirparser_fl_no_hello;
> +    }
> +
> +    if (ch->host_caps & (1 << usb_redir_cap_connect_device_version)) {
> +        usbredirparser_caps_set_cap(caps, usb_redir_cap_connect_device_v=
ersion);
> +    }
> +    usbredirparser_caps_set_cap(caps, usb_redir_cap_filter);
> +    if (ch->host_caps & (1 << usb_redir_cap_device_disconnect_ack)) {
> +        usbredirparser_caps_set_cap(caps, usb_redir_cap_device_disconnec=
t_ack);
> +    }
> +    if (ch->host_caps & (1 << usb_redir_cap_ep_info_max_packet_size)) {
> +        usbredirparser_caps_set_cap(caps, usb_redir_cap_ep_info_max_pack=
et_size);
> +    }
> +    if (ch->host_caps & (1 << usb_redir_cap_64bits_ids)) {
> +        usbredirparser_caps_set_cap(caps, usb_redir_cap_64bits_ids);
> +    }
> +    if (ch->host_caps & (1 << usb_redir_cap_32bits_bulk_length)) {
> +        usbredirparser_caps_set_cap(caps, usb_redir_cap_32bits_bulk_leng=
th);
> +    }
> +    if (ch->host_caps & (1 << usb_redir_cap_bulk_streams)) {
> +        usbredirparser_caps_set_cap(caps, usb_redir_cap_bulk_streams);
> +    }
> +    usbredirparser_init(ch->hidden_parser, PACKAGE_STRING, caps, USB_RED=
IR_CAPS_SIZE, flags);
> +}
> +
> +/*
> +    We can initialize the usbredirparser with HELLO enabled only in case
> +    the libusb is not active and the usbredirhost does not function.
> +    Then the parser sends session HELLO and receives server's response.
> +    Otherwise (usbredirparser initialized with HELLO disabled):
> +    - the usbredirhost sends session HELLO
> +    - we look into it to know set of capabilities we shall initialize
> +      the parser with
> +    - when we receive server's response to HELLO we provide it also to
> +      parser to let it synchronize with server's capabilities
> +*/
> +static struct usbredirparser *create_parser(SpiceUsbBackendChannel *ch)
> +{
> +    struct usbredirparser *parser =3D usbredirparser_create();
> +
> +    g_return_val_if_fail(parser !=3D NULL, NULL);
> +
> +    parser->priv =3D ch;
> +    parser->log_func =3D usbredir_log;
> +    parser->read_func =3D usbredir_read_callback;
> +    parser->write_func =3D usbredir_write_callback;
> +    parser->reset_func =3D usbredir_device_reset;
> +    parser->set_configuration_func =3D usbredir_set_configuration;
> +    parser->get_configuration_func =3D usbredir_get_configuration;
> +    parser->set_alt_setting_func =3D usbredir_set_alt_setting;
> +    parser->get_alt_setting_func =3D usbredir_get_alt_setting;
> +    parser->cancel_data_packet_func =3D usbredir_cancel_data;
> +    parser->control_packet_func =3D usbredir_control_packet;
> +    parser->bulk_packet_func =3D usbredir_bulk_packet;
> +    parser->alloc_lock_func =3D usbredir_alloc_lock;
> +    parser->lock_func =3D usbredir_lock_lock;
> +    parser->unlock_func =3D usbredir_unlock_lock;
> +    parser->free_lock_func =3D usbredir_free_lock;
> +    parser->hello_func =3D usbredir_hello;
> +    parser->filter_reject_func =3D usbredir_filter_reject;
> +    parser->device_disconnect_ack_func =3D usbredir_device_disconnect_ac=
k;
> +    parser->interface_info_func =3D usbredir_interface_info;
> +    parser->ep_info_func =3D usbredir_interface_ep_info;
> +    parser->filter_filter_func =3D usbredir_filter_filter;
> +
> +    return parser;
> +}
> +
> +static gboolean attach_edev(SpiceUsbBackendChannel *ch,
> +                            SpiceUsbBackendDevice *dev,
> +                            GError **error)
> +{
> +    if (!dev->edev) {
> +        g_set_error(error, SPICE_CLIENT_ERROR, SPICE_CLIENT_ERROR_FAILED,
> +           _("Failed to redirect device %d"), 1);
> +        return FALSE;
> +    }
> +    if (ch->usbredirhost && !ch->hello_done_parser) {
> +        /*
> +            we can't initialize parser until we see hello from usbredir
> +            and the parser can't work until it sees the hello response.
> +            this is case of autoconnect when emulated device is attached
> +            before the channel is up
> +        */
> +        SPICE_DEBUG("%s waiting until the channel is ready", __FUNCTION_=
_);
> +
> +    } else {
> +        initialize_parser(ch, ch->hidden_host =3D=3D NULL);
> +        ch->usbredirhost =3D NULL;
> +        ch->parser =3D ch->hidden_parser;
> +    }
> +    ch->wait_disc_ack =3D 0;
> +    ch->attached =3D dev;
> +    dev->attached_to =3D ch;
> +    device_ops(dev->edev)->attach(dev->edev, ch->hidden_parser);
> +    if (ch->hello_done_parser) {
> +        /* send device info */
> +        usbredir_hello(ch, NULL);
> +    }
> +    return TRUE;
> +}
> +
>  gboolean spice_usb_backend_channel_attach(SpiceUsbBackendChannel *ch,
>                                            SpiceUsbBackendDevice *dev,
>                                            GError **error)
> @@ -706,7 +1213,13 @@ gboolean spice_usb_backend_channel_attach(SpiceUsbB=
ackendChannel *ch,
> =20
>      g_return_val_if_fail(dev !=3D NULL, FALSE);
> =20
> +    if (!dev->libusb_device) {
> +        return attach_edev(ch, dev, error);
> +    }
> +
>      libusb_device_handle *handle =3D NULL;
> +    ch->usbredirhost =3D ch->hidden_host;
> +    ch->parser =3D NULL;
> =20
>      /*
>         Under Windows we need to avoid updating
> @@ -740,18 +1253,33 @@ gboolean spice_usb_backend_channel_attach(SpiceUsb=
BackendChannel *ch,
> =20
>  void spice_usb_backend_channel_detach(SpiceUsbBackendChannel *ch)
>  {
> +    SpiceUsbBackendDevice *d =3D ch->attached;
> +    SpiceUsbEmulatedDevice *edev =3D d ? d->edev : NULL;
>      SPICE_DEBUG("%s >> ch %p, was attached %p", __FUNCTION__, ch, ch->at=
tached);
> -    if (!ch->attached) {
> +    if (!d) {
>          SPICE_DEBUG("%s: nothing to detach", __FUNCTION__);
>          return;
>      }
>      if (ch->usbredirhost) {
>          /* it will call libusb_close internally */
>          usbredirhost_set_device(ch->usbredirhost, NULL);
> +    } else if (ch->parser) {
> +        if (edev) {
> +            device_ops(edev)->detach(edev);
> +        }
> +        usbredirparser_send_device_disconnect(ch->parser);
> +        usbredir_write_flush_callback(ch);
> +        ch->wait_disc_ack =3D usbredirparser_peer_has_cap(ch->parser,
> +                                                        usb_redir_cap_de=
vice_disconnect_ack);
> +        if (!ch->wait_disc_ack) {
> +            ch->usbredirhost =3D ch->hidden_host;
> +            ch->parser =3D NULL;
> +        }
>      }
>      SPICE_DEBUG("%s ch %p, detach done", __FUNCTION__, ch);
>      ch->attached->attached_to =3D NULL;
>      ch->attached =3D NULL;
> +    ch->rejected =3D 0;
>  }
> =20
>  SpiceUsbBackendChannel *spice_usb_backend_channel_new(SpiceUsbBackend *b=
e,
> @@ -766,26 +1294,33 @@ SpiceUsbBackendChannel *spice_usb_backend_channel_=
new(SpiceUsbBackend *be,
>      ch->user_data =3D SPICE_USBREDIR_CHANNEL(user_data);
>      if (be->libusb_context) {
>          ch->backend =3D be;
> -        ch->usbredirhost =3D usbredirhost_open_full(
> -            be->libusb_context,
> -            NULL,
> -            usbredir_log,
> -            usbredir_read_callback,
> -            usbredir_write_callback,
> -            usbredir_write_flush_callback,
> -            usbredir_alloc_lock,
> -            usbredir_lock_lock,
> -            usbredir_unlock_lock,
> -            usbredir_free_lock,
> -            ch, PACKAGE_STRING,
> -            spice_util_get_debug() ? usbredirparser_debug : usbredirpars=
er_warning,
> -            usbredirhost_fl_write_cb_owns_buffer);
> +        ch->usbredirhost =3D
> +            usbredirhost_open_full(be->libusb_context,
> +                                   NULL,
> +                                   usbredir_log,
> +                                   usbredir_read_callback,
> +                                   usbredir_write_callback,
> +                                   usbredir_write_flush_callback,
> +                                   usbredir_alloc_lock,
> +                                   usbredir_lock_lock,
> +                                   usbredir_unlock_lock,
> +                                   usbredir_free_lock,
> +                                   ch, PACKAGE_STRING,
> +                                   spice_util_get_debug() ? usbredirpars=
er_debug :
> +                                        usbredirparser_warning,
> +                                   usbredirhost_fl_write_cb_owns_buffer);
>          g_warn_if_fail(ch->usbredirhost !=3D NULL);
>      }
> +
>      if (ch->usbredirhost) {
> -        usbredirhost_set_buffered_output_size_cb(ch->usbredirhost, usbre=
dir_buffered_output_size_callback);
> -    } else {
> -        g_free(ch);
> +        ch->hidden_parser =3D create_parser(ch);
> +        ch->hidden_host =3D ch->usbredirhost;
> +        usbredirhost_set_buffered_output_size_cb(ch->usbredirhost,
> +                                                 usbredir_buffered_outpu=
t_size_callback);
> +    }
> +
> +    if (!ch->hidden_parser) {
> +        spice_usb_backend_channel_delete(ch);
>          ch =3D NULL;
>      }
> =20
> @@ -795,9 +1330,14 @@ SpiceUsbBackendChannel *spice_usb_backend_channel_n=
ew(SpiceUsbBackend *be,
> =20
>  void spice_usb_backend_channel_flush_writes(SpiceUsbBackendChannel *ch)
>  {
> -    SPICE_DEBUG("%s %p, host %p", __FUNCTION__, ch, ch->usbredirhost);
> +    SPICE_DEBUG("%s %p is up", __FUNCTION__, ch);
>      if (ch->usbredirhost) {
>          usbredirhost_write_guest_data(ch->usbredirhost);
> +        initialize_parser(ch, FALSE);
> +    } else {
> +        initialize_parser(ch, TRUE);
> +        ch->parser =3D ch->hidden_parser;
> +        usbredirparser_do_write(ch->parser);
>      }
>  }
> =20
> @@ -807,12 +1347,16 @@ void spice_usb_backend_channel_delete(SpiceUsbBack=
endChannel *ch)
>      if (!ch) {
>          return;
>      }
> -    if (ch->usbredirhost) {
> -        usbredirhost_close(ch->usbredirhost);
> +    if (ch->hidden_host) {
> +        usbredirhost_close(ch->hidden_host);
> +    }
> +    if (ch->hidden_parser) {
> +        usbredirparser_destroy(ch->hidden_parser);
>      }
> =20
>      if (ch->rules) {
> -        g_free(ch->rules);
> +        /* rules were allocated by usbredirparser */
> +        free(ch->rules);
>      }
> =20
>      g_free(ch);
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--fjtosc5bq6emgarn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lAAIACgkQl9kSPeN6
SE+QRg//aWeikJcR/PhHZIRQ+M2uNCldb2iD1w4fY9ESLHqhD+MslVuQtPMJYpd+
oir/pNKWkJnQiopYIVmGk4igZmimKbVgRFnO5nohhoG7YTn5fuZfcN2nqebEykYY
fcdUwbXar5HTwCQCTZ9GlDeSENkuMR+FilXHJYMqnjWl3oKSPAHb+C/TmfzSq9zL
ZFu9r87EmliSbf0Gl3DKMrPCLSaA1yp51WHKrNjS0jj//gdacc3gdTO+NgcuaoEk
lnMchoFU766DLLMQXMscp+qOtC3KupxrBGYO9BpFZd+N9T+JgMjwi8Bj/huWeCxQ
yepp1TNiT8/dqYkrHz8B8CNXxZrBuqDUmlzT6Nt9YhetcJLZwteEkp+YQl4t2NdO
YG/amsWthiLk7jDMgfkpYLqCRp+P6uGvGqjkcx33SbblbYIoDXSX7qiryOVUTdjW
w3bywGKkNDN6k37kxGkgeOP7fjYm8jKyPlDPwnRx7/aJPvDFlsh6glnwcRJcVk83
MbaguugrkXc4TW21OB3Lbz7X4asE/2fQyFzA+VhbeYDa8evO+oNKqSsmjK9cv33C
hI7s+5ZbHjUtSK/6JUs9SFx427j6Mm5aiprRu8fWbGymxCiQEXuK2zXwWu60AyA0
s7oQwHvsnQOCkrFf2ZPlRY63qQdgOwm071mbT4XX0dlClo2KmvA=
=nf2Y
-----END PGP SIGNATURE-----

--fjtosc5bq6emgarn--

--===============0879037743==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0879037743==--
