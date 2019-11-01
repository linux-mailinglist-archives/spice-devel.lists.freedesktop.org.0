Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 987DFEC23D
	for <lists+spice-devel@lfdr.de>; Fri,  1 Nov 2019 12:48:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C2E6E1F2;
	Fri,  1 Nov 2019 11:48:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTP id 075D96E1F2
 for <spice-devel@lists.freedesktop.org>; Fri,  1 Nov 2019 11:48:37 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-391-kvyEAS5dN3-QxHjgbHDCtQ-1; Fri, 01 Nov 2019 07:48:33 -0400
X-MC-Unique: kvyEAS5dN3-QxHjgbHDCtQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 627B8800D49;
 Fri,  1 Nov 2019 11:48:32 +0000 (UTC)
Received: from localhost (ovpn-117-71.ams2.redhat.com [10.36.117.71])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0D4AA1001B07;
 Fri,  1 Nov 2019 11:48:31 +0000 (UTC)
Date: Fri, 1 Nov 2019 12:48:31 +0100
From: Victor Toso <victortoso@redhat.com>
To: Derek Lesho <dlesho@codeweavers.com>
Message-ID: <20191101114801.h6s6u5px4p33b3cg@wingsuit>
References: <20191031154627.ase2nwgygawmzxdd@wingsuit>
 <415c5634-a6a3-50d3-e6f1-480ebebf31e7@codeweavers.com>
 <20191031160408.acmodlrqzg6o4gsm@wingsuit>
 <cea4773c-62f7-35c6-3a52-5947682adce5@codeweavers.com>
MIME-Version: 1.0
In-Reply-To: <cea4773c-62f7-35c6-3a52-5947682adce5@codeweavers.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1572608916;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wUdomuQlUUd9MLlfbdmOCPqciUai4SIPBe3RGRBQtZs=;
 b=DmKeTtpuGlSGsjd3IWcfg/Eu2AtDcOD7AViH4OoiHl5hmfxN/lrKyDcrP2ZlI/DFyjHgh8
 3onqEKQBunqMzbAdWpPDPTONuJzO/f5cc/lTMVfTf0PHo30aPPlop3p6jHknYoEoyeoZML
 QZ/xF+ohjjVvuG+2vmyVFoRBzEAm2Tc=
Subject: Re: [Spice-devel] Using GitLab
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
Content-Type: multipart/mixed; boundary="===============1785366458=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1785366458==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="r2wcel7ifythhch3"
Content-Disposition: inline

--r2wcel7ifythhch3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Oct 31, 2019 at 11:47:56AM -0500, Derek Lesho wrote:
> On 10/31/19 11:04 AM, Victor Toso wrote:
>=20
> > Hi,
> >=20
> > On Thu, Oct 31, 2019 at 10:56:59AM -0500, Jeremy White wrote:
> > > Hey Victor,
> > >=20
> > > On 10/31/19 10:46 AM, Victor Toso wrote:
> > > > Hi list,
> > > >=20
> > > > You might note that the Gitlab activity will increase a bit
> > > > from now on, hopefully. It was agreed within some SPICE
> > > > collaborators to give a serious try on using this
> > > > infrastructure that is available to us.
> > > >=20
> > > > One potential great change and challenge is the usage of
> > > > merge requests in oppose to patch series over mailing list. I
> > > > hope the benefits outweigh the downsides in the long run.
> > > Derek has been working on a utility to integrate GitLab and a
> > > mailing list, for experimentation by Wine.
> > >=20
> > > He's just gotten to the point of being ready to try a proof of
> > > concept.
> > > Would you guys be interested in this?
> > What does it do exactly?
> >=20
> > Cheers,
> > Victor
>=20
> Hi Victor,
>=20
> The bridge sends all the commits from merge-requests in patch
> form to the mailing list, as well as any comments the MR
> receives.

Cool. It works with specific user in gitlab as sender? This seems
nice, somewhat similar to spice-commits. I'd say great to have
it.

> It also creates MRs from PATCH submissions to the mailing
> list.

Also seems fine but can be confusing. In regards to ownership,
the sender must have a Gitlab account or a generic user creates
the MR?

> The goal with this is to ensure the developers who are
> accustomed to using either system aren't isolated from
> developers using the other.=A0 Optionally, the bridge can be
> configured to allow people to respond to the generated MRs and
> patch-sets, however this is disabled by default since it can be
> confusing based on the differences between email threads and
> GitLab discussions.

Personally, the patch review being done in Gitlab would be best
also for the sake of integration around it (e.g: one topic of
review is solved you have the 'resolve thread', the diff between
versions, probably more).

Having the comments of reviews being sent to mailing-list can
also be confusing if replying to that in email does not get
propagated back to Gitlab but if explicit says something like
"don't reply", it looks great as mentioned above.

But this is all just my opnion. The rationale for using more
Gitlab is for several reasons. If you like the idea and using
this seems a must, I'm all in to give it a try :)

Cheers,
Victor

--r2wcel7ifythhch3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl28G48ACgkQl9kSPeN6
SE9fExAAh+lyC/ocp1YwXDTC6wkqzq5qgADaOYJCufxAFBzijEG/+qzDuvUMCfXn
HPtElcmsmAD/Yc1m0QJXgTR3eOJ/G8rCYmCsOg4p5NZRNRncXRs3uyvgj3WlARJD
3dDnSqHAsXdZ7C4BNQKfp8lD5cKM6nBzdppM+7h+CZ0X7WnNO9IPYcNREdIIeNRp
mtFhKNTSjpB1BFTt3CYjXj02C2m7X0zyfSM4bMTmm5JQLQiLWgnT8JBMMhy0B9Ef
J+xfTMOIsH5U6qLWmrnVwCP0fNehbws2DeNeAa1SUE0079v6NBVdTUpRbxCnA4kS
Jhp0yHK7PWmMW5mhkN7ejbO7HRL2AaPiw8a3KtM9AaHEhtzZF6cQrZ/+9IU8o/kG
jHT9QfW+u6DoJTfLRZKvUEeXSuWnpHkLkEF2ZXEz59MzxZ0cAmGUnQ5K6N33Isq7
8fgAvatuST2vxxZj3BOpROsRpIHs8v3OgxRZjide9wfdtVQmiPQK8uVF9HgAtcQj
cmYyRIobFYxD084LkQ/jA3q5Gc6IlOiN11QEI6moCKNQ3jWfxLvEv1tyt2ZBpLG0
RtKjbCk59WyJ6KazpXnWWEju1Yr/03lZllh1X4n9FaztZTqYS/QlTjFJZInKYTHM
Ry2WRK31O6O7P/8seLjIoR+XT9oRO/4PHpRz3SX5T3/yaqOOyMA=
=0kE/
-----END PGP SIGNATURE-----

--r2wcel7ifythhch3--


--===============1785366458==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1785366458==--

