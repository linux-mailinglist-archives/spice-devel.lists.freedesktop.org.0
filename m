Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87136CB593E
	for <lists+spice-devel@lfdr.de>; Thu, 11 Dec 2025 11:58:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8873910E7D4;
	Thu, 11 Dec 2025 10:58:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mdzZYIIT";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAAC810E641
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Dec 2025 02:06:46 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id
 98e67ed59e1d1-3437af8444cso5714357a91.2
 for <spice-devel@lists.freedesktop.org>; Tue, 09 Dec 2025 18:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765332406; x=1765937206; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=dB4MkiK2v7MqEATSP66OXrd0I3cuJgQCFm92qrJ2lJ8=;
 b=mdzZYIITnDbEmLEsXsNVzXqM7HrK9asoJgbxEVxyBdLrE1Nrn36ArnuOZi65gP1MZx
 5DRI0JgM3y/XrLMkIlmnCKJk9AK5sY6Kyis1Xe2hgzw8YprqaFR2xfJkA3wlI3RHmpHk
 LdzfKCnb4vxxQTawnHwQuwGB27NDU0amzNMtP3tAheR3JckmlgGudOvzBMpnhfJiEepJ
 /jRZODYtcjNxAhKe/sCXYCmshhsN8FAt1rdbQmemapQrwsmlEwCDN37barZ3eTAbKPxa
 DqEXO2ohLVPe6xLK0X9/jG85xDMlE5EYQtQ6jtOgJkhwzSpCMMSa0+Gk8Z9j8aTOY4qX
 gh0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765332406; x=1765937206;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=dB4MkiK2v7MqEATSP66OXrd0I3cuJgQCFm92qrJ2lJ8=;
 b=FM7zyYDEz13qRABxapvVRGnMA2WGsAbA4bwUNz78oZoUkfVtTCdRB2DCwJETmKO1da
 DPrxszRa9oVXeJzcCXEucOAP9O2D6AsBPpp1SLUthen5jP0VTjEiEpG5sjqLybHM3mvY
 ESDPStsgU/TP3GUt+zc0TSYZ3eQt33/XqiSItrPwSYsdFIOHMNKfGxJkpXE79Sxuqa0X
 0vfo7OIuRurrDSU4+FxAtawN8K+PJE7O2cx9wHeZS6Y6+wpJHZCBAn+LR5lDF36uiKBQ
 qVTU2jxevwevo5ODhGt6llVGbwQZbOY2b+RHSP4m8UMVpEmcleflRqNI7lMCB5/Z6F1C
 HjbQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVoobtd4aVR8R5CYA3QQOmhDuY9+1INzH26funivB4BryxVsvJv6j19Zxl8t1C8B6ypWrInYwtatMY3dw==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzssCDBoko5UH4XNv+zxI4uHs5ks0Tb+4eUEhAysjvOnKbdw5kO
 b9sotsVErcYfV1ZBrWwbdoDOeEi6GMFH6UbYySoyfGrgpk3cQty5Mn1k2/uJ0NDDDJQamKP+MtA
 d3biiDT7zBsdJLAhPuh+cFjz3m8wEITY=
X-Gm-Gg: ASbGncuMPnZhUSgp1T1YmuvhtulGqjOAJln8emiV8WHcPSPEzQ3nDpkxUpjC3NbZQxJ
 JkFYZxon+XXKzGoIInhLkpMvYoxJESTqioJAMi6WmB/rbFHzPZIF2fj00nJRkjseZV/pAkzH/nx
 8p1BTMnjgSSQE6MLZOxW8bdszSTFmNxJw/TIRftfUobLKoQYMOer077PvOPEAkA3BrFBYm39GR6
 YyLY8P1T9NUCybOLo15T1nH4s4OzrvsTda4wbR7WlyrqtrkoL4w/vJAUkk3rMEx2uFwlpUOB/rX
 ZNUr3jDFBBu6Hsh0R5P5y4tfqQ9tGtVnILtw4ggCjUM/9ve8OCR/Z0YmKjvMtgt10iMg9IuZr08
 EiSYnWpwawULk2jw=
X-Google-Smtp-Source: AGHT+IER/q69FCL4HOlCuiPXSy/9N7+BJvlaJ8gV4++EQVcJdhe5QlTVR4toTFk0WEj9Sp4ps54/Zo8eUBI6B3SlAAg=
X-Received: by 2002:a05:7022:412:b0:11e:3e9:3e9a with SMTP id
 a92af1059eb24-11f296f4d4dmr601926c88.50.1765332406102; Tue, 09 Dec 2025
 18:06:46 -0800 (PST)
MIME-Version: 1.0
From: Avraham Hollander <anhollander516@gmail.com>
Date: Tue, 9 Dec 2025 21:06:35 -0500
X-Gm-Features: AQt7F2q1xvMw5Tfz9hXQre8HX4NLZBs_1JPIE2kAknJGpjV98GmMptN_Tf5kgB4
Message-ID: <CAP1mzZSH+VPhA5_53+LxSgOZe5JHqFP_uadWTpgTxrEXBc=52Q@mail.gmail.com>
Subject: Re: Bug#1054514: linux-image-6.1.0-13-amd64: Debian VM with qxl
 graphics freezes frequently
To: carnil@debian.org
Cc: 1054514@bugs.debian.org, airlied@redhat.com, daniel@ffwll.ch, 
 dreaming.about.electric.sheep@gmail.com, dri-devel@lists.freedesktop.org, 
 kraxel@redhat.com, linux-kernel@vger.kernel.org, 
 maarten.lankhorst@linux.intel.com, maddog@mir.com, mripard@kernel.org, 
 regressions@lists.linux.dev, spice-devel@lists.freedesktop.org, 
 timo.lindfors@iki.fi, tzimmermann@suse.de, 
 virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Thu, 11 Dec 2025 10:58:05 +0000
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

This is also happening to me in Debian Trixie, with the current
6.12.57 kernel. I can also test reverting the commit in the near
future if someone else doesn't get to it first. For now I'll just use
virtio-gpu, though it is a little slower.
