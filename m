Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF82C7852FA
	for <lists+spice-devel@lfdr.de>; Wed, 23 Aug 2023 10:47:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AE8B10E3F7;
	Wed, 23 Aug 2023 08:47:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from sonic322-28.consmr.mail.bf2.yahoo.com
 (sonic322-28.consmr.mail.bf2.yahoo.com [74.6.132.83])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B75C10E1AF
 for <spice-devel@lists.freedesktop.org>; Tue, 22 Aug 2023 08:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1692694083; bh=R4LsVFreqASJlpa3Fp6aS8oliHb8daimkRPdffwSCPg=;
 h=Date:From:To:Subject:References:From:Subject:Reply-To;
 b=aHQGy78PmBVnFcLQ7Nn4JtQsrY/Nx7hGeDhtax7KZTUo37nqBpSHbmLl2GfM/rcH95C58C97xxM0kpXD9r4PHewGOuLxv7pauuezOjJDUXdRo66O1fs6vPRenPBsDPGuuf4gHYqEi4x8whULGoVsxdvFurW4yCRuNhuO0gCOqEqSab7p0MwuPhXlKl6r9TwAmXUKM07hPPa1BVO3jaHFlEGmuWw+vgmKALYuOLZwJPzgrwYq35oWYIxSs2ihCcjTTZe6PLFgDuyJEJdAugvPpJJdxlOACDwTRWm+XytD8GCGkjfDDrAlTzedi6diI/4lTxgTiBQCAiEdJ2fpC0l3JQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1692694083; bh=7ho6v9qNXb2YOY5OCNOJbbhdyh2CgVCFatfvKqfxEzO=;
 h=X-Sonic-MF:Date:From:To:Subject:From:Subject;
 b=PgBWB451CItwrGWZ2W7cWlx4HIjofoXhKNR8K28P+Sk+o8SfYjL8+9rjIyK0iP3zlTMnWCA0pPcIlmbS8gmrTJKAFdIwR3fJhvME1SDj5ZLjEpF7bvLQ7l81+fOfQuGLfSiNn/7/0ILirlOGEEq+XPE+d5K54ROlMoIKvbjr3JoyZ7qYt3s/F9QL3CsgGcUrWDNBXwIJq6a/ljx0thg3Yvg3qE6Z1OMGM2tGOybZyWE8ML31kqdNZ/1OnExxpnEIoozUc4RZwEjpRnXsOP4lOi8aY1wvMpX3SUik6GUaP3W+U+MJbIfJenxjwnYcqynmQNbupfKqxmsItYYubzJoNQ==
