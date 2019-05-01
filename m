Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 281D210CE3
	for <lists+spice-devel@lfdr.de>; Wed,  1 May 2019 20:49:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD505892A5;
	Wed,  1 May 2019 18:48:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B67A3892A5
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 18:48:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 571A781DF0
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 18:48:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4EBAB6E9EA
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 18:48:57 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 449EA18089C8;
 Wed,  1 May 2019 18:48:57 +0000 (UTC)
Date: Wed, 1 May 2019 14:48:55 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <2050546999.15908363.1556736535883.JavaMail.zimbra@redhat.com>
In-Reply-To: <868ebd33-d5b9-2480-daa7-04081bff39c9@redhat.com>
References: <20190501112054.26512-1-uril@redhat.com>
 <1744324258.15802457.1556710203093.JavaMail.zimbra@redhat.com>
 <868ebd33-d5b9-2480-daa7-04081bff39c9@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.11]
Thread-Topic: gitlab-ci: build out-of-tree too
Thread-Index: Lr/QqEKgCt2oIV/VkvlDKM5H4rYizg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Wed, 01 May 2019 18:48:57 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server V2] gitlab-ci: build
 out-of-tree too
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

PiBPbiA1LzEvMTkgMjozMCBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+ID4+Cj4gPj4gT25l
IHRlc3QgaXMgZW5vdWdoIC0tIGRvIGl0IGluIG1ha2VjaGVjay4KPiA+Pgo+ID4+IE11c3QgZ2l0
IGNsZWFuIGZpcnN0IGFueSBwcmV2aW91cyBidWlsZHMuCj4gPiAKPiA+IE5vLCBub3QgYXQgdGhl
IGJlZ2lubmluZy4KPiA+IHNwaWNlLWd0ayBDSSBzY3JpcHQgZXhlY3V0ZSBtdWx0aXBsZSB0ZXN0
IGluIGEgc2luZ2xlIGpvYgo+ID4gc28gYmV0d2VlbiBqb2JzIGNsZWFuIGV2ZXJ5dGhpbmcuCj4g
Cj4gV2VsbCwgaXQgZmFpbHMgd2l0aG91dCBpdCwgd2l0aCB0aGUgZm9sbG93aW5nIGVycm9yIG1l
c3NhZ2VzOgo+ICAgIGNvbmZpZ3VyZTogZXJyb3I6IHNvdXJjZSBkaXJlY3RvcnkgYWxyZWFkeSBj
b25maWd1cmVkOyBydW4gIm1ha2UKPiAgICAgICAgICAgICAgIGRpc3RjbGVhbiIgdGhlcmUgZmly
c3QKPiAgICBjb25maWd1cmU6IGVycm9yOiAuLi8uLi8uLi9zdWJwcm9qZWN0cy9zcGljZS1jb21t
b24vY29uZmlndXJlIGZhaWxlZAo+ICAgICAgICAgICAgICAgZm9yIHN1YnByb2plY3RzL3NwaWNl
LWNvbW1vbgo+IAo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy91cmlsL3NwaWNlLy0v
am9icy8yNzEwMjkKPiAKCkxvb2tzIGxpa2UgZGlkIHRoZSBjbGVhbiBidXQgbm90IGZvciBzdWJt
b2R1bGVzLgoKPiA+IAo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogVXJpIEx1YmxpbiA8dXJpbEBy
ZWRoYXQuY29tPgo+ID4+IC0tLQo+ID4+Cj4gPj4gU2luY2UgVjE6Cj4gPj4gICAgIC0gQWRkIGEg
Y29tbWVudCBhYm91dCBvdXQtb2YtdHJlZQo+ID4+ICAgICAtIGNsZWFudXAgcHJldmlvdXMgYnVp
bGRzIHVzaW5nIGdpdCBjbGVhbgo+ID4+Cj4gPj4gcGlwZWxpbmUgdGFzazoKPiA+PiBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvdXJpbC9zcGljZS8tL2pvYnMvMjcyNjU5Cj4gPj4KPiA+
PiBCVFcsIHNob3VsZCB3ZSBjbGVhbnVwIGJlZm9yZS9hZnRlciBldmVyeSB0YXNrID8KPiA+PiAg
ICAgICBzaG91bGQgd2Ugcm0gLXJmIGJ1aWxkZGlyID8gc3BpY2UtcHJvdG9jb2wgPwo+ID4gCj4g
PiBXZWxsLCB3ZSBzaG91bGQgY2xlYW4gYmV0d2Vlbiwgbm90IGF0IHRoZSBiZWdpbm5pbmcsIGF0
Cj4gPiB0aGUgYmVnaW5uaW5nIHJlcG9zaXRvcnkgaXMgc3VwcG9zZWQgdG8gY2FtZSBmcm9tIGEg
Z2l0IGNsb25lLgo+IAo+IEkgc2VlICJGZXRjaGluZyBjaGFuZ2VzLi4uIiwgd2hpY2ggc2VlbXMg
dG8gbWUgbGlrZSB0aGVyZSBpcyBubwo+IG5ldyBjbG9uZSwgYnV0IGEgZ2l0IGZldGNoLgo+IAo+
IEknbSBub3Qgc3VyZSB5ZXQgd2h5IGl0IHdvcmtzIGluIHNwaWNlLWd0ay4KPiAKCldvbmRlcmlu
ZyB0b28uCgo+IFRoYW5rcywKPiAgICAgIFVyaS4KPiAKCkFja2VkLgoKPiA+IAo+ID4+Cj4gPj4g
LS0tCj4gPj4gICAuZ2l0bGFiLWNpLnltbCB8IDggKysrKysrKy0KPiA+PiAgIDEgZmlsZSBjaGFu
Z2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+Pgo+ID4+IGRpZmYgLS1naXQg
YS8uZ2l0bGFiLWNpLnltbCBiLy5naXRsYWItY2kueW1sCj4gPj4gaW5kZXggOWNlOTVjMDBlLi4y
YzFmNDZhZGYgMTAwNjQ0Cj4gPj4gLS0tIGEvLmdpdGxhYi1jaS55bWwKPiA+PiArKysgYi8uZ2l0
bGFiLWNpLnltbAo+ID4+IEBAIC0xNCwxMiArMTQsMTggQEAgYmVmb3JlX3NjcmlwdDoKPiA+PiAg
IAo+ID4+ICAgbWFrZWNoZWNrOgo+ID4+ICAgICBzY3JpcHQ6Cj4gPj4gKyAgIyBBbHNvIGNoZWNr
IG91dC1vZi10cmVlIGJ1aWxkCj4gPj4gKyAgLSBnaXQgY2xlYW4gLWZkeCAjIGNsZWFudXAgYWZ0
ZXIgcHJldmlvdXMgYnVpbGRzCj4gPj4gKyAgLSBnaXQgc3VibW9kdWxlIGZvcmVhY2ggLS1yZWN1
cnNpdmUgZ2l0IGNsZWFuIC1mZHgKPiA+IAo+ID4gVGhlcmUgMiBsaW5lcyBoZXJlIGFyZSB1c2Vs
ZXNzLgo+ID4gCj4gPj4gKyAgLSBta2RpciBidWlsZGRpcgo+ID4+ICsgIC0gY2QgYnVpbGRkaXIK
PiA+PiAgICAgLSA+Cj4gPj4gICAgICAgQ0ZMQUdTPSctTzIgLXBpcGUgLWcgLWZzYW5pdGl6ZT1h
ZGRyZXNzIC1mbm8tb21pdC1mcmFtZS1wb2ludGVyCj4gPj4gICAgICAgLVdmcmFtZS1sYXJnZXIt
dGhhbj00MDkyMCcKPiA+PiAgICAgICBMREZMQUdTPSctZnNhbml0aXplPWFkZHJlc3MgLWxhc2Fu
Jwo+ID4+IC0gICAgLi9hdXRvZ2VuLnNoIC0tZW5hYmxlLWNlbHQwNTEKPiA+PiArICAgIC4uL2F1
dG9nZW4uc2ggLS1lbmFibGUtY2VsdDA1MQo+ID4+ICAgICAtIG1ha2UKPiA+PiAgICAgLSBtYWtl
IC1DIHNlcnZlciBjaGVjayB8fCAoY2F0IHNlcnZlci90ZXN0cy90ZXN0LXN1aXRlLmxvZyAmJiBl
eGl0IDEpCj4gPj4gKyAgLSBjZCAuLgo+ID4+ICAgCj4gPj4gICBtZXNvbi1tYWtlY2hlY2s6Cj4g
Pj4gICAgIHNjcmlwdDoKPiA+IAo+ID4gT3RoZXJ3aXNlLAo+ID4gCj4gPiBBY2tlZC1ieTogRnJl
ZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gPiAKPiA+IEZyZWRpYW5vCj4gPiAK
PiAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
