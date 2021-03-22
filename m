Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 146D8345892
	for <lists+spice-devel@lfdr.de>; Tue, 23 Mar 2021 08:24:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5933A89B9F;
	Tue, 23 Mar 2021 07:24:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from sonic304-24.consmr.mail.gq1.yahoo.com
 (sonic304-24.consmr.mail.gq1.yahoo.com [98.137.68.205])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC77E6E151
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Mar 2021 17:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1616435404; bh=m+oYcOsdWAZ+OswEZsF2WpRNOuPTcYylJhv0PzbwrZ8=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To;
 b=jKOmsnqpqzILsJ2qEUJe3zXxHjbke0H/UBXmtWNa9WiqK+fpRkjGohWa5idv3eEdJoz+09A+m7OONX0o5RADJ2qpSxh0gSI1wWAsKRP1sMFlVS5/hdLjsG8YiCsNF1V473nboKBpuC9KJ1IR0Xzg8nVoBfZV+c6LXM2eok3a1fJ07eomI6QoALppJT/ZFKor9OaMF0kFZqVld+d1xeY2L1dSjArbJ+p/jpdi7gk+61dcvpL3JbN5Df9jXK0IkJv0zpagPgyxYkAB89peYMQInlyO3dm7IO5cY6pk9ZcdyUkSJPCSSUUXpGmC5tgha1/ogcvOcAmdVSaiItrAeG/flw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1616435404; bh=U34DXgJNUZ6SP/6teMZj89a2xXrtRXXjVKcqTNtpCNb=;
 h=X-Sonic-MF:Date:From:To:Subject:From:Subject;
 b=jH9oDD7YXE0Uf/q8ojs6E1XdnVemnGESZx8Nfykk8bH2WUrcLkgYbQawUUA5VzfyGS/xWzhdnPnH7oIjrMRKmVJPl9/Nfj3pApj6JmiYz+VLjr0DMKOv9Q3hi2gPo7WAsznMOXGI5Uo1AyStcZdSths2KLavKazn2kWahjL56K8pfYiY6LQrvENiqSPy+Iy5tDYLeFyRLpczGB8R0jBQv0HVVS+xPFBOg9ohM8hO1D37f+6dhR7Lo9mm3YO830foN+lO1TofhIlYwOCCJiaBZ9Tp80h9aR2EieXuFJeOZyvPF3hgGji4aa8tNnv3gNaqqtdiEbvoORZQ1rTSkttWqA==
