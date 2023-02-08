Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E4668E765
	for <lists+spice-devel@lfdr.de>; Wed,  8 Feb 2023 06:14:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6888B10E6D0;
	Wed,  8 Feb 2023 05:14:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from zuler.io (unknown [113.31.158.66])
 by gabe.freedesktop.org (Postfix) with ESMTP id 07AA510E6D0
 for <spice-devel@lists.freedesktop.org>; Wed,  8 Feb 2023 05:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zuler.io;
 s=dkim; h=Received:Date:From:To:Cc:Subject:References:
 Mime-Version:Message-ID:Content-Type; bh=w3BUu/AkEIq+/D2Veblof9M
 L4rH2YhOHZAzXpulXN/o=; b=H3jpF32sN4U2Fof3mf8tL5sO3HvXPLJQkPAJPGV
 zhvSV/+eVcr3EqkXy5lvD2h7HBvwI0WzIMzkBXI9igHpP7U/W0ESOC8Oa8ghiupn
 vRtDzEGg4ZfvflYXjfksecOU7pydlrfbu0AX0VOtTP/39k3NDxd9YJp9vUx06ChS
 CdcY=
Received: from DESKTOP-390DOL3 (unknown [113.66.216.178])
 by Coremail01 (Coremail) with SMTP id AgAKCgD3QvS6L+NjaJafAA--.59956S2;
 Wed, 08 Feb 2023 13:14:34 +0800 (CST)
Date: Wed, 8 Feb 2023 13:14:35 +0800
From: =?UTF-8?B?546L5q2j5rWp?= <wangzhenghao@zuler.io>
To: "Victor Toso" <victortoso@redhat.com>, 
 =?UTF-8?B?RnJlZGlhbm/CoFppZ2xpbw==?= <freddy77@gmail.com>
References: <2023020717105307784714@zuler.io>, 
 <20230207124834.e63gsgav7acrjcq6@tapioca>
X-Priority: 3
X-GUID: 1B2C4DE9-5403-4C7D-A2CA-314200D582ED
X-Has-Attach: no
X-Mailer: Foxmail 7.2.23.116[cn]
Mime-Version: 1.0
Message-ID: <2023020813142896143028@zuler.io>
Content-Type: multipart/alternative;
 boundary="----=_001_NextPart434815725105_=----"
X-CM-TRANSID: AgAKCgD3QvS6L+NjaJafAA--.59956S2
X-Coremail-Antispam: 1UD129KBjvJXoW7AF1xtF4DZw4kAw47tF4UCFg_yoW8Ar1kpw
 nxtas7AF1vy34rAF4kCw48AayrJrZxZws5G3s7GrWSkF1YgFZ2ga1S9ry3KrWUGw4fCayU
 KF93Kr98Gan8ZFDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUm0b7Iv0xC_Zr1lb4IE77IF4wAFc2x0x2IEx4CE42xK8VAvwI8I
 cIk0rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2
 AK021l84ACjcxK6xIIjxv20xvE14v26r1j6r1xM28EF7xvwVC0I7IYx2IY6xkF7I0E14v2
 6r1j6r4UM28EF7xvwVC2z280aVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r
 4UJVWxJr1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG6xAIxVCFxsxG0wAqx4xG6I80
 eVA0xI0YY7vIx2IE14AGzxvEb7x7McIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67
 AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lFcxC0VAYjxAx
 ZF0Ew4CEw7xC0wACY4xI67k04243AVC20s07MxkIecxEwVAFwVW8WwCF04k20xvY0x0EwI
 xGrwCF04k20xvE74AGY7Cv6cx26r48MxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8C
 rVAFwI0_JrI_JrWlx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUXVWUAw
 CIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x02
 67AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr
 0_Gr1lIxAIcVC2z280aVCY1x0267AKxVWUJVW8JwCE64xvF2IEb7IF0Fy7YxBIdaVFxhVj
 vjDU0xZFpf9x07j0kskUUUUU=
X-CM-SenderInfo: pzdqw6pkhqwxtdr663xohuhxbr/1tbiAgEQCWPh9wsA1wAAsz
Subject: Re: [Spice-devel] How to compile spice-vd_agent?
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

This is a multi-part message in MIME format.

------=_001_NextPart434815725105_=----
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: base64

