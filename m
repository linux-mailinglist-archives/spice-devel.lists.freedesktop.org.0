Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB078B4B46
	for <lists+spice-devel@lfdr.de>; Sun, 28 Apr 2024 12:41:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3F8B10FB1C;
	Sun, 28 Apr 2024 10:41:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=att.net header.i=@att.net header.b="anxwLahZ";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from sonic305-23.consmr.mail.gq1.yahoo.com
 (sonic305-23.consmr.mail.gq1.yahoo.com [98.137.64.86])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BB8E10F177
 for <spice-devel@lists.freedesktop.org>; Sat, 27 Apr 2024 16:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=att.net; s=s1024;
 t=1714237075; bh=eNQES2wAhwwmw2BjMnoS03T6t786WgY/N1kWkzyh3vM=;
 h=From:Subject:Date:To:References:From:Subject:Reply-To;
 b=anxwLahZvYBYYJqR1J/kUoTbHy7F31/9oA+1FpW19Al9vwCWG5lwcBDAb0VoOOJ7Ytpb50EvO8YYNZU6OYGFdz7ErP8u6smMAsu1MP7pfSW7dkpc5g1jxxqhLV+EFYHm8fC6XAI/PW28sjOL9l8eiDaDbO8Dev6kEYPnEVwrcco=
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1714237075; bh=nH72GN7DTTVIV4ESiGabhrfk8gMh3h8Bwll/laAXVKc=;
 h=X-Sonic-MF:From:Subject:Date:To:From:Subject;
 b=pWF5L5Se99J479jaITnTYD+WVDdfUjw/54Qq/bRiLdl4UiD2pIJZpopCDoyFwq7oDwgklwY9bD90dcM1moC6NJFnwCPNo0MGuroLmU19INkyOu0iukrxgG3ZeUyiqiVXvGJX2moUjsmNJP89Nkh7qslw4ap0J9ZOIq5zCmStzRn3dPGX9KvNgTk39NwzHftlOY69ipIUBxI0k1SP2hUqz9G909OPTMgNQJwGssQWE1j4c47p77m1M432+THOkaDO2j1hanARQ2iK8D2vWhPXNCPyhOBHAfsfxUzn4URXFGdNjnj6C+Tajxxhz5aJTahtAQ/V/yepBKdgZonk5WXgIQ==
