Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E646561B42
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 09:29:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77C5E89B0B;
	Mon,  8 Jul 2019 07:29:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5191E89B0B
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:29:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EC8A5307D910
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:29:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E025A2B9EF
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:29:08 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D69AC1833001
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 07:29:08 +0000 (UTC)
Date: Mon, 8 Jul 2019 03:29:08 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1414065668.26605938.1562570948815.JavaMail.zimbra@redhat.com>
In-Reply-To: <744622840.25083750.1561708132014.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-2-fziglio@redhat.com>
 <1981159732.23872969.1561102479984.JavaMail.zimbra@redhat.com>
 <744622840.25083750.1561708132014.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.6]
Thread-Topic: char-device: Pull more code into
 red_char_device_send_to_client_tokens_absorb
Thread-Index: TrCfmAX5HJGCh5xGSqdQDbXBgpnwQkB1hswYnsmDAxo=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Mon, 08 Jul 2019 07:29:08 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gVGhlIDIg
Y2FsbGVycyByZWRfY2hhcl9kZXZpY2Vfc2VuZF90b19jbGllbnRfdG9rZW5zX3NldCBhbmQKPiA+
ID4gcmVkX2NoYXJfZGV2aWNlX3NlbmRfdG9fY2xpZW50X3Rva2Vuc19hZGQgYXJlIGRvaW5nIG1v
c3RseQo+ID4gPiB0aGUgc2FtZSB0aGluZyBzbyBwdXQgY29tbW9uIGNvZGUgdG8KPiA+ID4gcmVk
X2NoYXJfZGV2aWNlX3NlbmRfdG9fY2xpZW50X3Rva2Vuc19hYnNvcmIuCj4gPiA+IAo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+ID4g
LS0tCj4gPiA+ICBzZXJ2ZXIvY2hhci1kZXZpY2UuYyB8IDQyICsrKysrKysrKysrKysrKysrKyst
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlv
bnMoKyksIDIzIGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9j
aGFyLWRldmljZS5jIGIvc2VydmVyL2NoYXItZGV2aWNlLmMKPiA+ID4gaW5kZXggMGY2YTI5ZDZm
Li44OTU4MWVhNDIgMTAwNjQ0Cj4gPiA+IC0tLSBhL3NlcnZlci9jaGFyLWRldmljZS5jCj4gPiA+
ICsrKyBiL3NlcnZlci9jaGFyLWRldmljZS5jCj4gPiA+IEBAIC0zNzcsMTAgKzM3NywyNCBAQCBz
dGF0aWMgdm9pZAo+ID4gPiByZWRfY2hhcl9kZXZpY2VfY2xpZW50X3NlbmRfcXVldWVfcHVzaChS
ZWRDaGFyRGV2aWNlQ2xpZW50ICpkZXZfY2xpZQo+ID4gPiAgICAgIH0KPiA+ID4gIH0KPiA+ID4g
IAo+ID4gPiAtc3RhdGljIHZvaWQKPiA+ID4gcmVkX2NoYXJfZGV2aWNlX3NlbmRfdG9fY2xpZW50
X3Rva2Vuc19hYnNvcmIoUmVkQ2hhckRldmljZUNsaWVudAo+ID4gPiAqZGV2X2NsaWVudCwKPiA+
ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHVpbnQzMl90Cj4gPiA+IHRva2VucykKPiA+ID4gK3N0YXRpYyB2b2lkCj4gPiA+ICtyZWRf
Y2hhcl9kZXZpY2Vfc2VuZF90b19jbGllbnRfdG9rZW5zX2Fic29yYihSZWRDaGFyRGV2aWNlICpk
ZXYsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBS
ZWRDbGllbnQgKmNsaWVudCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHVpbnQzMl90IHRva2VucywKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGJvb2wgcmVzZXQpCj4gPiA+ICB7Cj4gPiA+IC0gICAg
UmVkQ2hhckRldmljZSAqZGV2ID0gZGV2X2NsaWVudC0+ZGV2Owo+ID4gPiArICAgIFJlZENoYXJE
ZXZpY2VDbGllbnQgKmRldl9jbGllbnQ7Cj4gPiA+ICsKPiA+ID4gKyAgICBkZXZfY2xpZW50ID0g
cmVkX2NoYXJfZGV2aWNlX2NsaWVudF9maW5kKGRldiwgY2xpZW50KTsKPiA+ID4gKwo+ID4gPiAr
ICAgIGlmICghZGV2X2NsaWVudCkgewo+ID4gPiArICAgICAgICBzcGljZV9lcnJvcigiY2xpZW50
IHdhc24ndCBmb3VuZCBkZXYgJXAgY2xpZW50ICVwIiwgZGV2LAo+ID4gPiBjbGllbnQpOwo+ID4g
PiArICAgICAgICByZXR1cm47Cj4gPiA+ICsgICAgfQo+ID4gPiArCj4gPiA+ICsgICAgaWYgKHJl
c2V0KSB7Cj4gPiA+ICsgICAgICAgIGRldl9jbGllbnQtPm51bV9zZW5kX3Rva2VucyA9IDA7Cj4g
PiA+ICsgICAgfQo+ID4gPiAgICAgIGRldl9jbGllbnQtPm51bV9zZW5kX3Rva2VucyArPSB0b2tl
bnM7Cj4gPiA+ICAKPiA+ID4gICAgICBpZiAoZ19xdWV1ZV9nZXRfbGVuZ3RoKGRldl9jbGllbnQt
PnNlbmRfcXVldWUpKSB7Cj4gPiA+IEBAIC00MDMsMzIgKzQxNywxNCBAQCB2b2lkCj4gPiA+IHJl
ZF9jaGFyX2RldmljZV9zZW5kX3RvX2NsaWVudF90b2tlbnNfYWRkKFJlZENoYXJEZXZpY2UgKmRl
diwKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
UmVkQ2xpZW50ICpjbGllbnQsCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHVpbnQzMl90IHRva2VucykKPiA+ID4gIHsKPiA+ID4gLSAgICBSZWRD
aGFyRGV2aWNlQ2xpZW50ICpkZXZfY2xpZW50Owo+ID4gPiAtCj4gPiA+IC0gICAgZGV2X2NsaWVu
dCA9IHJlZF9jaGFyX2RldmljZV9jbGllbnRfZmluZChkZXYsIGNsaWVudCk7Cj4gPiA+IC0KPiA+
ID4gLSAgICBpZiAoIWRldl9jbGllbnQpIHsKPiA+ID4gLSAgICAgICAgc3BpY2VfZXJyb3IoImNs
aWVudCB3YXNuJ3QgZm91bmQgZGV2ICVwIGNsaWVudCAlcCIsIGRldiwKPiA+ID4gY2xpZW50KTsK
PiA+ID4gLSAgICAgICAgcmV0dXJuOwo+ID4gPiAtICAgIH0KPiA+ID4gLSAgICByZWRfY2hhcl9k
ZXZpY2Vfc2VuZF90b19jbGllbnRfdG9rZW5zX2Fic29yYihkZXZfY2xpZW50LCB0b2tlbnMpOwo+
ID4gPiArICAgIHJlZF9jaGFyX2RldmljZV9zZW5kX3RvX2NsaWVudF90b2tlbnNfYWJzb3JiKGRl
diwgY2xpZW50LCB0b2tlbnMsCj4gPiA+IGZhbHNlKTsKPiA+ID4gIH0KPiA+ID4gIAo+ID4gPiAg
dm9pZCByZWRfY2hhcl9kZXZpY2Vfc2VuZF90b19jbGllbnRfdG9rZW5zX3NldChSZWRDaGFyRGV2
aWNlICpkZXYsCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIFJlZENsaWVudCAqY2xpZW50LAo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB1aW50MzJfdCB0b2tlbnMpCj4gPiA+ICB7Cj4gPiA+IC0g
ICAgUmVkQ2hhckRldmljZUNsaWVudCAqZGV2X2NsaWVudDsKPiA+ID4gLQo+ID4gPiAtICAgIGRl
dl9jbGllbnQgPSByZWRfY2hhcl9kZXZpY2VfY2xpZW50X2ZpbmQoZGV2LCBjbGllbnQpOwo+ID4g
PiAtCj4gPiA+IC0gICAgaWYgKCFkZXZfY2xpZW50KSB7Cj4gPiA+IC0gICAgICAgIHNwaWNlX2Vy
cm9yKCJjbGllbnQgd2Fzbid0IGZvdW5kIGRldiAlcCBjbGllbnQgJXAiLCBkZXYsCj4gPiA+IGNs
aWVudCk7Cj4gPiA+IC0gICAgICAgIHJldHVybjsKPiA+ID4gLSAgICB9Cj4gPiA+IC0KPiA+ID4g
LSAgICBkZXZfY2xpZW50LT5udW1fc2VuZF90b2tlbnMgPSAwOwo+ID4gPiAtICAgIHJlZF9jaGFy
X2RldmljZV9zZW5kX3RvX2NsaWVudF90b2tlbnNfYWJzb3JiKGRldl9jbGllbnQsIHRva2Vucyk7
Cj4gPiA+ICsgICAgcmVkX2NoYXJfZGV2aWNlX3NlbmRfdG9fY2xpZW50X3Rva2Vuc19hYnNvcmIo
ZGV2LCBjbGllbnQsIHRva2VucywKPiA+ID4gdHJ1ZSk7Cj4gPiA+ICB9Cj4gPiA+ICAKPiA+ID4g
IC8qKioqKioqKioqKioqKioqKioqKioqKioqKgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiA+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+ID4g
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
