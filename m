Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BF49E0E38
	for <lists+spice-devel@lfdr.de>; Mon,  2 Dec 2024 22:52:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53E1810E86E;
	Mon,  2 Dec 2024 21:52:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="KoCB6DR0";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FB3C10E222
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Dec 2024 17:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1733159995;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WOfr91+KiLZkCa9xiK0L/FZ2M5u6/xclChDT0RYiwkk=;
 b=KoCB6DR0nYog5Ax5wa2wQEhucXKO2/lyhOlSMaJjByQRQqWtFKvDvR066XBIpMf3i6k/pI
 Ui4nTwhqH0mY6l7TgT+KCmVVPRPPvJL0420CHb3tCdpxsPK+Em/aUyoF9MOI+wR4iWDFqh
 TNnKdufpwlYKXae9VWNmUfDoqUaATLA=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-690-BWvZc3ixNPKj4DLtmtkzFQ-1; Mon, 02 Dec 2024 12:19:53 -0500
X-MC-Unique: BWvZc3ixNPKj4DLtmtkzFQ-1
X-Mimecast-MFC-AGG-ID: BWvZc3ixNPKj4DLtmtkzFQ
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-385f0829430so937155f8f.1
 for <spice-devel@lists.freedesktop.org>; Mon, 02 Dec 2024 09:19:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733159992; x=1733764792;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=WOfr91+KiLZkCa9xiK0L/FZ2M5u6/xclChDT0RYiwkk=;
 b=b3g+GmAzRD36kY0RrzLJCJ5cNNbRiDzho0HFJccD267jwVHYMXvua/d8sRFVWkXcLM
 LRJEMNSQtKBhkjln0OOPoNp9z6yIhWugYamrWasHRzY3ObijqKKKXY5m0VnrivKNV34D
 W34UTH5ZimvJRiub2d+pLc/nBgFHeNr3jYTatIfWfHWDYmE/ijdiEu/JDMUPn1OK0MKm
 I6iuuUEFEypqxkATxyPuG+K8GI4k5IZGFdA7ae/QL/ud1ROZoIb2LR0HitebbV6zgxUS
 AkG+SJiruotXW5WW/iTsbc6jYmFcKi3yfyNUWYOsrfi3gjwhElBrYFH8T3iycqjNI11P
 OsqQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWL//76TAdh0pMAYsHtLy4VCEbXXkT4Ydi2uHoRCUwQu+bmQqYkycaVZ6xoi8ZcmvuqNV1NsSBIPb+95w==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzMNCXE8jyJQO/CV7pq8i33SxqN/xT79oQZvVr09FKYLgQ/2rI8
 DjUjcSmXEHgjpdx1nYCI0vqGEg67ZdBzjb3rQZHy1QdbbadFDGSj4ToDl0JYjdoa9TgH4kXA9pb
 JxSlZD7PpoR6bN8MfP97ywaeVuIJtjBqNeEl+W8KdwyuCrGMzwuxNj5YgRGgoq+g+qBRI
X-Gm-Gg: ASbGncv79tuRPTa+1nZ/D2EmFmTSJMaT8tSDMFsDRETQrv80wmvO9eFE36Dtp7+JHHO
 qYJAvo7lYhVqLRlKSrRX41bdXmXrl1wMx9NLwehK8knQZsvkuKbk/aENoIcvcu0h7swxkk2thVw
 gv7HlOn5s5ffB2QVpUSv0y1nhDrog3D6cW28iKsIudxMFHs3kj1BqapF6tYY4pj4jON/rKDzGsB
 1+nT7WrRNx0EJimp1vLqgdLki4y2uYzJC4/YJsoNmwfMp95oc2shP5gCwOGkXfYBJarVV9x+ivm
 KV6qJHGGhiUIsg==
X-Received: by 2002:a05:6000:683:b0:385:f1ac:3ac9 with SMTP id
 ffacd0b85a97d-385f1ac3d18mr6152848f8f.17.1733159992492; 
 Mon, 02 Dec 2024 09:19:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGG85WlZO/QBaGMCugoF9sYm8aSKqDaJ5QSq+jZSb+fyCDanlsNLsHP9JFWpNh2ca7HuW9w2g==
X-Received: by 2002:a05:6000:683:b0:385:f1ac:3ac9 with SMTP id
 ffacd0b85a97d-385f1ac3d18mr6152813f8f.17.1733159992095; 
 Mon, 02 Dec 2024 09:19:52 -0800 (PST)
