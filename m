Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B05A14ADF
	for <lists+spice-devel@lfdr.de>; Fri, 17 Jan 2025 09:16:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A91710E214;
	Fri, 17 Jan 2025 08:16:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="Xe7pvhcv";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F98B10E933
 for <spice-devel@lists.freedesktop.org>; Thu, 16 Jan 2025 10:36:40 +0000 (UTC)
Received: by mail-lf1-f43.google.com with SMTP id
 2adb3069b0e04-5401bd6cdb7so793762e87.2
 for <spice-devel@lists.freedesktop.org>; Thu, 16 Jan 2025 02:36:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1737023739; x=1737628539; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=gprmJm/Cl6p6869D60XQ3XjbtrOWLJEOxZITgqe2J5o=;
 b=Xe7pvhcvb9BQ7O4nt/y0DJLp/g1zsI7ocpGZCYyrWLZBc7HY+hdOcrlriV7yfJyNt7
 UVLRZaisx41pC4N4YIlCUsMeaTxXOyAqTL3AM6Ysc1GVfl87VOE85bWQ1deXMraY9EkV
 RGanrzn29+urwkvKxH5lFtD8Zg3zxKU8f3AG03EuFqqjcF6QexNxt2vYzqQc/9VIxv3K
 Jn/MQ61Z2QC0ndh/oZHDzS4JEU++p37KhLCbRjrWTHsasU78OhklWXF7QCBlGyH66c42
 TXpQr0xtlEG+35vTUOKwjyK0lZMcCwNMg2wCcSFnMyMRJulexoebk8iVoBuwwSmQGKjL
 Uj4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737023739; x=1737628539;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gprmJm/Cl6p6869D60XQ3XjbtrOWLJEOxZITgqe2J5o=;
 b=bQVQANDPFXe52R8KgiST5t73IBnbzFpsq1pgRRBN0P8Tj92v68ZM/lo4IVfSDXsEXY
 EPmvZF7/lomo8uroWVWmjXUGIaFtu3IvbwLkS8H/vIE7JWVA/YtQLRLdbiN9CfZu2luk
 7tLQG8xj4QfvSuKgb62yhGbLxew4ufZO4B3lp/QzKMCgqa3lUJvZmK+MXCPFTLrbIEEk
 Hc66XxHYNx5Fj173qrpxYJrcUng10qD8a8aw6SQIzlUvypKS/GdD9OCWTypswe718bl+
 TIMCdQraAo9TkCQhP9NdrxSiw9JbsDga4XDU8zU1NRm9Q8pww7Qns6xL0MwHJBnMpb1w
 gP2w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVSYYhSdRNfgLmhXp1QSvFh5ViF9g/KxfHH8RJwEKZhmGs1imCMVI9lIGajUX+LVK84SbzbeRiHArahAg==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwWKFZEDGBaA2EpN49b7etx8VadAV2LlRGkzJGsMpOsyLceLQ39
 di5xXwMMojYfM6PbkmimU4oMoQLRIAumYUdE+v+vLm1WjE/NpkPi55/D3MyuOAg=
X-Gm-Gg: ASbGncuM3AnE++5az1fpr2K1z+IZnvv8dR7mV6SrvGwPvMHzjqxiWtwHYvUmn6VBczv
 d0Tc5KZnYg5cBtVwl0YQ/GGwD60P7O1kVh5AHK5Rcc36nrBPh0r0n3jpj1X48vOLATCJXEVC0Lq
 RpZlOgCA7hh7vHfVeJLX/gg9n1aq6Oal9KGtN4t2YOihYcVgou128a8ILBpsyxG4vhYwsi4zKFC
 nRSu18daZl/c/AXPACvBMA+tt4cJrwfLmnlZ2kRCYImjvGzkZDc4kGHBvNGo1YVovorEMtUHwEu
 Dlt2whIkpQzIImt9JS5MwxKzhAshDuSQjykv
X-Google-Smtp-Source: AGHT+IH3G1Mnr8k23AF5/dIs7iAuJyOHJCwOMDmvWc4umnN+swRWG+FLBCp9QsFSdvm1xDWFrQeEdg==
X-Received: by 2002:a05:6512:3d27:b0:540:20a9:9ab5 with SMTP id
 2adb3069b0e04-54284824476mr9777793e87.50.1737023738809; 
 Thu, 16 Jan 2025 02:35:38 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5428be49d6esm2261466e87.50.2025.01.16.02.35.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2025 02:35:37 -0800 (PST)
Date: Thu, 16 Jan 2025 12:35:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, 
 airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, freedreno@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, 
 imx@lists.linux.dev, linux-samsung-soc@vger.kernel.org,
 nouveau@lists.freedesktop.org, 
 virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-tegra@vger.kernel.org, 
 intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andy Yan <andyshrk@163.com>, Daniel Stone <daniel@fooishbar.org>
