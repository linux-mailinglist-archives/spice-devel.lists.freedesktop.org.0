Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFABA78577A
	for <lists+spice-devel@lfdr.de>; Wed, 23 Aug 2023 14:05:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DCBA10E412;
	Wed, 23 Aug 2023 12:05:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from sonic318-28.consmr.mail.bf2.yahoo.com
 (sonic318-28.consmr.mail.bf2.yahoo.com [74.6.135.83])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 767BF10E075
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Aug 2023 10:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1692787291; bh=MJdMsHij/SVsQ44iw1YvEDxyjNkFR6DubmioNSBLjOo=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To;
 b=g0QcRjvrYXrZdk8pMd8TV2w78JJYPR0ZgxbPbztVOhH4yBoLj1xN+pAtaX8fmA4WaviHF7+3TPzdwyvCTnXAI0CQTz0pqlAKUgjTPiiHRvOJnR2XSesPLsHauFWGhqs6HtZAHdzQjMOTmQgIEvH9yJ3sCjXTvMF2i5CtZ+cGB8vX2abiPXQ5x0YiahuPt64xhOpqGopsY4QwbSgtyFUGkYF+TlJ869//otmKP78DugFYyW4qdk9IhXLB7uSiT9vjEGD5OQhu6SiKcD7z6+eKCVS9C6d3TIhd2oVbwWnG/PTge0D8eSGrimjBpQ36Cds79aCl+MPeuXCvh3SQWfehlw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1692787291; bh=+jVmnhK4x+fPY8gjQ1vfgQPnujUzZtfIkhfoJ8wE0yM=;
 h=X-Sonic-MF:Date:From:To:Subject:From:Subject;
 b=ZUTEbVb8Rm75/Q2Yq0r+rj9MzUSH14htRhE//VguoSX4P9D7ONdsY4zhZGWWr4zp4mmx2dUMGKdOcvfmvDHRCdwcPQwQGEDnNcF111ojVWT4f+84+nQhpSccNOqszfRT5HWneaZiPmLWgPwyf8r15VVACdiGKVixJOGPrz729JE2cIJExMtc4AQAaY2LOsuQRZDDV3p87FM5sEWFvGKeSV3vMoSBTFtB1rlATxJ2tBO4P0Vu0jr+BNWP8TPuGJGRqGfcMs/NM88PmYHuTbLif4CDpFiPxXUV4zRcKC9HP61KHSq2Xc+9TyfLu/L2gi4spjhT6iLF+HMfuDLCj9m6oA==
