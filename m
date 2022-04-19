Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB615068EC
	for <lists+spice-devel@lfdr.de>; Tue, 19 Apr 2022 12:42:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4899810E77E;
	Tue, 19 Apr 2022 10:42:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E22010E240
 for <spice-devel@lists.freedesktop.org>; Tue, 19 Apr 2022 10:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650364947;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Nebluk/18IOJE7zAEMMVF9T4XsKiVQTbmCUW1xEAo40=;
 b=iL1wJOzbiNMi3B8wXxhsRdRsDpDqilojWUpn+7qmTQuuM+SiDo7pBpjNWPKs+zqiByWua4
 bKNBDYKU1IV23qkQGycWrju9efa0Rg+OAtIkdnoOIh0UZ6E9L3xC3dpzw8M6ROUnc+nz+T
 IFRFsU8Mne/1dEhT2nF9qW+saMhCxXU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-348-kQADS0cZOraLDxA-jD9w2w-1; Tue, 19 Apr 2022 06:42:23 -0400
X-MC-Unique: kQADS0cZOraLDxA-jD9w2w-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1B5361C0E348;
 Tue, 19 Apr 2022 10:42:23 +0000 (UTC)
Received: from localhost (unknown [10.40.192.233])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B5F9B403367;
 Tue, 19 Apr 2022 10:42:22 +0000 (UTC)
Date: Tue, 19 Apr 2022 12:42:21 +0200
From: Victor Toso <victortoso@redhat.com>
To: Walter Mitty <waltermitty121906@gmail.com>
Message-ID: <20220419104221.yysms2qpvwzsslgr@tapioca>
References: <CAOgZG1z9a38rO71avvKvdbtpNBxxOBZQsVz4jiNFUMKrCFPELQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="jdausbrdbgbwg5bv"
Content-Disposition: inline
In-Reply-To: <CAOgZG1z9a38rO71avvKvdbtpNBxxOBZQsVz4jiNFUMKrCFPELQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Subject: Re: [Spice-devel] Code confusion: the difference between
 video_stream_trace_update() and video_stream_maintenance()
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


--jdausbrdbgbwg5bv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Apr 13, 2022 at 03:06:24PM +0800, Walter Mitty wrote:
> Hello,
> I am learning spice-server source code. And i'm confusing the 2
> functions in `video-stream.cpp`: video_stream_trace_update /
> video_stream_maintenance.
>=20
> There is a todo about it.
> Any suggestions please?

I think the TODO is also to clarify if and when functions were
needed and how to properly use them. I'd need to dive into it to
check. If you understand them, I'd appreciate if you submit a
documentation patch about it, I'd be happy to review your
findings.

Cheers,
Victor

--jdausbrdbgbwg5bv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmJekg0ACgkQl9kSPeN6
SE8OJA/+OrhEQwT2jDcEKQO4y67YEZc67A5EFhJynBMs3+B5LFZThJab/qrRWt8G
ZU+pby8FB2yaZUvwA/SelljoO4pyZ+7pAEfGa2ykkOCZxtGU0/5O+/OqU+Xu2kVh
0HvryJ5r8nVig2Kdmpr/VlVv0VbWNEPjET6xIo/+DFVTSjQNkgGq3AKS0R2gYxnq
acpRwU1+SRGD43waCCwEVwxzFKXmaNYcUFhoZ4BL69mXBuFDr+Jdysxyp5pnEUhG
OlZ9TDsuIn7D/d/V8a3AriuP1BQXMeXU3ktH0/3EnyqgZrzWOiUN1ELliDpWY1oc
ULx8EcesRgkJyPag3hy+3Y+SnDe8ePCYIHwwLzusaNCT8z0CeYsBoJtA+rksBFL0
hQhTOAiUNspSClE6SIt6dnm9DxX5QaQgt5oLroI3XJW+EmNf9msptH1XjhErjRh1
gwBaD9wa/zpHcjipqetrWDAx1fO8sEwbgSroP1Tn8XvQyEymQdINi4cEMzEvYwo7
9R5j/wO+wHrgoxfM+a9IJs8s+kM3kKSdZcdPTOmFtvqBWo2IqKuGeFEJweyXByZx
EoIHvpvs1x3zQ4rVigVJKoBdfN71mYC2A7exdnSi3EpVSIRaYw/F8aTVjVZ/BEok
6ud2v/Ax1FgKyX7MM4bX3687Bs85JlREy20lpFpVVfNdRkzBdA4=
=s40F
-----END PGP SIGNATURE-----

--jdausbrdbgbwg5bv--

