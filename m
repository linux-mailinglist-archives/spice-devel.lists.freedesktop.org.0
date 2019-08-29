Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD96AA212D
	for <lists+spice-devel@lfdr.de>; Thu, 29 Aug 2019 18:43:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 500FC6E12F;
	Thu, 29 Aug 2019 16:43:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E0EE6E12F
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:43:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BE86F2A09CD
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:43:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B449219C4F
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:43:26 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id AB9A71800B74;
 Thu, 29 Aug 2019 16:43:26 +0000 (UTC)
Date: Thu, 29 Aug 2019 12:43:26 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <1766757549.10118724.1567097006482.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190829163524.25992-2-uril@redhat.com>
References: <20190829163524.25992-1-uril@redhat.com>
 <20190829163524.25992-2-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.21]
Thread-Topic: virtio-port: handle_fds: make read and write code consistent
Thread-Index: 5Vwg1VwDah9EfOnrlb7kOXiKmS1jPQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Thu, 29 Aug 2019 16:43:26 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-vdagent PATCH v2 2/2] virtio-port:
 handle_fds: make read and write code consistent
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

PiAKPiBBIGNvbW1lbnQgYW5kIGN1cmx5IGJyYWNrZXRzIGZvciBzdHlsZSB3ZXJlIGFkZGVkLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4KCkFja2VkLWJ5
OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KCj4gLS0tCj4gCj4gdjEtPnYy
OiB1c2Ugc2hvcnRlciB2ZXJzaW9uIChhbHRlcm5hdGl2ZSBvZiB2MSkKPiAgICAgICAgIGFkZCBj
dXJseSBicmFja2V0cyB0byBpZiBibG9ja3MKPiAKPiAtLS0KPiAgc3JjL3ZkYWdlbnRkL3ZpcnRp
by1wb3J0LmMgfCAxMCArKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy92ZGFnZW50ZC92aXJ0aW8t
cG9ydC5jIGIvc3JjL3ZkYWdlbnRkL3ZpcnRpby1wb3J0LmMKPiBpbmRleCAzYWU3ZjIyLi4wNmYz
YTMyIDEwMDY0NAo+IC0tLSBhL3NyYy92ZGFnZW50ZC92aXJ0aW8tcG9ydC5jCj4gKysrIGIvc3Jj
L3ZkYWdlbnRkL3ZpcnRpby1wb3J0LmMKPiBAQCAtMTY2LDE0ICsxNjYsMTQgQEAgaW50IHZkYWdl
bnRfdmlydGlvX3BvcnRfZmlsbF9mZHMoc3RydWN0Cj4gdmRhZ2VudF92aXJ0aW9fcG9ydCAqdnBv
cnQsCj4gIHZvaWQgdmRhZ2VudF92aXJ0aW9fcG9ydF9oYW5kbGVfZmRzKHN0cnVjdCB2ZGFnZW50
X3ZpcnRpb19wb3J0ICoqdnBvcnRwLAo+ICAgICAgICAgIGZkX3NldCAqcmVhZGZkcywgZmRfc2V0
ICp3cml0ZWZkcykKPiAgewo+IC0gICAgaWYgKCEqdnBvcnRwKQo+IC0gICAgICAgIHJldHVybjsK
PiAtCj4gLSAgICBpZiAoRkRfSVNTRVQoKCp2cG9ydHApLT5mZCwgcmVhZGZkcykpCj4gKyAgICBp
ZiAoKnZwb3J0cCAmJiBGRF9JU1NFVCgoKnZwb3J0cCktPmZkLCByZWFkZmRzKSkgewo+ICAgICAg
ICAgIHZkYWdlbnRfdmlydGlvX3BvcnRfZG9fcmVhZCh2cG9ydHApOwo+ICsgICAgfQo+ICAKPiAt
ICAgIGlmICgqdnBvcnRwICYmIEZEX0lTU0VUKCgqdnBvcnRwKS0+ZmQsIHdyaXRlZmRzKSkKPiAr
ICAgIC8qICp2cG9ydHAgbWF5IGhhdmUgYmVlbiBkZXN0cm95ZWQgaW4gZG9fcmVhZCAqLwo+ICsg
ICAgaWYgKCp2cG9ydHAgJiYgRkRfSVNTRVQoKCp2cG9ydHApLT5mZCwgd3JpdGVmZHMpKSB7Cj4g
ICAgICAgICAgdmRhZ2VudF92aXJ0aW9fcG9ydF9kb193cml0ZSh2cG9ydHApOwo+ICsgICAgfQo+
ICB9Cj4gIAo+ICBzdGF0aWMgc3RydWN0IHZkYWdlbnRfdmlydGlvX3BvcnRfYnVmKiB2ZGFnZW50
X3ZpcnRpb19wb3J0X2dldF9sYXN0X3didWYoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
