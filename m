Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C006AAAB
	for <lists+spice-devel@lfdr.de>; Tue, 16 Jul 2019 16:34:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED5876E133;
	Tue, 16 Jul 2019 14:34:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AB576E133
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 14:34:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D74642DF9C
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 14:34:51 +0000 (UTC)
Received: from lub.tlv (dhcp-4-204.tlv.redhat.com [10.35.4.204])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id F3E3B5C88D;
 Tue, 16 Jul 2019 14:34:48 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190627150358.16534-1-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <d022e638-6009-4349-9b47-b5564cc09852@redhat.com>
Date: Tue, 16 Jul 2019 17:34:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190627150358.16534-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 16 Jul 2019 14:34:51 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 1/2] websocket: Add header
 guards
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

T24gNi8yNy8xOSA2OjAzIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gU2lnbmVkLW9mZi1i
eTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CkFjay4KClVyaS4KCj4gLS0t
Cj4gICBzZXJ2ZXIvd2Vic29ja2V0LmggfCA1ICsrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgNSBp
bnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZlci93ZWJzb2NrZXQuaCBiL3NlcnZl
ci93ZWJzb2NrZXQuaAo+IGluZGV4IDIyMTIwZDkzOS4uNzcwN2U2ODA0IDEwMDY0NAo+IC0tLSBh
L3NlcnZlci93ZWJzb2NrZXQuaAo+ICsrKyBiL3NlcnZlci93ZWJzb2NrZXQuaAo+IEBAIC0xNSw2
ICsxNSw5IEBACj4gICAgKiAgTGljZW5zZSBhbG9uZyB3aXRoIHRoaXMgbGlicmFyeTsgaWYgbm90
LCBzZWUgPGh0dHA6Ly93d3cuZ251Lm9yZy9saWNlbnNlcy8+Lgo+ICAgICovCj4gICAKPiArI2lm
bmRlZiBXRUJTT0NLRVRfSF8KPiArI2RlZmluZSBXRUJTT0NLRVRfSF8KPiArCj4gICB0eXBlZGVm
IHNzaXplX3QgKCp3ZWJzb2NrZXRfcmVhZF9jYl90KSh2b2lkICpvcGFxdWUsIHZvaWQgKmJ1Ziwg
c2l6ZV90IG5ieXRlKTsKPiAgIHR5cGVkZWYgc3NpemVfdCAoKndlYnNvY2tldF93cml0ZV9jYl90
KSh2b2lkICpvcGFxdWUsIGNvbnN0IHZvaWQgKmJ1Ziwgc2l6ZV90IG5ieXRlKTsKPiAgIHR5cGVk
ZWYgc3NpemVfdCAoKndlYnNvY2tldF93cml0ZXZfY2JfdCkodm9pZCAqb3BhcXVlLCBzdHJ1Y3Qg
aW92ZWMgKmlvdiwgaW50IGlvdmNudCk7Cj4gQEAgLTQxLDMgKzQ0LDUgQEAgdm9pZCB3ZWJzb2Nr
ZXRfZnJlZShSZWRzV2ViU29ja2V0ICp3cyk7Cj4gICBpbnQgd2Vic29ja2V0X3JlYWQoUmVkc1dl
YlNvY2tldCAqd3MsIHVpbnQ4X3QgKmJ1Ziwgc2l6ZV90IGxlbiwgdW5zaWduZWQgKmZsYWdzKTsK
PiAgIGludCB3ZWJzb2NrZXRfd3JpdGUoUmVkc1dlYlNvY2tldCAqd3MsIGNvbnN0IHZvaWQgKmJ1
Ziwgc2l6ZV90IGxlbiwgdW5zaWduZWQgZmxhZ3MpOwo+ICAgaW50IHdlYnNvY2tldF93cml0ZXYo
UmVkc1dlYlNvY2tldCAqd3MsIGNvbnN0IHN0cnVjdCBpb3ZlYyAqaW92LCBpbnQgaW92Y250LCB1
bnNpZ25lZCBmbGFncyk7Cj4gKwo+ICsjZW5kaWYKPiAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
