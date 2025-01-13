Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 725B8A14AE4
	for <lists+spice-devel@lfdr.de>; Fri, 17 Jan 2025 09:16:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5454010EA8F;
	Fri, 17 Jan 2025 08:16:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="hiVqacxi";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BFFC10E27D
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Jan 2025 08:25:14 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id
 2adb3069b0e04-5401bd6cdb4so3753550e87.2
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Jan 2025 00:25:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1736756713; x=1737361513; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=HsOOejTFjVwFwvDCfWyTG69OVT7YoO10LJVJy5N++GA=;
 b=hiVqacxis646nluQSlcULkOd6N3WEai1ty5erEMJToixb8wsJ7WAfHeN6hYV7JxD5X
 5GLuhFwJAOfY5r4XQHDJh7nvzf1EXmzTJm4SzNxIkU19BtBdoLApxM+wB7w8NvIeJ5pH
 JT5QxgwX/FKDmuGA6F1d5ZOmpdbyy67hS/E0YCoNg2FwHRi6Rg9gDKRBsEWUJyHkMf4A
 Ch33Ea6ll7StVHNfhY4q1keqv+fwjC04vgmTCLwcmyX2B2Tfa1KQimwDnDExdGP5yV6Z
 +Y+r3jfYr5lwBPuWzYkK8PL7qWA/XSlNkaDjV2hsoMpBRbN86SrmbZJt+yZhrZuiK0E/
 zS/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736756713; x=1737361513;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HsOOejTFjVwFwvDCfWyTG69OVT7YoO10LJVJy5N++GA=;
 b=RUC71MGJBONJtI76caVweNFlfw6sAzFZkMFXPUGjYSSZ+t5beODdOU47iiEf7x4UA1
 8vmZgm5Q9sMJdUmyBwt+DKZgLsXpTW2xsbe5wu9nmUl5YiwNqYwHZ7FuXXCXg6zgvgnc
 64f013SVwPamQGybAOysfPhxlZCVlkGh2WCPM+MSBGymMqQ7KWIfWe9bewjn6ssL3JUG
 JMQINOylJQkOYyWM8dlhrYpHkM7oZrXFpNfrq8drV7fpaLjV4gG9+YjJ5LtsLmpJeW7k
 gUW6ggsYq6+MJgXftYMHlrXKs5XV+oWI9Qx5I1dXHHMLGOo7bvoUGSx7nZgJdv+UxZ8e
 yVuQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWn/Btl1ht0Krz0YgFtffv4RZqRcEqnxsuhBsT0SLJ+CSiM6pnf7luAtVMnmBImTHwCskcER1OqkNFkrA==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwphwaO0G55bn3DYOjS+RtnCYr1kyNa11MbcOPb85lc5dU86ZPo
 FBCZG+HdgN8myddwV4dmMMYzDNUpEgGN98YJnQ3VdzKUflYB5HcRuPfXQk4jSfw=
X-Gm-Gg: ASbGncvs7j5uR1TU24cruN6C47N5KlPRDTSWSwPdt8rM21Zsb3/EDL33wMKX9qF34PW
 IdZAKULsgWyxq9Fw5PXzsahpYM4D8yrb/jq7EvldoFiMp9bd3gLTi74E/DiCcE4KU1JjFy7AkvU
 USV6JiR4mcc72fHmnuyi3Zu0FQEnh3EH8yTgDtt8e0nOynZ8RU+oEM1BnC0MVlMKkOMLWtNk/to
 FCxiQvecNU8Nvbo/86zFN4jLpMKStMheBL2adyUysR2B9cmtOo4IW9rvogniJNyxiqJE+4lAAmH
 vZP3Y7sD+cXohPmixjliWBLJGfePa81jcyDy
X-Google-Smtp-Source: AGHT+IERZWZtkZrsbkHThnFiBHKfz//tsYW/urMLTgJODZNi9Tp473Grr1NqQ4M0NySCRCOoV5n3Rw==
X-Received: by 2002:a05:6512:138c:b0:540:2188:763c with SMTP id
 2adb3069b0e04-542845b0b55mr6338144e87.37.1736756712614; 
 Mon, 13 Jan 2025 00:25:12 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5428bec0659sm1286326e87.185.2025.01.13.00.25.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2025 00:25:11 -0800 (PST)
Date: Mon, 13 Jan 2025 10:25:09 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
 airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, freedreno@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, 
 imx@lists.linux.dev, linux-samsung-soc@vger.kernel.org,
 nouveau@lists.freedesktop.org, 
 virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-tegra@vger.kernel.org, 
 intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org,
 Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>
Subject: Re: [PATCH v2 13/25] drm/msm: Compute dumb-buffer sizes with
 drm_mode_size_dumb()
Message-ID: <bbw2n4ccn5jlq7q7lsw3xdnbieazgexkwkycrqvk5aoiq5q3wx@nz6gd3unwkg4>
References: <20250109150310.219442-1-tzimmermann@suse.de>
 <20250109150310.219442-14-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109150310.219442-14-tzimmermann@suse.de>
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

On Thu, Jan 09, 2025 at 03:57:07PM +0100, Thomas Zimmermann wrote:
> Call drm_mode_size_dumb() to compute dumb-buffer scanline pitch and
> buffer size. The hardware requires the scnaline pitch to be a multiple
> of 32 pixels. Therefore compute the byte size of 32 pixels in the given
> color mode and align the pitch accordingly.

- scanline, not scnaline
- the statement about 32-pixel alignment needs an explanation that it is
  being currently handled by align_pitch().

With that in mind:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Marijn Suijten <marijn.suijten@somainline.org>
> ---
>  drivers/gpu/drm/msm/msm_gem.c | 27 +++++++++++++++++++++++++--
>  1 file changed, 25 insertions(+), 2 deletions(-)
> 

-- 
With best wishes
Dmitry
