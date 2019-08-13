Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 531FE8BF49
	for <lists+spice-devel@lfdr.de>; Tue, 13 Aug 2019 19:07:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D57056E1F1;
	Tue, 13 Aug 2019 17:07:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89F136E1F1
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 17:07:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0E6878F4E5
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 17:07:03 +0000 (UTC)
Received: from lub.tlv (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FD17379D;
 Tue, 13 Aug 2019 17:07:02 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190813165608.32249-1-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <ec9b6142-32d3-464c-2d09-60d11183eaf6@redhat.com>
Date: Tue, 13 Aug 2019 20:07:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813165608.32249-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 13 Aug 2019 17:07:03 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common 1/4] codegen: Use
 has_end_attr instead of has_attr("end")
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

T24gOC8xMy8xOSA3OjU2IFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gSnVzdCBzdHlsZSwg
dGhleSBkbyB0aGUgc2FtZSB0aGluZywgYnV0IGlzIG1vcmUgY29oZXJlbnQKPiB3aXRoIHRoZSBy
ZXN0IG9mIHRoZSBjb2RlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8Znpp
Z2xpb0ByZWRoYXQuY29tPgoKQWNrLgoKVXJpLgoKPiAtLS0KPiAgIHB5dGhvbl9tb2R1bGVzL2Rl
bWFyc2hhbC5weSB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9weXRob25fbW9kdWxlcy9kZW1hcnNoYWwucHkg
Yi9weXRob25fbW9kdWxlcy9kZW1hcnNoYWwucHkKPiBpbmRleCBkMzE0N2I3Li42ZDhkYmRkIDEw
MDY0NAo+IC0tLSBhL3B5dGhvbl9tb2R1bGVzL2RlbWFyc2hhbC5weQo+ICsrKyBiL3B5dGhvbl9t
b2R1bGVzL2RlbWFyc2hhbC5weQo+IEBAIC04MDQsNyArODA0LDcgQEAgZGVmIHdyaXRlX2FycmF5
X3BhcnNlcih3cml0ZXIsIG1lbWJlciwgbmVsZW1lbnRzLCBhcnJheSwgZGVzdCwgc2NvcGUpOgo+
ICAgICAgIGVsZW1lbnRfdHlwZSA9IGFycmF5LmVsZW1lbnRfdHlwZQo+ICAgICAgIGlmIG1lbWJl
cjoKPiAgICAgICAgICAgYXJyYXlfc3RhcnQgPSBkZXN0LmdldF9yZWYobWVtYmVyLm5hbWUpCj4g
LSAgICAgICAgYXRfZW5kID0gbWVtYmVyLmhhc19hdHRyKCJlbmQiKQo+ICsgICAgICAgIGF0X2Vu
ZCA9IG1lbWJlci5oYXNfZW5kX2F0dHIoKQo+ICAgICAgIGVsc2U6Cj4gICAgICAgICAgIGFycmF5
X3N0YXJ0ID0gImVuZCIKPiAgICAgICAgICAgYXRfZW5kID0gVHJ1ZQo+IAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBs
aXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
