Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8487D16314
	for <lists+spice-devel@lfdr.de>; Tue,  7 May 2019 13:51:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02E0C89C8D;
	Tue,  7 May 2019 11:51:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FE1B89BA3
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 11:50:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 08CBF3091786
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 11:50:58 +0000 (UTC)
Received: from lub.tlv (dhcp-4-231.tlv.redhat.com [10.35.4.231])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A13861B6B;
 Tue,  7 May 2019 11:50:57 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190507094855.20634-1-uril@redhat.com>
 <899502649.17159706.1557222825756.JavaMail.zimbra@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <2a9c0a8a-872c-74a0-c821-54aa93a8c347@redhat.com>
Date: Tue, 7 May 2019 14:50:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <899502649.17159706.1557222825756.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Tue, 07 May 2019 11:50:58 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] build: do not warn about
 address-of-packed-member
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

T24gNS83LzE5IDEyOjUzIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4+Cj4+IFRoZSBnY2Mg
d2FybmluZyBhZGRyZXNzLW9mLXBhY2tlZC1tZW1iZXIgaXMgbmV3IGFuZCBvbiBieQo+PiBkZWZh
dWx0IGluIGdjYyA5Lgo+Pgo+PiBNYW55IG9mIHRoZSBzdHJ1Y3R1cmVzIHNlbnQgb3ZlciB0aGUg
bmV0d29yayBhcmUgcGFja2VkCj4+IGFuZCB3aXRoIHVuYWxpZ25lZCBmaWVsZHMuCj4+Cj4+IFRo
aXMgYnJlYWtzIHRoZSBidWlsZCAtLSBkdWUgdG8gLVdlcnJvci4KPj4gVGVsbCBnY2MgdG8gbm90
IHdhcm4gYWJvdXQgaXQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFVyaSBMdWJsaW4gPHVyaWxAcmVk
aGF0LmNvbT4KPiAKPiBXaGF0IGFyZSB0aGUgd2FybmluZyBleGFjdGx5IGZvcj8KCmh0dHBzOi8v
Z2NjLmdudS5vcmcvZ2NjLTkvY2hhbmdlcy5odG1sCgogICAtV2FkZHJlc3Mtb2YtcGFja2VkLW1l
bWJlciwgZW5hYmxlZCBieSBkZWZhdWx0LCB3YXJucyBhYm91dCBhbgogICAgIHVuYWxpZ25lZCBw
b2ludGVyIHZhbHVlIGZyb20gdGhlIGFkZHJlc3Mgb2YgYSBwYWNrZWQgbWVtYmVyCiAgICAgb2Yg
YSBzdHJ1Y3Qgb3IgdW5pb24uCgoKPiBTdXJlIHdlIGRvbid0IHdhbnQgdG8gZml4IHRoZW0/CgpJ
IHRoaW5rIGl0IHdvdWxkIG5vdCBiZSB0b28gaGFyZCB0byBvdmVyY29tZSB0aGlzIHNwZWNpZmlj
IHdhcm5pbmcsIGJ5CmNvcHlpbmcgdGhlIHN0cnVjdHVyZXMsIG9yIHNlbmRpbmcgdGhlaXIgY29u
dGVudCBpbnN0ZWFkIG9mIGEgcG9pbnRlci4KV2Ugd291bGQgc3RpbGwgaGF2ZSB1bmFsaWduZWQg
YWNjZXNzLCBidXQgbm90IGZvciB1bmFsaWduZWQgcG9pbnRlcnMuCgpJdCdzIG5vdCBlYXN5IHRv
IGNoYW5nZSB0aGUgc3RydWN0dXJlcyB0aGVtc2VsdmVzLgpGb3IgZXhhbXBsZSBpZiB3ZSBjaGFu
Z2UgU3BpY2VNaWdyYXRlRGF0YURpc3BsYXkgdG8gbWFrZSBpdCBhbGlnbmVkLAp3ZSBsaWtlbHkg
YnJlYWsgbWlncmF0aW9uIGZyb20gb2xkZXIgdmVyc2lvbnMuCgpVcmkuCgo+IAo+PiAtLS0KPj4g
ICBtNC9tYW55d2FybmluZ3MubTQgfCAxICsKPj4gICBtZXNvbi5idWlsZCAgICAgICAgfCAxICsK
Pj4gICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
bTQvbWFueXdhcm5pbmdzLm00IGIvbTQvbWFueXdhcm5pbmdzLm00Cj4+IGluZGV4IDRmNzAxZjRl
YS4uMjA1NDNkNGE0IDEwMDY0NAo+PiAtLS0gYS9tNC9tYW55d2FybmluZ3MubTQKPj4gKysrIGIv
bTQvbWFueXdhcm5pbmdzLm00Cj4+IEBAIC0xNzQsNiArMTc0LDcgQEAgQUNfREVGVU4oW2dsX01B
TllXQVJOX0FMTF9HQ0NdLAo+PiAgICAgICAtV211bHRpY2hhciBcCj4+ICAgICAgIC1XbmFycm93
aW5nIFwKPj4gICAgICAgLVduZXN0ZWQtZXh0ZXJucyBcCj4+ICsgICAgLVduby1hZGRyZXNzLW9m
LXBhY2tlZC1tZW1iZXIgXAo+PiAgICAgICAtV25vbm51bGwgXAo+PiAgICAgICAtV25vbm51bGwt
Y29tcGFyZSBcCj4+ICAgICAgIC1XbnVsbC1kZXJlZmVyZW5jZSBcCj4+IGRpZmYgLS1naXQgYS9t
ZXNvbi5idWlsZCBiL21lc29uLmJ1aWxkCj4+IGluZGV4IDkzZmJkZmZmOS4uYjhkZGU5NmE4IDEw
MDY0NAo+PiAtLS0gYS9tZXNvbi5idWlsZAo+PiArKysgYi9tZXNvbi5idWlsZAo+PiBAQCAtNDIs
NiArNDIsNyBAQCBzcGljZV9zZXJ2ZXJfZ2xvYmFsX2NmbGFncyA9IFsnLURTUElDRV9TRVJWRVJf
SU5URVJOQUwnLAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICctV2FsbCcsCj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJy1XZXh0cmEnLAo+PiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICctV25vLXNpZ24tY29tcGFyZScsCj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAnLVduby1hZGRyZXNzLW9mLXBhY2tlZC1tZW1iZXInLAo+PiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICctV25vLXVudXNlZC1wYXJhbWV0ZXInXQo+
PiAgIAo+PiAgIGNvbXBpbGVyID0gbWVzb24uZ2V0X2NvbXBpbGVyKCdjJykKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
