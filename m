Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD6B7A5BDB
	for <lists+spice-devel@lfdr.de>; Tue, 19 Sep 2023 10:03:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C0A110E25B;
	Tue, 19 Sep 2023 08:03:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D107F10E35F;
 Tue, 19 Sep 2023 07:31:11 +0000 (UTC)
Received: from [192.168.88.20] (91-154-35-171.elisa-laajakaista.fi
 [91.154.35.171])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 57854FA2;
 Tue, 19 Sep 2023 09:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1695108574;
 bh=DQnS4aIKIh13ovdc7BzfWH9E6TxBe1gPiyTE4ZjyNYY=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=BOesDxxoV/01VlAhluf7YLPC/1LY5v6DUSAmbryylQA/UVNncmcoPm89AX/9XYQ6d
 nW4D4fbSVh5QAPCRVAPFeL6NrYodQDHDg4hKu5ZyPB9+abblvv6BOZXW80KLAK5An8
 zKVe1L0FDrNX/uErlZKXCnkz1zj3Og7O87huezYg=
Message-ID: <06ac6d3b-e82e-dd25-ab21-90db76f3a5fd@ideasonboard.com>
Date: Tue, 19 Sep 2023 10:31:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>
References: <20230901234015.566018-1-dianders@chromium.org>
 <20230901163944.RFT.2.I9115e5d094a43e687978b0699cc1fe9f2a3452ea@changeid>
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
In-Reply-To: <20230901163944.RFT.2.I9115e5d094a43e687978b0699cc1fe9f2a3452ea@changeid>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 19 Sep 2023 08:03:29 +0000
Subject: Re: [Spice-devel] [RFT PATCH 2/6] drm: Call
 drm_atomic_helper_shutdown() at shutdown time for misc drivers
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
Cc: alexandre.belloni@bootlin.com, xinliang.liu@linaro.org,
 linus.walleij@linaro.org, liviu.dudau@arm.com, linux-hyperv@vger.kernel.org,
 stefan@agner.ch, nicolas.ferre@microchip.com, wens@csie.org,
 jstultz@google.com, kraxel@redhat.com, sumit.semwal@linaro.org,
 yongqin.liu@linaro.org, samuel@sholland.org, sam@ravnborg.org,
 javierm@redhat.com, jernej.skrabec@gmail.com, drawat.floss@gmail.com,
 kong.kongxinwei@hisilicon.com, alain.volmat@foss.st.com,
 linux-sunxi@lists.linux.dev, suijingfeng@loongson.cn, tzimmermann@suse.de,
 alison.wang@nxp.com, airlied@redhat.com,
 virtualization@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, jfalempe@redhat.com,
 bbrezillon@kernel.org, linux-kernel@vger.kernel.org, christian.koenig@amd.com,
 paul.kocialkowski@bootlin.com, spice-devel@lists.freedesktop.org,
 daniel@ffwll.ch, alexander.deucher@amd.com, tiantao6@hisilicon.com,
 claudiu.beznea@microchip.com, zackr@vmware.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 02/09/2023 02:39, Douglas Anderson wrote:
> Based on grepping through the source code these drivers appear to be
> missing a call to drm_atomic_helper_shutdown() at system shutdown
> time. Among other things, this means that if a panel is in use that it
> won't be cleanly powered off at system shutdown time.
> 
> The fact that we should call drm_atomic_helper_shutdown() in the case
> of OS shutdown/restart comes straight out of the kernel doc "driver
> instance overview" in drm_drv.c.
> 
> All of the drivers in this patch were fairly straightforward to fix
> since they already had a call to drm_atomic_helper_shutdown() at
> remove/unbind time but were just lacking one at system shutdown. The
> only hitch is that some of these drivers use the component model to
> register/unregister their DRM devices. The shutdown callback is part
> of the original device. The typical solution here, based on how other
> DRM drivers do this, is to keep track of whether the device is bound
> based on drvdata. In most cases the drvdata is the drm_device, so we
> can just make sure it is NULL when the device is not bound. In some
> drivers, this required minor code changes. To make things simpler,
> drm_atomic_helper_shutdown() has been modified to consider a NULL
> drm_device as a noop in the patch ("drm/atomic-helper:
> drm_atomic_helper_shutdown(NULL) should be a noop").
> 
> Suggested-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

For omapdrm:

Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Tested-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

  Tomi