X-YMail-OSG: ZgycTCkVM1nrvxUdYmEOL7ojYVGr_6wzJWLcDEsmTN5oDqR20Qr9r.k5q7AQCme
 9ndHFBzjVIPvYpZe8zOkC4UJjtf2534G6PCjh5j4_Ijw22JGhIw9V.yDDwUPixQkSfqXymYfPIfB
 xS8XdiRzUmmquxwCE4Oz_oo_vSPhGZjoCEcwquT6Ok3dqw4PiefTzb8or1d1KPB2Uhnq98u3wyJV
 1uNWrBDE.B8C_J.G9lhhALx2JKhMBKVCuxb5jKVVvHmwWJcblJ3bC8XH.8wOJCq0ecEjAntDnd5h
 5tnXp4ClNgsAV_ABirqebt7v0bdTk4MUm85aLPmvtxdtiWy7pbadyYxQhFrqO0j2dzrfrusw5QRz
 ZDSdrGkQfDhP1C4Zhm07KzABYgIEQyZlD5W9CUxe9ZdkkSKdPxnI4Z97SgLG8o2rlDa.jBDAm.Eh
 ozB5di0u.g10MElPNiUMhxlVK2KWWtUJvezmQ1yiAS4xRVhDsmC2jW79RnjtOLDk46SSBGFQLEvZ
 w9D2tKAmJz9l3g57dtXlpYkpbVsKtxIbZTUCcbDLV1JoSVdYNYeOrC7oNo_fzDN4z5l6vVklXYUd
 6mPlQB2gX_pM2RxXEgvT2X.Zi20Etw9a.CO0AdjeCrxUvacJDiexZJ.EBsjzuk1RU21UCNWtGGqe
 oUrHjLhUmN8SRFWhROCEur6D0.QWMX4btiX9Fgu6vpmVn2sNZCpQzfOQCDfM.PZu1PFZ9fCyCi6N
 FPFQuaaqnp8Bu5x80OXi4gLtfUSXEBFAUEo_8Htox0ydOgT30octT1tn3NAmhzos6HMPNbEptK3i
 ZV80Tgk_frmE5tFyA_6X16hhIFxQ2tijbBdyxGGYdmVwB4y7lAmcd7Z3EQxs9yW3QeN0oDpGuurM
 z0LZIl4qehbpi25g0RUMzzjpxVKj9gErWNUn8gw7p_WYXYqb2lrKUuuzYtk41X5W6cRh3yoOrOPU
 gU3DdI7wq6rbAhwVpCOdIDfjOzNPi8cdQxm9MsDsNdUB8xcdupk5Pgw.cav6h0tbXxtxASLyTrvy
 5q2EISD_u3rjm2DM7MORje0F1g7TyNy7thauTE7DZOXHuh_0zCsnxlwc.qjMNd3W5pTi85rwww4Y
 3StczHSNlfhDEW3YzArgIpx4oAyYbgCeF_F1gE.PDTiZVNBpzTv4eBsJQ7Ug3cF4mizsh8OD.pN5
 kT5JgyZgFbZ54pQjorTBNLU0UaXZCwnKzxz58UEkh1nQq6CVAwiLDJ_SIvvqZXdIaF5h7kCjQ2ho
 pHXF3wtB.cES3djNkyJJjJOq.yn2WqxUgPX76dICYmNUMPatFCgNbaUOrDNnKIOmz59t83fjcO.F
 Pf5U0mcFDBCnyfdCyg5xY1ILXnnu7MlGZsv15Iag_hURI1oxozQ3Nyx8gOWPEp7M8uUOInmyqSc.
 sNp1CT1mzdEM3BJBRwt1AOHeGVe83beTA6tzw5VAs7o0FnaljkuqeQJSQpmgybTXxb3lWVvzhr1T
 hlCxEc7Pp3stEi64PHFJkiZw5EePuboiNrtIhBWeSoGDwsJN9ijeUtmViDKe2uqmdXfwFQOlMalL
 Rr2Sd1S7cVsw3ZDTuKZiqNOGxVzhBvKo2SJFtYtMshRCDafMOlfDT4cLhSIxgzFulo9CNhBHFFqc
 oK9km34sp_sQZ_MnL_RWObrs4NDigJm0._H.9d02gYc8Vz51tVnl01Ycmt4qbjFwhqi0SfNL2686
 SGs9Vwp2RNkYaw1hpJcgeXrZX0auMqkKoCkkwAs_663SxqW9P3h1v73XbYeq7gvx2gDSf_ND2kq9
 yY04Fl4BZL47TPVaUZPn8a9sL7UOtNDhO8vMdis2DlzXHkTPDdXJ9GlHiX76aKp_rmTfLaE82zUx
 7P0Ga7ZSZ1HIqKT6FGLErCM79GJkiT5JttFR7akHSNp4lRW71M4dHcmEvHlZXFa5cbUt.cg1mfWg
 0movJ4vV7XtZKOCnjq1DqOBw0cXG8Tqsm54bsrD29WH_8tBgyw4Kf9B1qW5gbpFb8V1ThjXq6R.F
 rh5LMcT0nEnFTmJ0cB8QBDAtEBES.TKjLMrpPgTbvL_WgEsTWeP7lN1i6HWpIgsfhaIOXcdi8hoq
 hq7M5mtXrQBUXECTuGv0r0qalFADxDSjU4FUt9cqNdFpqrl.e3kQZ5qm3k9dXblDUhm.imp5p4SA
 hEL_rylr7JLk5XEFTxNCSIeUNqr63rKbsf.4Ir9dAL1NBjjHh2nFGpsru94to1Fb7u81Ex.wObf4
 iqqhiAoqq4ObLqy1pWX_upXmu1NdwzFOIPruAqpY6emNwjL8hzJhw76ZudFCuTJIbIqif.hAEsza
 rBY2r0yeSkELEAKwOcRvkgwSQoAH52eEaPL3cDfmN_WL.C95u702vHG40JL0d9wVrReNDYAw74J4
 hvmZLDroRoe4Uc275SK8zHURCNn5ysj_RM0i2di3KohXetEUqcqi85kvxOLwdwekbs9xUDbFmsLS
 _hqbR0NIgsHxydyZu9M8oIbb46Ivp5.pcgOlP6Egd4c0EvhZCZz0kiI2JVkHc.IoAvHlef7HHcaK
 WbOxtXh5hRPDd2koFhsULcxER_qh5RoX.QdBhxNY7KxhlFp0wlXKK7du.2KNc2Xsu4H3.NjRGEIy
 lqjGu7frWF_0jsYtJEIPKCO8.Q5Y7KwWMNw--
