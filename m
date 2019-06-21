Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 525FA4E146
	for <lists+spice-devel@lfdr.de>; Fri, 21 Jun 2019 09:34:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB1D46E848;
	Fri, 21 Jun 2019 07:34:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 748986E848
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:34:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1E09285A04
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:34:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 12FD6608A7
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:34:40 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 09465206D1
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Jun 2019 07:34:40 +0000 (UTC)
Date: Fri, 21 Jun 2019 03:34:39 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1981159732.23872969.1561102479984.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190530142254.28937-2-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-2-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.12, 10.4.195.2]
Thread-Topic: char-device: Pull more code into
 red_char_device_send_to_client_tokens_absorb
Thread-Index: TrCfmAX5HJGCh5xGSqdQDbXBgpnwQg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Fri, 21 Jun 2019 07:34:40 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 02/13] char-device: Pull more
 code into red_char_device_send_to_client_tokens_absorb
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

cGluZwoKPiAKPiBUaGUgMiBjYWxsZXJzIHJlZF9jaGFyX2RldmljZV9zZW5kX3RvX2NsaWVudF90
b2tlbnNfc2V0IGFuZAo+IHJlZF9jaGFyX2RldmljZV9zZW5kX3RvX2NsaWVudF90b2tlbnNfYWRk
IGFyZSBkb2luZyBtb3N0bHkKPiB0aGUgc2FtZSB0aGluZyBzbyBwdXQgY29tbW9uIGNvZGUgdG8K
PiByZWRfY2hhcl9kZXZpY2Vfc2VuZF90b19jbGllbnRfdG9rZW5zX2Fic29yYi4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiAtLS0KPiAg
c2VydmVyL2NoYXItZGV2aWNlLmMgfCA0MiArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDIzIGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvY2hhci1kZXZpY2UuYyBiL3NlcnZlci9j
aGFyLWRldmljZS5jCj4gaW5kZXggMGY2YTI5ZDZmLi44OTU4MWVhNDIgMTAwNjQ0Cj4gLS0tIGEv
c2VydmVyL2NoYXItZGV2aWNlLmMKPiArKysgYi9zZXJ2ZXIvY2hhci1kZXZpY2UuYwo+IEBAIC0z
NzcsMTAgKzM3NywyNCBAQCBzdGF0aWMgdm9pZAo+IHJlZF9jaGFyX2RldmljZV9jbGllbnRfc2Vu
ZF9xdWV1ZV9wdXNoKFJlZENoYXJEZXZpY2VDbGllbnQgKmRldl9jbGllCj4gICAgICB9Cj4gIH0K
PiAgCj4gLXN0YXRpYyB2b2lkIHJlZF9jaGFyX2RldmljZV9zZW5kX3RvX2NsaWVudF90b2tlbnNf
YWJzb3JiKFJlZENoYXJEZXZpY2VDbGllbnQKPiAqZGV2X2NsaWVudCwKPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDMyX3QgdG9r
ZW5zKQo+ICtzdGF0aWMgdm9pZAo+ICtyZWRfY2hhcl9kZXZpY2Vfc2VuZF90b19jbGllbnRfdG9r
ZW5zX2Fic29yYihSZWRDaGFyRGV2aWNlICpkZXYsCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIFJlZENsaWVudCAqY2xpZW50LAo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1aW50MzJfdCB0b2tlbnMsCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJvb2wgcmVzZXQpCj4gIHsK
PiAtICAgIFJlZENoYXJEZXZpY2UgKmRldiA9IGRldl9jbGllbnQtPmRldjsKPiArICAgIFJlZENo
YXJEZXZpY2VDbGllbnQgKmRldl9jbGllbnQ7Cj4gKwo+ICsgICAgZGV2X2NsaWVudCA9IHJlZF9j
aGFyX2RldmljZV9jbGllbnRfZmluZChkZXYsIGNsaWVudCk7Cj4gKwo+ICsgICAgaWYgKCFkZXZf
Y2xpZW50KSB7Cj4gKyAgICAgICAgc3BpY2VfZXJyb3IoImNsaWVudCB3YXNuJ3QgZm91bmQgZGV2
ICVwIGNsaWVudCAlcCIsIGRldiwgY2xpZW50KTsKPiArICAgICAgICByZXR1cm47Cj4gKyAgICB9
Cj4gKwo+ICsgICAgaWYgKHJlc2V0KSB7Cj4gKyAgICAgICAgZGV2X2NsaWVudC0+bnVtX3NlbmRf
dG9rZW5zID0gMDsKPiArICAgIH0KPiAgICAgIGRldl9jbGllbnQtPm51bV9zZW5kX3Rva2VucyAr
PSB0b2tlbnM7Cj4gIAo+ICAgICAgaWYgKGdfcXVldWVfZ2V0X2xlbmd0aChkZXZfY2xpZW50LT5z
ZW5kX3F1ZXVlKSkgewo+IEBAIC00MDMsMzIgKzQxNywxNCBAQCB2b2lkCj4gcmVkX2NoYXJfZGV2
aWNlX3NlbmRfdG9fY2xpZW50X3Rva2Vuc19hZGQoUmVkQ2hhckRldmljZSAqZGV2LAo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJlZENsaWVudCAqY2xp
ZW50LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVp
bnQzMl90IHRva2VucykKPiAgewo+IC0gICAgUmVkQ2hhckRldmljZUNsaWVudCAqZGV2X2NsaWVu
dDsKPiAtCj4gLSAgICBkZXZfY2xpZW50ID0gcmVkX2NoYXJfZGV2aWNlX2NsaWVudF9maW5kKGRl
diwgY2xpZW50KTsKPiAtCj4gLSAgICBpZiAoIWRldl9jbGllbnQpIHsKPiAtICAgICAgICBzcGlj
ZV9lcnJvcigiY2xpZW50IHdhc24ndCBmb3VuZCBkZXYgJXAgY2xpZW50ICVwIiwgZGV2LCBjbGll
bnQpOwo+IC0gICAgICAgIHJldHVybjsKPiAtICAgIH0KPiAtICAgIHJlZF9jaGFyX2RldmljZV9z
ZW5kX3RvX2NsaWVudF90b2tlbnNfYWJzb3JiKGRldl9jbGllbnQsIHRva2Vucyk7Cj4gKyAgICBy
ZWRfY2hhcl9kZXZpY2Vfc2VuZF90b19jbGllbnRfdG9rZW5zX2Fic29yYihkZXYsIGNsaWVudCwg
dG9rZW5zLAo+IGZhbHNlKTsKPiAgfQo+ICAKPiAgdm9pZCByZWRfY2hhcl9kZXZpY2Vfc2VuZF90
b19jbGllbnRfdG9rZW5zX3NldChSZWRDaGFyRGV2aWNlICpkZXYsCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUmVkQ2xpZW50ICpjbGllbnQsCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDMyX3QgdG9r
ZW5zKQo+ICB7Cj4gLSAgICBSZWRDaGFyRGV2aWNlQ2xpZW50ICpkZXZfY2xpZW50Owo+IC0KPiAt
ICAgIGRldl9jbGllbnQgPSByZWRfY2hhcl9kZXZpY2VfY2xpZW50X2ZpbmQoZGV2LCBjbGllbnQp
Owo+IC0KPiAtICAgIGlmICghZGV2X2NsaWVudCkgewo+IC0gICAgICAgIHNwaWNlX2Vycm9yKCJj
bGllbnQgd2Fzbid0IGZvdW5kIGRldiAlcCBjbGllbnQgJXAiLCBkZXYsIGNsaWVudCk7Cj4gLSAg
ICAgICAgcmV0dXJuOwo+IC0gICAgfQo+IC0KPiAtICAgIGRldl9jbGllbnQtPm51bV9zZW5kX3Rv
a2VucyA9IDA7Cj4gLSAgICByZWRfY2hhcl9kZXZpY2Vfc2VuZF90b19jbGllbnRfdG9rZW5zX2Fi
c29yYihkZXZfY2xpZW50LCB0b2tlbnMpOwo+ICsgICAgcmVkX2NoYXJfZGV2aWNlX3NlbmRfdG9f
Y2xpZW50X3Rva2Vuc19hYnNvcmIoZGV2LCBjbGllbnQsIHRva2VucywgdHJ1ZSk7Cj4gIH0KPiAg
Cj4gIC8qKioqKioqKioqKioqKioqKioqKioqKioqKgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
