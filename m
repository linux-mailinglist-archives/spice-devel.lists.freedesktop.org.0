Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B760B7515
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 10:27:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CDEA6FB75;
	Thu, 19 Sep 2019 08:27:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0E8C6FB6E
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 08:27:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8835710D73AB
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 08:27:25 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0C1E119C5B;
 Thu, 19 Sep 2019 08:27:24 +0000 (UTC)
Date: Thu, 19 Sep 2019 10:27:24 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190919082724.gp2twpfxosocgk6e@wingsuit>
References: <20190916102104.20943-1-victortoso@redhat.com>
 <20190916102104.20943-8-victortoso@redhat.com>
 <349514983.452579.1568801836139.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <349514983.452579.1568801836139.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Thu, 19 Sep 2019 08:27:25 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v7 07/20] usb-backend: include
 usbredirparser
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
Content-Type: multipart/mixed; boundary="===============0968099242=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0968099242==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2q76zdahn6qrtngl"
Content-Disposition: inline


--2q76zdahn6qrtngl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 18, 2019 at 06:17:16AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Yuri Benditovich <yuri.benditovich@daynix.com>
> >=20
> > This patch introduces the usage of usbredirparser in
> > SpiceUsbBackendChannel.
> >=20
> > The focus of this patch is to the code path of real devices. As we
> > don't know beforehand if a SpiceUsbBackendChannel will be used by real
> > or emulated devices, an instance of usbredirparser must be initialized
> > with the usbredirhost's first hello message.
> >=20
> > This is a must to the current design on supporting emulated devices.
> > This will be extended in the next patch to match remote's usbredirhost
> > capabilities and providing support to emulated devices.
> >=20
> > Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
>=20
> Please add my signed off.

Sure

