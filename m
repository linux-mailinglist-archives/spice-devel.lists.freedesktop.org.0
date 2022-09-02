Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 534175AA418
	for <lists+spice-devel@lfdr.de>; Fri,  2 Sep 2022 02:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0053D10E3B8;
	Fri,  2 Sep 2022 00:08:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B85110E3B8
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Sep 2022 00:08:18 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id j26so342644wms.0
 for <spice-devel@lists.freedesktop.org>; Thu, 01 Sep 2022 17:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date; bh=iEBuEU5KUTXH/PaiYk/GiPBb+TjRKSAa8f4JB/rAWl0=;
 b=K6Vp/ZOx+pjyWI718oR4I1lQynVam4mVyEcVC6Z06dZoa4KUm65Ld6r77PdyDsq2V3
 PrpmmYxKXHq1uB0O2gwut/Iz68mEjjAbAk9wFg7m2icr7LODUXVAg/fP2cSL5EW7Gbgg
 Yi7/BD8x4lTQREInYpbtN/4k8A40fNyHmd9mUlfdwsP0HRkmfX4Nzl5LRAKpRJbhzZFz
 oud0lrHAjBpckEyjP0Bw9h4Nfx0+NehJ4hMUry8RZKJeOFtYhrv0uuuH5rVtyLvvUP31
 40fpeLFhwARZkmK89rY/W3z5/UfQ5HyOxf2VZJygii4pFhVyZAq3UorMnh623GBQqXfF
 d0xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=iEBuEU5KUTXH/PaiYk/GiPBb+TjRKSAa8f4JB/rAWl0=;
 b=6q1WfTYJKxQLkeQQFCpPpKEWsbyEHsLxJcNSYc232WQmkuWAUPP0JenFwOoYNlftyg
 Wj9VeY1XTr8UXytyepR9nkQm223WwoSOvGnEj0LuuW2Mkh2aEW5MkVUrbvv9qGk3luAo
 PxKiqM6XcX/KBtk7SkuUUQrqCtd3BenK76XQuDt5BVDEgVAK+J54Gpl89FJgJQScGQkj
 UI9q3OR/28q62MQ38xsR2eHQAIpxMD9p8ITZvfOikdI91rklcqdm2ecsp+ONj7NnoTp0
 7YsA/NG5oLLgIKQ9ul17fsMX8wPaSGzD38LBDCmqWV2XP0/ZBuY1RjZtyklF7/dNxAgG
 mksg==
X-Gm-Message-State: ACgBeo25MhKQUDgyIue4t736dHvh9Du7F32Ora4ACbmDzlxePByKtJs5
 cUWD6j7HqtbSru6N4z7rTDO6AeCU4CHwqDVtrZuMkdF8ZIw=
X-Google-Smtp-Source: AA6agR4afPtbBcGBIWiiwltaSwkZCqW+yVoyi4HJga0LwtNdq/IzgasfN69ZHoyPemgWAuDbP0KXuyfAkREflk3c9e0=
X-Received: by 2002:a05:600c:5105:b0:3a8:3f3c:ca90 with SMTP id
 o5-20020a05600c510500b003a83f3cca90mr874506wms.81.1662077296378; Thu, 01 Sep
 2022 17:08:16 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Date: Fri, 2 Sep 2022 00:08:04 +0000
Message-ID: <CAGeBE=yhPCXNeR72Oiy83yS+gC+P82_tSX59XQ4dSvUMDHJGRA@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000d708d505e7a6860a"
Subject: [Spice-devel] qxldod driver for Windows 11
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

--000000000000d708d505e7a6860a
Content-Type: text/plain; charset="UTF-8"

I downloaded latest virtio-win ISO, and by browsing it I noticed that,
unlike the other drivers, for the qxldod one there's only up to win10, and
no explicit win11 versions.

Does this mean that there are no drivers for Windows 11, and no possibility
of setting up a VM with full SPICE support?

Thanks beforehand.

--000000000000d708d505e7a6860a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I downloaded latest virtio-win ISO, and by browsing i=
t I noticed that, unlike the other drivers, for the qxldod one there&#39;s =
only up to win10, and no explicit win11 versions.</div><div><br></div><div>=
Does this mean that there are no drivers for Windows 11, and no possibility=
 of setting up a VM with full SPICE support?</div><div><br></div><div>Thank=
s beforehand.<br></div></div>

--000000000000d708d505e7a6860a--
