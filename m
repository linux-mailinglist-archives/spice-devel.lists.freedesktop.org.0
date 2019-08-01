Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8297DF75
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 17:52:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 195506E708;
	Thu,  1 Aug 2019 15:51:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 856536E708
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:51:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 21C1D317F325
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:51:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1630B600D1
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:51:57 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0C3984A460;
 Thu,  1 Aug 2019 15:51:57 +0000 (UTC)
Date: Thu, 1 Aug 2019 11:51:56 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <403036161.4205062.1564674716985.JavaMail.zimbra@redhat.com>
In-Reply-To: <299479209.4203325.1564673988804.JavaMail.zimbra@redhat.com>
References: <20190801150119.29179-1-ssheribe@redhat.com>
 <20190801150119.29179-3-ssheribe@redhat.com>
 <299479209.4203325.1564673988804.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.14]
Thread-Topic: gst-plugin: Free input buffer and XImage as soon as possible
Thread-Index: QsjxjGgTGeYdmBOmUz2WddSlNZOYrLas4D0s
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Thu, 01 Aug 2019 15:51:57 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent 3/4] gst-plugin:
 Free input buffer and XImage as soon as possible
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiA+IAo+ID4gLS0tCj4gPiAgc3JjL2dzdC1wbHVnaW4uY3BwIHwgMzEgKysrKysrKysrKysr
KysrKysrKystLS0tLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCsp
LCAxMSBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3NyYy9nc3QtcGx1Z2luLmNw
cCBiL3NyYy9nc3QtcGx1Z2luLmNwcAo+ID4gaW5kZXggMGExZDA0MS4uYzc0MTJjNSAxMDA2NDQK
PiA+IC0tLSBhL3NyYy9nc3QtcGx1Z2luLmNwcAo+ID4gKysrIGIvc3JjL2dzdC1wbHVnaW4uY3Bw
Cj4gPiBAQCAtNjcsNiArNjcsMTUgQEAgc3RydWN0IEdzdFNhbXBsZURlbGV0ZXIgewo+ID4gIAo+
ID4gIHVzaW5nIEdzdFNhbXBsZVVQdHIgPSBzdGQ6OnVuaXF1ZV9wdHI8R3N0U2FtcGxlLCBHc3RT
YW1wbGVEZWxldGVyPjsKPiA+ICAKPiA+ICtzdHJ1Y3QgR3N0QnVmZmVyRGVsZXRlciB7Cj4gPiAr
ICAgIHZvaWQgb3BlcmF0b3IoKShHc3RCdWZmZXIqIHApCj4gPiArICAgIHsKPiA+ICsgICAgICAg
IGdzdF9idWZmZXJfdW5yZWYocCk7Cj4gPiArICAgIH0KPiA+ICt9Owo+ID4gKwo+ID4gK3VzaW5n
IEdzdEJ1ZmZlclVQdHIgPSBzdGQ6OnVuaXF1ZV9wdHI8R3N0QnVmZmVyLCBHc3RCdWZmZXJEZWxl
dGVyPjsKPiA+ICsKPiA+ICBjbGFzcyBHc3RyZWFtZXJGcmFtZUNhcHR1cmUgZmluYWwgOiBwdWJs
aWMgRnJhbWVDYXB0dXJlCj4gPiAgewo+ID4gIHB1YmxpYzoKPiA+IEBAIC04Niw3ICs5NSw2IEBA
IHByaXZhdGU6Cj4gPiAgICAgIERpc3BsYXkgKmNvbnN0IGRweTsKPiA+ICAjaWYgWExJQl9DQVBU
VVJFCj4gPiAgICAgIHZvaWQgeGxpYl9jYXB0dXJlKCk7Cj4gPiAtICAgIFhJbWFnZSAqaW1hZ2Ug
PSBudWxscHRyOwo+ID4gICNlbmRpZgo+ID4gICAgICBHc3RPYmplY3RVUHRyPEdzdEVsZW1lbnQ+
IHBpcGVsaW5lLCBjYXB0dXJlLCBzaW5rOwo+ID4gICAgICBHc3RTYW1wbGVVUHRyIHNhbXBsZTsK
PiA+IEBAIC0zMDYsMTIgKzMxNCw2IEBAIHZvaWQgR3N0cmVhbWVyRnJhbWVDYXB0dXJlOjpmcmVl
X3NhbXBsZSgpCj4gPiAgICAgICAgICBnc3RfYnVmZmVyX3VubWFwKGdzdF9zYW1wbGVfZ2V0X2J1
ZmZlcihzYW1wbGUuZ2V0KCkpLCAmbWFwKTsKPiA+ICAgICAgICAgIHNhbXBsZS5yZXNldCgpOwo+
ID4gICAgICB9Cj4gPiAtI2lmIFhMSUJfQ0FQVFVSRQo+ID4gLSAgICBpZihpbWFnZSkgewo+ID4g
LSAgICAgICAgaW1hZ2UtPmYuZGVzdHJveV9pbWFnZShpbWFnZSk7Cj4gPiAtICAgICAgICBpbWFn
ZSA9IG51bGxwdHI7Cj4gPiAtICAgIH0KPiA+IC0jZW5kaWYKPiA+ICB9Cj4gPiAgCj4gPiAgR3N0
cmVhbWVyRnJhbWVDYXB0dXJlOjp+R3N0cmVhbWVyRnJhbWVDYXB0dXJlKCkKPiA+IEBAIC0zMjcs
OSArMzI5LDE0IEBAIHZvaWQgR3N0cmVhbWVyRnJhbWVDYXB0dXJlOjpSZXNldCgpCj4gPiAgfQo+
ID4gIAo+ID4gICNpZiBYTElCX0NBUFRVUkUKPiA+ICt2b2lkIGZyZWVfeGltYWdlKGdwb2ludGVy
IGRhdGEpIHsKPiAKPiBicmFja2V0IG9uIG5leHQgbGluZQo+IAo+ID4gKyAgICAoKFhJbWFnZSop
ZGF0YSktPmYuZGVzdHJveV9pbWFnZSgoWEltYWdlKilkYXRhKTsKPiA+ICt9Cj4gPiArCj4gPiAg
dm9pZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6OnhsaWJfY2FwdHVyZSgpCj4gPiAgewo+ID4gICAg
ICBpbnQgc2NyZWVuID0gWERlZmF1bHRTY3JlZW4oZHB5KTsKPiA+ICsgICAgWEltYWdlICppbWFn
ZSA9IG51bGxwdHI7Cj4gPiAgCj4gCj4gSSB3b3VsZCBkZWNsYXJlICsgaW5pdGlhbGl6ZSBvbiB0
aGUgc2FtZSBsaW5lCj4gCj4gPiAgICAgIFdpbmRvdyB3aW4gPSBSb290V2luZG93KGRweSwgc2Ny
ZWVuKTsKPiA+ICAgICAgWFdpbmRvd0F0dHJpYnV0ZXMgd2luX2luZm87Cj4gPiBAQCAtMzU1LDkg
KzM2MiwxMSBAQCB2b2lkIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6eGxpYl9jYXB0dXJlKCkKPiA+
ICAgICAgICAgIHRocm93IHN0ZDo6cnVudGltZV9lcnJvcigiQ2Fubm90IGNhcHR1cmUgZnJvbSBY
Iik7Cj4gPiAgICAgIH0KPiA+ICAKPiA+IC0gICAgR3N0QnVmZmVyICpidWY7Cj4gPiAtICAgIGJ1
ZiA9IGdzdF9idWZmZXJfbmV3X3dyYXBwZWQoaW1hZ2UtPmRhdGEsIGltYWdlLT5oZWlnaHQgKgo+
ID4gaW1hZ2UtPmJ5dGVzX3Blcl9saW5lKTsKPiA+IC0gICAgaWYgKCFidWYpIHsKPiA+ICsgICAg
R3N0QnVmZmVyVVB0ciBidWYoZ3N0X2J1ZmZlcl9uZXdfd3JhcHBlZF9mdWxsKChHc3RNZW1vcnlG
bGFncykwLAo+ID4gaW1hZ2UtPmRhdGEsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBpbWFnZS0+aGVpZ2h0ICoKPiA+IGltYWdlLT5ieXRlc19w
ZXJfbGluZSwgMCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGltYWdlLT5oZWlnaHQgKgo+ID4gaW1hZ2UtPmJ5dGVzX3Blcl9saW5lLCBpbWFn
ZSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGZyZWVfeGltYWdlKSk7Cj4gPiArICAgIGlmICghYnVmLmdldCgpKSB7CgpNaW5vcjoganVzdCAi
aWYgKCFidWYpIHsiIGlzIGVub3VnaC4KCj4gPiAgICAgICAgICB0aHJvdyBzdGQ6OnJ1bnRpbWVf
ZXJyb3IoIkZhaWxlZCB0byB3cmFwIGltYWdlIGluIGdzdHJlYW1lcgo+ID4gICAgICAgICAgYnVm
ZmVyIik7Cj4gPiAgICAgIH0KPiA+ICAKPiA+IEBAIC0zNjksNyArMzc4LDcgQEAgdm9pZCBHc3Ry
ZWFtZXJGcmFtZUNhcHR1cmU6OnhsaWJfY2FwdHVyZSgpCj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBudWxscHRyKSk7Cj4gPiAgCj4gPiAgICAgIC8vIFB1c2gg
c2FtcGxlCj4gPiAtICAgIEdzdFNhbXBsZVVQdHIgYXBwc3JjX3NhbXBsZShnc3Rfc2FtcGxlX25l
dyhidWYsIGNhcHMuZ2V0KCksIG51bGxwdHIsCj4gPiBudWxscHRyKSk7Cj4gPiArICAgIEdzdFNh
bXBsZVVQdHIgYXBwc3JjX3NhbXBsZShnc3Rfc2FtcGxlX25ldyhidWYuZ2V0KCksIGNhcHMuZ2V0
KCksCj4gPiBudWxscHRyLCBudWxscHRyKSk7Cj4gCj4gSSdtIGEgYml0IGNvbmZ1c2VkIG9uIHJl
ZmVyZW5jZSBjb3VudGluZyBoZXJlLgo+IFRoZSBjaGFuZ2Ugc2VlbXMgdG8gaW5kaWNhdGUgdGhh
dCBub3cgImJ1ZiIgaXMgZnJlZWQgYXV0b21hdGljYWxseQo+IChhcyB0aGUgdW5pcXVlX3B0ciku
Cj4gU28sIGlzIHRoaXMgcGF0Y2ggYWxzbyBmaXhpbmcgYSBtZW1vcnkgbGVhayA/Cj4gCj4gPiAg
ICAgIGlmIChnc3RfYXBwX3NyY19wdXNoX3NhbXBsZShHU1RfQVBQX1NSQyhjYXB0dXJlLmdldCgp
KSwKPiA+ICAgICAgYXBwc3JjX3NhbXBsZS5nZXQoKSkgIT0gR1NUX0ZMT1dfT0spIHsKPiA+ICAg
ICAgICAgIHRocm93IHN0ZDo6cnVudGltZV9lcnJvcigiZ3N0cmFtZXIgYXBwc3JjIGVsZW1lbnQg
Y2Fubm90IHB1c2gKPiA+ICAgICAgICAgIHNhbXBsZSIpOwo+ID4gICAgICB9Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
