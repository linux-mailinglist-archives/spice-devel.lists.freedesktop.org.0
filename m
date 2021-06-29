Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1743B7681
	for <lists+spice-devel@lfdr.de>; Tue, 29 Jun 2021 18:34:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71BE86E8C9;
	Tue, 29 Jun 2021 16:34:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B3966E8BE;
 Tue, 29 Jun 2021 15:59:47 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 25AAC61DC0;
 Tue, 29 Jun 2021 15:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624982387;
 bh=mApRLgk69+mMV6V2Jp0Hts8X9JoUe+4WPGnamh9oiBU=;
 h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
 b=jn/UYtxd6DOT82xj4Jn5ozrIOU1lYCBRLr3TmBNuywthA+if1knOf6CycPUljm3dn
 qrjGs6Lu1J28zcL8aopJN6s5OgAz8oLAytGSTEQG1DzNQPPf3gRaYpVpMxeLaaiOyh
 bVLemkmvbDMqQhIQKL1xV/Q0bjnonDenCYi8Nolx6I+32TCDLTuouRZokZI1drVfJE
 rJ0FGqtMN7GMe63abKwOLeIESoem7LfaZWgx2r5f3S3BCSvyUtxwGLzfmuIrRVi5Ux
 miLI4IVM6blF+0nBNxbMjbmWsAsTFPSHxCiyoRO2xhOx2NgTOob6j1ZWe0xWsOAKXd
 Tr8eWN67R/h5g==
Received: by mail-lf1-f49.google.com with SMTP id a11so40286909lfg.11;
 Tue, 29 Jun 2021 08:59:47 -0700 (PDT)
X-Gm-Message-State: AOAM530kJE1RmJPbRwPC0CDLw+80CdUO8oloDvS06aNgaHQMOG6DmWZr
 kyS1569Lj/MV6ogjMU0QLKx3lLQMhLOpE/P88cM=
X-Google-Smtp-Source: ABdhPJxbKRPGstVIg+10tcjtk+VnYZ+lj9b97iwRcHVe57pqV9+t3IECtbTnQC+RnmS+mFeMuInfdc2gJTFJGcCpAlk=
X-Received: by 2002:a19:e210:: with SMTP id z16mr1316558lfg.233.1624982385490; 
 Tue, 29 Jun 2021 08:59:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210629135833.22679-1-tzimmermann@suse.de>
In-Reply-To: <20210629135833.22679-1-tzimmermann@suse.de>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 29 Jun 2021 23:59:33 +0800
X-Gmail-Original-Message-ID: <CAGb2v66wYxs7u1AubriRokPFh72ZONMxGgmGNPB5mFLOZNw_3Q@mail.gmail.com>
Message-ID: <CAGb2v66wYxs7u1AubriRokPFh72ZONMxGgmGNPB5mFLOZNw_3Q@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
X-Mailman-Approved-At: Tue, 29 Jun 2021 16:34:07 +0000
Subject: Re: [Spice-devel] [PATCH] drm/aperture: Pass DRM driver structure
 instead of driver name
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
Reply-To: wens@kernel.org
Cc: linux-hyperv@vger.kernel.org,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 nouveau@lists.freedesktop.org, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 amd-gfx@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 airlied@redhat.com,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 freedreno@lists.freedesktop.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Tue, Jun 29, 2021 at 9:58 PM Thomas Zimmermann <tzimmermann@suse.de> wrote:
>
> Print the name of the DRM driver when taking over fbdev devices. Makes
> the output to dmesg more consistent. Note that the driver name is only
> used for printing a string to the kernel log. No UAPI is affected by this
> change.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

>  drivers/gpu/drm/sun4i/sun4i_drv.c             |  2 +-

Acked-by: Chen-Yu Tsai <wens@csie.org>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
