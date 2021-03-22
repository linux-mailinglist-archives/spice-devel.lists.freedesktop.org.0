Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50629344625
	for <lists+spice-devel@lfdr.de>; Mon, 22 Mar 2021 14:46:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97D9B6E48E;
	Mon, 22 Mar 2021 13:46:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from sonic311-23.consmr.mail.gq1.yahoo.com
 (sonic311-23.consmr.mail.gq1.yahoo.com [98.137.65.204])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08E7E6E48F
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Mar 2021 13:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1616420769; bh=2RxjbWkIFTNWt2clnJ+MsXTFn65Fcc0KzMyWSeXsuZ0=;
 h=Date:From:To:Subject:References:From:Subject:Reply-To;
 b=UU+vLNEuJf0P/A75TjyW947pIOiPSZwzGpnTDwc9SUgd4VRYiDtFSQAjZN8mnA7YA1v7n1TSw6wPNimFcSK2EH4esvoKf2uPHPEL4Hsl9f6nBio/msOOvDm95Lr1GRl4kFzxkd7gc4tJjGGCEnnsIWefC29EdRW5dMRTztg0iyreOj6BgY6Gl5E/dog+KEprHdv7n2zutQQ3f1NKGKQiaZD2SEu9kJWpvGyRawMJonW6Jjp9G5UprGmkm3rAkUOKDDEyGltA0VHDs3vS3hLkK2QRE+cvBAOsemJiMGj1orO2n3czq9Sd/eaBH+NV2gTA5kS7Y0E8TpNGX3LwW0crgw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1616420769; bh=QtbgLvPg3DLnu0rYl8Zeqj3eMOv0mIvCuBg9p/OlEqh=;
 h=X-Sonic-MF:Date:From:To:Subject:From:Subject;
 b=Ff1eI5a3EvZOnjRbk6PuHAs1MSezhZWAcpt8AQxu/6BcZMaD6sETvDxCh9+siZDzY9/IqvBou/hhJDfI4NZvLkZ7Jo2DUQTpLl3EwMas/024nrXX9Iv5ymO7jD1MDWd1Pt/lmEVBgwD7zPQm5LxPqKw9X57vS0Fybi2nvP2e+MStWP1RKZyTtiHs+0qCsnwOzMsr1Xu4RdWwf2ZCpQJRXPrlpxa5Knu760zIOMIJD/rINwiytAPFVWc3rYRRKlLkfgxy/EAf+H6YAOrF9guRHKIID6WXgClPV7QwYOcXlm0v3sg5ORnJoKpfKWD8eqbeNY4FTl9DEG5gb4BRV5pugA==
