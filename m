Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB4B2960A6
	for <lists+spice-devel@lfdr.de>; Thu, 22 Oct 2020 16:06:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F98B6F580;
	Thu, 22 Oct 2020 14:06:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E9436F552;
 Thu, 22 Oct 2020 08:38:00 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 0C486B00D;
 Thu, 22 Oct 2020 08:37:59 +0000 (UTC)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20201020122046.31167-1-tzimmermann@suse.de>
 <20201020122046.31167-11-tzimmermann@suse.de>
 <20201022080534.GT401619@phenom.ffwll.local>
From: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <794e6ab4-041b-55f9-e95e-55ef0526edd5@suse.de>
Date: Thu, 22 Oct 2020 10:37:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201022080534.GT401619@phenom.ffwll.local>
Content-Language: en-US
X-Mailman-Approved-At: Thu, 22 Oct 2020 14:06:01 +0000
Subject: Re: [Spice-devel] [PATCH v5 10/10] drm/fb_helper: Support
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
Cc: luben.tuikov@amd.com, heiko@sntech.de, airlied@linux.ie,
 nouveau@lists.freedesktop.org, linus.walleij@linaro.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 melissa.srw@gmail.com, eric@anholt.net, ray.huang@amd.com, kraxel@redhat.com,
 sam@ravnborg.org, sumit.semwal@linaro.org, emil.velikov@collabora.com,
 robh@kernel.org, linux-samsung-soc@vger.kernel.org, jy0922.shim@samsung.com,
 lima@lists.freedesktop.org, oleksandr_andrushchenko@epam.com, krzk@kernel.org,
 steven.price@arm.com, linux-rockchip@lists.infradead.org, kgene@kernel.org,
 alyssa.rosenzweig@collabora.com, linux+etnaviv@armlinux.org.uk,
 spice-devel@lists.freedesktop.org, bskeggs@redhat.com,
 maarten.lankhorst@linux.intel.com, etnaviv@lists.freedesktop.org,
 mripard@kernel.org, inki.dae@samsung.com, hdegoede@redhat.com,
 christian.gmeiner@gmail.com, xen-devel@lists.xenproject.org,
 virtualization@lists.linux-foundation.org, sean@poorly.run, apaneers@amd.com,
 linux-arm-kernel@lists.infradead.org, linaro-mm-sig@lists.linaro.org,
 amd-gfx@lists.freedesktop.org, tomeu.vizoso@collabora.com,
 sw0312.kim@samsung.com, hjc@rock-chips.com, kyungmin.park@samsung.com,
 miaoqinglang@huawei.com, yuq825@gmail.com, alexander.deucher@amd.com,
 linux-media@vger.kernel.org, christian.koenig@amd.com, l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkKCk9uIDIyLjEwLjIwIDEwOjA1LCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IE9uIFR1ZSwgT2N0
