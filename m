Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C784F5A0202
	for <lists+spice-devel@lfdr.de>; Wed, 24 Aug 2022 21:20:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78554A2B8A;
	Wed, 24 Aug 2022 19:20:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com
 [IPv6:2001:4860:4864:20::2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E92ED10E513
 for <spice-devel@lists.freedesktop.org>; Sat, 20 Aug 2022 17:14:18 +0000 (UTC)
Received: by mail-oa1-x2e.google.com with SMTP id
 586e51a60fabf-11ba6e79dd1so8421767fac.12
 for <spice-devel@lists.freedesktop.org>; Sat, 20 Aug 2022 10:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=blsybXCPLTE+cMhYE0aCuQHESHVxv6VA5n8X+kib7xk=;
 b=i/SYCO5Pxn/dt6+PClb8LNwM7u5ouZBPEIFzzssLwXGZbq9aNCRAjpT1jegDOLEIj5
 u7h+ozzAAoA3sx5H7QknqqeFPUtQhNE+s1R/L8StSA3di+Fo78ZxmWFuntC/uR0agfD4
 6ROty3lEy4LSSlrYpC48KLOVSz9BE37HjlxmDcNZo75auOrAuLUZgnufYCeju/JrlWr1
 vvqQoZ9fLAiDwDVLu/NmxyGa38Y6h4Cmksl3tOtk7yKr+8oWk9YnytBW/4Qbkc3Ey9uw
 3AG4PxF8wQHk20+ydkTtNaQe09RVqBpL2UqVTAUmtqFjL+OuIKXpObd1XhWPs1TgJTU2
 WObQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=blsybXCPLTE+cMhYE0aCuQHESHVxv6VA5n8X+kib7xk=;
 b=h3a58PVmYO3AVwNTJMXHXz8udJAHW6dv/RNKNC3Prgx5sLoeJSZ5uVcnEq2zx0+XUL
 UcKbSUgs+p2wCa/zC0E7H13sRVdy2EC0OAEPLugvzzSgKANGY8OnmxbpKTKhIk3BN2GM
 8lwloFZGOpAr+VnhgPTBiRkr2rzMWDAHMYyJp6ZesU13Hy/EGftQOPYh7wPkg0DLOyq8
 cTth2ktw/22nNlwnrPdBKntpH5EJxQKZTC+11F3VB0BFhfSI1Hq4ukiyKENZSXX+cWL3
 dm75vJ9irAtjUXCV8EG37kpC9t32VPYz52u3ys2O74mu7H3N81pi8JxDyZtJMbQE4kZP
 zUFA==
X-Gm-Message-State: ACgBeo1IHylspg8MvoKoxa8oZ+pe5kkC1bi2dhz8Rk9fdYh1IjZIPSq0
 K8qcAKZsy+IWAq+a7Aw29tQySHH6+Xq5D3X0QoA=
X-Google-Smtp-Source: AA6agR7vAdJ8Ke72cdeC8pJb/8JsEbaYO1jpQ6eFQtg521cDIUgw0BMsdZx7IG6mM/B6E6rPat4cpQjohjPkJdfX/UE=
X-Received: by 2002:a05:6870:6189:b0:11c:8487:80d5 with SMTP id
 a9-20020a056870618900b0011c848780d5mr6679824oah.179.1661015657727; Sat, 20
 Aug 2022 10:14:17 -0700 (PDT)
MIME-Version: 1.0
References: <DM4PR17MB587332F4914A9864684C628BCF6C9@DM4PR17MB5873.namprd17.prod.outlook.com>
In-Reply-To: <DM4PR17MB587332F4914A9864684C628BCF6C9@DM4PR17MB5873.namprd17.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 20 Aug 2022 18:14:06 +0100
Message-ID: <CAHt6W4dAZ4aXfce0g5Ehq-LZSLHqHVi6vCpXHS1S+q-ThKE7aA@mail.gmail.com>
To: Jonathon Bauer <jbauer@firelandsit.com>
Content-Type: multipart/related; boundary="0000000000003eeab705e6af5897"
Subject: Re: [Spice-devel] Windows Spice Guest Tools Silent Install Found
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

--0000000000003eeab705e6af5897
Content-Type: multipart/alternative; boundary="0000000000003eeab505e6af5896"

--0000000000003eeab505e6af5896
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jonathon,
   do you have something in mind?
I mean, are you referring to some addition to
https://www.spice-space.org/download.html page?
Like adding a sentence after "This installer contains some optional drivers
and services that can be installed in Windows guest to improve SPICE
performance and integration. This includes the qxl video driver and the
SPICE guest agent (for copy and paste, automatic resolution switching,
...)" ?
Can you open an issue on gitlab so we could discuss it there?

Regards,
  Frediano


Il giorno sab 20 ago 2022 alle ore 14:56 Jonathon Bauer <
jbauer@firelandsit.com> ha scritto:

> Hi Spice Devs,
>
>
>
> I figured out a way to run the Windows spice guest tools installer
> silently, enabling automated deployment. Just run the installer as System=
,
> and add the /S switch (case sensitive). I posted more details on Reddit
> here:
> https://www.reddit.com/r/qemu_kvm/comments/9ivlkp/spice_windows_guest_too=
ls_silent_install/
>
>
>
> Please consider adding this to your documentation, so it=E2=80=99s not so=
 hard to
> find. Adding it to the Spice-Space download page, under the =E2=80=9CWind=
ows
> binaries=E2=80=9D section may be a good place.
>
>
>
> Thanks!
>
>
>
>
>
>
> <https://www.credly.com/badges/a1296f6d-b3d2-4ac9-8d40-f7b56ce98607/publi=
c_url>
>
> *Jonathon Bauer*
>
> Cyber Security & Cloud Solutions Specialist
>
> Firelands IT Services
>
>
>
> Email: jbauer@firelandsit.com
>
> Phone: 419-626-6767 Ext. 206
>
> Toll Free: 888-841-4795 Ext. 206
>
> Direct: 419-504-5247
>
>
>
> 2215 Cleveland Rd, Sandusky, OH 44870
>
> www.firelandsit.com[image: Title: line art] <http://www.firelandsit.com/>
>
>
>
>
>
>
>
> CONFIDENTIAL NOTICE: This electronic transmission and any attachments
> constitute confidential information which is intended only for the named
> recipient(s) and may be legally privileged. If you have received this
> communication in error, please contact the sender immediately. Any
> disclosure, copying, distribution or the taking of any action concerning
> the contents of this communication by anyone other than the named
> recipient(s) is strictly prohibited.
>
>
>
>
>

--0000000000003eeab505e6af5896
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jonathon,</div><div>=C2=A0=C2=A0 do you have somet=
hing in mind?</div><div>I mean, are you referring to some addition to <a hr=
ef=3D"https://www.spice-space.org/download.html">https://www.spice-space.or=
g/download.html</a> page?</div><div>Like adding a sentence after &quot;This=
 installer contains some optional drivers and services that can be=20
installed in Windows guest to improve SPICE performance and integration.
 This includes the qxl video driver and the SPICE guest agent (for copy=20
and paste, automatic resolution switching, ...)&quot; ?</div><div>Can you o=
pen an issue on gitlab so we could discuss it there?<br></div><div><br></di=
v><div>Regards,<br></div><div><div><div dir=3D"ltr" class=3D"gmail_signatur=
e" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=C2=A0 Frediano</div=
></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">Il giorno sab 20 ago 2022 alle ore 14:56 Jonathon Ba=
uer &lt;<a href=3D"mailto:jbauer@firelandsit.com">jbauer@firelandsit.com</a=
>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div class=3D"msg8155041113538072777">





<div style=3D"overflow-wrap: break-word;" lang=3D"EN-US">
<div class=3D"gmail-m_8155041113538072777WordSection1">
<p class=3D"MsoNormal">Hi Spice Devs,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I figured out a way to run the Windows spice guest t=
ools installer silently, enabling automated deployment. Just run the instal=
ler as System, and add the /S switch (case sensitive). I posted more detail=
s on Reddit here:
<a href=3D"https://www.reddit.com/r/qemu_kvm/comments/9ivlkp/spice_windows_=
guest_tools_silent_install/" target=3D"_blank">
https://www.reddit.com/r/qemu_kvm/comments/9ivlkp/spice_windows_guest_tools=
_silent_install/</a><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Please consider adding this to your documentation, s=
o it=E2=80=99s not so hard to find. Adding it to the Spice-Space download p=
age, under the =E2=80=9CWindows binaries=E2=80=9D section may be a good pla=
ce.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks!<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<table style=3D"width:3.5in;border-collapse:collapse" width=3D"336" cellspa=
cing=3D"0" cellpadding=3D"0" border=3D"0">
<tbody>
<tr style=3D"height:88.65pt">
<td style=3D"width:1in;padding:0in 5.4pt;height:88.65pt" width=3D"96" valig=
n=3D"top">
<p class=3D"MsoNormal" style=3D"text-align:center" align=3D"center"><span s=
tyle=3D"font-size:9pt"><img style=3D"width: 0.7187in; height: 0.625in;" id=
=3D"gmail-m_8155041113538072777Picture_x0020_8" src=3D"cid:182bc3d85a84ce8e=
91" width=3D"69" height=3D"60" border=3D"0"><u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-align:center" align=3D"center"><span s=
tyle=3D"font-size:9pt"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-align:center" align=3D"center"><a href=
=3D"https://www.credly.com/badges/a1296f6d-b3d2-4ac9-8d40-f7b56ce98607/publ=
ic_url" target=3D"_blank"><span style=3D"font-size:9pt;color:blue;text-deco=
ration:none"><img style=3D"width: 0.6875in; height: 0.6875in;" id=3D"gmail-=
m_8155041113538072777Picture_x0020_2" src=3D"cid:182bc3d85aa5b16b22" width=
=3D"66" height=3D"66" border=3D"0"></span></a><span style=3D"font-size:9pt"=
><u></u><u></u></span></p>
</td>
<td style=3D"width:2.5in;padding:0in 5.4pt;height:88.65pt" width=3D"240" va=
lign=3D"top">
<p class=3D"MsoNormal"><b><i><span style=3D"font-size:10pt;font-family:&quo=
t;Trebuchet MS&quot;,sans-serif;color:rgb(196,89,17)">Jonathon Bauer<u></u>=
<u></u></span></i></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8pt;font-family:&quot;Trebu=
chet MS&quot;,sans-serif;color:rgb(196,89,17)">Cyber Security &amp; Cloud S=
olutions Specialist<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8pt;font-family:&quot;Trebu=
chet MS&quot;,sans-serif;color:rgb(196,89,17)">Firelands IT Services<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:4pt;font-family:&quot;Trebu=
chet MS&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8pt;font-family:&quot;Trebu=
chet MS&quot;,sans-serif" lang=3D"FR-CA">Email:
<a href=3D"mailto:jbauer@firelandsit.com" target=3D"_blank"><span style=3D"=
color:blue">jbauer@firelandsit.com</span></a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8pt;font-family:&quot;Trebu=
chet MS&quot;,sans-serif" lang=3D"FR-CA">Phone: 419-626-6767 Ext. 206<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8pt;font-family:&quot;Trebu=
chet MS&quot;,sans-serif" lang=3D"FR-CA">Toll Free: 888-841-4795 Ext. 206<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8pt;font-family:&quot;Trebu=
chet MS&quot;,sans-serif" lang=3D"FR-CA">Direct: 419-504-5247<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:4pt;font-family:&quot;Trebu=
chet MS&quot;,sans-serif" lang=3D"FR-CA"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8pt;font-family:&quot;Trebu=
chet MS&quot;,sans-serif">2215 Cleveland Rd, Sandusky, OH 44870<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8pt;font-family:&quot;Trebu=
chet MS&quot;,sans-serif;color:rgb(196,89,17)"><a href=3D"http://www.firela=
ndsit.com/" target=3D"_blank"><span style=3D"color:blue">www.firelandsit.co=
m</span><span style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-=
serif;color:rgb(5,99,193);text-decoration:none"><img style=3D"width: 2.2604=
in; height: 0.0208in;" id=3D"gmail-m_8155041113538072777Straight_x0020_Conn=
ector_x0020_9" src=3D"cid:182bc3d85aa692e333" alt=3D"Title: line art" width=
=3D"217" height=3D"2" border=3D"0"></span></a></span><span style=3D"font-si=
ze:8pt;font-family:&quot;Trebuchet MS&quot;,sans-serif"><u></u><u></u></spa=
n></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"display:none"><u></u>=C2=A0<u></u></s=
pan></p>
<table style=3D"width:351.75pt" width=3D"469" cellspacing=3D"0" cellpadding=
=3D"0" border=3D"0">
<tbody>
<tr>
<td style=3D"padding:0in 6pt 0in 0in"></td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"line-height:0%"><span style=3D"display:none=
"><u></u>=C2=A0<u></u></span></p>
<table style=3D"width:100%" width=3D"100%" cellspacing=3D"0" cellpadding=3D=
"0" border=3D"0">
<tbody>
<tr style=3D"height:12pt">
<td style=3D"padding:0in;height:12pt"></td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"line-height:0%"><span style=3D"display:none=
"><u></u>=C2=A0<u></u></span></p>
<table style=3D"border-color:gray currentcolor currentcolor;border-style:so=
lid none none;border-width:1pt medium medium" cellspacing=3D"0" cellpadding=
=3D"0" border=3D"1">
<tbody>
<tr>
<td style=3D"border:medium none;padding:0in 6pt 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:120%"><span style=3D"font-size:=
7.5pt;line-height:120%;font-family:&quot;Arial&quot;,sans-serif;color:gray"=
>CONFIDENTIAL NOTICE: This electronic transmission and any attachments cons=
titute confidential information which is intended
 only for the named recipient(s) and may be legally privileged. If you have=
 received this communication in error, please contact the sender immediatel=
y. Any disclosure, copying, distribution or the taking of any action concer=
ning the contents of this communication
 by anyone other than the named recipient(s) is strictly prohibited. <u></u=
><u></u></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

</div></blockquote></div>

--0000000000003eeab505e6af5896--

--0000000000003eeab705e6af5897
Content-Type: image/jpeg; name="image001.jpg"
Content-Disposition: inline; filename="image001.jpg"
Content-Transfer-Encoding: base64
Content-ID: <182bc3d85a84ce8e91>
X-Attachment-Id: 182bc3d85a84ce8e91

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0a
HBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIy
MjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAA8AEUDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD0fNIT
Tc01jWQxGNRO6qpZmCr6k4FKTk4ry+70bVfHeqX1ydReDS4bhoII8ZHy8E7emc96UpJLUuEHN2R6
TBc29yW8i4il2nDeW4bH1xVgGvI5Ph/qnhndq2k6vuntgZPL2FN6jkrx7V6bpepR6tpNpqMS7EuI
lk2E5256j8DRGSewTpuG5og80+oUbNS54qlsZm94a63X/AP60UeGet1/wD/2airWwGCaaTUpFIUy
KVgKrHDA+lcrpGkatZWbC3vVhjW+nllBX/WKXYj+ldbIlVpYEuB5JmEbrhsdcj3HvyKxqJ2OjDNK
Wpl3cGoXerFkvTHbRjbJbAD5h61V8KRtYeHYrWQEGOaZR9PMbH6VoXNtb2Fz9oLeQm1sqW+8f7xP
oKfcQrbRxhOVPOR0Oec1FJO7NsU42Rfhbcas44qlZAswrTEftXQkcJseGet3/wAA/wDZqKk8OrtN
z77P60VaAxttKEzTwK8t+J3iW5+1rodhdSQIi7roxnaXLDhc+mOv1q4Q5nZEXN7xL490fQS0KOL6
8Bx5EDDCn/aboPp1rE8Aa6/iPxTq7aj5YlvLSPyo04VVjZvlXv8AxZ/OvLfssbLtOQw9KvadqD6J
dW15A7/aIGym3qRW0sP7rRUJ2lc9s1jTIIrW6kBYr5Drl23dRXlOjfELUtLsoNNvIY760gRUib7s
qqO2e/411OqfEq2v/DwtRbSRzsD5r/3lx/COuSePavK8MWU7MHbgj0rGjQte6Na1RSske6eFvHHh
7Vp0g+0m1uW6RXI27j7Hoa7kBGXcrAj1Br5TxswwzuBzn3r134f+KZdTtzazSZuY/vg/xr/e+tXO
ny7GFz2TRMZuMf7P9aKr+Gt2663H+5j/AMeorFlIzARnnpXzrrd59v1rULxn3Ge4dlb1GcL+le7e
IJ5Lfw5qc0Rw6WsjKfQ7TXzhekpCu0424xXZh1a7Mmbek6a2r6hbWwby1ldUaYjiMepp2t6Wukav
c2QmFwkL7FmAwGqlbyOsJCsyg8EKSMinXUsjhVeR3AHG5icV0cr5r30C6tYhnRBKuP7iH/x0U+K3
heFmebYwPA25zx/j/Om3LHzFH/TNP/QRSKTiiwXKNyNpX0JqxoWpz6ZqMV5buVkRsj39jUF8oIQ/
7VU7cnYfY1lLV2GfWXgDWrfXNNmuoD2QOv8AdPzZFFcN+z/Izxa+CeB9mIHb/lp/gKK4pq0rGi2P
/9k=
--0000000000003eeab705e6af5897
Content-Type: image/png; name="image002.png"
Content-Disposition: inline; filename="image002.png"
Content-Transfer-Encoding: base64
Content-ID: <182bc3d85aa5b16b22>
X-Attachment-Id: 182bc3d85aa5b16b22

iVBORw0KGgoAAAANSUhEUgAAAEIAAABCCAYAAADjVADoAAAABGdBTUEAALGPC/xhBQAAACBjSFJN
AAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAABmJLR0QA/wD/AP+gvaeTAAAA
B3RJTUUH5QsIFi4W30Fa0AAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAyMS0xMS0wOFQyMjo0NjoyMisw
MDowMDNtQhQAAAAldEVYdGRhdGU6bW9kaWZ5ADIwMjEtMTEtMDhUMjI6NDY6MjIrMDA6MDBCMPqo
AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAjppVFh0b3BlbmJhZGdlcwAA
AAAAeyJAY29udGV4dCI6Imh0dHBzOi8vdzNpZC5vcmcvb3BlbmJhZGdlcy92MiIsImJhZGdlIjoi
aHR0cHM6Ly93d3cuY3JlZGx5LmNvbS9hcGkvdjEvb2JpL3YyL2lzc3VlcnMvOGI4MThiZmQtYTE5
Mi00MzM5LWFlNGMtZGFlYzc2MjJjYzI0L2JhZGdlX2NsYXNzZXMvMTBiMzViZjMtMjVhOC00M2I5
LTgxMWYtMjA3NzU2Y2Y1NTg2IiwiZXhwaXJlcyI6IjIwMjEtMTAtMzFUMDA6MDA6MDAuMDAwWiIs
ImV2aWRlbmNlIjpbXSwiaWQiOiJodHRwczovL3d3dy5jcmVkbHkuY29tL2FwaS92MS9vYmkvdjIv
YmFkZ2VfYXNzZXJ0aW9ucy9hMTI5NmY2ZC1iM2QyLTRhYzktOGQ0MC1mN2I1NmNlOTg2MDciLCJp
c3N1ZWRPbiI6IjIwMDktMTAtMjBUMDA6MDA6MDAuMDAwWiIsInJlY2lwaWVudCI6eyJ0eXBlIjoi
ZW1haWwiLCJpZGVudGl0eSI6InNoYTI1NiQxMWJlNjJhZDQ4Yzk4NTg3NzdjODY4YTY0ZDY0ZjE2
YTI2N2EzYzAxYTM5NjgyYTZlYzE1NWQzM2ExMzlmMTA0IiwiaGFzaGVkIjp0cnVlfSwidHlwZSI6
IkFzc2VydGlvbiIsInZlcmlmaWNhdGlvbiI6eyJ0eXBlIjoiaG9zdGVkIn19xFa3/wAACzpJREFU
eNrtnHtwFdUdgL9zdu8r7wc3ISS8SZDI+xlAQ1EpDytajBatrVZbmdrRSTtqbSvVOq22M21NnUHr
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
--0000000000003eeab705e6af5897
Content-Type: image/png; name="image003.png"
Content-Disposition: inline; filename="image003.png"
Content-Transfer-Encoding: base64
Content-ID: <182bc3d85aa692e333>
X-Attachment-Id: 182bc3d85aa692e333

iVBORw0KGgoAAAANSUhEUgAAANkAAAACCAMAAADimYmoAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAeUExURd+AQOyAM+t8MOt9Mex9Me1+Mu59Me59Me59Me59MfyrGjEAAAAKdFJOUwgo
QFh4gIeXp78EJIbgAAAACXBIWXMAAA7DAAAOwwHHb6hkAAAAKElEQVQoU2NgZCIaMLPSArBx0gQw
M7BDWUQADqhbqAtYoOFGXcDEAAAbuQjzJMamzwAAAABJRU5ErkJggg==
--0000000000003eeab705e6af5897--