X-YMail-OSG: zlNNKjcVM1nndCMJnNNiPyVDozOHfkk7wtkGJ7uojXQRmxIB7CRbNl5Lah1HUY8
 e_p8F7ccY35BS8g0Hg9Wbky7jDOsNwsRnEmhakhGCf5ZPiaglMc2FTx84ZmzxlYRKrsqW54ttoXV
 4U2j6HyHo7PXJcIWqDgCEGWA_9KOz18Th.c2g9m3F2teYa2UDuIIPSqSUQdOH080qjoHyiBGfvaT
 FNAvtednQon0DUBhwiggN6MmYSNMSlQV_S6hW3cFzGHWEbEukOl130GJSYPi8mFUqceQSfvhMhJ2
 0Yg8T5iHHDXq5BEXEvYkDCYhxqaGzTILwvxkiDXgpKYWgTUp7337R_Dyjz2ulfKPUQ.102hwFalM
 ka.2.CHp6jpdUYG6YcuYpjJbTWu6bqqSHqREwgH5OXUp50glI4oXKIicvLMCh78Mv.dmucwwHzuD
 W.NhjNHhY1iaXvJ7luGLJGcBGHvTQ.y07nuKObLmimQNoAKdABAnlWv7hpip6hSriCAWWcd23YIR
 vd5kufGRnR7pg9i1hoxrnyseR1wFjD.YOzsTB9Fx8YjtA8.RBrGhr5lr.i1tQF1zif42_Uflu9iF
 BHku4kM_Yupv_Pie0PBY6NwFuXy0c9DGdOWAjK26XlL_oGkkgiCHUs953uvgCPwEvc.1PgjTQMbP
 rwZ7xD80SEy_evTatIBKPrvejs6c2P5EJ7VLr13xELcu0rcMke4TfRA6eV2omSQo00v1A5pgKYKt
 Nwzuy854w9IowhSnSfWuWfPosRVXeJmZCUEnZSzFKdbu3QhewJilTdBoCKz0kZkQGzYGqsMPv5e7
 aG7_Tp1jiH_BUB0AkXK3ZgpvLVgV.IOVnKQyJZojqZCD2L99iBQ1E7iNTE4j1YApBcYLMkHCf9.H
 y27w9behTPJFWkaSGXKSl9_w9G.z5cqZmfni_MS1CGOFeb8.2Za.ahzDBg6g5_6p8rnVxN8XMCEO
 _bXSwy.bTRBXs5_cvRngMoOTFz0LciGO7vPvL.LEE4Mht9B3DDFqkI7qTn3E.lkKnj5Oh81kjK2A
 VK2DsoUyWfZBqGH8AmmpF6eNaYRqSUa6apCM5jfCFnoHH3OHX3DboYRY.BICU1zf3OhxUJw94QnZ
 Kj60QZLjwCupnpXToJelkDTWoJEBjeDFK6of8eA9PSu2l_dBMZ.tHfEoK3qhY.RgkDYikht34hyi
 mnncwlZCKB.rbZsDuEKa2k54HBA0QlvLGCkwsncXfsYdECSvsh0rqVJ1rJmFs6extCfw_P0SHCGb
 pik._53J6ioeopUnMUJItrBJ.2wu6aO.vvINGmCelfpOQQODLd4ewSmgP0kQ_WqsqL0RbMyYY.xX
 w072mVvrxctlvJu57gJ5my4ZujG8KG5xb2gmS3OpdYd8LQc8LXQ9HRjol1ipH.49_QLFPdIfwq8h
 irspSehoubWUAla9nQlb1.11druY21vfOtAtuEqv1nuc7hX1loDkOsINNpZ6T_9hBGSRQyrI6RHQ
 qzuyeOKnH1BlODFvhnwrcj3HdltuqH.Y5VEiE93m7WM_nCo32sy_JIran5O8ZU617CIHZlVqKQtv
 Y3MrFueb0EZE3iRMbqXk45ZZe4O_H6NdhECKaDGo3W4wIeeloz33Nk4.Ii8OacwUG4istRJ3IZsc
 eO485hLSXxOdSBsECPNHswJTacNahcRtsrIdkZqIoEBGuHXu6cIjvl_ZKclCdRE3kOyN6YIxlSqO
 HgHuVu6O4kpmci9dVLj73iC3rVU8O1murEgMb_FXgAGXkGH2ecnoRkPuyg1uAs_cRid_ydF8fusf
 FaiaGXz3T__svknF00MwM1q9on1bAeWL5DAcqO37iy5m.FuV4xO8Zrnuv3Xb6hY4p2FPNX.7OqYH
 0OM2MKm_gQYE20o8rWHNf7I05eTg_2mIYYuavtFsodvJrH5iSya9CQcs46E2bRIj5agqKlectnSS
 fPdMA26QvJrDEYTzB1sSCNjCjsYWqfmhcT8CHYwn5Tirw59leRtPi_AGN0CBfXPIq1haQ8QKIOG2
 MgDdJukWxZIm6KFQo_lvhd6VxGweNySXDUQ76K_P8fXOxBV7PPz7PcS8EXyH1i.UYyPNUYr040SE
 JMaTQWqHEiXTUazJI_uf0tXGNAtIqZ0GK_Uvhw3h1cigJrmyIcHx33QGv49e7VCqxd5HXtFPOUF1
 IIO6K8OQ9VURPLvdnnozCS0f7hRa3Dglg
X-Sonic-MF: <iacob_m@yahoo.com>
X-Sonic-ID: 36ac8bfc-06c2-43a8-a4c5-6b4029526779
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic322.consmr.mail.bf2.yahoo.com with HTTP; Tue, 22 Aug 2023 08:48:03 +0000
Date: Tue, 22 Aug 2023 08:47:58 +0000 (UTC)
From: Maxim Iacob <iacob_m@yahoo.com>
To: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Message-ID: <520800894.1623120.1692694078214@mail.yahoo.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
 boundary="----=_Part_1623119_958554253.1692694078212"
References: <520800894.1623120.1692694078214.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.21732 YMailNorrin
X-Mailman-Approved-At: Wed, 23 Aug 2023 08:47:03 +0000
Subject: [Spice-devel] Oracle Linux 9 support
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

------=_Part_1623119_958554253.1692694078212
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

