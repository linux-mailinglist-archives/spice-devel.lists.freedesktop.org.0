Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD11AE1DE
	for <lists+spice-devel@lfdr.de>; Tue, 10 Sep 2019 03:19:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B2E689C89;
	Tue, 10 Sep 2019 01:19:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8408A89CAD
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 00:28:35 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id f2so8743073edw.3
 for <spice-devel@lists.freedesktop.org>; Mon, 09 Sep 2019 17:28:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=jjFzACf4uPrKVceb+hzOWLEkDmaBmMMoxBZhKY4kfy8=;
 b=p4p6OnJ6W0yj8et0kalgTnDjZLfDF8rMPBx5WYRdGTQcQc7c9xMCR8G/0xW6fQPv3i
 wg5BZrBWKFHUDG0E7Gro52Ob0DC7vn8osGvDOyLxr4oLS6PKoAwiYTBqi1JSOKaOrY6y
 GBnRWX1gzOIhliQ9oDaA/SybISWjB/54VQlJBwgtjtZ0GFrPE6GkK5mShmvUIjG0lmUp
 xVyDjkg9cOHTBusasD3P/1Eqq+glkHoj1HYEIR3IHLcY2aLQXD7HRf65oWEoESY9vkT8
 z5BUspFbBtTRMK8ANti1vZAUsLNUntc5Qp0YU/qHsprko332FE7MpO4LReHyL7Wa480o
 BwbA==
X-Gm-Message-State: APjAAAUXXRJqAJT5PkGSqs4wGyxWSp/cH/w102hsITngpzeOu8xUXTnJ
 FOS3HXkgebiIFQPrErWdBrjippAbeYcAjnSJ95nbvqEIoow=
X-Google-Smtp-Source: APXvYqyW6PXjd+dokx7kVLfkGf27ZtazXvMfUm7E1GTUIai0Q3bmxbqzzO+alYvUL6gaWtVw5O5P/+pCR2nZguyPEbg=
X-Received: by 2002:a17:906:6b0f:: with SMTP id
 q15mr21898242ejr.200.1568075313811; 
 Mon, 09 Sep 2019 17:28:33 -0700 (PDT)
MIME-Version: 1.0
From: Rafael de Almeida <rafaelrdealmeida@gmail.com>
Date: Mon, 9 Sep 2019 21:28:22 -0300
Message-ID: <CAOnjVuo6XYni=KF1miXKET8oma7ixB2jLc6-OvfDUw3czr_tdA@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Tue, 10 Sep 2019 01:19:10 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=jjFzACf4uPrKVceb+hzOWLEkDmaBmMMoxBZhKY4kfy8=;
 b=gEmP/ZfGcLmsi55eEofo/RJmN47qWLAQmldgqOHDuZlblDvp6E/x6leBulie/y2VtM
 IqXNa5wC4NFUfdQ5DtdTeRbRo+UMjo7ogdX2YvXuV7QncgmDGTrvRw2vPz/yiRs0+eF7
 OzTcHQFfBi/keWNPCNcCEnQGTm8g4rxbzV1hZy8+dZ8/8hy9UEgJCwDoeA2EvcxbzYdv
 upQX+CN5OqjCXXB91Sn8KlRZPR7NLqKlVJrzi8gi6N+qSHR/b4Dd3OffbPrf7kI5eXME
 MVaMDjNzzm8hppXurYITnES7jFckrivqJvZW9d5B6AMg+3XzW6i5GEIXyHLVpvRaLak5
 bbbw==
Subject: [Spice-devel] proxmox spice - control video and audio compression
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1971288391=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1971288391==
Content-Type: multipart/alternative; boundary="0000000000000f95cb059227fc5a"

--0000000000000f95cb059227fc5a
Content-Type: text/plain; charset="UTF-8"

Hello,

We use x2go and chrome remote desktop for VDI on the virtual machines that
are on proxmox.

We recently started using spice to access webcam through weaker computers
(dualcore processors) that don't support good quality video conferencing.


Everything is working perfectly (audio and image), but I believe there has
been a high compression in the spice that causes a slight delay in sending
video and audio.

The network has hardly any more significant use even with video sending.

How can I control compression? How do I deduce or disable compression in vm
proxmox?

best

