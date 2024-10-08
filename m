Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E02997394
	for <lists+spice-devel@lfdr.de>; Wed,  9 Oct 2024 19:47:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0539710E7AA;
	Wed,  9 Oct 2024 17:47:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DwaGmYs7";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6869E10E1B7;
 Wed,  9 Oct 2024 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728453412; x=1759989412;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=7dW4w6phvQruEe9HuEgM9lyOn3eFcvaGNs98Cr17tFQ=;
 b=DwaGmYs7zrs/P9OH/RgS/5H0NOlinQAaOEMF+/iDgPIn1uqGeqXl0JCV
 zs2SeBEtIM1l6zb/FHEn8IU49bQWnWPT3Gig115QSfkZzhH7W0RhHEiJV
 AsxU/VawBWpitvPSo62cC+1+MAEyG+VgEX/sqxKWTtjc56DPD4wAvJ7ar
 mwWwG/VQt6D5HcwPoetGlF38HU7tV0N6Tk8v8Tu3Cb8K2mo2oUXooLr2E
 dhDrTWnXSxqlSeTQpuOvQ4dvmnb8pzD3Ov28ejy+4nRrM3bweSZER7mc2
 ZTZPTr1GJCBjQRp/2S0MS2qMKQrlyI3TesNgeifAk+qHm7a7VNF+5Uh22 Q==;
X-CSE-ConnectionGUID: kY7ZmKoBQU6SxJhdAGm3BQ==
X-CSE-MsgGUID: gRc3sS1iSuym6cNVl687Jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27179794"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27179794"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 22:56:49 -0700
X-CSE-ConnectionGUID: y0lUpepsTRC/d3/ocfgfQw==
X-CSE-MsgGUID: tzVJdz/VRQO7V68YoV582A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="99467211"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO [10.245.245.243])
 ([10.245.245.243])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 22:56:46 -0700
Message-ID: <bca5dcb838a8201d288d47b35a3d3cff353e4c2c.camel@linux.intel.com>
Subject: Re: [PATCH v2 1/2] drm/ttm: Change ttm_device_init to use a struct
 instead of multiple bools
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Brost <matthew.brost@intel.com>
Cc: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, 
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, nouveau@lists.freedesktop.org, 
 spice-devel@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Zack
 Rusin <zack.rusin@broadcom.com>, bcm-kernel-feedback-list@broadcom.com, Sui
 Jingfeng <suijingfeng@loongson.cn>, Thomas Zimmermann <tzimmermann@suse.de>
Date: Wed, 09 Oct 2024 07:56:18 +0200
In-Reply-To: <ZwC9NfwE/vkGiq1Y@DUT025-TGLU.fm.intel.com>
References: <20241002122422.287276-1-thomas.hellstrom@linux.intel.com>
 <20241002122422.287276-2-thomas.hellstrom@linux.intel.com>
 <6c0387d0-1979-48ae-b9ff-49e00a459438@amd.com>
 <761343773c9e1f5f0cc348a1ec953fb3194194e1.camel@linux.intel.com>
 <a9ef0e2bb79c1f572f82c320a9d77f9cdc75c964.camel@linux.intel.com>
 <ZwC9NfwE/vkGiq1Y@DUT025-TGLU.fm.intel.com>
Autocrypt: addr=thomas.hellstrom@linux.intel.com; prefer-encrypt=mutual;
 keydata=mDMEZaWU6xYJKwYBBAHaRw8BAQdAj/We1UBCIrAm9H5t5Z7+elYJowdlhiYE8zUXgxcFz360SFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCBMaW51eCBlbWFpbCkgPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPoiTBBMWCgA7FiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQuBaTVQrGBr/yQAD/Z1B+Kzy2JTuIy9LsKfC9FJmt1K/4qgaVeZMIKCAxf2UBAJhmZ5jmkDIf6YghfINZlYq6ixyWnOkWMuSLmELwOsgPuDgEZaWU6xIKKwYBBAGXVQEFAQEHQF9v/LNGegctctMWGHvmV/6oKOWWf/vd4MeqoSYTxVBTAwEIB4h4BBgWCgAgFiEEbJFDO8NaBua8diGTuBaTVQrGBr8FAmWllOsCGwwACgkQuBaTVQrGBr/P2QD9Gts6Ee91w3SzOelNjsus/DcCTBb3fRugJoqcfxjKU0gBAKIFVMvVUGbhlEi6EFTZmBZ0QIZEIzOOVfkaIgWelFEH
Organization: Intel Sweden AB, Registration Number: 556189-6027
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 09 Oct 2024 17:47:34 +0000
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

