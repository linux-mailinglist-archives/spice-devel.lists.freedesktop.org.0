Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A243E8E03
	for <lists+spice-devel@lfdr.de>; Wed, 11 Aug 2021 12:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4849F6E111;
	Wed, 11 Aug 2021 10:04:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 437 seconds by postgrey-1.36 at gabe;
 Wed, 11 Aug 2021 10:04:48 UTC
Received: from mail.valdk.tel (mail.valdk.tel [IPv6:2a02:e00:ffe7:c::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F92E6E111
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Aug 2021 10:04:48 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 5FCF424FC33
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Aug 2021 12:57:26 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=valdikss.org.ru;
 s=msrv; t=1628675846;
 h=from:subject:date:message-id:to:mime-version:content-type; 
 bh=er0fSYZkrq4ED7tPkydThkQWMBQEgFkGe627KYOTkjY=;
 b=csbSaFODeLB+6EM+T2mqA5u7Aqdc1nL5n3NpLNn7LRzXMbrgEL6Bq54gdmJ8mfydm1tU0B
 zlDhSEbNw1Z5Qv1cZvUznQH+zaDUWNftkTYHgcXTkaKW2f+skWi9mJP0KepxT42fMjpPyC
 U7m+keZvNR5IJovoQtH3OwMxkT1TVssOQDwhvhwSxxOkP3dJuJD0P9UQ5v57HWX4dYczSM
 X6jmmCYHs+3rkPn6YpmyDTZgy/7mp0PGkLzjCjvuM8uGk1Z0UH7eyact2Z/hDsNtEVM7Rg
 J6bRNNZLcXtTviE4qJkRRpgOoDo7CAaNfC5QwOqhV527rXM7TaX7+uMW+jLB4w==
From: ValdikSS <iam@valdikss.org.ru>
To: spice-devel@lists.freedesktop.org
Message-ID: <27996919-4e5b-ab13-77cd-17f797c6fe01@valdikss.org.ru>
Date: Wed, 11 Aug 2021 12:57:23 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.5.0) Gecko/20100101,
 Thunderbird/78.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="34X97RfBIyu7lHevWHMtnWMHJstADBekc"
X-Last-TLS-Session-Version: TLSv1.3
Subject: [Spice-devel] [PATCH] Fix launching xsession script
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--34X97RfBIyu7lHevWHMtnWMHJstADBekc
Content-Type: multipart/mixed; boundary="RqzYXqtDgIYR0uPdrStfz7vAOo4vSxCtp";
 protected-headers="v1"
From: ValdikSS <iam@valdikss.org.ru>
To: spice-devel@lists.freedesktop.org
Message-ID: <27996919-4e5b-ab13-77cd-17f797c6fe01@valdikss.org.ru>
Subject: [PATCH] Fix launching xsession script

--RqzYXqtDgIYR0uPdrStfz7vAOo4vSxCtp
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

os.spawnlpe() has the following syntax:

     os.spawnlpe(mode, file, ... /* argv */, env)

Python 3.9 does not allow current syntax and complains on missing argv[0]=
=2E
---
  scripts/Xspice | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Xspice b/scripts/Xspice
index 927dcb1..b1244b6 100755
--- a/scripts/Xspice
+++ b/scripts/Xspice
@@ -355,7 +355,7 @@ else:
                           args.vdagent_udcs_path])
      if args.xsession:
          environ =3D os.environ
-        os.spawnlpe(os.P_NOWAIT, args.xsession, environ)
+        os.spawnlpe(os.P_NOWAIT, args.xsession, args.xsession, environ)
       try:
          xorg.wait()
--=20
2.31.1



--RqzYXqtDgIYR0uPdrStfz7vAOo4vSxCtp--

--34X97RfBIyu7lHevWHMtnWMHJstADBekc
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEMiogvXcpmS32v71gXNcgLu+I93IFAmETnwMFAwAAAAAACgkQXNcgLu+I93KS
5RAAmjp2u4uwWnrE9D6XV9N+CQqW5ulMm6z5B3MAzxzreD8tkBi95Yknqzw3xzv+NyctZA0QXuIr
Gi6e9KUka3oeWyZXhpWP+h6qE75uC4AVFdKIpZIBYhZGOWvok20U84GXXEMjto42P/N7jsJc6NXe
gLAvQFrpfrDoO+4JM+JK772eCcOdnqBB4dNP33Eklla8P8DPTsxfUmG5GNpAmbgxZr9wPu7kSoEE
CUwGHPN2sAo+x/9sat5j/3QhZMdBUPVOr5yov9B++uxkJYPz148QNO9sSeiG1V4IvvOhRu9oklnP
LSX1Q6fC7suRCGC2q6l28eyINdJnR5zUoxb9a+0rhq4sZ7dQmUDZV5PjFl1ndrjQ5Obct1jbO76P
xqkU49mAUSrH4+FrzOM+/31iHjOAxW4CKGoVyVcpanH976+vQC/K5ZmYpgyeLrh7Kh0q2wNGTuXX
jtzipOAD3W1G2kDHOhveO8hLJZtxWT5doIlKrt9tUV4A41BLKOJgScxK7xSqZKcprundnIyohaqT
Nmh8N/eOYcwMPnRSnApq+0Z7YaZbieADrRrbXzSACiNGECZS7ZnLoNso52dXkmRTacPx4fUhXrWJ
YkCoxAP8+G9mZ0bSXbzb6Xk1K59zPwANiVVgfdlqYvLTFrXNgtOURl9gDUaAqHLmGAKGwrO/WuFY
vTk=
=Igrs
-----END PGP SIGNATURE-----

--34X97RfBIyu7lHevWHMtnWMHJstADBekc--
