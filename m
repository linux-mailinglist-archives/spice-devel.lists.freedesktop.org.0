Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBA67D41B0
	for <lists+spice-devel@lfdr.de>; Mon, 23 Oct 2023 23:30:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB21210E271;
	Mon, 23 Oct 2023 21:29:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C070A10E269
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Oct 2023 21:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1698096594;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=F1k2Vg92RJrxv+gYLNepXp/tJyAR04nx8wa9wG6p0is=;
 b=aA72/tCNof/0rDPqBBTCBMTBCuJNd0XgIJ8AyGM4NIR0v11Lf8dJ/Vry4pJTQ9oOrqFul4
 KbDKjkaeYODkF/CJYTj7IIIMPTK8oIy8yPXIAVxD8oBXXfbdxyNiXj2N0O1pHCNcO4EmKi
 BcwYDJbRNj7ryKJwU15Te7M/O5qzg7U=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-669-KJShThjINueLbT9dxYIuvA-1; Mon, 23 Oct 2023 17:29:42 -0400
X-MC-Unique: KJShThjINueLbT9dxYIuvA-1
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-3f5df65f9f4so23179615e9.2
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Oct 2023 14:29:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698096580; x=1698701380;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=F1k2Vg92RJrxv+gYLNepXp/tJyAR04nx8wa9wG6p0is=;
 b=d2tjlbG9M/CDIirz4Bi0sd/4oBWKV/owbuYlkGPKQmDxN8V2jfCWdt2IeWROlH9E3W
 yPsCgHu/Uq/7qFRJvDAw7DJp99l8V2dPtbn4l5Gem/gcaJre/5xH63+PyKN8+OzJHJtY
 e+sowDrWsoEHEnCTM43uDdqJQ2tqwTHNdItANfak54kXvJ7axoq1WXjxN4ErPM3vkegt
 X54sHMeXn+jJbRH5SlivFy5NxKgQ8GNf9HgXahUZjn7Z4kHbVN4hZAZx8Y8S8CATAhX0
 0erfdHd4NdJ0bTjRcTLYvRXpWpZGgdbYmVXJE87GNyu8sM0XXqa5AVNmxdP/Ws05XDB/
 /jPw==
X-Gm-Message-State: AOJu0YwfdA5BYiatz6JFxKYlyvcYcTDJZf9vTEEeYrF4DwULScgIti2d
 uxVK+iiGdiCwLiC/V6caP1KKGyVZaGAvl+69A4D1GZLVthXDfsAlCZy8BhPdIR7R4KsgECA+nH9
 1f5SSHGtIoUeLn+MdH0Hmw+JwaWwxgEQ=
X-Received: by 2002:a05:600c:45ca:b0:408:575e:f24f with SMTP id
 s10-20020a05600c45ca00b00408575ef24fmr5647880wmo.28.1698096580704; 
 Mon, 23 Oct 2023 14:29:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwIqmyWxHtLCEV9sJcM7Mm48Qpb+Y1PSoNkRJSeRh4CaGlNviwDWwltxau6u5GNETKD69b9g==
X-Received: by 2002:a05:600c:45ca:b0:408:575e:f24f with SMTP id
 s10-20020a05600c45ca00b00408575ef24fmr5647840wmo.28.1698096580275; 
 Mon, 23 Oct 2023 14:29:40 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 e7-20020a05600c218700b00407efbc4361sm14963606wme.9.2023.10.23.14.29.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Oct 2023 14:29:39 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Albert Esteve <aesteve@redhat.com>, qemu-devel@nongnu.org
In-Reply-To: <20231023074613.41327-10-aesteve@redhat.com>
References: <20231023074613.41327-1-aesteve@redhat.com>
 <20231023074613.41327-10-aesteve@redhat.com>
Date: Mon, 23 Oct 2023 23:29:39 +0200
Message-ID: <87h6mh10zg.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Spice-devel] [PATCH v6 9/9] drm: Introduce documentation for
 hotspot properties
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
Cc: linux-doc@vger.kernel.org, banackm@vmware.com,
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
 Matt Roper <matthew.d.roper@intel.com>, contact@emersion.fr,
 linux-kernel@vger.kernel.org, krastevm@vmware.com,
 Rob Clark <robdclark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 zackr@vmware.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Albert Esteve <aesteve@redhat.com> writes:

> From: Michael Banack <banackm@vmware.com>
>
> To clarify the intent and reasoning behind the hotspot properties
> introduce userspace documentation that goes over cursor handling
> in para-virtualized environments.
>
> The documentation is generic enough to not special case for any
> specific hypervisor and should apply equally to all.
>
> Signed-off-by: Zack Rusin <zackr@vmware.com>

The author is Michael Banack but it's missing a SoB from them.
I don't think there's a need to resend for this, can be added
when applying. But either Michael or Zack should confirm that
is the correct thing to do for this patch.

The doc itself looks great to me and it clarifies a lot about
cursor hotspots.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