VGh4IGEgbG90LiANCkZpbmFsbHksIEkgdXNlIGRvY2tlciBjb250YWluZXIgZmVkb3JhOjM3LCBp
bnN0YWxsIGRlcHMgYXMgQEZyZWRpYW5vIFppZ2xpbyBzYWlkKGluIC5naXRsYWItY2kueW1sIGZp
bGUpLiANClRoZW4gIGJ1aWxkIGl0IGFzIEBWaWN0b3IgVG9zbyBzYWlkLCBldmVyeXRoaW5nIHdv
cmtlZCB3ZWxsLiANClRoYW5rcyBmb3IgeW91ciByZXBseS4NCg0KDQoNCndhbmd6aGVuZ2hhb0B6
dWxlci5pbw0KIA0KRnJvbTogVmljdG9yIFRvc28NCkRhdGU6IDIwMjMtMDItMDcgMjA6NDgNClRv
OiDnjovmraPmtakNCkNDOiBzcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNClN1Ympl
Y3Q6IFJlOiBbU3BpY2UtZGV2ZWxdIEhvdyB0byBjb21waWxlIHNwaWNlLXZkX2FnZW50Pw0KSGks
DQogDQpPbiBUdWUsIEZlYiAwNywgMjAyMyBhdCAwNToxMDo1M1BNICswODAwLCDnjovmraPmtakg
d3JvdGU6DQo+IEhpIFRlYW0sDQo+ICAgICBJJ2QgbGlrZSB0byBidWlsZCBteSBvd24gc3BpY2Ut
dmRfYWdlbnQoZm9yIHdpbmRvd3MgMTApLiBJcw0KPiAgICAgdGhlcmUgYW55IGd1aWRlIHRvIGJ1
aWxkIGl0PyAgSSBmYWlsZWQgdG8gYnVpbGQgaXQgd2l0aA0KPiAgICAgbWluZ3c2NCBvbiB1YnVu
dHUgMjAuMDQgYW5kIHZzMjAxOSBvbiB3aW4xMC4gDQo+ICAgICBPbiB3aW5kb3dzIGl0IGJsb2Nr
ZWQgYnkgIiBMTksxMTgxOiBjYW5ub3Qgb3BlbiBpbnB1dCBmaWxlDQo+ICAgICB6bGlid2FwaS5s
aWIiLCBhbmQgIG9uIHVidW50dSBpdCBzaG93cyAiY29uZmlndXJlOiBlcnJvcjoNCj4gICAgIFBh
Y2thZ2UgcmVxdWlyZW1lbnRzIChsaWJwbmcpIHdlcmUgbm90IG1ldDoiDQogDQpUaGF0IG1lYW5z
IHlvdSBuZWVkIHRvIGluc3RhbGwgbGlicG5nIG1pbmd3IHZlcnNpb24uDQogDQo+ICAgICBJZiBJ
IHNob3VsZG4ndCBhc2sgdGhpcyBxdWVzdGlvbiBoZXJlLCBQbHogdGVsbCBtZSB0aGUgY29ycmVj
dCBtYWlsIGxpc3QuDQo+ICAgICBUaHggYSBsb3QuIA0KIA0KWW91IGNhbiBhc2ssIG5vIHByb2Js
ZW0uDQogDQpJbiBteSBGZWRvcmEgMzcgYm94LCBhcyBvZiBub3csIEkgaGFkIHRvIGluc3RhbGwN
Cm1pbmd3NjQtbGlicG5nLXN0YXRpYyBhbmQgbWluZ3c2NC16bGliLXN0YXRpYy4gQnVpbGQgc3Rl
cHM6DQogDQogICAgJCBhdXRvcmVjb25mIC1pZg0KICAgICQgbWluZ3c2NC1jb25maWd1cmUNCi4u
Lg0KICAgIHZkYWdlbnQtd2luIDAuMTAuMC42OC01MDE3DQogICAgPT09PT09PT09PT09PT09PQ0K
IA0KICAgIHByZWZpeDogICAvdXNyL3g4Nl82NC13NjQtbWluZ3czMi9zeXMtcm9vdC9taW5ndw0K
ICAgIGRhdGFkaXI6ICAvdXNyL3g4Nl82NC13NjQtbWluZ3czMi9zeXMtcm9vdC9taW5ndy9zaGFy
ZQ0KICAgIGNvbXBpbGVyOiB4ODZfNjQtdzY0LW1pbmd3MzItZysrDQogICAgY3h4ZmxhZ3M6IC1P
MiAtZyAtcGlwZSAtV2FsbCAtV3AsLURfRk9SVElGWV9TT1VSQ0U9MiAtZmV4Y2VwdGlvbnMgLS1w
YXJhbT1zc3AtYnVmZmVyLXNpemU9NA0KICAgIGNwcGZsYWdzOg0KIA0KICAgJCBtaW5ndzY0LW1h
a2UNCi4uLg0KICAgJCBsbCAqLnhlDQoucnd4ci14ci14QCA2MDVrIHRvc28gIDcgRmViIDEzOjQ1
ICAgLUkg74W6IHZkYWdlbnQuZXhlKg0KLnJ3eHIteHIteEAgMjEwayB0b3NvICA3IEZlYiAxMzo0
NSAgIC1JIO+FuiB2ZHNlcnZpY2UuZXhlKg0KIA0KICAgJCBtYWtlIG1zaQ0KLi4uDQogICAgR0VO
ICAgICAgc3BpY2UtdmRhZ2VudC14NjQtMC4xMC4wLjY4LTUwMTcubXNpDQogDQogDQpGZWVsIGZy
ZWUgdG8gc3VibWl0IGEgZG9jdW1lbnRhdGlvbiBwYXRjaCBmb3IgYnVpbGQgcHJvY2VzcyA7KQ0K
IA0KQ2hlZXJzLA0KVmljdG9yDQo=

