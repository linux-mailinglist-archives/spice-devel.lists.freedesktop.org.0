Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7ED6A77E
	for <lists+spice-devel@lfdr.de>; Tue, 16 Jul 2019 13:35:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 403656E117;
	Tue, 16 Jul 2019 11:35:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B09E46E115
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 11:35:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5099D3082E8E
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 11:35:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4430F6092D
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 11:35:28 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 35BC81800202;
 Tue, 16 Jul 2019 11:35:28 +0000 (UTC)
Date: Tue, 16 Jul 2019 07:35:28 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <508700951.402487.1563276928002.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190716105516.14803-1-ssheribe@redhat.com>
References: <20190716105516.14803-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.16]
Thread-Topic: gst-plugin: receive encoder properties as command parameters
Thread-Index: dn0h/bIk8HK5rkwGHcYxFCA0VErUCw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 16 Jul 2019 11:35:28 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent] gst-plugin: receive
 encoder properties as command parameters
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

Cj4gCj4gVGhpcyBhbGxvd3MgdG8gc2V0IHBsdWdpbiBrZXk9dmFsdWUgcHJvcGVydGllcyBvbiBy
dW4gdGltZS4KPiBUbyBhZGQgZW5jb2RlciBwbHVnaW4gcHJvcGVydHkgdXNlIHRoZSBmb2xsb3dp
bmcgc3ludGF4Ogo+IC1nc3QucHJvcD0ia2V5PXZhbHVlIgo+IE1ha2Ugc3VyZSBzeW50YXggaXMg
YWNjdXJhdGUgYW5kIHRoYXQgdGhlIHByb3BlcnR5IGlzIHN1cHBvcnRlZCBieQo+IHRoZSBjaG9z
ZW4gcGx1Z2luLCB3cm9uZy9pbnZhbGlkIHByb3BlcnRpZXMgd2lsbCBiZSBpZ25vcmVkIHNpbGVu
dGx5Lgo+IFNwZWNpZmljIGVuY29kZXIgYXZhaWxhYmxlIHByb3BlcnRpZXMgY2FuIGJlIHZpZXdl
ZCBieToKPiBnc3QtaW5zcGVjdC0xLjAgPFBMVUdJTi1OQU1FPgo+IC0tLQo+ICogVGhpcyBwYXRj
aCB1c2VmdWwgZm9yIGVuY29kZXJzIHR1bmluZyBhbmQgdGVzdGluZyAobGF0ZXIgd2UgY2FuIGlu
dHJvZHVjZQo+ICAgZml4ZWQgZW5jb2RlcnMgc2V0dXBzKSwgaGVuY2Ugbm90IGNoZWNraW5nIGZv
ciB2YWxpZGl0eSBvZiBpbnB1dC4KPiAqIEkgZHJvcHBlZCBzc3RyZWFtIGluIHByZXZpb3VzIHBh
dGNoIGJ1dCBpIGZvdW5kIGl0IHVzZWZ1bCBoZXJlIGFuZCBhZGRlZCBpdAo+ICAgYWdhaW4sIGFs
dGVybmF0aXZlIHN1Z2dlc3Rpb25zIGFyZSB3ZWxjb21lCj4gCgpOb3RoaW5nIHdyb25nIGFnYWlu
c3QgaXRzIHVzYWdlLCBidXQgc2VlIGJlbG93Cgo+IC0tLQo+ICBzcmMvZ3N0LXBsdWdpbi5jcHAg
fCAyMSArKysrKysrKysrKysrKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy9nc3QtcGx1Z2luLmNw
cCBiL3NyYy9nc3QtcGx1Z2luLmNwcAo+IGluZGV4IDRlODAyZjEuLjBkODc3M2QgMTAwNjQ0Cj4g
LS0tIGEvc3JjL2dzdC1wbHVnaW4uY3BwCj4gKysrIGIvc3JjL2dzdC1wbHVnaW4uY3BwCj4gQEAg
LTYsNiArNiw3IEBACj4gIAo+ICAjaW5jbHVkZSA8Y29uZmlnLmg+Cj4gICNpbmNsdWRlIDxjc3Ry
aW5nPgo+ICsjaW5jbHVkZSA8c3N0cmVhbT4KPiAgI2luY2x1ZGUgPGV4Y2VwdGlvbj4KPiAgI2lu
Y2x1ZGUgPHN0ZGV4Y2VwdD4KPiAgI2luY2x1ZGUgPG1lbW9yeT4KPiBAQCAtMzUsNiArMzYsNyBA
QCBzdHJ1Y3QgR3N0cmVhbWVyRW5jb2RlclNldHRpbmdzCj4gICAgICBpbnQgZnBzID0gMjU7Cj4g
ICAgICBTcGljZVZpZGVvQ29kZWNUeXBlIGNvZGVjID0gU1BJQ0VfVklERU9fQ09ERUNfVFlQRV9I
MjY0Owo+ICAgICAgc3RkOjpzdHJpbmcgZW5jb2RlcjsKPiArICAgIHN0ZDo6dmVjdG9yPHN0ZDo6
c3RyaW5nPiBwcm9wX3N0cmluZ3M7CgpXaHkgbm90IGEgc3RkOjptYXA/Ckl0IGxvb2tzIGEgYml0
IHVubmF0dXJhbCwgaXQncyBub3QgYSB2ZWN0b3IsIGV2ZW4gZWxlbWVudHMgYXJlIHByb3BlcnR5
IG5hbWVzLApvZGQgZWxlbWVudHMgYXJlIHZhbHVlcy4Kc3RkOjptYXAgd2lsbCBhdm9pZCBkdXBs
aWNhdGlvbiBvZiBwcm9wZXJ0aWVzIHdpdGggc2FtZSBuYW1lICh3aGljaCBsb29rIGdvb2QpCmJ1
dCB5b3Ugd291bGQgbG9zZSB0aGUgb3JkZXIgKHdoaWNoIGNvdWxkIGJlIGFuIGlzc3VlLi4uIG9y
IG5vdD8pCgo+ICB9Owo+ICAKPiAgdGVtcGxhdGUgPHR5cGVuYW1lIFQ+Cj4gQEAgLTE4MCwxMCAr
MTgyLDE1IEBAIEdzdEVsZW1lbnQKPiAqR3N0cmVhbWVyRnJhbWVDYXB0dXJlOjpnZXRfZW5jb2Rl
cl9wbHVnaW4oY29uc3QgR3N0cmVhbWVyRW5jb2RlclNldHQKPiAgCj4gICAgICBlbmNvZGVyID0g
ZmFjdG9yeSA/IGdzdF9lbGVtZW50X2ZhY3RvcnlfY3JlYXRlKGZhY3RvcnksICJlbmNvZGVyIikg
Ogo+ICAgICAgbnVsbHB0cjsKPiAgICAgIGlmIChlbmNvZGVyKSB7IC8vIEludmFsaWQgcHJvcGVy
dGllcyB3aWxsIGJlIGlnbm9yZWQgc2lsZW50bHkKPiAtICAgICAgICAvKiB4MjY0ZW5jIHByb3Bl
cnRpZXMgKi8KPiAtICAgICAgICBnc3RfdXRpbF9zZXRfb2JqZWN0X2FyZyhHX09CSkVDVChlbmNv
ZGVyKSwgInR1bmUiLCAiemVyb2xhdGVuY3kiKTsvLwo+IHN0aWxsaW1hZ2UsIGZhc3RkZWNvZGUs
IHplcm9sYXRlbmN5Cj4gLSAgICAgICAgZ3N0X3V0aWxfc2V0X29iamVjdF9hcmcoR19PQkpFQ1Qo
ZW5jb2RlciksICJiZnJhbWVzIiwgIjAiKTsKPiAtICAgICAgICBnc3RfdXRpbF9zZXRfb2JqZWN0
X2FyZyhHX09CSkVDVChlbmNvZGVyKSwgInNwZWVkLXByZXNldCIsICIxIik7Ly8KPiAxLXVsdHJh
ZmFzdCwgNi1tZWQsIDktdmVyeXNsb3cKPiArICAgICAgICBjb25zdCBjaGFyICprZXk7Cj4gKyAg
ICAgICAgY29uc3QgY2hhciAqdmFsOwo+ICsgICAgICAgIGZvciAoaW50IGkgPSAxOyBpIDwgc2V0
dGluZ3MucHJvcF9zdHJpbmdzLnNpemUoKTsgaSArPSAyKSB7Cj4gKyAgICAgICAgICAgIGtleSA9
IHNldHRpbmdzLnByb3Bfc3RyaW5nc1tpLTFdLmNfc3RyKCk7Cj4gKyAgICAgICAgICAgIHZhbCA9
IHNldHRpbmdzLnByb3Bfc3RyaW5nc1tpXS5jX3N0cigpOwoKSSB3b3VsZCBwZXJzb25hbGx5IGRl
Y2xhcmUgYW5kIGluaXRpYWxpemUsIG1vcmUgQysrIHN0eWxlCgo+ICsgICAgICAgICAgICBnc3Rf
dXRpbF9zZXRfb2JqZWN0X2FyZyhHX09CSkVDVChlbmNvZGVyKSwga2V5LCB2YWwpOwo+ICsgICAg
ICAgICAgICBnc3Rfc3lzbG9nKExPR19OT1RJQ0UsICJUcnlpbmcgdG8gc2V0IGVuY29kZXIgcHJv
cGVydHk6ICclcyA9Cj4gJXMnIiwga2V5LCB2YWwpOwoKIlRyeWluZyIgbG9va3MgbGlrZSB5b3Ug
d2lsbCBkb2luZywgYnV0IGFmdGVyIElNSE8gc2hvdWxkIGJlICJUcmllZCB0byIuCgo+ICsgICAg
ICAgIH0KPiArCj4gICAgICB9Cj4gICAgICBnc3RfcGx1Z2luX2ZlYXR1cmVfbGlzdF9mcmVlKGZp
bHRlcmVkKTsKPiAgICAgIGdzdF9wbHVnaW5fZmVhdHVyZV9saXN0X2ZyZWUoZW5jb2RlcnMpOwo+
IEBAIC00NDksNiArNDU2LDEyIEBAIHZvaWQgR3N0cmVhbWVyUGx1Z2luOjpQYXJzZU9wdGlvbnMo
Y29uc3QgQ29uZmlndXJlT3B0aW9uCj4gKm9wdGlvbnMpCj4gICAgICAgICAgICAgIH0KPiAgICAg
ICAgICB9IGVsc2UgaWYgKG5hbWUgPT0gImdzdC5lbmNvZGVyIikgewo+ICAgICAgICAgICAgICBz
ZXR0aW5ncy5lbmNvZGVyID0gdmFsdWU7Cj4gKyAgICAgICAgfSBlbHNlIGlmIChuYW1lID09ICJn
c3QucHJvcCIpIHsKPiArICAgICAgICAgICAgc3RkOjpzdHJpbmdzdHJlYW0gc3ModmFsdWUpOwo+
ICsgICAgICAgICAgICBzdGQ6OnN0cmluZyBpdGVtOwo+ICsgICAgICAgICAgICB3aGlsZSAoc3Rk
OjpnZXRsaW5lKHNzLCBpdGVtLCAnPScpKSB7CgpUaGlzIGhhcyBzb21lIHByb2JsZW1zOgotIGlm
IHZhbHVlIGNvbnRhaW5zIG11bHRpcGxlICI9IiB0aGlzIHdpbGwgYmUgc3BsaXQgYW5kIHBhcnQg
b2YgdmFsdWVzIHdpbGwKICBiZWNvbWUgcHJvcGVydHkgbmFtZXM7Ci0gaWYgdmFsdWUgZG9lc24n
dCBjb250YWluIGFueSAiPSIgdGhlIGVudGlyZSB2YWx1ZSB3aWxsIGJlIGNvbnNpZGVyZWQgYXMK
ICB0aGUgcHJvcGVydHkgbmFtZSBvZiBmb2xsb3dpbmcgYXJndW1lbnRzLgpJbiBQeXRob24gdGhh
dCB3b3VsZCBwcm9iYWJseSBiZSBhIHN0cmluZy5zcGxpdCgnPScsIDEpLgpNYXliZSBhIGNvbWJp
bmF0aW9uIG9mIHN0cmluZy5maW5kIGFuZCBzdHJpbmcuc3Vic3RyIHdvdWxkIGF2b2lkIHRoZXNl
Cmlzc3Vlcy4KSSBjb3VsZCBhbHNvIHBvdGVudGlhbGx5IHBhc3Mgc29tZXRoaW5nIGxpa2UgKHNo
ZWxsIHN5bnRheCkKCgokIHByb2dyYW0gLi4uIC1jICJnc3QucHJvcD1uYW1lPXZhbHVlCm5leHQg
bGluZT0yIgoKCihwcm9wZXJ0eSB2YWx1ZSB3aXRoICI9IiBhbmQgbmV3IGxpbmUgZW1iZWRkZWQp
LgoKPiArICAgICAgICAgICAgICAgc2V0dGluZ3MucHJvcF9zdHJpbmdzLnB1c2hfYmFjayhpdGVt
KTsKPiArICAgICAgICAgICAgfQo+ICAgICAgICAgIH0KPiAgICAgIH0KPiAgfQoKRnJlZGlhbm8K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
