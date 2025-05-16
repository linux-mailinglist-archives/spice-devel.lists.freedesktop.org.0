Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD81AB96D5
	for <lists+spice-devel@lfdr.de>; Fri, 16 May 2025 09:49:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FDB610E9CF;
	Fri, 16 May 2025 07:49:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YeeXZXwN";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com
 [209.85.128.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F01910E9C9
 for <spice-devel@lists.freedesktop.org>; Fri, 16 May 2025 07:49:52 +0000 (UTC)
Received: by mail-yw1-f180.google.com with SMTP id
 00721157ae682-70cb3121db1so253187b3.3
 for <spice-devel@lists.freedesktop.org>; Fri, 16 May 2025 00:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1747381791; x=1747986591; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=CrnOFlKOiaIsSunbziis9frT6dCEjHVD4kRVUNaM0c4=;
 b=YeeXZXwNy9z+kpQcSTbCMCKU7yy3oHX2yky920w/v6tLu8JygjnAdYGOHI25wGLZyM
 S8yb05w1L0wBSWqwx+y9BJEQSuhuUBOMakRps1Y+ajW1tl354cfAM3G9+3cCci74jKpK
 Dhp0DCwJja+a8Xz5X/fdVNEXcf9BM2HGe1ngOtUIWVUOjZX39FG1o5JyK6EcqEl6S++A
 kkmrr99AGZYUxrhayezioGhkV0bwt0oQd6lfA/yorCq6IriuxVThs+VZeMreCCDMvQ5A
 fTwx78c0ECa8dGx+8TbNiNtNedl8ls5ke6muXyyxIN0F0pRPd5NCOunTPacbUUBuwkTO
 jbFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747381791; x=1747986591;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CrnOFlKOiaIsSunbziis9frT6dCEjHVD4kRVUNaM0c4=;
 b=uHkBqukiHXLKpRvVM4yol6pg1+vsFux0RWMX/Z3rAO13EVulUt2+A2exnjYqEFhNuv
 TzETrNTYhNxb/m5Brw0TOpGQzbxNJKl0loRDSqYvnCg2dMI/7hFMMExTtP3grZwaZTBC
 hfSbw4IfFCEtVu+YMsA89/Mwhu5+kmn1ntuXfOO2fP7YOnuEsdbCSzfQcU3dYWY5VhED
 JOL2v3b/foAGuQHBRikQZ4P/Gm41dcF1b/Z2u+Xvd+hHo0cdY7xKtw8DH20DW6xERm9g
 5d1IKFzsirAooaU7gYWgVX9LNTqmVJb+LGkBzATZK8N3LYdsmtP8EFtx6fYhijPVLlau
 zxXQ==
X-Gm-Message-State: AOJu0YzwN+566h/9JAD/XjsWQqhGPLbr7Bj8FnRNtf8JMpb/Wh0/Hbi6
 vHDCNNiqjqSSFaz/ArjU3vsvBIkOS5SkDMVawPKAT7E1ioKuYyIvagvRS1+rl9YvAZv5FGxWtZJ
 YBAYo93geCV4jN+RU+U3F6WvxxiBEnhVr1QKf
X-Gm-Gg: ASbGncsSZ9s0sxMDzxr4XYEGSElzn4h7Pw0BwgCLF/+E6t6rv9S/podP45avAKtox9e
 AyjBLJDkHyECBCKAA7hFp3uKadFiuQltE/S1Cw3jojgj5BKPeFV3WvNDsJt+MS4Zpf/GZa4vkwT
 yigTRb+SGT2TXQVNwjUclN4kJC+mMIVg==
X-Google-Smtp-Source: AGHT+IGXHZmDa+VOKxtAiONwwYHbjoJwEIqDyo/KCYqMvVySpf5J0laBbWbWzS7pkxZZzItPa3Ei5m3syDesbYhW3FI=
X-Received: by 2002:a05:690c:250a:b0:6fe:bfb9:b2f1 with SMTP id
 00721157ae682-70ca797b54fmr38497707b3.2.1747381790831; Fri, 16 May 2025
 00:49:50 -0700 (PDT)
MIME-Version: 1.0
References: <cc18915a-2fa9-43cd-aacb-507bf3a9765a.shan.wu@zstack.io>
In-Reply-To: <cc18915a-2fa9-43cd-aacb-507bf3a9765a.shan.wu@zstack.io>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 16 May 2025 08:49:38 +0100
X-Gm-Features: AX0GCFukk0YXL9aRzV964dQV1DEaskb2AJC94532I2SQBLRJ-dAS56skUh_bIaY
Message-ID: <CAHt6W4cdS5OpH7HPaC=-zvTOF_t4DZ2vpSK-X41uW-+NDoOZWg@mail.gmail.com>
Subject: Re: Connection port timeout
To: =?UTF-8?B?5ZC05bGx?= <shan.wu@zstack.io>
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="000000000000edfb4406353c0666"
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

--000000000000edfb4406353c0666
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 14, 2025 at 11:23=E2=80=AFPM =E5=90=B4=E5=B1=B1 <shan.wu@zstack=
.io> wrote:

>
> After executing the nc command twice, executing the nc command again time=
d
> out, and the netstat command showed that the server did not close the
> socket connection=EF=BC=9A
>
> [root@172-26-51-207 ~]# systemctl status usbredir-4100-003-002.service
> =E2=97=8F usbredir-4100-003-002.service - /sbin/usbredirserver -p 4100 00=
3-002
>   Loaded: loaded (/run/systemd/transient/usbredir-4100-003-002.service;
> transi>
> Transient: yes
>   Active: active (running) since Tue 2025-05-13 14:13:41 CST; 12min ago
> Main PID: 3864277 (usbredirserver)
>     Tasks: 2 (limit: 101063)
>   Memory: 608.0K
>   CGroup: /system.slice/usbredir-4100-003-002.service
>           =E2=94=94=E2=94=803864277 /sbin/usbredirserver -p 4100 003-002
> 5=E6=9C=88 13 14:13:41 172-26-51-207 systemd[1]: Started /sbin/usbredirse=
rver -p
> 4100 >
> 5=E6=9C=88 13 14:13:45 172-26-51-207 usbredirserver[3864277]: usbredirpar=
ser: Peer
> ver>
>
> [root@172-26-51-207 ~]# rpm -qa | grep usb
> qemu-kvm-hw-usbredir-6.2.0-232.g09252161d1.el8.x86_64
> usbredir-0.12.0-2.el8.x86_64
> libusbx-1.0.23-4.el8.x86_64
> usbutils-010-3.el8.x86_64
> usbredir-server-0.12.0-2.el8.x86_64
> libgusb-0.3.0-1.el8.x86_64
> [root@172-26-51-207 ~]# nc -zv 172.26.51.207 4100
> Ncat: Version 7.70 ( https://nmap.org/ncat )
> Ncat: Connected to 172.26.51.207:4100.
> Ncat: 0 bytes sent, 0 bytes received in 0.01 seconds.
> [root@172-26-51-207 ~]# netstat -nap | grep 4100
> tcp        0      0 172.26.51.207:47988     172.26.51.207:4100
> FIN_WAIT2   -
> tcp6       1      0 :::4100                 :::*
> LISTEN      3864277/usbredirser
> tcp6       1      0 172.26.51.207:4100      172.26.51.207:47988
> CLOSE_WAIT  -
> tcp6       0      0 172.26.51.207:4100      172.26.51.230:58576
> ESTABLISHED 3864277/usbredirser
> [root@172-26-51-207 ~]# nc -zv 172.26.51.207 4100
> Ncat: Version 7.70 ( https://nmap.org/ncat )
> Ncat: Connected to 172.26.51.207:4100.
> Ncat: 0 bytes sent, 0 bytes received in 0.01 seconds.
> [root@172-26-51-207 ~]# netstat -nap | grep 4100
> tcp        0      0 172.26.51.207:47988     172.26.51.207:4100
> FIN_WAIT2   -
> tcp        0      0 172.26.51.207:33384     172.26.51.207:4100
> FIN_WAIT2   -
> tcp6       2      0 :::4100                 :::*
> LISTEN      3864277/usbredirser
> tcp6       1      0 172.26.51.207:4100      172.26.51.207:33384
> CLOSE_WAIT  -
> tcp6       1      0 172.26.51.207:4100      172.26.51.207:47988
> CLOSE_WAIT  -
> tcp6       0      0 172.26.51.207:4100      172.26.51.230:58576
> ESTABLISHED 3864277/usbredirser
> [root@172-26-51-207 ~]# nc -zv 172.26.51.207 4100
> Ncat: Version 7.70 ( https://nmap.org/ncat )
> Ncat: Connection timed out.
>
> It looks like you are testing from the same host but you already have a
connection from a remote host.
This should not happen if you don't already have external connections.


> =E6=AD=A4=E4=BF=A1=E4=BB=B6=E5=8C=85=E5=90=AB=E4=BF=9D=E5=AF=86=E4=BF=A1=
=E6=81=AF=EF=BC=8C=E8=AF=B7=E6=94=B6=E4=BB=B6=E4=BA=BA=E4=BA=88=E4=BB=A5=E4=
=BF=9D=E5=AF=86=EF=BC=8C=E6=9C=AA=E7=BB=8F=E8=AE=B8=E5=8F=AF=EF=BC=8C=E8=AF=
=B7=E5=8B=BF=E5=90=91=E7=AC=AC=E4=B8=89=E4=BA=BA=E6=8A=AB=E9=9C=B2=EF=BC=8C=
=E8=B0=A2=E8=B0=A2=E3=80=82
>
> This letter contains confidential information which is requested to be ke=
pt confidential by the recipient and shall not be disclosed to any third pa=
rty without permission. Thank you.
>
>
Do you realize that if this is true you are violating corporate policies,
right?

Frediano

--000000000000edfb4406353c0666
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, May 14, 2025 at 11:23=E2=80=AFPM =E5=
=90=B4=E5=B1=B1 &lt;<a href=3D"mailto:shan.wu@zstack.io">shan.wu@zstack.io<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div><div style=3D"font-family:Tahoma,Arial,STHeitiSC-Light,SimSun"><div sty=
le=3D"clear:both;font-family:Tahoma,Arial,STHeitiSC-Light,SimSun"><span><sp=
an><br></span></span></div><div style=3D"clear:both;font-family:Tahoma,Aria=
l,STHeitiSC-Light,SimSun"><span><span>After executing the nc command twice,=
 executing the nc command again timed out, and the netstat command showed t=
hat the server did not close the socket connection=EF=BC=9A</span></span></=
div><div style=3D"clear:both;font-family:Tahoma,Arial,STHeitiSC-Light,SimSu=
n"><span><br></span></div><div style=3D"clear:both;font-family:Tahoma,Arial=
,STHeitiSC-Light,SimSun"><span><span>[root@172-26-51-207 ~]# systemctl stat=
us usbredir-4100-003-002.service </span></span><div style=3D"clear:both">=
=E2=97=8F usbredir-4100-003-002.service - /sbin/usbredirserver -p 4100 003-=
002</div><div style=3D"clear:both"> =C2=A0 Loaded: loaded (/run/systemd/tra=
nsient/usbredir-4100-003-002.service; transi&gt;</div><div style=3D"clear:b=
oth">Transient: yes</div><div style=3D"clear:both"> =C2=A0 Active: active (=
running) since Tue 2025-05-13 14:13:41 CST; 12min ago</div><div style=3D"cl=
ear:both"> Main PID: 3864277 (usbredirserver)</div><div style=3D"clear:both=
">=C2=A0 =C2=A0 Tasks: 2 (limit: 101063)</div><div style=3D"clear:both"> =
=C2=A0 Memory: 608.0K</div><div style=3D"clear:both"> =C2=A0 CGroup: /syste=
m.slice/usbredir-4100-003-002.service</div><div style=3D"clear:both"> =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=803864277 /sbin/usbredirser=
ver -p 4100 003-002</div><div style=3D"clear:both">5=E6=9C=88 13 14:13:41 1=
72-26-51-207 systemd[1]: Started /sbin/usbredirserver -p 4100 &gt;</div><di=
v><span>5=E6=9C=88 13 14:13:45 172-26-51-207 usbredirserver[3864277]: usbre=
dirparser: Peer ver&gt;</span></div><div><span><br></span></div></div><div =
style=3D"clear:both;font-family:Tahoma,Arial,STHeitiSC-Light,SimSun"><span>=
<span>[root@172-26-51-207 ~]# rpm -qa | grep usb</span></span><div style=3D=
"clear:both">qemu-kvm-hw-usbredir-6.2.0-232.g09252161d1.el8.x86_64</div><di=
v style=3D"clear:both">usbredir-0.12.0-2.el8.x86_64</div><div style=3D"clea=
r:both">libusbx-1.0.23-4.el8.x86_64</div><div style=3D"clear:both">usbutils=
-010-3.el8.x86_64</div><div style=3D"clear:both">usbredir-server-0.12.0-2.e=
l8.x86_64</div><div style=3D"clear:both">libgusb-0.3.0-1.el8.x86_64</div><d=
iv style=3D"clear:both">[root@172-26-51-207 ~]# nc -zv 172.26.51.207 4100</=
div><div style=3D"clear:both">Ncat: Version 7.70 ( <a href=3D"https://nmap.=
org/ncat" target=3D"_blank">https://nmap.org/ncat</a> )</div><div style=3D"=
clear:both">Ncat: Connected to <a href=3D"http://172.26.51.207:4100" target=
=3D"_blank">172.26.51.207:4100</a>.</div><div style=3D"clear:both">Ncat: 0 =
bytes sent, 0 bytes received in 0.01 seconds.</div><div style=3D"clear:both=
">[root@172-26-51-207 ~]# netstat -nap | grep 4100</div><div style=3D"clear=
:both">tcp=C2=A0 =C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 <a href=3D"ht=
tp://172.26.51.207:47988" target=3D"_blank">172.26.51.207:47988</a> =C2=A0 =
=C2=A0 <a href=3D"http://172.26.51.207:4100" target=3D"_blank">172.26.51.20=
7:4100</a>=C2=A0 =C2=A0 =C2=A0 FIN_WAIT2 =C2=A0 - =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 </div><div style=3D"clear:both">tcp6=
 =C2=A0 =C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 0 :::4100 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :::*=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LISTEN=C2=A0 =C2=A0 =C2=A0 3864277/usbre=
dirser </div><div style=3D"clear:both">tcp6 =C2=A0 =C2=A0 =C2=A0 1=C2=A0 =
=C2=A0 =C2=A0 0 <a href=3D"http://172.26.51.207:4100" target=3D"_blank">172=
.26.51.207:4100</a>=C2=A0 =C2=A0 =C2=A0 <a href=3D"http://172.26.51.207:479=
88" target=3D"_blank">172.26.51.207:47988</a> =C2=A0 =C2=A0 CLOSE_WAIT=C2=
=A0 - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 </div>=
<div style=3D"clear:both">tcp6 =C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=
 <a href=3D"http://172.26.51.207:4100" target=3D"_blank">172.26.51.207:4100=
</a>=C2=A0 =C2=A0 =C2=A0 <a href=3D"http://172.26.51.230:58576" target=3D"_=
blank">172.26.51.230:58576</a> =C2=A0 =C2=A0 ESTABLISHED 3864277/usbredirse=
r </div><div style=3D"clear:both">[root@172-26-51-207 ~]# nc -zv 172.26.51.=
207 4100</div><div style=3D"clear:both">Ncat: Version 7.70 ( <a href=3D"htt=
ps://nmap.org/ncat" target=3D"_blank">https://nmap.org/ncat</a> )</div><div=
 style=3D"clear:both">Ncat: Connected to <a href=3D"http://172.26.51.207:41=
00" target=3D"_blank">172.26.51.207:4100</a>.</div><div style=3D"clear:both=
">Ncat: 0 bytes sent, 0 bytes received in 0.01 seconds.</div><div style=3D"=
clear:both">[root@172-26-51-207 ~]# netstat -nap | grep 4100</div><div styl=
e=3D"clear:both">tcp=C2=A0 =C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 <a =
href=3D"http://172.26.51.207:47988" target=3D"_blank">172.26.51.207:47988</=
a> =C2=A0 =C2=A0 <a href=3D"http://172.26.51.207:4100" target=3D"_blank">17=
2.26.51.207:4100</a>=C2=A0 =C2=A0 =C2=A0 FIN_WAIT2 =C2=A0 - =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 </div><div style=3D"clear:=
both">tcp=C2=A0 =C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 <a href=3D"htt=
p://172.26.51.207:33384" target=3D"_blank">172.26.51.207:33384</a> =C2=A0 =
=C2=A0 <a href=3D"http://172.26.51.207:4100" target=3D"_blank">172.26.51.20=
7:4100</a>=C2=A0 =C2=A0 =C2=A0 FIN_WAIT2 =C2=A0 - =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 </div><div style=3D"clear:both">tcp6=
 =C2=A0 =C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A0 0 :::4100 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 :::*=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LISTEN=C2=A0 =C2=A0 =C2=A0 3864277/usbre=
dirser </div><div style=3D"clear:both">tcp6 =C2=A0 =C2=A0 =C2=A0 1=C2=A0 =
=C2=A0 =C2=A0 0 <a href=3D"http://172.26.51.207:4100" target=3D"_blank">172=
.26.51.207:4100</a>=C2=A0 =C2=A0 =C2=A0 <a href=3D"http://172.26.51.207:333=
84" target=3D"_blank">172.26.51.207:33384</a> =C2=A0 =C2=A0 CLOSE_WAIT=C2=
=A0 - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 </div>=
<div style=3D"clear:both">tcp6 =C2=A0 =C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A0 0=
 <a href=3D"http://172.26.51.207:4100" target=3D"_blank">172.26.51.207:4100=
</a>=C2=A0 =C2=A0 =C2=A0 <a href=3D"http://172.26.51.207:47988" target=3D"_=
blank">172.26.51.207:47988</a> =C2=A0 =C2=A0 CLOSE_WAIT=C2=A0 - =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 </div><div style=3D"cl=
ear:both">tcp6 =C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 <a href=3D"http=
://172.26.51.207:4100" target=3D"_blank">172.26.51.207:4100</a>=C2=A0 =C2=
=A0 =C2=A0 <a href=3D"http://172.26.51.230:58576" target=3D"_blank">172.26.=
51.230:58576</a> =C2=A0 =C2=A0 ESTABLISHED 3864277/usbredirser </div><div s=
tyle=3D"clear:both">[root@172-26-51-207 ~]# nc -zv 172.26.51.207 4100</div>=
<div style=3D"clear:both">Ncat: Version 7.70 ( <a href=3D"https://nmap.org/=
ncat" target=3D"_blank">https://nmap.org/ncat</a> )</div><div><span>Ncat: C=
onnection timed out.</span></div><span><br></span></div></div></div></block=
quote><div>It looks like you are testing from the same host but you already=
 have a connection from a remote host.</div><div>This should not happen if =
you don&#39;t already have external connections.</div><div>=C2=A0</div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"font-famil=
y:Tahoma,Arial,STHeitiSC-Light,SimSun"><div style=3D"clear:both;font-family=
:Tahoma,Arial,STHeitiSC-Light,SimSun"><span></span></div></div></div>
<p style=3D"text-align:left;text-indent:0px;margin-left:0px;margin-top:0px;=
margin-bottom:0px"><span style=3D"color:rgb(165,165,165);font-family:&quot;=
microsoft yahei&quot;,&quot;microsoft yahei&quot;,&quot;microsoft yahei&quo=
t;,&quot;microsoft yahei&quot;">=E6=AD=A4=E4=BF=A1=E4=BB=B6=E5=8C=85=E5=90=
=AB=E4=BF=9D=E5=AF=86=E4=BF=A1=E6=81=AF=EF=BC=8C=E8=AF=B7=E6=94=B6=E4=BB=B6=
=E4=BA=BA=E4=BA=88=E4=BB=A5=E4=BF=9D=E5=AF=86=EF=BC=8C=E6=9C=AA=E7=BB=8F=E8=
=AE=B8=E5=8F=AF=EF=BC=8C=E8=AF=B7=E5=8B=BF=E5=90=91=E7=AC=AC=E4=B8=89=E4=BA=
=BA=E6=8A=AB=E9=9C=B2=EF=BC=8C=E8=B0=A2=E8=B0=A2=E3=80=82</span><br></p><di=
v style=3D"text-align:left;text-indent:0px;margin-left:0px;margin-top:0px;m=
argin-bottom:0px;line-height:1.5em"><span style=3D"color:rgb(165,165,165);b=
ackground-color:rgb(255,255,255);font-family:&quot;times new roman&quot;;fo=
nt-size:14px">This=C2=A0letter=C2=A0contains=C2=A0confidential=C2=A0informa=
tion=C2=A0which=C2=A0is=C2=A0requested=C2=A0to=C2=A0be=C2=A0kept=C2=A0confi=
dential=C2=A0by=C2=A0the=C2=A0recipient=C2=A0and=C2=A0shall=C2=A0not=C2=A0b=
e=C2=A0disclosed=C2=A0to=C2=A0any=C2=A0third=C2=A0party=C2=A0without=C2=A0p=
ermission.=C2=A0Thank=C2=A0you.</span></div><div style=3D"clear:both"><br><=
/div></blockquote><div><br></div><div>Do you realize that if this is true y=
ou are violating corporate policies, right?</div><div><br></div><div>Fredia=
no <br></div></div></div>

--000000000000edfb4406353c0666--