X-YMail-OSG: 5fkL5UwVM1nl7hMocBWzcVSu.SuyhuBbo9BXha90A_s6139XaMVdahfdQH.XQ7A
 quM3HdYTvSTXd0uAeBub3eml3rVZ3sGxAdVJjwfzCi_xbJSTxQqNhViRtBfbzhT7leAbWDy17akC
 MikKlPlMZPI2hEzqTfVsS95rbZcHyJxeRZkb38e9.hp0__Dcedbq.zbuahT8b8CGydiclxhFjFfS
 1UVmxjvTBnACSoi5S7WibOtBK1JYtGSLY.bWpRwnEYIZOUKKxSTvXjyvedxihaxGGz3Fm0lpUoVq
 e.occ1jVjH1PfT_CKSIkD30BdIxAF3unFifwCZiR3qELMsQrMZbZwD.qbwL8hgoX.7uarHUIkgrl
 qXpcMm.D2Xt.PcT63V9NtQNEnsnejgM6wG7dl7xDGfCepp.ccVCWj8RT1kGBCMfDhWhys2Kr9PbF
 j.qakYQYUOwOom0j3CWfb6PtnawghVy5EH3RJ7YcsNqKeKRYEtQK.UrT.CWn2tN61ncgmOhcZq8s
 r1ItYS1FqmuC66HjooAphWFLmKSYdsbqK6oH_GrcmKKubunkYYs8t0pW0y3HPB9ivghC7q8.g87j
 oYE8_KGFlqd3.KDYHz0P4HDi9rqEQ7NYv2e4eyFRZE5qN0Te1NG0Q_Go4iNRQT7lGNQHXr0myyKJ
 Mv9lBRwhM6l9NDqc0nWpmHBwPr.I2oMEP8x6x8TGsHMwaS8XN077VHaWoO6d_UyLFHOeauzXj12A
 jvnWCXBrUOiNHiHkpH1HqXlAM1M_Ud2QEKZE20kl20pIQB1tWcX6zAmR201T89KC8ZHUSV9jkq6M
 FfKSL0rFv2RY9PhrPHRjjbAk0hya6UK5rtBcevb_FgDkrLwMwXGfEcdznjcf6kgASzcxJxYE5ha6
 ZhL1viUVzzotecIh4.TrLw7ah47Yj6GOAchT5a0clND.ouDyBPXl.HH7MkSxYfwPOuj5gmlodzlN
 lK2cMAf1TbFIgXAgUNH8XsfX7N8mSy4aaHLkDgqKNIvAk9OxGyDYPgt2gT_tyz112tkHLnjCkNd4
 4M6DqbLgUGnLQ6hwsMJNY5pLBCT7l99BlrWbeAoLgBC6SL2WkUyeNjET9dXpN0oyw6VkUJxVTdrw
 KYyi5re4u2V4bDWJnKWqzeuYzoX9zQgsGLQksAUHMkxjbtCyHoPZFMfGtyaapYr_0zbKetmqS51X
 bAL29mIjOyqWtJb.GloFrJ5VcaEsySLFHBL4JEOLNqjY1OFc6iigU_Z91ZO0tqnW5BOVzICFZW3H
 QWgvMf_an.63qKquFll.xLEboNmLm.TDKISkyKRyzVmDIxUtaQcrm5ADEQK_fyp2.vC16z3OivxP
 KdutPpzygQV19I7XNymXX_NdFEsqFJSYDXvXgeJh5iZg1B0G1KRaf5hnTmGHij5CZihmJe9y9YVW
 LqkAMFp3BwuM.9bQHaCpf.ZN_ypbZf2hC9lDUls6wR4ybL.e2yzx1TwwReY..6dpIWsumtrV0bJQ
 3kiTBDkRtd_Ajv0Ik7UYXLC_VUbSI5BGtIXIWcQuffyXr2KlFPsHQuZdBZMsOQ8HNIibZlvvnwLD
 E7m7XgkPE.l8P8Hz3gbvFgoKgQQy8_kO0jSGI7kEDJaK.axrnlD3s446VDdSMn_NbBMHpvTKHJdR
 9tdF1iM00W2H5WUuN26ODs4vkrJiX4Pr4hN7HA_ydPU_KEB8WFWtb0KqoyRbttI426_F1jFS.BX9
 SY51X6jV9Zv8_1XrlI.qBNpEGIBm1aKycT8TBR42XMW8j5UBW9i_HjmCFeEeZYjEZPd1GHqKPE.J
 juBpX5bdNPV0QZA_97kaSj7bjsenvcED.LegBUe9khCec9LgfZjK2mB_COzMFQdS5fRVwhbOPG7L
 ax1Vx.s6ti_tXRwAUxIxLK2BcjgccXV5Bb6jAQiyqv35zb9utVuJnelr4KwURmxEPWg7GcxXrGe8
 KXWqZXE09Ze.Ikuw4IPxvRDE8CMcbjV5zmb5hb1YPAHap34vgLShUJSycbDpVbutMm1rAeDfqn9L
 ed6EcpLWGxLGCtWKMW3qI3w1gBzXpTr1d4MTbA7fNJFNRGSvIro1z.VktaQkeJUJmP.qhNqK6Kji
 wAVMyypqdHgQAAqrLTjCxISzDZDF30d1ikE2OHcZASa8UWLY5KWcogsH2jFcGgbDrlr_uL0ewd.x
 JJ01o9LUHc_CiWk.jiUfAC97Vfo51uiPNPHomku.yvlwiLLHch1H99ZJP4OJv8G4hOmvLUxqT0Z6
 1Kp5L
