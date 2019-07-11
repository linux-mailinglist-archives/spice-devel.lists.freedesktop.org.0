Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D84265820
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 15:53:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9541D6E24D;
	Thu, 11 Jul 2019 13:53:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DBA66E248
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:53:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C32F583F42
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:53:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BCC3E600CD
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:53:15 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B542541F40;
 Thu, 11 Jul 2019 13:53:15 +0000 (UTC)
Date: Thu, 11 Jul 2019 09:53:14 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <723767135.27260064.1562853194192.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190711132532.gpae53dqbuspkh2g@wingsuit>
References: <20190711130054.17867-1-fziglio@redhat.com>
 <20190711130054.17867-6-fziglio@redhat.com>
 <20190711132532.gpae53dqbuspkh2g@wingsuit>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.10]
Thread-Topic: usb-device-manager: Do not give warnings for supported
 configuration
Thread-Index: 32KtPTG9S2uFgiWvwy82lOZz7pA5ow==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Thu, 11 Jul 2019 13:53:15 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 6/7] usb-device-manager: Do not
 give warnings for supported configuration
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

PiAKPiBIaSwKPiAKPiBPbiBUaHUsIEp1bCAxMSwgMjAxOSBhdCAwMjowMDo1M1BNICswMTAwLCBG
cmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8g
PGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gIHNyYy91c2ItZGV2aWNlLW1hbmFnZXIu
YyB8IDEyICsrKysrKysrKy0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmljZS1tYW5h
Z2VyLmMgYi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKPiA+IGluZGV4IGMyNzBlMWNmLi40OTYw
NjY3ZSAxMDA2NDQKPiA+IC0tLSBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwo+ID4gKysrIGIv
c3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCj4gPiBAQCAtMTY2NCw3ICsxNjY0LDkgQEAgZ2Jvb2xl
YW4gX3VzYmRrX2hpZGVyX3ByZXBhcmUoU3BpY2VVc2JEZXZpY2VNYW5hZ2VyCj4gPiAqbWFuYWdl
cikKPiA+ICB7Cj4gPiAgICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlclByaXZhdGUgKnByaXYgPSBt
YW5hZ2VyLT5wcml2Owo+ID4gIAo+ID4gLSAgICBnX3JldHVybl92YWxfaWZfZmFpbChwcml2LT51
c2Jka19hcGkgIT0gTlVMTCwgRkFMU0UpOwo+ID4gKyAgICBpZiAocHJpdi0+dXNiZGtfYXBpID09
IE5VTEwpIHsKPiA+ICsgICAgICAgIHJldHVybiBGQUxTRTsKPiA+ICsgICAgfQo+ID4gIAo+ID4g
ICAgICBpZiAocHJpdi0+dXNiZGtfaGlkZXJfaGFuZGxlID09IE5VTEwpIHsKPiA+ICAgICAgICAg
IHByaXYtPnVzYmRrX2hpZGVyX2hhbmRsZSA9Cj4gPiAgICAgICAgICB1c2Jka19jcmVhdGVfaGlk
ZXJfaGFuZGxlKHByaXYtPnVzYmRrX2FwaSk7Cj4gPiBAQCAtMTY4Miw3ICsxNjg0LDkgQEAgdm9p
ZCBfdXNiZGtfaGlkZXJfY2xlYXIoU3BpY2VVc2JEZXZpY2VNYW5hZ2VyCj4gPiAqbWFuYWdlcikK
PiA+ICB7Cj4gPiAgICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlclByaXZhdGUgKnByaXYgPSBtYW5h
Z2VyLT5wcml2Owo+ID4gIAo+ID4gLSAgICBnX3JldHVybl9pZl9mYWlsKHByaXYtPnVzYmRrX2Fw
aSAhPSBOVUxMKTsKPiA+ICsgICAgaWYgKHByaXYtPnVzYmRrX2FwaSA9PSBOVUxMKSB7Cj4gPiAr
ICAgICAgICByZXR1cm47Cj4gPiArICAgIH0KPiA+ICAKPiA+ICAgICAgaWYgKHByaXYtPnVzYmRr
X2hpZGVyX2hhbmRsZSAhPSBOVUxMKSB7Cj4gPiAgICAgICAgICB1c2Jka19jbGVhcl9oaWRlX3J1
bGVzKHByaXYtPnVzYmRrX2FwaSwgcHJpdi0+dXNiZGtfaGlkZXJfaGFuZGxlKTsKPiA+IEBAIC0x
Njk2LDcgKzE3MDAsOSBAQCB2b2lkIF91c2Jka19oaWRlcl91cGRhdGUoU3BpY2VVc2JEZXZpY2VN
YW5hZ2VyCj4gPiAqbWFuYWdlcikKPiA+ICB7Cj4gPiAgICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdl
clByaXZhdGUgKnByaXYgPSBtYW5hZ2VyLT5wcml2Owo+ID4gIAo+ID4gLSAgICBnX3JldHVybl9p
Zl9mYWlsKHByaXYtPnVzYmRrX2FwaSAhPSBOVUxMKTsKPiA+ICsgICAgaWYgKHByaXYtPnVzYmRr
X2FwaSA9PSBOVUxMKSB7Cj4gPiArICAgICAgICByZXR1cm47Cj4gPiArICAgIH0KPiAKPiBKdXN0
IHRvIGJlIHN1cmUgdGhhdCB3ZSBzdGlsbCBnZXQgYSB3YXJuaW5nIG9mIHNvbWUgc29ydCBvbgo+
IFdpbmRvd3Mgd2l0aG91dCBVU0JEayBpbnN0YWxsZWQsIHByZXR0eSBzdXJlIHRoZXJlIGlzIG1l
c3NhZ2UKPiBhYm91dCBpdCBpbiB0aGUgY29uc29sZSBhbmQgcHJldHR5IHN1cmUgYXMgd2VsbCB0
aGF0IHRob3NlCj4gQ1JJVElDQUxzIHdlcmUgdG9vIG11Y2gKPiAKClRoZXJlJ3MgdGhpcyBjb2Rl
CgogICAgaWYgKHVzYmRrX2lzX2RyaXZlcl9pbnN0YWxsZWQoKSkgewogICAgICAgIHByaXYtPnVz
YmRrX2FwaSA9IHVzYmRrX2FwaV9sb2FkKCk7CiAgICB9IGVsc2UgewogICAgICAgIHNwaWNlX2Rl
YnVnKCJVc2JEayBkcml2ZXIgaXMgbm90IGluc3RhbGxlZCIpOwogICAgfQoKdXNiZGtfYXBpX2xv
YWQgZ2l2ZSBhIHByb3BlciB3YXJuaW5nIGlmIGl0IGZhaWxzLgpNYXliZSB0aGUgc3BpY2VfZGVi
dWcgc2hvdWxkIGJlIHR1cm5lZCB0byBhIHdhcm5pbmc/Ck9yIGlzIGl0IG5vdCBhbiBpc3N1ZT8K
Cj4gPiAgCj4gPiAgICAgIGlmIChwcml2LT5hdXRvX2Nvbm5lY3RfZmlsdGVyID09IE5VTEwpIHsK
PiA+ICAgICAgICAgIFNQSUNFX0RFQlVHKCJObyBhdXRvcmVkaXJlY3QgcnVsZXMsIG5vIGhpZGVy
IHNldHVwIG5lZWRlZCIpOwoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