X-Sonic-MF: <bg271828@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.gq1.yahoo.com with HTTP; Mon, 22 Mar 2021 17:50:04 +0000
Date: Mon, 22 Mar 2021 17:50:03 +0000 (UTC)
From: "Dr. Jennifer Nussbaum" <bg271828@yahoo.com>
To: Victor Toso <victortoso@redhat.com>, Uri Lublin <uril@redhat.com>
Message-ID: <749011737.954954.1616435403564@mail.yahoo.com>
In-Reply-To: <b734810e-8bba-7afd-b104-5b48a06659f7@redhat.com>
References: <1460907569.2869086.1616420768731.ref@mail.yahoo.com>
 <1460907569.2869086.1616420768731@mail.yahoo.com>
 <20210322145139.kuigwqkyjdkby35r@wingsuit>
 <2044021456.514716.1616426838206@mail.yahoo.com>
 <b734810e-8bba-7afd-b104-5b48a06659f7@redhat.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.17936 YMailNorrin Mozilla/5.0 (X11;
 Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko)
 Chrome/88.0.4324.192 Safari/537.36
X-Mailman-Approved-At: Tue, 23 Mar 2021 07:24:26 +0000
Subject: Re: [Spice-devel] Multiple monitors at 4K, in virt-manager?
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0462653773=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0462653773==
Content-Type: multipart/alternative; 
	boundary="----=_Part_954953_415116955.1616435403563"

