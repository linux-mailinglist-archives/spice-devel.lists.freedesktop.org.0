Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F05E17E1B9F
	for <lists+spice-devel@lfdr.de>; Mon,  6 Nov 2023 09:05:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ED1C10E279;
	Mon,  6 Nov 2023 08:05:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B394410E279
 for <spice-devel@lists.freedesktop.org>; Mon,  6 Nov 2023 08:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1699257900;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qYRmjnBNZbAIcH1VxKG7cfkjIsHytHOSaDIbXS1dvMw=;
 b=Zc0UaiFsexlVjFpRHvdO1QBPmDoS0cAN/Omm73p+S3BlnHthcJPLOgOO3PSgksd5XlrKD8
 8kna/DFCPCxc5M3VHGlpmVDQ/1MuKGlHuCPrMMK2E6ldaFv2d6xxLtBamctYNmbwK7SkY0
 lbSbAJ/ikpUuqTV2+ddz008aYOIoI9k=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-54-h-zO_0V4O4adKEX7xgUUoQ-1; Mon,
 06 Nov 2023 03:04:56 -0500
X-MC-Unique: h-zO_0V4O4adKEX7xgUUoQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1D8903821569;
 Mon,  6 Nov 2023 08:04:56 +0000 (UTC)
Received: from localhost (unknown [10.45.225.75])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A4D5F1121306;
 Mon,  6 Nov 2023 08:04:55 +0000 (UTC)
Date: Mon, 6 Nov 2023 09:04:54 +0100
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <freddy77@gmail.com>
Message-ID: <wur6x4yhsdxlzmkm6rnimpcj2k34xmfbcwqdxorayxjfgkf7pg@tarbla37fypi>
References: <20231102171138.409-1-freddy77@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="ar2eaoxov3loaeou"
Content-Disposition: inline
In-Reply-To: <20231102171138.409-1-freddy77@gmail.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
Subject: Re: [Spice-devel] [PATCH spice-gtk 1/2] Update spice-common
 submodule
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--ar2eaoxov3loaeou
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Nov 02, 2023 at 05:11:37PM +0000, Frediano Ziglio wrote:
> This brings in the following changes:
>=20
> Vivek Kasireddy (1):
>       common: Add a udev helper to identify GPU Vendor

Sure,
Acked-by: Victor Toso <victortoso@redhat.com>

>=20
> Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
> ---
>  subprojects/spice-common | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/subprojects/spice-common b/subprojects/spice-common
> index 58d375e5..bb8f6698 160000
> --- a/subprojects/spice-common
> +++ b/subprojects/spice-common
> @@ -1 +1 @@
> -Subproject commit 58d375e5eadc6fb9e587e99fd81adcb95d01e8d6
> +Subproject commit bb8f66983af6b7f38dc80efa6b6ca8f34c2ab85e
> --=20
> 2.41.0
>=20

--ar2eaoxov3loaeou
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmVIniYACgkQl9kSPeN6
SE/zrA/+O1a8GFF9196jddMnlINTnO9cLJct1QEKvL2Ztp/JZrAU6/6embcQWD3x
09B9ZJovEE7Elxw0lY6VwOormrQDTINUqzXlYtZRit8qCGyTPC+iClr/4SdP+pxf
alLXWJa6r/+b9wP/FefFUzIrB7M0QQvF8k35JGZ8mh5UAzPm+mf3Hn171wrL8GLg
0ll1awEQN5p51LtEO+1UK1lQfe1qeDOI4oafU/2FlgkWGpTI2qONoWRWube4Fvz6
meO07CQDyXPehHV/Z6r0PVGBkqT11KG1aw8TyI0dwkbbMEhNX+i4DRMGPgqN8pll
I62SQ4pc5lq2t2UkXow0K6AUx8ak6wrh9h4rzYb6uyyUeB5egkOFyh/1lnbRb7D/
/qGbmlndo+ahuGCjVBfC5LjCEmUZvoTJf2xi4HIqT9bFUyMdseDoi6dACXXijixN
nRM/3x/Grq5k88C9ALdrNO4vxPuayB7I/1KLkx9j2nBtFy2fOfgXigwgKZFl+/hW
iwNomtPC9F/G8WC2X4O0+VC0ElL0OX/ly68ylWmtpo3fMzlnWYy2DUsCo44Q9+dr
6yGhW2wrai+ZpurUVWc+Hq4SBoRvrRA9wCwzPMomJK/keLMefTzduKA88DSmZpfg
Mox9N/pqD2VboCT3cgqjSUYpWhB7YDiQXyTIzJeU9fEQC7SLu4I=
=x1Np
-----END PGP SIGNATURE-----

--ar2eaoxov3loaeou--