>=20
> > ---
> >  src/usb-backend.c | 223 ++++++++++++++++++++++++++++++++++++++++++++--
> >  1 file changed, 218 insertions(+), 5 deletions(-)
> >=20
> > diff --git a/src/usb-backend.c b/src/usb-backend.c
> > index 68faaae..ef29901 100644
> > --- a/src/usb-backend.c
> > +++ b/src/usb-backend.c
> > @@ -45,6 +45,7 @@
> >  #include "usbutil.h"
> > =20
> >  #define LOUD_DEBUG(x, ...)
> > +#define USBREDIR_CALLBACK_NOT_IMPLEMENTED() spice_debug("%s not implem=
ented
> > - FIXME", __func__)
> > =20
> >  struct _SpiceUsbDevice
> >  {
> > @@ -82,6 +83,7 @@ struct _SpiceUsbBackend
> >  struct _SpiceUsbBackendChannel
> >  {
> >      struct usbredirhost *usbredirhost;
> > +    struct usbredirparser *parser;
> >      uint8_t *read_buf;
> >      int read_buf_size;
> >      struct usbredirfilter_rule *rules;
> > @@ -630,11 +632,48 @@ static void usbredir_log(void *user_data, int lev=
el,
> > const char *msg)
> >      }
> >  }
> > =20
> > +static struct usbredirparser *create_parser(SpiceUsbBackendChannel *ch=
);
> > +
> >  static int usbredir_write_callback(void *user_data, uint8_t *data, int
> >  count)
> >  {
> >      SpiceUsbBackendChannel *ch =3D user_data;
> >      int res;
> >      SPICE_DEBUG("%s ch %p, %d bytes", __FUNCTION__, ch, count);
> > +
> > +    // handle first packet (HELLO) creating parser from capabilities
> > +    if (SPICE_UNLIKELY(ch->parser =3D=3D NULL)) {
> > +        // Here we return 0 from this function to keep the packet in
> > +        // the queue. The packet will then be sent to the guest.
> > +        // We are initializing SpiceUsbBackendChannel, the
> > +        // SpiceUsbredirChannel is not ready to receive packets.
> > +
> > +        // we are still initializing the host
> > +        if (ch->usbredirhost =3D=3D NULL) {
> > +            return 0;
> > +        }
> > +
> > +        ch->parser =3D create_parser(ch);
> > +        if (!ch->parser) {
> > +            return 0;
> > +        }
> > +
> > +        /* hello is short header (12) + hello struct (64) */
> > +        const int hello_size =3D 12 + sizeof(struct usb_redir_hello_he=
ader);
> > +        g_assert(count >=3D hello_size + 4);
> > +        g_assert(SPICE_ALIGNED_CAST(struct usb_redir_header *, data)->=
type
> > =3D=3D usb_redir_hello);
> > +
> > +        const uint32_t flags =3D
> > +            usbredirparser_fl_write_cb_owns_buffer |
> > usbredirparser_fl_usb_host |
> > +            usbredirparser_fl_no_hello;
> > +
> > +        usbredirparser_init(ch->parser,
> > +                            PACKAGE_STRING,
> > +                            SPICE_ALIGNED_CAST(uint32_t *, data +
> > hello_size),
> > +                            (count - hello_size) / sizeof(uint32_t),
> > +                            flags);
> > +
> > +        return 0;
> > +    }
> >      res =3D spice_usbredir_write(ch->usbredir_channel, data, count);
> >      return res;
> >  }
> > @@ -701,6 +740,165 @@ GError *spice_usb_backend_get_error_details(int
> > error_code, gchar *desc)
> >      return err;
> >  }
> > =20
> > +static void
> > +usbredir_control_packet(void *priv, uint64_t id, struct
> > usb_redir_control_packet_header *h,
> > +                        uint8_t *data, int data_len)
> > +{
> > +    USBREDIR_CALLBACK_NOT_IMPLEMENTED();
> > +}
> > +
> > +static void
> > +usbredir_bulk_packet(void *priv, uint64_t id, struct
> > usb_redir_bulk_packet_header *h,
> > +                     uint8_t *data, int data_len)
> > +{
> > +    USBREDIR_CALLBACK_NOT_IMPLEMENTED();
> > +}
> > +
> > +static void usbredir_device_reset(void *priv)
> > +{
> > +    USBREDIR_CALLBACK_NOT_IMPLEMENTED();
> > +}
> > +
> > +static void
> > +usbredir_interface_info(void *priv, struct usb_redir_interface_info_he=
ader
> > *interface_info)
> > +{
> > +    USBREDIR_CALLBACK_NOT_IMPLEMENTED();
> > +}
> > +
> > +static void
> > +usbredir_interface_ep_info(void *priv, struct usb_redir_ep_info_header
> > *ep_info)
> > +{
> > +    USBREDIR_CALLBACK_NOT_IMPLEMENTED();
> > +}
> > +
> > +static void
> > +usbredir_set_configuration(void *priv, uint64_t id,
> > +                           struct usb_redir_set_configuration_header
> > *set_configuration)
> > +{
> > +    USBREDIR_CALLBACK_NOT_IMPLEMENTED();
> > +}
> > +
> > +static void usbredir_get_configuration(void *priv, uint64_t id)
> > +{
> > +    USBREDIR_CALLBACK_NOT_IMPLEMENTED();
> > +}
> > +
> > +static void
> > +usbredir_set_alt_setting(void *priv, uint64_t id, struct
> > usb_redir_set_alt_setting_header *s)
> > +{
> > +    USBREDIR_CALLBACK_NOT_IMPLEMENTED();
> > +}
> > +
> > +static void
> > +usbredir_get_alt_setting(void *priv, uint64_t id, struct
> > usb_redir_get_alt_setting_header *s)
> > +{
> > +    USBREDIR_CALLBACK_NOT_IMPLEMENTED();
> > +}
> > +
> > +static void usbredir_cancel_data(void *priv, uint64_t id)
> > +{
> > +    USBREDIR_CALLBACK_NOT_IMPLEMENTED();
> > +}
> > +
> > +static void usbredir_filter_reject(void *priv)
> > +{
> > +    USBREDIR_CALLBACK_NOT_IMPLEMENTED();
> > +}
> > +
> > +/* Note that the ownership of the rules array is passed on to the call=
back.
> > */
> > +static void
> > +usbredir_filter_filter(void *priv, struct usbredirfilter_rule *r, int =
count)
> > +{
> > +    SpiceUsbBackendChannel *ch =3D priv;
> > +    SPICE_DEBUG("%s ch %p %d filters", __FUNCTION__, ch, count);
> > +
> > +    free(ch->rules);
> > +    ch->rules =3D r;
> > +    ch->rules_count =3D count;
> > +    if (count) {
> > +        int i;
> > +        for (i =3D 0; i < count; i++) {
> > +            SPICE_DEBUG("%s class %d, %X:%X",
> > +                r[i].allow ? "allowed" : "denied", r[i].device_class,
> > +                (uint32_t)r[i].vendor_id, (uint32_t)r[i].product_id);
> > +        }
> > +    }
> > +}
> > +
> > +static void usbredir_device_disconnect_ack(void *priv)
> > +{
> > +    USBREDIR_CALLBACK_NOT_IMPLEMENTED();
> > +}
> > +
> > +static void
> > +usbredir_hello(void *priv, struct usb_redir_hello_header *hello)
> > +{
> > +    USBREDIR_CALLBACK_NOT_IMPLEMENTED();
> > +}
> > +
> > +static void initialize_parser(SpiceUsbBackendChannel *ch)
> > +{
> > +    uint32_t flags, caps[USB_REDIR_CAPS_SIZE] =3D { 0 };
> > +
> > +    g_assert(ch->usbredirhost =3D=3D NULL);
> > +
> > +    flags =3D usbredirparser_fl_write_cb_owns_buffer |
> > usbredirparser_fl_usb_host;
> > +
> > +    usbredirparser_caps_set_cap(caps, usb_redir_cap_connect_device_ver=
sion);
> > +    usbredirparser_caps_set_cap(caps, usb_redir_cap_filter);
> > +    usbredirparser_caps_set_cap(caps, usb_redir_cap_device_disconnect_=
ack);
> > +    usbredirparser_caps_set_cap(caps,
> > usb_redir_cap_ep_info_max_packet_size);
> > +    usbredirparser_caps_set_cap(caps, usb_redir_cap_64bits_ids);
> > +    usbredirparser_caps_set_cap(caps, usb_redir_cap_32bits_bulk_length=
);
> > +    usbredirparser_caps_set_cap(caps, usb_redir_cap_bulk_receiving);
> > +    usbredirparser_caps_set_cap(caps, usb_redir_cap_bulk_streams);
> > +
> > +    usbredirparser_init(ch->parser, PACKAGE_STRING, caps,
> > USB_REDIR_CAPS_SIZE, flags);
> > +}
> > +
> > +/*
> > +    We can initialize the usbredirparser with HELLO enabled only in ca=
se
> > +    the libusb is not active and the usbredirhost does not function.
> > +    Then the parser sends session HELLO and receives server's response.
> > +    Otherwise (usbredirparser initialized with HELLO disabled):
> > +    - the usbredirhost sends session HELLO
> > +    - we look into it to know set of capabilities we shall initialize
> > +      the parser with
> > +    - when we receive server's response to HELLO we provide it also to
> > +      parser to let it synchronize with server's capabilities
> > +*/
> > +static struct usbredirparser *create_parser(SpiceUsbBackendChannel *ch)
> > +{
> > +    struct usbredirparser *parser =3D usbredirparser_create();
> > +
> > +    g_return_val_if_fail(parser !=3D NULL, NULL);
> > +
> > +    parser->priv =3D ch;
> > +    parser->log_func =3D usbredir_log;
> > +    parser->read_func =3D usbredir_read_callback;
> > +    parser->write_func =3D usbredir_write_callback;
> > +    parser->reset_func =3D usbredir_device_reset;
> > +    parser->set_configuration_func =3D usbredir_set_configuration;
> > +    parser->get_configuration_func =3D usbredir_get_configuration;
> > +    parser->set_alt_setting_func =3D usbredir_set_alt_setting;
> > +    parser->get_alt_setting_func =3D usbredir_get_alt_setting;
> > +    parser->cancel_data_packet_func =3D usbredir_cancel_data;
> > +    parser->control_packet_func =3D usbredir_control_packet;
> > +    parser->bulk_packet_func =3D usbredir_bulk_packet;
> > +    parser->alloc_lock_func =3D usbredir_alloc_lock;
> > +    parser->lock_func =3D usbredir_lock_lock;
> > +    parser->unlock_func =3D usbredir_unlock_lock;
> > +    parser->free_lock_func =3D usbredir_free_lock;
> > +    parser->hello_func =3D usbredir_hello;
> > +    parser->filter_reject_func =3D usbredir_filter_reject;
> > +    parser->device_disconnect_ack_func =3D usbredir_device_disconnect_=
ack;
> > +    parser->interface_info_func =3D usbredir_interface_info;
> > +    parser->ep_info_func =3D usbredir_interface_ep_info;
> > +    parser->filter_filter_func =3D usbredir_filter_filter;
> > +
> > +    return parser;
> > +}
> > +
> >  void spice_usb_backend_return_write_data(SpiceUsbBackendChannel *ch, v=
oid
> >  *data)
> >  {
> >      if (ch->usbredirhost) {
> > @@ -799,11 +997,22 @@ spice_usb_backend_channel_new(SpiceUsbBackend *be,
> >              spice_util_get_debug() ? usbredirparser_debug :
> >              usbredirparser_warning,
> >              usbredirhost_fl_write_cb_owns_buffer);
> >          g_warn_if_fail(ch->usbredirhost !=3D NULL);
> > -    }
> > -    if (ch->usbredirhost) {
> > -        usbredirhost_set_buffered_output_size_cb(ch->usbredirhost,
> > usbredir_buffered_output_size_callback);
> > +        if (ch->usbredirhost) {
> > +            usbredirhost_set_buffered_output_size_cb(ch->usbredirhost,
> > usbredir_buffered_output_size_callback);
> > +            // force flush of HELLO packet and creation of parser
> > +            usbredirhost_write_guest_data(ch->usbredirhost);
> > +        }
> >      } else {
> > -        g_free(ch);
> > +        // no physical device support, only emulated, create the
> > +        // parser
> > +        ch->parser =3D create_parser(ch);
> > +        if (ch->parser !=3D NULL) {
> > +            initialize_parser(ch);
> > +        }
> > +    }
> > +
> > +    if (!ch->parser) {
> > +        spice_usb_backend_channel_delete(ch);
> >          ch =3D NULL;
> >      }
> > =20
> > @@ -828,9 +1037,13 @@ void
> > spice_usb_backend_channel_delete(SpiceUsbBackendChannel *ch)
> >      if (ch->usbredirhost) {
> >          usbredirhost_close(ch->usbredirhost);
> >      }
> > +    if (ch->parser) {
> > +        usbredirparser_destroy(ch->parser);
> > +    }
> > =20
> >      if (ch->rules) {
> > -        g_free(ch->rules);
> > +        /* rules were allocated by usbredirparser */
> > +        free(ch->rules);
> >      }
> > =20
> >      g_free(ch);
>=20
> Fine for me, I would wait Yuri opinion (on merging my changes and
> split this patch, same comment for next patch).

Ok, thanks!

--2q76zdahn6qrtngl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2DO+wACgkQl9kSPeN6
SE8xug/8Ca/ikmowukSY0qHxgRNsCj96foOpfbpCgSvP+ygpl6kUghqgB7jyghMO
/U24M1/gCFd+SEhiqjfZ/0KtGSz8apPrZzvQD5LXqjoug49HGxItwzWLTVBF3T2G
7JrpdD0WJbrMGkRuLZHD0ERH69KGokDL/IzZfF4pR4u5KhJtcX9kXNpjjILtqAq+
ZEu28EjWWA0kKwpxwkcRgTfVtn3i4ozk5wUYb2aXbaJtW3fvn28tuCriXLraT3iq
VttiinhjaIy+i6yPcz8r0iV6nqTV1HgMtQVbbjT4FfHNnrZ30bUO9qk345GuLa7b
gRQTCXnWw+ciqoNhVuQOLRQm2ZucxyirKLceKIZ4R9KVpPzN5zgaqFx92A9fxuWy
fVgzJLdancMoGJor+PKbY74DqD14lKt6+EB9gYWM56uMV6/5TlWpCQWA57l6xrp8
5nlmFyUsHtePiAYNpGzXyk36JeAcVehlTErKez9aAedG+QYAt6qtwW4vcqm21K6Q
4yuElA26YDN1FCs6WWQfusqXqzn5uHYE47BeLzIELR9mObanLJhlJoBgBuNZYuTc
EVmWlCYrKOct3PpmibkM8y8NeqJ2KJeRSTRkYBFzTsFxUIkYwg5U3dSAq6A5HTGb
368f/ipqxmvmu3tS1uS14Mv1ZEniQ4DQDzylKGRBqug/J4M95Zc=
=FGoM
-----END PGP SIGNATURE-----

--2q76zdahn6qrtngl--

--===============0968099242==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0968099242==--
