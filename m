Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 506C8155A73
	for <lists+spice-devel@lfdr.de>; Fri,  7 Feb 2020 16:15:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5018F6E081;
	Fri,  7 Feb 2020 15:15:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 380356EABD
 for <spice-devel@lists.freedesktop.org>; Fri,  7 Feb 2020 13:37:24 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id m16so2685681wrx.11
 for <spice-devel@lists.freedesktop.org>; Fri, 07 Feb 2020 05:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1CcTElHSNqMZM5zwk48mWmWtE3xBK2DdfIEEUuyZkGg=;
 b=c72ecVghVbnBxD82XL/P39Jjig+XsM5ybdRwUtoHjTB404HjgQevnYA7ePFGNtuKxx
 8kgofSnmJOXcmRqrgPMKz/N29TXcqR23SymlnrvLQ7E9KQ6NFIuFg/0UxYqn5aRVAnCw
 9pXIkP1Uxe2lGcuauCe3ftg1ivRDGKomeB7Ps=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1CcTElHSNqMZM5zwk48mWmWtE3xBK2DdfIEEUuyZkGg=;
 b=iAQJS9ymtQQbOdMKpKPUFqbyfgx+GMMCiiY5YCLK8a4zXOwwdo6pCPjkic51q4HANA
 TW7o8SFDvP6GFgHtOkJ0A9oo87IAI7vh46gUOxDYwz7mvj9IF0YGh5xal3+6+YdhZ6X6
 QaRRD3NiKmbn7vqwiPT+1CJJmh7EyZDziBovydImha7KOeO01t7iFCmw9z506AeGKYfD
 Y81hbQ9XjRebEF+6Op7afh8KsU6rv9w9MepGY9mCotCv/OAONe5QwltRv8WeTsGCiAtv
 mRNKPMqu3VmcSOKk5YAuodCWJKeiIPSC4YUrIZIVUZMVuWiywWJD+Af4IcY/W+rXXQHg
 XdWQ==
X-Gm-Message-State: APjAAAWgbok8uifeNRdCgEGIphLPgSXbfdoHTMO+khcvmkyKosgr/dZV
 xxbHZDlgyUUhpSBbJ03YSnih5A==
X-Google-Smtp-Source: APXvYqzW2ypvPBQo3tzVbCDYecJkmF0aMsQiTlbyoInM4Dd9NFY9omFvK/0gunpcQRlvlf+XRCV+qA==
X-Received: by 2002:adf:f787:: with SMTP id q7mr4764491wrp.297.1581082642747; 
 Fri, 07 Feb 2020 05:37:22 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a184sm3504277wmf.29.2020.02.07.05.37.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 05:37:22 -0800 (PST)
Date: Fri, 7 Feb 2020 14:37:20 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20200207133720.GZ43062@phenom.ffwll.local>
References: <20200207084135.4524-1-tzimmermann@suse.de>
 <20200207084135.4524-3-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207084135.4524-3-tzimmermann@suse.de>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-Mailman-Approved-At: Fri, 07 Feb 2020 15:15:04 +0000
Subject: Re: [Spice-devel] [PATCH 2/6] drm: Add drm_simple_encoder_{init,
 create}()
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
Cc: airlied@linux.ie, dri-devel@lists.freedesktop.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 virtualization@lists.linux-foundation.org, noralf@tronnes.org,
 kraxel@redhat.com, daniel@ffwll.ch, alexander.deucher@amd.com,
 spice-devel@lists.freedesktop.org, sam@ravnborg.org,
 emil.velikov@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Fri, Feb 07, 2020 at 09:41:31AM +0100, Thomas Zimmermann wrote:
> The simple-encoder helpers initialize an encoder with an empty
> implementation. This covers the requirements of most of the existing
> DRM drivers. A call to drm_simple_encoder_create() allocates and
> initializes an encoder instance, a call to drm_simple_encoder_init()
> initializes a pre-allocated instance.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>

This has quick a bit midlayer taste to it ... I think having this as a
helper would be cleaner ...

The other bit is drm_encoder->possible_crtcs. If we do create a helper for
these, lets at least try to make them not suck too badly :-) Otherwise I
guess it would be time to officially document what exactly possible_crtcs
== 0 means from an uabi pov.
-Daniel

