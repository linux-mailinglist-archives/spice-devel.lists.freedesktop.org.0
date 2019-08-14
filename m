Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BB18D659
	for <lists+spice-devel@lfdr.de>; Wed, 14 Aug 2019 16:39:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78E526E5EA;
	Wed, 14 Aug 2019 14:39:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63ACA6E5EA
 for <spice-devel@lists.freedesktop.org>; Wed, 14 Aug 2019 14:39:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D6A7D30A76B2
 for <spice-devel@lists.freedesktop.org>; Wed, 14 Aug 2019 14:39:04 +0000 (UTC)
Received: from lub.tlv (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B8F334D44;
 Wed, 14 Aug 2019 14:39:01 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190813165608.32249-1-fziglio@redhat.com>
 <20190813165608.32249-2-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <2aa2cd4a-cad1-c4c3-53d2-a62301a3b93c@redhat.com>
Date: Wed, 14 Aug 2019 17:39:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813165608.32249-2-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Wed, 14 Aug 2019 14:39:04 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common 2/4] codegen: Add a check for
 C structure fields
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

T24gOC8xMy8xOSA3OjU2IFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gVGhpcyBjaGVjayBt
YWtlIHN1cmUgdGhhdCBvdXRwdXQgZmllbGRzIGZvciBtZW1iZXIgd2l0aCBAZW5kIChhcnJheXMp
Cj4gYXJlIGRlY2xhcmVkIGFzIGVtcHR5IGFycmF5cyBpbiBvdXRwdXQgQyBzdHJ1Y3R1cmUuCj4g
VGhpcyBhdm9pZHMgb3V0cHV0IGZpZWxkcyB0byBiZSBkZWNsYXJlZCBhcyBwb2ludGVyIG9yIG90
aGVyCj4gaW52YWxpZCB0eXBlcy4KPiBUaGUgY2hlY2sgaXMgYSBjb21waWxlIHRpbWUgY2hlY2sg
c28gbm8gY29kZSBpbiBvYmplY3QgZmlsZQo+IGlzIGdlbmVyYXRlZC4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KQWNrLgoKVXJpCgo+IC0t
LQo+ICAgcHl0aG9uX21vZHVsZXMvZGVtYXJzaGFsLnB5IHwgMyArKysKPiAgIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvcHl0aG9uX21vZHVsZXMvZGVt
YXJzaGFsLnB5IGIvcHl0aG9uX21vZHVsZXMvZGVtYXJzaGFsLnB5Cj4gaW5kZXggNmQ4ZGJkZC4u
YWNkNGI2ZiAxMDA2NDQKPiAtLS0gYS9weXRob25fbW9kdWxlcy9kZW1hcnNoYWwucHkKPiArKysg
Yi9weXRob25fbW9kdWxlcy9kZW1hcnNoYWwucHkKPiBAQCAtODA1LDYgKzgwNSw5IEBAIGRlZiB3
cml0ZV9hcnJheV9wYXJzZXIod3JpdGVyLCBtZW1iZXIsIG5lbGVtZW50cywgYXJyYXksIGRlc3Qs
IHNjb3BlKToKPiAgICAgICBpZiBtZW1iZXI6Cj4gICAgICAgICAgIGFycmF5X3N0YXJ0ID0gZGVz
dC5nZXRfcmVmKG1lbWJlci5uYW1lKQo+ICAgICAgICAgICBhdF9lbmQgPSBtZW1iZXIuaGFzX2Vu
ZF9hdHRyKCkKPiArICAgICAgICAjIHRoZSBmaWVsZCBpcyBzdXBwb3NlZCB0byBiZSBhIFswXSBh
cnJheSwgY2hlY2sgaXQKPiArICAgICAgICBpZiBhdF9lbmQ6Cj4gKyAgICAgICAgICAgIHdyaXRl
ci5zdGF0ZW1lbnQoJ3ZlcmlmeShzaXplb2YoJXMpID09IDApJyAlIGFycmF5X3N0YXJ0KQo+ICAg
ICAgIGVsc2U6Cj4gICAgICAgICAgIGFycmF5X3N0YXJ0ID0gImVuZCIKPiAgICAgICAgICAgYXRf
ZW5kID0gVHJ1ZQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVs
