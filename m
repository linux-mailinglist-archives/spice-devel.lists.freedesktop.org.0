Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED8A57DEC
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 10:10:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FE5D6E833;
	Thu, 27 Jun 2019 08:10:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E989B6E833
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 08:10:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8D4C2308425B
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 08:10:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 83DE0608C6
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 08:10:46 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7B1FE206D1;
 Thu, 27 Jun 2019 08:10:46 +0000 (UTC)
Date: Thu, 27 Jun 2019 04:10:44 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jakub =?utf-8?Q?Jank=C5=AF?= <jjanku@redhat.com>
Message-ID: <36729848.24945003.1561623044903.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190626080222.8434-1-jjanku@redhat.com>
References: <20190626080222.8434-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.10]
Thread-Topic: spice-channel: return if has_error is TRUE in
 spice_channel_write_msg
Thread-Index: lgwiCSnd1Iu68HT8u+NCP2fr31FUrQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Thu, 27 Jun 2019 08:10:46 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] spice-channel: return if
 has_error is TRUE in spice_channel_write_msg
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

PiAKPiBBdm9pZCBsaW5lYXJpemluZyBpZiB0aGUgbWVzc2FnZSBpc24ndCB3cml0dGVuIG91dCBh
bnl3YXkKCiJsaW5lYXJpemluZyIgPyBXaGF0IGRvIHlvdSBtZWFuIGFib3V0IHRoYXQ/Ckxvb2tp
bmcgYXQgZGVmaW5pdGlvbnMgaXQgc2VlbXMgbm90IGNvcnJlY3QgdG8gbWUuCgo+IChzcGljZV9j
aGFubmVsX2ZsdXNoX3dpcmUgY2hlY2tzKCkgdGhpcyBjb25kaXRpb24gYXMgd2VsbCkuCj4gCj4g
VGhpcyBhbHNvIHNpbGVuY2VzIHRoZSBmb2xsb3dpbmcgZXJyb3I6Cj4gCj4gICAgIChzcGljeToz
MjA4Nyk6IEdTcGljZS1DUklUSUNBTCAqKjogMTY6MjI6MDMuMTQ3Ogo+ICAgICBzcGljZV9zZXNz
aW9uX2dldF9yZWFkX29ubHk6IGFzc2VydGlvbiAnU1BJQ0VfSVNfU0VTU0lPTihzZWxmKScgZmFp
bGVkCj4gCj4gdGhhdCBjYW4gYmUgc2VlbiBpZiB0aGUgY2hhbm5lbCBnZXRzIGRpc2Nvbm5lY3Rl
ZAo+IGJ5IHRoZSBzZXNzaW9uIHdoaWxlIGhhdmluZyBub24tZW1wdHkgd3JpdGUgcXVldWUuCj4g
Cj4gc3BpY2Vfc2Vzc2lvbl9jaGFubmVsX2Rlc3Ryb3koKSBzZXRzIGNoYW5uZWwtPnByaXYtPnNl
c3Npb24gdG8gTlVMTCwKPiBidXQgc3BpY2VfY2hhbm5lbF93cml0ZV9tc2coKSBzdWJzZXF1ZW50
bHkgYXR0ZW1wdHMgdG8gY2FsbAo+IHNwaWNlX3Nlc3Npb25fZ2V0X3JlYWRfb25seSgpIHdpdGgg
TlVMTCBwb2ludGVyLgo+IAoKTWlub3I6IHRoaXMgaXMgdGhlIGV4cGxhbmF0aW9uIHdoeSB0aGUg
ZXJyb3Igb24gdGhlIHByZXZpb3VzCnBhcmFncmFwaCBzaG91bGQgbm90IGJlIHRyZWF0ZWQgbGlr
ZSBhbiBlcnJvciwgSSB0aGluayBpdCBzaG91bGQKYmUgdGhlIHNhbWUgcGFyYWdyYXBocy4KCk9U
OiBtYXliZSBjaGFubmVsIHNlc3Npb24gc2hvdWxkIG5ldmVyIGJlIE5VTEw/Cgo+IFNpZ25lZC1v
ZmYtYnk6IEpha3ViIEphbmvFryA8amphbmt1QHJlZGhhdC5jb20+Cj4gLS0tCj4gIHNyYy9zcGlj
ZS1jaGFubmVsLmMgfCA1ICsrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykK
PiAKPiBkaWZmIC0tZ2l0IGEvc3JjL3NwaWNlLWNoYW5uZWwuYyBiL3NyYy9zcGljZS1jaGFubmVs
LmMKPiBpbmRleCA2MWRlMTc3Li5hYTgwZWRmIDEwMDY0NAo+IC0tLSBhL3NyYy9zcGljZS1jaGFu
bmVsLmMKPiArKysgYi9zcmMvc3BpY2UtY2hhbm5lbC5jCj4gQEAgLTg5Nyw2ICs4OTcsMTEgQEAg
c3RhdGljIHZvaWQgc3BpY2VfY2hhbm5lbF93cml0ZV9tc2coU3BpY2VDaGFubmVsCj4gKmNoYW5u
ZWwsIFNwaWNlTXNnT3V0ICpvdXQpCj4gICAgICBnX3JldHVybl9pZl9mYWlsKG91dCAhPSBOVUxM
KTsKPiAgICAgIGdfcmV0dXJuX2lmX2ZhaWwoY2hhbm5lbCA9PSBvdXQtPmNoYW5uZWwpOwo+ICAK
PiArICAgIGlmIChjaGFubmVsLT5wcml2LT5oYXNfZXJyb3IpIHsKPiArICAgICAgICBzcGljZV9t
c2dfb3V0X3VucmVmKG91dCk7Cj4gKyAgICAgICAgcmV0dXJuOwo+ICsgICAgfQo+ICsKPiAgICAg
IGlmIChvdXQtPnJvX2NoZWNrICYmCj4gICAgICAgICAgc3BpY2VfY2hhbm5lbF9nZXRfcmVhZF9v
bmx5KGNoYW5uZWwpKSB7Cj4gICAgICAgICAgZ193YXJuaW5nKCJUcnkgdG8gc2VuZCBtZXNzYWdl
IHdoaWxlIHJlYWQtb25seS4gUGxlYXNlIHJlcG9ydCBhCj4gICAgICAgICAgYnVnLiIpOwoKRnJl
ZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
