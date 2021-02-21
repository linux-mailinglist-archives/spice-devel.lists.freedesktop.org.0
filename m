Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3742320934
	for <lists+spice-devel@lfdr.de>; Sun, 21 Feb 2021 09:37:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C0F6E441;
	Sun, 21 Feb 2021 08:37:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from sonic314-21.consmr.mail.ne1.yahoo.com
 (sonic314-21.consmr.mail.ne1.yahoo.com [66.163.189.147])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DFDF6E8E3
 for <spice-devel@lists.freedesktop.org>; Sun, 21 Feb 2021 00:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613867459; bh=7/RB2e2sw5H+3SoLdoBVFnsQG9husOn4AdkujjEU38Y=;
 h=Date:From:To:Subject:References:From:Subject:Reply-To;
 b=OgZ5fDaCgv82t73pno2pk274fQ7R9FKOAVhEOGcN+do+NA8Qz/BADuBK8bcFnPp2+Gzu8Dsv3dpQrjl8Jj3vOTzVZYmIOYrszB/JGJ7mcCM23NqaOBrL7wIDMedfos6U9UO3ougFohMICj/LJgdm5afeMTtCDWL5m+UNhOQO8vzL/k4Hzs0af/RQjLtLhlx5LxWS16DRGVGmRJ5T0kB8cIfLC30c/sR3J56+y8nRjBSubVfexxcody/JmYWEP2BSj69Wr+5q/x29oKf/POi59PYQcIqco1+u1mP9UKRcYmrCDzIuyyL44gwNLB6MmcUjjxlhK5yCfijn9c4wA7pVbw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613867459; bh=eH3dwQfUePdrrhMA8Ktxl8yZF4mpz98AamKEfCsbokf=;
 h=X-Sonic-MF:Date:From:To:Subject:From:Subject;
 b=X4DnRcaC4QSGbd9By3Noarwp1Otez5RuAemir8j/6gCgFuTvLRYJCVAJtnGsKNsAQQQkcpOxmjYw0nAc5lRP1JZi7cchzEk8GCzI6lSgNJw7jE94445wNryFgRejruKaVSS301qKk9BpD6VHGn+dQN2g6j6+dKI39wZNFo/kij63J1erAVYuaVHQkoxYz/qPcs9QcMFvWB8Ck+QXAOTp8TnwVwjhEGDc1IJNHr8mmE7K5ebcZ+S8GVqIemxWwj8S1LCuW9HAQPKswbRKIQQvMCuD9mD3hrtizq7U962FLBIssKXPl7DLEINHyMvVKXSwFqfqUknQx4efIGXEEgbjzQ==