------=_001_NextPart434815725105_=----
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3DUTF-8"><style>body { line-height: 1.5; }blockquote { margin-top: 0px; =
margin-bottom: 0px; margin-left: 0.5em; }body { font-size: 14px; font-fami=
ly: "Microsoft YaHei UI"; color: rgb(0, 0, 0); line-height: 1.5; }</style>=
</head><body>=0A<div><span></span>Thx a lot.&nbsp;</div><div>Finally, I us=
e docker container&nbsp;fedora:37, install deps as @<span style=3D"white-s=
pace: nowrap; font-weight: 700; background-color: transparent; font-size: =
13px; font-family: &quot;Microsoft YaHei UI&quot;, Tahoma;">Frediano&nbsp;=
Ziglio&nbsp;</span><span style=3D"background-color: transparent;">said(in&=
nbsp;</span><span style=3D"background-color: transparent; font-family: &qu=
ot;Microsoft YaHei UI&quot;, Tahoma;">.gitlab-ci.yml file</span><span styl=
e=3D"background-color: transparent;">).&nbsp;</span></div><div><span style=
=3D"background-color: transparent;">Then&nbsp; build it as @</span><span s=
tyle=3D"background-color: transparent;"><b>Victor Toso </b>said, everythin=
g worked well.&nbsp;</span></div><div><span style=3D"background-color: tra=
nsparent;">Thanks for your reply.</span></div><div><span style=3D"backgrou=
nd-color: transparent;"><br></span></div><hr style=3D"width: 210px; height=
: 1px;" color=3D"#b5c4df" size=3D"1" align=3D"left">=0A<div><span><div sty=
le=3D"MARGIN: 10px; FONT-FAMILY: verdana; FONT-SIZE: 10pt"><div>wangzhengh=
ao@zuler.io</div></div></span></div>=0A<blockquote style=3D"margin-Top: 0p=
x; margin-Bottom: 0px; margin-Left: 0.5em; margin-Right: inherit"><div>&nb=
sp;</div><div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:=
3.0pt 0cm 0cm 0cm"><div style=3D"PADDING-RIGHT: 8px; PADDING-LEFT: 8px; FO=
NT-SIZE: 12px;FONT-FAMILY:tahoma;COLOR:#000000; BACKGROUND: #efefef; PADDI=
NG-BOTTOM: 8px; PADDING-TOP: 8px"><div><b>From:</b>&nbsp;<a href=3D"mailto=
:victortoso@redhat.com" class=3D"">Victor Toso</a></div><div><b>Date:</b>&=
nbsp;2023-02-07&nbsp;20:48</div><div><b>To:</b>&nbsp;<a href=3D"mailto:wan=
gzhenghao@zuler.io">=E7=8E=8B=E6=AD=A3=E6=B5=A9</a></div><div><b>CC:</b>&n=
bsp;<a href=3D"mailto:spice-devel@lists.freedesktop.org">spice-devel@lists=
.freedesktop.org</a></div><div><b>Subject:</b>&nbsp;Re: [Spice-devel] How =
to compile spice-vd_agent?</div></div></div><div><div>Hi,</div>=0A<div>&nb=
sp;</div>=0A<div>On Tue, Feb 07, 2023 at 05:10:53PM +0800, =E7=8E=8B=E6=AD=
=A3=E6=B5=A9 wrote:</div>=0A<div>&gt; Hi Team,</div>=0A<div>&gt;&nbsp;&nbs=
p;&nbsp;&nbsp; I'd like to build my own spice-vd_agent(for windows 10). Is=
</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; there any guide to build it?&nb=
sp; I failed to build it with</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; mi=
ngw64 on ubuntu 20.04 and vs2019 on win10. </div>=0A<div>&gt;&nbsp;&nbsp;&=
nbsp;&nbsp; On windows it blocked by " LNK1181: cannot open input file</di=
v>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; zlibwapi.lib", and&nbsp; on ubuntu =
it shows "configure: error:</div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; Pack=
age requirements (libpng) were not met:"</div>=0A<div>&nbsp;</div>=0A<div>=
That means you need to install libpng mingw version.</div>=0A<div>&nbsp;</=
div>=0A<div>&gt;&nbsp;&nbsp;&nbsp;&nbsp; If I shouldn't ask this question =
here, Plz tell me the correct mail list.</div>=0A<div>&gt;&nbsp;&nbsp;&nbs=
p;&nbsp; Thx a lot. </div>=0A<div>&nbsp;</div>=0A<div>You can ask, no prob=
lem.</div>=0A<div>&nbsp;</div>=0A<div>In my Fedora 37 box, as of now, I ha=
d to install</div>=0A<div>mingw64-libpng-static and mingw64-zlib-static. B=
uild steps:</div>=0A<div>&nbsp;</div>=0A<div>&nbsp;&nbsp;&nbsp; $ autoreco=
nf -if</div>=0A<div>&nbsp;&nbsp;&nbsp; $ mingw64-configure</div>=0A<div>..=
.</div>=0A<div>&nbsp;&nbsp;&nbsp; vdagent-win 0.10.0.68-5017</div>=0A<div>=
&nbsp;&nbsp;&nbsp; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>=
=0A<div>&nbsp;</div>=0A<div>&nbsp;&nbsp;&nbsp; prefix:&nbsp;&nbsp; /usr/x8=
6_64-w64-mingw32/sys-root/mingw</div>=0A<div>&nbsp;&nbsp;&nbsp; datadir:&n=
bsp; /usr/x86_64-w64-mingw32/sys-root/mingw/share</div>=0A<div>&nbsp;&nbsp=
;&nbsp; compiler: x86_64-w64-mingw32-g++</div>=0A<div>&nbsp;&nbsp;&nbsp; c=
xxflags: -O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=3D2 -fexceptions --param=
=3Dssp-buffer-size=3D4</div>=0A<div>&nbsp;&nbsp;&nbsp; cppflags:</div>=0A<=
div>&nbsp;</div>=0A<div>&nbsp;&nbsp; $ mingw64-make</div>=0A<div>...</div>=
=0A<div>&nbsp;&nbsp; $ ll *.xe</div>=0A<div>.rwxr-xr-x@ 605k toso&nbsp; 7 =
Feb 13:45&nbsp;&nbsp; -I =EF=85=BA vdagent.exe*</div>=0A<div>.rwxr-xr-x@ 2=
10k toso&nbsp; 7 Feb 13:45&nbsp;&nbsp; -I =EF=85=BA vdservice.exe*</div>=
=0A<div>&nbsp;</div>=0A<div>&nbsp;&nbsp; $ make msi</div>=0A<div>...</div>=
=0A<div>&nbsp;&nbsp;&nbsp; GEN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; spice-vdagent=
-x64-0.10.0.68-5017.msi</div>=0A<div>&nbsp;</div>=0A<div>&nbsp;</div>=0A<d=
iv>Feel free to submit a documentation patch for build process ;)</div>=0A=
<div>&nbsp;</div>=0A<div>Cheers,</div>=0A<div>Victor</div>=0A</div></block=
quote>=0A</body></html>
------=_001_NextPart434815725105_=------