IDIwLCAyMDIwIGF0IDAyOjIwOjQ2UE0gKzAyMDAsIFRob21hcyBaaW1tZXJtYW5uIHdyb3RlOgo+
PiBBdCBsZWFzdCBzcGFyYzY0IHJlcXVpcmVzIEkvTy1zcGVjaWZpYyBhY2Nlc3MgdG8gZnJhbWVi
dWZmZXJzLiBUaGlzCj4+IHBhdGNoIHVwZGF0ZXMgdGhlIGZiZGV2IGNvbnNvbGUgYWNjb3JkaW5n
bHkuCj4+Cj4+IEZvciBkcml2ZXJzIHdpdGggZGlyZWN0IGFjY2VzcyB0byB0aGUgZnJhbWVidWZm
ZXIgbWVtb3J5LCB0aGUgY2FsbGJhY2sKPj4gZnVuY3Rpb25zIGluIHN0cnVjdCBmYl9vcHMgdGVz
dCBmb3IgdGhlIHR5cGUgb2YgbWVtb3J5IGFuZCBjYWxsIHRoZSByc3AKPj4gZmJfc3lzXyBvZiBm
Yl9jZmJfIGZ1bmN0aW9ucy4gUmVhZCBhbmQgd3JpdGUgb3BlcmF0aW9ucyBhcmUgaW1wbGVtZW50
ZWQKPj4gaW50ZXJuYWxseSBieSBEUk0ncyBmYmRldiBoZWxwZXIuCj4+Cj4+IEZvciBkcml2ZXJz
IHRoYXQgZW1wbG95IGEgc2hhZG93IGJ1ZmZlciwgZmJkZXYncyBibGl0IGZ1bmN0aW9uIHJldHJp
ZXZlcwo+PiB0aGUgZnJhbWVidWZmZXIgYWRkcmVzcyBhcyBzdHJ1Y3QgZG1hX2J1Zl9tYXAsIGFu
ZCB1c2VzIGRtYV9idWZfbWFwCj4+IGludGVyZmFjZXMgdG8gYWNjZXNzIHRoZSBidWZmZXIuCj4+
Cj4+IFRoZSBib2NocyBkcml2ZXIgb24gc3BhcmM2NCB1c2VzIGEgd29ya2Fyb3VuZCB0byBmbGFn
IHRoZSBmcmFtZWJ1ZmZlciBhcwo+PiBJL08gbWVtb3J5IGFuZCBhdm9pZCBhIEhXIGV4Y2VwdGlv
bi4gV2l0aCB0aGUgaW50cm9kdWN0aW9uIG9mIHN0cnVjdAo+PiBkbWFfYnVmX21hcCwgdGhpcyBp
cyBub3QgcmVxdWlyZWQgYW55IGxvbmdlci4gVGhlIHBhdGNoIHJlbW92ZXMgdGhlIHJzcAo+PiBj
b2RlIGZyb20gYm90aCwgYm9jaHMgYW5kIGZiZGV2Lgo+Pgo+PiB2NToKPj4gCSogaW1wbGVtZW50
IGZiX3JlYWQvZmJfd3JpdGUgaW50ZXJuYWxseSAoRGFuaWVsLCBTYW0pCj4+IHY0Ogo+PiAJKiBt
b3ZlIGRtYV9idWZfbWFwIGNoYW5nZXMgaW50byBzZXBhcmF0ZSBwYXRjaCAoRGFuaWVsKQo+PiAJ
KiBUT0RPIGxpc3Q6IGNvbW1lbnQgb24gZmJkZXYgdXBkYXRlcyAoRGFuaWVsKQo+Pgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KPj4gVGVz
dGVkLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+Cj4+IC0tLQo+PiAgRG9jdW1l
bnRhdGlvbi9ncHUvdG9kby5yc3QgICAgICAgIHwgIDE5ICsrLQo+PiAgZHJpdmVycy9ncHUvZHJt
L2JvY2hzL2JvY2hzX2ttcy5jIHwgICAxIC0KPj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fZmJfaGVs
cGVyLmMgICB8IDIyNyArKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0KPj4gIGluY2x1ZGUv
ZHJtL2RybV9tb2RlX2NvbmZpZy5oICAgICB8ICAxMiAtLQo+PiAgNCBmaWxlcyBjaGFuZ2VkLCAy
MzAgaW5zZXJ0aW9ucygrKSwgMjkgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2dwdS90b2RvLnJzdCBiL0RvY3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0Cj4+IGlu
ZGV4IDdlNmZjM2MwNGFkZC4uNjM4YjdmNzA0MzM5IDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2dwdS90b2RvLnJzdAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdAo+PiBA
QCAtMTk3LDEzICsxOTcsMjggQEAgQ29udmVydCBkcml2ZXJzIHRvIHVzZSBkcm1fZmJkZXZfZ2Vu
ZXJpY19zZXR1cCgpCj4+ICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPj4gIAo+PiAgTW9zdCBkcml2ZXJzIGNhbiB1c2UgZHJtX2ZiZGV2X2dlbmVyaWNf
c2V0dXAoKS4gRHJpdmVyIGhhdmUgdG8gaW1wbGVtZW50Cj4+IC1hdG9taWMgbW9kZXNldHRpbmcg
YW5kIEdFTSB2bWFwIHN1cHBvcnQuIEN1cnJlbnQgZ2VuZXJpYyBmYmRldiBlbXVsYXRpb24KPj4g
LWV4cGVjdHMgdGhlIGZyYW1lYnVmZmVyIGluIHN5c3RlbSBtZW1vcnkgKG9yIHN5c3RlbS1saWtl
IG1lbW9yeSkuCj4+ICthdG9taWMgbW9kZXNldHRpbmcgYW5kIEdFTSB2bWFwIHN1cHBvcnQuIEhp
c3RvcmljYWxseSwgZ2VuZXJpYyBmYmRldiBlbXVsYXRpb24KPj4gK2V4cGVjdGVkIHRoZSBmcmFt
ZWJ1ZmZlciBpbiBzeXN0ZW0gbWVtb3J5IG9yIHN5c3RlbS1saWtlIG1lbW9yeS4gQnkgZW1wbG95
aW5nCj4+ICtzdHJ1Y3QgZG1hX2J1Zl9tYXAsIGRyaXZlcnMgd2l0aCBmcmFtYnVmZmVycyBpbiBJ
L08gbWVtb3J5IGNhbiBiZSBzdXBwb3J0ZWQKPj4gK2FzIHdlbGwuCj4+ICAKPj4gIENvbnRhY3Q6
IE1haW50YWluZXIgb2YgdGhlIGRyaXZlciB5b3UgcGxhbiB0byBjb252ZXJ0Cj4+ICAKPj4gIExl
dmVsOiBJbnRlcm1lZGlhdGUKPj4gIAo+PiArUmVpbXBsZW1lbnQgZnVuY3Rpb25zIGluIGRybV9m
YmRldl9mYl9vcHMgd2l0aG91dCBmYmRldgo+PiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+PiArCj4+ICtBIG51bWJlciBvZiBjYWxsYmFj
ayBmdW5jdGlvbnMgaW4gZHJtX2ZiZGV2X2ZiX29wcyBjb3VsZCBiZW5lZml0IGZyb20KPj4gK2Jl
aW5nIHJld3JpdHRlbiB3aXRob3V0IGRlcGVuZGVuY2llcyBvbiB0aGUgZmJkZXYgbW9kdWxlLiBT
b21lIG9mIHRoZQo+PiAraGVscGVycyBjb3VsZCBmdXJ0aGVyIGJlbmVmaXQgZnJvbSB1c2luZyBz
dHJ1Y3QgZG1hX2J1Zl9tYXAgaW5zdGVhZCBvZgo+PiArcmF3IHBvaW50ZXJzLgo+PiArCj4+ICtD
b250YWN0OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4sIERhbmllbCBW
ZXR0ZXIKPj4gKwo+PiArTGV2ZWw6IEFkdmFuY2VkCj4+ICsKPj4gKwo+PiAgZHJtX2ZyYW1lYnVm
ZmVyX2Z1bmNzIGFuZCBkcm1fbW9kZV9jb25maWdfZnVuY3MuZmJfY3JlYXRlIGNsZWFudXAKPj4g
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCj4+ICAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ib2Nocy9ib2No
c19rbXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9ib2Nocy9ib2Noc19rbXMuYwo+PiBpbmRleCAxM2Qw
ZDA0YzQ0NTcuLjg1MzA4MWQxODZkNSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Jv
Y2hzL2JvY2hzX2ttcy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9ib2Nocy9ib2Noc19rbXMu
Ywo+PiBAQCAtMTUxLDcgKzE1MSw2IEBAIGludCBib2Noc19rbXNfaW5pdChzdHJ1Y3QgYm9jaHNf
ZGV2aWNlICpib2NocykKPj4gIAlib2Nocy0+ZGV2LT5tb2RlX2NvbmZpZy5wcmVmZXJyZWRfZGVw
dGggPSAyNDsKPj4gIAlib2Nocy0+ZGV2LT5tb2RlX2NvbmZpZy5wcmVmZXJfc2hhZG93ID0gMDsK
Pj4gIAlib2Nocy0+ZGV2LT5tb2RlX2NvbmZpZy5wcmVmZXJfc2hhZG93X2ZiZGV2ID0gMTsKPj4g
LQlib2Nocy0+ZGV2LT5tb2RlX2NvbmZpZy5mYmRldl91c2VfaW9tZW0gPSB0cnVlOwo+PiAgCWJv
Y2hzLT5kZXYtPm1vZGVfY29uZmlnLnF1aXJrX2FkZGZiX3ByZWZlcl9ob3N0X2J5dGVfb3JkZXIg
PSB0cnVlOwo+PiAgCj4+ICAJYm9jaHMtPmRldi0+bW9kZV9jb25maWcuZnVuY3MgPSAmYm9jaHNf
bW9kZV9mdW5jczsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZmJfaGVscGVy
LmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2ZiX2hlbHBlci5jCj4+IGluZGV4IDYyMTJjZDdjZGUx
ZC4uMWQzMTgwODQxNzc4IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2ZiX2hl
bHBlci5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZmJfaGVscGVyLmMKPj4gQEAgLTM3
MiwyNCArMzcyLDIyIEBAIHN0YXRpYyB2b2lkIGRybV9mYl9oZWxwZXJfcmVzdW1lX3dvcmtlcihz
dHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4+ICB9Cj4+ICAKPj4gIHN0YXRpYyB2b2lkIGRybV9m
Yl9oZWxwZXJfZGlydHlfYmxpdF9yZWFsKHN0cnVjdCBkcm1fZmJfaGVscGVyICpmYl9oZWxwZXIs
Cj4+IC0JCQkJCSAgc3RydWN0IGRybV9jbGlwX3JlY3QgKmNsaXApCj4+ICsJCQkJCSAgc3RydWN0
IGRybV9jbGlwX3JlY3QgKmNsaXAsCj4+ICsJCQkJCSAgc3RydWN0IGRtYV9idWZfbWFwICpkc3Qp
Cj4+ICB7Cj4+ICAJc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIgPSBmYl9oZWxwZXItPmZiOwo+
PiAgCXVuc2lnbmVkIGludCBjcHAgPSBmYi0+Zm9ybWF0LT5jcHBbMF07Cj4+ICAJc2l6ZV90IG9m
ZnNldCA9IGNsaXAtPnkxICogZmItPnBpdGNoZXNbMF0gKyBjbGlwLT54MSAqIGNwcDsKPj4gIAl2
b2lkICpzcmMgPSBmYl9oZWxwZXItPmZiZGV2LT5zY3JlZW5fYnVmZmVyICsgb2Zmc2V0Owo+PiAt
CXZvaWQgKmRzdCA9IGZiX2hlbHBlci0+YnVmZmVyLT5tYXAudmFkZHIgKyBvZmZzZXQ7Cj4+ICAJ
c2l6ZV90IGxlbiA9IChjbGlwLT54MiAtIGNsaXAtPngxKSAqIGNwcDsKPj4gIAl1bnNpZ25lZCBp
bnQgeTsKPj4gIAo+PiAtCWZvciAoeSA9IGNsaXAtPnkxOyB5IDwgY2xpcC0+eTI7IHkrKykgewo+
PiAtCQlpZiAoIWZiX2hlbHBlci0+ZGV2LT5tb2RlX2NvbmZpZy5mYmRldl91c2VfaW9tZW0pCj4+
IC0JCQltZW1jcHkoZHN0LCBzcmMsIGxlbik7Cj4+IC0JCWVsc2UKPj4gLQkJCW1lbWNweV90b2lv
KCh2b2lkIF9faW9tZW0gKilkc3QsIHNyYywgbGVuKTsKPj4gKwlkbWFfYnVmX21hcF9pbmNyKGRz
dCwgb2Zmc2V0KTsgLyogZ28gdG8gZmlyc3QgcGl4ZWwgd2l0aGluIGNsaXAgcmVjdCAqLwo+PiAg
Cj4+ICsJZm9yICh5ID0gY2xpcC0+eTE7IHkgPCBjbGlwLT55MjsgeSsrKSB7Cj4+ICsJCWRtYV9i
dWZfbWFwX21lbWNweV90byhkc3QsIHNyYywgbGVuKTsKPj4gKwkJZG1hX2J1Zl9tYXBfaW5jcihk
c3QsIGZiLT5waXRjaGVzWzBdKTsKPj4gIAkJc3JjICs9IGZiLT5waXRjaGVzWzBdOwo+PiAtCQlk
c3QgKz0gZmItPnBpdGNoZXNbMF07Cj4+ICAJfQo+PiAgfQo+PiAgCj4+IEBAIC00MTcsOCArNDE1
LDkgQEAgc3RhdGljIHZvaWQgZHJtX2ZiX2hlbHBlcl9kaXJ0eV93b3JrKHN0cnVjdCB3b3JrX3N0
cnVjdCAqd29yaykKPj4gIAkJCXJldCA9IGRybV9jbGllbnRfYnVmZmVyX3ZtYXAoaGVscGVyLT5i
dWZmZXIsICZtYXApOwo+PiAgCQkJaWYgKHJldCkKPj4gIAkJCQlyZXR1cm47Cj4+IC0JCQlkcm1f
ZmJfaGVscGVyX2RpcnR5X2JsaXRfcmVhbChoZWxwZXIsICZjbGlwX2NvcHkpOwo+PiArCQkJZHJt
X2ZiX2hlbHBlcl9kaXJ0eV9ibGl0X3JlYWwoaGVscGVyLCAmY2xpcF9jb3B5LCAmbWFwKTsKPj4g
IAkJfQo+PiArCj4+ICAJCWlmIChoZWxwZXItPmZiLT5mdW5jcy0+ZGlydHkpCj4+ICAJCQloZWxw
ZXItPmZiLT5mdW5jcy0+ZGlydHkoaGVscGVyLT5mYiwgTlVMTCwgMCwgMCwKPj4gIAkJCQkJCSAm
Y2xpcF9jb3B5LCAxKTsKPj4gQEAgLTIwMjcsNiArMjAyNiwyMDYgQEAgc3RhdGljIGludCBkcm1f
ZmJkZXZfZmJfbW1hcChzdHJ1Y3QgZmJfaW5mbyAqaW5mbywgc3RydWN0IHZtX2FyZWFfc3RydWN0
ICp2bWEpCj4+ICAJCXJldHVybiAtRU5PREVWOwo+PiAgfQo+PiAgCj4+ICtzdGF0aWMgYm9vbCBk
cm1fZmJkZXZfdXNlX2lvbWVtKHN0cnVjdCBmYl9pbmZvICppbmZvKQo+PiArewo+PiArCXN0cnVj
dCBkcm1fZmJfaGVscGVyICpmYl9oZWxwZXIgPSBpbmZvLT5wYXI7Cj4+ICsJc3RydWN0IGRybV9j
bGllbnRfYnVmZmVyICpidWZmZXIgPSBmYl9oZWxwZXItPmJ1ZmZlcjsKPj4gKwo+PiArCXJldHVy
biAhZHJtX2ZiZGV2X3VzZV9zaGFkb3dfZmIoZmJfaGVscGVyKSAmJiBidWZmZXItPm1hcC5pc19p
b21lbTsKPj4gK30KPj4gKwo+PiArc3RhdGljIHNzaXplX3QgZmJfcmVhZF9zY3JlZW5fYmFzZShz
dHJ1Y3QgZmJfaW5mbyAqaW5mbywgY2hhciBfX3VzZXIgKmJ1Ziwgc2l6ZV90IGNvdW50LCAKPj4g
KwkJCQkgICBsb2ZmX3QgcG9zKQo+PiArewo+PiArCWNvbnN0IGNoYXIgX19pb21lbSAqc3JjID0g
aW5mby0+c2NyZWVuX2Jhc2UgKyBwb3M7Cj4gCj4gTWF5YmUgYSBiaXQgbXVjaCBhIGJpa2VzaGVk
LCBidXQgSSdkIHdyaXRlIHRoaXMgaW4gdGVybXMgb2YgZHJtIG9iamVjdHMsCj4gbGlrZSB0aGUg
ZGlydHlfYmxpdCBmdW5jdGlvbiwgdXNpbmcgdGhlIGRtYV9idWZfbWFwIChpbnN0ZWFkIG9mIHRo
ZQo+IGZiX2luZm8gcGFyYW1ldGVyKS4gQW5kIHRoZW4gaW5zdGVhZCBvZgo+IHNjcmVlbl9iYXNl
IGFuZCBzY3JlZW5fYnVmZmVyIHN1ZmZpeGVzIGdpdmUgdGhlbSBfbWVtIGFuZCBfaW9tZW0gc3Vm
Zml4ZXMuCgpTY3JlZW5fYnVmZmVyIGNhbiBiZSBhIHNoYWRvdyBidWZmZXIuIFVudGlsIHRoZSBi
bGl0IHdvcmtlciAoc2VlCmRybV9mYl9oZWxwZXJfZGlydHlfd29yaygpICkgY29tcGxldGVzLCBp
dCBtaWdodCBiZSBtb3JlIHVwIHRvIGRhdGUgdGhhbgp0aGUgcmVhbCBidWZmZXIgdGhhdCdzIHN0
b3JlZCBpbiB0aGUgY2xpZW50LgoKVGhlIG9yaWduYWwgZmJkZXYgY29kZSBzdXBwb3J0ZWQgYW4g
ZmJfc3luYyBjYWxsYmFjayB0byBzeW5jaHJvbml6ZSB3aXRoCm91dHN0YW5kaW5nIHNjcmVlbiB1
cGRhdGVzIChlLmcuLCBIVyBibGl0IG9wcyksIGJ1dCBmYl9zeW5jIGlzIGp1c3QKb3ZlcmhlYWQg
aGVyZS4gQ29weWluZyBmcm9tIHNjcmVlbl9idWZmZXIgb3Igc2NyZWVuX2Jhc2UgYWx3YXlzIHJl
dHVybnMKdGhlIG1vc3QgdXAtdG8tZGF0ZSBpbWFnZS4KCj4gCj4gU2FtZSBmb3Igd3JpdGUgYmVs
b3cuIE9yIEknbSBub3QgcXVpdGUgdW5kZXJzdGFuZGluZyB3aHkgd2UgZG8gaXQgbGlrZQo+IHRo
aXMgaGVyZSAtIEkgZG9uJ3QgdGhpbmsgdGhpcyBjb2RlIHdpbGwgYmUgdXNlZCBvdXRzaWRlIG9m
IHRoZSBnZW5lcmljCj4gZmJkZXYgY29kZSwgc28gd2UgY2FuIGFsd2F5cyBhc3N1bWUgdGhhdCBk
cm1fZmJfaGVscGVyLT5idWZmZXIgaXMgc2V0IHVwLgoKSXQncyBzaW1pbGFyIGFzIGluIHRoZSBy
ZWFkIGNhc2UuIElmIHdlIHdyaXRlIHRvIHRoZSBjbGllbnQncyBidWZmZXIsIGFuCm91dHN0YW5k
aW5nIGJsaXQgd29ya2VyIGNvdWxkIHdyaXRlIHRoZSBub3ctb3V0ZGF0ZWQgc2hhZG93IGJ1ZmZl
ciBvdmVyCnRoZSB1c2VyJ3MgbmV3bHkgd3JpdHRlbiBmcmFtZWJ1ZmZlciBkYXRhLgoKVGhpbmtp
bmcgYWJvdXQgaXQsIHdlIG1pZ2h0IHdhbnQgdG8gc2NoZWR1bGUgdGhlIGJsaXQgd29ya2VyIGF0
IHRoZSBlbmQKb2YgZWFjaCBmYl93cml0ZSwgc28gdGhhdCB0aGUgZGF0YSBtYWtlcyBpdCBpbnRv
IHRoZSBIVyBidWZmZXIgaW4gdGltZS4KCj4gCj4gVGhlIG90aGVyIHRoaW5nIEkgdGhpbmsgd2Ug
bmVlZCBpcyBzb21lIG1pbmltYWwgdGVzdGNhc2VzIHRvIG1ha2Ugc3VyZS4KPiBUaGUgZmJ0ZXN0
IHRvb2wgdXNlZCB3YXkgYmFjayBzZWVtcyB0byBoYXZlIGRpc2FwcGVhcmVkLCBJIGNvdWxkbid0
IGZpbmQKPiBhIGNvcHkgb2YgdGhlIHNvdXJjZSBhbnl3aGVyZSBhbnltb3JlLgoKQXMgZGlzY3Vz
c2VkIG9uIElSQywgSSdsbCBhZGQgc29tZSB0ZXN0Y2FzZSB0byB0aGUgaWd0IHRlc3QuIEknbGwg
c2hhcmUKdGhlIGxpbmsgaGVyZSB3aGVuIGRvbmUuCgpCZXN0IHJlZ2FyZHMKVGhvbWFzCgo+IAo+
IFdpdGggYWxsIHRoYXQ6IEFja2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZm
d2xsLmNoPgo+IAo+IENoZWVycywgRGFuaWVsCj4gCj4+ICsJc2l6ZV90IGFsbG9jX3NpemUgPSBt
aW4oY291bnQsIFBBR0VfU0laRSk7Cj4+ICsJc3NpemVfdCByZXQgPSAwOwo+PiArCWNoYXIgKnRt
cDsKPj4gKwo+PiArCXRtcCA9IGttYWxsb2MoYWxsb2Nfc2l6ZSwgR0ZQX0tFUk5FTCk7Cj4+ICsJ
aWYgKCF0bXApCj4+ICsJCXJldHVybiAtRU5PTUVNOwo+PiArCj4+ICsJd2hpbGUgKGNvdW50KSB7
Cj4+ICsJCXNpemVfdCBjID0gbWluKGNvdW50LCBhbGxvY19zaXplKTsKPj4gKwo+PiArCQltZW1j
cHlfZnJvbWlvKHRtcCwgc3JjLCBjKTsKPj4gKwkJaWYgKGNvcHlfdG9fdXNlcihidWYsIHRtcCwg
YykpIHsKPj4gKwkJCXJldCA9IC1FRkFVTFQ7Cj4+ICsJCQlicmVhazsKPj4gKwkJfQo+PiArCj4+
ICsJCXNyYyArPSBjOwo+PiArCQlidWYgKz0gYzsKPj4gKwkJcmV0ICs9IGM7Cj4+ICsJCWNvdW50
IC09IGM7Cj4+ICsJfQo+PiArCj4+ICsJa2ZyZWUodG1wKTsKPj4gKwo+PiArCXJldHVybiByZXQ7
Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBzc2l6ZV90IGZiX3JlYWRfc2NyZWVuX2J1ZmZlcihzdHJ1
Y3QgZmJfaW5mbyAqaW5mbywgY2hhciBfX3VzZXIgKmJ1Ziwgc2l6ZV90IGNvdW50LAo+PiArCQkJ
CSAgICAgbG9mZl90IHBvcykKPj4gK3sKPj4gKwljb25zdCBjaGFyICpzcmMgPSBpbmZvLT5zY3Jl
ZW5fYnVmZmVyICsgcG9zOwo+PiArCj4+ICsJaWYgKGNvcHlfdG9fdXNlcihidWYsIHNyYywgY291
bnQpKQo+PiArCQlyZXR1cm4gLUVGQVVMVDsKPj4gKwo+PiArCXJldHVybiBjb3VudDsKPj4gK30K
Pj4gKwo+PiArc3RhdGljIHNzaXplX3QgZHJtX2ZiZGV2X2ZiX3JlYWQoc3RydWN0IGZiX2luZm8g
KmluZm8sIGNoYXIgX191c2VyICpidWYsCj4+ICsJCQkJIHNpemVfdCBjb3VudCwgbG9mZl90ICpw
cG9zKQo+PiArewo+PiArCWxvZmZfdCBwb3MgPSAqcHBvczsKPj4gKwlzaXplX3QgdG90YWxfc2l6
ZTsKPj4gKwlzc2l6ZV90IHJldDsKPj4gKwo+PiArCWlmIChpbmZvLT5zdGF0ZSAhPSBGQklORk9f
U1RBVEVfUlVOTklORykKPj4gKwkJcmV0dXJuIC1FUEVSTTsKPj4gKwo+PiArCWlmIChpbmZvLT5z
Y3JlZW5fc2l6ZSkKPj4gKwkJdG90YWxfc2l6ZSA9IGluZm8tPnNjcmVlbl9zaXplOwo+PiArCWVs
c2UKPj4gKwkJdG90YWxfc2l6ZSA9IGluZm8tPmZpeC5zbWVtX2xlbjsKPj4gKwo+PiArCWlmIChw
b3MgPj0gdG90YWxfc2l6ZSkKPj4gKwkJcmV0dXJuIDA7Cj4+ICsJaWYgKGNvdW50ID49IHRvdGFs
X3NpemUpCj4+ICsJCWNvdW50ID0gdG90YWxfc2l6ZTsKPj4gKwlpZiAodG90YWxfc2l6ZSAtIGNv
dW50IDwgcG9zKQo+PiArCQljb3VudCA9IHRvdGFsX3NpemUgLSBwb3M7Cj4+ICsKPj4gKwlpZiAo
ZHJtX2ZiZGV2X3VzZV9pb21lbShpbmZvKSkKPj4gKwkJcmV0ID0gZmJfcmVhZF9zY3JlZW5fYmFz
ZShpbmZvLCBidWYsIGNvdW50LCBwb3MpOwo+PiArCWVsc2UKPj4gKwkJcmV0ID0gZmJfcmVhZF9z
Y3JlZW5fYnVmZmVyKGluZm8sIGJ1ZiwgY291bnQsIHBvcyk7Cj4+ICsKPj4gKwlpZiAocmV0ID4g
MCkKPj4gKwkJKnBwb3MgPSByZXQ7Cj4+ICsKPj4gKwlyZXR1cm4gcmV0Owo+PiArfQo+PiArCj4+
ICtzdGF0aWMgc3NpemVfdCBmYl93cml0ZV9zY3JlZW5fYmFzZShzdHJ1Y3QgZmJfaW5mbyAqaW5m
bywgY29uc3QgY2hhciBfX3VzZXIgKmJ1Ziwgc2l6ZV90IGNvdW50LAo+PiArCQkJCSAgICBsb2Zm
X3QgcG9zKQo+PiArewo+PiArCWNoYXIgX19pb21lbSAqZHN0ID0gaW5mby0+c2NyZWVuX2Jhc2Ug
KyBwb3M7Cj4+ICsJc2l6ZV90IGFsbG9jX3NpemUgPSBtaW4oY291bnQsIFBBR0VfU0laRSk7Cj4+
ICsJc3NpemVfdCByZXQgPSAwOwo+PiArCXU4ICp0bXA7Cj4+ICsKPj4gKwl0bXAgPSBrbWFsbG9j
KGFsbG9jX3NpemUsIEdGUF9LRVJORUwpOwo+PiArCWlmICghdG1wKQo+PiArCQlyZXR1cm4gLUVO
T01FTTsKPj4gKwo+PiArCXdoaWxlIChjb3VudCkgewo+PiArCQlzaXplX3QgYyA9IG1pbihjb3Vu
dCwgYWxsb2Nfc2l6ZSk7Cj4+ICsKPj4gKwkJaWYgKGNvcHlfZnJvbV91c2VyKHRtcCwgYnVmLCBj
KSkgewo+PiArCQkJcmV0ID0gLUVGQVVMVDsKPj4gKwkJCWJyZWFrOwo+PiArCQl9Cj4+ICsJCW1l
bWNweV90b2lvKGRzdCwgdG1wLCBjKTsKPj4gKwo+PiArCQlkc3QgKz0gYzsKPj4gKwkJYnVmICs9
IGM7Cj4+ICsJCXJldCArPSBjOwo+PiArCQljb3VudCAtPSBjOwo+PiArCX0KPj4gKwo+PiArCWtm
cmVlKHRtcCk7Cj4+ICsKPj4gKwlyZXR1cm4gcmV0Owo+PiArfQo+PiArCj4+ICtzdGF0aWMgc3Np
emVfdCBmYl93cml0ZV9zY3JlZW5fYnVmZmVyKHN0cnVjdCBmYl9pbmZvICppbmZvLCBjb25zdCBj
aGFyIF9fdXNlciAqYnVmLCBzaXplX3QgY291bnQsCj4+ICsJCQkJICAgICAgbG9mZl90IHBvcykK
Pj4gK3sKPj4gKwljaGFyICpkc3QgPSBpbmZvLT5zY3JlZW5fYnVmZmVyICsgcG9zOwo+PiArCj4+
ICsJaWYgKGNvcHlfZnJvbV91c2VyKGRzdCwgYnVmLCBjb3VudCkpCj4+ICsJCXJldHVybiAtRUZB
VUxUOwo+PiArCj4+ICsJcmV0dXJuIGNvdW50Owo+PiArfQo+PiArCj4+ICtzdGF0aWMgc3NpemVf
dCBkcm1fZmJkZXZfZmJfd3JpdGUoc3RydWN0IGZiX2luZm8gKmluZm8sIGNvbnN0IGNoYXIgX191
c2VyICpidWYsCj4+ICsJCQkJICBzaXplX3QgY291bnQsIGxvZmZfdCAqcHBvcykKPj4gK3sKPj4g
Kwlsb2ZmX3QgcG9zID0gKnBwb3M7Cj4+ICsJc2l6ZV90IHRvdGFsX3NpemU7Cj4+ICsJc3NpemVf
dCByZXQ7Cj4+ICsJaW50IGVycjsKPj4gKwo+PiArCWlmIChpbmZvLT5zdGF0ZSAhPSBGQklORk9f
U1RBVEVfUlVOTklORykKPj4gKwkJcmV0dXJuIC1FUEVSTTsKPj4gKwo+PiArCWlmIChpbmZvLT5z
Y3JlZW5fc2l6ZSkKPj4gKwkJdG90YWxfc2l6ZSA9IGluZm8tPnNjcmVlbl9zaXplOwo+PiArCWVs
c2UKPj4gKwkJdG90YWxfc2l6ZSA9IGluZm8tPmZpeC5zbWVtX2xlbjsKPj4gKwo+PiArCWlmIChw
b3MgPiB0b3RhbF9zaXplKQo+PiArCQlyZXR1cm4gLUVGQklHOwo+PiArCWlmIChjb3VudCA+IHRv
dGFsX3NpemUpIHsKPj4gKwkJZXJyID0gLUVGQklHOwo+PiArCQljb3VudCA9IHRvdGFsX3NpemU7
Cj4+ICsJfQo+PiArCWlmICh0b3RhbF9zaXplIC0gY291bnQgPCBwb3MpIHsKPj4gKwkJaWYgKCFl
cnIpCj4+ICsJCQllcnIgPSAtRU5PU1BDOwo+PiArCQljb3VudCA9IHRvdGFsX3NpemUgLSBwb3M7
Cj4+ICsJfQo+PiArCj4+ICsJLyoKPj4gKwkgKiBDb3B5IHRvIGZyYW1lYnVmZmVyIGV2ZW4gaWYg
d2UgYWxyZWFkeSBsb2dnZWQgYW4gZXJyb3IuIEVtdWxhdGVzCj4+ICsJICogdGhlIGJlaGF2aW9y
IG9mIHRoZSBvcmlnaW5hbCBmYmRldiBpbXBsZW1lbnRhdGlvbi4KPj4gKwkgKi8KPj4gKwlpZiAo
ZHJtX2ZiZGV2X3VzZV9pb21lbShpbmZvKSkKPj4gKwkJcmV0ID0gZmJfd3JpdGVfc2NyZWVuX2Jh
c2UoaW5mbywgYnVmLCBjb3VudCwgcG9zKTsKPj4gKwllbHNlCj4+ICsJCXJldCA9IGZiX3dyaXRl
X3NjcmVlbl9idWZmZXIoaW5mbywgYnVmLCBjb3VudCwgcG9zKTsKPj4gKwo+PiArCWlmIChyZXQg
PiAwKQo+PiArCQkqcHBvcyA9IHJldDsKPj4gKwo+PiArCWlmIChlcnIpCj4+ICsJCXJldHVybiBl
cnI7Cj4+ICsKPj4gKwlyZXR1cm4gcmV0Owo+PiArfQo+PiArCj4+ICtzdGF0aWMgdm9pZCBkcm1f
ZmJkZXZfZmJfZmlsbHJlY3Qoc3RydWN0IGZiX2luZm8gKmluZm8sCj4+ICsJCQkJICBjb25zdCBz
dHJ1Y3QgZmJfZmlsbHJlY3QgKnJlY3QpCj4+ICt7Cj4+ICsJaWYgKGRybV9mYmRldl91c2VfaW9t
ZW0oaW5mbykpCj4+ICsJCWRybV9mYl9oZWxwZXJfY2ZiX2ZpbGxyZWN0KGluZm8sIHJlY3QpOwo+
PiArCWVsc2UKPj4gKwkJZHJtX2ZiX2hlbHBlcl9zeXNfZmlsbHJlY3QoaW5mbywgcmVjdCk7Cj4+
ICt9Cj4+ICsKPj4gK3N0YXRpYyB2b2lkIGRybV9mYmRldl9mYl9jb3B5YXJlYShzdHJ1Y3QgZmJf
aW5mbyAqaW5mbywKPj4gKwkJCQkgIGNvbnN0IHN0cnVjdCBmYl9jb3B5YXJlYSAqYXJlYSkKPj4g
K3sKPj4gKwlpZiAoZHJtX2ZiZGV2X3VzZV9pb21lbShpbmZvKSkKPj4gKwkJZHJtX2ZiX2hlbHBl
cl9jZmJfY29weWFyZWEoaW5mbywgYXJlYSk7Cj4+ICsJZWxzZQo+PiArCQlkcm1fZmJfaGVscGVy
X3N5c19jb3B5YXJlYShpbmZvLCBhcmVhKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIHZvaWQgZHJt
X2ZiZGV2X2ZiX2ltYWdlYmxpdChzdHJ1Y3QgZmJfaW5mbyAqaW5mbywKPj4gKwkJCQkgICBjb25z
dCBzdHJ1Y3QgZmJfaW1hZ2UgKmltYWdlKQo+PiArewo+PiArCWlmIChkcm1fZmJkZXZfdXNlX2lv
bWVtKGluZm8pKQo+PiArCQlkcm1fZmJfaGVscGVyX2NmYl9pbWFnZWJsaXQoaW5mbywgaW1hZ2Up
Owo+PiArCWVsc2UKPj4gKwkJZHJtX2ZiX2hlbHBlcl9zeXNfaW1hZ2VibGl0KGluZm8sIGltYWdl
KTsKPj4gK30KPj4gKwo+PiAgc3RhdGljIGNvbnN0IHN0cnVjdCBmYl9vcHMgZHJtX2ZiZGV2X2Zi
X29wcyA9IHsKPj4gIAkub3duZXIJCT0gVEhJU19NT0RVTEUsCj4+ICAJRFJNX0ZCX0hFTFBFUl9E
RUZBVUxUX09QUywKPj4gQEAgLTIwMzQsMTEgKzIyMzMsMTEgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBmYl9vcHMgZHJtX2ZiZGV2X2ZiX29wcyA9IHsKPj4gIAkuZmJfcmVsZWFzZQk9IGRybV9mYmRl
dl9mYl9yZWxlYXNlLAo+PiAgCS5mYl9kZXN0cm95CT0gZHJtX2ZiZGV2X2ZiX2Rlc3Ryb3ksCj4+
ICAJLmZiX21tYXAJPSBkcm1fZmJkZXZfZmJfbW1hcCwKPj4gLQkuZmJfcmVhZAk9IGRybV9mYl9o
ZWxwZXJfc3lzX3JlYWQsCj4+IC0JLmZiX3dyaXRlCT0gZHJtX2ZiX2hlbHBlcl9zeXNfd3JpdGUs
Cj4+IC0JLmZiX2ZpbGxyZWN0CT0gZHJtX2ZiX2hlbHBlcl9zeXNfZmlsbHJlY3QsCj4+IC0JLmZi
X2NvcHlhcmVhCT0gZHJtX2ZiX2hlbHBlcl9zeXNfY29weWFyZWEsCj4+IC0JLmZiX2ltYWdlYmxp
dAk9IGRybV9mYl9oZWxwZXJfc3lzX2ltYWdlYmxpdCwKPj4gKwkuZmJfcmVhZAk9IGRybV9mYmRl
dl9mYl9yZWFkLAo+PiArCS5mYl93cml0ZQk9IGRybV9mYmRldl9mYl93cml0ZSwKPj4gKwkuZmJf
ZmlsbHJlY3QJPSBkcm1fZmJkZXZfZmJfZmlsbHJlY3QsCj4+ICsJLmZiX2NvcHlhcmVhCT0gZHJt
X2ZiZGV2X2ZiX2NvcHlhcmVhLAo+PiArCS5mYl9pbWFnZWJsaXQJPSBkcm1fZmJkZXZfZmJfaW1h
Z2VibGl0LAo+PiAgfTsKPj4gIAo+PiAgc3RhdGljIHN0cnVjdCBmYl9kZWZlcnJlZF9pbyBkcm1f
ZmJkZXZfZGVmaW8gPSB7Cj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fbW9kZV9jb25m
aWcuaCBiL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oCj4+IGluZGV4IDVmZmJiNGVkNWIz
NS4uYWI0MjRkZGQ3NjY1IDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fbW9kZV9jb25m
aWcuaAo+PiArKysgYi9pbmNsdWRlL2RybS9kcm1fbW9kZV9jb25maWcuaAo+PiBAQCAtODc3LDE4
ICs4NzcsNiBAQCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnIHsKPj4gIAkgKi8KPj4gIAlib29sIHBy
ZWZlcl9zaGFkb3dfZmJkZXY7Cj4+ICAKPj4gLQkvKioKPj4gLQkgKiBAZmJkZXZfdXNlX2lvbWVt
Ogo+PiAtCSAqCj4+IC0JICogU2V0IHRvIHRydWUgaWYgZnJhbWVidWZmZXIgcmVzaWRlIGluIGlv
bWVtLgo+PiAtCSAqIFdoZW4gc2V0IHRvIHRydWUgbWVtY3B5X3RvaW8oKSBpcyB1c2VkIHdoZW4g
Y29weWluZyB0aGUgZnJhbWVidWZmZXIgaW4KPj4gLQkgKiBkcm1fZmJfaGVscGVyLmRybV9mYl9o
ZWxwZXJfZGlydHlfYmxpdF9yZWFsKCkuCj4+IC0JICoKPj4gLQkgKiBGSVhNRTogVGhpcyBzaG91
bGQgYmUgcmVwbGFjZWQgd2l0aCBhIHBlci1tYXBwaW5nIGlzX2lvbWVtCj4+IC0JICogZmxhZyAo
bGlrZSB0dG0gZG9lcyksIGFuZCB0aGVuIHVzZWQgZXZlcnl3aGVyZSBpbiBmYmRldiBjb2RlLgo+
PiAtCSAqLwo+PiAtCWJvb2wgZmJkZXZfdXNlX2lvbWVtOwo+PiAtCj4+ICAJLyoqCj4+ICAJICog
QHF1aXJrX2FkZGZiX3ByZWZlcl94YmdyXzMwYnBwOgo+PiAgCSAqCj4+IC0tIAo+PiAyLjI4LjAK
Pj4KPiAKCi0tIApUaG9tYXMgWmltbWVybWFubgpHcmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVyClNV
U0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBO
w7xybmJlcmcsIEdlcm1hbnkKKEhSQiAzNjgwOSwgQUcgTsO8cm5iZXJnKQpHZXNjaMOkZnRzZsO8
aHJlcjogRmVsaXggSW1lbmTDtnJmZmVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbAo=
