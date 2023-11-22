Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 135AA7F46C9
	for <lists+spice-devel@lfdr.de>; Wed, 22 Nov 2023 13:50:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B1F410E620;
	Wed, 22 Nov 2023 12:50:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0A6310E620
 for <spice-devel@lists.freedesktop.org>; Wed, 22 Nov 2023 12:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1700657399;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=t7CwGgnA5jX9Ulr8vRs5/VIijolfgnKW6FNaANq6NMw=;
 b=LgKniuUK1qMEE26G4bb+UQyvZWVjzjQ+6Ao9XZrVnihGm44Tryt2u1WSXRSRTtBDGWf9Wm
 cFAV6kWmJPbehkpjIdm5joNSQaTNz2jTc4HklDFbvzKCA0eD2Iq2IjgdbghgGkO436hIxU
 zMBptiz0w6oa1Or9pwq6TwU11JR1+M0=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-679-1D4NTMJEMDS-zFHlAspV4A-1; Wed, 22 Nov 2023 07:49:58 -0500
X-MC-Unique: 1D4NTMJEMDS-zFHlAspV4A-1
Received: by mail-lj1-f200.google.com with SMTP id
 38308e7fff4ca-2c6f33ee403so62112801fa.2
 for <spice-devel@lists.freedesktop.org>; Wed, 22 Nov 2023 04:49:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700657397; x=1701262197;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=t7CwGgnA5jX9Ulr8vRs5/VIijolfgnKW6FNaANq6NMw=;
 b=pNbYELxZNl70Dzjm5IvXKyjpqUuGfVcRoME983qJhcmp+WvcM+1dDSqkGoU/0Vm493
 zVRG+Mhzf19pB2ffWTFpZbkjLW5nEpcDZ6zR9PsgprPRtGEupbeqgZ8RX73+2IbhllUk
 DZS8kgrA0HEk62iNnPwg0fueS22qiOz76CinKRZB0t6iyAhbxZbutg+UKPlEysIFNfRI
 bLrC+CXaRwbquyJgTkZjhNMiejgvdm5CkmvFv/QJBaWM0dVkNFW05Ovnfq+VTutrbwbY
 lziTyOEo4EvReGaj5VlxDCnInT0D7BS6GAGcdEZJgqI6DQbGH5WdR5K94OREk2zU8HrF
 E7jg==
X-Gm-Message-State: AOJu0YyRkOPh/7b99ZKFnrS6a2At4+A4QvTfOJgBNV+OXO97f0AKfET2
 lMX3EkP1ecUnuQVfKBzGRRCT6v2OTqz8I9+lqeWaUKxZTtF5ZAS0wGE0Zh9Iu5bqJv82xFi2BOl
 FMHbC54mkq2PScVJDAYmTNrDLmwmsVDw=
X-Received: by 2002:a2e:98c2:0:b0:2c5:2132:24f6 with SMTP id
 s2-20020a2e98c2000000b002c5213224f6mr1644898ljj.12.1700657397040; 
 Wed, 22 Nov 2023 04:49:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHjsqJ2SuGehTUxt/XdTWeav04muk69t7/+AFuoFYCMhKZg56Vp4jkvGQpcnN18Ay8LgHfnHQ==
X-Received: by 2002:a2e:98c2:0:b0:2c5:2132:24f6 with SMTP id
 s2-20020a2e98c2000000b002c5213224f6mr1644863ljj.12.1700657396682; 
 Wed, 22 Nov 2023 04:49:56 -0800 (PST)
Received: from localhost ([90.167.94.248]) by smtp.gmail.com with ESMTPSA id
 bg36-20020a05600c3ca400b0040775501256sm2103506wmb.16.2023.11.22.04.49.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Nov 2023 04:49:56 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Albert Esteve <aesteve@redhat.com>, Simon Ser <contact@emersion.fr>
In-Reply-To: <CADSE00KW4+hpbAbZAusBngq5FYSa067wYJCGeetqngWRJaD9Kg@mail.gmail.com>
References: <20231023074613.41327-1-aesteve@redhat.com>
 <-ngmaSLF2S5emYjTBWcLRNzvJRoe_eZ-Nv9HQhE6ZLuK8nIE2ZbfVh2G2O2Z41GoIFIRpts0ukEtFXUx8pNAptmrZBhlXxaQGykx_qCZ_9k=@emersion.fr>
 <CADSE00KW4+hpbAbZAusBngq5FYSa067wYJCGeetqngWRJaD9Kg@mail.gmail.com>
Date: Wed, 22 Nov 2023 13:49:55 +0100
Message-ID: <87y1eqc5qk.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Spice-devel] [PATCH v6 0/9] Fix cursor planes with virtualized
 drivers
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
Cc: linux-doc@vger.kernel.org, qemu-devel@nongnu.org, banackm@vmware.com,
 virtualization@lists.linux-foundation.org, Gerd Hoffmann <kraxel@redhat.com>,
 mombasawalam@vmware.com, iforbes@vmware.com, Jonathan Corbet <corbet@lwn.net>,
 VMware Graphics Reviewers <linux-graphics-maintainer@vmware.com>,
 David Airlie <airlied@redhat.com>, Chia-I Wu <olvaffe@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 ppaalanen@gmail.com, dri-devel@lists.freedesktop.org,
 spice-devel@lists.freedesktop.org,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Matt Roper <matthew.d.roper@intel.com>, linux-kernel@vger.kernel.org,
 krastevm@vmware.com, Rob Clark <robdclark@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, zackr@vmware.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Albert Esteve <aesteve@redhat.com> writes:

Hello,

[...]

>
>> > Mutter patch:
>> > https://lists.freedesktop.org/archives/igt-dev/2023-July/058427.html
>>
>> Seems like this link is same as IGT? Copy-pasta fail maybe?
>>
>>
> Ah yes, my bad, this is the correct link:
> https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/3337

The mutter chages are already in good shape and the MR has even be
approved by a mutter developer. Any objections to merge the series ?

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

