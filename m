Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1CC5BB8F
	for <lists+spice-devel@lfdr.de>; Mon,  1 Jul 2019 14:32:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32F5B89C9D;
	Mon,  1 Jul 2019 12:32:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1A3E89C9D
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 12:32:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9A4E7369A0
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 12:32:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D7486F921
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 12:32:50 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 84CC0206D1;
 Mon,  1 Jul 2019 12:32:50 +0000 (UTC)
Date: Mon, 1 Jul 2019 08:32:50 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <162789438.25958963.1561984370465.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190701115014.11866-1-ssheribe@redhat.com>
References: <20190701115014.11866-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.5]
Thread-Topic: drop sstream and use dedicated functions instead
Thread-Index: V/E+sZ9sgqYhxijC848yNGK6Bwio4g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 01 Jul 2019 12:32:50 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v3 spice-streaming-agent] drop sstream and
 use dedicated functions instead
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

PiAKPiBJbnN0ZWFkIG9mIG1hbmlwdWxhdGluZyBhIHN0cmluZyBhbmQgY29udmVydCBpdCB0byBj
YXBzIGp1c3QKPiB1c2UgZGVkaWNhdGVkIGZ1bmN0aW9ucyBpbnN0ZWFkCj4gCj4gU2lnbmVkLW9m
Zi1ieTogU25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KPiAtLS0KPiBDaGFuZ2Vz
IGZyb20gdjI6Cj4gIC11c2UgZ19mcmVlIGFzIGEgZGVsZXRlcgo+ICAoZXhhY3RseSAxMDAgY2hh
cmFjdGVycyB3aWR0aCkKPiAKPiAtLS0KPiAgc3JjL2dzdC1wbHVnaW4uY3BwIHwgMzQgKysrKysr
KysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0
aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy9nc3QtcGx1Z2lu
LmNwcCBiL3NyYy9nc3QtcGx1Z2luLmNwcAo+IGluZGV4IGNiMzEwZDAuLjQ0NGE5MDggMTAwNjQ0
Cj4gLS0tIGEvc3JjL2dzdC1wbHVnaW4uY3BwCj4gKysrIGIvc3JjL2dzdC1wbHVnaW4uY3BwCj4g
QEAgLTgsNyArOCw2IEBACj4gICNpbmNsdWRlIDxjc3RyaW5nPgo+ICAjaW5jbHVkZSA8ZXhjZXB0
aW9uPgo+ICAjaW5jbHVkZSA8c3RkZXhjZXB0Pgo+IC0jaW5jbHVkZSA8c3N0cmVhbT4KPiAgI2lu
Y2x1ZGUgPG1lbW9yeT4KPiAgI2luY2x1ZGUgPHN5c2xvZy5oPgo+ICAjaW5jbHVkZSA8dW5pc3Rk
Lmg+Cj4gQEAgLTEzMiwzNCArMTMxLDM1IEBAIEdzdEVsZW1lbnQKPiAqR3N0cmVhbWVyRnJhbWVD
YXB0dXJlOjpnZXRfZW5jb2Rlcl9wbHVnaW4oY29uc3QgR3N0cmVhbWVyRW5jb2RlclNldHQKPiAg
ICAgIEdMaXN0ICpmaWx0ZXJlZDsKPiAgICAgIEdzdEVsZW1lbnQgKmVuY29kZXI7Cj4gICAgICBH
c3RFbGVtZW50RmFjdG9yeSAqZmFjdG9yeSA9IG51bGxwdHI7Cj4gLSAgICBzdGQ6OnN0cmluZ3N0
cmVhbSBjYXBzX3NzOwo+ICAKPiAgICAgIHN3aXRjaCAoc2V0dGluZ3MuY29kZWMpIHsKPiAgICAg
IGNhc2UgU1BJQ0VfVklERU9fQ09ERUNfVFlQRV9IMjY0Ogo+IC0gICAgICAgIGNhcHNfc3MgPDwg
InZpZGVvL3gtaDI2NCIgPDwgIixzdHJlYW0tZm9ybWF0PShzdHJpbmcpYnl0ZS1zdHJlYW0iOwo+
ICsgICAgICAgIHNpbmtfY2Fwcy5yZXNldChnc3RfY2Fwc19uZXdfc2ltcGxlKCJ2aWRlby94LWgy
NjQiLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJzdHJl
YW0tZm9ybWF0IiwgR19UWVBFX1NUUklORywKPiAiYnl0ZS1zdHJlYW0iLAo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5VTEwpKTsKCk1pbm9yOiBudWxscHRy
IGluc3RlYWQgb2YgTlVMTCAoaGVyZSBhbmQgYmVsb3c/KQoKPiAgICAgICAgICBicmVhazsKPiAg
ICAgIGNhc2UgU1BJQ0VfVklERU9fQ09ERUNfVFlQRV9NSlBFRzoKPiAtICAgICAgICBjYXBzX3Nz
IDw8ICJpbWFnZS9qcGVnIjsKPiArICAgICAgICBzaW5rX2NhcHMucmVzZXQoZ3N0X2NhcHNfbmV3
X2VtcHR5X3NpbXBsZSgiaW1hZ2UvanBlZyIpKTsKPiAgICAgICAgICBicmVhazsKPiAgICAgIGNh
c2UgU1BJQ0VfVklERU9fQ09ERUNfVFlQRV9WUDg6Cj4gLSAgICAgICAgY2Fwc19zcyA8PCAidmlk
ZW8veC12cDgiOwo+ICsgICAgICAgIHNpbmtfY2Fwcy5yZXNldChnc3RfY2Fwc19uZXdfZW1wdHlf
c2ltcGxlKCJ2aWRlby94LXZwOCIpKTsKPiAgICAgICAgICBicmVhazsKPiAgICAgIGNhc2UgU1BJ
Q0VfVklERU9fQ09ERUNfVFlQRV9WUDk6Cj4gLSAgICAgICAgY2Fwc19zcyA8PCAidmlkZW8veC12
cDkiOwo+ICsgICAgICAgIHNpbmtfY2Fwcy5yZXNldChnc3RfY2Fwc19uZXdfZW1wdHlfc2ltcGxl
KCJ2aWRlby94LXZwOSIpKTsKPiAgICAgICAgICBicmVhazsKPiAgICAgIGNhc2UgU1BJQ0VfVklE
RU9fQ09ERUNfVFlQRV9IMjY1Ogo+IC0gICAgICAgIGNhcHNfc3MgPDwgInZpZGVvL3gtaDI2NSI7
Cj4gKyAgICAgICAgc2lua19jYXBzLnJlc2V0KGdzdF9jYXBzX25ld19lbXB0eV9zaW1wbGUoInZp
ZGVvL3gtaDI2NSIpKTsKPiAgICAgICAgICBicmVhazsKPiAgICAgIGRlZmF1bHQgOiAvKiBTaG91
bGQgbm90IGhhcHBlbiAtIGp1c3QgdG8gYXZvaWQgY29tcGlsZXIncyBjb21wbGFpbnQgKi8KPiAg
ICAgICAgICB0aHJvdyBzdGQ6OmxvZ2ljX2Vycm9yKCJVbmtub3duIGNvZGVjIik7Cj4gICAgICB9
Cj4gLSAgICBjYXBzX3NzIDw8ICIsZnJhbWVyYXRlPSIgPDwgc2V0dGluZ3MuZnBzIDw8ICIvMSI7
Cj4gKyAgICBnc3RfY2Fwc19zZXRfc2ltcGxlKHNpbmtfY2Fwcy5nZXQoKSwgImZyYW1lcmF0ZSIs
IEdTVF9UWVBFX0ZSQUNUSU9OLAo+IHNldHRpbmdzLmZwcywgMSwgbnVsbHB0cik7Cj4gKyAgICBz
dGQ6OnVuaXF1ZV9wdHI8Z2NoYXIsIGRlY2x0eXBlKCZnX2ZyZWUpPgo+IGNhcHNfc3RyKGdzdF9j
YXBzX3RvX3N0cmluZyhzaW5rX2NhcHMuZ2V0KCkpLCBnX2ZyZWUpOwo+ICAKPiAgICAgIGVuY29k
ZXJzID0KPiAgICAgIGdzdF9lbGVtZW50X2ZhY3RvcnlfbGlzdF9nZXRfZWxlbWVudHMoR1NUX0VM
RU1FTlRfRkFDVE9SWV9UWVBFX1ZJREVPX0VOQ09ERVIsCj4gICAgICBHU1RfUkFOS19OT05FKTsK
PiAtICAgIHNpbmtfY2Fwcy5yZXNldChnc3RfY2Fwc19mcm9tX3N0cmluZyhjYXBzX3NzLnN0cigp
LmNfc3RyKCkpKTsKPiAgICAgIGZpbHRlcmVkID0gZ3N0X2VsZW1lbnRfZmFjdG9yeV9saXN0X2Zp
bHRlcihlbmNvZGVycywgc2lua19jYXBzLmdldCgpLAo+ICAgICAgR1NUX1BBRF9TUkMsIGZhbHNl
KTsKPiAgICAgIGlmIChmaWx0ZXJlZCkgewo+IC0gICAgICAgIGdzdF9zeXNsb2coTE9HX05PVElD
RSwgIkxvb2tpbmcgZm9yIGVuY29kZXIgcGx1Z2lucyB3aGljaCBjYW4KPiBwcm9kdWNlIGEgJyVz
JyBzdHJlYW0iLCBjYXBzX3NzLnN0cigpLmNfc3RyKCkpOwo+ICsgICAgICAgIGdzdF9zeXNsb2co
TE9HX05PVElDRSwgIkxvb2tpbmcgZm9yIGVuY29kZXIgcGx1Z2lucyB3aGljaCBjYW4KPiBwcm9k
dWNlIGEgJyVzJyBzdHJlYW0iLCBjYXBzX3N0ci5nZXQoKSk7Cj4gICAgICAgICAgZm9yIChHTGlz
dCAqbCA9IGZpbHRlcmVkOyBsICE9IG51bGxwdHI7IGwgPSBsLT5uZXh0KSB7Cj4gICAgICAgICAg
ICAgIGlmICghZmFjdG9yeSAmJgo+ICAgICAgICAgICAgICAhc2V0dGluZ3MuZW5jb2Rlci5jb21w
YXJlKEdTVF9FTEVNRU5UX05BTUUobC0+ZGF0YSkpKSB7Cj4gICAgICAgICAgICAgICAgICBmYWN0
b3J5ID0gKEdzdEVsZW1lbnRGYWN0b3J5KilsLT5kYXRhOwo+IEBAIC0xNjksMTMgKzE2OSwxMyBA
QCBHc3RFbGVtZW50Cj4gKkdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6Z2V0X2VuY29kZXJfcGx1Z2lu
KGNvbnN0IEdzdHJlYW1lckVuY29kZXJTZXR0Cj4gICAgICAgICAgaWYgKCFmYWN0b3J5ICYmICFz
ZXR0aW5ncy5lbmNvZGVyLmVtcHR5KCkpIHsKPiAgICAgICAgICAgICAgZ3N0X3N5c2xvZyhMT0df
V0FSTklORywKPiAgICAgICAgICAgICAgICAgICAgICAgICAiU3BlY2lmaWVkIGVuY29kZXIgbmFt
ZWQgJyVzJyBjYW5ub3QgcHJvZHVjZSAnJXMnCj4gICAgICAgICAgICAgICAgICAgICAgICAgc3Ry
ZWFtLCBtYWtlIHN1cmUgbWF0Y2hpbmcgZ3N0LmNvZGVjIGlzIHNwZWNpZmllZAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIGFuZCBwbHVnaW4ncyBhdmFpbGFiaWxpdHkiLAo+IC0gICAgICAgICAg
ICAgICAgICAgICAgIHNldHRpbmdzLmVuY29kZXIuY19zdHIoKSwgY2Fwc19zcy5zdHIoKS5jX3N0
cigpKTsKPiArICAgICAgICAgICAgICAgICAgICAgICBzZXR0aW5ncy5lbmNvZGVyLmNfc3RyKCks
IGNhcHNfc3RyLmdldCgpKTsKPiAgICAgICAgICB9Cj4gICAgICAgICAgZmFjdG9yeSA9IGZhY3Rv
cnkgPyBmYWN0b3J5IDogKEdzdEVsZW1lbnRGYWN0b3J5KilmaWx0ZXJlZC0+ZGF0YTsKPiAgICAg
ICAgICBnc3Rfc3lzbG9nKExPR19OT1RJQ0UsICInJXMnIGVuY29kZXIgcGx1Z2luIGlzIHVzZWQi
LAo+ICAgICAgICAgIEdTVF9FTEVNRU5UX05BTUUoZmFjdG9yeSkpOwo+ICAKPiAgICAgIH0gZWxz
ZSB7Cj4gLSAgICAgICAgZ3N0X3N5c2xvZyhMT0dfRVJSLCAiTm8gc3VpdGFibGUgZW5jb2RlciB3
YXMgZm91bmQgZm9yICclcyciLAo+IGNhcHNfc3Muc3RyKCkuY19zdHIoKSk7Cj4gKyAgICAgICAg
Z3N0X3N5c2xvZyhMT0dfRVJSLCAiTm8gc3VpdGFibGUgZW5jb2RlciB3YXMgZm91bmQgZm9yICcl
cyciLAo+IGNhcHNfc3RyLmdldCgpKTsKPiAgICAgIH0KPiAgCj4gICAgICBlbmNvZGVyID0gZmFj
dG9yeSA/IGdzdF9lbGVtZW50X2ZhY3RvcnlfY3JlYXRlKGZhY3RvcnksICJlbmNvZGVyIikgOgo+
ICAgICAgbnVsbHB0cjsKPiBAQCAtMzUxLDEwICszNTEsMTIgQEAgdm9pZCBHc3RyZWFtZXJGcmFt
ZUNhcHR1cmU6OnhsaWJfY2FwdHVyZSgpCj4gICAgICAgICAgdGhyb3cgc3RkOjpydW50aW1lX2Vy
cm9yKCJGYWlsZWQgdG8gd3JhcCBpbWFnZSBpbiBnc3RyZWFtZXIKPiAgICAgICAgICBidWZmZXIi
KTsKPiAgICAgIH0KPiAgCj4gLSAgICBzdGQ6OnN0cmluZ3N0cmVhbSBzczsKPiAtCj4gLSAgICBz
cyA8PCAidmlkZW8veC1yYXcsZm9ybWF0PUJHUngsd2lkdGg9IiA8PCBpbWFnZS0+d2lkdGggPDwg
IixoZWlnaHQ9IiA8PAo+IGltYWdlLT5oZWlnaHQgPDwgIixmcmFtZXJhdGU9IiA8PCBzZXR0aW5n
cy5mcHMgPDwgIi8xIjsKPiAtICAgIEdzdENhcHNVUHRyIGNhcHMoZ3N0X2NhcHNfZnJvbV9zdHJp
bmcoc3Muc3RyKCkuY19zdHIoKSkpOwo+ICsgICAgR3N0Q2Fwc1VQdHIgY2Fwcyhnc3RfY2Fwc19u
ZXdfc2ltcGxlKCJ2aWRlby94LXJhdyIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgImZvcm1hdCIsIEdfVFlQRV9TVFJJTkcsICJCR1J4IiwKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAid2lkdGgiLCBHX1RZUEVfSU5ULCBpbWFn
ZS0+d2lkdGgsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImhl
aWdodCIsIEdfVFlQRV9JTlQsCj4gaW1hZ2UtPmhlaWdodCwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAiZnJhbWVyYXRlIiwgR1NUX1RZUEVfRlJBQ1RJT04sCj4g
c2V0dGluZ3MuZnBzLCAxLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIE5VTEwpKTsKPiAgCj4gICAgICAvLyBQdXNoIHNhbXBsZQo+ICAgICAgR3N0U2FtcGxlVVB0
ciBhcHBzcmNfc2FtcGxlKGdzdF9zYW1wbGVfbmV3KGJ1ZiwgY2Fwcy5nZXQoKSwgbnVsbHB0ciwK
PiAgICAgIG51bGxwdHIpKTsKCk90aGVyd2lzZSwKICBBY2tlZC1ieTogRnJlZGlhbm8gWmlnbGlv
IDxmemlnbGlvQHJlZGhhdC5jb20+CgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
