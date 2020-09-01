Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA703259278
	for <lists+spice-devel@lfdr.de>; Tue,  1 Sep 2020 17:12:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3509D6E461;
	Tue,  1 Sep 2020 15:12:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B9CF6E461
 for <spice-devel@lists.freedesktop.org>; Tue,  1 Sep 2020 15:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598973174;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PqQyFBQu+C4ulNayydwvA8p2B8jxQ8C571VESVmf2fI=;
 b=GMo6hIOoTf7RxPxQymikB25PYdHa71WtiL98/5v6l1LBnRnHdK3HC/H3Yj2ReaQrxsznJi
 Ki9b1SLH5ysAnomPMrauno7fAhwPrFeHKjQUCHYI/5SwYFMwlauLMa6acFtxMxCQkzR2XS
 FyxaBkh8cTQ8z+mQe+cnlm9HcZ2GH9c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-270-67BPTwgxPfWh8z0QcvVtVw-1; Tue, 01 Sep 2020 11:12:38 -0400
X-MC-Unique: 67BPTwgxPfWh8z0QcvVtVw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 84808189E606;
 Tue,  1 Sep 2020 15:12:37 +0000 (UTC)
Received: from localhost (unknown [10.40.192.71])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 023A45C1A3;
 Tue,  1 Sep 2020 15:12:36 +0000 (UTC)
Date: Tue, 1 Sep 2020 17:12:35 +0200
From: Victor Toso <victortoso@redhat.com>
To: Martin Filbrandt <hla@filbrandt.de>
Message-ID: <20200901151235.bhlz23wjdwozcoar@wingsuit>
References: <1451880e-f189-9b56-7986-a4be96b2f832@filbrandt.de>
MIME-Version: 1.0
In-Reply-To: <1451880e-f189-9b56-7986-a4be96b2f832@filbrandt.de>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=victortoso@redhat.com
X-Mimecast-Spam-Score: 0.0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Data transfer guest to host/ folder sharing
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
Content-Type: multipart/mixed; boundary="===============0041067156=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0041067156==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3nujntkuq2a46z7p"
Content-Disposition: inline

--3nujntkuq2a46z7p
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Sep 01, 2020 at 02:34:49PM +0200, Martin Filbrandt wrote:
> We use Spice on Proxmox VMs (Windows 10 guests). Clipboard
> sharing for files is perfect (from guest to host and vice
> versa). But transferring data works only in one direction, i.e.
> form host to guest/ not from guest to host.  To avoid that
> problem I tried to use folder sharing. But folder sharing is
> not supported by the windows version of virt-viewer (which is
> used on the local Windows machines).

On the Shared folder support for windows client, it is just
because there is no mingw-phodav library package which means that
at compile time the shared folder feature is disabled.

I recall doing some testing with shared folder on windows and
it worked quite well.

I saved the (old) installer at the time
=09https://people.freedesktop.org/~victortoso/unofficial/

> Is there any chance of getting data transfer working in both
> directions? Is anything like that planned for the future?
>=20
> Kind regards
>=20
> Martin Filbrandt
> Supportcenter
> HLA (Hessische Lehrkr=E4fteakademie)

Cheers,
Victor

--3nujntkuq2a46z7p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl9OZOMACgkQl9kSPeN6
SE8ycA//TnI/8mB0t58GUS9vXAoK85mX/3bK2gpHNzj/XEuWNOLOO1jJWhZvHpx5
pzHopn5I8SCi7D8jia7J/zX0RXt06xSNKe/q2gHR1STY77pjZK5C4VOogE9zOd8G
bKcUSgv2r/OZPT/L8js1Ez0ml1kyJsteBzLSAsu9hlLIkXInup4tGmpUyVSGZL0d
QUGLd+zOZaYQOiHSeZE2UPqkNrvjrkJDUJKnHP+/eQB6c9esGYPDU78FWWikUCfJ
mVpl66w99CfZzHfI9c7CnRrmw5glVbDrIT0oD/Kvg8sN8thn26xTLAL5DGI4FIOV
zbmIGuPg4SK5gbTz4vl4MRw/fKuk+qrkuWwzAC5RbRVuhG5pAeWW/ldBzM+0bncZ
9h/1HgGi1l6tPcnaNCafBgmAHxoAwn5bvhUx5N+V+8xG+u5uSJoq3REyWLNZ9NhW
IBZt5OFaGTj/bGcE/Ho+u8ZjbB7Go+hKYFfwVrCppKVcb+6JPF6kVHmBfatCn79v
EloE9LNXa7wSH6HlbeuN0b2J4k9FvWROGwGc99PP5bbUXFqkf7O1YV70Pn9p4wcC
mDKmLccUalvyXzkOKxz3qg2L3w7DzmnwK2ja6hcBU7LtkEnoT194chd+GguN3Ggl
l2qZUTaiYR/tlF/NGcmvLYUC1Svd80eWb74Nw4tPMLBoldOOCDo=
=6NAM
-----END PGP SIGNATURE-----

--3nujntkuq2a46z7p--


--===============0041067156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0041067156==--

