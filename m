Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7CF7505D1
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jul 2023 13:18:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B30B010E4D3;
	Wed, 12 Jul 2023 11:18:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E83210E4D1
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jul 2023 11:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1689160698;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sqF46ZIeTTxnF0x2v0q2HtXa3ZhclBx145UBtd0H60M=;
 b=JxFM7DLx2MYoQZCczMjBskftkfA1LJHcKtpnLuc6wNHq4zYUdo2IXKrHwbcp3ykwgTmUqA
 OckkZVElV8PTHNOM9oKnEFdYVdviOp+zr/y+tlSfk5dP2IQNcfTA2MfoA83bSaPs+dPw8j
 tdQ3A9FK9zcHE8/22HOWbsPADNM2F5g=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-343-nJJdge9AOkCLusI2LVD82Q-1; Wed, 12 Jul 2023 07:18:17 -0400
X-MC-Unique: nJJdge9AOkCLusI2LVD82Q-1
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-315998d6e7fso2201342f8f.3
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jul 2023 04:18:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689160696; x=1691752696;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=mGmoSdcAtbAnvFmDIfmKNE01xrI5yfsr2LA1G6eD+Js=;
 b=el7AmjHhzRtoJYFNCVB+bzrUXxq0XkUwSewwWo9MQA94EN64eOCOr4WqCg/0PSyrss
 RdKfwYMUaEp+GL7Aw0j2M4kfV5cMR9dI4U913qy0o//5JtnHMp9DfcHz5AIp0SyQUKC0
 AndRbtpGU0ut7BDKpUiRcU1LMGGIpPYM1P5Jwvk+Hw1TO+mMA49GrCKvV5flawO1TOCl
 0kExb25shRIv+iAE43zsiEJ7DTyXJJajFe7yDdHe2gqaKH1ZDEEXlolPP/EG1QsgVl2e
 7Yx+BwCAo83mKwUNpa9uXsLlIfiiUiVRXcRnLVYG7CxUJBjU/t+IyzO6sWPtYfUA5vVR
 jvsw==
X-Gm-Message-State: ABy/qLZA61+InjUDD3f6WQr9zD023eUQyuLzip3500wORi3ohgZDT4kG
 UblQSzIxTmbrZ4KSJ4aY7us+ePf1sCSDMRpMJnde3CqvsexI8lXnsiVRBylb6zckeD1GTo4Bozf
 TVQ/XtTARMfh1PtoF7FnX76bck/dFj/I=
X-Received: by 2002:a05:600c:3644:b0:3fc:627:ea31 with SMTP id
 y4-20020a05600c364400b003fc0627ea31mr12056762wmq.38.1689160695900; 
 Wed, 12 Jul 2023 04:18:15 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHe6rz0BytbzD5//h/wnxrk0jp/oOEOt3AbTKSXStRClYkvIUVNGHa0orOjttguAlZUCgSKTg==
X-Received: by 2002:a05:600c:3644:b0:3fc:627:ea31 with SMTP id
 y4-20020a05600c364400b003fc0627ea31mr12056740wmq.38.1689160695625; 
 Wed, 12 Jul 2023 04:18:15 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 k6-20020a05600c0b4600b003fc00702f65sm14151776wmr.46.2023.07.12.04.18.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Jul 2023 04:18:15 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <20230712105432.urgwb4zzwgsyfbwq@pengutronix.de>
References: <20230712094702.1770121-1-u.kleine-koenig@pengutronix.de>
 <abf26a82-4f17-51f2-5753-785f8516a81a@suse.de>
 <20230712105432.urgwb4zzwgsyfbwq@pengutronix.de>
Date: Wed, 12 Jul 2023 13:18:14 +0200
Message-ID: <87r0pdgyyx.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [PATCH RFC v1 00/52] drm/crtc: Rename struct
 drm_crtc::dev to drm_dev
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
Cc: Gurchetan Singh <gurchetansingh@chromium.org>,
 John Stultz <jstultz@google.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-samsung-soc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 VMware Graphics Reviewers <linux-graphics-maintainer@vmware.com>,
 NXP Linux Team <linux-imx@nxp.com>, xen-devel@lists.xenproject.org,
 linux-sunxi@lists.linux.dev,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, spice-devel@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Andrew Jeffery <andrew@aj.id.au>, linux-mips@vger.kernel.org,
 Chia-I Wu <olvaffe@gmail.com>, linux-renesas-soc@vger.kernel.org,
 kernel@pengutronix.de, freedreno@lists.freedesktop.org,
 Lucas Stach <l.stach@pengutronix.de>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de> writes:

[dropping some recipients since my SMTP server was complaining about the si=
ze]

> Hello Thomas,
>
> On Wed, Jul 12, 2023 at 12:19:37PM +0200, Thomas Zimmermann wrote:
>> Am 12.07.23 um 11:46 schrieb Uwe Kleine-K=C3=B6nig:
>> > Hello,
>> >=20
>> > while I debugged an issue in the imx-lcdc driver I was constantly
>> > irritated about struct drm_device pointer variables being named "dev"
>> > because with that name I usually expect a struct device pointer.
>> >=20
>> > I think there is a big benefit when these are all renamed to "drm_dev"=
.
>>=20
>> If you rename drm_crtc.dev, you should also address *all* other data
>> structures.
>
> Yes. Changing drm_crtc::dev was some effort, so I thought to send that
> one out before doing the same to
>
> =09drm_dp_mst_topology_mgr
> =09drm_atomic_state
> =09drm_master
> =09drm_bridge
> =09drm_client_dev
> =09drm_connector
> =09drm_debugfs_entry
> =09drm_encoder
> =09drm_fb_helper
> =09drm_minor
> =09drm_framebuffer
> =09drm_gem_object
> =09drm_plane
> =09drm_property
> =09drm_property_blob
> =09drm_vblank_crtc
>
> when in the end the intention isn't welcome.
>
>> > I have no strong preference here though, so "drmdev" or "drm" are fine
>> > for me, too. Let the bikesheding begin!
>>=20
>> We've discussed this to death. IIRC 'drm' would be the prefered choice.
>
> "drm" at least has the advantage to be the 2nd most common name. With
> Paul Kocialkowski prefering "drm_dev" there is no clear favourite yet.

I think that either "drm" or "drm_dev" would be more clear than "dev",
which I also found it confusing and thinking about a "struct device".

Probably leaning to "drm", since as you said is the second most used name
in drivers that assign crtc->dev to a local variable.

> Maybe all the other people with strong opinions are dead if this was
> "discussed to death" before? :-)
>
> Best regards
> Uwe
>
> --=20
> Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig       =
     |
> Industrial Linux Solutions                 | https://www.pengutronix.de/ =
|

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