X-YMail-OSG: 3384P_QVM1kbkgCWWAU16U7hHFGIAZx5r.susq6jTszDOHNt.q3tj2FDgEEHIQu
 ltk0JreLG0zZuokM50iSU8mH9JIpzGNrITipMUSMc6DMLbMYlInfDsYpc2EvIIEKCG28Y4JqfEPU
 7vjfCZVfvfx6nvOAHhBdLnkvFyJivQxqvnSVyvWBSMP6IeCs6BPDZY7g6.7bZrfIEeITnwRUj6VU
 nxr93e_HuAHOJqcfusIy1w96eF0lUmq.VGnvhTeoN6cnEO2m5RL_79XORpKvqlmdt_JhXkVjV9Nc
 ejwSo_5phpNzDpsXc_2ysehFdtq3h8k3ZxN_lP.PcBSwZbmLsy2fTaKAnx4mrq.PDHeOEa0gqInV
 mmBipijewulS9bRcVfKxuhKP4L5rOTdH7AqwqSRM1rp6ZmsKmRIDTRIxDFbhWsOF8I2707RIp33H
 vtyxZgPWN999S8mRWk79Vl7I.OJqie2fcleRpyiTnabkzBttf9V90w0KngtNjGOLq0gQOfLjDG4m
 egmm1_swyTpgGbQtI7Xkrz5PbnMgpXy0pu.kgnv3CM.Y4ACajEmnMkUYBokI7lpvof5OgPyl1.J7
 B.9or4z_d9StgwakZp0ef4UipeGFbpGUoVb5_hM5p0.UCMjqdMX2UJOJvbxm1c.M240AInxzPPpi
 ANQfKZ2fLGkHVL_7M.oOQzFVIA.AKV7pvIDSP9EzJ2OtlCWbro9MT.XtyRtgr_myNB3KbkrOVJA9
 l.0V0_zmlZ4WgCW4.Vy4Oqf2U0YgtHnshO.Zx3dhcNpRt4lsthTzTXsQtpzEe8iu6GNeIS7bObq_
 FlT9MnR7hADes0Aw2f8DdgPLFeZ_eVXqUsHTGoADBIa3DyBfSQFKJFkfwGX05gqJd9Y1MEmqN5Co
 QN24E9YtcgAPcKm81vLmoiVRP4evgJ6TWPemW1nf8_5_JDnJP_Ijj9xX2tNE4EfTNbk44gvNuZPK
 jDFD4okOI0uu_DtL8djpc3IoCSEKiB5OyK6_RXPWHVZYwInO6XYLuJtMlraxHzQkYHdYlJ1FAE.x
 lVGqvkajdVDeGw4wgW41N_PfsCni7OY5ln5VewFcA8VMEf_VlTv2.CYrZZosqK917U.7HhLmqKln
 roSxk7Wdegb.mpaMChyqwLDgV4b0cXcnSIZ26XYTsCSyVhztBvtlLagwBE0C0mxb6zBZqDAejsao
 w5DfCgRVFHPuQJnSv_id5rIMFeJQlvmcpmmBqX3.SBburLTHOhuOtN.YmG9YBRiVp4Rc36IJDor5
 vlPSnlvXE6wwR.3lUNEt4UkMNMrBNoBHki1iUsiO2m9EMUsjIZOxlh0C2OR4xqmZH8_aJVKzUuPM
 7FDsib4_KrmTf8uLOhUDTWKtNBW0nhXD3x5VCAs.m9Wvya5NAWkNCgcc3b9CVcrgt0oq4O6W2Uw_
 Q5a2nGY3W6DQRR1TeOa4grbWCMQfgcr04UP3SIYgZSax6WOlRT9bDHtq7eBC897gPAYT4H0Ijkrb
 MwWtC7LAkZDY54aw6lukMRHzmBGWHzVGMc7SB0ehCr6tSoTIZ5V2YBJxMrvaOSx9CKHJmfmr3PBy
 NTIc94yCZU0pOJJ7qpWFEISzY9gA36TQndRKrOFiiNNlWeinF163WZuiotw1fItUypPo8h53vBTu
 Cm4dXRzBr0WmeY7Trf98XxYGotkQz6pNnnQSqFwsNyiZokUHkSK4pQIyCH214rTH2QLV9YnUHvD6
 T_2RXHXy_zRMANAc9RXCk5PsRCdnqDoQ_p4qvxQD8SLyENBrDMXKuect1t7UNCbIPbog1M2rqiwd
 FFfFEfaj7wClrNixberUBVI8FrxrekThuuEamu1p8tyV_b4dzu2NmDev48pLwkZdBDjLEGo_hGQj
 _7SQFX221..iPSQgSJ6zlnc.x.g92_tm7wpH3sjwIr1uZgEWDAeg7b_BO_xyL6_ttSvQPQ1RzAwV
 ISBw._ADrH3_Kn3VI4bYWNJWVBbeG8wEFxME_NNo8Qnnv5w01vUTXKIIcDrRjDtNY9_lmU_pkMtW
 9NilP_Sqo5DX02owB9khTwvGh5nNXN20pY74StQSuPQUwjQwPFCFJabRYJU5tG8I5MZ2KA1YfMs_
 mpc7rW074BsmxywmFpRn_UMizGaQpHBKn_.RB2Ku_Voi9zruQGoWw9Y2jYAXqUv7bprktzqw3Po_
 J5OaGGNSLFVCXWzFyQamKt4WNLSXZ2cNSRNVgGgAixxRXEYtkx_S4z23_g1TB23p7DGwqtBsWCJ.
 qTqdBHgwjW3_2289p7iyQeZrg.NJWjp5SndeiJjhqY6FFygBnrhaB4ZaoXV9bX4RZlIeE9pd_x8C
 YeUiA4ARKg7Nim7Ws.AeTIJPy63R9FoyglDntfKw0ywptTjJCB3ICD4VavNikvsNyQqP3fIjjVKw
 SduEi3_QNs2kBhjRDPVModoX0Zkl_5_VDk1ResZukFPt8MLonr6jB3fofIGRZBVzMY2PjnuXxg6P
 JKUJFgKvGWEX3dMufeWCn_GkGCrvIjgQOPOHZZhXppw--