X-YMail-OSG: P2V60N4VM1narYORO_3_Z3d5hf809QnY5l9VmKAp2xlJVa7OWk__Dq9D9nvU.x1
 6soVU9L88fX3e55Rn_vPWbzYFVr51NeM.NuTTBBdxBIOtvEp4tf_Vqw5Nl5UXp9eZyt959Mg.QZg
 tgrqKjjUOklZF1pxCF_5bvFLipad7lN8lvVBDthw2Mh5v2.alPakGMpziebxV15bUqpmqc0xRMTB
 w7ZM.vsMh025ST5ycnD69Ym.ZCf8WUe9mtUcfIQngzed4tTZBge0r7WYxBfLZcP04YEsdIkDQfL2
 b3dm.MhQIk5gu1Z6UFWB3vSI4uqGGDu_E38btztiUZ_kCUvyLmyCSLB2SIeYkuLk8wjwNU_Kf2iv
 uREOl1n9rFCFqEobSieE0330tr45w4t97c_RSnSkPlewuM.WehfTgioHYzaaIblcnXx05Irio1X7
 7pWg7BQAdiSTLOiOKNtJqUHPy98WyHY6hpWolp3j4Y65QYHDzJL2hBazB0S6uNJdMRPXQhxG1SKK
 cY5.AV6v1cdXBBeH6DzqgLFZS6mrPeeVPJcRb72DmC1WUlQq0m1Zuys8sz.qDO90_npmGNK4nUDn
 DNytMRPGSiz8gGnwq4QBTb4CjRvRt0k.kM8aIBXLSUFUi0Wh70e1iRtX5_W60jIsUdcSUlWaD1N.
 CsHghAAMyuHsrk_0xzFjyF78pSQGZzfPzIK1CfeOKsYpj28DOV4kn.9_0iOlI2ENwD20EGvkQq_9
 chQ.FF5G6krnTELH6LcAEDlXcno6SG6I71JtqyrdPhERyCRyIuNToKB9vd4uBqxtOWaxu0OsbOf_
 aQVEz0RTYv8eE71zDAS9NgezL_gz9hjv1fBpmuzhIEngVuczj6h9ErRV2I0Vi_J6euY695rpXnK_
 nSQvIpkO3KkqAiX3ELtKSozyBxGOz0qPQYXVwcdqDFq.8gZFquTjm0dk1raERqUR1WZqO9eXWa8L
 zBjiBlHZguCgLhyfaEwZxllwdTZs4Vg8QrUa31py0c9634YBmDY7Hva7sCamD72IgrSPV3_Yp8xQ
 NCk8IdWQIGlmfxGMDMlxjMiSGZWWKFQtEUkK97pI_WX0MJxP.eFrnFjp1Z_eTbFFPZb7Np1ninUw
 dx0pzNcKS5PbBsRBpaFov3987.RKr.gb_cQz5PrDHbtYldsffpESV5SA3Lm0_w2DlVkRo3LRPeTI
 Ol0qI4I77lb5Gz1HeMlPiYF37VFgIB2xOqubGlFlCMOoVfPDxfHAws4YB0CeYgyBc26croz2WaCC
 i1Odov.eNCN5M99zuUypw36r9GLhcTgzbFPsaQc74bxTp4N1Z4gS4mmkuakRuJJxyEC85Ozmmw_6
 jmMTnoJdWSFJdCAkDKm2tRR52WQCsd6QRQ2uLY3p4s9c4WyzmnOhnJu3qaDTEbytpQto1uOrsJL8
 OTUnc25WRJ3IM1fDAEDxDkunEsMz352aA27TbqN_vYyG9AKXO1oOSXYPqhoZy3hPmA3KTuTLpE.W
 6suQnyIKgqwocMH10_cGUS.u2hjyf6lLJhsqeNDiJ_3lRdADfZV3I_jp9Z8z0pbgR0ZSypnOFRI2
 GzfXG9alJinoMxKuhxJGa3Oh7kqASmnwhNyuck0psW5oJyzjUzcZF6PJVoy_hQe.o.d64w0yQeUC
 4thztiMviwVYiOOVpA36GgxVcZhUEH.O82ymveQsaGXOpLuEbI8hki0nKKFqQOf19M1RpWNxLWlF
 LOQAe5QxyN8lBKZ4aa4_8siJenQm5fNS7plj_YfQ7VQ3IZWEVesYZTKOd1MK5gKvMsqqkKipiBte
 Kw038B47CMALTahdz.AfniBFlpceDjW_5Lf3HG_TZ3ifMvxvXnuJGFPbmwZ9EOoHqlI0SenrD.s7
 YXhivJCHb7mVlx47rjYUT89ebmUrzxbzUuOvidJbo_SHamYxGW4SyboeF6rzZY_ECB1w.FM9_5wS
 hVxsE_ALwmeeapy7f6JFfVI12pOqR3Kh4LDk7OV9j7SQZVgOVOILXbY1oOmsIbhgxgwYg508HWBC
 LLL76R84sb2r6qQcT885IsGdk3V0IScKnH8yRINhhZOUhKt.6tzap_NHwI_pGYwkTupSo8d3zIR9
 fecD7M4IF_ZUzKv.FAgcBF4V2_psGvEkF8qOvy6QQswhuJK3zjzxCGtAiZiLOaH7ZrCRE6x46bjf
 dJYhNlJTcwdhwiDolkmUAhhuXs0_wCSzo97JaDYnmlWcWxrL5lNKV64hw_wMsVMggoeJp9eaiU5f
 gIq4QhgFYP8._5b9d3fcy15dQeDzxvFwG0PlgycDTCa71ZAFtGrLNVfOPnz4Vg9YNDAg8BRBmySr
 XIZ_iNU6.88Ga_srR6HXRtn38lDHFHwHiXv5g5fOfBFvYLKKBxlZXZN67IlCsrPWnmfgtU5kmqb0
 8qgehtLX0g54UmFUSfPMxD.r7DO59t9KKx7DjOYbON_2XXlhnQzKcODhPYDNB6t.FCf.ddRHw0I1
 giScCjtunj5k_fG09ejk0cwVALLJQxWTztZE6_hBl
