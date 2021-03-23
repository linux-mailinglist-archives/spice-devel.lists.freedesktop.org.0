Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B71DF346474
	for <lists+spice-devel@lfdr.de>; Tue, 23 Mar 2021 17:07:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27C4D6EB97;
	Tue, 23 Mar 2021 16:07:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from sonic316-20.consmr.mail.ne1.yahoo.com
 (sonic316-20.consmr.mail.ne1.yahoo.com [66.163.187.146])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2A9A6E8FD
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Mar 2021 14:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rocketmail.com; s=s2048;
 t=1616510642; bh=kDxnINycGrVoKcZzNZI5xgJfl0U91wcfwZur0mhk4RE=;
 h=To:From:Subject:Date:From:Subject:Reply-To;
 b=IuOLDpPOLCK8O4zSaRnXferVOeIztOqrkJjyHcPfbnCkyml+ojaxeF1RqWVIDSAWluTPVqoJXyk/8O78DLRJPoOsuBM4BrAjYOa1Gv8dfiRzVb4jxS+ClQLhcrsq2khz/BX4Zgo8wjzCuQVo895ruouhGW4ClrtwAq/tyyhdh4Psc+4sL7YPiSE6DE27CEJePjU+mcnN77VxLC5eTVffq8ZDOS7wviz8uk5DAnLzIQRbrvN97qzYMWyeODAq+kSm8y+wOeLx0d3vLLAUc8ZohRJKMutXoA3HMxKioaPaH0kQQe5n8EYx1jE+6m7hOiTXci+uJucuVQ8QKKUsrhFW5A==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1616510642; bh=4tFBJEMKdhzvsCrnVmI5EmI5+qNbf958TN+pV4tli/q=;
 h=X-Sonic-MF:To:From:Subject:Date:From:Subject;
 b=X8sIkzdCjuJSKcjzHLXnMah94Lr2xPNQ0Dw89VXSqpKO/bS377P40aIca+NMs59oST/4mVf+Hnvs7DSU6S+Bhfhz0Qu01S/AIyOGl8ZZ+KLT5j8QuDcCPGrV7uxrqQ4RgvWm9FYZIKy+CE20mIKb8x2glW3GJSwN5fpfxrriLMmAgqW4h+0azFbXSPvEckgZIsaECxoPSjjtkScVq3u0PNf1kYtxf46S6TVUucrQTdOsXV09DO0wc5i9t/juaPmogbeVYchFcM0SbmQ6xBTTmB5IIp3TF4NXMf1vnLHsGjMAzoTqTD+u4nWHvV3msEAzakxsSPVoV1jxPc+IPIE1aw==
