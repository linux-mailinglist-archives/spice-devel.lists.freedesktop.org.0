Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 598669931B
	for <lists+spice-devel@lfdr.de>; Thu, 22 Aug 2019 14:18:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8D626E4C1;
	Thu, 22 Aug 2019 12:18:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 434676E4C1
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 12:18:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id ED4A43082133
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 12:18:05 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9A65560BF3;
 Thu, 22 Aug 2019 12:18:05 +0000 (UTC)
Date: Thu, 22 Aug 2019 14:18:04 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190822121804.wyjtjwkt7copvz74@wingsuit>
References: <20190813095032.10191-1-fziglio@redhat.com>
 <843482782.8394876.1566476064826.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <843482782.8394876.1566476064826.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 22 Aug 2019 12:18:05 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-protocol] qxl_dev: Add comment to
 QXLQUICData->data field
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
Content-Type: multipart/mixed; boundary="===============0452096828=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0452096828==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pipnaxcwkgoauqin"
Content-Disposition: inline


--pipnaxcwkgoauqin
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Aug 22, 2019 at 08:14:24AM -0400, Frediano Ziglio wrote:
> ping
>=20
> >=20
> > Recently a bug using this structure was fixed.
> > The bug involved understand the usage of this field so add some
> > note on the field for future reference.
> >=20
> > Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Sure,
Acked-by: Victor Toso <victortoso@redhat.com>

> > ---
> >  spice/qxl_dev.h | 3 +++
> >  1 file changed, 3 insertions(+)
> >=20
> > diff --git a/spice/qxl_dev.h b/spice/qxl_dev.h
> > index c844d7b..3f56aae 100644
> > --- a/spice/qxl_dev.h
> > +++ b/spice/qxl_dev.h
> > @@ -740,6 +740,9 @@ typedef struct SPICE_ATTR_PACKED QXLSurfaceId {
> > =20
> >  typedef struct SPICE_ATTR_PACKED QXLQUICData {
> >      uint32_t data_size;
> > +    /* This data for QUIC is a QXLDataChunk.
> > +     * This differs from QXLBitmap where it's a reference to bitmap da=
ta or
> > +     * a reference to QXLDataChunk */
> >      uint8_t data[0];
> >  } QXLQUICData, QXLLZRGBData, QXLJPEGData;
> > =20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--pipnaxcwkgoauqin
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1eh/wACgkQl9kSPeN6
SE/sARAAlzhFDc+fL4If9jXmzLuYXDOp9iySshT13EcqWAjH1fOWxQFtdDdQsPiI
UCoFUsz1bP7wredWdM0tO8rTKhlJdBLXGs+puXqIeAHyBnEXkDTkirzkiiWreb0Y
kRVy91yt5G/NkMh+SmZ1gpPN5pN6at13LlQrvGKCeoxsCXFRlz6LRvr70f67TMdl
3yeIHgyAMjcdrE1hIx+xPOyE8JjWXpSsG5h2ODNHDR30+41NA4ttxgvsWXeoly76
sA2q2/0XI2oDnM6ETkjTfpWLMkm5lzBzf8CuAB14dbcKpMk+cSRW4uFUqNsESkCZ
W6Q3EXtvmmJ4tNumqLOpW2T1ta+b/aTujWWzgofpYJKzwHB6xtYUcuhnqqd+c79C
UO6egkNYkfoivFfvhCpeoL7/licYOJmcqh0N43T66szKjUQAsfgU/GMaimrnsLrS
7arjgz89W5yTEOOYMAGMbUztjMx+pGm1RbSkayq82/Nt0ZNZjjbA++c8KsZlUD0k
HNYyxZvkU++J/7bgSnAaVUgCtq30au6vk4x6KgZizMesgf6e+1M/bcfOAz2FgFvX
RNNCraaBsn3mszvJ7CWyXXg4nPJEGpUT5DOE4xRl9C2LreCEG9psd3ieqnCH79f7
eDayQv6epgFn8xaN3aTMtQr6XnPpv5Bv7otpHTA4l/lqj3GcIEc=
=a+zl
-----END PGP SIGNATURE-----

--pipnaxcwkgoauqin--

--===============0452096828==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0452096828==--