SGVsbG8sCkknbSBsb29raW5nIHRvIGluc3RhbGwgc3BpY2UtZ3RrIHRvIE9yYWNsZSBMaW51eCA5
LjIgZGlzdHJpYnV0aW9uLCBiYXNlZCBvbiBSZWQgSGF0IEVudGVycHJpc2UgTGludXggcmVsZWFz
ZSA5LjIgKFBsb3cpLiAKClNvbWVob3cgdGhpcyBpcyBub3QgcG9zc2libGUgZHVlIHRvIGVycm9y
Ogo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0KJHN1ZG8gZG5mIGJ1aWxkZGVwIHNwaWNlLWd0awplbmFibGluZyBwcm94eXQt
c291cmNlIHJlcG9zaXRvcnkKZW5hYmxpbmcgc2xhY2t0ZWNobm9sb2dpZXNfc2xhY2stc291cmNl
IHJlcG9zaXRvcnkKcHJveHl0IHNvdXJjZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA4MTfCoCBCL3MgfCAxLjYga0LCoMKgwqDCoCAwMDowMsKg
wqAgwqAKc2xhY2t0ZWNobm9sb2dpZXNfc2xhY2vCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDgwM8KgIEIvcyB8IDEuOCBrQsKgwqDCoMKgIDAwOjAywqDCoCDCoApzbGFja3RlY2hu
b2xvZ2llc19zbGFjay1zb3VyY2XCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA0MTTCoCBCL3MgfCA5NTHC
oCBCwqDCoMKgwqAgMDA6MDLCoMKgIMKgCm5vIHBhY2thZ2UgbWF0Y2hlZDogc3BpY2UtZ3RrCkVy
cm9yOiBTb21lIHBhY2thZ2VzIGNvdWxkIG5vdCBiZSBmb3VuZC4KPT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CktpbmRseSBs
ZXQgbWUga25vdyBpZiB0aGVyZSBpcyBhbnkgcG9zc2libGUgd29ya2Fyb3VuZCB0byBpbnN0YWxs
IGl0IG9uIE9yYWNsZSBMaW51eCA5LiBJJ20gbG9va2luZyB0byBhY2Nlc3MgQSBQcm94bW94IHZp
cnR1YWwgbWFjaGluZSB2aWEgVmlydC12aWV3ZXIgYW5kIGl0IGxvb2tzIHNwaWNlLWd0ayBpcyBu
ZWVkZWQsIG90aGVyd2lzZSBJIGdldCAiVW5zdXBwb3J0ZWQgZ3JhcGhpYyB0eXBlICdzcGljZSci
IGVycm9yLgoKQXBwcmVjaWF0ZSBhbnkgZGlyZWN0aW9uIHRvIG1ha2UgdGhpcyB3b3JrLiA6KQoK
QWxsIHRoZSBiZXN0LGlhY29iCg==
------=_Part_1623119_958554253.1692694078212
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpc4bb19byahoo-style-wrap" style=3D=
"font-family:courier new, courier, monaco, monospace, sans-serif;font-size:=
13px;"><div dir=3D"ltr" data-setdir=3D"false">Hello,</div><div dir=3D"ltr" =
data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">I'm =
looking to install <span>spice-gtk to Oracle Linux 9.2 distribution, based =
on </span><span>Red Hat Enterprise Linux release 9.2 (Plow). <br></span></d=
iv><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-s=
etdir=3D"false">Somehow this is not possible due to error:</div><div dir=3D=
"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false=
"><span>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></span></div><=
div dir=3D"ltr" data-setdir=3D"false"><div dir=3D"ltr" data-setdir=3D"false=
"><div>$sudo dnf builddep spice-gtk</div><div><br></div><div dir=3D"ltr" da=
ta-setdir=3D"false"><span><div>enabling proxyt-source repository<br>enablin=
g slacktechnologies_slack-source repository<br>proxyt source&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 817&nbsp; B/s | 1.6 kB&nbs=
p;&nbsp;&nbsp;&nbsp; 00:02&nbsp;&nbsp; &nbsp;<br>slacktechnologies_slack&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 803&nbsp; B/s | 1.8 kB&nbsp;&nbsp;&nbsp;&nbsp; 00:02&nbsp;&nbsp; &nbsp;<br=
>slacktechnologies_slack-source&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 414&nbs=
p; B/s | 951&nbsp; B&nbsp;&nbsp;&nbsp;&nbsp; 00:02&nbsp;&nbsp; &nbsp;<br><b=
>no package matched: spice-gtk</b><br>Error: Some packages could not be fou=
nd.</div></span><span></span><div><br></div></div><div dir=3D"ltr" data-set=
dir=3D"false"><span><span>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
</span></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><span><br>=
</span></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><span>Kind=
ly let me know if there is any possible workaround to install it on Oracle =
Linux 9. I'm looking to access A Proxmox virtual machine via Virt-viewer an=
d it looks spice-gtk is needed, otherwise I get "Unsupported graphic type '=
spice'" error.</span></span></div><div dir=3D"ltr" data-setdir=3D"false"><s=
pan><span><br></span></span></div><div dir=3D"ltr" data-setdir=3D"false"><s=
pan><span><br></span></span></div><div dir=3D"ltr" data-setdir=3D"false"><s=
pan><span>Appreciate any direction to make this work. :)</span></span></div=
><div dir=3D"ltr" data-setdir=3D"false"><span><span><br></span></span></div=
><div dir=3D"ltr" data-setdir=3D"false"><span><span><br></span></span></div=
><div dir=3D"ltr" data-setdir=3D"false"><span><span>All the best,</span></s=
pan></div><div dir=3D"ltr" data-setdir=3D"false"><span><span>iacob<br></spa=
n></span></div></div></div></div></body></html>
------=_Part_1623119_958554253.1692694078212--
