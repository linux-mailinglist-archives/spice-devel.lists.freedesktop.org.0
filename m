Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B51331D2A07
	for <lists+spice-devel@lfdr.de>; Thu, 14 May 2020 10:27:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A97689E59;
	Thu, 14 May 2020 08:27:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C128E6E157
 for <spice-devel@lists.freedesktop.org>; Wed, 13 May 2020 22:38:41 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id y3so1482664wrt.1
 for <spice-devel@lists.freedesktop.org>; Wed, 13 May 2020 15:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:message-id:subject:mime-version;
 bh=Wsxlu2k84QXr08eDUQZS5Etmc/J0rvPjQN8WS0bAHoc=;
 b=bhh8UTpiI0xlhxBAFLrohmiw3dagcgMpMgoQhDf4EBD2u9SzLK3gKXfmxNiA0p3EsQ
 4OCDYgsUqTkfQ75WiirdeyB+HRPebIUT2xX/1yKDOfgNhRyr3AV9eJ3/SAAtHmP2ljK2
 Yq0Zb7Kq0RFAphqavHdgtOvpiN4D2a2LVdsBI6+x9rYgz7WWihy3lae7MoCqceMxo27c
 V/6BKOcUMwMoz3vQzaq2DBNYXXm78V8Knl+iWnuUo+OG5f9/qZWU1hdqiT7rN3iGFyBm
 +SSKl8+VmaNayLXQFAyZ57an80hVs4yS6ZKVjcteIV6XzPIWmH+zTcwgaqn8gwr9Kcm1
 1/hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:message-id:subject:mime-version;
 bh=Wsxlu2k84QXr08eDUQZS5Etmc/J0rvPjQN8WS0bAHoc=;
 b=YNoKHkeID5coTLovvpdGAjp80m+e0ZSjTktedBK8MVdOnu8d79ALVhXD2vSebpQkIv
 IaQsJ1r/kXLc+q84a0YYE4P5nJwpc/BjpSdvJQzs8Ubt5HAQSEJwl/lsMsSYO264l2QT
 8WVvh1QmZXo2DGI2Vjio/fBeJSi4yAlOmiT8byc/1wMtEfcQZVyA1IMQ44SM3VxhmGkb
 omke7cpB7mxGODIdkpLwbKvvK1KL7cjgEhkWhhH+J93UM419+LXdjFD8TqtbdnzQWpIY
 dZDMJAB1xdYvX+eLQmAuK2kEWdX0XaKVx4cnQIFRMB0onUCJotsDgB7HDOSlQngYA9Y+
 7jtw==
X-Gm-Message-State: AOAM533oNNfRg3HMaXkTUOVb3O44J/qMoJ1J629I6vKO2RwMZu2OYCUc
 GeM9FBS4w85uZvcHfu9rTUSySFPtlTA=
X-Google-Smtp-Source: ABdhPJw7gZzMjvAMPNJ1g+UgQvh7vK8xVzP7QbfnSrX2rcb66MazkLrMz7DlsCmnxFyNYQ+60ehK3A==
X-Received: by 2002:a5d:5642:: with SMTP id j2mr1747771wrw.52.1589409520218;
 Wed, 13 May 2020 15:38:40 -0700 (PDT)
Received: from melroy-pc (228-27-145-85.ftth.glasoperator.nl. [85.145.27.228])
 by smtp.gmail.com with ESMTPSA id
 u16sm1160369wrq.17.2020.05.13.15.38.39
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 13 May 2020 15:38:39 -0700 (PDT)
Date: Thu, 14 May 2020 00:38:38 +0200
From: Melroy van den Berg <webmaster1989@gmail.com>
To: "=?utf-8?Q?spice-devel=40lists.freedesktop.org?="
 <spice-devel@lists.freedesktop.org>
Message-ID: <9FF76525-8C44-4C05-A238-2C0C3382A3D2@getmailspring.com>
X-Mailer: Mailspring
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 14 May 2020 08:27:53 +0000
Subject: [Spice-devel] Bug in qxl kernel driver (bpp)
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
Content-Type: multipart/mixed; boundary="===============1901037868=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1901037868==
Content-Type: multipart/alternative; boundary="5ebc76ee_675f203f_374e"

--5ebc76ee_675f203f_374e
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi folks,

The Xorg log is getting spammed with the following messages (I noticed I'm not the only one on the Internet):
> qxl_surface_create: Bad bpp: 1 (1)
> qxl_surface_create: Bad bpp: 1 (1)
> qxl_surface_create: Bad bpp: 1 (1)

I think this isn't nice for anyone. So I propose a fix in the driver around here:
https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/qxl/qxl_cmd.c#L396
A valid value of Bits per pixel (bpp aka Pixelmap) is often 24 (or 32 bit depth). Please try to play around with this, and see if you could make Xorg server happy again.
Thanks!
Regards,
Melroy van den Berg

--5ebc76ee_675f203f_374e
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Hi folks,</div><br><div>The Xorg log is getting spammed with the fol=
lowing messages (I noticed I'm not the only one on the Internet):</div><b=
lockquote>qxl=5Fsurface=5Fcreate: Bad bpp: 1 (1)</blockquote><blockquote>=
qxl=5Fsurface=5Fcreate: Bad bpp: 1 (1)</blockquote><blockquote>qxl=5Fsurf=
ace=5Fcreate: Bad bpp: 1 (1)</blockquote><br><div>I think this isn't nice=
 for anyone. So I propose a fix in the driver around here<span data-emoji=
-typing=3D=22true=22>:</span></div><div><a href=3D=22https://elixir.bootl=
in.com/linux/latest/source/drivers/gpu/drm/qxl/qxl=5Fcmd.c=23L396=22 titl=
e=3D=22https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/qxl=
/qxl=5Fcmd.c=23L396=22>https://elixir.bootlin.com/linux/latest/source/dri=
vers/gpu/drm/qxl/qxl=5Fcmd.c=23L396</a><br></div><div>A valid value of Bi=
ts per pixel (bpp aka Pixelmap) is often 24 (or 32 bit depth). Please try=
 to play around with this, and see if you could make Xorg server happy ag=
ain.</div><br><div>Thanks=21</div><br><div>Regards,</div><div>Melroy van =
den Berg<br></div><img class=3D=22mailspring-open=22 alt=3D=22Sent from M=
ailspring=22 width=3D=220=22 height=3D=220=22 style=3D=22border:0; width:=
0; height:0;=22 src=3D=22https://link.getmailspring.com/open/9=46=4676525=
-8C44-4C05-A238-2C0C3382A3D2=40getmailspring.com=3Fme=3Dc137ee54&amp;reci=
pient=3Dc3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn=22>
--5ebc76ee_675f203f_374e--


--===============1901037868==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1901037868==--

