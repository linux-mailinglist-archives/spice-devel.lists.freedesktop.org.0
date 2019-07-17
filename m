Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B51A6BBD3
	for <lists+spice-devel@lfdr.de>; Wed, 17 Jul 2019 13:50:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2310A6E119;
	Wed, 17 Jul 2019 11:50:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEDBB6E119
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 11:50:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8B0EC59474
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 11:50:52 +0000 (UTC)
Received: from lub.tlv (dhcp-4-204.tlv.redhat.com [10.35.4.204])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EB50619C70;
 Wed, 17 Jul 2019 11:50:51 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190717104133.30186-1-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <1de16408-7091-a86b-6535-b873f68e6de2@redhat.com>
Date: Wed, 17 Jul 2019 14:50:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190717104133.30186-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 17 Jul 2019 11:50:52 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] reds: Fix use-after-free
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNy8xNy8xOSAxOjQxIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gdmlkZW9fY29kZWNz
IGNhbiBiZSBmcmVlZCBzbyB1c2UgaXQgYmVmb3JlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZyZWRp
YW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgoKQWNrLgoKSSBoYWQgYSBzaW1pbGFyIHBh
dGNoLCB5b3Ugc2VudCB5b3VyIGZhc3RlciA6KQoKVXJpLgoKPiAtLS0KPiAgIHNlcnZlci9yZWRz
LmMgfCA4ICsrKystLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVkcy5jIGIvc2VydmVyL3JlZHMu
Ywo+IGluZGV4IDgxN2ZkZDQyMy4uNzhiYmU1YTBmIDEwMDY0NAo+IC0tLSBhL3NlcnZlci9yZWRz
LmMKPiArKysgYi9zZXJ2ZXIvcmVkcy5jCj4gQEAgLTM4NTEsNiArMzg1MSwxMCBAQCBzdGF0aWMg
aW50IHJlZHNfc2V0X3ZpZGVvX2NvZGVjc19mcm9tX3N0cmluZyhSZWRzU3RhdGUgKnJlZHMsIGNv
bnN0IGNoYXIgKmNvZGVjcwo+ICAgICAgICAgICBjb2RlY3MgPSBjOwo+ICAgICAgIH0KPiAgIAo+
ICsgICAgaWYgKGluc3RhbGxlZCkgewo+ICsgICAgICAgICppbnN0YWxsZWQgPSB2aWRlb19jb2Rl
Y3MtPmxlbjsKPiArICAgIH0KPiArCj4gICAgICAgaWYgKHZpZGVvX2NvZGVjcy0+bGVuID09IDAp
IHsKPiAgICAgICAgICAgc3BpY2Vfd2FybmluZygiRmFpbGVkIHRvIHNldCB2aWRlbyBjb2RlY3Ms
IGlucHV0IHN0cmluZzogJyVzJyIsIGNvZGVjcyk7Cj4gICAgICAgICAgIGdfYXJyYXlfdW5yZWYo
dmlkZW9fY29kZWNzKTsKPiBAQCAtMzg2MCwxMCArMzg2NCw2IEBAIHN0YXRpYyBpbnQgcmVkc19z
ZXRfdmlkZW9fY29kZWNzX2Zyb21fc3RyaW5nKFJlZHNTdGF0ZSAqcmVkcywgY29uc3QgY2hhciAq
Y29kZWNzCj4gICAKPiAgICAgICBnX2ZyZWUoY29kZWNzX2NvcHkpOwo+ICAgCj4gLSAgICBpZiAo
aW5zdGFsbGVkKSB7Cj4gLSAgICAgICAgKmluc3RhbGxlZCA9IHZpZGVvX2NvZGVjcy0+bGVuOwo+
IC0gICAgfQo+IC0KPiAgICAgICByZXR1cm4gaW52YWxpZF9jb2RlY3M7Cj4gICB9Cj4gICAKPiAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
