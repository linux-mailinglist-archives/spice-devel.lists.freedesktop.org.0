Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED9446EE7
	for <lists+spice-devel@lfdr.de>; Sat, 15 Jun 2019 10:05:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9163D892B9;
	Sat, 15 Jun 2019 08:05:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from asavdk3.altibox.net (asavdk3.altibox.net [109.247.116.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 444008970E;
 Fri, 14 Jun 2019 21:36:11 +0000 (UTC)
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 837A32002E;
 Fri, 14 Jun 2019 23:36:07 +0200 (CEST)
Date: Fri, 14 Jun 2019 23:36:06 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20190614213606.GB19476@ravnborg.org>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-7-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614203615.12639-7-daniel.vetter@ffwll.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=GAxTd-NkrUytLa5Px2AA:9 a=CjuIK1q_8ugA:10
X-Mailman-Approved-At: Sat, 15 Jun 2019 08:05:39 +0000
Subject: Re: [Spice-devel] [PATCH 06/59] drm/prime: Actually remove
 DRIVER_PRIME everywhere
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: linux-aspeed@lists.ozlabs.org, nouveau@lists.freedesktop.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-samsung-soc@vger.kernel.org,
 lima@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 NXP Linux Team <linux-imx@nxp.com>, xen-devel@lists.xenproject.org,
 linux-arm-msm@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 etnaviv@lists.freedesktop.org, spice-devel@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-renesas-soc@vger.kernel.org,
 freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkgRGFuaWVsLgoKTWlub3Igbml0cGljay4uCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IGlu
ZGV4IDY1ZDU5OTA2NTcwOS4uNGZkMDlhOWFkNjdhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5jCj4gQEAgLTMxOTMsNyArMzE5Myw3IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciBkcml2
ZXIgPSB7Cj4gIAkgKiBkZWFsIHdpdGggdGhlbSBmb3IgSW50ZWwgaGFyZHdhcmUuCj4gIAkgKi8K
PiAgCS5kcml2ZXJfZmVhdHVyZXMgPQo+IC0JICAgIERSSVZFUl9HRU0gfCBEUklWRVJfUFJJTUUg
fAo+ICsJICAgIERSSVZFUl9HRU0gfCAKPiAgCSAgICBEUklWRVJfUkVOREVSIHwgRFJJVkVSX01P
REVTRVQgfCBEUklWRVJfQVRPTUlDIHwgRFJJVkVSX1NZTkNPQkosCkFkZHMgYSB3aGl0ZXNwYWNl
LgoKCVNhbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
