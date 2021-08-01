Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 452943DCC35
	for <lists+spice-devel@lfdr.de>; Sun,  1 Aug 2021 17:07:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B8D6E02E;
	Sun,  1 Aug 2021 15:07:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A6A56E02E
 for <spice-devel@lists.freedesktop.org>; Sun,  1 Aug 2021 15:07:18 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id mt6so21985090pjb.1
 for <spice-devel@lists.freedesktop.org>; Sun, 01 Aug 2021 08:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=d/A+zIIaR1jT33SLiK5TQ4gv/itZC39N1fCQXvyLA3E=;
 b=I3GePHYMYu7r60EeBMKigZond2ZYsytqiWu2MrSycCe+UKIghQKbqq2iwRTzURmzxi
 a1rYHIWG6Csa1gwOg19timQh/Jbw54ckxVJits4ZK9sWtsO/exwapJqIgVHn/VH+Yzk0
 aEXb8tBunW2HKq7hMl5IePkR7Uy+AoF/r4UwVxY92SKL3ObitoM4avHfU6xTwEjx0eOT
 ToMWvv69WSxChajtKT4Ccx2KjYkWus0f38SKTcWJsOCZze8pESeGhqrzDJP5oWCXnYyw
 sjaAUpuDoB4gBBJAB1x29B8JQapUuemx3DsCx842874HserjI7bdRTQVbTIiGyu2AUfT
 q5aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=d/A+zIIaR1jT33SLiK5TQ4gv/itZC39N1fCQXvyLA3E=;
 b=AsTvLXKDAYuY92UPylZ/azRnX2E5mZK35WcSrNSKtE6kW9yFYDYzyHrjB5456mojTN
 wfu39tgdFcWgwdMHg784mZgQyAike25PrlU02egOafTcExJQa4KngqFudoaA9VK6/x8G
 JCL1x70O/4W/j2xHWG3tAhmrsSp3xRYDsFBOcKzSbio+U5LI5NA2cf8cEjT8ardbMbz+
 D1T1C5rpZi+05jHf14tNBVfy57BNnITE/Sq0GPXKkUZr8aTNVI0EUMr/FJFo6LsebiED
 OQBkcRWBq+M+rqh06FRInV3l1QVlgYJVYLw8LTiatF8c3nnsH7gHjtlR1FQZCQhPyLcS
 SOYA==
X-Gm-Message-State: AOAM532ckbgDxzrYxjYSXHB02GwP3Guaj/cetWXPkffpae3e1oj0Yul5
 6BBSOKoNkm3PaCqdl56y3UwotkBq5NAqxkiMJDyJ8mqJAgZcLA==
X-Google-Smtp-Source: ABdhPJyX/yKpQnHF5OQXoCyqvURWV/s++G0IYJD1WqWtgQuzg3qhhIxxkncfMf4V/RnW0XbZ+jharI66b2KERhQltcE=
X-Received: by 2002:a17:902:a709:b029:12c:a48f:7f35 with SMTP id
 w9-20020a170902a709b029012ca48f7f35mr5219773plq.20.1627830437821; Sun, 01 Aug
 2021 08:07:17 -0700 (PDT)
MIME-Version: 1.0
From: Dunrong Huang <riegamaths@gmail.com>
Date: Sun, 1 Aug 2021 23:07:06 +0800
Message-ID: <CAOZVR5b9jnEY60tHyY5KBiZDyh7SG1z+RHrYfe3mWsFoDebWcg@mail.gmail.com>
To: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="0000000000000040e505c880cf8f"
Subject: [Spice-devel] winspice: a windows spice server similar to x11spice
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

--0000000000000040e505c880cf8f
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

Inspired by x11spice, i developed winspice, which provides windows remote
desktop access using the spice protocol.

The source code is here:
  https://github.com/mathslinux/winspice

Compiled binary file and related dll dependencies are here:
https://github.com/mathslinux/winspice/releases/download/0.0.1-pre/winspice.zip

The README file introduces some details of compiling and running.

Because i use windows DXGI interface to get the display data, winspice
currently only supports windows 8 and above.

I have just started this project, and there are still many imperfections,
such as no configurable ui interface, no sound support, and so on. If
anyone can try this project and give me some feedback, I will be very happy.

-- 
Best Regards,

Dunrong Huang

--0000000000000040e505c880cf8f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello everyone,<br><br>Inspired by x11spice, i develo=
ped winspice, which provides windows remote desktop access using the spice =
protocol. <br><br>The source code is here:<br>=C2=A0 <a href=3D"https://git=
hub.com/mathslinux/winspice">https://github.com/mathslinux/winspice</a><br>=
<br>Compiled binary file and related dll dependencies are here:<br><a href=
=3D"https://github.com/mathslinux/winspice/releases/download/0.0.1-pre/wins=
pice.zip">https://github.com/mathslinux/winspice/releases/download/0.0.1-pr=
e/winspice.zip</a><br><br>The README file introduces some details of compil=
ing and running.<br><br>Because i use windows DXGI interface to get the dis=
play data, winspice currently only supports windows 8 and above.<br><br>I h=
ave just started this project, and there are still many imperfections, such=
 as no configurable ui interface, no sound support, and so on. If anyone ca=
n try this project and give me some feedback, I will be very happy.<br><br>=
</div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"g=
mail_signature"><div dir=3D"ltr">Best Regards,<div><br>Dunrong Huang=C2=A0<=
div><div><br></div></div></div></div></div></div>

--0000000000000040e505c880cf8f--
