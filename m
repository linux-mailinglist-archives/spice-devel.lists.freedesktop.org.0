Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C57FA292A54
	for <lists+spice-devel@lfdr.de>; Mon, 19 Oct 2020 17:25:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5927C6E9CE;
	Mon, 19 Oct 2020 15:25:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91A9F6E9F5
 for <spice-devel@lists.freedesktop.org>; Mon, 19 Oct 2020 15:14:48 +0000 (UTC)
Received: by mail-lj1-x22b.google.com with SMTP id a4so401183lji.12
 for <spice-devel@lists.freedesktop.org>; Mon, 19 Oct 2020 08:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=uu8+ou/P/9VA2YsYLaNj5OIipL6GXl1etV+1MpmAPyA=;
 b=hcZPRcodoF0pGakE7Jq0lAOjSHfHQyXj4VidCL5f3uMnlONr3XeVHt7psZ0letDlAv
 VOdCgG0Ubx5vPbPfw0x2dgycApLDnUNPq26IXV3m/cZ0ajpwgxMDigqd6Zv86L6XdcWb
 ta0nlqTM7KhXoXNg/WR0X6TiRufzlpzO+jcsMRVqdKjw+BDjIAMNJwsp/fWBFOXv4B2+
 f7Camyr5pKjCFlQGbBaNneCpH5BPgYZwt/6RbyqkNd7FuwHpqVK6RPzQ7uo73lLBmS1Y
 QVtJ9zqvmVGO+RSuUER4fmrW9MeKykwUXK8SHA0O3xOpiZUk/1R+9K9Xu1ntfkoTs71E
 GMsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=uu8+ou/P/9VA2YsYLaNj5OIipL6GXl1etV+1MpmAPyA=;
 b=RWWHfAWR9jNpLf0Kdh0xwKc3BldU8NRsqYjsw1Rohn8il7ql3Pab8OA28Fqu51fXdk
 E7VvG2UvhdI2FoLmty8FLJ/T5D8v3P82hhOjksvwW/kTTZ8wJxB0UOsqJsNKVM3jf6MJ
 zeSUgExClI5of62m8lbxDFnodGScwGJl1vbTL/THWG/1KjHiwheXh44qfHkyhTa6CGj3
 /NofRA+ngatr9+U9kvROWnNgbknYggfcXZjPz0HHbC2KDVxariZFCwEn9sOsnr5qhQnI
 PZMhmo3If5k30ZhYLVs40B66/sFCTkdEGKG1kO8t1zjf4Rl0AzZ8RO7fjApo/vBGtESA
 t3aA==
X-Gm-Message-State: AOAM530LocWNxTkVlRYxR2dB6Ugq0mvQ63UEE5rLT5ejohBGPEMcQ/OF
 Hd0cnx0WgggS5cdy06vp0U9lSz/jI/IrM0dgnNXsGXwgMyNA8A==
X-Google-Smtp-Source: ABdhPJy88hmjlKCs53JE6ZiiAY1kTCC/ri8gkvAlaPy2oPrWN5WxmDI3gIT/dTfad7WO61o3WH+0JhneWCLaNgC8Lpw=
X-Received: by 2002:a05:651c:1343:: with SMTP id
 j3mr212884ljb.336.1603120486645; 
 Mon, 19 Oct 2020 08:14:46 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?St=C3=A9phane_POGGI?= <sp200606@gmail.com>
Date: Mon, 19 Oct 2020 17:14:30 +0200
Message-ID: <CAKxfVUgc7zXBLnJuTCQX1q1d_nYb0qg2KRVb+4ZDUqhdczKong@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Mon, 19 Oct 2020 15:25:40 +0000
Subject: [Spice-devel] wMaxPacketSize
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
Content-Type: multipart/mixed; boundary="===============1881808700=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1881808700==
Content-Type: multipart/alternative; boundary="00000000000023845005b20793d4"

--00000000000023845005b20793d4
Content-Type: text/plain; charset="UTF-8"

Hello,

While trying to redirect USB Barco ClickShare, I get an error message :
GSpice-CRITICAL usbredirhost error received interrupt out packet is larger
than wMaxPacketSize

Is there a way to increase the wMaxPacketSize on QEMU ?

Host OS : Arch Linux (up-to-date)
Guest OS : Windows 10 (up-to-date)

Thanks a lot,
sp

--00000000000023845005b20793d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif;font-size:small">Hello,</div><div class=3D"gmail_default=
" style=3D"font-family:arial,helvetica,sans-serif;font-size:small"><br></di=
v><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-se=
rif;font-size:small">While trying to redirect USB Barco ClickShare, I get a=
n=C2=A0error message :</div><div class=3D"gmail_default" style=3D"font-fami=
ly:arial,helvetica,sans-serif;font-size:small">GSpice-CRITICAL usbredirhost=
 error received interrupt out packet is larger than wMaxPacketSize<br></div=
><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-ser=
if;font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-fa=
mily:arial,helvetica,sans-serif;font-size:small">Is there a way to increase=
 the wMaxPacketSize on QEMU ?</div><div class=3D"gmail_default" style=3D"fo=
nt-family:arial,helvetica,sans-serif;font-size:small"><br></div><div class=
=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif;font-siz=
e:small">Host OS : Arch Linux (up-to-date)</div><div class=3D"gmail_default=
" style=3D"font-family:arial,helvetica,sans-serif;font-size:small">Guest OS=
 : Windows 10 (up-to-date)</div><div class=3D"gmail_default" style=3D"font-=
family:arial,helvetica,sans-serif;font-size:small"><br></div><div class=3D"=
gmail_default" style=3D"font-family:arial,helvetica,sans-serif;font-size:sm=
all">Thanks a lot,</div><div class=3D"gmail_default" style=3D"font-family:a=
rial,helvetica,sans-serif;font-size:small">sp</div></div>

--00000000000023845005b20793d4--

--===============1881808700==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1881808700==--
