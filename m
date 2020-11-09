Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C95792AB536
	for <lists+spice-devel@lfdr.de>; Mon,  9 Nov 2020 11:43:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79C76898B7;
	Mon,  9 Nov 2020 10:43:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 478A78985A;
 Mon,  9 Nov 2020 10:32:51 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id D074DAC1F;
 Mon,  9 Nov 2020 10:32:49 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: daniel@ffwll.ch, airlied@linux.ie, chunkuang.hu@kernel.org,
 p.zabel@pengutronix.de, robdclark@gmail.com, sean@poorly.run
Date: Mon,  9 Nov 2020 11:32:41 +0100
Message-Id: <20201109103242.19544-2-tzimmermann@suse.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201109103242.19544-1-tzimmermann@suse.de>
References: <20201109103242.19544-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 09 Nov 2020 10:43:37 +0000
Subject: [Spice-devel] [PATCH 1/2] drm/msm: Use struct dma_buf_map in GEM
 vmap ops
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
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 nouveau@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Melissa Wen <melissa.srw@gmail.com>,
 Eric Anholt <eric@anholt.net>, Huang Rui <ray.huang@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Madhav Chauhan <madhav.chauhan@amd.com>,
 Sam Ravnborg <sam@ravnborg.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 Emil Velikov <emil.velikov@collabora.com>, Rob Herring <robh@kernel.org>,
 xen-devel@lists.xenproject.org, lima@lists.freedesktop.org,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 linux-rockchip@lists.infradead.org, Qinglang Miao <miaoqinglang@huawei.com>,
 Steven Price <steven.price@arm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Luben Tuikov <luben.tuikov@amd.com>, Ben Skeggs <bskeggs@redhat.com>,
 Russell King <linux+etnaviv@armlinux.org.uk>, Dave Airlie <airlied@redhat.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 linux-arm-msm@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 etnaviv@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 spice-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 Arunpravin <apaneers@amd.com>, linux-arm-kernel@lists.infradead.org,
 amd-gfx@lists.freedesktop.org,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, Sandy Huang <hjc@rock-chips.com>,
 Qiang Yu <yuq825@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Rml4ZXMgYSBidWlsZCBmYWlsdXJlIHdpdGggbXNtLgoKVGhpcyBjaGFuZ2Ugd2FzIHN1cHBvc2Vk
