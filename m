Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B4F28728A
	for <lists+spice-devel@lfdr.de>; Thu,  8 Oct 2020 12:29:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 037706E2DE;
	Thu,  8 Oct 2020 10:29:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E046EA50
 for <spice-devel@lists.freedesktop.org>; Thu,  8 Oct 2020 09:35:48 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id f10so4912120otb.6
 for <spice-devel@lists.freedesktop.org>; Thu, 08 Oct 2020 02:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZrmRuXyaFHFfF1DpIKTXxKW4IsXEuSn4zFLNldJ3bZ0=;
 b=YtQ/ivtJQmp5b+qosIz6lM4sRgwqCFlQ6rowPWNvMYv5dJMKnTWw131r1zzJQn2A3N
 RyLNJisws8mAYt8dR+o50wEmX+2KCVFzf3SoEJbYY384GLvqbIH18Ui2d2SX891ACsLv
 tr5QIuMFDrFzP7wVckMDQbxaxyIcRIztRBEl8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZrmRuXyaFHFfF1DpIKTXxKW4IsXEuSn4zFLNldJ3bZ0=;
 b=fVWOurN9tRc3O6qhYkZz1lQvq4txZwxhGna+kAreNbX8vWfotovKdEGR7aDkvQ7uhy
 YFvFRIWsTTSHXVERqfnLuzREWSMtNdw9rgk4FBfvImQINdMydLljK9QAGNQjS3hrboDA
 6ZIWZ5f46tnCRdFsSuR2L5QVg+GODrgJb4Ya+AQkDzzJdzSNqUWP/c/2H+RfbNANaty5
 /pSpSR4jsCLCiJzu8tneYXYRd6hpcIZKPAkLJB4Jay4m5IHV0fN6sRfQ7A4mtAT+Fjvz
 wyI6xsvfbSNUJ/at7e4Rj3AW9Yx0UXhPvSYvqx4D732/QyO/KZZvpBYK2qDiM32Nox5x
 XY6w==
X-Gm-Message-State: AOAM531gThcwR3lS6Ncue/BSsSd1kNSDk4pM4oUgUfPoez3Qben0RWeO
 fJ/iuYybNP0m8zgIk/wgkPBGGFx7XFAdIKva3VRuew==
X-Google-Smtp-Source: ABdhPJyuob7SbAyhZgi7aMSyZt7e9GM6NvJxynkCepRUii8S9uJrD52JJKh3jA3fxJMCx//NY8lpbC5+iDjXJbCnvzg=
X-Received: by 2002:a05:6830:1647:: with SMTP id
 h7mr4749389otr.281.1602149747285; 
 Thu, 08 Oct 2020 02:35:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200929151437.19717-1-tzimmermann@suse.de>
 <20200929151437.19717-7-tzimmermann@suse.de>
 <20201002180500.GM438822@phenom.ffwll.local>
 <CAKMK7uFVHrqBh1sqQHR56vp2JS77XoCs232B5mkJXXpLhgLW8Q@mail.gmail.com>
 <ffc4b2de-ff97-210f-0ae4-f2f85a27f59b@suse.de>
In-Reply-To: <ffc4b2de-ff97-210f-0ae4-f2f85a27f59b@suse.de>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 8 Oct 2020 11:35:35 +0200
Message-ID: <CAKMK7uFds1v63V8jd0fvjqve=TiVMeHmGwLJ72ZOyGFQ0OvGxw@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
X-Mailman-Approved-At: Thu, 08 Oct 2020 10:29:42 +0000
Subject: Re: [Spice-devel] [PATCH v3 6/7] drm/fb_helper: Support
 framebuffers in I/O memory
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
Cc: Luben Tuikov <luben.tuikov@amd.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Dave Airlie <airlied@linux.ie>, Nouveau Dev <nouveau@lists.freedesktop.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, "Wilson,
 Chris" <chris@chris-wilson.co.uk>, Melissa Wen <melissa.srw@gmail.com>,
 "Anholt, Eric" <eric@anholt.net>, Huang Rui <ray.huang@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Sam Ravnborg <sam@ravnborg.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Emil Velikov <emil.velikov@collabora.com>, Rob Herring <robh@kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Joonyoung Shim <jy0922.shim@samsung.com>, lima@lists.freedesktop.org,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Steven Price <steven.price@arm.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kukjin Kim <kgene@kernel.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Russell King <linux+etnaviv@armlinux.org.uk>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 Ben Skeggs <bskeggs@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 The etnaviv authors <etnaviv@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 "moderated list:DRM DRIVERS FOR XEN" <xen-devel@lists.xenproject.org>,
 "open list:VIRTIO CORE, NET..." <virtualization@lists.linux-foundation.org>,
 Sean Paul <sean@poorly.run>, apaneers@amd.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Qinglang Miao <miaoqinglang@huawei.com>, Qiang Yu <yuq825@gmail.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gVGh1LCBPY3QgOCwgMjAyMCBhdCAxMToyNSBBTSBUaG9tYXMgWmltbWVybWFubiA8dHppbW1l
