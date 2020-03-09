Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEFA17DF13
	for <lists+spice-devel@lfdr.de>; Mon,  9 Mar 2020 12:54:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50DD76E25C;
	Mon,  9 Mar 2020 11:54:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACE8E6E25C
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Mar 2020 11:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583754870;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=ut3f0OmU49hbB/S8JHlNMoQoE9sVv9pxmemPb+6rvcM=;
 b=WCRU/0MH1tIi9dkDv3YsZ++EQHBA8fv+tUaCekS2J6FlMT8ajmB7hG1LyVS8uGVr3x/OXu
 LIDHHo8EsKPRwZkr9Znmah4FjVHoylKf3soNF42AXH9GJDwtEtuQwS2IpihMhX5pDE6iqL
 DJLVFJboS/f0xttczXjTu/u8CdT/3x8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-365-hKGkdb2kMo6qsj99xCosPg-1; Mon, 09 Mar 2020 07:54:25 -0400
X-MC-Unique: hKGkdb2kMo6qsj99xCosPg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C69C0804902
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Mar 2020 11:54:24 +0000 (UTC)
Received: from localhost (unknown [10.36.118.89])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6D18760BE2
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Mar 2020 11:54:24 +0000 (UTC)
Date: Mon, 9 Mar 2020 12:54:23 +0100
From: Victor Toso <victortoso@redhat.com>
To: Spice List <spice-devel@lists.freedesktop.org>
Message-ID: <20200309115423.4bow3we2gcppxhep@wingsuit>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] ANNOUNCE spice-protocol 0.14.1 release
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
Content-Type: multipart/mixed; boundary="===============0472090845=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0472090845==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6yqedyfj5ynckgoe"
Content-Disposition: inline

--6yqedyfj5ynckgoe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

Spice-protocol 0.14.1 was released this last Saturday and
updating it would allow new features and fixes to arrive in other
components.

In case of bugs or requests, please file them at our issue
tracker:

  https://gitlab.freedesktop.org/groups/spice/-/issues

Release:
   https://www.spice-space.org/download/releases/spice-protocol-0.14.1.tar.=
bz2
   https://www.spice-space.org/download/releases/spice-protocol-0.14.1.tar.=
bz2.sha256sum
   https://www.spice-space.org/download/releases/spice-protocol-0.14.1.tar.=
bz2.sig

And also:
    https://gitlab.freedesktop.org/spice/spice-protocol/-/tags/v0.14.1=20

These releases are signed with GPG key:

 206D 3B35 2F56 6F3B 0E65  72E9 97D9 123D E37A 484F

Major changes in 0.14.1
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
* This is the last release with:
  * Autotools: Meson is now the only supported
  * foreign_menu_prot.h: Deprecated in this release
  * controller_prot.h: Deprecated in this release
* Add VD_AGENT_CAP_CLIPBOARD_NO_RELEASE_ON_REGRAB
* Add VD_AGENT_CAP_CLIPBOARD_GRAB_SERIAL
* Add SPICE_MSGC_MAIN_QUALITY_INDICATOR enum
* Add STREAM_TYPE_QUALITY_INDICATOR message
* Remove deprecated vdi_dev.h interface
* Remove deprecated VD_AGENT_CLIPBOARD_MAX_SIZE_DEFAULT
* Remove deprecated VD_AGENT_CLIPBOARD_MAX_SIZE_ENV
* Remove unused SPICE_GNUC_ macros
* qxl_dev: QXLReleaseInfo alignment fix
* Some documentation added in vd_agentd.h
* Now shipping a rpm spec file to easy deployment and testing

Kind regards,
Victor

--6yqedyfj5ynckgoe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl5mLm8ACgkQl9kSPeN6
SE9u9RAAnlZR7Hiwts+OSHtQNAUs0jaZ9nYv4UbydkJZLSTDXSy7A84Dq+RfLe69
EMyJPFvUZBDxUk1L08k5IN1DjIsfTQr3jEANX7zXDPIegbmqG12W1Cqxx59NeR4U
9zIFED62LGufgRlkwBHSRnTg8Sh5nKX29xX6cGDOO/qbI6pH5KWyRaPTAjFIYROD
kE9AOHc7QZd9S9OEfo8RcOySciCIMqQx1Y6Crp33E00k0vXuxvqJC9fIAaIF6k/t
TS+K28Xzr7ugHeavR511I65VtarNXxtXbQNZCUrZOrC4nnXc2NctKx7okL3nhU9z
SDILohyuTqTz2PJHWa23e9M1+PcSOtuECmwIkfnAf415aUDaciBryc9XVRHraqbU
pi1MzLJ7CGX0tEZGD7KiTOdnOVpC3iNGb16NneuTxz+YiVrX8TQbj4pRWNsi1XQj
PszjI6r+lEC4+MFKiGyaMH/qriuR+aEkaeS41zQoER8oKlb1S/a8yXtKGBPPisE9
eeq8vqL6+RH9k7DIxv4sgZz/qOrRX+9AiyAPYGwXRRLXHihDS+5DsE1RsusMIFAx
CoG42hDTQwv0F8hQcghhJ8k+o4J2lmDaYxInrTksJAOTnj0wgofPTSTtYoz75EI7
5R42NfLJrmcwCTx8mgiGuJXWC6m0t18w1hzEEfMz9jaB3NYqMwM=
=pWPo
-----END PGP SIGNATURE-----

--6yqedyfj5ynckgoe--


--===============0472090845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0472090845==--

