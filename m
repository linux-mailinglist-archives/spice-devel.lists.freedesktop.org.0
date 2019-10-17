Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DF7DAC4E
	for <lists+spice-devel@lfdr.de>; Thu, 17 Oct 2019 14:32:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94A226EA67;
	Thu, 17 Oct 2019 12:32:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A62F6E4A2;
 Thu, 17 Oct 2019 12:32:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9A2C13082A6C;
 Thu, 17 Oct 2019 12:32:49 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-43.ams2.redhat.com
 [10.36.116.43])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2C756194B6;
 Thu, 17 Oct 2019 12:32:49 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 6A58D16E2D; Thu, 17 Oct 2019 14:32:48 +0200 (CEST)
Date: Thu, 17 Oct 2019 14:32:48 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: YueHaibing <yuehaibing@huawei.com>
Message-ID: <20191017123248.b4d4jd6wfu7np25n@sirius.home.kraxel.org>
References: <20191008024054.32368-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008024054.32368-1-yuehaibing@huawei.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Thu, 17 Oct 2019 12:32:49 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH -next] drm/qxl: Fix randbuild error
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 daniel@ffwll.ch, spice-devel@lists.freedesktop.org, airlied@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMDgsIDIwMTkgYXQgMTA6NDA6NTRBTSArMDgwMCwgWXVlSGFpYmluZyB3cm90
ZToKPiBJZiBERU1fUVhMIGlzIHkgYW5kIERSTV9UVE1fSEVMUEVSIGlzIG0sIGJ1aWxkaW5nIGZh
aWxzOgo+IAo+IGRyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX29iamVjdC5vOiB1bmRlZmluZWQgcmVm
ZXJlbmNlIHRvIGBkcm1fZ2VtX3R0bV9wcmludF9pbmZvJwo+IAo+IFNlbGVjdCBEUk1fVFRNX0hF
TFBFUiB0byBmaXggdGhpcy4KClF1ZXVlZCB1cCBmb3IgZHJtLW1pc2MtbmV4dC4KCnRoYW5rcywK
ICBHZXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