X-Sonic-MF: <matt_sienko@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.ne1.yahoo.com with HTTP; Sun, 21 Feb 2021 00:30:59 +0000
Date: Sun, 21 Feb 2021 00:30:48 +0000 (UTC)
From: Matthew Sienko <matt_sienko@yahoo.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Message-ID: <924666743.685487.1613867448052@mail.yahoo.com>
MIME-Version: 1.0
References: <924666743.685487.1613867448052.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.17712 YMailNorrin Mozilla/5.0 (Macintosh;
 Intel Mac OS X 10.0; rv:72.0) Gecko/20100101 Firefox/72.0
X-Mailman-Approved-At: Sun, 21 Feb 2021 08:37:25 +0000
Subject: [Spice-devel] No Sound with RemoteViewer on OSX Client
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
Content-Type: multipart/mixed; boundary="===============1666205274=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1666205274==
Content-Type: multipart/alternative; 
	boundary="----=_Part_685486_547296150.1613867448051"

------=_Part_685486_547296150.1613867448051
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,
When connecting to a VM running on a Linux server from a client on OSX, the=
 connection works but without sound. I am using the RemoteViewer bundle ver=
sion 0.5.7 on OS X 11.2.1. When the guest OS sends audio, I get the followi=
ng errors in verbose mode:

(RemoteViewer-bin:6323): GStreamer-CRITICAL **: gst_element_query: assertio=
n `GST_IS_ELEMENT (element)' failed

** (RemoteViewer-bin:6323): CRITICAL **: gst_app_src_push_buffer_full: asse=
rtion `GST_IS_APP_SRC (appsrc)' failed

** (RemoteViewer-bin:6323): CRITICAL **: gst_app_src_push_buffer_full: asse=
rtion `GST_IS_APP_SRC (appsrc)' failed

Does anybody have any tips as to what could be going wrong and how to fix i=
t?
Thanks,=C2=A0-Matt



------=_Part_685486_547296150.1613867448051
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div dir=
=3D"ltr" data-setdir=3D"false">Hello,</div><div dir=3D"ltr" data-setdir=3D"=
false"><br></div><div dir=3D"ltr" data-setdir=3D"false">When connecting to =
a VM running on a Linux server from a client on OSX, the connection works b=
ut without sound. I am using the RemoteViewer bundle version 0.5.7 on OS X =
11.2.1. When the guest OS sends audio, I get the following errors in verbos=
e mode:</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"l=
tr" data-setdir=3D"false"><div><br>(RemoteViewer-bin:6323): GStreamer-CRITI=
CAL **: gst_element_query: assertion `GST_IS_ELEMENT (element)' failed<br><=
br>** (RemoteViewer-bin:6323): CRITICAL **: gst_app_src_push_buffer_full: a=
ssertion `GST_IS_APP_SRC (appsrc)' failed<br><br>** (RemoteViewer-bin:6323)=
: CRITICAL **: gst_app_src_push_buffer_full: assertion `GST_IS_APP_SRC (app=
src)' failed<br><div><br></div><div dir=3D"ltr" data-setdir=3D"false">Does =
anybody have any tips as to what could be going wrong and how to fix it?</d=
iv><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-s=
etdir=3D"false">Thanks,</div><div dir=3D"ltr" data-setdir=3D"false">&nbsp;-=
Matt<br></div></div><div><br></div><div><br></div></div></div></body></html=
>
------=_Part_685486_547296150.1613867448051--

--===============1666205274==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1666205274==--