Received: from ?IPV6:2a01:e0a:c:37e0:ced3:55bd:f454:e722?
 ([2a01:e0a:c:37e0:ced3:55bd:f454:e722])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-385ec6a3d8fsm5375947f8f.101.2024.12.02.09.19.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Dec 2024 09:19:51 -0800 (PST)
Message-ID: <a0fc9b8c-e86d-46a2-a1d2-5ce8793ad2a5@redhat.com>
Date: Mon, 2 Dec 2024 18:19:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5] drm/virtio: Add drm_panic support
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Ryosuke Yasuoka <ryasuoka@redhat.com>, airlied@redhat.com,
 kraxel@redhat.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, daniel@ffwll.ch, christophe.jaillet@wanadoo.fr
Cc: virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20241129122408.4167150-1-ryasuoka@redhat.com>
 <be01d2f7-8423-4e10-b65b-a84a7bc7c99e@collabora.com>
 <3ca0382c-a410-4424-a5a4-7c1b8be7ebed@collabora.com>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <3ca0382c-a410-4424-a5a4-7c1b8be7ebed@collabora.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 8IaKcVf2e11vvHmxQQGZfn4pDTQP4wf0VH6QafpZ7eI_1733159993
X-Mimecast-Originator: redhat.com
Content-Language: en-US, fr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 02 Dec 2024 21:52:23 +0000
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

On 02/12/2024 17:19, Dmitry Osipenko wrote:
> On 12/2/24 17:29, Dmitry Osipenko wrote:
>> On 11/29/24 15:24, Ryosuke Yasuoka wrote:
>> ....
>>> +static int virtio_drm_get_scanout_buffer(struct drm_plane *plane,
>>> +					 struct drm_scanout_buffer *sb)
>>> +{
>>> +	struct virtio_gpu_object *bo;
>>> +
>>> +	if (!plane->state || !plane->state->fb || !plane->state->visible)
>>> +		return -ENODEV;
>>> +
>>> +	bo = gem_to_virtio_gpu_obj(plane->state->fb->obj[0]);
>>> +	if (virtio_gpu_is_vram(bo))
>>> +		return -ENODEV;
>>
>> VirtIO-GPU now supports importing external dmabufs, we should reject
>> bo->base.base.import_attach here now too.
>>
>>> +
>>> +	/* try to vmap it if possible */
>>> +	if (!bo->base.vaddr) {
>>> +		int ret;
>>> +
>>> +		ret = drm_gem_shmem_vmap(&bo->base, &sb->map[0]);
>>> +		if (ret)
>>> +			return ret;
>>
>> I've now noticed that drm_gem_shmem_vmap() expects BO reservation lock
>> to be held and we can't take lock it at a panic time.
>>
>> https://elixir.bootlin.com/linux/v6.12.1/source/drivers/gpu/drm/drm_gem_shmem_helper.c#L330
>>
>> This resv warning isn't triggered because bo->base.vaddr is set for VT
>> framebufffer BO when panic happens.

I usually test using gnome desktop in the VM, and in this case vaddr is 
not set, and calling vmap() is needed. (and I don't get the warning, I 
will check why).
>>
>> We actually should reject all BOs that don't have bo->base.vaddr set at
>> the panic time. Please correct it in v6 and rebase on top of a recent
>> drm-next tree.

The lock is there to prevent race conditions between concurrent tasks. 
In the panic handler, no other tasks can run in parallel. Also the 
buffer object is the one currently displayed, so it can't be in the 
middle of a free/resize or move operation. So I think it's safe to call 
vmap() from the panic handler.

> 
> Think ideally we need to have a pre-allocated and pre-mapped BO. Then
> when panic happens, use that BO and tell host to display it, i.e. not to
> reuse currently displayed BO. This will make panic display work in all
> conditions. WDYT?
> 

This means a full framebuffer will be allocated only for the panic use 
case. For GPU with a small amount of VRAM, it's not possible. But 
virtio-gpu is a bit special as it uses system RAM, so it might be less 
problematic to do that.

An alternate solution would be to make sure the framebuffer is vmapped 
(at least if it's shmem) so the panic handler won't need to call vmap().

Best regards,

-- 

Jocelyn



-- 

Jocelyn

