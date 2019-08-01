Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4457DFFD
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 18:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6D5F6E71B;
	Thu,  1 Aug 2019 16:21:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF54F6E71B
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:21:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8835B75716
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:21:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7DA7E5C207
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:21:19 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6E32919722
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:21:19 +0000 (UTC)
Date: Thu, 1 Aug 2019 12:21:19 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1060609070.4230374.1564676479369.JavaMail.zimbra@redhat.com>
In-Reply-To: <1059769383.688115.1563435660902.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-2-fziglio@redhat.com>
 <1981159732.23872969.1561102479984.JavaMail.zimbra@redhat.com>
 <744622840.25083750.1561708132014.JavaMail.zimbra@redhat.com>
 <1414065668.26605938.1562570948815.JavaMail.zimbra@redhat.com>
 <1059769383.688115.1563435660902.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.21]
Thread-Topic: char-device: Pull more code into
 red_char_device_send_to_client_tokens_absorb
Thread-Index: TrCfmAX5HJGCh5xGSqdQDbXBgpnwQkB1hswYnsmDAxrcBWEMy9cX4g3z
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Thu, 01 Aug 2019 16:21:19 +0000 (UTC)
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
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBwaW5nCj4gPiA+ID4gCj4gPiA+ID4gPiAKPiA+ID4gPiA+
IFRoZSAyIGNhbGxlcnMgcmVkX2NoYXJfZGV2aWNlX3NlbmRfdG9fY2xpZW50X3Rva2Vuc19zZXQg
YW5kCj4gPiA+ID4gPiByZWRfY2hhcl9kZXZpY2Vfc2VuZF90b19jbGllbnRfdG9rZW5zX2FkZCBh
cmUgZG9pbmcgbW9zdGx5Cj4gPiA+ID4gPiB0aGUgc2FtZSB0aGluZyBzbyBwdXQgY29tbW9uIGNv
ZGUgdG8KPiA+ID4gPiA+IHJlZF9jaGFyX2RldmljZV9zZW5kX3RvX2NsaWVudF90b2tlbnNfYWJz
b3JiLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8g
PGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gIHNlcnZlci9jaGFy
LWRldmljZS5jIHwgNDIgKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Cj4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9u
cygtKQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2NoYXItZGV2aWNl
LmMgYi9zZXJ2ZXIvY2hhci1kZXZpY2UuYwo+ID4gPiA+ID4gaW5kZXggMGY2YTI5ZDZmLi44OTU4
MWVhNDIgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuYwo+ID4gPiA+
ID4gKysrIGIvc2VydmVyL2NoYXItZGV2aWNlLmMKPiA+ID4gPiA+IEBAIC0zNzcsMTAgKzM3Nywy
NCBAQCBzdGF0aWMgdm9pZAo+ID4gPiA+ID4gcmVkX2NoYXJfZGV2aWNlX2NsaWVudF9zZW5kX3F1
ZXVlX3B1c2goUmVkQ2hhckRldmljZUNsaWVudCAqZGV2X2NsaWUKPiA+ID4gPiA+ICAgICAgfQo+
ID4gPiA+ID4gIH0KPiA+ID4gPiA+ICAKPiA+ID4gPiA+IC1zdGF0aWMgdm9pZAo+ID4gPiA+ID4g
cmVkX2NoYXJfZGV2aWNlX3NlbmRfdG9fY2xpZW50X3Rva2Vuc19hYnNvcmIoUmVkQ2hhckRldmlj
ZUNsaWVudAo+ID4gPiA+ID4gKmRldl9jbGllbnQsCj4gPiA+ID4gPiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDMyX3QKPiA+ID4g
PiA+IHRva2VucykKPiA+ID4gPiA+ICtzdGF0aWMgdm9pZAo+ID4gPiA+ID4gK3JlZF9jaGFyX2Rl
dmljZV9zZW5kX3RvX2NsaWVudF90b2tlbnNfYWJzb3JiKFJlZENoYXJEZXZpY2UgKmRldiwKPiA+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBSZWRD
bGllbnQgKmNsaWVudCwKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB1aW50MzJfdCB0b2tlbnMsCj4gPiA+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYm9vbCByZXNldCkKPiA+ID4gPiA+ICB7Cj4g
PiA+ID4gPiAtICAgIFJlZENoYXJEZXZpY2UgKmRldiA9IGRldl9jbGllbnQtPmRldjsKPiA+ID4g
PiA+ICsgICAgUmVkQ2hhckRldmljZUNsaWVudCAqZGV2X2NsaWVudDsKPiA+ID4gPiA+ICsKPiA+
ID4gPiA+ICsgICAgZGV2X2NsaWVudCA9IHJlZF9jaGFyX2RldmljZV9jbGllbnRfZmluZChkZXYs
IGNsaWVudCk7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgIGlmICghZGV2X2NsaWVudCkgewo+
ID4gPiA+ID4gKyAgICAgICAgc3BpY2VfZXJyb3IoImNsaWVudCB3YXNuJ3QgZm91bmQgZGV2ICVw
IGNsaWVudCAlcCIsIGRldiwKPiA+ID4gPiA+IGNsaWVudCk7Cj4gPiA+ID4gPiArICAgICAgICBy
ZXR1cm47Cj4gPiA+ID4gPiArICAgIH0KPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsgICAgaWYgKHJl
c2V0KSB7Cj4gPiA+ID4gPiArICAgICAgICBkZXZfY2xpZW50LT5udW1fc2VuZF90b2tlbnMgPSAw
Owo+ID4gPiA+ID4gKyAgICB9Cj4gPiA+ID4gPiAgICAgIGRldl9jbGllbnQtPm51bV9zZW5kX3Rv
a2VucyArPSB0b2tlbnM7Cj4gPiA+ID4gPiAgCj4gPiA+ID4gPiAgICAgIGlmIChnX3F1ZXVlX2dl
dF9sZW5ndGgoZGV2X2NsaWVudC0+c2VuZF9xdWV1ZSkpIHsKPiA+ID4gPiA+IEBAIC00MDMsMzIg
KzQxNywxNCBAQCB2b2lkCj4gPiA+ID4gPiByZWRfY2hhcl9kZXZpY2Vfc2VuZF90b19jbGllbnRf
dG9rZW5zX2FkZChSZWRDaGFyRGV2aWNlICpkZXYsCj4gPiA+ID4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBSZWRDbGllbnQgKmNsaWVudCwKPiA+ID4g
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQz
Ml90IHRva2VucykKPiA+ID4gPiA+ICB7Cj4gPiA+ID4gPiAtICAgIFJlZENoYXJEZXZpY2VDbGll
bnQgKmRldl9jbGllbnQ7Cj4gPiA+ID4gPiAtCj4gPiA+ID4gPiAtICAgIGRldl9jbGllbnQgPSBy
ZWRfY2hhcl9kZXZpY2VfY2xpZW50X2ZpbmQoZGV2LCBjbGllbnQpOwo+ID4gPiA+ID4gLQo+ID4g
PiA+ID4gLSAgICBpZiAoIWRldl9jbGllbnQpIHsKPiA+ID4gPiA+IC0gICAgICAgIHNwaWNlX2Vy
cm9yKCJjbGllbnQgd2Fzbid0IGZvdW5kIGRldiAlcCBjbGllbnQgJXAiLCBkZXYsCj4gPiA+ID4g
PiBjbGllbnQpOwo+ID4gPiA+ID4gLSAgICAgICAgcmV0dXJuOwo+ID4gPiA+ID4gLSAgICB9Cj4g
PiA+ID4gPiAtICAgIHJlZF9jaGFyX2RldmljZV9zZW5kX3RvX2NsaWVudF90b2tlbnNfYWJzb3Ji
KGRldl9jbGllbnQsCj4gPiA+ID4gPiB0b2tlbnMpOwo+ID4gPiA+ID4gKyAgICByZWRfY2hhcl9k
ZXZpY2Vfc2VuZF90b19jbGllbnRfdG9rZW5zX2Fic29yYihkZXYsIGNsaWVudCwKPiA+ID4gPiA+
IHRva2VucywKPiA+ID4gPiA+IGZhbHNlKTsKPiA+ID4gPiA+ICB9Cj4gPiA+ID4gPiAgCj4gPiA+
ID4gPiAgdm9pZCByZWRfY2hhcl9kZXZpY2Vfc2VuZF90b19jbGllbnRfdG9rZW5zX3NldChSZWRD
aGFyRGV2aWNlICpkZXYsCj4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBSZWRDbGllbnQgKmNsaWVudCwKPiA+ID4gPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQzMl90IHRva2VucykKPiA+
ID4gPiA+ICB7Cj4gPiA+ID4gPiAtICAgIFJlZENoYXJEZXZpY2VDbGllbnQgKmRldl9jbGllbnQ7
Cj4gPiA+ID4gPiAtCj4gPiA+ID4gPiAtICAgIGRldl9jbGllbnQgPSByZWRfY2hhcl9kZXZpY2Vf
Y2xpZW50X2ZpbmQoZGV2LCBjbGllbnQpOwo+ID4gPiA+ID4gLQo+ID4gPiA+ID4gLSAgICBpZiAo
IWRldl9jbGllbnQpIHsKPiA+ID4gPiA+IC0gICAgICAgIHNwaWNlX2Vycm9yKCJjbGllbnQgd2Fz
bid0IGZvdW5kIGRldiAlcCBjbGllbnQgJXAiLCBkZXYsCj4gPiA+ID4gPiBjbGllbnQpOwo+ID4g
PiA+ID4gLSAgICAgICAgcmV0dXJuOwo+ID4gPiA+ID4gLSAgICB9Cj4gPiA+ID4gPiAtCj4gPiA+
ID4gPiAtICAgIGRldl9jbGllbnQtPm51bV9zZW5kX3Rva2VucyA9IDA7Cj4gPiA+ID4gPiAtICAg
IHJlZF9jaGFyX2RldmljZV9zZW5kX3RvX2NsaWVudF90b2tlbnNfYWJzb3JiKGRldl9jbGllbnQs
Cj4gPiA+ID4gPiB0b2tlbnMpOwo+ID4gPiA+ID4gKyAgICByZWRfY2hhcl9kZXZpY2Vfc2VuZF90
b19jbGllbnRfdG9rZW5zX2Fic29yYihkZXYsIGNsaWVudCwKPiA+ID4gPiA+IHRva2VucywKPiA+
ID4gPiA+IHRydWUpOwo+ID4gPiA+ID4gIH0KPiA+ID4gPiA+ICAKPiA+ID4gPiA+ICAvKioqKioq
KioqKioqKioqKioqKioqKioqKioKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+IFNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