X-YMail-OSG: m1mpkj0VM1lhlVje9g3Or3amrRgOpmNlocV5KKhc6dcP6GA2SiEOU0frq7DToUT
 TTJ6vtaMxZLyQvsnqiLDbjRQ1fQXWYLdcHUBQXRCpi5SmhD1CLkmT_O0z4YMFPSdrPSRiTAb456f
 gAW9Ho_3SVn999LP2PbJatE2zV0OvNSrIEZzh2AQtU6yNHpw7kNSmbOU42068cNGh8mzWlwSIFVS
 VXXYbbwZ2hM0WpPjJ_yWJGyrp_PjXmEm6Z17eL3H_RYwg2m2r1.Up11QMaM5J_C.ZzFViTiyo5MP
 L90gQbgrVtUqQpglidLH38zdmlXTHb3m9kCK7HHdoRViBtTvRCjXnt4WDslXsKZTNE83g7hIWng_
 gtKFtK9LSTZhhkeBLdB7ATXwzdWmAgvk2h7kA_TELlmZj69bGtOHPhDQluj215JrvlaIE5Xh6iyW
 _Nom62O.K.X258fO7LUzuHvEUkmPL73gUigVtldR1GFawWRqagnABnC4g3dk.L6NRU61sCCO5dIN
 si.BE9NMzltMaG0kclo058UxE3M6Y04ub.r9P91Crvrl9JRTdq4E0AIML2ibktIAnRPkGybZS2i3
 0ndTsR3jsXTi0LCsg5_1V47UgJ3SWs81JrGYMftwr58fSR7u3KWanrYJcmJb_iwz2y05WWGN3ug3
 PeS7kR627Zkls1hiOatjm05kDpEO1MOApoZ05pLIymj.dofZ1UjATUdErFXa0EjKuDhwHzJgx29V
 d4t.T8UJ.LvF9ZIc5QUj_bKUboBergUG.q7eU2SyQTmv7xRAnEX7XyP1WuPVRCe22NM.3LGMkRuc
 dBtS_plxWPQog8XiC0ll_6_gnsJGQGmCoio6zLWPS5e7pisaT_sL62qN467vA078...BSS32WqCW
 M.uiiiVLtv.k0R7Az0Cg5Kf4ocfCaDSuGjsm1tEwzSFZlMuzJwsodGeIEAx9yvxuMC2Hct4rT6Gm
 11dQPEC_ktavE22KnWmwvAs2WZARzJZFenCfSpzYqngeGMyfyF4mdS18.UXKzdHyp.fzF_UvR6BQ
 os3nEmuUuU0fVGcNJfIIYWbLE6t5dLI.SIAFBTkVTUBt.ERgZLhFC1329mFLikJ_6EVHQ07WuAAB
 90V4X7RzHbAk2C4EQ7T4Odgb35.sYgO22OACVmE6EcoTHbz4kHiGuLiK8PMgJniddErro.ZeaGNx
 tDCh6h6tT9tKGZCl39tsVtOyBCDhO1zcWmmccoQA6mIvSg71ePogC.1LpmCLbukmkyn0doO5hAA9
 u6YKN6VOehMcIx9szlwZe6uTx2_Zid5Hs1ZjuK05IZ4bv3iPUPL.zvBzPhKbJxFHvfi5NRbg0mw4
 1_g7D9tmZ7VX3d9L_dUma4STHQXIW_9NP20Y2E9saTr0tg7eYsn.dStkqsPi94Y3HJDJpRfNSOn_
 u1EhGnjKPev4uiRG8SA6yfnMun3bwKNFqKRXl4lub4pu9UbOV7n8t_KrnC1Fj50OYgOeMnqBKW3m
 eER3YOXyhjr.X5WRCAFPPGcgnZdkB77Ruo16SFdy.FrOklV.Y1rTnXfIAcYF7PC0ppA10SdbVhmr
 VcBkHlwvHOjJebNgsHlWxAISBhJf99qPncxS_rU7NroEZNIQCBrSSxs3Q4MyBqiFSEpCo_IgKCjw
 YSlgdiNmuKPoI.vGhCz7G4VK.Lf3RQeGjuaKqJkecXWnaE2iZ0L9dItZrofA0R9.eCLc150sHdJt
 Eogl_2oCeWIic29.swncT3wP4mnRWnWoRc_uwqxFcbEza26pBvDcpLyCAkDf_fab6Yf5amBq..QQ
 lMDd45iayF90sMRoRTaTYL74hX4t0ppb8qEt2j2aLS1OuuTNS976bPkfcijnXJIdVSxzQGJnDTro
 TJ8.IO5ybCgPAsbsC9CL6Bupkw19T0dE1m7Drluvcwte0C0CEXpWv1LSewMKlO_Y82XAZB1qqnoL
 w8G2LMErwFYBbijB4q8417BS9tIV53BvuQ6FUvsIA9qpewXK94rvTYWTcbx1FJlmQEI_uFPGUKAP
 97j_RnHJmcXHnmlJVwE.aPQgikt0.dW6nQb5i9rmD0JMLZlLiRdIvrFIQ6yQ5598ch_Ht7S5OBa3
 0nDkASTR9rP6xPCAE_EJdAZZYRaoiDZqMIyN1LqJbrLys7wiGUINKMuoNuh2cnzohc2UTFUdY9cJ
 w9dn6Zf.015pgsPLx_p.Z46GsDev4OFtrRmwTfC9haAWbRmcOLbZJVnCLUrb3kCNur5_bL10Q80p
 SN2I4OwJ58GCQfDr3