X-Sonic-MF: <iacob_m@yahoo.com>
X-Sonic-ID: 1da9e72b-861d-46d7-99a0-79331a27d70c
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic318.consmr.mail.bf2.yahoo.com with HTTP; Wed, 23 Aug 2023 10:41:31 +0000
Date: Wed, 23 Aug 2023 10:41:28 +0000 (UTC)
From: Maxim Iacob <iacob_m@yahoo.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <587650834.1943367.1692787288067@mail.yahoo.com>
In-Reply-To: <hthmylaxtdos5yl3ihrr3qg7ecrwvsnaiqex4ar3ovnyw5qv7v@ynsj3i6d346j>
References: <520800894.1623120.1692694078214.ref@mail.yahoo.com>
 <520800894.1623120.1692694078214@mail.yahoo.com>
 <hthmylaxtdos5yl3ihrr3qg7ecrwvsnaiqex4ar3ovnyw5qv7v@ynsj3i6d346j>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
 boundary="----=_Part_1943366_1263797824.1692787288065"
X-Mailer: WebService/1.1.21732 YMailNorrin
X-Mailman-Approved-At: Wed, 23 Aug 2023 12:05:22 +0000
Subject: Re: [Spice-devel] Oracle Linux 9 support
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

------=_Part_1943366_1263797824.1692787288065
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hello Victor,
Appreciate very much your feedback!
Indeed a bit sad with this de-support of spice-gtk, came also across https:=
//bugzilla.redhat.com/show_bug.cgi?id=3D2030592 which talk about this and s=
ome workarounds.Used hints from Jean-Marc Liger and Aram Minasyan from that=
 bug thread and solved the problem in my side.

Thanks for the hints and your replay in general :)

All the best,Iacob



    On Wednesday, August 23, 2023 at 12:29:47 PM GMT+3, Victor Toso <victor=
toso@redhat.com> wrote: =20
=20
 Hi,

On Tue, Aug 22, 2023 at 08:47:58AM +0000, Maxim Iacob wrote:
> Hello,
>=20
> I'm looking to install spice-gtk to Oracle Linux 9.2 distribution, based =
on Red
> Hat Enterprise Linux release 9.2 (Plow).
>=20
> Somehow this is not possible due to error:
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> $sudo dnf builddep spice-gtk
>=20
> enabling proxyt-source repository
> enabling slacktechnologies_slack-source repository
> proxyt
> source=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=20
> 817=C2=A0 B/s | 1.6 kB=C2=A0 =C2=A0 00:02=C2=A0 =C2=A0=20
> slacktechnologies_slack=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=20
> 803=C2=A0 B/s | 1.8 kB=C2=A0 =C2=A0 00:02=C2=A0 =C2=A0=20
> slacktechnologies_slack-source=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=20
> 414=C2=A0 B/s | 951=C2=A0 B=C2=A0 =C2=A0 00:02=C2=A0 =C2=A0=20
> no package matched: spice-gtk
> Error: Some packages could not be found.

RHEL 9.2 does not have spice-gtk. You should raise this request
to Oracle Linux 9.2 and see if they want to support it.

> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Kindly let me know if there is any possible workaround to
> install it on Oracle Linux 9. I'm looking to access A Proxmox
> virtual machine via Virt-viewer and it looks spice-gtk is
> needed, otherwise I get "Unsupported graphic type 'spice'"
> error.
>=20
> Appreciate any direction to make this work. :)

I'd recommend fetching rpm sources (e.g: from fedora) and doing
the build + installation.

Not much more I can help you with it, sadly.

Ah, using some flatpak with SPICE would be another alternative.

Cheers,
Victor
 =20
------=_Part_1943366_1263797824.1692787288065
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp873228b5yahoo-style-wrap" style=
=3D"font-family:courier new, courier, monaco, monospace, sans-serif;font-si=
ze:13px;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hello Victor,</div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse">Appreciate very much your feedback!</div><div dir=3D"ltr" data-setdir=
=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Indeed a bit sa=
d with this de-support of spice-gtk, came also across <a href=3D"https://bu=
gzilla.redhat.com/show_bug.cgi?id=3D2030592" rel=3D"nofollow" target=3D"_bl=
ank">https://bugzilla.redhat.com/show_bug.cgi?id=3D2030592</a> which talk a=
bout this and some workarounds.</div><div dir=3D"ltr" data-setdir=3D"false"=
><div>Used hints from <span>Jean-Marc Liger and Aram Minasyan from that bug=
 thread and solved the problem in my side.</span></div><div><span></span><b=
