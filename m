Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5975891C1
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 15:08:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B17A89ECD;
	Sun, 11 Aug 2019 13:08:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D612F89ECD
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 13:08:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 27ECE315C02D
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 13:08:36 +0000 (UTC)
Received: from lub.tlv (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A1B65D9C9;
 Sun, 11 Aug 2019 13:08:35 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190811114723.22360-1-uril@redhat.com>
 <20190811114723.22360-2-uril@redhat.com>
 <833667726.5453453.1565524619663.JavaMail.zimbra@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <0e13da85-f667-8ff2-e021-9815fe52c1c7@redhat.com>
Date: Sun, 11 Aug 2019 16:08:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <833667726.5453453.1565524619663.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Sun, 11 Aug 2019 13:08:36 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-server PATCH 2/3] test-loop: increment a
 variable outside of spice_assert
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
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gOC8xMS8xOSAyOjU2IFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4+Cj4+IHNwaWNlX2Fz
c2VydCBpcyBhIG1hY3JvIGFuZCBpdCBtYXkgYmUgdGhhdCB2YXJpYWJsZSB3aWxsCj4+IGJlIGlu
Y3JlbWVudGVkIHR3aWNlIChpbiB0aGVvcnksIHBvc3NpYmx5IG5vdCBpbiBwcmFjdGljZSkuCj4+
Cj4gCj4gTm8sIHRoZSBpc3N1ZSBpcyB0aGF0IENvdmVyaXR5IGFzc3VtZSB0aGF0IGNvZGUgY2Fu
IGJlIHN0cmlwcGVkIG91dAo+IGFzIHVzdWFsbHkgYXNzZXJ0IGNhbiBiZSBzdHJpcHBlZCBvdXQg
KGRlZmluaW5nIE5ERUJVRyBmb3Igbm9ybWFsCj4gYXNzZXJ0KS4KCllvdSBhcmUgY29ycmVjdCB0
aGF0IHRoaXMgaXMgd2hhdCB0aGUgY292c2NhbiBjb21wbGFpbnMgYWJvdXQ6CiJUaGUgY29udGFp
bmluZyBmdW5jdGlvbiBtaWdodCB3b3JrIGRpZmZlcmVudGx5IGluIGEgbm9uLWRlYnVnIGJ1aWxk
LiIKCkJ1dCBzcGljZV9hc3NlcnQgZGVmaW5pdGlvbiBkb2VzIG5vdCBkZXBlbmQgb24gTkRFQlVH
LgpPbiB0aGUgb3RoZXIgaGFuZCBpdCBkb2VzIG5vdCBoYXBwZW4gaW4gcmVhbGl0eSB0aGF0CnRo
ZSB2YXJpYWJsZSBpcyBpbmNyZW1lbnRlZCB0d2ljZS4KCkknbGwgY2hhbmdlIHRoZSBhYm92ZSBj
b21tZW50IHRvIHNheQogICBzcGljZV9hc3NlcnQgaXMgYSBtYWNybyBzbyBwcmV2ZW50IHNpZGUt
ZWZmZWN0cyBieQogICBub3QgY2hhbmdpbmcgdGhlIHZhcmlhYmxlIGluIGl0LgoKVXJpLgoKPiAK
Pj4gU2ltcGx5IGRvIGl0IG9uZSBsaW5lIGFib3ZlLgo+Pgo+PiBGb3VuZCBieSBjb3ZzY2FuCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4KCgo+IAo+IEJl
c2lkZSB0aGUgY29tbWl0IG1lc3NhZ2Ugbm8gY29tcGxhaW5zIHRvIG1ha2UgQ292ZXJpdHkgaGFw
cHkKPiAKPj4gLS0tCj4+ICAgc2VydmVyL3Rlc3RzL3Rlc3QtbG9vcC5jIHwgMyArKy0KPj4gICAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYg
LS1naXQgYS9zZXJ2ZXIvdGVzdHMvdGVzdC1sb29wLmMgYi9zZXJ2ZXIvdGVzdHMvdGVzdC1sb29w
LmMKPj4gaW5kZXggODJhZjgwYWIzLi40ZGYzYTdkMjAgMTAwNjQ0Cj4+IC0tLSBhL3NlcnZlci90
ZXN0cy90ZXN0LWxvb3AuYwo+PiArKysgYi9zZXJ2ZXIvdGVzdHMvdGVzdC1sb29wLmMKPj4gQEAg
LTc4LDcgKzc4LDggQEAgc3RhdGljIFNwaWNlVGltZXIgKnR3aWNlX3RpbWVyc19yZW1vdmVbMl0g
PSB7IE5VTEwsIE5VTEwgfTsKPj4gICBzdGF0aWMgaW50IHR3aWNlX3JlbW92ZV9jYWxsZWQgPSAw
Owo+PiAgIHN0YXRpYyB2b2lkIHRpbWVyX25vdF90d2ljZV9yZW1vdmUodm9pZCAqb3BhcXVlKQo+
PiAgIHsKPj4gLSAgICBzcGljZV9hc3NlcnQoKyt0d2ljZV9yZW1vdmVfY2FsbGVkID09IDEpOwo+
PiArICAgICsrdHdpY2VfcmVtb3ZlX2NhbGxlZDsKPj4gKyAgICBzcGljZV9hc3NlcnQodHdpY2Vf
cmVtb3ZlX2NhbGxlZCA9PSAxKTsKPj4gICAKPj4gICAgICAgLyogZGVsZXRlIHRpbWVycywgc2hv
dWxkIG5vdCBoYXZlIGFub3RoZXIgY2FsbCAqLwo+PiAgICAgICBjb3JlLT50aW1lcl9yZW1vdmUo
dHdpY2VfdGltZXJzX3JlbW92ZVswXSk7Cj4gCj4gRnJlZGlhbm8KPiAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