X-Sonic-MF: <rdservants@att.net>
X-Sonic-ID: 89fab34d-f61a-40f5-bda0-4191ad8e4b1e
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic305.consmr.mail.gq1.yahoo.com with HTTP; Sat, 27 Apr 2024 16:57:55 +0000
Received: by hermes--production-ne1-6488576888-w7gv4 (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID 9caff56049cc8e462f5eaa3c6fbc03a0; 
 Sat, 27 Apr 2024 16:57:52 +0000 (UTC)
From: Dorothy Calhoon <rdservants@att.net>
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_FCF91F2D-4DD4-4ED7-943E-DC2BAE526567"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.21\))
Subject: Audio through spice
Message-Id: <6B9928C0-3CC8-4F38-8A5D-234142717682@att.net>
Date: Sat, 27 Apr 2024 12:57:49 -0400
To: spice-devel@lists.freedesktop.org
X-Mailer: Apple Mail (2.3445.104.21)
References: <6B9928C0-3CC8-4F38-8A5D-234142717682.ref@att.net>
X-Mailman-Approved-At: Sun, 28 Apr 2024 10:41:41 +0000
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


--Apple-Mail=_FCF91F2D-4DD4-4ED7-943E-DC2BAE526567
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi!

I use spice to redirect the usb ports from my POPos host to my Mac =
Catalina operating system in my QEMU virtual machine which was set up =
using quickemu and now is accessed via quickgui. Spice works fine for =
redirecting the keyboard, mouse, wifi and printer. Now I need it for =
audio.

I know that audio has been a problem in virtual machines with Mac =
operating systems later than Catalina, but it is supposed to work in =
Catalina.  I have a small speaker that plugs into the guest via a usb =
port but it is not recognized. I also tried headphones in the audio out =
ports and still Preferences show nothing for sound and there is none.

I understand that spice can allow the audio sound card from the host to =
pass through to the guest. How do I implement that feature? Somewhere I =
read that inputting the following into the host terminal would do it: =
QEMU_AUDIO_DRV=3Dspice. However, terminal did nothing and just wanted =
more instructions. The directions I had found said that after this =
command you could then use -soundhw hda options. However, terminal does =
not recognize soundhw and I wasn=E2=80=99t sure exactly what the =
=E2=80=9Coptions" were.

I also tried -audiodev spice,id=3Did[,prop[=3Dvalue][,=E2=80=A6.]] and =
the terminal said that the audiodev command was not found.

It appears that there are just a couple of commands that would allow the =
audio passthrough feature of spice to work, but I don=E2=80=99t know =
exactly what they are. I am new to using terminal so I need very precise =
instructions. I would appreciate your help in this.=20

Thanking you in advance.

Dorothy=

--Apple-Mail=_FCF91F2D-4DD4-4ED7-943E-DC2BAE526567
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><span=
 style=3D"font-size: 14px;" class=3D"">Hi!</span><div class=3D""><br =
class=3D""></div><div class=3D""><span style=3D"font-size: 14px;" =
class=3D"">I use spice to redirect the usb ports from my POPos host to =
my Mac Catalina operating system in my QEMU virtual machine which was =
set up using quickemu and now is accessed via quickgui. Spice works fine =
for redirecting the keyboard, mouse, wifi and printer. Now I need it for =
audio.</span></div><div class=3D""><span style=3D"font-size: 14px;" =
class=3D""><br class=3D""></span></div><div class=3D""><span =
style=3D"font-size: 14px;" class=3D"">I know that audio has been a =
problem in virtual machines with Mac operating systems later than =
Catalina, but it is supposed to work in Catalina. &nbsp;I have a small =
speaker that plugs into the guest via a usb port but it is not =
recognized. I also tried headphones in the audio out ports and still =
Preferences show nothing for sound and there is none.</span></div><div =
class=3D""><span style=3D"font-size: 14px;" class=3D""><br =
class=3D""></span></div><div class=3D""><span style=3D"font-size: 14px;" =
class=3D"">I understand that spice can allow the audio sound card from =
the host to pass through to the guest.&nbsp;How do I implement that =
feature? Somewhere I read that inputting the following into the host =
terminal would do it: QEMU_AUDIO_DRV=3Dspice. However, terminal did =
nothing and just wanted more instructions. The directions I had found =
said that after this command you could then use -soundhw&nbsp;hda =
options. However, terminal does not recognize soundhw and I wasn=E2=80=99t=
 sure exactly what the&nbsp;=E2=80=9Coptions" were.</span></div><div =
class=3D""><span style=3D"font-size: 14px;" class=3D""><br =
class=3D""></span></div><div class=3D""><span style=3D"font-size: 14px;" =
class=3D"">I also tried -audiodev spice,id=3Did[,prop[=3Dvalue][,=E2=80=A6=
.]] and the terminal said that the audiodev command was not =
found.</span></div><div class=3D""><span style=3D"font-size: 14px;" =
class=3D""><br class=3D""></span></div><div class=3D""><span =
style=3D"font-size: 14px;" class=3D"">It appears that there are just a =
couple of commands that would allow the audio passthrough feature of =
spice to work, but I don=E2=80=99t know exactly what they are. I am new =
to using terminal so I need very precise instructions. I would =
appreciate your help in this.&nbsp;</span></div><div class=3D""><span =
style=3D"font-size: 14px;" class=3D""><br class=3D""></span></div><div =
class=3D""><span style=3D"font-size: 14px;" class=3D"">Thanking you in =
advance.</span></div><div class=3D""><span style=3D"font-size: 14px;" =
class=3D""><br class=3D""></span></div><div class=3D""><span =
style=3D"font-size: 14px;" class=3D"">Dorothy</span></div></body></html>=

--Apple-Mail=_FCF91F2D-4DD4-4ED7-943E-DC2BAE526567--
