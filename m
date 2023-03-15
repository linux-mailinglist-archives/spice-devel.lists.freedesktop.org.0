Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF976BB925
	for <lists+spice-devel@lfdr.de>; Wed, 15 Mar 2023 17:09:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA26D10E94B;
	Wed, 15 Mar 2023 16:09:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 750FA10E9AA;
 Wed, 15 Mar 2023 11:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678881300; x=1710417300;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=oPJSnVJBwKqGK8ZAqvFY8WXT8H4giRQeUz42yfh764o=;
 b=jWO4iEZhcmTEqoKXFDsD9dXNWzOae0K3WGhQpmmTqA3G4QgK8Rgcbsn9
 5g5uN5ieW7imrJvFMA5BIP6wr/BkRwdlHLR0G1WKilTATQcVSyksLNhuB
 9WLvmGZt6H/MrLhnp4Fi3X5emAGuwK/cjzFNSNEEn53uX8nNRqZHcyEo6
 Im1mPlV7PVTB9jYvcMpeSHtuRlhV5h1EDrHL5pwqTISv/S2Nn1ysEsl4p
 FRHELA1znvZwH4aUI7YPVosWDL8reaz9MG1yRh46HzJgaKtW4tH0IMuzz
 ksUfnCjm+LauBgMs+GRiOUJDVWv5LgFPhCHCc8DEgq+omWgohdqPCBA6g g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="335166528"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="335166528"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 04:54:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="803256923"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="803256923"
Received: from wujunyox-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.32])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 04:54:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Niklas Schnelle <schnelle@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>,
 Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>, David
 Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
In-Reply-To: <20230314121216.413434-8-schnelle@linux.ibm.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230314121216.413434-1-schnelle@linux.ibm.com>
 <20230314121216.413434-8-schnelle@linux.ibm.com>
Date: Wed, 15 Mar 2023 13:54:49 +0200
Message-ID: <87fsa65iwm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Approved-At: Wed, 15 Mar 2023 16:09:33 +0000
Subject: Re: [Spice-devel] [PATCH v3 07/38] drm: handle HAS_IOPORT
 dependencies
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Albert Ou <aou@eecs.berkeley.edu>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 Alan Stern <stern@rowland.harvard.edu>,
 Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Helgaas <bhelgaas@google.com>,
 spice-devel@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Tue, 14 Mar 2023, Niklas Schnelle <schnelle@linux.ibm.com> wrote:
> In a future patch HAS_IOPORT=n will result in inb()/outb() and friends
> not being declared. We thus need to add HAS_IOPORT as dependency for
> those drivers using them. In the bochs driver there is optional MMIO
> support detected at runtime, warn if this isn't taken when
> HAS_IOPORT is not defined.

Not that I care a whole lot, but there should really only be one warning
or even failure to probe at bochs_hw_init() for !bochs->mmio &&
!IS_ENABLED(CONFIG_HAS_IOPORT), not warnings all over the place.

Moreover, the config macro is CONFIG_HAS_IOPORT instead of HAS_IOPORT
that you check for below.

BR,
Jani.

> There is also a direct and hard coded use in cirrus.c which according to
> the comment is only necessary during resume.  Let's just skip this as
> for example s390 which doesn't have I/O port support also doesen't
> support suspend/resume.
>
> Co-developed-by: Arnd Bergmann <arnd@kernel.org>
> Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
> ---
>  drivers/gpu/drm/qxl/Kconfig   |  1 +
>  drivers/gpu/drm/tiny/bochs.c  | 19 +++++++++++++++++++
>  drivers/gpu/drm/tiny/cirrus.c |  2 ++
>  3 files changed, 22 insertions(+)
>
> diff --git a/drivers/gpu/drm/qxl/Kconfig b/drivers/gpu/drm/qxl/Kconfig
> index ca3f51c2a8fe..d0e0d440c8d9 100644
> --- a/drivers/gpu/drm/qxl/Kconfig
> +++ b/drivers/gpu/drm/qxl/Kconfig
> @@ -2,6 +2,7 @@
>  config DRM_QXL
>  	tristate "QXL virtual GPU"
>  	depends on DRM && PCI && MMU
> +	depends on HAS_IOPORT
>  	select DRM_KMS_HELPER
>  	select DRM_TTM
>  	select DRM_TTM_HELPER
> diff --git a/drivers/gpu/drm/tiny/bochs.c b/drivers/gpu/drm/tiny/bochs.c
> index 024346054c70..da4a5d53b003 100644
> --- a/drivers/gpu/drm/tiny/bochs.c
> +++ b/drivers/gpu/drm/tiny/bochs.c
> @@ -2,6 +2,7 @@
>  
>  #include <linux/module.h>
>  #include <linux/pci.h>
> +#include <asm/bug.h>
>  
>  #include <drm/drm_aperture.h>
>  #include <drm/drm_atomic_helper.h>
> @@ -105,7 +106,11 @@ static void bochs_vga_writeb(struct bochs_device *bochs, u16 ioport, u8 val)
>  
>  		writeb(val, bochs->mmio + offset);
>  	} else {
> +#ifdef HAS_IOPORT
>  		outb(val, ioport);
> +#else
> +		WARN_ONCE(1, "Non-MMIO bochs device needs HAS_IOPORT");
> +#endif
>  	}
>  }
>  
> @@ -119,7 +124,12 @@ static u8 bochs_vga_readb(struct bochs_device *bochs, u16 ioport)
>  
>  		return readb(bochs->mmio + offset);
>  	} else {
> +#ifdef HAS_IOPORT
>  		return inb(ioport);
> +#else
> +		WARN_ONCE(1, "Non-MMIO bochs device needs HAS_IOPORT");
> +		return 0xff;
> +#endif
>  	}
>  }
>  
> @@ -132,8 +142,13 @@ static u16 bochs_dispi_read(struct bochs_device *bochs, u16 reg)
>  
>  		ret = readw(bochs->mmio + offset);
>  	} else {
> +#ifdef HAS_IOPORT
>  		outw(reg, VBE_DISPI_IOPORT_INDEX);
>  		ret = inw(VBE_DISPI_IOPORT_DATA);
> +#else
> +		WARN_ONCE(1, "Non-MMIO bochs device needs HAS_IOPORT");
> +		ret = 0xffff;
> +#endif
>  	}
>  	return ret;
>  }
> @@ -145,8 +160,12 @@ static void bochs_dispi_write(struct bochs_device *bochs, u16 reg, u16 val)
>  
>  		writew(val, bochs->mmio + offset);
>  	} else {
> +#ifdef HAS_IOPORT
>  		outw(reg, VBE_DISPI_IOPORT_INDEX);
>  		outw(val, VBE_DISPI_IOPORT_DATA);
> +#else
> +		WARN_ONCE(1, "Non-MMIO bochs device needs HAS_IOPORT");
> +#endif
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/tiny/cirrus.c b/drivers/gpu/drm/tiny/cirrus.c
> index accfa52e78c5..9da89732c5ac 100644
> --- a/drivers/gpu/drm/tiny/cirrus.c
> +++ b/drivers/gpu/drm/tiny/cirrus.c
> @@ -308,8 +308,10 @@ static int cirrus_mode_set(struct cirrus_device *cirrus,
>  
>  	cirrus_set_start_address(cirrus, 0);
>  
> +#ifdef CONFIG_HAS_IOPORT
>  	/* Unblank (needed on S3 resume, vgabios doesn't do it then) */
>  	outb(0x20, 0x3c0);
> +#endif
>  
>  	drm_dev_exit(idx);
>  	return 0;

-- 
Jani Nikula, Intel Open Source Graphics Center