cm1hbm5Ac3VzZS5kZT4gd3JvdGU6Cj4KPiBIaQo+Cj4gQW0gMDIuMTAuMjAgdW0gMjA6NDQgc2No
cmllYiBEYW5pZWwgVmV0dGVyOgo+ID4gT24gRnJpLCBPY3QgMiwgMjAyMCBhdCA4OjA1IFBNIERh
bmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4gd3JvdGU6Cj4gPj4KPiA+PiBPbiBUdWUsIFNl
cCAyOSwgMjAyMCBhdCAwNToxNDozNlBNICswMjAwLCBUaG9tYXMgWmltbWVybWFubiB3cm90ZToK
PiA+Pj4gQXQgbGVhc3Qgc3BhcmM2NCByZXF1aXJlcyBJL08tc3BlY2lmaWMgYWNjZXNzIHRvIGZy
YW1lYnVmZmVycy4gVGhpcwo+ID4+PiBwYXRjaCB1cGRhdGVzIHRoZSBmYmRldiBjb25zb2xlIGFj
Y29yZGluZ2x5Lgo+ID4+Pgo+ID4+PiBGb3IgZHJpdmVycyB3aXRoIGRpcmVjdCBhY2Nlc3MgdG8g
dGhlIGZyYW1lYnVmZmVyIG1lbW9yeSwgdGhlIGNhbGxiYWNrCj4gPj4+IGZ1bmN0aW9ucyBpbiBz
dHJ1Y3QgZmJfb3BzIHRlc3QgZm9yIHRoZSB0eXBlIG9mIG1lbW9yeSBhbmQgY2FsbCB0aGUgcnNw
Cj4gPj4+IGZiX3N5c18gb2YgZmJfY2ZiXyBmdW5jdGlvbnMuCj4gPj4+Cj4gPj4+IEZvciBkcml2
ZXJzIHRoYXQgZW1wbG95IGEgc2hhZG93IGJ1ZmZlciwgZmJkZXYncyBibGl0IGZ1bmN0aW9uIHJl
dHJpZXZlcwo+ID4+PiB0aGUgZnJhbWVidWZmZXIgYWRkcmVzcyBhcyBzdHJ1Y3QgZG1hX2J1Zl9t
YXAsIGFuZCB1c2VzIGRtYV9idWZfbWFwCj4gPj4+IGludGVyZmFjZXMgdG8gYWNjZXNzIHRoZSBi
dWZmZXIuCj4gPj4+Cj4gPj4+IFRoZSBib2NocyBkcml2ZXIgb24gc3BhcmM2NCB1c2VzIGEgd29y
a2Fyb3VuZCB0byBmbGFnIHRoZSBmcmFtZWJ1ZmZlciBhcwo+ID4+PiBJL08gbWVtb3J5IGFuZCBh
dm9pZCBhIEhXIGV4Y2VwdGlvbi4gV2l0aCB0aGUgaW50cm9kdWN0aW9uIG9mIHN0cnVjdAo+ID4+
PiBkbWFfYnVmX21hcCwgdGhpcyBpcyBub3QgcmVxdWlyZWQgYW55IGxvbmdlci4gVGhlIHBhdGNo
IHJlbW92ZXMgdGhlIHJzcAo+ID4+PiBjb2RlIGZyb20gYm90aCwgYm9jaHMgYW5kIGZiZGV2Lgo+
ID4+Pgo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5A
c3VzZS5kZT4KPiA+Cj4gPiBBcmdoLCBJIGFjY2lkZW50YWxseSBoaXQgc2VuZCBiZWZvcmUgZmlu
aXNoaW5nIHRoaXMgLi4uCj4gPgo+ID4+PiAtLS0KPiA+Pj4gIGRyaXZlcnMvZ3B1L2RybS9ib2No
cy9ib2Noc19rbXMuYyB8ICAgMSAtCj4gPj4+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2ZiX2hlbHBl
ci5jICAgfCAyMTcgKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCj4gPj4+ICBpbmNsdWRl
L2RybS9kcm1fbW9kZV9jb25maWcuaCAgICAgfCAgMTIgLS0KPiA+Pj4gIGluY2x1ZGUvbGludXgv
ZG1hLWJ1Zi1tYXAuaCAgICAgICB8ICA3MiArKysrKysrKy0tCj4gPj4+ICA0IGZpbGVzIGNoYW5n
ZWQsIDI2NSBpbnNlcnRpb25zKCspLCAzNyBkZWxldGlvbnMoLSkKPiA+Pj4KPiA+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ib2Nocy9ib2Noc19rbXMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9ib2Nocy9ib2Noc19rbXMuYwo+ID4+PiBpbmRleCAxM2QwZDA0YzQ0NTcuLjg1MzA4MWQxODZk
NSAxMDA2NDQKPiA+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JvY2hzL2JvY2hzX2ttcy5jCj4g
Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9ib2Nocy9ib2Noc19rbXMuYwo+ID4+PiBAQCAtMTUx
LDcgKzE1MSw2IEBAIGludCBib2Noc19rbXNfaW5pdChzdHJ1Y3QgYm9jaHNfZGV2aWNlICpib2No
cykKPiA+Pj4gICAgICAgYm9jaHMtPmRldi0+bW9kZV9jb25maWcucHJlZmVycmVkX2RlcHRoID0g
MjQ7Cj4gPj4+ICAgICAgIGJvY2hzLT5kZXYtPm1vZGVfY29uZmlnLnByZWZlcl9zaGFkb3cgPSAw
Owo+ID4+PiAgICAgICBib2Nocy0+ZGV2LT5tb2RlX2NvbmZpZy5wcmVmZXJfc2hhZG93X2ZiZGV2
ID0gMTsKPiA+Pj4gLSAgICAgYm9jaHMtPmRldi0+bW9kZV9jb25maWcuZmJkZXZfdXNlX2lvbWVt
ID0gdHJ1ZTsKPiA+Pj4gICAgICAgYm9jaHMtPmRldi0+bW9kZV9jb25maWcucXVpcmtfYWRkZmJf
cHJlZmVyX2hvc3RfYnl0ZV9vcmRlciA9IHRydWU7Cj4gPj4+Cj4gPj4+ICAgICAgIGJvY2hzLT5k
ZXYtPm1vZGVfY29uZmlnLmZ1bmNzID0gJmJvY2hzX21vZGVfZnVuY3M7Cj4gPj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2ZiX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9mYl9oZWxwZXIuYwo+ID4+PiBpbmRleCAzNDNhMjkyZjJjN2MuLmYzNDVhMzE0YTQzNyAxMDA2
NDQKPiA+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9mYl9oZWxwZXIuYwo+ID4+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vZHJtX2ZiX2hlbHBlci5jCj4gPj4+IEBAIC0zODgsMjQgKzM4OCwy
MiBAQCBzdGF0aWMgdm9pZCBkcm1fZmJfaGVscGVyX3Jlc3VtZV93b3JrZXIoc3RydWN0IHdvcmtf
c3RydWN0ICp3b3JrKQo+ID4+PiAgfQo+ID4+Pgo+ID4+PiAgc3RhdGljIHZvaWQgZHJtX2ZiX2hl
bHBlcl9kaXJ0eV9ibGl0X3JlYWwoc3RydWN0IGRybV9mYl9oZWxwZXIgKmZiX2hlbHBlciwKPiA+
Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fY2xp
cF9yZWN0ICpjbGlwKQo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgc3RydWN0IGRybV9jbGlwX3JlY3QgKmNsaXAsCj4gPj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZG1hX2J1Zl9tYXAgKmRzdCkKPiA+Pj4gIHsKPiA+
Pj4gICAgICAgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIgPSBmYl9oZWxwZXItPmZiOwo+ID4+
PiAgICAgICB1bnNpZ25lZCBpbnQgY3BwID0gZmItPmZvcm1hdC0+Y3BwWzBdOwo+ID4+PiAgICAg
ICBzaXplX3Qgb2Zmc2V0ID0gY2xpcC0+eTEgKiBmYi0+cGl0Y2hlc1swXSArIGNsaXAtPngxICog
Y3BwOwo+ID4+PiAgICAgICB2b2lkICpzcmMgPSBmYl9oZWxwZXItPmZiZGV2LT5zY3JlZW5fYnVm
ZmVyICsgb2Zmc2V0Owo+ID4+PiAtICAgICB2b2lkICpkc3QgPSBmYl9oZWxwZXItPmJ1ZmZlci0+
bWFwLnZhZGRyICsgb2Zmc2V0Owo+ID4+PiAgICAgICBzaXplX3QgbGVuID0gKGNsaXAtPngyIC0g
Y2xpcC0+eDEpICogY3BwOwo+ID4+PiAgICAgICB1bnNpZ25lZCBpbnQgeTsKPiA+Pj4KPiA+Pj4g
LSAgICAgZm9yICh5ID0gY2xpcC0+eTE7IHkgPCBjbGlwLT55MjsgeSsrKSB7Cj4gPj4+IC0gICAg
ICAgICAgICAgaWYgKCFmYl9oZWxwZXItPmRldi0+bW9kZV9jb25maWcuZmJkZXZfdXNlX2lvbWVt
KQo+ID4+PiAtICAgICAgICAgICAgICAgICAgICAgbWVtY3B5KGRzdCwgc3JjLCBsZW4pOwo+ID4+
PiAtICAgICAgICAgICAgIGVsc2UKPiA+Pj4gLSAgICAgICAgICAgICAgICAgICAgIG1lbWNweV90
b2lvKCh2b2lkIF9faW9tZW0gKilkc3QsIHNyYywgbGVuKTsKPiA+Pj4gKyAgICAgZG1hX2J1Zl9t
YXBfaW5jcihkc3QsIG9mZnNldCk7IC8qIGdvIHRvIGZpcnN0IHBpeGVsIHdpdGhpbiBjbGlwIHJl
Y3QgKi8KPiA+Pj4KPiA+Pj4gKyAgICAgZm9yICh5ID0gY2xpcC0+eTE7IHkgPCBjbGlwLT55Mjsg
eSsrKSB7Cj4gPj4+ICsgICAgICAgICAgICAgZG1hX2J1Zl9tYXBfbWVtY3B5X3RvKGRzdCwgc3Jj
LCBsZW4pOwo+ID4+PiArICAgICAgICAgICAgIGRtYV9idWZfbWFwX2luY3IoZHN0LCBmYi0+cGl0
Y2hlc1swXSk7Cj4gPj4+ICAgICAgICAgICAgICAgc3JjICs9IGZiLT5waXRjaGVzWzBdOwo+ID4+
PiAtICAgICAgICAgICAgIGRzdCArPSBmYi0+cGl0Y2hlc1swXTsKPiA+Pj4gICAgICAgfQo+ID4+
PiAgfQo+ID4+Pgo+ID4+PiBAQCAtNDMzLDggKzQzMSw5IEBAIHN0YXRpYyB2b2lkIGRybV9mYl9o
ZWxwZXJfZGlydHlfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4gPj4+ICAgICAgICAg
ICAgICAgICAgICAgICByZXQgPSBkcm1fY2xpZW50X2J1ZmZlcl92bWFwKGhlbHBlci0+YnVmZmVy
LCAmbWFwKTsKPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgIGlmIChyZXQpCj4gPj4+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybjsKPiA+Pj4gLSAgICAgICAgICAgICAgICAg
ICAgIGRybV9mYl9oZWxwZXJfZGlydHlfYmxpdF9yZWFsKGhlbHBlciwgJmNsaXBfY29weSk7Cj4g
Pj4+ICsgICAgICAgICAgICAgICAgICAgICBkcm1fZmJfaGVscGVyX2RpcnR5X2JsaXRfcmVhbCho
ZWxwZXIsICZjbGlwX2NvcHksICZtYXApOwo+ID4+PiAgICAgICAgICAgICAgIH0KPiA+Pj4gKwo+
ID4+PiAgICAgICAgICAgICAgIGlmIChoZWxwZXItPmZiLT5mdW5jcy0+ZGlydHkpCj4gPj4+ICAg
ICAgICAgICAgICAgICAgICAgICBoZWxwZXItPmZiLT5mdW5jcy0+ZGlydHkoaGVscGVyLT5mYiwg
TlVMTCwgMCwgMCwKPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAmY2xpcF9jb3B5LCAxKTsKPiA+Pj4gQEAgLTc3MSw2ICs3NzAsMTM2IEBAIHZvaWQg
ZHJtX2ZiX2hlbHBlcl9zeXNfaW1hZ2VibGl0KHN0cnVjdCBmYl9pbmZvICppbmZvLAo+ID4+PiAg
fQo+ID4+PiAgRVhQT1JUX1NZTUJPTChkcm1fZmJfaGVscGVyX3N5c19pbWFnZWJsaXQpOwo+ID4+
Pgo+ID4+PiArc3RhdGljIHNzaXplX3QgZHJtX2ZiX2hlbHBlcl9jZmJfcmVhZChzdHJ1Y3QgZmJf
aW5mbyAqaW5mbywgY2hhciBfX3VzZXIgKmJ1ZiwKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgc2l6ZV90IGNvdW50LCBsb2ZmX3QgKnBwb3MpCj4gPj4+ICt7Cj4gPj4+
ICsgICAgIHVuc2lnbmVkIGxvbmcgcCA9ICpwcG9zOwo+ID4+PiArICAgICB1OCAqZHN0Owo+ID4+
PiArICAgICB1OCBfX2lvbWVtICpzcmM7Cj4gPj4+ICsgICAgIGludCBjLCBlcnIgPSAwOwo+ID4+
PiArICAgICB1bnNpZ25lZCBsb25nIHRvdGFsX3NpemU7Cj4gPj4+ICsgICAgIHVuc2lnbmVkIGxv
bmcgYWxsb2Nfc2l6ZTsKPiA+Pj4gKyAgICAgc3NpemVfdCByZXQgPSAwOwo+ID4+PiArCj4gPj4+
ICsgICAgIGlmIChpbmZvLT5zdGF0ZSAhPSBGQklORk9fU1RBVEVfUlVOTklORykKPiA+Pj4gKyAg
ICAgICAgICAgICByZXR1cm4gLUVQRVJNOwo+ID4+PiArCj4gPj4+ICsgICAgIHRvdGFsX3NpemUg
PSBpbmZvLT5zY3JlZW5fc2l6ZTsKPiA+Pj4gKwo+ID4+PiArICAgICBpZiAodG90YWxfc2l6ZSA9
PSAwKQo+ID4+PiArICAgICAgICAgICAgIHRvdGFsX3NpemUgPSBpbmZvLT5maXguc21lbV9sZW47
Cj4gPj4+ICsKPiA+Pj4gKyAgICAgaWYgKHAgPj0gdG90YWxfc2l6ZSkKPiA+Pj4gKyAgICAgICAg
ICAgICByZXR1cm4gMDsKPiA+Pj4gKwo+ID4+PiArICAgICBpZiAoY291bnQgPj0gdG90YWxfc2l6
ZSkKPiA+Pj4gKyAgICAgICAgICAgICBjb3VudCA9IHRvdGFsX3NpemU7Cj4gPj4+ICsKPiA+Pj4g
KyAgICAgaWYgKGNvdW50ICsgcCA+IHRvdGFsX3NpemUpCj4gPj4+ICsgICAgICAgICAgICAgY291
bnQgPSB0b3RhbF9zaXplIC0gcDsKPiA+Pj4gKwo+ID4+PiArICAgICBzcmMgPSAodTggX19pb21l
bSAqKShpbmZvLT5zY3JlZW5fYmFzZSArIHApOwo+ID4+PiArCj4gPj4+ICsgICAgIGFsbG9jX3Np
emUgPSBtaW4oY291bnQsIFBBR0VfU0laRSk7Cj4gPj4+ICsKPiA+Pj4gKyAgICAgZHN0ID0ga21h
bGxvYyhhbGxvY19zaXplLCBHRlBfS0VSTkVMKTsKPiA+Pj4gKyAgICAgaWYgKCFkc3QpCj4gPj4+
ICsgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07Cj4gPj4+ICsKPiA+Pj4gKyAgICAgd2hpbGUg
KGNvdW50KSB7Cj4gPj4+ICsgICAgICAgICAgICAgYyA9IG1pbihjb3VudCwgYWxsb2Nfc2l6ZSk7
Cj4gPj4+ICsKPiA+Pj4gKyAgICAgICAgICAgICBtZW1jcHlfZnJvbWlvKGRzdCwgc3JjLCBjKTsK
PiA+Pj4gKyAgICAgICAgICAgICBpZiAoY29weV90b191c2VyKGJ1ZiwgZHN0LCBjKSkgewo+ID4+
PiArICAgICAgICAgICAgICAgICAgICAgZXJyID0gLUVGQVVMVDsKPiA+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgIGJyZWFrOwo+ID4+PiArICAgICAgICAgICAgIH0KPiA+Pj4gKwo+ID4+PiArICAg
ICAgICAgICAgIHNyYyArPSBjOwo+ID4+PiArICAgICAgICAgICAgICpwcG9zICs9IGM7Cj4gPj4+
ICsgICAgICAgICAgICAgYnVmICs9IGM7Cj4gPj4+ICsgICAgICAgICAgICAgcmV0ICs9IGM7Cj4g
Pj4+ICsgICAgICAgICAgICAgY291bnQgLT0gYzsKPiA+Pj4gKyAgICAgfQo+ID4+PiArCj4gPj4+
ICsgICAgIGtmcmVlKGRzdCk7Cj4gPj4+ICsKPiA+Pj4gKyAgICAgaWYgKGVycikKPiA+Pj4gKyAg
ICAgICAgICAgICByZXR1cm4gZXJyOwo+ID4+PiArCj4gPj4+ICsgICAgIHJldHVybiByZXQ7Cj4g
Pj4+ICt9Cj4gPj4+ICsKPiA+Pj4gK3N0YXRpYyBzc2l6ZV90IGRybV9mYl9oZWxwZXJfY2ZiX3dy
aXRlKHN0cnVjdCBmYl9pbmZvICppbmZvLCBjb25zdCBjaGFyIF9fdXNlciAqYnVmLAo+ID4+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZV90IGNvdW50LCBsb2ZmX3Qg
KnBwb3MpCj4gPj4+ICt7Cj4gPj4+ICsgICAgIHVuc2lnbmVkIGxvbmcgcCA9ICpwcG9zOwo+ID4+
PiArICAgICB1OCAqc3JjOwo+ID4+PiArICAgICB1OCBfX2lvbWVtICpkc3Q7Cj4gPj4+ICsgICAg
IGludCBjLCBlcnIgPSAwOwo+ID4+PiArICAgICB1bnNpZ25lZCBsb25nIHRvdGFsX3NpemU7Cj4g
Pj4+ICsgICAgIHVuc2lnbmVkIGxvbmcgYWxsb2Nfc2l6ZTsKPiA+Pj4gKyAgICAgc3NpemVfdCBy
ZXQgPSAwOwo+ID4+PiArCj4gPj4+ICsgICAgIGlmIChpbmZvLT5zdGF0ZSAhPSBGQklORk9fU1RB
VEVfUlVOTklORykKPiA+Pj4gKyAgICAgICAgICAgICByZXR1cm4gLUVQRVJNOwo+ID4+PiArCj4g
Pj4+ICsgICAgIHRvdGFsX3NpemUgPSBpbmZvLT5zY3JlZW5fc2l6ZTsKPiA+Pj4gKwo+ID4+PiAr
ICAgICBpZiAodG90YWxfc2l6ZSA9PSAwKQo+ID4+PiArICAgICAgICAgICAgIHRvdGFsX3NpemUg
PSBpbmZvLT5maXguc21lbV9sZW47Cj4gPj4+ICsKPiA+Pj4gKyAgICAgaWYgKHAgPiB0b3RhbF9z
aXplKQo+ID4+PiArICAgICAgICAgICAgIHJldHVybiAtRUZCSUc7Cj4gPj4+ICsKPiA+Pj4gKyAg
ICAgaWYgKGNvdW50ID4gdG90YWxfc2l6ZSkgewo+ID4+PiArICAgICAgICAgICAgIGVyciA9IC1F
RkJJRzsKPiA+Pj4gKyAgICAgICAgICAgICBjb3VudCA9IHRvdGFsX3NpemU7Cj4gPj4+ICsgICAg
IH0KPiA+Pj4gKwo+ID4+PiArICAgICBpZiAoY291bnQgKyBwID4gdG90YWxfc2l6ZSkgewo+ID4+
PiArICAgICAgICAgICAgIC8qCj4gPj4+ICsgICAgICAgICAgICAgICogVGhlIGZyYW1lYnVmZmVy
IGlzIHRvbyBzbWFsbC4gV2UgZG8gdGhlCj4gPj4+ICsgICAgICAgICAgICAgICogY29weSBvcGVy
YXRpb24sIGJ1dCByZXR1cm4gYW4gZXJyb3IgY29kZQo+ID4+PiArICAgICAgICAgICAgICAqIGFm
dGVyd2FyZHMuIFRha2VuIGZyb20gZmJkZXYuCj4gPj4+ICsgICAgICAgICAgICAgICovCj4gPj4+
ICsgICAgICAgICAgICAgaWYgKCFlcnIpCj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICBlcnIg
PSAtRU5PU1BDOwo+ID4+PiArICAgICAgICAgICAgIGNvdW50ID0gdG90YWxfc2l6ZSAtIHA7Cj4g
Pj4+ICsgICAgIH0KPiA+Pj4gKwo+ID4+PiArICAgICBhbGxvY19zaXplID0gbWluKGNvdW50LCBQ
QUdFX1NJWkUpOwo+ID4+PiArCj4gPj4+ICsgICAgIHNyYyA9IGttYWxsb2MoYWxsb2Nfc2l6ZSwg
R0ZQX0tFUk5FTCk7Cj4gPj4+ICsgICAgIGlmICghc3JjKQo+ID4+PiArICAgICAgICAgICAgIHJl
dHVybiAtRU5PTUVNOwo+ID4+PiArCj4gPj4+ICsgICAgIGRzdCA9ICh1OCBfX2lvbWVtICopKGlu
Zm8tPnNjcmVlbl9iYXNlICsgcCk7Cj4gPj4+ICsKPiA+Pj4gKyAgICAgd2hpbGUgKGNvdW50KSB7
Cj4gPj4+ICsgICAgICAgICAgICAgYyA9IG1pbihjb3VudCwgYWxsb2Nfc2l6ZSk7Cj4gPj4+ICsK
PiA+Pj4gKyAgICAgICAgICAgICBpZiAoY29weV9mcm9tX3VzZXIoc3JjLCBidWYsIGMpKSB7Cj4g
Pj4+ICsgICAgICAgICAgICAgICAgICAgICBlcnIgPSAtRUZBVUxUOwo+ID4+PiArICAgICAgICAg
ICAgICAgICAgICAgYnJlYWs7Cj4gPj4+ICsgICAgICAgICAgICAgfQo+ID4+PiArICAgICAgICAg
ICAgIG1lbWNweV90b2lvKGRzdCwgc3JjLCBjKTsKPiA+Pj4gKwo+ID4+PiArICAgICAgICAgICAg
IGRzdCArPSBjOwo+ID4+PiArICAgICAgICAgICAgICpwcG9zICs9IGM7Cj4gPj4+ICsgICAgICAg
ICAgICAgYnVmICs9IGM7Cj4gPj4+ICsgICAgICAgICAgICAgcmV0ICs9IGM7Cj4gPj4+ICsgICAg
ICAgICAgICAgY291bnQgLT0gYzsKPiA+Pj4gKyAgICAgfQo+ID4+PiArCj4gPj4+ICsgICAgIGtm
cmVlKHNyYyk7Cj4gPj4+ICsKPiA+Pj4gKyAgICAgaWYgKGVycikKPiA+Pj4gKyAgICAgICAgICAg
ICByZXR1cm4gZXJyOwo+ID4+PiArCj4gPj4+ICsgICAgIHJldHVybiByZXQ7Cj4gPj4+ICt9Cj4g
Pgo+ID4gVGhlIGR1cGxpY2F0aW9uIGlzIGEgYml0IGFubm95aW5nIGhlcmUsIGJ1dCBjYW4ndCBy
ZWFsbHkgYmUgYXZvaWRlZC4gSQo+ID4gZG8gdGhpbmsgdGhvdWdoIHdlIHNob3VsZCBtYXliZSBn
byBhIGJpdCBmdXJ0aGVyLCBhbmQgaGF2ZSBkcm0KPiA+IGltcGxlbWVudGF0aW9ucyBvZiB0aGlz
IHN0dWZmIGluc3RlYWQgb2YgZm9sbG93aW5nIGZiZGV2IGNvbmNlcHRzIGFzCj4gPiBjbG9zZWx5
IGFzIHBvc3NpYmxlLiBTbyBoZXJlIHJvdWdobHk6Cj4gPgo+ID4gLSBpZiB3ZSBoYXZlIGEgc2hh
ZG93IGZiLCBjb25zdHJ1Y3QgYSBkbWFfYnVmX21hcCBmb3IgdGhhdCwgb3RoZXJ3aXNlCj4gPiB0
YWtlIHRoZSBvbmUgZnJvbSB0aGUgZHJpdmVyCj4gPiAtIGhhdmUgYSBmdWxsIGdlbmVyaWMgaW1w
bGVtZW50YXRpb24gdXNpbmcgdGhhdCBvbmUgZGlyZWN0bHkgKGFuZAo+ID4gY2hlY2tpbmcgc2l6
ZSBsaW1pdHMgYWdhaW5zdCB0aGUgdW5kZXJseWluZyBnZW0gYnVmZmVyKQo+ID4gLSBpZGVhbGx5
IGFsc28gd2l0aCBzb21lIHRlc3RjYXNlcyBpbiB0aGUgZmJkZXYgdGVzdGNhc2Ugd2UgaGF2ZSAo
dmVyeQo+ID4gYmFyZS1ib25lcyByaWdodCBub3cpIGluIGlndAo+ID4KPiA+IEJ1dCBJJ20gbm90
IHJlYWxseSBzdXJlIHdoZXRoZXIgdGhhdCdzIHdvcnRoIGFsbCB0aGUgdHJvdWJsZS4gSXQncwo+
ID4ganVzdCB0aGF0IHRoZSBmYmRldi1uZXNzIGhlcmUgaW4gdGhpcyBjb3BpZWQgY29kZSBzdGlj
a3Mgb3V0IGEgbG90IDotKQo+ID4KPiA+Pj4gKwo+ID4+PiAgLyoqCj4gPj4+ICAgKiBkcm1fZmJf
aGVscGVyX2NmYl9maWxscmVjdCAtIHdyYXBwZXIgYXJvdW5kIGNmYl9maWxscmVjdAo+ID4+PiAg
ICogQGluZm86IGZiZGV2IHJlZ2lzdGVyZWQgYnkgdGhlIGhlbHBlcgo+ID4+PiBAQCAtMjA0Myw2
ICsyMTcyLDY2IEBAIHN0YXRpYyBpbnQgZHJtX2ZiZGV2X2ZiX21tYXAoc3RydWN0IGZiX2luZm8g
KmluZm8sIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQo+ID4+PiAgICAgICAgICAgICAgIHJl
dHVybiAtRU5PREVWOwo+ID4+PiAgfQo+ID4+Pgo+ID4+PiArc3RhdGljIHNzaXplX3QgZHJtX2Zi
ZGV2X2ZiX3JlYWQoc3RydWN0IGZiX2luZm8gKmluZm8sIGNoYXIgX191c2VyICpidWYsCj4gPj4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzaXplX3QgY291bnQsIGxvZmZfdCAqcHBv
cykKPiA+Pj4gK3sKPiA+Pj4gKyAgICAgc3RydWN0IGRybV9mYl9oZWxwZXIgKmZiX2hlbHBlciA9
IGluZm8tPnBhcjsKPiA+Pj4gKyAgICAgc3RydWN0IGRybV9jbGllbnRfYnVmZmVyICpidWZmZXIg
PSBmYl9oZWxwZXItPmJ1ZmZlcjsKPiA+Pj4gKwo+ID4+PiArICAgICBpZiAoZHJtX2ZiZGV2X3Vz
ZV9zaGFkb3dfZmIoZmJfaGVscGVyKSB8fCAhYnVmZmVyLT5tYXAuaXNfaW9tZW0pCj4gPj4+ICsg
ICAgICAgICAgICAgcmV0dXJuIGRybV9mYl9oZWxwZXJfc3lzX3JlYWQoaW5mbywgYnVmLCBjb3Vu
dCwgcHBvcyk7Cj4gPj4+ICsgICAgIGVsc2UKPiA+Pj4gKyAgICAgICAgICAgICByZXR1cm4gZHJt
X2ZiX2hlbHBlcl9jZmJfcmVhZChpbmZvLCBidWYsIGNvdW50LCBwcG9zKTsKPiA+Pj4gK30KPiA+
Pj4gKwo+ID4+PiArc3RhdGljIHNzaXplX3QgZHJtX2ZiZGV2X2ZiX3dyaXRlKHN0cnVjdCBmYl9p
bmZvICppbmZvLCBjb25zdCBjaGFyIF9fdXNlciAqYnVmLAo+ID4+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHNpemVfdCBjb3VudCwgbG9mZl90ICpwcG9zKQo+ID4+PiArewo+ID4+
PiArICAgICBzdHJ1Y3QgZHJtX2ZiX2hlbHBlciAqZmJfaGVscGVyID0gaW5mby0+cGFyOwo+ID4+
PiArICAgICBzdHJ1Y3QgZHJtX2NsaWVudF9idWZmZXIgKmJ1ZmZlciA9IGZiX2hlbHBlci0+YnVm
ZmVyOwo+ID4+PiArCj4gPj4+ICsgICAgIGlmIChkcm1fZmJkZXZfdXNlX3NoYWRvd19mYihmYl9o
ZWxwZXIpIHx8ICFidWZmZXItPm1hcC5pc19pb21lbSkKPiA+Pj4gKyAgICAgICAgICAgICByZXR1
cm4gZHJtX2ZiX2hlbHBlcl9zeXNfd3JpdGUoaW5mbywgYnVmLCBjb3VudCwgcHBvcyk7Cj4gPj4+
ICsgICAgIGVsc2UKPiA+Pj4gKyAgICAgICAgICAgICByZXR1cm4gZHJtX2ZiX2hlbHBlcl9jZmJf
d3JpdGUoaW5mbywgYnVmLCBjb3VudCwgcHBvcyk7Cj4gPj4+ICt9Cj4gPj4+ICsKPiA+Pj4gK3N0
YXRpYyB2b2lkIGRybV9mYmRldl9mYl9maWxscmVjdChzdHJ1Y3QgZmJfaW5mbyAqaW5mbywKPiA+
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgZmJfZmlsbHJl
Y3QgKnJlY3QpCj4gPj4+ICt7Cj4gPj4+ICsgICAgIHN0cnVjdCBkcm1fZmJfaGVscGVyICpmYl9o
ZWxwZXIgPSBpbmZvLT5wYXI7Cj4gPj4+ICsgICAgIHN0cnVjdCBkcm1fY2xpZW50X2J1ZmZlciAq
YnVmZmVyID0gZmJfaGVscGVyLT5idWZmZXI7Cj4gPj4+ICsKPiA+Pj4gKyAgICAgaWYgKGRybV9m
YmRldl91c2Vfc2hhZG93X2ZiKGZiX2hlbHBlcikgfHwgIWJ1ZmZlci0+bWFwLmlzX2lvbWVtKQo+
ID4+PiArICAgICAgICAgICAgIGRybV9mYl9oZWxwZXJfc3lzX2ZpbGxyZWN0KGluZm8sIHJlY3Qp
Owo+ID4+PiArICAgICBlbHNlCj4gPj4+ICsgICAgICAgICAgICAgZHJtX2ZiX2hlbHBlcl9jZmJf
ZmlsbHJlY3QoaW5mbywgcmVjdCk7Cj4gPj4+ICt9Cj4gPj4+ICsKPiA+Pj4gK3N0YXRpYyB2b2lk
IGRybV9mYmRldl9mYl9jb3B5YXJlYShzdHJ1Y3QgZmJfaW5mbyAqaW5mbywKPiA+Pj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgZmJfY29weWFyZWEgKmFyZWEp
Cj4gPj4+ICt7Cj4gPj4+ICsgICAgIHN0cnVjdCBkcm1fZmJfaGVscGVyICpmYl9oZWxwZXIgPSBp
bmZvLT5wYXI7Cj4gPj4+ICsgICAgIHN0cnVjdCBkcm1fY2xpZW50X2J1ZmZlciAqYnVmZmVyID0g
ZmJfaGVscGVyLT5idWZmZXI7Cj4gPj4+ICsKPiA+Pj4gKyAgICAgaWYgKGRybV9mYmRldl91c2Vf
c2hhZG93X2ZiKGZiX2hlbHBlcikgfHwgIWJ1ZmZlci0+bWFwLmlzX2lvbWVtKQo+ID4+PiArICAg
ICAgICAgICAgIGRybV9mYl9oZWxwZXJfc3lzX2NvcHlhcmVhKGluZm8sIGFyZWEpOwo+ID4+PiAr
ICAgICBlbHNlCj4gPj4+ICsgICAgICAgICAgICAgZHJtX2ZiX2hlbHBlcl9jZmJfY29weWFyZWEo
aW5mbywgYXJlYSk7Cj4gPj4+ICt9Cj4gPj4+ICsKPiA+Pj4gK3N0YXRpYyB2b2lkIGRybV9mYmRl
dl9mYl9pbWFnZWJsaXQoc3RydWN0IGZiX2luZm8gKmluZm8sCj4gPj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBmYl9pbWFnZSAqaW1hZ2UpCj4gPj4+ICt7
Cj4gPj4+ICsgICAgIHN0cnVjdCBkcm1fZmJfaGVscGVyICpmYl9oZWxwZXIgPSBpbmZvLT5wYXI7
Cj4gPj4+ICsgICAgIHN0cnVjdCBkcm1fY2xpZW50X2J1ZmZlciAqYnVmZmVyID0gZmJfaGVscGVy
LT5idWZmZXI7Cj4gPj4+ICsKPiA+Pj4gKyAgICAgaWYgKGRybV9mYmRldl91c2Vfc2hhZG93X2Zi
KGZiX2hlbHBlcikgfHwgIWJ1ZmZlci0+bWFwLmlzX2lvbWVtKQo+ID4+PiArICAgICAgICAgICAg
IGRybV9mYl9oZWxwZXJfc3lzX2ltYWdlYmxpdChpbmZvLCBpbWFnZSk7Cj4gPj4+ICsgICAgIGVs
c2UKPiA+Pj4gKyAgICAgICAgICAgICBkcm1fZmJfaGVscGVyX2NmYl9pbWFnZWJsaXQoaW5mbywg
aW1hZ2UpOwo+ID4+PiArfQo+ID4KPiA+IEkgdGhpbmsgYSB0b2RvLnJzdCBlbnRyeSB0byBtYWtl
IHRoZSBuZXcgZ2VuZXJpYyBmdW5jdGlvbnMgdGhlIHJlYWwgb25lcywgYW5kCj4gPiBkcml2ZXJz
IG5vdCB1c2luZyB0aGUgc3lzL2NmYiBvbmVzIGFueW1vcmUgd291bGQgYmUgYSBnb29kIGFkZGl0
aW9uLgo+ID4gSXQncyBraW5kYSBjb3ZlcmVkIGJ5IHRoZSBtb3ZlIHRvIHRoZSBnZW5lcmljIGhl
bHBlcnMsIGJ1dCBtYXliZSB3ZQo+ID4gY2FuIGNvbnZlcnQgYSBmZXcgbW9yZSBkcml2ZXJzIG92
ZXIgdG8gdGhlc2UgaGVyZS4gV291bGQgYWxzbyBhbGxvdyB1cwo+ID4gdG8gbWF5YmUgZmxhdHRl
biB0aGUgY29kZSBhIGJpdCBhbmQgdXNlIG1vcmUgb2YgdGhlIGRtYV9idWZfbWFwIHN0dWZmCj4g
PiBkaXJlY3RseSAoaW5zdGVhZCBvZiByZXVzaW5nIGNydXN0eSBmYmRldiBjb2RlIHdyaXR0ZW4g
MjAgeWVhcnMgYWdvIG9yCj4gPiBzbykuCj4KPiBJIHdvdWxkbid0IG1pbmQgZG9pbmcgb3VyIG93
biB0aGluZywgYnV0IGRtYV9idWZfbWFwIGlzIG5vdCBhIGdvb2QgZml0Cj4gaGVyZS4gTW9zdGx5
IGJlY2F1c2UgdGhlIF9jZmJfIGNvZGUgZmlyc3QgZG9lcyBhIHJlYWRzIGZyb20gSS9PIHRvCj4g
c3lzdGVtIG1lbW9yeSwgYW5kIHRoZW4gY29waWVzIHRvIHVzZXJzcGFjZS4gVGhlIF9zeXNfIGZ1
bmN0aW9ucyBjb3B5Cj4gZGlyZWN0bHkgdG8gdXNlcnNwYWNlLiAoU2FtZSBmb3Igd3JpdGUsIGJ1
dCBpbiB0aGUgb3RoZXIgZGlyZWN0aW9uLikKPgo+IFRoZXJlJ3Mgc29tZSBjb2RlIGF0IHRoZSB0
b3AgYW5kIGJvdHRvbSBvZiB0aGVzZSBmdW5jdGlvbnMgdGhhdCBjb3VsZCBiZQo+IHNoYXJlZC4g
SWYgd2Ugd2FudCB0byBzaGFyZSB0aGUgY29weSBsb29wcywgd2UnZCBwcm9iYWJseSBlbmQgdXAg
d2l0aAo+IGFkZGl0aW9uYWwgbWVtY3B5cyBpbiB0aGUgX3N5c18gY2FzZS4KClllYWggSSBub3Rp
Y2VkIHRoYXQuIEknZCBqdXN0IGlnbm9yZSBpdC4gSWYgc29tZW9uZSBpcyB1c2luZyBhKSBmYmRl
dgphbmQgYikgcmVhZC93cml0ZSBvbiBpdCwgdGhleSBkb24ndCBjYXJlIG11Y2ggYWJvdXQgcGVy
Zm9ybWFuY2UuIFdlCmNhbiBkbyBhbm90aGVyIGNvcHkgb3IgdHdvLCBubyBwcm9ibGVtLiBCdXQg
dGhlIGR1cGxpY2F0aW9uIGlzIGFsc28gb2sKSSBndWVzcywganVzdCBhIGJpdCBsZXNzIHByZXR0
eS4KLURhbmllbAoKPiBCZXN0IHJlZ2FyZHMKPiBUaG9tYXMKPgo+ID4KPiA+Pj4gKwo+ID4+PiAg
c3RhdGljIGNvbnN0IHN0cnVjdCBmYl9vcHMgZHJtX2ZiZGV2X2ZiX29wcyA9IHsKPiA+Pj4gICAg
ICAgLm93bmVyICAgICAgICAgID0gVEhJU19NT0RVTEUsCj4gPj4+ICAgICAgIERSTV9GQl9IRUxQ
RVJfREVGQVVMVF9PUFMsCj4gPj4+IEBAIC0yMDUwLDExICsyMjM5LDExIEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZmJfb3BzIGRybV9mYmRldl9mYl9vcHMgPSB7Cj4gPj4+ICAgICAgIC5mYl9yZWxl
YXNlICAgICA9IGRybV9mYmRldl9mYl9yZWxlYXNlLAo+ID4+PiAgICAgICAuZmJfZGVzdHJveSAg
ICAgPSBkcm1fZmJkZXZfZmJfZGVzdHJveSwKPiA+Pj4gICAgICAgLmZiX21tYXAgICAgICAgID0g
ZHJtX2ZiZGV2X2ZiX21tYXAsCj4gPj4+IC0gICAgIC5mYl9yZWFkICAgICAgICA9IGRybV9mYl9o
ZWxwZXJfc3lzX3JlYWQsCj4gPj4+IC0gICAgIC5mYl93cml0ZSAgICAgICA9IGRybV9mYl9oZWxw
ZXJfc3lzX3dyaXRlLAo+ID4+PiAtICAgICAuZmJfZmlsbHJlY3QgICAgPSBkcm1fZmJfaGVscGVy
X3N5c19maWxscmVjdCwKPiA+Pj4gLSAgICAgLmZiX2NvcHlhcmVhICAgID0gZHJtX2ZiX2hlbHBl
cl9zeXNfY29weWFyZWEsCj4gPj4+IC0gICAgIC5mYl9pbWFnZWJsaXQgICA9IGRybV9mYl9oZWxw
ZXJfc3lzX2ltYWdlYmxpdCwKPiA+Pj4gKyAgICAgLmZiX3JlYWQgICAgICAgID0gZHJtX2ZiZGV2
X2ZiX3JlYWQsCj4gPj4+ICsgICAgIC5mYl93cml0ZSAgICAgICA9IGRybV9mYmRldl9mYl93cml0
ZSwKPiA+Pj4gKyAgICAgLmZiX2ZpbGxyZWN0ICAgID0gZHJtX2ZiZGV2X2ZiX2ZpbGxyZWN0LAo+
ID4+PiArICAgICAuZmJfY29weWFyZWEgICAgPSBkcm1fZmJkZXZfZmJfY29weWFyZWEsCj4gPj4+
ICsgICAgIC5mYl9pbWFnZWJsaXQgICA9IGRybV9mYmRldl9mYl9pbWFnZWJsaXQsCj4gPj4+ICB9
Owo+ID4+Pgo+ID4+PiAgc3RhdGljIHN0cnVjdCBmYl9kZWZlcnJlZF9pbyBkcm1fZmJkZXZfZGVm
aW8gPSB7Cj4gPj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fbW9kZV9jb25maWcuaCBi
L2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oCj4gPj4+IGluZGV4IDVmZmJiNGVkNWIzNS4u
YWI0MjRkZGQ3NjY1IDEwMDY0NAo+ID4+PiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fbW9kZV9jb25m
aWcuaAo+ID4+PiArKysgYi9pbmNsdWRlL2RybS9kcm1fbW9kZV9jb25maWcuaAo+ID4+PiBAQCAt
ODc3LDE4ICs4NzcsNiBAQCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnIHsKPiA+Pj4gICAgICAgICov
Cj4gPj4+ICAgICAgIGJvb2wgcHJlZmVyX3NoYWRvd19mYmRldjsKPiA+Pj4KPiA+Pj4gLSAgICAg
LyoqCj4gPj4+IC0gICAgICAqIEBmYmRldl91c2VfaW9tZW06Cj4gPj4+IC0gICAgICAqCj4gPj4+
IC0gICAgICAqIFNldCB0byB0cnVlIGlmIGZyYW1lYnVmZmVyIHJlc2lkZSBpbiBpb21lbS4KPiA+
Pj4gLSAgICAgICogV2hlbiBzZXQgdG8gdHJ1ZSBtZW1jcHlfdG9pbygpIGlzIHVzZWQgd2hlbiBj
b3B5aW5nIHRoZSBmcmFtZWJ1ZmZlciBpbgo+ID4+PiAtICAgICAgKiBkcm1fZmJfaGVscGVyLmRy
bV9mYl9oZWxwZXJfZGlydHlfYmxpdF9yZWFsKCkuCj4gPj4+IC0gICAgICAqCj4gPj4+IC0gICAg
ICAqIEZJWE1FOiBUaGlzIHNob3VsZCBiZSByZXBsYWNlZCB3aXRoIGEgcGVyLW1hcHBpbmcgaXNf
aW9tZW0KPiA+Pj4gLSAgICAgICogZmxhZyAobGlrZSB0dG0gZG9lcyksIGFuZCB0aGVuIHVzZWQg
ZXZlcnl3aGVyZSBpbiBmYmRldiBjb2RlLgo+ID4+PiAtICAgICAgKi8KPiA+Pj4gLSAgICAgYm9v
bCBmYmRldl91c2VfaW9tZW07Cj4gPj4+IC0KPiA+Pj4gICAgICAgLyoqCj4gPj4+ICAgICAgICAq
IEBxdWlya19hZGRmYl9wcmVmZXJfeGJncl8zMGJwcDoKPiA+Pj4gICAgICAgICoKPiA+Pj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi1tYXAuaCBiL2luY2x1ZGUvbGludXgvZG1h
LWJ1Zi1tYXAuaAo+ID4KPiA+IEkgdGhpbmsgdGhlIGJlbG93IHNob3VsZCBiZSBzcGxpdCBvdXQg
YXMgYSBwcmVwIHBhdGNoLgo+ID4KPiA+Pj4gaW5kZXggMmU4YmJlY2I1MDkxLi42Y2EwZjMwNGRk
YTIgMTAwNjQ0Cj4gPj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi1tYXAuaAo+ID4+PiAr
KysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYtbWFwLmgKPiA+Pj4gQEAgLTMyLDYgKzMyLDE0IEBA
Cj4gPj4+ICAgKiBhY2Nlc3NpbmcgdGhlIGJ1ZmZlci4gVXNlIHRoZSByZXR1cm5lZCBpbnN0YW5j
ZSBhbmQgdGhlIGhlbHBlciBmdW5jdGlvbnMKPiA+Pj4gICAqIHRvIGFjY2VzcyB0aGUgYnVmZmVy
J3MgbWVtb3J5IGluIHRoZSBjb3JyZWN0IHdheS4KPiA+Pj4gICAqCj4gPj4+ICsgKiBUaGUgdHlw
ZSA6Yzp0eXBlOmBzdHJ1Y3QgZG1hX2J1Zl9tYXAgPGRtYV9idWZfbWFwPmAgYW5kIGl0cyBoZWxw
ZXJzIGFyZQo+ID4+PiArICogYWN0dWFsbHkgaW5kZXBlbmRlbnQgZnJvbSB0aGUgZG1hLWJ1ZiBp
bmZyYXN0cnVjdHVyZS4gV2hlbiBzaGFyaW5nIGJ1ZmZlcnMKPiA+Pj4gKyAqIGFtb25nIGRldmlj
ZXMsIGRyaXZlcnMgaGF2ZSB0byBrbm93IHRoZSBsb2NhdGlvbiBvZiB0aGUgbWVtb3J5IHRvIGFj
Y2Vzcwo+ID4+PiArICogdGhlIGJ1ZmZlcnMgaW4gYSBzYWZlIHdheS4gOmM6dHlwZTpgc3RydWN0
IGRtYV9idWZfbWFwIDxkbWFfYnVmX21hcD5gCj4gPj4+ICsgKiBzb2x2ZXMgdGhpcyBwcm9ibGVt
IGZvciBkbWEtYnVmIGFuZCBpdHMgdXNlcnMuIElmIG90aGVyIGRyaXZlcnMgb3IKPiA+Pj4gKyAq
IHN1Yi1zeXN0ZW1zIHJlcXVpcmUgc2ltaWxhciBmdW5jdGlvbmFsaXR5LCB0aGUgdHlwZSBjb3Vs
ZCBiZSBnZW5lcmFsaXplZAo+ID4+PiArICogYW5kIG1vdmVkIHRvIGEgbW9yZSBwcm9taW5lbnQg
aGVhZGVyIGZpbGUuCj4gPj4+ICsgKgo+ID4+PiAgICogT3Blbi1jb2RpbmcgYWNjZXNzIHRvIDpj
OnR5cGU6YHN0cnVjdCBkbWFfYnVmX21hcCA8ZG1hX2J1Zl9tYXA+YCBpcwo+ID4+PiAgICogY29u
c2lkZXJlZCBiYWQgc3R5bGUuIFJhdGhlciB0aGVuIGFjY2Vzc2luZyBpdHMgZmllbGRzIGRpcmVj
dGx5LCB1c2Ugb25lCj4gPj4+ICAgKiBvZiB0aGUgcHJvdmlkZWQgaGVscGVyIGZ1bmN0aW9ucywg
b3IgaW1wbGVtZW50IHlvdXIgb3duLiBGb3IgZXhhbXBsZSwKPiA+Pj4gQEAgLTUxLDYgKzU5LDE0
IEBACj4gPj4+ICAgKgo+ID4+PiAgICogICBkbWFfYnVmX21hcF9zZXRfdmFkZHJfaW9tZW0oJm1h
cC4gMHhkZWFkYmVhZik7Cj4gPj4+ICAgKgo+ID4+PiArICogSW5zdGFuY2VzIG9mIHN0cnVjdCBk
bWFfYnVmX21hcCBkbyBub3QgaGF2ZSB0byBiZSBjbGVhbmVkIHVwLCBidXQKPiA+Pj4gKyAqIGNh
biBiZSBjbGVhcmVkIHRvIE5VTEwgd2l0aCBkbWFfYnVmX21hcF9jbGVhcigpLiBDbGVhcmVkIG1h
cHBpbmdzCj4gPj4+ICsgKiBhbHdheXMgcmVmZXIgdG8gc3lzdGVtIG1lbW9yeS4KPiA+Pj4gKyAq
Cj4gPj4+ICsgKiAuLiBjb2RlLWJsb2NrOjogYwo+ID4+PiArICoKPiA+Pj4gKyAqICAgZG1hX2J1
Zl9tYXBfY2xlYXIoJm1hcCk7Cj4gPj4+ICsgKgo+ID4+PiAgICogVGVzdCBpZiBhIG1hcHBpbmcg
aXMgdmFsaWQgd2l0aCBlaXRoZXIgZG1hX2J1Zl9tYXBfaXNfc2V0KCkgb3IKPiA+Pj4gICAqIGRt
YV9idWZfbWFwX2lzX251bGwoKS4KPiA+Pj4gICAqCj4gPj4+IEBAIC03MywxNyArODksMTkgQEAK
PiA+Pj4gICAqICAgaWYgKGRtYV9idWZfbWFwX2lzX2VxdWFsKCZzeXNfbWFwLCAmaW9fbWFwKSkK
PiA+Pj4gICAqICAgICAgICAgICAvLyBhbHdheXMgZmFsc2UKPiA+Pj4gICAqCj4gPj4+IC0gKiBJ
bnN0YW5jZXMgb2Ygc3RydWN0IGRtYV9idWZfbWFwIGRvIG5vdCBoYXZlIHRvIGJlIGNsZWFuZWQg
dXAsIGJ1dAo+ID4+PiAtICogY2FuIGJlIGNsZWFyZWQgdG8gTlVMTCB3aXRoIGRtYV9idWZfbWFw
X2NsZWFyKCkuIENsZWFyZWQgbWFwcGluZ3MKPiA+Pj4gLSAqIGFsd2F5cyByZWZlciB0byBzeXN0
ZW0gbWVtb3J5Lgo+ID4+PiArICogQSBzZXQgdXAgaW5zdGFuY2Ugb2Ygc3RydWN0IGRtYV9idWZf
bWFwIGNhbiBiZSB1c2VkIHRvIGFjY2VzcyBvciBtYW5pcHVsYXRlCj4gPj4+ICsgKiB0aGUgYnVm
ZmVyIG1lbW9yeS4gRGVwZW5kaW5nIG9uIHRoZSBsb2NhdGlvbiBvZiB0aGUgbWVtb3J5LCB0aGUg
cHJvdmlkZWQKPiA+Pj4gKyAqIGhlbHBlcnMgd2lsbCBwaWNrIHRoZSBjb3JyZWN0IG9wZXJhdGlv
bnMuIERhdGEgY2FuIGJlIGNvcGllZCBpbnRvIHRoZSBtZW1vcnkKPiA+Pj4gKyAqIHdpdGggZG1h
X2J1Zl9tYXBfbWVtY3B5X3RvKCkuIFRoZSBhZGRyZXNzIGNhbiBiZSBtYW5pcHVsYXRlZCB3aXRo
Cj4gPj4+ICsgKiBkbWFfYnVmX21hcF9pbmNyKCkuCj4gPj4+ICAgKgo+ID4+PiAtICogVGhlIHR5
cGUgOmM6dHlwZTpgc3RydWN0IGRtYV9idWZfbWFwIDxkbWFfYnVmX21hcD5gIGFuZCBpdHMgaGVs
cGVycyBhcmUKPiA+Pj4gLSAqIGFjdHVhbGx5IGluZGVwZW5kZW50IGZyb20gdGhlIGRtYS1idWYg
aW5mcmFzdHJ1Y3R1cmUuIFdoZW4gc2hhcmluZyBidWZmZXJzCj4gPj4+IC0gKiBhbW9uZyBkZXZp
Y2VzLCBkcml2ZXJzIGhhdmUgdG8ga25vdyB0aGUgbG9jYXRpb24gb2YgdGhlIG1lbW9yeSB0byBh
Y2Nlc3MKPiA+Pj4gLSAqIHRoZSBidWZmZXJzIGluIGEgc2FmZSB3YXkuIDpjOnR5cGU6YHN0cnVj
dCBkbWFfYnVmX21hcCA8ZG1hX2J1Zl9tYXA+YAo+ID4+PiAtICogc29sdmVzIHRoaXMgcHJvYmxl
bSBmb3IgZG1hLWJ1ZiBhbmQgaXRzIHVzZXJzLiBJZiBvdGhlciBkcml2ZXJzIG9yCj4gPj4+IC0g
KiBzdWItc3lzdGVtcyByZXF1aXJlIHNpbWlsYXIgZnVuY3Rpb25hbGl0eSwgdGhlIHR5cGUgY291
bGQgYmUgZ2VuZXJhbGl6ZWQKPiA+Pj4gLSAqIGFuZCBtb3ZlZCB0byBhIG1vcmUgcHJvbWluZW50
IGhlYWRlciBmaWxlLgo+ID4+PiArICogLi4gY29kZS1ibG9jazo6IGMKPiA+Pj4gKyAqCj4gPj4+
ICsgKiAgIGNvbnN0IHZvaWQgKnNyYyA9IC4uLjsgLy8gc291cmNlIGJ1ZmZlcgo+ID4+PiArICog
ICBzaXplX3QgbGVuID0gLi4uOyAvLyBsZW5ndGggb2Ygc3JjCj4gPj4+ICsgKgo+ID4+PiArICog
ICBkbWFfYnVmX21hcF9tZW1jcHlfdG8oJm1hcCwgc3JjLCBsZW4pOwo+ID4+PiArICogICBkbWFf
YnVmX21hcF9pbmNyKCZtYXAsIGxlbik7IC8vIGdvIHRvIGZpcnN0IGJ5dGUgYWZ0ZXIgdGhlIG1l
bWNweQo+ID4+PiAgICovCj4gPj4+Cj4gPj4+ICAvKioKPiA+Pj4gQEAgLTIxMCw0ICsyMjgsMzgg
QEAgc3RhdGljIGlubGluZSB2b2lkIGRtYV9idWZfbWFwX2NsZWFyKHN0cnVjdCBkbWFfYnVmX21h
cCAqbWFwKQo+ID4+PiAgICAgICB9Cj4gPj4+ICB9Cj4gPj4+Cj4gPj4+ICsvKioKPiA+Pj4gKyAq
IGRtYV9idWZfbWFwX21lbWNweV90byAtIE1lbWNweSBpbnRvIGRtYS1idWYgbWFwcGluZwo+ID4+
PiArICogQGRzdDogICAgIFRoZSBkbWEtYnVmIG1hcHBpbmcgc3RydWN0dXJlCj4gPj4+ICsgKiBA
c3JjOiAgICAgVGhlIHNvdXJjZSBidWZmZXIKPiA+Pj4gKyAqIEBsZW46ICAgICBUaGUgbnVtYmVy
IG9mIGJ5dGUgaW4gc3JjCj4gPj4+ICsgKgo+ID4+PiArICogQ29waWVzIGRhdGEgaW50byBhIGRt
YS1idWYgbWFwcGluZy4gVGhlIHNvdXJjZSBidWZmZXIgaXMgaW4gc3lzdGVtCj4gPj4+ICsgKiBt
ZW1vcnkuIERlcGVuZGluZyBvbiB0aGUgYnVmZmVyJ3MgbG9jYXRpb24sIHRoZSBoZWxwZXIgcGlj
a3MgdGhlIGNvcnJlY3QKPiA+Pj4gKyAqIG1ldGhvZCBvZiBhY2Nlc3NpbmcgdGhlIG1lbW9yeS4K
PiA+Pj4gKyAqLwo+ID4+PiArc3RhdGljIGlubGluZSB2b2lkIGRtYV9idWZfbWFwX21lbWNweV90
byhzdHJ1Y3QgZG1hX2J1Zl9tYXAgKmRzdCwgY29uc3Qgdm9pZCAqc3JjLCBzaXplX3QgbGVuKQo+
ID4+PiArewo+ID4+PiArICAgICBpZiAoZHN0LT5pc19pb21lbSkKPiA+Pj4gKyAgICAgICAgICAg
ICBtZW1jcHlfdG9pbyhkc3QtPnZhZGRyX2lvbWVtLCBzcmMsIGxlbik7Cj4gPj4+ICsgICAgIGVs
c2UKPiA+Pj4gKyAgICAgICAgICAgICBtZW1jcHkoZHN0LT52YWRkciwgc3JjLCBsZW4pOwo+ID4+
PiArfQo+ID4+PiArCj4gPj4+ICsvKioKPiA+Pj4gKyAqIGRtYV9idWZfbWFwX2luY3IgLSBJbmNy
ZW1lbnRzIHRoZSBhZGRyZXNzIHN0b3JlZCBpbiBhIGRtYS1idWYgbWFwcGluZwo+ID4+PiArICog
QG1hcDogICAgIFRoZSBkbWEtYnVmIG1hcHBpbmcgc3RydWN0dXJlCj4gPj4+ICsgKiBAaW5jcjog
ICAgVGhlIG51bWJlciBvZiBieXRlcyB0byBpbmNyZW1lbnQKPiA+Pj4gKyAqCj4gPj4+ICsgKiBJ
bmNyZW1lbnRzIHRoZSBhZGRyZXNzIHN0b3JlZCBpbiBhIGRtYS1idWYgbWFwcGluZy4gRGVwZW5k
aW5nIG9uIHRoZQo+ID4+PiArICogYnVmZmVyJ3MgbG9jYXRpb24sIHRoZSBjb3JyZWN0IHZhbHVl
IHdpbGwgYmUgdXBkYXRlZC4KPiA+Pj4gKyAqLwo+ID4+PiArc3RhdGljIGlubGluZSB2b2lkIGRt
YV9idWZfbWFwX2luY3Ioc3RydWN0IGRtYV9idWZfbWFwICptYXAsIHNpemVfdCBpbmNyKQo+ID4+
PiArewo+ID4+PiArICAgICBpZiAobWFwLT5pc19pb21lbSkKPiA+Pj4gKyAgICAgICAgICAgICBt
YXAtPnZhZGRyX2lvbWVtICs9IGluY3I7Cj4gPj4+ICsgICAgIGVsc2UKPiA+Pj4gKyAgICAgICAg
ICAgICBtYXAtPnZhZGRyICs9IGluY3I7Cj4gPj4+ICt9Cj4gPj4+ICsKPiA+Pj4gICNlbmRpZiAv
KiBfX0RNQV9CVUZfTUFQX0hfXyAqLwo+ID4+PiAtLQo+ID4+PiAyLjI4LjAKPiA+Cj4gPiBBc2lk
ZSBmcm9tIHRoZSBkZXRhaWxzIEkgdGhpbmsgbG9va3MgYWxsIHJlYXNvbmFibGUuCj4gPiAtRGFu
aWVsCj4gPgo+Cj4gLS0KPiBUaG9tYXMgWmltbWVybWFubgo+IEdyYXBoaWNzIERyaXZlciBEZXZl
bG9wZXIKPiBTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKPiBNYXhmZWxkc3Ry
LiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKPiAoSFJCIDM2ODA5LCBBRyBOw7xybmJlcmcp
Cj4gR2VzY2jDpGZ0c2bDvGhyZXI6IEZlbGl4IEltZW5kw7ZyZmZlcgo+CgoKLS0gCkRhbmllbCBW
ZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZm
d2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bAo=