X-YMail-OSG: l6eh83sVM1mEoom11TF75QEv3M7giFrrIydQEfH1EB06VOP7wn4PlFvwh2.zmat
 .aQ1cqfUqHLWaFOsDBzLZpggpsKAEG2am6aQ5UXFodNATkHAFqRIWu2ea60nHfjVzXIp_cYj91mG
 dp73rAtnabf5KUUY8LnNFjd.11q2SitVBGcuxygz1AMTnedRgnRmxy1hFsuH_W7U77fYAhD0ySdu
 jDr0Pq75kXlOEUdwmfeD0KQR5mJV.uO4GV1cy5p0nqiMoWo.vo4tNy.ecWDcvUpwMx4xRcyMSr2j
 bBHoZXvBQGwjey6r4v69LhwEnKNMrhGI4N4STd.rO50M35S3huG94OegJPrywpPec3GSE56fXDfn
 4RzQP1EGkvnrsVu6E8eqkRMuZ9JnZMayK_gUeD3DfIQzNatzBkCUCqOHRKgNz_FQnDJ_vShg4O2w
 Efu9YuNRmROi1V34Gh1b_ZJDtXNhyWYf89axtJ.81U2gryM0DfsIb1Tx6_RBnEfJQoLxuDe3BTQG
 mb1Ud9f2hhHLALZAdVhL_JLyzbox01ELCdVSyw_xrCq8Yyn0LQycrsnbRN43QmTxBuzCUF8eI43N
 apxxrMWqyS2KX9IIH.zqhFJfiYxjYrT6KdmNy3YdMAegR9BAAg2sIFOx2ct6AxvESwCYRjkZoxg2
 Zrsi9J4sPuOWZ7keG_.SJARs8ewaBXeVdPgMGFVwyZ1rri_w0XD_g9IMp0pAbXqoBjh1OGH5lEvn
 ccehayojNePU66BrEKAas9Sts3f7hrTY8JlgUlsICg7jkYVQsj7kKohyh0.OPCcW0mik1vDUAXx.
 E7_zuSL09NNFzL4sHbg6EFGJii8oBf2ftDZ9uDKaiLiDgLz3XDQkooe79mIJyh4t9jnWlrjW0QfF
 ROvcsAmHi7IZJcJ6wSVMsnnxV6Y0Yi.HTPptJW2DZd7JTqFTxXoEv.w4QxRnJwZPy_T2awx.6GZ7
 IjjkusrTJ8zr0qSZBEolKbQl2Mh_am8CSJY96dBb7jJ1bJUVPflhG.zrsm65WcHQNkWR0AVW2s0e
 4cu3Ad.wMjujw72nlLDZvDQ4LAr79ApKtIF0j11Y1WYtF0pyEJolofHDls8kCrQ5UNNfMJYhFvvK
 dr1pXGsl3ARQabtL2DBhq8_GKUwZcFVR7fojYJf6UltH2Vda5EIVN6EsEKr3wMUt1_2jM1Kjyeqv
 5UM_2mub4QloTdmzjIhEy98nJP0a70nbs1wuyhwWetvba1kvFNx_zrfwUn.upfdZj26eehIvya8y
 qqGsNNl3KreMB6geZs9rnrBqHEiMHFhNUfgEvyYpUW.xmnNSmZYesKdg6cX.FE1BLPoRBij4qbx6
 z7qVYXhN5DAsw9BBmL8PxY8ajpxeYELPu.9ITNTCmZxHbWaeI1C8iZ9WnYvCiCpSaU8kV07mTozH
 Nngy5.1TGJoEkNb9s.xAzMPYcx4ZfaSP8RD7b__C8DUZAp3.mRkrjvjmdH3I3MhUTIKaik3xdXiw
 0aIlhQvU1GdTfOxx7Bv2_3cYiM2BKXImflgSio_SOAjVZacJBR52ZCL2ENUD9bC0MAnXprPD4XY5
 S7ISzdBzBLJeJL0d_QMADX2HGWSzO4Z8QwlqVRjuheYefNLfRQeBo9INaMimErFSMKT4cgHZcevz
 EYrkjOjJANBA6wTFtWyzhFfIvOMa5S8Cp9daqoSLFkN1rovUH4Y8Sxl4i37o.QawYXX6snFLfG.q
 ZHmdBryyx26bHyU_MctJLREcD9.SSVb00gZqRviD8r_3HbPwMDm89kyKTJLwEiJBiiS._mTNufUb
 rTLYJ5LBcJH6Xk3WIXBKUjJ5kv1d0FAR6IQtFqbVC42gopz0fM32XcRx_30bKr_.i.Cq.9w.Kj6Y
 7Lp3P2RUT9.JjOvW6ANIP0BgzJ0GbyVYdiXq69Q0.9.HGzhiOikMZJ4tdvEZXZ1Fm_mNI7FOgwgC
 NOkDaAoyggtxRxvPuQalgEdQZqw6nbeOYFT3m.0AVUec5EN0Nf2fbTZhMzaiwcSa6LDSCDyy7dIw
 ZDgV_dzYIpTZWjDdkw32rbTR6fLLx71QGdIyECfn8lDVFsKztKXKrfsM49b0gHe83J8ETj5f4cQ3
 QYcIMDDPVfTvf9UMqxBkCW2g.X7fhi4KLQUNf9oD1OmJesjO0KLq1H0HO1QoWxcG9I83kA4QFYUO
 kOoVOgGtRQPdNrxsVTV48UO7ZHCv8Y.ZuqSdrvjIa4PaKM8h0nZaYJpi5LWIJu9JzJEdNe.bOO30
 6VSU_22UpDdm3ZXeuj1C0TdIfiE6WAg_3FXZmsxUWlOXKmLrHm2.hf.5FhHt89IX3CWqvrrzaPk8
 wLTX3XJSZ3hBgZCwKdFAjbP2o5urE3s56.qjb301lhLXD_xkn4i26cEES_k.bkLr0e4RpXxJ.teD
 wUQOaU3xVJzHWU08XAVU-
X-Sonic-MF: <ua.andrey@rocketmail.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.ne1.yahoo.com with HTTP; Tue, 23 Mar 2021 14:44:02 +0000
Received: by smtp415.mail.ir2.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 4f298c20f11e14cf6eb59566d9b3eb49; 
 Tue, 23 Mar 2021 14:43:59 +0000 (UTC)
MIME-Version: 1.0
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
From: Mr Mr <ua.andrey@rocketmail.com>
Date: Tue, 23 Mar 2021 16:44:02 +0200
Importance: normal
X-Priority: 3
X-Mailer: WebService/1.1.17936
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.9.1)
X-Mailman-Approved-At: Tue, 23 Mar 2021 16:07:49 +0000
Subject: [Spice-devel] Hello, spice for windows
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
Content-Type: multipart/mixed; boundary="===============1273408802=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>
Message-Id: <20210323160750.27C4D6EB97@gabe.freedesktop.org>

--===============1273408802==
Content-Type: multipart/alternative;
	boundary="_90CD91DA-FECD-4D8F-94B5-8B22BBDEB3D6_"

--_90CD91DA-FECD-4D8F-94B5-8B22BBDEB3D6_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"


Can you answer on :
https://serverfault.com/questions/985885/qemu-and-spice-on-win-10-host



--_90CD91DA-FECD-4D8F-94B5-8B22BBDEB3D6_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta ht=
tp-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta name=
=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:2.0cm 42.5pt 2.0cm 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3Dru-UA link=3D"#0563C1" vlink=3D"#954F72" sty=
le=3D'word-wrap:break-word'><div class=3DWordSection1><p class=3DMsoNormal>=
<o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span lang=3DEN-US>Can you answer=
 on :<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><a href=
=3D"https://serverfault.com/questions/985885/qemu-and-spice-on-win-10-host?=
noredirect=3D1#comment1378702_985885">https://serverfault.com/questions/985=
885/qemu-and-spice-on-win-10-host</a><o:p></o:p></span></p><p class=3DMsoNo=
rmal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><o=
:p>&nbsp;</o:p></p></div></body></html>=

--_90CD91DA-FECD-4D8F-94B5-8B22BBDEB3D6_--


--===============1273408802==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1273408802==--

