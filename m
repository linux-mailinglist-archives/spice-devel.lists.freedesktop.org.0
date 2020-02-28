Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3594E17459F
	for <lists+spice-devel@lfdr.de>; Sat, 29 Feb 2020 09:34:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF1C76E15A;
	Sat, 29 Feb 2020 08:34:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from asavdk4.altibox.net (asavdk4.altibox.net [109.247.116.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E2A76F4B5;
 Fri, 28 Feb 2020 19:36:09 +0000 (UTC)
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 0483980514;
 Fri, 28 Feb 2020 20:36:04 +0100 (CET)
Date: Fri, 28 Feb 2020 20:36:03 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20200228193603.GA22966@ravnborg.org>
References: <20200228081828.18463-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228081828.18463-1-tzimmermann@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=M3ojcJYEX91-BlvvUz8A:9 a=CjuIK1q_8ugA:10
X-Mailman-Approved-At: Sat, 29 Feb 2020 08:34:28 +0000
Subject: Re: [Spice-devel] [PATCH v4 0/4] drm: Provide a simple encoder
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
 spice-devel@lists.freedesktop.org, emil.velikov@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Thomas.

On Fri, Feb 28, 2020 at 09:18:24AM +0100, Thomas Zimmermann wrote:
> Many DRM drivers implement an encoder with an empty implementation. This
> patchset adds drm_simple_encoder_init(), which drivers can use instead.
> Except for the destroy callback, the simple encoder's implementation is
> empty.
> 
> The patchset also converts 4 encoder instances to use the simple-encoder
> helpers. But there are at least 11 other drivers which can use the helper
> and I think I did not examine all drivers yet.
> 
> The patchset was smoke-tested on mgag200 by running the fbdev console
> and Gnome on X11.
> 
> v4:
> 	* print error messages with drm_err() (Sam)
> 	* qxl: handle errors of drm_simple_encoder_init() (Sam)

Looked through the patches - all looked good.
IMO ready to apply.

	Sam
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
