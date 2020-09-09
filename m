Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D24B262EA8
	for <lists+spice-devel@lfdr.de>; Wed,  9 Sep 2020 14:44:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0B8B894C3;
	Wed,  9 Sep 2020 12:44:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com
 [IPv6:2607:f8b0:4864:20::830])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6E4689191
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Sep 2020 12:42:26 +0000 (UTC)
Received: by mail-qt1-x830.google.com with SMTP id c18so1743199qtw.5
 for <spice-devel@lists.freedesktop.org>; Wed, 09 Sep 2020 05:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=JaMsyeJ+iWA80KnuU579f4XwqaZ6OgYtkOn+HaHqLEU=;
 b=L5h9/nruVLgcy+iDgyJyIBCM+baAdCZ3FjbjdCMnZbUnBirxLtqepUdKxdgg+m8nRD
 GDytXbKRiY0PksLF0QFPmFohl7nRy4JdJuo0ek8aACVGekIhvXtDGP6FwPkYSHFmBDxg
 2YqYjRB1+MbW/cCES56C3GmSl9tKus23Ef5JmP4C2r40LxP55a44MCrkoea66Y+qTzvs
 Lq1u8qoFV1TNh+gYzHD/n3pTKBA7qZPStTXscR3LbwJTGFstWIz7SScrt3Jvn/dG8Ec3
 na0ANY5SNgOfK9dpisDI/mGZCeFIhvcB+DSYGAJg1t1C1v1GqLRGGFLmna0jc+aywMB2
 liqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=JaMsyeJ+iWA80KnuU579f4XwqaZ6OgYtkOn+HaHqLEU=;
 b=ZXv0xo9Kfm+Z5LqWyWmduo2aehjGnOOGJy/Sxuv4mMNy09NasIRjPY4ZpiMVrtWufJ
 yA5xFxbmw3aLGHQW2pVgAaLga09xUGsEG5Fj5EP3wpDMhFZFjID+kWdJcWNP5HD84GvO
 6TqagtF5Fi+zdE7Xjd/iqdoPqr5rsZETmgL7MY7He0shJ1cX3IcKYUyeS5M/NMbsiD/J
 WL/tFONJ/AVLQEpaaiwLLAVwzYP8xl1PFEkFLVALv8rbJNeFKvPevStnH5kdp6RKENRL
 u9oHTwEeHdGW4iCz03xNUQQ4qsm+4wBTpTBS9+tNSE7f5oyK65mdU61f4zEvgz8G5mmh
 5nhw==
X-Gm-Message-State: AOAM5336n/sgaL9U2QG4DD59SrDUPrFiAH8NPXELyMTHvC9JTaw7ZHse
 2jpjBesBFmwZO2ryPut5GYOqw2vFiOBVPtYrhtQuVgDCxKk=
X-Google-Smtp-Source: ABdhPJx49cllXE5NCfe+48wscAqYnh3SiS/Z/EE5Pu3L1Xroydl7i+hVroiP/22ce4ysBPRJcsfxlOUUhq0LYMCWfv0=
X-Received: by 2002:ac8:ecb:: with SMTP id w11mr2863890qti.373.1599655345431; 
 Wed, 09 Sep 2020 05:42:25 -0700 (PDT)
MIME-Version: 1.0
From: Ding Fei <danix800@gmail.com>
Date: Wed, 9 Sep 2020 20:42:14 +0800
Message-ID: <CAPVVTEDBiN0KzDBZFBUNhKc3MydLUoOKiz0bS2-MtkdkenNqYg@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Wed, 09 Sep 2020 12:44:39 +0000
Subject: [Spice-devel] Is it a possible memory leak
 (spice-gtk/src/channel-display.c)?
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
Content-Type: multipart/mixed; boundary="===============1073491703=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1073491703==
Content-Type: multipart/alternative; boundary="000000000000a0a8cd05aee0c8b6"

--000000000000a0a8cd05aee0c8b6
Content-Type: text/plain; charset="UTF-8"

Hi all, for the latest commit in 'spice-gtk/src/channel-display.c', in the
static function
'create_canvas', the first returning point (line 997) and the 'if
(surface->primary)' (line 1036)
is not taken then the second returning point, the allocated memory for
surface would be lost.

All the calling site store surface on the stack.

Can anyone confirm this?

-- 
Best Regards

Ding Fei
E-mail: danix800@gmail.com

--000000000000a0a8cd05aee0c8b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all, for the latest commit in &#39;spice-gtk/src/channe=
l-display.c&#39;, in the static function<div>&#39;create_canvas&#39;, the f=
irst returning point (line 997) and the &#39;if (surface-&gt;primary)&#39; =
(line 1036)</div><div>is not taken then the second returning point, the all=
ocated memory for surface would be lost.</div><div><br></div><div>All the c=
alling site store surface on the stack.</div><div><div><div><div><div><div>=
<br clear=3D"all"><div>Can anyone confirm this?</div><div><br></div>-- <br>=
<div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatur=
e">Best Regards<br>=C2=A0<br>Ding Fei<br>E-mail: <a href=3D"mailto:danix800=
@gmail.com" target=3D"_blank">danix800@gmail.com</a></div></div></div></div=
></div></div></div></div>

--000000000000a0a8cd05aee0c8b6--

--===============1073491703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1073491703==--
