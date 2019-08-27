Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7CE9E4BD
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 11:48:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FE4E893EC;
	Tue, 27 Aug 2019 09:48:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 730F3893EC
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:48:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1E9D93082E09
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:48:28 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BD2FB5D713;
 Tue, 27 Aug 2019 09:48:26 +0000 (UTC)
Date: Tue, 27 Aug 2019 11:48:25 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827094825.c6y2bv6es6f5sfps@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-3-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-3-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 27 Aug 2019 09:48:28 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 02/29] fixup! usb-redir:
 define interfaces to support emulated devices
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
Content-Type: multipart/mixed; boundary="===============0433578481=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0433578481==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="viuv2yfa2pkkdyma"
Content-Disposition: inline


--viuv2yfa2pkkdyma
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 27, 2019 at 10:22:19AM +0100, Frediano Ziglio wrote:
> Cosmetic style fixes
> ---
>  src/usb-backend.c | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
>=20
> diff --git a/src/usb-backend.c b/src/usb-backend.c
> index de2b55ec..7f9fcc17 100644
> --- a/src/usb-backend.c
> +++ b/src/usb-backend.c
> @@ -200,7 +200,7 @@ static int compare_dev_list_fire_callback(SpiceUsbBac=
kend *be,
>  }
> =20
>  static LRESULT subclass_proc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM=
 lParam,
> -                            UINT_PTR uIdSubclass, DWORD_PTR dwRefData)
> +                             UINT_PTR uIdSubclass, DWORD_PTR dwRefData)
>  {
>      SpiceUsbBackend *be =3D (SpiceUsbBackend *)dwRefData;
>      if (uMsg =3D=3D WM_DEVICECHANGE && !be->redirecting) {
> @@ -306,14 +306,16 @@ static int enable_hotplug_support(SpiceUsbBackend *=
be, const char **error_on_ena
>      return rc;
>  }
> =20
> -static inline void set_redirecting(SpiceUsbBackend *be, gboolean on) {
> +static inline void set_redirecting(SpiceUsbBackend *be, gboolean on)
> +{
>      /* nothing on Linux */
>  }
> =20
>  #endif
> =20
>  /* lock functions for usbredirhost and usbredirparser */
> -static void *usbredir_alloc_lock(void) {
> +static void *usbredir_alloc_lock(void)
> +{
>      GMutex *mutex;
> =20
>      mutex =3D g_new0(GMutex, 1);
> @@ -322,20 +324,23 @@ static void *usbredir_alloc_lock(void) {
>      return mutex;
>  }
> =20
> -static void usbredir_free_lock(void *user_data) {
> +static void usbredir_free_lock(void *user_data)
> +{
>      GMutex *mutex =3D user_data;
> =20
>      g_mutex_clear(mutex);
>      g_free(mutex);
>  }
> =20
> -static void usbredir_lock_lock(void *user_data) {
> +static void usbredir_lock_lock(void *user_data)
> +{
>      GMutex *mutex =3D user_data;
> =20
>      g_mutex_lock(mutex);
>  }
> =20
> -static void usbredir_unlock_lock(void *user_data) {
> +static void usbredir_unlock_lock(void *user_data)
> +{

Acked-by: Victor Toso <victortoso@redhat.com>

>      GMutex *mutex =3D user_data;
> =20
>      g_mutex_unlock(mutex);
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--viuv2yfa2pkkdyma
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1k/GkACgkQl9kSPeN6
SE+SFw//T1eVXWzAXZhHCGcRnQKO4GadCagKFgXJ4JqeRhXbv1i0B5HsltrGJpj/
EJ1Qt6Q4+OSzhwNAWm2oJKltLm7kQUAKqtdTBe0WyIpeUSM0WwZWr5coOOuRrgMf
KEByzZfJPjMyniQU2kQd0IJaWmZKqs/SGwYXckNnLg6DJ8MnkEq1IZPNbfXPFeq0
fJ8o9qiDd/sgBkF9rg4rb+4LB8BS34SViyNvlWuspba16j0rQPrqqv4mj4h1DJOA
Qw752s9tLCl7aVMPRApL0fqLSQOJT6LYtZopzh2b+xYbIXfGaO1MJVshnWDwEhKA
yEEy8uVZ0MuNaEJhwTlGfyVsRm4dcZbEw1ATpS8iXEGO4heuAzWGroxxmay0+AKa
7I28+jD7LvAYs+QxXRf6cA+2+xQo3eNPOqRCqLL5QXtUqrItAHswbG/Jx/l3ZWmp
eyHFHnZ5LGryVqMA5qw853RfDmOKqOGTwnUf2Pa/4HptaEiE0IwoQsI4QFrVN3V5
XfUB9Jj22HZzMBvf8HIvgm/OvYt3mblez8RdSZF/KbHLcv85KM5tp2dWjzHpOuBE
CemUWbxpcpnxosBGFBfHYoE7XJiiuG2eUJ4jVY32CJXFf44W5KMB7/bnW+bXuZ6e
NhbC2xgFYc8xAnhRI8eRVxg7sDQR4CvQt+XoURNhfuP03v7dCCs=
=zYf0
-----END PGP SIGNATURE-----

--viuv2yfa2pkkdyma--

--===============0433578481==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0433578481==--
