Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD880156A1C
	for <lists+spice-devel@lfdr.de>; Sun,  9 Feb 2020 13:37:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C8F96E1F8;
	Sun,  9 Feb 2020 12:37:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BAEF6E0BA
 for <spice-devel@lists.freedesktop.org>; Fri,  7 Feb 2020 16:25:15 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id a9so3430268wmj.3
 for <spice-devel@lists.freedesktop.org>; Fri, 07 Feb 2020 08:25:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ABM5sPmuYyfwyFFg86r2EIUp7pzpkgyEmE7tZ3sQLNQ=;
 b=QBnpK0a4KKF1C/1vq/mdAE3IoR8A7Jmi0B88AZSIxbGWiPOGWaHEZQKXYlkPh5xmzR
 lw7BpPL6/a/d7/XQHCfxtPjhMJv2XizAimDT3g8KsCgTbyHiffe/zWdduWIU9mug1RFL
 +fCTIYhSAmQ5h1y5zWyVdbON7E9A8sHyWoYlk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ABM5sPmuYyfwyFFg86r2EIUp7pzpkgyEmE7tZ3sQLNQ=;
 b=LpyJB46SgxmAMtgECgtWmJbrXquBvLq7gKNOLCOfEB2oK31u163Mw9eqhT18J5CmyG
 682spV0Z+Z4UHOxk+lSvqxgAPvZKppMEsyM9OaoDxGpZwwd0YKvNgfrxPSfG+5agOqvP
 rj+eQCUKA40jvaZPanRi5rZbeArwMJFxviKdrOOE0wlriKM7REZSn7zhcFr48V0x4JKn
 SEnlJlTV9eZs5Aj0qbbjVjFSvYG19l5kht4wXveJXbP8Xsas/F7/dg6Lwio4lAAg53Br
 xnCtII/Q360GwG5iL+spQf+VWa8ADRxZNj2Jf98CqWK6Lj8MajqASvNsgAeomBRlwhG2
 /kwg==
X-Gm-Message-State: APjAAAXsWKBOXSXbTPxftyf9+RlKGcXAv8SqwtbGUgW1lSmh7npVcnee
 MUiDtzTGTF0qGzDqdLQp2zWS5g==
X-Google-Smtp-Source: APXvYqxr4J8VxpLHdQGB+E1AjASXNHqXB7Tb6P5GFPGa/ArXS5/ZvoMbLmFneETUQSNcQT7yqdZ21A==
X-Received: by 2002:a1c:ac46:: with SMTP id v67mr4974941wme.153.1581092713847; 
 Fri, 07 Feb 2020 08:25:13 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b18sm3942381wru.50.2020.02.07.08.25.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 08:25:12 -0800 (PST)
Date: Fri, 7 Feb 2020 17:25:10 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Message-ID: <20200207162510.GH43062@phenom.ffwll.local>
References: <20200207084135.4524-1-tzimmermann@suse.de>
 <20200207084135.4524-3-tzimmermann@suse.de>
 <e43dcf9c-e228-dd01-2e55-5ad75804cf79@tronnes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e43dcf9c-e228-dd01-2e55-5ad75804cf79@tronnes.org>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-Mailman-Approved-At: Sun, 09 Feb 2020 12:37:54 +0000
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, virtualization@lists.linux-foundation.org,
 kraxel@redhat.com, daniel@ffwll.ch, alexander.deucher@amd.com,
 spice-devel@lists.freedesktop.org, sam@ravnborg.org,
 emil.velikov@collabora.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Fri, Feb 07, 2020 at 03:36:49PM +0100, Noralf Tr=F8nnes wrote:
> =

> =

> Den 07.02.2020 09.41, skrev Thomas Zimmermann:
> > The simple-encoder helpers initialize an encoder with an empty
> > implementation. This covers the requirements of most of the existing
> > DRM drivers. A call to drm_simple_encoder_create() allocates and
> > initializes an encoder instance, a call to drm_simple_encoder_init()
> > initializes a pre-allocated instance.
> > =

> > Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> > ---
> >  drivers/gpu/drm/drm_encoder.c | 116 ++++++++++++++++++++++++++++++++++
> >  include/drm/drm_encoder.h     |  10 +++
> >  2 files changed, 126 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/drm_encoder.c b/drivers/gpu/drm/drm_encode=
r.c
> =

> <snip>
> =

> > +/**
> > + * drm_simple_encoder_create - Allocate and initialize an encoder
> > + * @dev: drm device
> > + * @encoder_type: user visible type of the encoder
> > + * @name: printf style format string for the encoder name, or NULL for
> > + *        default name
> > + *
> > + * Allocates and initialises an encoder that has no further functional=
ity. The
> > + * encoder will be released automatically.
> > + *
> > + * Returns:
> > + * The encoder on success, a pointer-encoder error code on failure.
> > + */
> > +struct drm_encoder *drm_simple_encoder_create(struct drm_device *dev,
> > +					      int encoder_type,
> > +					      const char *name, ...)
> > +{
> > +	char *namestr =3D NULL;
> > +	struct drm_encoder *encoder;
> > +	int ret;
> > +
> > +	encoder =3D devm_kzalloc(dev->dev, sizeof(*encoder), GFP_KERNEL);
> =

> The encoder can outlive the devres if the device is unbound when
> userspace has open fds, so you can't use devm_ here.

Ah yes great catch. Rule of thumb: Never use devm_ for any drm_*
structure. It's wrong.

There's a todo somewhere to essentially create a drm_managed set of apis
where the cleanup matches the right lifetime - we need to only
free/release drm resource at drm_driver->release time.
-Daniel

> =

> Noralf.
> =

> > +	if (!encoder)
> > +		return ERR_PTR(-ENOMEM);
> > +
> > +	if (name) {
> > +		va_list ap;
> > +
> > +		va_start(ap, name);
> > +		namestr =3D kvasprintf(GFP_KERNEL, name, ap);
> > +		va_end(ap);
> > +		if (!namestr) {
> > +			ret =3D -ENOMEM;
> > +			goto err_devm_kfree;
> > +		}
> > +	}
> > +
> > +	ret =3D __drm_encoder_init(dev, encoder,
> > +				 &drm_simple_encoder_funcs_destroy,
> > +				 encoder_type, namestr);
> > +	if (ret)
> > +		goto err_kfree;
> > +
> > +	return encoder;
> > +
> > +err_kfree:
> > +	if (name)
> > +		kfree(namestr);
> > +err_devm_kfree:
> > +	devm_kfree(dev->dev, encoder);
> > +	return ERR_PTR(ret);
> > +}
> > +EXPORT_SYMBOL(drm_simple_encoder_create);
> > +

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