IHRvIGJlIHBhcnQgb2YgY29tbWl0IDQ5YTNmNTFkZmVlZSAoImRybS9nZW06ClVzZSBzdHJ1Y3Qg
ZG1hX2J1Zl9tYXAgaW4gR0VNIHZtYXAgb3BzIGFuZCBjb252ZXJ0IEdFTSBiYWNrZW5kcyIpLCBi
dXQKbXNtIHdhcyBmb3Jnb3R0ZW4uCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8
dHppbW1lcm1hbm5Ac3VzZS5kZT4KRml4ZXM6IDQ5YTNmNTFkZmVlZSAoImRybS9nZW06IFVzZSBz
dHJ1Y3QgZG1hX2J1Zl9tYXAgaW4gR0VNIHZtYXAgb3BzIGFuZCBjb252ZXJ0IEdFTSBiYWNrZW5k
cyIpCkNjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KQ2M6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IERhdmlkIEFpcmxpZSA8
YWlybGllZEBsaW51eC5pZT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KQ2M6
IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNj
OiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+CkNjOiBEYXZlIEFpcmxpZSA8YWly
bGllZEByZWRoYXQuY29tPgpDYzogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+
CkNjOiBSdXNzZWxsIEtpbmcgPGxpbnV4K2V0bmF2aXZAYXJtbGludXgub3JnLnVrPgpDYzogQ2hy
aXN0aWFuIEdtZWluZXIgPGNocmlzdGlhbi5nbWVpbmVyQGdtYWlsLmNvbT4KQ2M6IFFpYW5nIFl1
IDx5dXE4MjVAZ21haWwuY29tPgpDYzogQmVuIFNrZWdncyA8YnNrZWdnc0ByZWRoYXQuY29tPgpD
YzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KQ2M6IFRvbWV1IFZpem9zbyA8dG9tZXUu
dml6b3NvQGNvbGxhYm9yYS5jb20+CkNjOiBTdGV2ZW4gUHJpY2UgPHN0ZXZlbi5wcmljZUBhcm0u
Y29tPgpDYzogQWx5c3NhIFJvc2VuendlaWcgPGFseXNzYS5yb3Nlbnp3ZWlnQGNvbGxhYm9yYS5j
b20+CkNjOiBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVkaGF0LmNvbT4KQ2M6IEFsZXggRGV1Y2hl
ciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpDYzogU2FuZHkgSHVhbmcgPGhqY0Byb2NrLWNoaXBzLmNv
bT4KQ2M6ICJIZWlrbyBTdMO8Ym5lciIgPGhlaWtvQHNudGVjaC5kZT4KQ2M6IEhhbnMgZGUgR29l
ZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+CkNjOiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4K
Q2M6IEVyaWMgQW5ob2x0IDxlcmljQGFuaG9sdC5uZXQ+CkNjOiBSb2RyaWdvIFNpcXVlaXJhIDxy
b2RyaWdvc2lxdWVpcmFtZWxvQGdtYWlsLmNvbT4KQ2M6IE1lbGlzc2EgV2VuIDxtZWxpc3NhLnNy
d0BnbWFpbC5jb20+CkNjOiBIYW5lZW4gTW9oYW1tZWQgPGhhbW9oYW1tZWQuc2FAZ21haWwuY29t
PgpDYzogT2xla3NhbmRyIEFuZHJ1c2hjaGVua28gPG9sZWtzYW5kcl9hbmRydXNoY2hlbmtvQGVw
YW0uY29tPgpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KQ2M6IEVt
aWwgVmVsaWtvdiA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+CkNjOiBMdWJlbiBUdWlrb3Yg
PGx1YmVuLnR1aWtvdkBhbWQuY29tPgpDYzogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tp
QHNhbXN1bmcuY29tPgpDYzogQXJ1bnByYXZpbiA8YXBhbmVlcnNAYW1kLmNvbT4KQ2M6IEh1YW5n
IFJ1aSA8cmF5Lmh1YW5nQGFtZC5jb20+CkNjOiBNYWRoYXYgQ2hhdWhhbiA8bWFkaGF2LmNoYXVo
YW5AYW1kLmNvbT4KQ2M6IEphc29uIEd1bnRob3JwZSA8amdnQHppZXBlLmNhPgpDYzogU2FtIFJh
dm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CkNjOiBRaW5nbGFuZyBNaWFvIDxtaWFvcWluZ2xhbmdAaHVhd2VpLmNvbT4K
Q2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IGV0bmF2aXZAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCkNjOiBsaW1hQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogbm91dmVhdUBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IHZpcnR1YWxpemF0aW9uQGxpc3RzLmxpbnV4LWZvdW5k
YXRpb24ub3JnCkNjOiBzcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IGFtZC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IHhlbi1k
ZXZlbEBsaXN0cy54ZW5wcm9qZWN0Lm9yZwotLS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2Ry
di5oICAgICAgIHwgIDQgKystLQogZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3ByaW1lLmMg
fCAxMyArKysrKysrKysrLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDUg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZHJ2Lmgg
Yi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9kcnYuaAppbmRleCBjNDU3ODlmMzZlNDguLmE2YWVm
Njg3YmM2ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZHJ2LmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZHJ2LmgKQEAgLTI5NSw4ICsyOTUsOCBAQCBpbnQgbXNt
X2dlbV9kdW1iX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsIHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsCiBpbnQgbXNtX2dlbV9kdW1iX21hcF9vZmZzZXQoc3RydWN0IGRybV9maWxlICpmaWxl
LCBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCQl1aW50MzJfdCBoYW5kbGUsIHVpbnQ2NF90ICpv
ZmZzZXQpOwogc3RydWN0IHNnX3RhYmxlICptc21fZ2VtX3ByaW1lX2dldF9zZ190YWJsZShzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKm9iaik7Ci12b2lkICptc21fZ2VtX3ByaW1lX3ZtYXAoc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpvYmopOwotdm9pZCBtc21fZ2VtX3ByaW1lX3Z1bm1hcChzdHJ1Y3Qg
ZHJtX2dlbV9vYmplY3QgKm9iaiwgdm9pZCAqdmFkZHIpOworaW50IG1zbV9nZW1fcHJpbWVfdm1h
cChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IGRtYV9idWZfbWFwICptYXApOwor
dm9pZCBtc21fZ2VtX3ByaW1lX3Z1bm1hcChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3Ry
dWN0IGRtYV9idWZfbWFwICptYXApOwogaW50IG1zbV9nZW1fcHJpbWVfbW1hcChzdHJ1Y3QgZHJt
X2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpOwogc3RydWN0IGRy
bV9nZW1fb2JqZWN0ICptc21fZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZShzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LAogCQlzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsIHN0cnVjdCBz
Z190YWJsZSAqc2cpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3By
aW1lLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fcHJpbWUuYwppbmRleCA1MTVlZjgw
ODE2YTAuLjk4ODAzNDhhNGRjNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21f
Z2VtX3ByaW1lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3ByaW1lLmMKQEAg
LTIyLDEyICsyMiwxOSBAQCBzdHJ1Y3Qgc2dfdGFibGUgKm1zbV9nZW1fcHJpbWVfZ2V0X3NnX3Rh
YmxlKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQogCXJldHVybiBkcm1fcHJpbWVfcGFnZXNf
dG9fc2cob2JqLT5kZXYsIG1zbV9vYmotPnBhZ2VzLCBucGFnZXMpOwogfQogCi12b2lkICptc21f
Z2VtX3ByaW1lX3ZtYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCitpbnQgbXNtX2dlbV9w
cmltZV92bWFwKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCBzdHJ1Y3QgZG1hX2J1Zl9tYXAg
Km1hcCkKIHsKLQlyZXR1cm4gbXNtX2dlbV9nZXRfdmFkZHIob2JqKTsKKwl2b2lkICp2YWRkcjsK
KworCXZhZGRyID0gbXNtX2dlbV9nZXRfdmFkZHIob2JqKTsKKwlpZiAoSVNfRVJSKHZhZGRyKSkK
KwkJcmV0dXJuIFBUUl9FUlIodmFkZHIpOworCWRtYV9idWZfbWFwX3NldF92YWRkcihtYXAsIHZh
ZGRyKTsKKworCXJldHVybiAwOwogfQogCi12b2lkIG1zbV9nZW1fcHJpbWVfdnVubWFwKHN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqb2JqLCB2b2lkICp2YWRkcikKK3ZvaWQgbXNtX2dlbV9wcmltZV92
dW5tYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBkbWFfYnVmX21hcCAqbWFw
KQogewogCW1zbV9nZW1fcHV0X3ZhZGRyKG9iaik7CiB9Ci0tIAoyLjI5LjIKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo=
