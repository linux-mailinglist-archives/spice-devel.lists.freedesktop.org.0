Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD2C56D94
	for <lists+spice-devel@lfdr.de>; Wed, 26 Jun 2019 17:24:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D39CB6E47A;
	Wed, 26 Jun 2019 15:24:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 334416E47A
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Jun 2019 15:24:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C934058E33
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Jun 2019 15:24:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C16455D719
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Jun 2019 15:24:27 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B66311806B0E;
 Wed, 26 Jun 2019 15:24:27 +0000 (UTC)
Date: Wed, 26 Jun 2019 11:24:26 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <933600511.24773314.1561562666277.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190626141026.30745-1-ssheribe@redhat.com>
References: <20190626141026.30745-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.11, 10.4.195.7]
Thread-Topic: gst-plugin: Drop sstream and use dedicated functions instead
Thread-Index: MNNzhDCOp8t6RrGnk78TOHcQEc7e+g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 26 Jun 2019 15:24:27 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent 1/2] gst-plugin:
 Drop sstream and use dedicated functions instead
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

Cj4gCj4gU2lnbmVkLW9mZi1ieTogU25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4K
CkNhbiB5b3UgZXhwbGFpbiB3aHkgdGhpcyBpcyBiZXR0ZXI/IEl0J3Mgbm90IGNsZWFyIGZyb20g
dGhlIGNvZGUuCgo+IC0tLQo+ICBzcmMvZ3N0LXBsdWdpbi5jcHAgfCAzMyArKysrKysrKysrKysr
KysrKy0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyks
IDE2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvZ3N0LXBsdWdpbi5jcHAgYi9z
cmMvZ3N0LXBsdWdpbi5jcHAKPiBpbmRleCA5ODU4YmViLi5jZjY2MGViIDEwMDY0NAo+IC0tLSBh
L3NyYy9nc3QtcGx1Z2luLmNwcAo+ICsrKyBiL3NyYy9nc3QtcGx1Z2luLmNwcAo+IEBAIC04LDcg
KzgsNiBAQAo+ICAjaW5jbHVkZSA8Y3N0cmluZz4KPiAgI2luY2x1ZGUgPGV4Y2VwdGlvbj4KPiAg
I2luY2x1ZGUgPHN0ZGV4Y2VwdD4KPiAtI2luY2x1ZGUgPHNzdHJlYW0+Cj4gICNpbmNsdWRlIDxt
ZW1vcnk+Cj4gICNpbmNsdWRlIDxzeXNsb2cuaD4KPiAgI2luY2x1ZGUgPHVuaXN0ZC5oPgo+IEBA
IC0xMzIsMzQgKzEzMSwzMyBAQCBHc3RFbGVtZW50Cj4gKkdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6
Z2V0X2VuY29kZXJfcGx1Z2luKGNvbnN0IEdzdHJlYW1lckVuY29kZXJTZXR0Cj4gICAgICBHTGlz
dCAqZmlsdGVyZWQ7Cj4gICAgICBHc3RFbGVtZW50ICplbmNvZGVyOwo+ICAgICAgR3N0RWxlbWVu
dEZhY3RvcnkgKmZhY3RvcnkgPSBudWxscHRyOwo+IC0gICAgc3RkOjpzdHJpbmdzdHJlYW0gY2Fw
c19zczsKPiAgCj4gICAgICBzd2l0Y2ggKHNldHRpbmdzLmNvZGVjKSB7Cj4gICAgICBjYXNlIFNQ
SUNFX1ZJREVPX0NPREVDX1RZUEVfSDI2NDoKPiAtICAgICAgICBjYXBzX3NzIDw8ICJ2aWRlby94
LWgyNjQiIDw8ICIsc3RyZWFtLWZvcm1hdD0oc3RyaW5nKWJ5dGUtc3RyZWFtIjsKPiArICAgICAg
ICBzaW5rX2NhcHMucmVzZXQoZ3N0X2NhcHNfbmV3X3NpbXBsZSgidmlkZW8veC1oMjY0IiwgInN0
cmVhbS1mb3JtYXQiLAo+IEdfVFlQRV9TVFJJTkcsICJieXRlLXN0cmVhbSIsIG51bGxwdHIpKTsK
PiAgICAgICAgICBicmVhazsKPiAgICAgIGNhc2UgU1BJQ0VfVklERU9fQ09ERUNfVFlQRV9NSlBF
RzoKPiAtICAgICAgICBjYXBzX3NzIDw8ICJpbWFnZS9qcGVnIjsKPiArICAgICAgICBzaW5rX2Nh
cHMucmVzZXQoZ3N0X2NhcHNfbmV3X2VtcHR5X3NpbXBsZSgiaW1hZ2UvanBlZyIpKTsKPiAgICAg
ICAgICBicmVhazsKPiAgICAgIGNhc2UgU1BJQ0VfVklERU9fQ09ERUNfVFlQRV9WUDg6Cj4gLSAg
ICAgICAgY2Fwc19zcyA8PCAidmlkZW8veC12cDgiOwo+ICsgICAgICAgIHNpbmtfY2Fwcy5yZXNl
dChnc3RfY2Fwc19uZXdfZW1wdHlfc2ltcGxlKCJ2aWRlby94LXZwOCIpKTsKPiAgICAgICAgICBi
cmVhazsKPiAgICAgIGNhc2UgU1BJQ0VfVklERU9fQ09ERUNfVFlQRV9WUDk6Cj4gLSAgICAgICAg
Y2Fwc19zcyA8PCAidmlkZW8veC12cDkiOwo+ICsgICAgICAgIHNpbmtfY2Fwcy5yZXNldChnc3Rf
Y2Fwc19uZXdfZW1wdHlfc2ltcGxlKCJ2aWRlby94LXZwOSIpKTsKPiAgICAgICAgICBicmVhazsK
PiAgICAgIGNhc2UgU1BJQ0VfVklERU9fQ09ERUNfVFlQRV9IMjY1Ogo+IC0gICAgICAgIGNhcHNf
c3MgPDwgInZpZGVvL3gtaDI2NSI7Cj4gKyAgICAgICAgc2lua19jYXBzLnJlc2V0KGdzdF9jYXBz
X25ld19lbXB0eV9zaW1wbGUoInZpZGVvL3gtaDI2NSIpKTsKPiAgICAgICAgICBicmVhazsKPiAg
ICAgIGRlZmF1bHQgOiAvKiBTaG91bGQgbm90IGhhcHBlbiAtIGp1c3QgdG8gYXZvaWQgY29tcGls
ZXIncyBjb21wbGFpbnQgKi8KPiAgICAgICAgICB0aHJvdyBzdGQ6OmxvZ2ljX2Vycm9yKCJVbmtu
b3duIGNvZGVjIik7Cj4gICAgICB9Cj4gLSAgICBjYXBzX3NzIDw8ICIsZnJhbWVyYXRlPSIgPDwg
c2V0dGluZ3MuZnBzIDw8ICIvMSI7Cj4gKyAgICBnc3RfY2Fwc19zZXRfc2ltcGxlKHNpbmtfY2Fw
cy5nZXQoKSwgImZyYW1lcmF0ZSIsIEdTVF9UWVBFX0ZSQUNUSU9OLAo+IHNldHRpbmdzLmZwcywg
MSwgbnVsbHB0cik7Cj4gKyAgICBnY2hhciAqY2Fwc19zdHIgPSBnc3RfY2Fwc190b19zdHJpbmco
c2lua19jYXBzLmdldCgpKTsKCkFzIHdlIGFyZSB1c2luZyBleGNlcHRpb24gSSB3b3VsZCBhdm9p
ZCB1c2luZyBuYWtlZCBwb2ludGVycy4KCj4gIAo+ICAgICAgZW5jb2RlcnMgPQo+ICAgICAgZ3N0
X2VsZW1lbnRfZmFjdG9yeV9saXN0X2dldF9lbGVtZW50cyhHU1RfRUxFTUVOVF9GQUNUT1JZX1RZ
UEVfVklERU9fRU5DT0RFUiwKPiAgICAgIEdTVF9SQU5LX05PTkUpOwo+IC0gICAgc2lua19jYXBz
LnJlc2V0KGdzdF9jYXBzX2Zyb21fc3RyaW5nKGNhcHNfc3Muc3RyKCkuY19zdHIoKSkpOwo+ICAg
ICAgZmlsdGVyZWQgPSBnc3RfZWxlbWVudF9mYWN0b3J5X2xpc3RfZmlsdGVyKGVuY29kZXJzLCBz
aW5rX2NhcHMuZ2V0KCksCj4gICAgICBHU1RfUEFEX1NSQywgZmFsc2UpOwo+ICAgICAgaWYgKGZp
bHRlcmVkKSB7Cj4gLSAgICAgICAgZ3N0X3N5c2xvZyhMT0dfTk9USUNFLCAiTG9va2luZyBmb3Ig
ZW5jb2RlciBwbHVnaW5zIHdoaWNoIGNhbgo+IHByb2R1Y2UgYSAnJXMnIHN0cmVhbSIsIGNhcHNf
c3Muc3RyKCkuY19zdHIoKSk7Cj4gKyAgICAgICAgZ3N0X3N5c2xvZyhMT0dfTk9USUNFLCAiTG9v
a2luZyBmb3IgZW5jb2RlciBwbHVnaW5zIHdoaWNoIGNhbgo+IHByb2R1Y2UgYSAnJXMnIHN0cmVh
bSIsIGNhcHNfc3RyKTsKPiAgICAgICAgICBmb3IgKEdMaXN0ICpsID0gZmlsdGVyZWQ7IGwgIT0g
bnVsbHB0cjsgbCA9IGwtPm5leHQpIHsKPiAgICAgICAgICAgICAgaWYgKCFmYWN0b3J5ICYmCj4g
ICAgICAgICAgICAgICFzZXR0aW5ncy5lbmNvZGVyLmNvbXBhcmUoR1NUX0VMRU1FTlRfTkFNRShs
LT5kYXRhKSkpIHsKPiAgICAgICAgICAgICAgICAgIGZhY3RvcnkgPSAoR3N0RWxlbWVudEZhY3Rv
cnkqKWwtPmRhdGE7Cj4gQEAgLTE2OSwxNCArMTY3LDE1IEBAIEdzdEVsZW1lbnQKPiAqR3N0cmVh
bWVyRnJhbWVDYXB0dXJlOjpnZXRfZW5jb2Rlcl9wbHVnaW4oY29uc3QgR3N0cmVhbWVyRW5jb2Rl
clNldHQKPiAgICAgICAgICBpZiAoIWZhY3RvcnkgJiYgIXNldHRpbmdzLmVuY29kZXIuZW1wdHko
KSkgewo+ICAgICAgICAgICAgICBnc3Rfc3lzbG9nKExPR19XQVJOSU5HLAo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICJTcGVjaWZpZWQgZW5jb2RlciBuYW1lZCAnJXMnIGNhbm5vdCBwcm9kdWNl
ICclcycKPiAgICAgICAgICAgICAgICAgICAgICAgICBzdHJlYW0sIG1ha2Ugc3VyZSBtYXRjaGlu
ZyBnc3QuY29kZWMgaXMgc3BlY2lmaWVkCj4gICAgICAgICAgICAgICAgICAgICAgICAgYW5kIHBs
dWdpbidzIGF2YWlsYWJpbGl0eSIsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgc2V0dGluZ3Mu
ZW5jb2Rlci5jX3N0cigpLCBjYXBzX3NzLnN0cigpLmNfc3RyKCkpOwo+ICsgICAgICAgICAgICAg
ICAgICAgICAgIHNldHRpbmdzLmVuY29kZXIuY19zdHIoKSwgY2Fwc19zdHIpOwo+ICAgICAgICAg
IH0KPiAgICAgICAgICBmYWN0b3J5ID0gZmFjdG9yeSA/IGZhY3RvcnkgOiAoR3N0RWxlbWVudEZh
Y3RvcnkqKWZpbHRlcmVkLT5kYXRhOwo+ICAgICAgICAgIGdzdF9zeXNsb2coTE9HX05PVElDRSwg
IiclcycgZW5jb2RlciBwbHVnaW4gaXMgdXNlZCIsCj4gICAgICAgICAgR1NUX0VMRU1FTlRfTkFN
RShmYWN0b3J5KSk7Cj4gIAo+ICAgICAgfSBlbHNlIHsKPiAtICAgICAgICBnc3Rfc3lzbG9nKExP
R19FUlIsICJObyBzdWl0YWJsZSBlbmNvZGVyIHdhcyBmb3VuZCBmb3IgJyVzJyIsCj4gY2Fwc19z
cy5zdHIoKS5jX3N0cigpKTsKPiArICAgICAgICBnc3Rfc3lzbG9nKExPR19FUlIsICJObyBzdWl0
YWJsZSBlbmNvZGVyIHdhcyBmb3VuZCBmb3IgJyVzJyIsCj4gY2Fwc19zdHIpOwo+ICAgICAgfQo+
ICsgICAgZ19mcmVlKGNhcHNfc3RyKTsKClRoaXMgbGluZSBzaG91bGQgbm90IGV4aXN0LgoKPiAg
Cj4gICAgICBlbmNvZGVyID0gZmFjdG9yeSA/IGdzdF9lbGVtZW50X2ZhY3RvcnlfY3JlYXRlKGZh
Y3RvcnksICJlbmNvZGVyIikgOgo+ICAgICAgbnVsbHB0cjsKPiAgICAgIGlmIChlbmNvZGVyKSB7
IC8vIEludmFsaWQgcHJvcGVydGllcyB3aWxsIGJlIGlnbm9yZWQgc2lsZW50bHkKPiBAQCAtMzUx
LDEwICszNTAsMTIgQEAgdm9pZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6OnhsaWJfY2FwdHVyZSgp
Cj4gICAgICAgICAgdGhyb3cgc3RkOjpydW50aW1lX2Vycm9yKCJGYWlsZWQgdG8gd3JhcCBpbWFn
ZSBpbiBnc3RyZWFtZXIKPiAgICAgICAgICBidWZmZXIiKTsKPiAgICAgIH0KPiAgCj4gLSAgICBz
dGQ6OnN0cmluZ3N0cmVhbSBzczsKPiAtCj4gLSAgICBzcyA8PCAidmlkZW8veC1yYXcsZm9ybWF0
PUJHUngsd2lkdGg9IiA8PCBpbWFnZS0+d2lkdGggPDwgIixoZWlnaHQ9IiA8PAo+IGltYWdlLT5o
ZWlnaHQgPDwgIixmcmFtZXJhdGU9IiA8PCBzZXR0aW5ncy5mcHMgPDwgIi8xIjsKPiAtICAgIEdz
dENhcHNVUHRyIGNhcHMoZ3N0X2NhcHNfZnJvbV9zdHJpbmcoc3Muc3RyKCkuY19zdHIoKSkpOwo+
ICsgICAgR3N0Q2Fwc1VQdHIgY2Fwcyhnc3RfY2Fwc19uZXdfc2ltcGxlKCJ2aWRlby94LXJhdyIs
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImZvcm1hdCIsIEdf
VFlQRV9TVFJJTkcsICJCR1J4IiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAid2lkdGgiLCBHX1RZUEVfSU5ULCBpbWFnZS0+d2lkdGgsCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImhlaWdodCIsIEdfVFlQRV9JTlQsCj4gaW1h
Z2UtPmhlaWdodCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAi
ZnJhbWVyYXRlIiwgR1NUX1RZUEVfRlJBQ1RJT04sCj4gc2V0dGluZ3MuZnBzLCAxLAo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG51bGxwdHIpKTsKPiAgCj4gICAg
ICAvLyBQdXNoIHNhbXBsZQo+ICAgICAgR3N0U2FtcGxlVVB0ciBhcHBzcmNfc2FtcGxlKGdzdF9z
YW1wbGVfbmV3KGJ1ZiwgY2Fwcy5nZXQoKSwgbnVsbHB0ciwKPiAgICAgIG51bGxwdHIpKTsKCkZy
ZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