On Sat, 2024-10-05 at 04:14 +0000, Matthew Brost wrote:
> On Fri, Oct 04, 2024 at 04:28:29PM +0200, Thomas Hellstr=C3=B6m wrote:
> > On Wed, 2024-10-02 at 14:54 +0200, Thomas Hellstr=C3=B6m wrote:
> > > On Wed, 2024-10-02 at 14:45 +0200, Christian K=C3=B6nig wrote:
> > > > Am 02.10.24 um 14:24 schrieb Thomas Hellstr=C3=B6m:
> > > > > The ttm_device_init funcition uses multiple bool arguments.
> > > > > That
> > > > > means
> > > > > readability in the caller becomes poor, and all callers need
> > > > > to
> > > > > change if
> > > > > yet another bool is added.
> > > > >=20
> > > > > Instead use a struct with multiple single-bit flags. This
> > > > > addresses
> > > > > both
> > > > > problems. Prefer it over using defines or enums with explicit
> > > > > bit
> > > > > shifts,
> > > > > since converting to and from these bit values uses logical
> > > > > operations or
> > > > > tests which are implicit with the struct usage, and ofc type-
> > > > > checking.
> > > >=20
> > > > Ok, that style is new to me. I've mostly seen defined parameter
> > > > flags
> > > > in=20
> > > > the kernel.
> > > >=20
> > > > It obviously has some advantages, but do we have any precedence
> > > > in
> > > > the=20
> > > > kernel for using that approach?
>=20
> I agree multiple bool arguments are not a great idea. I spent 4-5
> hours
> a few weeks ago chasing bug in Xe where I transposed bool arguments.
> Complete waste of time likely could've been avoided with something
> like
> this.
>=20
> Also agree this makes code much more readable at the caller.
>=20
> FWIW plan on using style for bool arguments in gpusvm.
>=20
> I do have a couple of nits with the style below.
>=20
> > >=20
> > > I don't know TBH, but I can take a look.
> >=20
> > So it seems=C2=A0 parse_events__modifier_event() uses something similar
> >=20
> > grep u32 `find . -name '*.h'` | grep ': 1' or
> > grep bool `find . -name '*.h'` | grep ': 1'
> >=20
> > reveals a huge number of lines but most of it looks like it's not
> > used
> > as function parameters.
> >=20
> > I'll ping Dave and Sima on IRC (I guess they're the ones to receive
> > most blame from Linus if it's deemed not good).
> >=20
> > /Thomas
> >=20
> >=20
> > >=20
> > > I've used the same style in some of the shrinker series patches,
> > > since
> > > using multiple bools in the prototype severely reduces
> > > readability
> > > and
> > > mixing the resulting flag defines without type-checking may
> > > introduce
> > > hard-to find bugs.
> > >=20
> > > /Thomas
> > >=20
> > >=20
> > >=20
> > > >=20
> > > > Regards,
> > > > Christian.
> > > >=20
> > > > >=20
> > > > > This is in preparation of adding yet another bool flag
> > > > > parameter
> > > > > to
> > > > > the
> > > > > function.
> > > > >=20
> > > > > Cc: Christian K=C3=B6nig <christian.koenig@amd.com>
> > > > > Cc: amd-gfx@lists.freedesktop.org
> > > > > Cc: intel-gfx@lists.freedesktop.org
> > > > > Cc: nouveau@lists.freedesktop.org
> > > > > Cc: spice-devel@lists.freedesktop.org
> > > > > Cc: dri-devel@lists.freedesktop.org
> > > > > Cc: Zack Rusin <zack.rusin@broadcom.com>
> > > > > Cc: <bcm-kernel-feedback-list@broadcom.com>
> > > > > Cc: Sui Jingfeng <suijingfeng@loongson.cn>
> > > > > Cc: <intel-xe@lists.freedesktop.org>
> > > > > Signed-off-by: Thomas Hellstr=C3=B6m
> > > > > <thomas.hellstrom@linux.intel.com>
> > > > > ---
> > > > > =C2=A0 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0 6 ++++--
> > > > > =C2=A0 drivers/gpu/drm/drm_gem_vram_helper.c=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 7 ++++---
> > > > > =C2=A0 drivers/gpu/drm/i915/intel_region_ttm.c=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0 3 ++-
> > > > > =C2=A0 drivers/gpu/drm/loongson/lsdc_ttm.c=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 5 ++++-
> > > > > =C2=A0 drivers/gpu/drm/nouveau/nouveau_ttm.c=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 7 +++++--
> > > > > =C2=A0 drivers/gpu/drm/qxl/qxl_ttm.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=
=A0 2 +-
> > > > > =C2=A0 drivers/gpu/drm/radeon/radeon_ttm.c=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 6 ++++--
> > > > > =C2=A0 drivers/gpu/drm/ttm/tests/ttm_bo_test.c=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 | 16 +++++++-
> > > > > ----
> > > > > --
> > > > > -
> > > > > =C2=A0 .../gpu/drm/ttm/tests/ttm_bo_validate_test.c=C2=A0 |=C2=A0=
 3 ++-
> > > > > =C2=A0 drivers/gpu/drm/ttm/tests/ttm_device_test.c=C2=A0=C2=A0 | =
16
> > > > > ++++++++----
> > > > > --
> > > > > -
> > > > > =C2=A0 drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c | 20
> > > > > ++++++++----
> > > > > --
> > > > > -----
> > > > > =C2=A0 drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.h |=C2=A0 6 ++=
----
> > > > > =C2=A0 drivers/gpu/drm/ttm/ttm_device.c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 7 +++----
> > > > > =C2=A0 drivers/gpu/drm/vmwgfx/vmwgfx_drv.c=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 4 ++--
> > > > > =C2=A0 drivers/gpu/drm/xe/xe_device.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 3 +=
+-
> > > > > =C2=A0 include/drm/ttm/ttm_device.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | =
12
> > > > > ++++++++++-
> > > > > =C2=A0 16 files changed, 71 insertions(+), 52 deletions(-)
> > > > >=20
> > > > > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> > > > > b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> > > > > index 74adb983ab03..e43635ac54fd 100644
> > > > > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> > > > > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> > > > > @@ -1853,8 +1853,10 @@ int amdgpu_ttm_init(struct
> > > > > amdgpu_device
> > > > > *adev)
> > > > > =C2=A0=C2=A0	r =3D ttm_device_init(&adev->mman.bdev,
> > > > > &amdgpu_bo_driver,
> > > > > adev->dev,
> > > > > =C2=A0=C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 adev_to_drm(a=
dev)-
> > > > > >anon_inode-
> > > > > > i_mapping,
> > > > > =C2=A0=C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 adev_to_drm(a=
dev)-
> > > > > > vma_offset_manager,
> > > > > -			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 adev->need_swiotlb,
> > > > > -			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dma_addressing_limited(a=
dev-
> > > > > > dev));
> > > > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (struct
> > > > > ttm_device_init_flags){
> > > > > +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .use_dma_alloc =3D
> > > > > adev-
> > > > > > need_swiotlb,
> > > > > +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .use_dma32 =3D
> > > > > dma_addressing_limited(adev->dev)
> > > > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 });
>=20
> I can't say I like declaring the ttm_device_init_flags as part of the
> function arguments. I'd prefer this a local variable but this just an
> opinion. Not blocker but if other agree with me, maybe change this.

