Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCA3AA417
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2019 15:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E0CE6E0CC;
	Thu,  5 Sep 2019 13:15:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 547EB6E0CC
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 13:15:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 01AB27FDFF
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2019 13:15:56 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9E2BC6060D;
 Thu,  5 Sep 2019 13:15:55 +0000 (UTC)
Date: Thu, 5 Sep 2019 15:15:54 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190905131554.7m7js5paq2g5bk6k@wingsuit>
References: <20190905100245.2244-1-fziglio@redhat.com>
 <20190905100245.2244-2-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190905100245.2244-2-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Thu, 05 Sep 2019 13:15:56 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 2/2] usb-backend:
 SpiceUsbredirChannel is not opaque anymore
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
Content-Type: multipart/mixed; boundary="===============0259956341=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0259956341==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="li3vhwvzhy464qvf"
Content-Disposition: inline


--li3vhwvzhy464qvf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Sep 05, 2019 at 11:02:45AM +0100, Frediano Ziglio wrote:
> Use specific type in spice_usb_backend_channel_new and
> specific name instead of "user_data" field.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
Sure,
Acked-by: Victor Toso <victortoso@redhat.com>
> ---
>  src/usb-backend.c | 17 ++++++++---------
>  src/usb-backend.h |  2 +-
>  2 files changed, 9 insertions(+), 10 deletions(-)
>=20
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> index dbc96194..e021d434 100644
> --- a/src/usb-backend.c
> +++ b/src/usb-backend.c
> @@ -78,7 +78,7 @@ struct _SpiceUsbBackendChannel
>      struct usbredirfilter_rule *rules;
>      int rules_count;
>      SpiceUsbBackendDevice *attached;
> -    SpiceUsbredirChannel  *user_data;
> +    SpiceUsbredirChannel *usbredir_channel;
>      SpiceUsbBackend *backend;
>      GError **error;
>  };
> @@ -394,7 +394,7 @@ static void usbredir_write_flush_callback(void *user_=
data)
>          /* just to be on the safe side */
>          return;
>      }
> -    if (is_channel_ready(ch->user_data)) {
> +    if (is_channel_ready(ch->usbredir_channel)) {
>          SPICE_DEBUG("%s ch %p -> usbredirhost", __FUNCTION__, ch);
>          usbredirhost_write_guest_data(ch->usbredirhost);
>      } else {
> @@ -614,14 +614,14 @@ static int usbredir_write_callback(void *user_data,=
 uint8_t *data, int count)
>      SpiceUsbBackendChannel *ch =3D user_data;
>      int res;
>      SPICE_DEBUG("%s ch %p, %d bytes", __FUNCTION__, ch, count);
> -    res =3D spice_usbredir_write(ch->user_data, data, count);
> +    res =3D spice_usbredir_write(ch->usbredir_channel, data, count);
>      return res;
>  }
> =20
>  static uint64_t usbredir_buffered_output_size_callback(void *user_data)
>  {
>      SpiceUsbBackendChannel *ch =3D user_data;
> -    return spice_channel_get_queue_size(SPICE_CHANNEL(ch->user_data));
> +    return spice_channel_get_queue_size(SPICE_CHANNEL(ch->usbredir_chann=
el));
>  }
> =20
>  int spice_usb_backend_read_guest_data(SpiceUsbBackendChannel *ch, uint8_=
t *data, int count)
> @@ -747,16 +747,15 @@ void spice_usb_backend_channel_detach(SpiceUsbBacke=
ndChannel *ch)
>      ch->attached =3D NULL;
>  }
> =20
> -SpiceUsbBackendChannel *spice_usb_backend_channel_new(SpiceUsbBackend *b=
e,
> -                                                      void *user_data)
> +SpiceUsbBackendChannel *
> +spice_usb_backend_channel_new(SpiceUsbBackend *be,
> +                              SpiceUsbredirChannel *usbredir_channel)
>  {
>      SpiceUsbBackendChannel *ch;
> =20
> -    g_return_val_if_fail(SPICE_IS_USBREDIR_CHANNEL(user_data), NULL);
> -
>      ch =3D g_new0(SpiceUsbBackendChannel, 1);
>      SPICE_DEBUG("%s >>", __FUNCTION__);
> -    ch->user_data =3D SPICE_USBREDIR_CHANNEL(user_data);
> +    ch->usbredir_channel =3D usbredir_channel;
>      if (be->libusb_context) {
>          ch->backend =3D be;
>          ch->usbredirhost =3D usbredirhost_open_full(
> diff --git a/src/usb-backend.h b/src/usb-backend.h
> index 5830312b..75588070 100644
> --- a/src/usb-backend.h
> +++ b/src/usb-backend.h
> @@ -73,7 +73,7 @@ int spice_usb_backend_device_check_filter(SpiceUsbBacke=
ndDevice *dev,
> =20
>  /* Spice USB backend channel API */
>  SpiceUsbBackendChannel *spice_usb_backend_channel_new(SpiceUsbBackend *c=
ontext,
> -                                                      void            *u=
ser_data);
> +                                                      SpiceUsbredirChann=
el *usbredir_channel);
>  void spice_usb_backend_channel_delete(SpiceUsbBackendChannel *ch);
>  /* returns 0 for success or error code */
>  int spice_usb_backend_read_guest_data(SpiceUsbBackendChannel *ch, uint8_=
t *data, int count);
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--li3vhwvzhy464qvf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1xCooACgkQl9kSPeN6
SE/kgg/+PTZacoeWZoLYRV0iZcDr07+BHLhBi8Mo88o1jQoi9q0FXQ4yjQ7dsBn6
FFDBsbpgtkHOuJm0oJ0rxFSZZXbZWDuuxzy2XVvC2HQl0yStgu1Xdzaf85U8eW0e
Gwhe7kI7FoO5IiOkJsfgI4WkZ/TZ62DiMh2XwFIeZhw8DbwPlEpiPPSjG0vjnIGm
uivAYTpRluHeudVonVVjHVAZ5xgzhmFonYGDlNBoAGPXW3IGrOejOR7/KG5gXRhN
jlF26Ht2lf04IbvYRHm2r4s2sQykuksIAwLKYLWT9gizqd11mh+2my3IsxsjoQW3
HU9QX7cAodtTa4UFYaL6oBsmpKZVRfyNhYYZusFV/tl8sAELUYDDdWTF4lWa7CkO
41qEdXf29xquQX6zFNseisxygngPdBt+jOKOq2a4lH1eXWaAX28JEg3CWAtO+t9S
bbptaa30a79nRWs//JxFcyUoV+EKuAXvQFFFDwE0u1Dngf90VzXUzRKPIGzGwEtj
x9By9Bx83tfk4hSRVPeHvs6uDN5V1miOn+RCzBG9Gs2rywYW7rWFm55qvX8Tcuxu
0u81uQp3kPJLysFFfAcIzr2od8Jy37MFgB/oEErgoZHZcsX2VJkN4WWTSG8SY6zR
TT6bHdkkOL0FaQmvcgTKbGYnWgkeZkIOhrNpWBRVgaQfVTjtUDA=
=9YhM
-----END PGP SIGNATURE-----

--li3vhwvzhy464qvf--

--===============0259956341==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0259956341==--
