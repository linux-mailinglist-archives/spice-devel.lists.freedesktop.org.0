Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C43BD6CA19
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 09:41:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58D046E32B;
	Thu, 18 Jul 2019 07:41:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55A3C6E32B
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:41:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 01FA330BD1B1
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:41:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EE08F611DB
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:41:00 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E49B61800205
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 07:41:00 +0000 (UTC)
Date: Thu, 18 Jul 2019 03:41:00 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1059769383.688115.1563435660902.JavaMail.zimbra@redhat.com>
In-Reply-To: <1414065668.26605938.1562570948815.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-2-fziglio@redhat.com>
 <1981159732.23872969.1561102479984.JavaMail.zimbra@redhat.com>
 <744622840.25083750.1561708132014.JavaMail.zimbra@redhat.com>
 <1414065668.26605938.1562570948815.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.7, 10.4.195.8]
Thread-Topic: char-device: Pull more code into
 red_char_device_send_to_client_tokens_absorb
Thread-Index: TrCfmAX5HJGCh5xGSqdQDbXBgpnwQkB1hswYnsmDAxrcBWEMyw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 18 Jul 2019 07:41:01 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gcGluZwo+
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBUaGUgMiBjYWxsZXJzIHJlZF9jaGFyX2RldmljZV9zZW5k
X3RvX2NsaWVudF90b2tlbnNfc2V0IGFuZAo+ID4gPiA+IHJlZF9jaGFyX2RldmljZV9zZW5kX3Rv
X2NsaWVudF90b2tlbnNfYWRkIGFyZSBkb2luZyBtb3N0bHkKPiA+ID4gPiB0aGUgc2FtZSB0aGlu
ZyBzbyBwdXQgY29tbW9uIGNvZGUgdG8KPiA+ID4gPiByZWRfY2hhcl9kZXZpY2Vfc2VuZF90b19j
bGllbnRfdG9rZW5zX2Fic29yYi4KPiA+ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVk
aWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgc2Vy
dmVyL2NoYXItZGV2aWNlLmMgfCA0MiArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDIzIGRl
bGV0aW9ucygtKQo+ID4gPiA+IAo+ID4gPiA+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvY2hhci1kZXZp
Y2UuYyBiL3NlcnZlci9jaGFyLWRldmljZS5jCj4gPiA+ID4gaW5kZXggMGY2YTI5ZDZmLi44OTU4
MWVhNDIgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvc2VydmVyL2NoYXItZGV2aWNlLmMKPiA+ID4gPiAr
KysgYi9zZXJ2ZXIvY2hhci1kZXZpY2UuYwo+ID4gPiA+IEBAIC0zNzcsMTAgKzM3NywyNCBAQCBz
dGF0aWMgdm9pZAo+ID4gPiA+IHJlZF9jaGFyX2RldmljZV9jbGllbnRfc2VuZF9xdWV1ZV9wdXNo
KFJlZENoYXJEZXZpY2VDbGllbnQgKmRldl9jbGllCj4gPiA+ID4gICAgICB9Cj4gPiA+ID4gIH0K
PiA+ID4gPiAgCj4gPiA+ID4gLXN0YXRpYyB2b2lkCj4gPiA+ID4gcmVkX2NoYXJfZGV2aWNlX3Nl
bmRfdG9fY2xpZW50X3Rva2Vuc19hYnNvcmIoUmVkQ2hhckRldmljZUNsaWVudAo+ID4gPiA+ICpk
ZXZfY2xpZW50LAo+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB1aW50MzJfdAo+ID4gPiA+IHRva2VucykKPiA+ID4gPiArc3Rh
dGljIHZvaWQKPiA+ID4gPiArcmVkX2NoYXJfZGV2aWNlX3NlbmRfdG9fY2xpZW50X3Rva2Vuc19h
YnNvcmIoUmVkQ2hhckRldmljZSAqZGV2LAo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBSZWRDbGllbnQgKmNsaWVudCwKPiA+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDMyX3QgdG9rZW5zLAo+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBib29s
IHJlc2V0KQo+ID4gPiA+ICB7Cj4gPiA+ID4gLSAgICBSZWRDaGFyRGV2aWNlICpkZXYgPSBkZXZf
Y2xpZW50LT5kZXY7Cj4gPiA+ID4gKyAgICBSZWRDaGFyRGV2aWNlQ2xpZW50ICpkZXZfY2xpZW50
Owo+ID4gPiA+ICsKPiA+ID4gPiArICAgIGRldl9jbGllbnQgPSByZWRfY2hhcl9kZXZpY2VfY2xp
ZW50X2ZpbmQoZGV2LCBjbGllbnQpOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgIGlmICghZGV2X2Ns
aWVudCkgewo+ID4gPiA+ICsgICAgICAgIHNwaWNlX2Vycm9yKCJjbGllbnQgd2Fzbid0IGZvdW5k
IGRldiAlcCBjbGllbnQgJXAiLCBkZXYsCj4gPiA+ID4gY2xpZW50KTsKPiA+ID4gPiArICAgICAg
ICByZXR1cm47Cj4gPiA+ID4gKyAgICB9Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgaWYgKHJlc2V0
KSB7Cj4gPiA+ID4gKyAgICAgICAgZGV2X2NsaWVudC0+bnVtX3NlbmRfdG9rZW5zID0gMDsKPiA+
ID4gPiArICAgIH0KPiA+ID4gPiAgICAgIGRldl9jbGllbnQtPm51bV9zZW5kX3Rva2VucyArPSB0
b2tlbnM7Cj4gPiA+ID4gIAo+ID4gPiA+ICAgICAgaWYgKGdfcXVldWVfZ2V0X2xlbmd0aChkZXZf
Y2xpZW50LT5zZW5kX3F1ZXVlKSkgewo+ID4gPiA+IEBAIC00MDMsMzIgKzQxNywxNCBAQCB2b2lk
Cj4gPiA+ID4gcmVkX2NoYXJfZGV2aWNlX3NlbmRfdG9fY2xpZW50X3Rva2Vuc19hZGQoUmVkQ2hh
ckRldmljZSAqZGV2LAo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIFJlZENsaWVudCAqY2xpZW50LAo+ID4gPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQzMl90IHRva2VucykKPiA+ID4gPiAg
ewo+ID4gPiA+IC0gICAgUmVkQ2hhckRldmljZUNsaWVudCAqZGV2X2NsaWVudDsKPiA+ID4gPiAt
Cj4gPiA+ID4gLSAgICBkZXZfY2xpZW50ID0gcmVkX2NoYXJfZGV2aWNlX2NsaWVudF9maW5kKGRl
diwgY2xpZW50KTsKPiA+ID4gPiAtCj4gPiA+ID4gLSAgICBpZiAoIWRldl9jbGllbnQpIHsKPiA+
ID4gPiAtICAgICAgICBzcGljZV9lcnJvcigiY2xpZW50IHdhc24ndCBmb3VuZCBkZXYgJXAgY2xp
ZW50ICVwIiwgZGV2LAo+ID4gPiA+IGNsaWVudCk7Cj4gPiA+ID4gLSAgICAgICAgcmV0dXJuOwo+
ID4gPiA+IC0gICAgfQo+ID4gPiA+IC0gICAgcmVkX2NoYXJfZGV2aWNlX3NlbmRfdG9fY2xpZW50
X3Rva2Vuc19hYnNvcmIoZGV2X2NsaWVudCwgdG9rZW5zKTsKPiA+ID4gPiArICAgIHJlZF9jaGFy
X2RldmljZV9zZW5kX3RvX2NsaWVudF90b2tlbnNfYWJzb3JiKGRldiwgY2xpZW50LCB0b2tlbnMs
Cj4gPiA+ID4gZmFsc2UpOwo+ID4gPiA+ICB9Cj4gPiA+ID4gIAo+ID4gPiA+ICB2b2lkIHJlZF9j
aGFyX2RldmljZV9zZW5kX3RvX2NsaWVudF90b2tlbnNfc2V0KFJlZENoYXJEZXZpY2UgKmRldiwK
PiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBS
ZWRDbGllbnQgKmNsaWVudCwKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB1aW50MzJfdCB0b2tlbnMpCj4gPiA+ID4gIHsKPiA+ID4gPiAtICAg
IFJlZENoYXJEZXZpY2VDbGllbnQgKmRldl9jbGllbnQ7Cj4gPiA+ID4gLQo+ID4gPiA+IC0gICAg
ZGV2X2NsaWVudCA9IHJlZF9jaGFyX2RldmljZV9jbGllbnRfZmluZChkZXYsIGNsaWVudCk7Cj4g
PiA+ID4gLQo+ID4gPiA+IC0gICAgaWYgKCFkZXZfY2xpZW50KSB7Cj4gPiA+ID4gLSAgICAgICAg
c3BpY2VfZXJyb3IoImNsaWVudCB3YXNuJ3QgZm91bmQgZGV2ICVwIGNsaWVudCAlcCIsIGRldiwK
PiA+ID4gPiBjbGllbnQpOwo+ID4gPiA+IC0gICAgICAgIHJldHVybjsKPiA+ID4gPiAtICAgIH0K
PiA+ID4gPiAtCj4gPiA+ID4gLSAgICBkZXZfY2xpZW50LT5udW1fc2VuZF90b2tlbnMgPSAwOwo+
ID4gPiA+IC0gICAgcmVkX2NoYXJfZGV2aWNlX3NlbmRfdG9fY2xpZW50X3Rva2Vuc19hYnNvcmIo
ZGV2X2NsaWVudCwgdG9rZW5zKTsKPiA+ID4gPiArICAgIHJlZF9jaGFyX2RldmljZV9zZW5kX3Rv
X2NsaWVudF90b2tlbnNfYWJzb3JiKGRldiwgY2xpZW50LCB0b2tlbnMsCj4gPiA+ID4gdHJ1ZSk7
Cj4gPiA+ID4gIH0KPiA+ID4gPiAgCj4gPiA+ID4gIC8qKioqKioqKioqKioqKioqKioqKioqKioq
KgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