Subject: Re: [PATCH v2 25/25] drm/xlnx: Compute dumb-buffer sizes with
 drm_mode_size_dumb()
Message-ID: <xz5ncq67bgmdase2jg3cfvyaxpiwhol2eqpfzow6dqpauvslo5@2w3rw27lhnxo>
References: <f3ba05c7-6e49-4641-a3f9-ba418ebdb7c3@ideasonboard.com>
 <c6735280-7c32-4319-8ca9-a7305d8117c3@suse.de>
 <d67adb03-5cd0-4ac9-af58-cf4446dacee3@ideasonboard.com>
 <0ea6be58-0e04-4172-87cd-064a3e4a43bc@suse.de>
 <f35cb350-6be9-48ca-ad7e-e9dd418281d5@ideasonboard.com>
 <4af0b6a7-c16a-4187-bbf5-365a9c86de21@suse.de>
 <e327ad84-b5c9-4480-b873-dc3aca605538@ideasonboard.com>
 <a2bbeb47-2569-4ee0-9265-92bab139bdc6@suse.de>
 <f3833771-fcd7-45dc-9019-1525fef34429@ideasonboard.com>
 <CAMuHMdXxYa+Na3XxpLTy=-eUL_zQ9kAiUKYu-E04u3KWApusSA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdXxYa+Na3XxpLTy=-eUL_zQ9kAiUKYu-E04u3KWApusSA@mail.gmail.com>
X-Mailman-Approved-At: Fri, 17 Jan 2025 08:16:43 +0000
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

On Thu, Jan 16, 2025 at 11:17:50AM +0100, Geert Uytterhoeven wrote:
> On Thu, Jan 16, 2025 at 11:03 AM Tomi Valkeinen
> <tomi.valkeinen@ideasonboard.com> wrote:
> > On 16/01/2025 10:09, Thomas Zimmermann wrote:
> > > Am 15.01.25 um 15:20 schrieb Tomi Valkeinen:
> > > [...]
> > >>
> > >> My point is that we have the current UAPI, and we have userspace using
> > >> it, but we don't have clear rules what the ioctl does with specific
> > >> parameters, and we don't document how it has to be used.
> > >>
> > >> Perhaps the situation is bad, and all we can really say is that
> > >> CREATE_DUMB only works for use with simple RGB formats, and the
> > >> behavior for all other formats is platform specific. But I think even
> > >> that would be valuable in the UAPI docs.
> > >
> > > To be honest, I would not want to specify behavior for anything but the
> > > linear RGB formats. If anything, I'd take Daniel's reply mail for
> > > documentation as-is. Anyone stretching the UAPI beyond RGB is on their own.
> > >
> > >> Thinking about this, I wonder if this change is good for omapdrm or
> > >> xilinx (probably other platforms too that support non-simple non-RGB
> > >> formats via dumb buffers): without this patch, in both drivers, the
> > >> pitch calculations just take the bpp as bit-per-pixels, align it up,
> > >> and that's it.
> > >>
> > >> With this patch we end up using drm_driver_color_mode_format(), and
> > >> aligning buffers according to RGB formats figured out via heuristics.
> > >> It does happen to work, for the formats I tested, but it sounds like
> > >> something that might easily not work, as it's doing adjustments based
> > >> on wrong format.
> > >>
> > >> Should we have another version of drm_mode_size_dumb() which just
> > >> calculates using the bpp, without the drm_driver_color_mode_format()
> > >> path? Or does the drm_driver_color_mode_format() path provide some
> > >> value for the drivers that do not currently do anything similar?
> > >
> > > With the RGB-only rule, using drm_driver_color_mode_format() makes
> > > sense. It aligns dumb buffers and video=, provides error checking, and
> > > overall harmonizes code. The fallback is only required because of the
> > > existing odd cases that already bend the UAPI's rules.
> >
> > I have to disagree here.
> >
> > On the platforms I have been using (omap, tidss, xilinx, rcar) the dumb
> > buffers are the only buffers you can get from the DRM driver. The dumb
> > buffers have been used to allocate linear and multiplanar YUV buffers
> > for a very long time on those platforms.
> >
> > I tried to look around, but I did not find any mentions that CREATE_DUMB
> > should only be used for RGB buffers. Is anyone outside the core
> > developers even aware of it?
> >
> > If we don't use dumb buffers there, where do we get the buffers? Maybe
> > from a v4l2 device or from a gpu device, but often you don't have those.
> > DMA_HEAP is there, of course.
> 
> Why can't there be a variant that takes a proper fourcc format instead of
> an imprecise bpp value?

Backwards compatibility. We can add an IOCTL for YUV / etc. But
userspace must be able to continue allocating YUV buffers through
CREATE_DUMB.

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

-- 
With best wishes
Dmitry