--0000000000000f95cb059227fc5a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(25,30,30);font-family:&quot;Open =
Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxy=
gen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Hel=
vetica Neue&quot;,sans-serif;font-size:14px">Hello,</span><br style=3D"box-=
sizing:border-box;color:rgb(25,30,30);font-family:&quot;Open Sans&quot;,Rob=
oto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Can=
tarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&qu=
ot;,sans-serif;font-size:14px"><br style=3D"box-sizing:border-box;color:rgb=
(25,30,30);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacS=
ystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot=
;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:14=
px"><span style=3D"color:rgb(25,30,30);font-family:&quot;Open Sans&quot;,Ro=
boto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Ca=
ntarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&q=
uot;,sans-serif;font-size:14px">We use x2go and chrome remote desktop for V=
DI on the virtual machines that are on proxmox.</span><br style=3D"box-sizi=
ng:border-box;color:rgb(25,30,30);font-family:&quot;Open Sans&quot;,Roboto,=
-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantare=
ll,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,=
sans-serif;font-size:14px"><br style=3D"box-sizing:border-box;color:rgb(25,=
30,30);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSyste=
mFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&q=
uot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:14px">=
<span style=3D"color:rgb(25,30,30);font-family:&quot;Open Sans&quot;,Roboto=
,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantar=
ell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;=
,sans-serif;font-size:14px">We recently started using spice to access webca=
m through weaker computers (dualcore processors) that don&#39;t support goo=
d quality video conferencing.</span><br style=3D"box-sizing:border-box;colo=
r:rgb(25,30,30);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,Blin=
kMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans=
&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-si=
ze:14px"><br style=3D"box-sizing:border-box;color:rgb(25,30,30);font-family=
:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe =
UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quo=
t;,&quot;Helvetica Neue&quot;,sans-serif;font-size:14px"><br style=3D"box-s=
izing:border-box;color:rgb(25,30,30);font-family:&quot;Open Sans&quot;,Robo=
to,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cant=
arell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quo=
t;,sans-serif;font-size:14px"><span style=3D"color:rgb(25,30,30);font-famil=
y:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe=
 UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&qu=
ot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:14px">Everything is wor=
king perfectly (audio and image), but I believe there has been a high compr=
ession in the spice that causes a slight delay in sending video and audio.<=
/span><br style=3D"box-sizing:border-box;color:rgb(25,30,30);font-family:&q=
uot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&=
quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,=
&quot;Helvetica Neue&quot;,sans-serif;font-size:14px"><br style=3D"box-sizi=
ng:border-box;color:rgb(25,30,30);font-family:&quot;Open Sans&quot;,Roboto,=
-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantare=
ll,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,=
sans-serif;font-size:14px"><span style=3D"color:rgb(25,30,30);font-family:&=
quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI=
&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;=
,&quot;Helvetica Neue&quot;,sans-serif;font-size:14px">The network has hard=
ly any more significant use even with video sending.</span><br style=3D"box=
-sizing:border-box;color:rgb(25,30,30);font-family:&quot;Open Sans&quot;,Ro=
boto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Ca=
ntarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&q=
uot;,sans-serif;font-size:14px"><br style=3D"box-sizing:border-box;color:rg=
b(25,30,30);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMac=
SystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quo=
t;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:1=
4px"><span style=3D"color:rgb(25,30,30);font-family:&quot;Open Sans&quot;,R=
oboto,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,C=
antarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&=
quot;,sans-serif;font-size:14px">How can I control compression? How do I de=
duce or disable compression in vm proxmox?</span><br style=3D"box-sizing:bo=
rder-box;color:rgb(25,30,30);font-family:&quot;Open Sans&quot;,Roboto,-appl=
e-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&q=
uot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-=
serif;font-size:14px"><br style=3D"box-sizing:border-box;color:rgb(25,30,30=
);font-family:&quot;Open Sans&quot;,Roboto,-apple-system,BlinkMacSystemFont=
,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;D=
roid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:14px"><span=
 style=3D"color:rgb(25,30,30);font-family:&quot;Open Sans&quot;,Roboto,-app=
le-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Oxygen,Ubuntu,Cantarell,&=
quot;Fira Sans&quot;,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans=
-serif;font-size:14px">best</span><br></div>

--0000000000000f95cb059227fc5a--

--===============1971288391==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1971288391==--