> ---
>  drivers/gpu/drm/drm_encoder.c | 116 ++++++++++++++++++++++++++++++++++
>  include/drm/drm_encoder.h     |  10 +++
>  2 files changed, 126 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_encoder.c b/drivers/gpu/drm/drm_encoder.c
> index ffe691a1bf34..1a65cab1f310 100644
> --- a/drivers/gpu/drm/drm_encoder.c
> +++ b/drivers/gpu/drm/drm_encoder.c
> @@ -178,6 +178,122 @@ int drm_encoder_init(struct drm_device *dev,
>  }
>  EXPORT_SYMBOL(drm_encoder_init);
>  
> +static const struct drm_encoder_funcs drm_simple_encoder_funcs_cleanup = {
> +	.destroy = drm_encoder_cleanup,
> +};
> +
> +/**
> + * drm_simple_encoder_init - Init a preallocated encoder
> + * @dev: drm device
> + * @funcs: callbacks for this encoder
> + * @encoder_type: user visible type of the encoder
> + * @name: printf style format string for the encoder name, or NULL
> + *        for default name
> + *
> + * Initialises a preallocated encoder that has no further functionality. The
> + * encoder will be released automatically.
> + *
> + * Returns:
> + * Zero on success, error code on failure.
> + */
> +int drm_simple_encoder_init(struct drm_device *dev,
> +			    struct drm_encoder *encoder,
> +			    int encoder_type, const char *name, ...)
> +{
> +	char *namestr = NULL;
> +	int ret;
> +
> +	if (name) {
> +		va_list ap;
> +
> +		va_start(ap, name);
> +		namestr = kvasprintf(GFP_KERNEL, name, ap);
> +		va_end(ap);
> +		if (!namestr)
> +			return -ENOMEM;
> +	}
> +
> +	ret = __drm_encoder_init(dev, encoder,
> +				 &drm_simple_encoder_funcs_cleanup,
> +				 encoder_type, namestr);
> +	if (ret)
> +		goto err_kfree;
> +
> +	return 0;
> +
> +err_kfree:
> +	if (name)
> +		kfree(namestr);
> +	return ret;
> +}
> +EXPORT_SYMBOL(drm_simple_encoder_init);
> +
> +static void drm_encoder_destroy(struct drm_encoder *encoder)
> +{
> +	struct drm_device *dev = encoder->dev;
> +
> +	drm_encoder_cleanup(encoder);
> +	devm_kfree(dev->dev, encoder);
> +}
> +
> +static const struct drm_encoder_funcs drm_simple_encoder_funcs_destroy = {
> +	.destroy = drm_encoder_destroy,
> +};
> +
> +/**
> + * drm_simple_encoder_create - Allocate and initialize an encoder
> + * @dev: drm device
> + * @encoder_type: user visible type of the encoder
> + * @name: printf style format string for the encoder name, or NULL for
> + *        default name
> + *
> + * Allocates and initialises an encoder that has no further functionality. The
> + * encoder will be released automatically.
> + *
> + * Returns:
> + * The encoder on success, a pointer-encoder error code on failure.
> + */
> +struct drm_encoder *drm_simple_encoder_create(struct drm_device *dev,
> +					      int encoder_type,
> +					      const char *name, ...)
> +{
> +	char *namestr = NULL;
> +	struct drm_encoder *encoder;
> +	int ret;
> +
> +	encoder = devm_kzalloc(dev->dev, sizeof(*encoder), GFP_KERNEL);
> +	if (!encoder)
> +		return ERR_PTR(-ENOMEM);
> +
> +	if (name) {
> +		va_list ap;
> +
> +		va_start(ap, name);
> +		namestr = kvasprintf(GFP_KERNEL, name, ap);
> +		va_end(ap);
> +		if (!namestr) {
> +			ret = -ENOMEM;
> +			goto err_devm_kfree;
> +		}
> +	}
> +
> +	ret = __drm_encoder_init(dev, encoder,
> +				 &drm_simple_encoder_funcs_destroy,
> +				 encoder_type, namestr);
> +	if (ret)
> +		goto err_kfree;
> +
> +	return encoder;
> +
> +err_kfree:
> +	if (name)
> +		kfree(namestr);
> +err_devm_kfree:
> +	devm_kfree(dev->dev, encoder);
> +	return ERR_PTR(ret);
> +}
> +EXPORT_SYMBOL(drm_simple_encoder_create);
> +
>  /**
>   * drm_encoder_cleanup - cleans up an initialised encoder
>   * @encoder: encoder to cleanup
> diff --git a/include/drm/drm_encoder.h b/include/drm/drm_encoder.h
> index 5623994b6e9e..0214f6cf9de6 100644
> --- a/include/drm/drm_encoder.h
> +++ b/include/drm/drm_encoder.h
> @@ -190,6 +190,16 @@ int drm_encoder_init(struct drm_device *dev,
>  		     const struct drm_encoder_funcs *funcs,
>  		     int encoder_type, const char *name, ...);
>  
> +__printf(4, 5)
> +int drm_simple_encoder_init(struct drm_device *dev,
> +			    struct drm_encoder *encoder,
> +			    int encoder_type, const char *name, ...);
> +
> +__printf(3, 4)
> +struct drm_encoder *drm_simple_encoder_create(struct drm_device *dev,
> +					      int encoder_type,
> +					      const char *name, ...);
> +
>  /**
>   * drm_encoder_index - find the index of a registered encoder
>   * @encoder: encoder to find index for
> -- 
> 2.25.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
