Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B58459559
	for <lists+spice-devel@lfdr.de>; Fri, 28 Jun 2019 09:48:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F31D6E89A;
	Fri, 28 Jun 2019 07:48:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 792C36E899
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:48:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 23ABE308FBB4
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:48:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1AC0E5C553
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:48:52 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 130FC54D3C
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:48:52 +0000 (UTC)
Date: Fri, 28 Jun 2019 03:48:52 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <744622840.25083750.1561708132014.JavaMail.zimbra@redhat.com>
In-Reply-To: <1981159732.23872969.1561102479984.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-2-fziglio@redhat.com>
 <1981159732.23872969.1561102479984.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.27]
Thread-Topic: char-device: Pull more code into
 red_char_device_send_to_client_tokens_absorb
Thread-Index: TrCfmAX5HJGCh5xGSqdQDbXBgpnwQkB1hswY
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Fri, 28 Jun 2019 07:48:52 +0000 (UTC)
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IFRoZSAyIGNhbGxlcnMgcmVkX2NoYXJfZGV2aWNl
X3NlbmRfdG9fY2xpZW50X3Rva2Vuc19zZXQgYW5kCj4gPiByZWRfY2hhcl9kZXZpY2Vfc2VuZF90
b19jbGllbnRfdG9rZW5zX2FkZCBhcmUgZG9pbmcgbW9zdGx5Cj4gPiB0aGUgc2FtZSB0aGluZyBz
byBwdXQgY29tbW9uIGNvZGUgdG8KPiA+IHJlZF9jaGFyX2RldmljZV9zZW5kX3RvX2NsaWVudF90
b2tlbnNfYWJzb3JiLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6
aWdsaW9AcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gIHNlcnZlci9jaGFyLWRldmljZS5jIHwgNDIg
KysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0t
Z2l0IGEvc2VydmVyL2NoYXItZGV2aWNlLmMgYi9zZXJ2ZXIvY2hhci1kZXZpY2UuYwo+ID4gaW5k
ZXggMGY2YTI5ZDZmLi44OTU4MWVhNDIgMTAwNjQ0Cj4gPiAtLS0gYS9zZXJ2ZXIvY2hhci1kZXZp
Y2UuYwo+ID4gKysrIGIvc2VydmVyL2NoYXItZGV2aWNlLmMKPiA+IEBAIC0zNzcsMTAgKzM3Nywy
NCBAQCBzdGF0aWMgdm9pZAo+ID4gcmVkX2NoYXJfZGV2aWNlX2NsaWVudF9zZW5kX3F1ZXVlX3B1
c2goUmVkQ2hhckRldmljZUNsaWVudCAqZGV2X2NsaWUKPiA+ICAgICAgfQo+ID4gIH0KPiA+ICAK
PiA+IC1zdGF0aWMgdm9pZAo+ID4gcmVkX2NoYXJfZGV2aWNlX3NlbmRfdG9fY2xpZW50X3Rva2Vu
c19hYnNvcmIoUmVkQ2hhckRldmljZUNsaWVudAo+ID4gKmRldl9jbGllbnQsCj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDMy
X3QgdG9rZW5zKQo+ID4gK3N0YXRpYyB2b2lkCj4gPiArcmVkX2NoYXJfZGV2aWNlX3NlbmRfdG9f
Y2xpZW50X3Rva2Vuc19hYnNvcmIoUmVkQ2hhckRldmljZSAqZGV2LAo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJlZENsaWVudCAqY2xpZW50LAo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQzMl90IHRv
a2VucywKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBi
b29sIHJlc2V0KQo+ID4gIHsKPiA+IC0gICAgUmVkQ2hhckRldmljZSAqZGV2ID0gZGV2X2NsaWVu
dC0+ZGV2Owo+ID4gKyAgICBSZWRDaGFyRGV2aWNlQ2xpZW50ICpkZXZfY2xpZW50Owo+ID4gKwo+
ID4gKyAgICBkZXZfY2xpZW50ID0gcmVkX2NoYXJfZGV2aWNlX2NsaWVudF9maW5kKGRldiwgY2xp
ZW50KTsKPiA+ICsKPiA+ICsgICAgaWYgKCFkZXZfY2xpZW50KSB7Cj4gPiArICAgICAgICBzcGlj
ZV9lcnJvcigiY2xpZW50IHdhc24ndCBmb3VuZCBkZXYgJXAgY2xpZW50ICVwIiwgZGV2LCBjbGll
bnQpOwo+ID4gKyAgICAgICAgcmV0dXJuOwo+ID4gKyAgICB9Cj4gPiArCj4gPiArICAgIGlmIChy
ZXNldCkgewo+ID4gKyAgICAgICAgZGV2X2NsaWVudC0+bnVtX3NlbmRfdG9rZW5zID0gMDsKPiA+
ICsgICAgfQo+ID4gICAgICBkZXZfY2xpZW50LT5udW1fc2VuZF90b2tlbnMgKz0gdG9rZW5zOwo+
ID4gIAo+ID4gICAgICBpZiAoZ19xdWV1ZV9nZXRfbGVuZ3RoKGRldl9jbGllbnQtPnNlbmRfcXVl
dWUpKSB7Cj4gPiBAQCAtNDAzLDMyICs0MTcsMTQgQEAgdm9pZAo+ID4gcmVkX2NoYXJfZGV2aWNl
X3NlbmRfdG9fY2xpZW50X3Rva2Vuc19hZGQoUmVkQ2hhckRldmljZSAqZGV2LAo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUmVkQ2xpZW50ICpjbGll
bnQsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1
aW50MzJfdCB0b2tlbnMpCj4gPiAgewo+ID4gLSAgICBSZWRDaGFyRGV2aWNlQ2xpZW50ICpkZXZf
Y2xpZW50Owo+ID4gLQo+ID4gLSAgICBkZXZfY2xpZW50ID0gcmVkX2NoYXJfZGV2aWNlX2NsaWVu
dF9maW5kKGRldiwgY2xpZW50KTsKPiA+IC0KPiA+IC0gICAgaWYgKCFkZXZfY2xpZW50KSB7Cj4g
PiAtICAgICAgICBzcGljZV9lcnJvcigiY2xpZW50IHdhc24ndCBmb3VuZCBkZXYgJXAgY2xpZW50
ICVwIiwgZGV2LCBjbGllbnQpOwo+ID4gLSAgICAgICAgcmV0dXJuOwo+ID4gLSAgICB9Cj4gPiAt
ICAgIHJlZF9jaGFyX2RldmljZV9zZW5kX3RvX2NsaWVudF90b2tlbnNfYWJzb3JiKGRldl9jbGll
bnQsIHRva2Vucyk7Cj4gPiArICAgIHJlZF9jaGFyX2RldmljZV9zZW5kX3RvX2NsaWVudF90b2tl
bnNfYWJzb3JiKGRldiwgY2xpZW50LCB0b2tlbnMsCj4gPiBmYWxzZSk7Cj4gPiAgfQo+ID4gIAo+
ID4gIHZvaWQgcmVkX2NoYXJfZGV2aWNlX3NlbmRfdG9fY2xpZW50X3Rva2Vuc19zZXQoUmVkQ2hh
ckRldmljZSAqZGV2LAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgUmVkQ2xpZW50ICpjbGllbnQsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB1aW50MzJfdCB0b2tlbnMpCj4gPiAgewo+ID4gLSAgICBS
ZWRDaGFyRGV2aWNlQ2xpZW50ICpkZXZfY2xpZW50Owo+ID4gLQo+ID4gLSAgICBkZXZfY2xpZW50
ID0gcmVkX2NoYXJfZGV2aWNlX2NsaWVudF9maW5kKGRldiwgY2xpZW50KTsKPiA+IC0KPiA+IC0g
ICAgaWYgKCFkZXZfY2xpZW50KSB7Cj4gPiAtICAgICAgICBzcGljZV9lcnJvcigiY2xpZW50IHdh
c24ndCBmb3VuZCBkZXYgJXAgY2xpZW50ICVwIiwgZGV2LCBjbGllbnQpOwo+ID4gLSAgICAgICAg
cmV0dXJuOwo+ID4gLSAgICB9Cj4gPiAtCj4gPiAtICAgIGRldl9jbGllbnQtPm51bV9zZW5kX3Rv
a2VucyA9IDA7Cj4gPiAtICAgIHJlZF9jaGFyX2RldmljZV9zZW5kX3RvX2NsaWVudF90b2tlbnNf
YWJzb3JiKGRldl9jbGllbnQsIHRva2Vucyk7Cj4gPiArICAgIHJlZF9jaGFyX2RldmljZV9zZW5k
X3RvX2NsaWVudF90b2tlbnNfYWJzb3JiKGRldiwgY2xpZW50LCB0b2tlbnMsCj4gPiB0cnVlKTsK
PiA+ICB9Cj4gPiAgCj4gPiAgLyoqKioqKioqKioqKioqKioqKioqKioqKioqCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