------=_Part_954953_415116955.1616435403563
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 On Monday, March 22, 2021, 01:35:46 PM EDT, Uri Lublin <uril@redhat.com> w=
rote:
=20
>=C2=A0=C2=A0Hi,
>=C2=A0=C2=A0
>=C2=A0=C2=A0It seems 64MB is not enough.
>=C2=A0=C2=A0
>=C2=A0=C2=A04096 * 2160 * 4 * 2 > 64MB
>=C2=A0=C2=A0
>=C2=A0=C2=A0Can you try replacing all those 64MB below with 128MB ?
>=C2=A0=C2=A0Please try with 1 head first. Possibly 2 heads need
>=C2=A0=C2=A0more (but not for all params).
I'm afraid there's no change.
With the settings=C2=A0
<video>=C2=A0 =C2=A0 =C2=A0 <model type=3D"qxl" ram=3D"131072" vram=3D"1310=
72" vgamem=3D"131072" heads=3D"1" primary=3D"yes"/>=C2=A0 =C2=A0 =C2=A0 <ad=
dress type=3D"pci" domain=3D"0x0000" bus=3D"0x00" slot=3D"0x09" function=3D=
"0x0"/>=C2=A0</video>
I still am offered only 2952 x 1781 in the guest. With those settings excep=
t 'heads=3D"2"', it is exactlythe same--that resolution, and only one displ=
ay, "Virtual-0".
As mentioned in my original message, when I use the Virtio instead of the Q=
XL device, I do get 4K,though again choosing 'heads=3D"2"' doesn't give me =
an additional display in the guest. (Curiouslythe one display I get is "Vir=
tual-1" rather than "Virtual-0".) With this device there's no option forcha=
nging the video memory in the XML.
Thank you for sticking with this.
Jen =20
------=_Part_954953_415116955.1616435403563
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp4778c9dcyahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div></div>
        <div><span style=3D"color: rgb(38, 40, 42);">On Monday, March 22, 2=
021, 01:35:46 PM EDT, Uri Lublin &lt;uril@redhat.com&gt; wrote:</span><br><=
/div></div><div id=3D"ydp8b18c8c9yahoo_quoted_7094190875" class=3D"ydp8b18c=
8c9yahoo_quoted"><div style=3D"font-family:'Helvetica Neue', Helvetica, Ari=
al, sans-serif;font-size:13px;color:#26282a;">
                <div><br></div><div><div dir=3D"ltr" data-setdir=3D"false">=
<span>&gt;&nbsp;&nbsp;</span>Hi,<br clear=3D"none"><span>&gt;&nbsp;&nbsp;</=
span><br clear=3D"none"><span>&gt;&nbsp;&nbsp;</span>It seems 64MB is not e=
nough.<br clear=3D"none"><span>&gt;&nbsp;&nbsp;</span><br clear=3D"none"><s=
pan>&gt;&nbsp;&nbsp;</span>4096 * 2160 * 4 * 2 &gt; 64MB<br clear=3D"none">=
<span>&gt;&nbsp;&nbsp;</span><br clear=3D"none"><span>&gt;&nbsp;&nbsp;</spa=
n>Can you try replacing all those 64MB below with 128MB ?<br clear=3D"none"=
><span>&gt;&nbsp;&nbsp;</span>Please try with 1 head first. Possibly 2 head=
s need<br clear=3D"none"><span>&gt;&nbsp;&nbsp;</span>more (but not for all=
 params).</div><div dir=3D"ltr"><br></div><div dir=3D"ltr" data-setdir=3D"f=
alse">I'm afraid there's no change.</div><div dir=3D"ltr" data-setdir=3D"fa=
lse"><br></div><div dir=3D"ltr" data-setdir=3D"false">With the settings&nbs=
p;</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" d=
ata-setdir=3D"false"><div><div>&lt;video&gt;</div><div>&nbsp; &nbsp; &nbsp;=
 &lt;model type=3D"qxl" ram=3D"131072" vram=3D"131072" vgamem=3D"131072" he=
ads=3D"1" primary=3D"yes"/&gt;</div><div>&nbsp; &nbsp; &nbsp; &lt;address t=
ype=3D"pci" domain=3D"0x0000" bus=3D"0x00" slot=3D"0x09" function=3D"0x0"/&=
gt;</div><div>&nbsp;&lt;/video&gt;</div></div><div><br></div><div dir=3D"lt=
r" data-setdir=3D"false">I still am offered only 2952 x 1781 in the guest. =
With those settings except 'heads=3D"2"', it is exactly</div><div dir=3D"lt=
r" data-setdir=3D"false">the same--that resolution, and only one display, "=
Virtual-0".</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false">As mentioned in my original message, when I =
use the Virtio instead of the QXL device, I do get 4K,</div><div dir=3D"ltr=
" data-setdir=3D"false">though again choosing 'heads=3D"2"' doesn't give me=
 an additional display in the guest. (Curiously</div><div dir=3D"ltr" data-=
setdir=3D"false">the one display I get is "Virtual-1" rather than "Virtual-=
0".) With this device there's no option for</div><div dir=3D"ltr" data-setd=
ir=3D"false">changing the video memory in the XML.</div><div dir=3D"ltr" da=
ta-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Thank =
you for sticking with this.</div><div dir=3D"ltr" data-setdir=3D"false"><br=
></div><div dir=3D"ltr" data-setdir=3D"false">Jen</div></div></div>
            </div>
        </div></body></html>
------=_Part_954953_415116955.1616435403563--

--===============0462653773==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0462653773==--