I think it's merely providing an initializer. The generated code (at
least with -O2) will be more or less the identical to if a 'u32 flags'
argument with defines or an enum was used instead of the struct.

So basically it boils down to whether the c code function call becomes
_too_ noisy, and I think that's a matter of taste.

/Thomas


>=20
> Matt
>=20
> > > > > =C2=A0=C2=A0	if (r) {
> > > > > =C2=A0=C2=A0		DRM_ERROR("failed initializing buffer object
> > > > > driver(%d).\n", r);
> > > > > =C2=A0=C2=A0		return r;
> > > > > diff --git a/drivers/gpu/drm/drm_gem_vram_helper.c
> > > > > b/drivers/gpu/drm/drm_gem_vram_helper.c
> > > > > index 22b1fe9c03b8..7c3165b00378 100644
> > > > > --- a/drivers/gpu/drm/drm_gem_vram_helper.c
> > > > > +++ b/drivers/gpu/drm/drm_gem_vram_helper.c
> > > > > @@ -931,9 +931,10 @@ static int drm_vram_mm_init(struct
> > > > > drm_vram_mm
> > > > > *vmm, struct drm_device *dev,
> > > > > =C2=A0=C2=A0	vmm->vram_size =3D vram_size;
> > > > > =C2=A0=20
> > > > > =C2=A0=C2=A0	ret =3D ttm_device_init(&vmm->bdev, &bo_driver, dev-
> > > > > >dev,
> > > > > -				 dev->anon_inode->i_mapping,
> > > > > -				 dev->vma_offset_manager,
> > > > > -				 false, true);
> > > > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev->anon_inode->i_mapping,
> > > > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev->vma_offset_manager,
> > > > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (struct ttm_device_init_flags)
> > > > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 {.use_dma32 =3D true});
> > > > > =C2=A0=C2=A0	if (ret)
> > > > > =C2=A0=C2=A0		return ret;
> > > > > =C2=A0=20
> > > > > diff --git a/drivers/gpu/drm/i915/intel_region_ttm.c
> > > > > b/drivers/gpu/drm/i915/intel_region_ttm.c
> > > > > index 04525d92bec5..db34da63814c 100644
> > > > > --- a/drivers/gpu/drm/i915/intel_region_ttm.c
> > > > > +++ b/drivers/gpu/drm/i915/intel_region_ttm.c
> > > > > @@ -34,7 +34,8 @@ int intel_region_ttm_device_init(struct
> > > > > drm_i915_private *dev_priv)
> > > > > =C2=A0=20
> > > > > =C2=A0=C2=A0	return ttm_device_init(&dev_priv->bdev,
> > > > > i915_ttm_driver(),
> > > > > =C2=A0=C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 drm->dev, drm=
->anon_inode-
> > > > > > i_mapping,
> > > > > -			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 drm->vma_offset_manager,
> > > > > false,
> > > > > false);
> > > > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 drm->vma_offset_manager,
> > > > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (struct
> > > > > ttm_device_init_flags){});
> > > > > =C2=A0 }
> > > > > =C2=A0=20
> > > > > =C2=A0 /**
> > > > > diff --git a/drivers/gpu/drm/loongson/lsdc_ttm.c
> > > > > b/drivers/gpu/drm/loongson/lsdc_ttm.c
> > > > > index 2e42c6970c9f..c684f1636f3f 100644
> > > > > --- a/drivers/gpu/drm/loongson/lsdc_ttm.c
> > > > > +++ b/drivers/gpu/drm/loongson/lsdc_ttm.c
> > > > > @@ -544,7 +544,10 @@ int lsdc_ttm_init(struct lsdc_device
> > > > > *ldev)
> > > > > =C2=A0=20
> > > > > =C2=A0=C2=A0	ret =3D ttm_device_init(&ldev->bdev, &lsdc_bo_driver=
,
> > > > > ddev-
> > > > > > dev,
> > > > > =C2=A0=C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ddev->anon_inode->i=
_mapping,
> > > > > -			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ddev->vma_offset_manager,
> > > > > false,
> > > > > true);
> > > > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ddev->vma_offset_manager,
> > > > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (struct
> > > > > ttm_device_init_flags){
> > > > > +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .use_dma32 =3D true
> > > > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 });
> > > > > =C2=A0=C2=A0	if (ret)
> > > > > =C2=A0=C2=A0		return ret;
> > > > > =C2=A0=20
> > > > > diff --git a/drivers/gpu/drm/nouveau/nouveau_ttm.c
> > > > > b/drivers/gpu/drm/nouveau/nouveau_ttm.c
> > > > > index e244927eb5d4..5f89d2b40425 100644
> > > > > --- a/drivers/gpu/drm/nouveau/nouveau_ttm.c
> > > > > +++ b/drivers/gpu/drm/nouveau/nouveau_ttm.c
> > > > > @@ -302,8 +302,11 @@ nouveau_ttm_init(struct nouveau_drm
> > > > > *drm)
> > > > > =C2=A0=C2=A0	ret =3D ttm_device_init(&drm->ttm.bdev,
> > > > > &nouveau_bo_driver,
> > > > > drm->dev->dev,
> > > > > =C2=A0=C2=A0				=C2=A0 dev->anon_inode-
> > > > > >i_mapping,
> > > > > =C2=A0=C2=A0				=C2=A0 dev->vma_offset_manager,
> > > > > -				=C2=A0 drm_need_swiotlb(drm-
> > > > > > client.mmu.dmabits),
> > > > > -				=C2=A0 drm->client.mmu.dmabits <=3D
> > > > > 32);
> > > > > +				=C2=A0 (struct
> > > > > ttm_device_init_flags){
> > > > > +					=C2=A0 .use_dma_alloc =3D
> > > > > +					=C2=A0
> > > > > drm_need_swiotlb(drm-
> > > > > > client.mmu.dmabits),
> > > > > +					=C2=A0 .use_dma32 =3D (drm-
> > > > > > client.mmu.dmabits <=3D 32)
> > > > > +				=C2=A0 });
> > > > > =C2=A0=C2=A0	if (ret) {
> > > > > =C2=A0=C2=A0		NV_ERROR(drm, "error initialising bo driver,
> > > > > %d\n", ret);
> > > > > =C2=A0=C2=A0		return ret;
> > > > > diff --git a/drivers/gpu/drm/qxl/qxl_ttm.c
> > > > > b/drivers/gpu/drm/qxl/qxl_ttm.c
> > > > > index 765a144cea14..ced4c60c4650 100644
> > > > > --- a/drivers/gpu/drm/qxl/qxl_ttm.c
> > > > > +++ b/drivers/gpu/drm/qxl/qxl_ttm.c
> > > > > @@ -196,7 +196,7 @@ int qxl_ttm_init(struct qxl_device *qdev)
> > > > > =C2=A0=C2=A0	r =3D ttm_device_init(&qdev->mman.bdev,
> > > > > &qxl_bo_driver,
> > > > > NULL,
> > > > > =C2=A0=C2=A0			=C2=A0=C2=A0=C2=A0 qdev->ddev.anon_inode-
> > > > > >i_mapping,
> > > > > =C2=A0=C2=A0			=C2=A0=C2=A0=C2=A0 qdev->ddev.vma_offset_manager,
> > > > > -			=C2=A0=C2=A0=C2=A0 false, false);
> > > > > +			=C2=A0=C2=A0=C2=A0 (struct
> > > > > ttm_device_init_flags){});
> > > > > =C2=A0=C2=A0	if (r) {
> > > > > =C2=A0=C2=A0		DRM_ERROR("failed initializing buffer object
> > > > > driver(%d).\n", r);
> > > > > =C2=A0=C2=A0		return r;
> > > > > diff --git a/drivers/gpu/drm/radeon/radeon_ttm.c
> > > > > b/drivers/gpu/drm/radeon/radeon_ttm.c
> > > > > index 69d0c12fa419..2915473e4956 100644
> > > > > --- a/drivers/gpu/drm/radeon/radeon_ttm.c
> > > > > +++ b/drivers/gpu/drm/radeon/radeon_ttm.c
> > > > > @@ -684,8 +684,10 @@ int radeon_ttm_init(struct radeon_device
> > > > > *rdev)
> > > > > =C2=A0=C2=A0	r =3D ttm_device_init(&rdev->mman.bdev,
> > > > > &radeon_bo_driver,
> > > > > rdev->dev,
> > > > > =C2=A0=C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rdev_to_drm(r=
dev)-
> > > > > >anon_inode-
> > > > > > i_mapping,
> > > > > =C2=A0=C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rdev_to_drm(r=
dev)-
> > > > > > vma_offset_manager,
> > > > > -			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rdev->need_swiotlb,
> > > > > -			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dma_addressing_limited(&=
rdev-
> > > > > > pdev-
> > > > > > dev));
> > > > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (struct
> > > > > ttm_device_init_flags){
> > > > > +					.use_dma_alloc =3D
> > > > > rdev-
> > > > > > need_swiotlb,
> > > > > +					.use_dma32 =3D
> > > > > dma_addressing_limited(&rdev->pdev->dev)
> > > > > +				});
> > > > > =C2=A0=C2=A0	if (r) {
> > > > > =C2=A0=C2=A0		DRM_ERROR("failed initializing buffer object
> > > > > driver(%d).\n", r);
> > > > > =C2=A0=C2=A0		return r;
> > > > > diff --git a/drivers/gpu/drm/ttm/tests/ttm_bo_test.c
> > > > > b/drivers/gpu/drm/ttm/tests/ttm_bo_test.c
> > > > > index f0a7eb62116c..8a2ab90c6e8f 100644
> > > > > --- a/drivers/gpu/drm/ttm/tests/ttm_bo_test.c
> > > > > +++ b/drivers/gpu/drm/ttm/tests/ttm_bo_test.c
> > > > > @@ -251,7 +251,7 @@ static void ttm_bo_unreserve_basic(struct
> > > > > kunit
> > > > > *test)
> > > > > =C2=A0=C2=A0	ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev),
> > > > > GFP_KERNEL);
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
> > > > > =C2=A0=20
> > > > > -	err =3D ttm_device_kunit_init(priv, ttm_dev, false,
> > > > > false);
> > > > > +	err =3D ttm_device_kunit_init(priv, ttm_dev, (struct
> > > > > ttm_device_init_flags){});
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_EQ(test, err, 0);
> > > > > =C2=A0=C2=A0	priv->ttm_dev =3D ttm_dev;
> > > > > =C2=A0=20
> > > > > @@ -290,7 +290,7 @@ static void
> > > > > ttm_bo_unreserve_pinned(struct
> > > > > kunit *test)
> > > > > =C2=A0=C2=A0	ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev),
> > > > > GFP_KERNEL);
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
> > > > > =C2=A0=20
> > > > > -	err =3D ttm_device_kunit_init(priv, ttm_dev, false,
> > > > > false);
> > > > > +	err =3D ttm_device_kunit_init(priv, ttm_dev, (struct
> > > > > ttm_device_init_flags){});
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_EQ(test, err, 0);
> > > > > =C2=A0=C2=A0	priv->ttm_dev =3D ttm_dev;
> > > > > =C2=A0=20
> > > > > @@ -342,7 +342,7 @@ static void ttm_bo_unreserve_bulk(struct
> > > > > kunit
> > > > > *test)
> > > > > =C2=A0=C2=A0	resv =3D kunit_kzalloc(test, sizeof(*resv),
> > > > > GFP_KERNEL);
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
> > > > > =C2=A0=20
> > > > > -	err =3D ttm_device_kunit_init(priv, ttm_dev, false,
> > > > > false);
> > > > > +	err =3D ttm_device_kunit_init(priv, ttm_dev, (struct
> > > > > ttm_device_init_flags){});
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_EQ(test, err, 0);
> > > > > =C2=A0=C2=A0	priv->ttm_dev =3D ttm_dev;
> > > > > =C2=A0=20
> > > > > @@ -394,7 +394,7 @@ static void ttm_bo_put_basic(struct kunit
> > > > > *test)
> > > > > =C2=A0=C2=A0	ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev),
> > > > > GFP_KERNEL);
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
> > > > > =C2=A0=20
> > > > > -	err =3D ttm_device_kunit_init(priv, ttm_dev, false,
> > > > > false);
> > > > > +	err =3D ttm_device_kunit_init(priv, ttm_dev, (struct
> > > > > ttm_device_init_flags){});
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_EQ(test, err, 0);
> > > > > =C2=A0=C2=A0	priv->ttm_dev =3D ttm_dev;
> > > > > =C2=A0=20
> > > > > @@ -437,7 +437,7 @@ static void ttm_bo_put_shared_resv(struct
> > > > > kunit
> > > > > *test)
> > > > > =C2=A0=C2=A0	ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev),
> > > > > GFP_KERNEL);
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
> > > > > =C2=A0=20
> > > > > -	err =3D ttm_device_kunit_init(priv, ttm_dev, false,
> > > > > false);
> > > > > +	err =3D ttm_device_kunit_init(priv, ttm_dev, (struct
> > > > > ttm_device_init_flags){});
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_EQ(test, err, 0);
> > > > > =C2=A0=C2=A0	priv->ttm_dev =3D ttm_dev;
> > > > > =C2=A0=20
> > > > > @@ -477,7 +477,7 @@ static void ttm_bo_pin_basic(struct kunit
> > > > > *test)
> > > > > =C2=A0=C2=A0	ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev),
> > > > > GFP_KERNEL);
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
> > > > > =C2=A0=20
> > > > > -	err =3D ttm_device_kunit_init(priv, ttm_dev, false,
> > > > > false);
> > > > > +	err =3D ttm_device_kunit_init(priv, ttm_dev, (struct
> > > > > ttm_device_init_flags){});
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_EQ(test, err, 0);
> > > > > =C2=A0=C2=A0	priv->ttm_dev =3D ttm_dev;
> > > > > =C2=A0=20
> > > > > @@ -512,7 +512,7 @@ static void
> > > > > ttm_bo_pin_unpin_resource(struct
> > > > > kunit *test)
> > > > > =C2=A0=C2=A0	ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev),
> > > > > GFP_KERNEL);
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
> > > > > =C2=A0=20
> > > > > -	err =3D ttm_device_kunit_init(priv, ttm_dev, false,
> > > > > false);
> > > > > +	err =3D ttm_device_kunit_init(priv, ttm_dev, (struct
> > > > > ttm_device_init_flags){});
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_EQ(test, err, 0);
> > > > > =C2=A0=C2=A0	priv->ttm_dev =3D ttm_dev;
> > > > > =C2=A0=20
> > > > > @@ -563,7 +563,7 @@ static void
> > > > > ttm_bo_multiple_pin_one_unpin(struct kunit *test)
> > > > > =C2=A0=C2=A0	ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev),
> > > > > GFP_KERNEL);
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
> > > > > =C2=A0=20
> > > > > -	err =3D ttm_device_kunit_init(priv, ttm_dev, false,
> > > > > false);
> > > > > +	err =3D ttm_device_kunit_init(priv, ttm_dev, (struct
> > > > > ttm_device_init_flags){});
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_EQ(test, err, 0);
> > > > > =C2=A0=C2=A0	priv->ttm_dev =3D ttm_dev;
> > > > > =C2=A0=20
> > > > > diff --git a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > index 1adf18481ea0..c69b9707e6d2 100644
> > > > > --- a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > +++ b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > @@ -1044,7 +1044,8 @@ static void
> > > > > ttm_bo_validate_busy_domain_evict(struct kunit *test)
> > > > > =C2=A0=C2=A0	 */
> > > > > =C2=A0=C2=A0	ttm_device_fini(priv->ttm_dev);
> > > > > =C2=A0=20
> > > > > -	err =3D ttm_device_kunit_init_bad_evict(test->priv,
> > > > > priv-
> > > > > > ttm_dev, false, false);
> > > > > +	err =3D ttm_device_kunit_init_bad_evict(test->priv,
> > > > > priv-
> > > > > > ttm_dev,
> > > > > +					=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (struct
> > > > > ttm_device_init_flags){});
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_EQ(test, err, 0);
> > > > > =C2=A0=20
> > > > > =C2=A0=C2=A0	ttm_mock_manager_init(priv->ttm_dev, mem_type,
> > > > > MANAGER_SIZE);
> > > > > diff --git a/drivers/gpu/drm/ttm/tests/ttm_device_test.c
> > > > > b/drivers/gpu/drm/ttm/tests/ttm_device_test.c
> > > > > index 1621903818e5..9415c7b76e3b 100644
> > > > > --- a/drivers/gpu/drm/ttm/tests/ttm_device_test.c
> > > > > +++ b/drivers/gpu/drm/ttm/tests/ttm_device_test.c
> > > > > @@ -25,7 +25,7 @@ static void ttm_device_init_basic(struct
> > > > > kunit
> > > > > *test)
> > > > > =C2=A0=C2=A0	ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev),
> > > > > GFP_KERNEL);
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
> > > > > =C2=A0=20
> > > > > -	err =3D ttm_device_kunit_init(priv, ttm_dev, false,
> > > > > false);
> > > > > +	err =3D ttm_device_kunit_init(priv, ttm_dev, (struct
> > > > > ttm_device_init_flags){});
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_EQ(test, err, 0);
> > > > > =C2=A0=20
> > > > > =C2=A0=C2=A0	KUNIT_EXPECT_PTR_EQ(test, ttm_dev->funcs,
> > > > > &ttm_dev_funcs);
> > > > > @@ -55,7 +55,8 @@ static void ttm_device_init_multiple(struct
> > > > > kunit
> > > > > *test)
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_NOT_NULL(test, ttm_devs);
> > > > > =C2=A0=20
> > > > > =C2=A0=C2=A0	for (i =3D 0; i < num_dev; i++) {
> > > > > -		err =3D ttm_device_kunit_init(priv,
> > > > > &ttm_devs[i],
> > > > > false, false);
> > > > > +		err =3D ttm_device_kunit_init(priv,
> > > > > &ttm_devs[i],
> > > > > +					=C2=A0=C2=A0=C2=A0 (struct
> > > > > ttm_device_init_flags){});
> > > > > =C2=A0=C2=A0		KUNIT_ASSERT_EQ(test, err, 0);
> > > > > =C2=A0=20
> > > > > =C2=A0=C2=A0		KUNIT_EXPECT_PTR_EQ(test,
> > > > > ttm_devs[i].dev_mapping,
> > > > > @@ -81,7 +82,7 @@ static void ttm_device_fini_basic(struct
> > > > > kunit
> > > > > *test)
> > > > > =C2=A0=C2=A0	ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev),
> > > > > GFP_KERNEL);
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
> > > > > =C2=A0=20
> > > > > -	err =3D ttm_device_kunit_init(priv, ttm_dev, false,
> > > > > false);
> > > > > +	err =3D ttm_device_kunit_init(priv, ttm_dev, (struct
> > > > > ttm_device_init_flags){});
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_EQ(test, err, 0);
> > > > > =C2=A0=20
> > > > > =C2=A0=C2=A0	man =3D ttm_manager_type(ttm_dev, TTM_PL_SYSTEM);
> > > > > @@ -109,7 +110,7 @@ static void
> > > > > ttm_device_init_no_vma_man(struct
> > > > > kunit *test)
> > > > > =C2=A0=C2=A0	vma_man =3D drm->vma_offset_manager;
> > > > > =C2=A0=C2=A0	drm->vma_offset_manager =3D NULL;
> > > > > =C2=A0=20
> > > > > -	err =3D ttm_device_kunit_init(priv, ttm_dev, false,
> > > > > false);
> > > > > +	err =3D ttm_device_kunit_init(priv, ttm_dev, (struct
> > > > > ttm_device_init_flags){});
> > > > > =C2=A0=C2=A0	KUNIT_EXPECT_EQ(test, err, -EINVAL);
> > > > > =C2=A0=20
> > > > > =C2=A0=C2=A0	/* Bring the manager back for a graceful cleanup */
> > > > > @@ -162,9 +163,10 @@ static void ttm_device_init_pools(struct
> > > > > kunit
> > > > > *test)
> > > > > =C2=A0=C2=A0	ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev),
> > > > > GFP_KERNEL);
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
> > > > > =C2=A0=20
> > > > > -	err =3D ttm_device_kunit_init(priv, ttm_dev,
> > > > > -				=C2=A0=C2=A0=C2=A0 params->use_dma_alloc,
> > > > > -				=C2=A0=C2=A0=C2=A0 params->use_dma32);
> > > > > +	err =3D ttm_device_kunit_init(priv, ttm_dev, (struct
> > > > > ttm_device_init_flags){
> > > > > +			.use_dma_alloc =3D params-
> > > > > >use_dma_alloc,
> > > > > +			.use_dma32 =3D params->use_dma32
> > > > > +		});
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_EQ(test, err, 0);
> > > > > =C2=A0=20
> > > > > =C2=A0=C2=A0	pool =3D &ttm_dev->pool;
> > > > > diff --git a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > index b91c13f46225..24706fabb1c9 100644
> > > > > --- a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > +++ b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > @@ -114,8 +114,7 @@ static void bad_evict_flags(struct
> > > > > ttm_buffer_object *bo,
> > > > > =C2=A0=20
> > > > > =C2=A0 static int ttm_device_kunit_init_with_funcs(struct
> > > > > ttm_test_devices *priv,
> > > > > =C2=A0=C2=A0					=C2=A0=C2=A0=C2=A0 struct
> > > > > ttm_device
> > > > > *ttm,
> > > > > -					=C2=A0=C2=A0=C2=A0 bool
> > > > > use_dma_alloc,
> > > > > -					=C2=A0=C2=A0=C2=A0 bool use_dma32,
> > > > > +					=C2=A0=C2=A0=C2=A0 const struct
> > > > > ttm_device_init_flags flags,
> > > > > =C2=A0=C2=A0					=C2=A0=C2=A0=C2=A0 struct
> > > > > ttm_device_funcs *funcs)
> > > > > =C2=A0 {
> > > > > =C2=A0=C2=A0	struct drm_device *drm =3D priv->drm;
> > > > > @@ -124,7 +123,7 @@ static int
> > > > > ttm_device_kunit_init_with_funcs(struct ttm_test_devices
> > > > > *priv,
> > > > > =C2=A0=C2=A0	err =3D ttm_device_init(ttm, funcs, drm->dev,
> > > > > =C2=A0=C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 drm->anon_inode->i_=
mapping,
> > > > > =C2=A0=C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 drm->vma_offset_man=
ager,
> > > > > -			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 use_dma_alloc, use_dma32);
> > > > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 flags);
> > > > > =C2=A0=20
> > > > > =C2=A0=C2=A0	return err;
> > > > > =C2=A0 }
> > > > > @@ -140,11 +139,9 @@ EXPORT_SYMBOL_GPL(ttm_dev_funcs);
> > > > > =C2=A0=20
> > > > > =C2=A0 int ttm_device_kunit_init(struct ttm_test_devices *priv,
> > > > > =C2=A0=C2=A0			=C2=A0 struct ttm_device *ttm,
> > > > > -			=C2=A0 bool use_dma_alloc,
> > > > > -			=C2=A0 bool use_dma32)
> > > > > +			=C2=A0 const struct ttm_device_init_flags
> > > > > flags)
> > > > > =C2=A0 {
> > > > > -	return ttm_device_kunit_init_with_funcs(priv, ttm,
> > > > > use_dma_alloc,
> > > > > -						use_dma32,
> > > > > &ttm_dev_funcs);
> > > > > +	return ttm_device_kunit_init_with_funcs(priv, ttm,
> > > > > flags,
> > > > > &ttm_dev_funcs);
> > > > > =C2=A0 }
> > > > > =C2=A0 EXPORT_SYMBOL_GPL(ttm_device_kunit_init);
> > > > > =C2=A0=20
> > > > > @@ -159,11 +156,10 @@
> > > > > EXPORT_SYMBOL_GPL(ttm_dev_funcs_bad_evict);
> > > > > =C2=A0=20
> > > > > =C2=A0 int ttm_device_kunit_init_bad_evict(struct ttm_test_device=
s
> > > > > *priv,
> > > > > =C2=A0=C2=A0				=C2=A0=C2=A0=C2=A0 struct ttm_device *ttm,
> > > > > -				=C2=A0=C2=A0=C2=A0 bool use_dma_alloc,
> > > > > -				=C2=A0=C2=A0=C2=A0 bool use_dma32)
> > > > > +				=C2=A0=C2=A0=C2=A0 const struct
> > > > > ttm_device_init_flags flags)
> > > > > =C2=A0 {
> > > > > -	return ttm_device_kunit_init_with_funcs(priv, ttm,
> > > > > use_dma_alloc,
> > > > > -						use_dma32,
> > > > > &ttm_dev_funcs_bad_evict);
> > > > > +	return ttm_device_kunit_init_with_funcs(priv, ttm,
> > > > > flags,
> > > > > +						&ttm_dev_fun
> > > > > cs_b
> > > > > ad
> > > > > _evict);
> > > > > =C2=A0 }
> > > > > =C2=A0 EXPORT_SYMBOL_GPL(ttm_device_kunit_init_bad_evict);
> > > > > =C2=A0=20
> > > > > @@ -249,7 +245,7 @@ struct ttm_test_devices
> > > > > *ttm_test_devices_all(struct kunit *test)
> > > > > =C2=A0=C2=A0	ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev),
> > > > > GFP_KERNEL);
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
> > > > > =C2=A0=20
> > > > > -	err =3D ttm_device_kunit_init(devs, ttm_dev, false,
> > > > > false);
> > > > > +	err =3D ttm_device_kunit_init(devs, ttm_dev, (struct
> > > > > ttm_device_init_flags){});
> > > > > =C2=A0=C2=A0	KUNIT_ASSERT_EQ(test, err, 0);
> > > > > =C2=A0=20
> > > > > =C2=A0=C2=A0	devs->ttm_dev =3D ttm_dev;
> > > > > diff --git a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.h
> > > > > b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.h
> > > > > index c7da23232ffa..fbf0d3984f25 100644
> > > > > --- a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.h
> > > > > +++ b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.h
> > > > > @@ -28,12 +28,10 @@ struct ttm_test_devices {
> > > > > =C2=A0 /* Building blocks for test-specific init functions */
> > > > > =C2=A0 int ttm_device_kunit_init(struct ttm_test_devices *priv,
> > > > > =C2=A0=C2=A0			=C2=A0 struct ttm_device *ttm,
> > > > > -			=C2=A0 bool use_dma_alloc,
> > > > > -			=C2=A0 bool use_dma32);
> > > > > +			=C2=A0 const struct ttm_device_init_flags
> > > > > flags);
> > > > > =C2=A0 int ttm_device_kunit_init_bad_evict(struct ttm_test_device=
s
> > > > > *priv,
> > > > > =C2=A0=C2=A0				=C2=A0=C2=A0=C2=A0 struct ttm_device *ttm,
> > > > > -				=C2=A0=C2=A0=C2=A0 bool use_dma_alloc,
> > > > > -				=C2=A0=C2=A0=C2=A0 bool use_dma32);
> > > > > +				=C2=A0=C2=A0=C2=A0 const struct
> > > > > ttm_device_init_flags flags);
> > > > > =C2=A0 struct ttm_buffer_object *ttm_bo_kunit_init(struct kunit
> > > > > *test,
> > > > > =C2=A0=C2=A0					=C2=A0=C2=A0=C2=A0 struct
> > > > > ttm_test_devices *devs,
> > > > > =C2=A0=C2=A0					=C2=A0=C2=A0=C2=A0 size_t size,
> > > > > diff --git a/drivers/gpu/drm/ttm/ttm_device.c
> > > > > b/drivers/gpu/drm/ttm/ttm_device.c
> > > > > index e7cc4954c1bc..0c85d10e5e0b 100644
> > > > > --- a/drivers/gpu/drm/ttm/ttm_device.c
> > > > > +++ b/drivers/gpu/drm/ttm/ttm_device.c
> > > > > @@ -174,8 +174,7 @@ EXPORT_SYMBOL(ttm_device_swapout);
> > > > > =C2=A0=C2=A0 * @dev: The core kernel device pointer for DMA mappi=
ngs
> > > > > and
> > > > > allocations.
> > > > > =C2=A0=C2=A0 * @mapping: The address space to use for this bo.
> > > > > =C2=A0=C2=A0 * @vma_manager: A pointer to a vma manager.
> > > > > - * @use_dma_alloc: If coherent DMA allocation API should be
> > > > > used.
> > > > > - * @use_dma32: If we should use GFP_DMA32 for device memory
> > > > > allocations.
> > > > > + * @flags: Flags governing the device behaviour.
> > > > > =C2=A0=C2=A0 *
> > > > > =C2=A0=C2=A0 * Initializes a struct ttm_device:
> > > > > =C2=A0=C2=A0 * Returns:
> > > > > @@ -184,7 +183,7 @@ EXPORT_SYMBOL(ttm_device_swapout);
> > > > > =C2=A0 int ttm_device_init(struct ttm_device *bdev, const struct
> > > > > ttm_device_funcs *funcs,
> > > > > =C2=A0=C2=A0		=C2=A0=C2=A0=C2=A0 struct device *dev, struct addre=
ss_space
> > > > > *mapping,
> > > > > =C2=A0=C2=A0		=C2=A0=C2=A0=C2=A0 struct drm_vma_offset_manager
> > > > > *vma_manager,
> > > > > -		=C2=A0=C2=A0=C2=A0 bool use_dma_alloc, bool use_dma32)
> > > > > +		=C2=A0=C2=A0=C2=A0 const struct ttm_device_init_flags
> > > > > flags)
> > > > > =C2=A0 {
> > > > > =C2=A0=C2=A0	struct ttm_global *glob =3D &ttm_glob;
> > > > > =C2=A0=C2=A0	int ret, nid;
> > > > > @@ -212,7 +211,7 @@ int ttm_device_init(struct ttm_device
> > > > > *bdev,
> > > > > const struct ttm_device_funcs *func
> > > > > =C2=A0=C2=A0	else
> > > > > =C2=A0=C2=A0		nid =3D NUMA_NO_NODE;
> > > > > =C2=A0=20
> > > > > -	ttm_pool_init(&bdev->pool, dev, nid, use_dma_alloc,
> > > > > use_dma32);
> > > > > +	ttm_pool_init(&bdev->pool, dev, nid,
> > > > > flags.use_dma_alloc,
> > > > > flags.use_dma32);
> > > > > =C2=A0=20
> > > > > =C2=A0=C2=A0	bdev->vma_manager =3D vma_manager;
> > > > > =C2=A0=C2=A0	spin_lock_init(&bdev->lru_lock);
> > > > > diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
> > > > > b/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
> > > > > index cf7a89d002e4..7ff7e5d7a9f3 100644
> > > > > --- a/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
> > > > > +++ b/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
> > > > > @@ -1049,8 +1049,8 @@ static int vmw_driver_load(struct
> > > > > vmw_private
> > > > > *dev_priv, u32 pci_id)
> > > > > =C2=A0=C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_priv->drm.dev,
> > > > > =C2=A0=C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_priv->drm.anon_=
inode-
> > > > > > i_mapping,
> > > > > =C2=A0=C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_priv-
> > > > > >drm.vma_offset_manager,
> > > > > -			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_priv->map_mode =3D=3D
> > > > > vmw_dma_alloc_coherent,
> > > > > -			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 false);
> > > > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (struct ttm_device_init_flags)
> > > > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 {.use_dma_alloc =3D (dev_priv-
> > > > > > map_mode =3D=3D vmw_dma_alloc_coherent)});
> > > > > =C2=A0=C2=A0	if (unlikely(ret !=3D 0)) {
> > > > > =C2=A0=C2=A0		drm_err(&dev_priv->drm,
> > > > > =C2=A0=C2=A0			"Failed initializing TTM buffer
> > > > > object
> > > > > driver.\n");
> > > > > diff --git a/drivers/gpu/drm/xe/xe_device.c
> > > > > b/drivers/gpu/drm/xe/xe_device.c
> > > > > index 09a7ad830e69..f9317f56ff9c 100644
> > > > > --- a/drivers/gpu/drm/xe/xe_device.c
> > > > > +++ b/drivers/gpu/drm/xe/xe_device.c
> > > > > @@ -320,7 +320,8 @@ struct xe_device *xe_device_create(struct
> > > > > pci_dev *pdev,
> > > > > =C2=A0=20
> > > > > =C2=A0=C2=A0	err =3D ttm_device_init(&xe->ttm, &xe_ttm_funcs, xe-
> > > > > > drm.dev,
> > > > > =C2=A0=C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 xe->drm.anon_inode-=
>i_mapping,
> > > > > -			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 xe->drm.vma_offset_manager,
> > > > > false,
> > > > > false);
> > > > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 xe->drm.vma_offset_manager,
> > > > > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (struct
> > > > > ttm_device_init_flags){});
> > > > > =C2=A0=C2=A0	if (WARN_ON(err))
> > > > > =C2=A0=C2=A0		goto err;
> > > > > =C2=A0=20
> > > > > diff --git a/include/drm/ttm/ttm_device.h
> > > > > b/include/drm/ttm/ttm_device.h
> > > > > index c22f30535c84..1534bd946c78 100644
> > > > > --- a/include/drm/ttm/ttm_device.h
> > > > > +++ b/include/drm/ttm/ttm_device.h
> > > > > @@ -287,10 +287,20 @@ static inline void
> > > > > ttm_set_driver_manager(struct ttm_device *bdev, int type,
> > > > > =C2=A0=C2=A0	bdev->man_drv[type] =3D manager;
> > > > > =C2=A0 }
> > > > > =C2=A0=20
> > > > > +/**
> > > > > + * struct ttm_device_init_flags - Flags for ttm device
> > > > > creation
> > > > > + */
> > > > > +struct ttm_device_init_flags {
> > > > > +	/** @use_dma_alloc: Whether coherent DMA allocation
> > > > > API
> > > > > should be used. */
> > > > > +	u32 use_dma_alloc : 1;
> > > > > +	/** @use_dma32: If we should use GFP_DMA32 for
> > > > > device
> > > > > memory allocations. */
> > > > > +	u32 use_dma32 : 1;
> > > > > +};
> > > > > +
> > > > > =C2=A0 int ttm_device_init(struct ttm_device *bdev, const struct
> > > > > ttm_device_funcs *funcs,
> > > > > =C2=A0=C2=A0		=C2=A0=C2=A0=C2=A0 struct device *dev, struct addre=
ss_space
> > > > > *mapping,
> > > > > =C2=A0=C2=A0		=C2=A0=C2=A0=C2=A0 struct drm_vma_offset_manager
> > > > > *vma_manager,
> > > > > -		=C2=A0=C2=A0=C2=A0 bool use_dma_alloc, bool use_dma32);
> > > > > +		=C2=A0=C2=A0=C2=A0 const struct ttm_device_init_flags
> > > > > flags);
> > > > > =C2=A0 void ttm_device_fini(struct ttm_device *bdev);
> > > > > =C2=A0 void ttm_device_clear_dma_mappings(struct ttm_device
> > > > > *bdev);
> > > > > =C2=A0=20
> > > >=20
> > >=20
> >=20