X-Sonic-MF: <bg271828@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.gq1.yahoo.com with HTTP; Mon, 22 Mar 2021 13:46:09 +0000
Date: Mon, 22 Mar 2021 13:46:08 +0000 (UTC)
From: "Dr. Jennifer Nussbaum" <bg271828@yahoo.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Message-ID: <1460907569.2869086.1616420768731@mail.yahoo.com>
MIME-Version: 1.0
References: <1460907569.2869086.1616420768731.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.17936 YMailNorrin Mozilla/5.0 (X11;
 Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko)
 Chrome/88.0.4324.192 Safari/537.36
X-Mailman-Approved-At: Mon, 22 Mar 2021 13:46:42 +0000
Subject: [Spice-devel] Multiple monitors at 4K, in virt-manager?
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
Content-Type: multipart/mixed; boundary="===============0469474116=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0469474116==
Content-Type: multipart/alternative; 
	boundary="----=_Part_2869085_1655793383.1616420768729"

------=_Part_2869085_1655793383.1616420768729
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I hope it's OK to ask a basic question on the -devel list, but this is what=
 was listed in the Support section....
I'm using virt-manger, and its related suite of stuff, to run KVM/QEMU VM's=
 on a Debian Bullseye host, which has two 4K monitors. I am unable to get d=
ual-head working at all, and I can't get 4K resolution working in the way I=
'm apparently supposed to.
I have a Debian Bullseye guest, with spice-vdagent and the QXL video driver=
s installed in it. The Spice user manual suggests that multiple-monitor sup=
port is easy; you're supposed to use a Video QXL device and then everything=
 should just work. But it doesn't. Even when I increase the video memory in=
 the XML file (vgamem, I assume) to 64MB I am unable to get 4K on even a si=
ngle monitor using Settings -> Display on the guest; it maxes out at some a=
rbitrary-seeming thing a bit over 1980 x 1200. And regardless of resolution=
, I also do not have a second monitor available in the guest.
If I have a video device set to Virtio, then 4K works perfectly on the gues=
t machine; if I go to Settings -> Display there, I can select 4096 x 2160, =
and I get lovely 4K video. However, dual-head does not work. If I try to ed=
it the XML for the video device to 'heads=3D"2"', there is no effect--at le=
ast, when I restart the guest and go to Settings -> Display, there isn't an=
 option for selecting another monitor.
Could someone tell me what I'm supposed to be doing?=C2=A0 Thank you.


------=_Part_2869085_1655793383.1616420768729
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div dir=
=3D"ltr" data-setdir=3D"false"><div><div dir=3D"ltr" data-setdir=3D"false">=
I hope it's OK to ask a basic question on the -devel list, but this is what=
 was listed in the Support section....</div><div><br></div><div>I'm using v=
irt-manger, and its related suite of stuff, to run KVM/QEMU VM's on a Debia=
n Bullseye host, which has two 4K monitors. I am unable to get dual-head wo=
rking at all, and I can't get 4K resolution working in the way I'm apparent=
ly supposed to.</div><div><br></div><div dir=3D"ltr" data-setdir=3D"false">=
I have a Debian Bullseye guest, with spice-vdagent and the QXL video driver=
s installed in it. The Spice user manual suggests that multiple-monitor sup=
port is easy; you're supposed to use a Video QXL device and then everything=
 should just work. But it doesn't. Even when I increase the video memory in=
 the XML file (vgamem, I assume) to 64MB I am unable to get 4K on even a si=
ngle monitor using Settings -&gt; Display on the guest; it maxes out at som=
e arbitrary-seeming thing a bit over 1980 x 1200. And regardless of resolut=
ion, I also do not have a second monitor available in the guest.</div><div>=
<br></div><div>If I have a video device set to Virtio, then 4K works perfec=
tly on the guest machine; if I go to Settings -&gt; Display there, I can se=
lect 4096 x 2160, and I get lovely 4K video. However, dual-head does not wo=
rk. If I try to edit the XML for the video device to 'heads=3D"2"', there i=
s no effect--at least, when I restart the guest and go to Settings -&gt; Di=
splay, there isn't an option for selecting another monitor.</div><div><br><=
/div><div>Could someone tell me what I'm supposed to be doing?&nbsp; Thank =
you.</div><div><br></div></div><br></div></div></body></html>
------=_Part_2869085_1655793383.1616420768729--

--===============0469474116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0469474116==--
