Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF79B7CBFDC
	for <lists+spice-devel@lfdr.de>; Tue, 17 Oct 2023 11:48:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B78310E2B5;
	Tue, 17 Oct 2023 09:48:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com
 [IPv6:2607:f8b0:4864:20::c31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 911F310E2B5
 for <spice-devel@lists.freedesktop.org>; Tue, 17 Oct 2023 09:48:26 +0000 (UTC)
Received: by mail-oo1-xc31.google.com with SMTP id
 006d021491bc7-57ad95c555eso3128995eaf.3
 for <spice-devel@lists.freedesktop.org>; Tue, 17 Oct 2023 02:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697536105; x=1698140905; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AwFM8kFXwCoDVg2FYn5SMAFJymQPyVIeO8MWsxVfwoo=;
 b=Em/t7/f8v9f23OrDJtSJ6HZHd2+rlz7XbN+kq+nC6u4RJnfHNgfzFIcjMn/gAQ61/E
 CbPtcl+HQMXXQ8ReRE99tzxUiMCL+HVW9JQMgRNm5jGHm2Ij2y4bHEJvBDJpQSBxk5sI
 IDD/zETQa6xyCHLVyuxTjhTFx4BLKfe+5GtZxRjBKa1m3EpSw/BiLgEG7/gOuRznhPKl
 mCREGFwVd+x2Jjio1LB3etfZxcFoOPcVEbmnflQTmyr684WwJDZflhrf+iVKwVJhRItd
 DhmoF1AEtrrs51k9jDyiSpxgbksH0fNFZXoPLx7AFNtbmvjd30EDZjTfHIpv/rBgeMHp
 l9BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697536105; x=1698140905;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=AwFM8kFXwCoDVg2FYn5SMAFJymQPyVIeO8MWsxVfwoo=;
 b=q0lAtEi475ryPeTMR9ATYGwJKkY6258K96lGF/EkAmMO3Kr0E439u+0s2fTNrubxHV
 3QVI9/Uz6cWr2RCNL5mwkRdCGrAoT/TrmI3mxTskvUhYI2TICkz2FRvI6M90P5G873N/
 NcoYSeFu5EeAYy4pl1Mny2xipcXqyHBjTzyntdoNNYcb/xiRNCKwxglaNn1DUOW8M4Ce
 7Qh8/WYNMtubDG7QUKzdXaXJCXAFt91cKKLH9CwteaDNhSZBzayQXG1YF3/iXzU+9FYe
 LDcQvptjIRGIvwC4z77LqVkEfDF0T4PhenIAN2jUcV9baPmFAF9wsiPRCnOAdW49b0W+
 /FDA==
X-Gm-Message-State: AOJu0Yx1O7H9GURoXJzgBCEx8NdRi3jB16cg1vHYDH2VG7weofZ4aHhY
 +qIu6P3a1b3gYZMCMI/Wn36HWmwYGbeitMt9Wvv3n20X
X-Google-Smtp-Source: AGHT+IHO0bY2NuFW5unuegmDWhfRalajgrV00f9ZBGuyODsCZQd9DyorKWmmxgR9gc1MML3a7Csm+AM9uzlIY507QZA=
X-Received: by 2002:a05:6820:2716:b0:581:dd3e:dbce with SMTP id
 db22-20020a056820271600b00581dd3edbcemr659837oob.0.1697536105639; Tue, 17 Oct
 2023 02:48:25 -0700 (PDT)
MIME-Version: 1.0
References: <20231017072312.4013460-1-vivek.kasireddy@intel.com>
In-Reply-To: <20231017072312.4013460-1-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 17 Oct 2023 10:48:14 +0100
Message-ID: <CAHt6W4c16AV2qzNpdw2QKFsx7LgNbt0sEYDMtJ3xD5Po8z8T5w@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [PATCH v3] common: Add a udev helper to identify
 GPU Vendor (v3)
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
Cc: Dongwon Kim <dongwon.kim@intel.com>,
 Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>,
 Gerd Hoffmann <kraxel@redhat.com>, spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno mar 17 ott 2023 alle ore 08:43 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> Given that libudev is widely available on many Linux distros, we
> can use the relevant APIs to iterate over all the devices associated
> with the drm subsystem to figure out if a specific vendor GPU
> is available or not.
>
> This capability (identifying GPU Vendor) is useful to determine
> whether to launch Gstreamer pipeline using h/w accelerated
> plugins. On systems where libudev is not available (Windows,
> MacOS, etc) we'd have to make this determination based on the
> availability of the relevant plugins in the Gstreamer registry.
>
> v2: (Frediano)
> - Add autoconf support
> - Add license text
> - Add pragma once and SPICE_BEGIN/END_DECLS to the header
> - Check the vendor id udev attribute of the pci device to
>   determine a vendor GPU instead of checking the driver name
>
> v3: (fixups by Frediano)
> - Fix broken autoconf support added in v2
> - Fix compiler error on systems with no libudev support
> - Return VENDOR_GPU_UNKNOWN if we cannot create udev instance
> - Make libudev dependency optional
> - Change the type of gpu_vendor from long to int as PCI vendor IDs
>   are defined as 16-bit unsigned int
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> Cc: Jin Chung Teng <jin.chung.teng@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  common/Makefile.am |  3 ++
>  common/meson.build |  2 ++
>  common/udev.c      | 78 ++++++++++++++++++++++++++++++++++++++++++++++
>  common/udev.h      | 33 ++++++++++++++++++++
>  configure.ac       |  1 +
>  m4/spice-deps.m4   | 12 +++++++
>  meson.build        |  7 +++++
>  7 files changed, 136 insertions(+)
>  create mode 100644 common/udev.c
>  create mode 100644 common/udev.h
>

Merged. Minor space change.

Frediano
