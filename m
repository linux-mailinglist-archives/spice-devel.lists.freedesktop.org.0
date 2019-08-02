Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 181AB7F07D
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 11:29:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90AA66ED86;
	Fri,  2 Aug 2019 09:29:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 402736ED86
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:29:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B720D30EA188
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:29:39 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 64054100032A;
 Fri,  2 Aug 2019 09:29:39 +0000 (UTC)
Date: Fri, 2 Aug 2019 11:29:38 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190802092938.dxrrj3tpn6bgfych@wingsuit>
References: <4ca2d481-5264-3a03-a1eb-d8d51bb3b364@redhat.com>
 <20190530171746.14635-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190530171746.14635-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Fri, 02 Aug 2019 09:29:39 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2] char-device: Remove
 unused red_char_device_destroy function
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
Content-Type: multipart/mixed; boundary="===============0875828134=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0875828134==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xkhajghcyujjldta"
Content-Disposition: inline


--xkhajghcyujjldta
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Okay, there was a v2.
Acked-by: Victor Toso <victortoso@redhat.com>

On Thu, May 30, 2019 at 06:17:46PM +0100, Frediano Ziglio wrote:
> g_object_unref is directly used.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/char-device.c | 6 ------
>  server/char-device.h | 5 ++---
>  2 files changed, 2 insertions(+), 9 deletions(-)
>=20
> diff --git a/server/char-device.c b/server/char-device.c
> index 9ee255664..0f6a29d6f 100644
> --- a/server/char-device.c
> +++ b/server/char-device.c
> @@ -697,12 +697,6 @@ void red_char_device_reset_dev_instance(RedCharDevic=
e *dev,
>      g_object_notify(G_OBJECT(dev), "sin");
>  }
> =20
> -void red_char_device_destroy(RedCharDevice *char_dev)
> -{
> -    g_return_if_fail(RED_IS_CHAR_DEVICE(char_dev));
> -    g_object_unref(char_dev);
> -}
> -
>  static RedCharDeviceClient *red_char_device_client_new(RedClient *client,
>                                                         int do_flow_contr=
ol,
>                                                         uint32_t max_send=
_queue_size,
> diff --git a/server/char-device.h b/server/char-device.h
> index 893d3e4b1..415d4f17c 100644
> --- a/server/char-device.h
> +++ b/server/char-device.h
> @@ -91,7 +91,7 @@ GType red_char_device_get_type(void) G_GNUC_CONST;
>   * How to use the api:
>   * =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>   * device attached: create new object instantiating a RedCharDevice chil=
d class
> - * device detached: call red_char_device_destroy/reset
> + * device detached: call g_object_unref/red_char_device_reset
>   *
>   * client connected and associated with a device: red_char_device__add
>   * client disconnected: red_char_device__remove
> @@ -120,7 +120,7 @@ GType red_char_device_get_type(void) G_GNUC_CONST;
>   * red_char_device_wakeup (for reading from the device)
>   */
>  /* refcounting is used to protect the char_dev from being deallocated in
> - * case red_char_device_destroy has been called
> + * case g_object_unref has been called
>   * during a callback, and we might still access the char_dev afterwards.
>   */
> =20
> @@ -160,7 +160,6 @@ typedef struct RedCharDeviceWriteBuffer {
> =20
>  void red_char_device_reset_dev_instance(RedCharDevice *dev,
>                                          SpiceCharDeviceInstance *sin);
> -void red_char_device_destroy(RedCharDevice *dev);
> =20
>  /* only one client is supported */
>  void red_char_device_migrate_data_marshall(RedCharDevice *dev,
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--xkhajghcyujjldta
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1EAoIACgkQl9kSPeN6
SE8ayA//QnzYgcbAq6CVzspjEappKaZEmF8liUEhARuHcylwo5emKNsekn9QY4+r
Dyqy/DrFskMQO/k+Xzu5uSHN43giuVcCkYcc7OTsaQXng07SKhkITT6fyrZLFd1o
8c3rrkp+bcLL5riDkiHArx1GQ7gdPnry5cdvvz1QYEyXsiY7sU+/eHpLTYc+cYSI
ghvX8lPIII0EaIvRdL+B4geqZaYSm8heAT0gL9/aTvoyySQaLwQrEECBzNoYsLLj
jl/dh7XmxhSJf58R0O+D/mcUlrTqldmRMTTAh03qz4TeyVFGJjBKZvRW+sfCgiIG
2s1fm/DD2sLrHhX0lUf9R7x2qndSHOLduZ27aTu3rRuPF8YOH4wdGDxUz1vtcT0R
7VRp4E//Ld6ycQpn/qfegfuX4J2w1t03txo+GCEkizuuxDaFpVnmPFu+O28qgdL6
1h7X3nixYf+ceMRnDdrvanTzjqabOJHqmCSMACogbqrTa1IA88ZPT3GWd/NyNSrk
k96NcPrQZxXeQsBnjJg6pdmK3XoE2VNTyORwqSIcq8oSoQ83YnUSfAFt6IJ+F5j5
T3Ztg4oapfMke2ZfpAlCYjD0rW2uIqhtJ1vG20l050DFf9FcbnP1ONea5PyeqHNF
XI+CjQZtNghgm8xE+ahWO2WM6qkPh+5UGYHsZ/eIy/m1rug339A=
=hL+e
-----END PGP SIGNATURE-----

--xkhajghcyujjldta--

--===============0875828134==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0875828134==--
