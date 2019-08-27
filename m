Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEE19E52A
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 12:03:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9531889801;
	Tue, 27 Aug 2019 10:02:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60B5789801
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:02:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 08B5B3082133
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:02:58 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A7E1D1001944;
 Tue, 27 Aug 2019 10:02:57 +0000 (UTC)
Date: Tue, 27 Aug 2019 12:02:56 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827100256.tkmouohjm6sya766@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-9-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-9-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Tue, 27 Aug 2019 10:02:58 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 08/29] fixup! usb-redir:
 extend USB backend to support emulated devices
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
Content-Type: multipart/mixed; boundary="===============0906787371=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0906787371==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7dhk7qk2hfp62hlh"
Content-Disposition: inline


--7dhk7qk2hfp62hlh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2019 at 10:22:25AM +0100, Frediano Ziglio wrote:
> Indentation function declaration
Acked-by: Victor Toso <victortoso@redhat.com>
> ---
>  src/usb-backend.c | 41 +++++++++++++++++++++--------------------
>  1 file changed, 21 insertions(+), 20 deletions(-)
>=20
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> index 13d24d52..36a73a89 100644
> --- a/src/usb-backend.c
> +++ b/src/usb-backend.c
> @@ -794,9 +794,9 @@ void spice_usb_backend_return_write_data(SpiceUsbBack=
endChannel *ch, void *data)
>      }
>  }
> =20
> -static void usbredir_control_packet(void *priv,
> -    uint64_t id, struct usb_redir_control_packet_header *h,
> -    uint8_t *data, int data_len)
> +static void
> +usbredir_control_packet(void *priv, uint64_t id, struct usb_redir_contro=
l_packet_header *h,
> +                        uint8_t *data, int data_len)
>  {
>      SpiceUsbBackendChannel *ch =3D priv;
>      SpiceUsbBackendDevice *d =3D ch->attached;
> @@ -849,9 +849,9 @@ static void usbredir_control_packet(void *priv,
>      usbredirparser_free_packet_data(ch->parser, data);
>  }
> =20
> -static void usbredir_bulk_packet(void *priv,
> -    uint64_t id, struct usb_redir_bulk_packet_header *h,
> -    uint8_t *data, int data_len)
> +static void
> +usbredir_bulk_packet(void *priv, uint64_t id, struct usb_redir_bulk_pack=
et_header *h,
> +                     uint8_t *data, int data_len)
>  {
>      SpiceUsbBackendChannel *ch =3D priv;
>      SpiceUsbBackendDevice *d =3D ch->attached;
> @@ -894,22 +894,23 @@ static void usbredir_device_reset(void *priv)
>      }
>  }
> =20
> -static void usbredir_interface_info(void *priv,
> -    struct usb_redir_interface_info_header *interface_info)
> +static void
> +usbredir_interface_info(void *priv, struct usb_redir_interface_info_head=
er *interface_info)
>  {
>      SpiceUsbBackendChannel *ch =3D priv;
>      SPICE_DEBUG("%s not implemented %p", __FUNCTION__, ch);
>  }
> =20
> -static void usbredir_interface_ep_info(void *priv,
> -    struct usb_redir_ep_info_header *ep_info)
> +static void
> +usbredir_interface_ep_info(void *priv, struct usb_redir_ep_info_header *=
ep_info)
>  {
>      SpiceUsbBackendChannel *ch =3D priv;
>      SPICE_DEBUG("%s not implemented %p", __FUNCTION__, ch);
>  }
> =20
> -static void usbredir_set_configuration(void *priv,
> -    uint64_t id, struct usb_redir_set_configuration_header *set_configur=
ation)
> +static void
> +usbredir_set_configuration(void *priv, uint64_t id,
> +                           struct usb_redir_set_configuration_header *se=
t_configuration)
>  {
>      SpiceUsbBackendChannel *ch =3D priv;
>      struct usb_redir_configuration_status_header h;
> @@ -934,8 +935,8 @@ static void usbredir_get_configuration(void *priv, ui=
nt64_t id)
>      usbredir_write_flush_callback(ch);
>  }
> =20
> -static void usbredir_set_alt_setting(void *priv,
> -    uint64_t id, struct usb_redir_set_alt_setting_header *s)
> +static void
> +usbredir_set_alt_setting(void *priv, uint64_t id, struct usb_redir_set_a=
lt_setting_header *s)
>  {
>      SpiceUsbBackendChannel *ch =3D priv;
>      struct usb_redir_alt_setting_status_header sh;
> @@ -947,8 +948,8 @@ static void usbredir_set_alt_setting(void *priv,
>      usbredir_write_flush_callback(ch);
>  }
> =20
> -static void usbredir_get_alt_setting(void *priv,
> -    uint64_t id, struct usb_redir_get_alt_setting_header *s)
> +static void
> +usbredir_get_alt_setting(void *priv, uint64_t id, struct usb_redir_get_a=
lt_setting_header *s)
>  {
>      SpiceUsbBackendChannel *ch =3D priv;
>      struct usb_redir_alt_setting_status_header sh;
> @@ -980,8 +981,8 @@ static void usbredir_filter_reject(void *priv)
>  }
> =20
>  /* Note that the ownership of the rules array is passed on to the callba=
ck. */
> -static void usbredir_filter_filter(void *priv,
> -    struct usbredirfilter_rule *r, int count)
> +static void
> +usbredir_filter_filter(void *priv, struct usbredirfilter_rule *r, int co=
unt)
>  {
>      SpiceUsbBackendChannel *ch =3D priv;
>      SPICE_DEBUG("%s ch %p %d filters", __FUNCTION__, ch, count);
> @@ -1012,8 +1013,8 @@ static void usbredir_device_disconnect_ack(void *pr=
iv)
>      ch->wait_disconnect_ack =3D 0;
>  }
> =20
> -static void usbredir_hello(void *priv,
> -    struct usb_redir_hello_header *hello)
> +static void
> +usbredir_hello(void *priv, struct usb_redir_hello_header *hello)
>  {
>      SpiceUsbBackendChannel *ch =3D priv;
>      SpiceUsbBackendDevice *d =3D ch->attached;
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--7dhk7qk2hfp62hlh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1k/9AACgkQl9kSPeN6
SE+34w//Ujjtpuh8k/OE4hPrICzfSrsLsasNFcBh8Q1Epxrw/NkWLH2lMoLfm+Lc
v+Ob/SnkMUik7BYKZlolBV4lHt8cctQuVK2REcNo6JZW/uC1aMJvXyKM60UqQaix
17iuWEfQJJTTB1SND08+uF4ufJszyhpHr2DVgk9boPgfgz4DBhk6y/zyi8OysNxP
ZxkCet7/KyTXIur1RF5QbtgN8aPKe1A+nnVUGNyGqjcKMeWBdSzcszVakWb4gAIG
uAMGQCJC17eZ3SXIod4idthjNPCnTQAKNd71+iYezQWn5KOXQ0ybKGGil9wL6Z8x
sDKt1KVo0/HNkjR3twvuRoP85UaDF7e48ZTdHZXR8MqpS3DRHsaHYmY9dupOVmXA
WEsl/XkturZUMz7g35ZPmB2G4IDNAdSehR8NTBjZ9fxIKjhP6Js4lTctW52ukg1i
zEzuHH2U021lP4Ytr/nM9+7Oh8dMvjXqbfV0VvALKz2nEzzvja7BFWqVxvLNEyE8
K6FlE+MfEw8BtJwWR6rPm/dHr4s7JihZy8p9pvX5jiQ3k0oLPBWTTlN3AnJuHVAp
+GZ5WipTfuU/IXF39M0hzIxWbil5nGthZCUXw+UDCCUA2gjyilMAibqgXncXontU
qgkmvudPk8Lv0fLw4h1GVctMOxXGVR+Yj244Yb8qXf4jKt6sfig=
=OnUq
-----END PGP SIGNATURE-----

--7dhk7qk2hfp62hlh--

--===============0906787371==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0906787371==--
