Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E0C9380BB
	for <lists+spice-devel@lfdr.de>; Sat, 20 Jul 2024 12:32:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53C2310E118;
	Sat, 20 Jul 2024 10:32:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TvNWNhRA";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com
 [209.85.160.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C895910EC9E
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Jul 2024 19:04:09 +0000 (UTC)
Received: by mail-oa1-f50.google.com with SMTP id
 586e51a60fabf-260fff38792so903800fac.1
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Jul 2024 12:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1721415848; x=1722020648; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=rnmaqcSEHvOgKekrD/2/0DTHH4qNEp+UlT5L+oep46Y=;
 b=TvNWNhRAmaYWXIPuwQfM7lX6/f4iTXgDJ/C5XILnpbIFyoRT4EhGsND0mfpkhRWqfU
 WxzeD49gcN4bQxzxZMzFc+ovwrX7sj8SxP1h2l34ZmgwB84fFJaBVSe83VhBy442iFJo
 /GwmIH9N4ElynYIMqMytCUftYHU3HmoRQ+yAbpl5xF7SVn2P8wprBdT5XursTZ32oupx
 HpTSFVuUf/yZOCfUvmZwEQzL82VRMCzFCMoPuaBMiGAMJE71AXKo82usKpzn5gkywmrt
 aXASxCazllIpJ+n2+t7nal7rXLEAJpuBRtJ4fuCd3ZkVaTlWc4l/7BKJyPIbpIg7lA+R
 edTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721415848; x=1722020648;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=rnmaqcSEHvOgKekrD/2/0DTHH4qNEp+UlT5L+oep46Y=;
 b=KrL1KhtczjPa7gOilqvCe7ZAFxw2Wd+8Yp8Iz0373kIfTs4XVAOq0favCfMQs0mDhr
 8PuISYKi6jK/xNEu8TdkimGRA3v+JWMOelrbw/4LdKkk/Jb/3aCU1BQ3+WWDscAVCVoq
 vBtmSIe0A7VvNSH7E8MKw/3rCunAjSjWTG78TBqWvdwGt9wgk7bd1Z4llEKS2TU/EyIo
 jwET4r2GsC98/Da8CWoE7rDo3QRmPwJlqupEKIy9/zvmXxdT7TcOvCiqDJvyZmF58jhV
 CeFzm3EL74wmzEtLEsrfTZXvcapd1AnYbNKGbeBkJhQWnncG2vj+fEOvMK2T6VeTJvev
 UJxg==
X-Gm-Message-State: AOJu0Yzwpp+RJiR1unh7MHwrxFQsAUAD0lhI+X87fBXCNPUTg8CAVJ5j
 4Xm5BYdwzl5e1EOh6XaMLgonAHdcTL4YlJYnt8XKwt87NPVaOZnrxJb5iZ2YpHyAhdEZ+es4+mI
 SdB7sjT8DkHaz08miZeEU5VI7ScmUew==
X-Google-Smtp-Source: AGHT+IGS6Al7qQSGrWkOCcIKQTJnFvjQ/w3x4ORfhh0VVZN4/VmPJP4xMR5aNHeIDW9oMiBFZwrZYdVIjKZGUWLlzTI=
X-Received: by 2002:a05:6871:3a23:b0:261:236c:2bc0 with SMTP id
 586e51a60fabf-261236c74e7mr292417fac.13.1721415847928; Fri, 19 Jul 2024
 12:04:07 -0700 (PDT)
MIME-Version: 1.0
From: David Counter <davidjcounter@gmail.com>
Date: Fri, 19 Jul 2024 15:03:56 -0400
Message-ID: <CAAkeHDZcCEOUdJpijZ9HmZFGtDSsGFumUUhLqkzKi2PBTqvKBA@mail.gmail.com>
Subject: Question regarding suitability of Spice for my workplace
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000206ae6061d9e5c8a"
X-Mailman-Approved-At: Sat, 20 Jul 2024 10:32:42 +0000
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

--000000000000206ae6061d9e5c8a
Content-Type: text/plain; charset="UTF-8"

Good Afternoon

Quick question - is it possible to stream video from two separate sources
to two instances of the Spice client program on the desktop of a thin
client? I'm looking to display Windows and Linux concurrently on two
monitors attached to my Wyse 5070.

Thanks in advance,

David Counter

Systems Support Technician | Union County Emergency Services

C: (941) 953-6282
E: davidjcounter@gmail.com

--000000000000206ae6061d9e5c8a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Good Afternoon</div><div class=3D"gmail_default" style=3D"font-=
family:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"=
font-family:verdana,sans-serif">Quick question - is it possible to stream v=
ideo from two separate sources to two instances of the Spice client program=
 on the desktop of a thin client? I&#39;m looking to display Windows and Li=
nux concurrently on two monitors attached to my Wyse 5070.</div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div =
class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">Thanks in =
advance,</div><div class=3D"gmail_default" style=3D"font-family:verdana,san=
s-serif"><br></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-sma=
rtmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div><div><div=
>David Counter<br></div></div></div><div><br></div><div>Systems Support Tec=
hnician | Union County Emergency Services=C2=A0</div><div><br></div><div>C:=
 (941) 953-6282</div><div>E: <a href=3D"mailto:davidjcounter@gmail.com" tar=
get=3D"_blank">davidjcounter@gmail.com</a></div></div></div></div></div></d=
iv>

--000000000000206ae6061d9e5c8a--