r></div><div><br></div><div dir=3D"ltr" data-setdir=3D"false">Thanks for th=
e hints and your replay in general :)</div><div dir=3D"ltr" data-setdir=3D"=
false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false">All the best,</div><div dir=3D"ltr" data-set=
dir=3D"false">Iacob<br></div><div><br></div></div><div dir=3D"ltr" data-set=
dir=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydp2d263a95yahoo_quoted_3699820886" class=3D"ydp2d=
263a95yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Wednesday, August 23, 2023 at 12:29:47 PM GMT+3, Vic=
tor Toso &lt;victortoso@redhat.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div>Hi,<br clear=3D"none"><br clear=3D"none">On Tue, Aug 2=
2, 2023 at 08:47:58AM +0000, Maxim Iacob wrote:<br clear=3D"none">&gt; Hell=
o,<br clear=3D"none">&gt; <br clear=3D"none">&gt; I'm looking to install sp=
ice-gtk to Oracle Linux 9.2 distribution, based on Red<br clear=3D"none">&g=
t; Hat Enterprise Linux release 9.2 (Plow).<br clear=3D"none">&gt; <br clea=
r=3D"none">&gt; Somehow this is not possible due to error:<br clear=3D"none=
">&gt; <br clear=3D"none">&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br clear=3D"none">&gt; $sudo dnf builddep spice-gtk<br clear=3D"none=
">&gt; <br clear=3D"none">&gt; enabling proxyt-source repository<br clear=
=3D"none">&gt; enabling slacktechnologies_slack-source repository<br clear=
=3D"none">&gt; proxyt<br clear=3D"none">&gt; source&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br cl=
ear=3D"none">&gt; 817&nbsp; B/s | 1.6 kB&nbsp; &nbsp;  00:02&nbsp; &nbsp; <=
br clear=3D"none">&gt; slacktechnologies_slack&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; <br clear=3D"none">&gt; 803&nbsp; B/s | 1.8 kB=
&nbsp; &nbsp;  00:02&nbsp; &nbsp; <br clear=3D"none">&gt; slacktechnologies=
_slack-source&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  <br clear=3D"none">&gt; 414&nbs=
p; B/s | 951&nbsp; B&nbsp; &nbsp;  00:02&nbsp; &nbsp; <br clear=3D"none">&g=
t; no package matched: spice-gtk<br clear=3D"none">&gt; Error: Some package=
s could not be found.<br clear=3D"none"><br clear=3D"none">RHEL 9.2 does no=
t have spice-gtk. You should raise this request<br clear=3D"none">to Oracle=
 Linux 9.2 and see if they want to support it.<div class=3D"ydp2d263a95yqt2=
935270227" id=3D"ydp2d263a95yqtfd76242"><br clear=3D"none"><br clear=3D"non=
e">&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br clear=3D"none"=
>&gt; <br clear=3D"none">&gt; Kindly let me know if there is any possible w=
orkaround to<br clear=3D"none">&gt; install it on Oracle Linux 9. I'm looki=
ng to access A Proxmox<br clear=3D"none">&gt; virtual machine via Virt-view=
er and it looks spice-gtk is<br clear=3D"none">&gt; needed, otherwise I get=
 "Unsupported graphic type 'spice'"<br clear=3D"none">&gt; error.<br clear=
=3D"none">&gt; <br clear=3D"none">&gt; Appreciate any direction to make thi=
s work. :)</div><br clear=3D"none"><br clear=3D"none">I'd recommend fetchin=
g rpm sources (e.g: from fedora) and doing<br clear=3D"none">the build + in=
stallation.<br clear=3D"none"><br clear=3D"none">Not much more I can help y=
ou with it, sadly.<br clear=3D"none"><br clear=3D"none">Ah, using some flat=
pak with SPICE would be another alternative.<br clear=3D"none"><br clear=3D=
"none">Cheers,<br clear=3D"none">Victor<div class=3D"ydp2d263a95yqt29352702=
27" id=3D"ydp2d263a95yqtfd87627"><br clear=3D"none"></div></div>
            </div>
        </div></body></html>
------=_Part_1943366_1263797824.1692787288065--
