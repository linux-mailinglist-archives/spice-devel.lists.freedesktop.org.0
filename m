Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E64F7F065
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 11:25:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7FEA6ED7F;
	Fri,  2 Aug 2019 09:25:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B2476ED7F
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:25:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 27D9930832E9
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:25:21 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C61C15D9E2;
 Fri,  2 Aug 2019 09:25:20 +0000 (UTC)
Date: Fri, 2 Aug 2019 11:25:19 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190802092519.zmxt6fpqd5ovbnzc@wingsuit>
References: <20190530142254.28937-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190530142254.28937-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Fri, 02 Aug 2019 09:25:21 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 01/13] char-device: Remove
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
Content-Type: multipart/mixed; boundary="===============1824061958=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1824061958==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o2wcxgz3vhreip45"
Content-Disposition: inline


--o2wcxgz3vhreip45
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

There still is some comments for this function call, I'd update
it here as well if it makes sense to do so

    server/char-device.h:94: * device detached: call red_char_device_destro=
y/reset
    server/char-device.h:123: * case red_char_device_destroy has been called

Still,
Acked-by: Victor Toso <victortoso@redhat.com>

On Thu, May 30, 2019 at 03:22:42PM +0100, Frediano Ziglio wrote:
> g_object_unref is directly used.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/char-device.c | 6 ------
>  server/char-device.h | 1 -
>  2 files changed, 7 deletions(-)
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
> index 893d3e4b1..7d3ad8b3a 100644
> --- a/server/char-device.h
> +++ b/server/char-device.h
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

--o2wcxgz3vhreip45
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1EAX8ACgkQl9kSPeN6
SE+L7BAAvdCTnikiBj7fUNZpKGZlg/RnD7HJmWx9BeY+qBQmwjcUTkQZ2dokYLRe
ppl6Z6NaHIovcaW6OVIVH8bYohSCzqNHXOLpwFVvtMhwwUet6PHhbSgnzCSqkrJW
1IXxsxqo2TlChUUjJx2W6t7huMkFfla2x0zdEljbq7YK8OxFiTXWZ/dZ1XI7e0Zv
OI9iQhpKCr0u7T/mXW7uKmKrvOEpLot2rNUJVTJox1BNS1UcAD3gGVX2vxga9Tua
dqIgEc9h4spkZhhPGNHxt0khRyVbUp9Z1gpE/S3875VaDueCZFgywA0xr5oEtfyU
JV1QzMj7ESd2DJNs+QApgDYsqYoW0s++adg9puF8AxBnnOiD72z2RuMIqbRk/ULy
YZ1azTUOAgkDIvSiaWeFPStdn2gl2UCLpSI0OeZW28f1UesjcFEjSizdheaFtdUk
qANbDKKLaSXgxGeW9hZNQ1CnQXOw9eEvSqZ752jqc3Pmx7kC73BtpTCVOam5uSq+
umDeDmiUqqoX+Nmg0R5zblpF2dmxikm5RoikUmNHRs2v5urfFfkl/vPkdaeC90JR
wmcDXaKmcWyoWQtuieMFcpo4EN2QQSPmWvIwtJ0d03V1/w6VwLdTvRV9L/fag/Ib
kYv7mkuMeHVME3vStlz13/CvAWWhtgQr423pkhqr9ol8Jjn05OA=
=+vpZ
-----END PGP SIGNATURE-----

--o2wcxgz3vhreip45--

--===============1824061958==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1824061958==--
