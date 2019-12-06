Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2060114EB4
	for <lists+spice-devel@lfdr.de>; Fri,  6 Dec 2019 11:06:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 413526F9AA;
	Fri,  6 Dec 2019 10:06:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 817616F9AA
 for <spice-devel@lists.freedesktop.org>; Fri,  6 Dec 2019 10:06:46 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-170-oTpKgShhM6CWpaEbiiW7Ww-1; Fri, 06 Dec 2019 05:06:41 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C8AC0911EA;
 Fri,  6 Dec 2019 10:06:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C0A77A4B8F;
 Fri,  6 Dec 2019 10:06:40 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B30B86B4A9;
 Fri,  6 Dec 2019 10:06:40 +0000 (UTC)
Date: Fri, 6 Dec 2019 05:06:40 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: alexander@daynix.com
Message-ID: <2027160826.14473184.1575626800688.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191205174915.24546-4-anezhins@redhat.com>
References: <20191205174915.24546-1-anezhins@redhat.com>
 <20191205174915.24546-4-anezhins@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.24, 10.4.195.16]
Thread-Topic: Add --spice-share-cd command line option
Thread-Index: J3ifWIkotS8g707IEt9CmE0fW/PHUA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: oTpKgShhM6CWpaEbiiW7Ww-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575626805;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3f8AKjvGtUzHg11xb6deeHyQ+vf6Rd8H75cEx4f/8YY=;
 b=Zj+ge88l+h/XEBSgraUcEv5vXN7LRplH1ykSTLqORkpyMAhrLBgL8Wp3MTTZ/0392ZH1LB
 bdss1XSV/nRHvMaxGWgoHGGHhHlaJIvbOWj+wf4VQx3NZbN3XcGaoPaSnu7Uds1Pbcd78d
 B9FZer+DcTz1yTwTj/stemgBUEcQDO0=
Subject: Re: [Spice-devel] [PATCH 3/9] Add --spice-share-cd command line
 option
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
Cc: Yan Vugenfirer <yan@daynix.com>, spice-devel@lists.freedesktop.org,
 Alexander Nezhinsky <anezhins@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBGcm9tOiBBbGV4YW5kZXIgTmV6aGluc2t5IDxhbmV6aGluc0ByZWRoYXQuY29tPgo+IAo+
IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRlciBOZXpoaW5za3kgPGFuZXpoaW5zQHJlZGhhdC5jb20+
Cj4gLS0tCj4gIHNyYy9zcGljZS1vcHRpb24uYyB8IDI3ICsrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQg
YS9zcmMvc3BpY2Utb3B0aW9uLmMgYi9zcmMvc3BpY2Utb3B0aW9uLmMKPiBpbmRleCA4YzRlNzA3
Li43NTcyODA5IDEwMDY0NAo+IC0tLSBhL3NyYy9zcGljZS1vcHRpb24uYwo+ICsrKyBiL3NyYy9z
cGljZS1vcHRpb24uYwo+IEBAIC0zOSw2ICszOSw3IEBAIHN0YXRpYyBnaW50IGNhY2hlX3NpemUg
PSAwOwo+ICBzdGF0aWMgZ2ludCBnbHpfd2luZG93X3NpemUgPSAwOwo+ICBzdGF0aWMgZ2NoYXIg
KnNlY3VyZV9jaGFubmVscyA9IE5VTEw7Cj4gIHN0YXRpYyBnY2hhciAqc2hhcmVkX2RpciA9IE5V
TEw7Cj4gK3N0YXRpYyBnY2hhciAqKmNkX3NoYXJlX2ZpbGVzID0gTlVMTDsKPiAgc3RhdGljIFNw
aWNlSW1hZ2VDb21wcmVzc2lvbiBwcmVmZXJyZWRfY29tcHJlc3Npb24gPQo+ICBTUElDRV9JTUFH
RV9DT01QUkVTU0lPTl9JTlZBTElEOwo+ICAKPiAgR19HTlVDX05PUkVUVVJOCj4gQEAgLTE4Myw2
ICsxODQsOCBAQCBHT3B0aW9uR3JvdXAqIHNwaWNlX2dldF9vcHRpb25fZ3JvdXAodm9pZCkKPiAg
ICAgICAgICAgIE5fKCJGaWx0ZXIgc2VsZWN0aW5nIFVTQiBkZXZpY2VzIHRvIGJlIGF1dG8tcmVk
aXJlY3RlZCB3aGVuCj4gICAgICAgICAgICBwbHVnZ2VkIGluIiksIE5fKCI8ZmlsdGVyLXN0cmlu
Zz4iKSB9LAo+ICAgICAgICAgIHsgInNwaWNlLXVzYnJlZGlyLXJlZGlyZWN0LW9uLWNvbm5lY3Qi
LCAnXDAnLCAwLAo+ICAgICAgICAgIEdfT1BUSU9OX0FSR19TVFJJTkcsICZ1c2JyZWRpcl9yZWRp
cmVjdF9vbl9jb25uZWN0LAo+ICAgICAgICAgICAgTl8oIkZpbHRlciBzZWxlY3RpbmcgVVNCIGRl
dmljZXMgdG8gcmVkaXJlY3Qgb24gY29ubmVjdCIpLAo+ICAgICAgICAgICAgTl8oIjxmaWx0ZXIt
c3RyaW5nPiIpIH0sCj4gKyAgICAgICAgeyAic3BpY2Utc2hhcmUtY2QiLCAnXDAnLCAwLCBHX09Q
VElPTl9BUkdfU1RSSU5HX0FSUkFZLAo+ICZjZF9zaGFyZV9maWxlcywKPiArICAgICAgICAgIE5f
KCJOYW1lIG9mIElTTyBmaWxlIG9yIENEL0RWRCBkZXZpY2UgdG8gc2hhcmUiKSwgTl8oIjxmaWxl
bmFtZT4KPiAocmVwZWF0IGFsbG93ZWQpIikgfSwKPiAgICAgICAgICB7ICJzcGljZS1jYWNoZS1z
aXplIiwgJ1wwJywgMCwgR19PUFRJT05fQVJHX0lOVCwgJmNhY2hlX3NpemUsCj4gICAgICAgICAg
ICBOXygiSW1hZ2UgY2FjaGUgc2l6ZSAoZGVwcmVjYXRlZCkiKSwgTl8oIjxieXRlcz4iKSB9LAo+
ICAgICAgICAgIHsgInNwaWNlLWdsei13aW5kb3ctc2l6ZSIsICdcMCcsIDAsIEdfT1BUSU9OX0FS
R19JTlQsCj4gICAgICAgICAgJmdsel93aW5kb3dfc2l6ZSwKPiBAQCAtMjg4LDYgKzI5MSwzMCBA
QCB2b2lkIHNwaWNlX3NldF9zZXNzaW9uX29wdGlvbihTcGljZVNlc3Npb24gKnNlc3Npb24pCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICB1c2JyZWRpcl9yZWRpcmVjdF9vbl9jb25uZWN0LCBO
VUxMKTsKPiAgICAgICAgICB9Cj4gICAgICB9Cj4gKyAgICBpZiAoY2Rfc2hhcmVfZmlsZXMpIHsK
PiArICAgICAgICBTcGljZVVzYkRldmljZU1hbmFnZXIgKm0gPQo+ICsgICAgICAgICAgICAgICAg
Z2V0X3VzYl9kZXZpY2VfbWFuYWdlcl9mb3Jfb3B0aW9uKHNlc3Npb24sCj4gIi0tc3BpY2Utc2hh
cmUtY2QiKTsKPiArICAgICAgICBpZiAobSkgewo+ICsgICAgICAgICAgICBnY2hhciAqKm5hbWUg
PSBjZF9zaGFyZV9maWxlczsKPiArICAgICAgICAgICAgR0Vycm9yICplcnIgPSBOVUxMOwo+ICsg
ICAgICAgICAgICBnYm9vbGVhbiByYzsKPiArCj4gKyAgICAgICAgICAgIHdoaWxlIChuYW1lICYm
ICpuYW1lKSB7Cj4gKyAgICAgICAgICAgICAgICByYyA9IHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdl
cl9jcmVhdGVfc2hhcmVkX2NkX2RldmljZShtLAo+ICpuYW1lLCAmZXJyKTsKPiArICAgICAgICAg
ICAgICAgIGlmICghcmMpIHsKPiArICAgICAgICAgICAgICAgICAgICBpZiAoIWVycikKCm1pbm9y
OiBlcnIgPT0gTlVMTAoKPiArICAgICAgICAgICAgICAgICAgICAgICAgZ193YXJuaW5nKCJGYWls
ZWQgdG8gY3JlYXRlIHNoYXJlZCBDRCBkZXZpY2UgJXMiLAo+ICpuYW1lKTsKPiArICAgICAgICAg
ICAgICAgICAgICBlbHNlCj4gKyAgICAgICAgICAgICAgICAgICAgICAgIGdfd2FybmluZygiRmFp
bGVkIHRvIGNyZWF0ZSBzaGFyZWQgQ0QgZGV2aWNlICVzOgo+ICVzIiwKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICpuYW1lLCBlcnItPm1lc3NhZ2UpOwoKc3R5bGU6IGFsd2F5
cyBicmFja2V0cwoKPiArICAgICAgICAgICAgICAgICAgICBnX2NsZWFyX2Vycm9yKCZlcnIpOwoK
YXMgeW91IGNoZWNrIGZvciBlcnIgYWJvdmUgeW91IGNhbiBpbmNsdWRlIGluIHRoZSBlbHNlLgoK
PiArICAgICAgICAgICAgICAgIH0KPiArICAgICAgICAgICAgICAgIG5hbWUrKzsKPiArICAgICAg
ICAgICAgfQo+ICsgICAgICAgIH0KPiArICAgICAgICBnX3N0cmZyZWV2KGNkX3NoYXJlX2ZpbGVz
KTsKPiArICAgICAgICBjZF9zaGFyZV9maWxlcyA9IE5VTEw7Cj4gKyAgICB9Cj4gICAgICBpZiAo
ZGlzYWJsZV91c2JyZWRpcikKPiAgICAgICAgICBnX29iamVjdF9zZXQoc2Vzc2lvbiwgImVuYWJs
ZS11c2JyZWRpciIsIEZBTFNFLCBOVUxMKTsKPiAgICAgIGlmIChkaXNhYmxlX2F1ZGlvKQoKT3Ro
ZXJ3aXNlIGl0IGxvb2tzIGZpbmUKCkZyZWRpYW5vCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
