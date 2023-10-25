Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DCA7D61B8
	for <lists+spice-devel@lfdr.de>; Wed, 25 Oct 2023 08:36:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8228210E557;
	Wed, 25 Oct 2023 06:36:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B14E10E554
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Oct 2023 06:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1698215766;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3QCkYDGehxxNqzt09gBv9p4n2vFS1oLTgsSq6IkVxVA=;
 b=Dcn2ybq8W8kmNsiP+tdn+J0Vi4awS7uJcDQGMuUOK7bVJ3oLlxmDtajnpf4Fud1tpdsRSe
 1aS4OnKyV+i5tnVG7AoemnVakPUoZWFLBlsGh28suQ8Rus3ZAkrcrhj+6fWaMDwWEsv40u
 +gwxq39XjYpR5B6TyKmh5r1XDt0+3zQ=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-382-BGaT4w2lMa2UhvPw37Jamw-1; Wed, 25 Oct 2023 02:36:02 -0400
X-MC-Unique: BGaT4w2lMa2UhvPw37Jamw-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-32dceab634dso2356304f8f.2
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Oct 2023 23:36:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698215761; x=1698820561;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3QCkYDGehxxNqzt09gBv9p4n2vFS1oLTgsSq6IkVxVA=;
 b=JOy8IVk67CfQEMUIICsOnr30PR+cMWAxMOpXxKv9puxzP2MXPxD0PY1NSY+EGbQM4q
 VHUiKCGSgXgqB0NmvZbUINFFiBBpJndt1wdNf6OTIPAw3CI58Ws0f/b1uHWSigkR12Gi
 upxPIuIblFkPB/0WYBzAvn1x3n96pZ7jtGN1sR/Bh/YwlMnmHG9hPPPUYZIpen2F6xLa
 tjjjskeI2EZUMVisVFOIxme1V1/CHtU5hDo4vadb7QxeU5e4TLAw/Bcn+uAhPY2Gymym
 1YrMJ7WOr6L1QkboX8knl/m/h66p5Q2BC/ioSgjMxhJMX+zBQn+blix8nWDme/3Eq3Mj
 Bj7w==
X-Gm-Message-State: AOJu0YyDxwsodUETStsdp3Z7n1ZKSOl9cFI3yFgD/bKVJGyYz3DTyC0j
 v/gtggoPeZ3O4/M+AXYGFxdRL8Nb+g6zNdtwb0LC43RqQskM2XMKVwKCT1tvAyOChkwAh+TrkRk
 r9PhMvhoI2xdGxR2gdZ0Pbd9xjQ0RJgM=
X-Received: by 2002:adf:f64a:0:b0:32d:a49c:dfd0 with SMTP id
 x10-20020adff64a000000b0032da49cdfd0mr9244587wrp.64.1698215761758; 
 Tue, 24 Oct 2023 23:36:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF5pjp6+UGcNGf+pR7eCaZquF6TdQK9ic+pGsGfXKq7QOOQ0Jp5pQG5o2Uq/SY5UVuq/3Y74g==
X-Received: by 2002:adf:f64a:0:b0:32d:a49c:dfd0 with SMTP id
 x10-20020adff64a000000b0032da49cdfd0mr9244562wrp.64.1698215761437; 
 Tue, 24 Oct 2023 23:36:01 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 t14-20020a5d534e000000b0032710f5584fsm11318664wrv.25.2023.10.24.23.36.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Oct 2023 23:36:00 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Michael Banack <banackm@vmware.com>, Albert Esteve <aesteve@redhat.com>,
 qemu-devel@nongnu.org
In-Reply-To: <1bbee4ad-79fe-4968-0edc-3eee34ad5972@vmware.com>
References: <20231023074613.41327-1-aesteve@redhat.com>
 <20231023074613.41327-10-aesteve@redhat.com>
 <87h6mh10zg.fsf@minerva.mail-host-address-is-not-set>
 <1bbee4ad-79fe-4968-0edc-3eee34ad5972@vmware.com>
Date: Wed, 25 Oct 2023 08:36:00 +0200
Message-ID: <87a5s79pkf.fsf@minerva.mail-host-address-is-not-set>
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
Cc: Maxime Ripard <mripard@kernel.org>,
 Gurchetan Singh <gurchetansingh@chromium.org>, krastevm@vmware.com,
 linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, Hans de Goede <hdegoede@redhat.com>,
 ppaalanen@gmail.com,
 VMware Graphics Reviewers <linux-graphics-maintainer@vmware.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 spice-devel@lists.freedesktop.org, David Airlie <airlied@redhat.com>,
 iforbes@vmware.com, Matt Roper <matthew.d.roper@intel.com>,
 mombasawalam@vmware.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Michael Banack <banackm@vmware.com> writes:

Hello Michael,

> Yes, that patch should be:
>
> Signed-off-by: Michael Banack <banackm@vmware.com>
>

Great, thanks for the confirmation.

> --Michael Banack
>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

