Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A2EC88F8
	for <lists+spice-devel@lfdr.de>; Wed,  2 Oct 2019 14:43:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FC88892BE;
	Wed,  2 Oct 2019 12:43:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAE1D892BE
 for <spice-devel@lists.freedesktop.org>; Wed,  2 Oct 2019 12:43:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 45A03806A5F
 for <spice-devel@lists.freedesktop.org>; Wed,  2 Oct 2019 12:43:21 +0000 (UTC)
Received: from lub.tlv (dhcp-4-213.tlv.redhat.com [10.35.4.213])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A7A0619C6A;
 Wed,  2 Oct 2019 12:43:20 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190926151320.18868-1-uril@redhat.com>
 <20190926151320.18868-5-uril@redhat.com>
 <1794021205.3459013.1569570439243.JavaMail.zimbra@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <11ce59c9-27ae-b520-4971-41666a450cbd@redhat.com>
Date: Wed, 2 Oct 2019 15:43:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <1794021205.3459013.1569570439243.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.67]); Wed, 02 Oct 2019 12:43:21 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-streaming-agent PATCH 4/4] Prepare for
 v0.3 release
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

T24gOS8yNy8xOSAxMDo0NyBBTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+Pgo+PiAxLiB1cGRh
dGUgTkVXUwo+PiAyLiB1cGRhdGUgY29uZmlndXJlLmFjCj4+IDMuIHVwZGF0ZSBzcGVjIGZpbGUK
Pj4KPj4gU2lnbmVkLW9mZi1ieTogVXJpIEx1YmxpbiA8dXJpbEByZWRoYXQuY29tPgo+PiAtLS0K
Pj4gICBORVdTICAgICAgICAgICAgICAgICAgICAgICAgICB8IDE3ICsrKysrKysrKysrKysrKysr
Cj4+ICAgY29uZmlndXJlLmFjICAgICAgICAgICAgICAgICAgfCAgMiArLQo+PiAgIHNwaWNlLXN0
cmVhbWluZy1hZ2VudC5zcGVjLmluIHwgIDMgKysrCj4+ICAgMyBmaWxlcyBjaGFuZ2VkLCAyMSBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9ORVdTIGIvTkVX
Uwo+PiBpbmRleCBhZWRmMDdhLi4yYmQ2YjE4IDEwMDY0NAo+PiAtLS0gYS9ORVdTCj4+ICsrKyBi
L05FV1MKPj4gQEAgLTEsMyArMSwyMCBAQAo+PiArTWFqb3IgY2hhbmdlcyBpbiAwLjM6Cj4+ICs9
PT09PT09PT09PT09PT09PT09PT0KPj4gKy0gSW1wcm92ZSB0aGUgaW52YWxpZCBvcHRpb24gYXJn
dW1lbnQgKC1jKSBlcnJvciBtZXNzYWdlCj4+ICstIEltcHJvdmUgdGhlIGZyYW1lIGxvZyBtZXNz
YWdlcwo+PiArLSBNYWtlIHRoZSB0cnktY2F0Y2ggYmxvY2sgaW4gbWFpbigpIGEgY2F0Y2gtYWxs
Cj4+ICstIFNldCBkZWZhdWx0IHN5c2xvZyBtYXNrIHRvIGEgbG93ZXIgbGV2ZWwKPj4gKy0gRml4
IHNvbWUgY2xhbmcgYnVpbGQgZXJyb3JzCj4+ICstIEFkZGluZyBnc3RyZWFtZXIgYmFzZWQgcGx1
Z2luCj4+ICstIE1ha2UgZXJyb3IuaHBwIGFuZCB0aGUgRXJyb3IgY2xhc3MgYSBwdWJsaWMgQVBJ
Cj4+ICstIEV4cG9ydCBzeW1ib2xzIGluIHRoZSBiaW5hcnkgdG8gYmUgdXNlZCBieSBwbHVnaW5z
Cj4+ICstIEludGVyZmFjZSArIGltcGxlbWVudGF0aW9uIG9mIGdldHRpbmcgZGV2aWNlIGRpc3Bs
YXkgaW5mbwo+PiArLSBTZW5kIHRoZSBHcmFwaGljc0RldmljZUluZm8gdG8gdGhlIHNlcnZlcgo+
PiArLSBBZGQgc3VwcG9ydCBmb3IgbG9nZ2luZyBzdGF0aXN0aWNzIGZyb20gcGx1Z2lucwo+PiAr
LSBFbmFibGUgYnVpbGRpbmcgd2l0aCBHQ0MgOQo+PiArLSBBZGQgYSBtYW4gcGFnZQo+PiArCj4+
ICsKPj4gICBNYWpvciBjaGFuZ2VzIGluIDAuMjoKPj4gICA9PT09PT09PT09PT09PT09PT09PT0K
Pj4gICAtIEZpcnN0IHJlbGVhc2UKPj4gZGlmZiAtLWdpdCBhL2NvbmZpZ3VyZS5hYyBiL2NvbmZp
Z3VyZS5hYwo+PiBpbmRleCAxYzc3ODhiLi5iYWIxY2M3IDEwMDY0NAo+PiAtLS0gYS9jb25maWd1
cmUuYWMKPj4gKysrIGIvY29uZmlndXJlLmFjCj4+IEBAIC0xLDYgKzEsNiBAQAo+PiAgIEFDX1BS
RVJFUShbMi41N10pCj4+ICAgCj4+IC1BQ19JTklUKHNwaWNlLXN0cmVhbWluZy1hZ2VudCwgMC4y
LAo+PiArQUNfSU5JVChzcGljZS1zdHJlYW1pbmctYWdlbnQsIDAuMywKPj4gICAgICAgICAgIFtz
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmddKQo+PiAgIAo+PiAgIEFNX0NPTkZJR19I
RUFERVIoW2NvbmZpZy5oXSkKPj4gZGlmZiAtLWdpdCBhL3NwaWNlLXN0cmVhbWluZy1hZ2VudC5z
cGVjLmluIGIvc3BpY2Utc3RyZWFtaW5nLWFnZW50LnNwZWMuaW4KPj4gaW5kZXggZmNiODIzMS4u
OGZhZWVjZiAxMDA2NDQKPj4gLS0tIGEvc3BpY2Utc3RyZWFtaW5nLWFnZW50LnNwZWMuaW4KPj4g
KysrIGIvc3BpY2Utc3RyZWFtaW5nLWFnZW50LnNwZWMuaW4KPj4gQEAgLTc3LDYgKzc3LDkgQEAg
ZmkKPj4gICAle19saWJkaXJ9L3BrZ2NvbmZpZwo+PiAgIAo+PiAgICVjaGFuZ2Vsb2cKPj4gKyog
VGh1IFNlcCAxOSAyMDE5IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4gLSAwLjMtMQo+PiAr
LSBVcGRhdGUgdG8gMC4zIHJlbGVhc2UKPj4gKwo+PiAgICogVGh1IE1heSAzMSAyMDE4IFVyaSBM
dWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4gLSAwLjItMQo+PiAgIC0gRmlyc3QgcmVsZWFzZQo+PiAg
IAo+IAo+IFN1cmUgdGhlIHVwZGF0ZSB0byBzcGVjIGlzIG5lY2Vzc2FyeT8KSXQganVzdCBhIGJp
dCBtb3JlIGNvbnNpc3RlbnQgKHRoZSBnZW5lcmF0ZWQgc3BlYyB3aWxsCmhhdmUgMC4zIHZlcnNp
b24gYW5kIDAuMyBjaGFuZ2Vsb2cpLgoKSWYgeW91IHByZWZlciBJIGNhbiBkcm9wIHRoZSBzcGVj
LWZpbGUgY2hhbmdlLgoKPiAKPiBPdGhlcndpc2UsCj4gICAgIEFja2VkLWJ5OiBGcmVkaWFubyBa
aWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KClRoYW5rcywKICAgICBVcmkuCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
