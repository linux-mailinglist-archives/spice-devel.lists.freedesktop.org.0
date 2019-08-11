Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D4289015
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 09:18:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E1A46E2D4;
	Sun, 11 Aug 2019 07:18:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBA236E2D4
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 07:18:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 50B2730BBE87
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 07:18:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4879C60C05
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 07:18:21 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 404F118089C8;
 Sun, 11 Aug 2019 07:18:21 +0000 (UTC)
Date: Sun, 11 Aug 2019 03:18:18 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <890268747.5450826.1565507898792.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190811065755.14812-1-ssheribe@redhat.com>
References: <20190811065755.14812-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.20, 10.4.195.1]
Thread-Topic: gst-plugin: Free input buffer and XImage as soon as possible
Thread-Index: FJXmRfuxsztlsOnH3P+EIqFl0lkJUA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Sun, 11 Aug 2019 07:18:21 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v2 spice-streaming-agent 1/2] gst-plugin:
 Free input buffer and XImage as soon as possible
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

Cj4gCj4gVGhpcyBhbHNvIGZpeGVzIGEgbWVtb3J5IGxlYWsgb2YgR3N0QnVmZmVyCj4gCj4gU2ln
bmVkLW9mZi1ieTogU25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KCkFja2VkCgo+
IC0tLQo+IENoYW5nZXMgZnJvbSB2MToKPiAtY29tbWl0IG1lc3NhZ2UKPiAtU3R5bGUKPiAtLQo+
ICBzcmMvZ3N0LXBsdWdpbi5jcHAgfCAzNiArKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0t
LS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvZ3N0LXBsdWdpbi5jcHAgYi9zcmMvZ3N0LXBsdWdpbi5j
cHAKPiBpbmRleCAwYTFkMDQxLi40ZDE3ZGJjIDEwMDY0NAo+IC0tLSBhL3NyYy9nc3QtcGx1Z2lu
LmNwcAo+ICsrKyBiL3NyYy9nc3QtcGx1Z2luLmNwcAo+IEBAIC02Nyw2ICs2NywxNSBAQCBzdHJ1
Y3QgR3N0U2FtcGxlRGVsZXRlciB7Cj4gIAo+ICB1c2luZyBHc3RTYW1wbGVVUHRyID0gc3RkOjp1
bmlxdWVfcHRyPEdzdFNhbXBsZSwgR3N0U2FtcGxlRGVsZXRlcj47Cj4gIAo+ICtzdHJ1Y3QgR3N0
QnVmZmVyRGVsZXRlciB7Cj4gKyAgICB2b2lkIG9wZXJhdG9yKCkoR3N0QnVmZmVyKiBwKQo+ICsg
ICAgewo+ICsgICAgICAgIGdzdF9idWZmZXJfdW5yZWYocCk7Cj4gKyAgICB9Cj4gK307Cj4gKwo+
ICt1c2luZyBHc3RCdWZmZXJVUHRyID0gc3RkOjp1bmlxdWVfcHRyPEdzdEJ1ZmZlciwgR3N0QnVm
ZmVyRGVsZXRlcj47Cj4gKwo+ICBjbGFzcyBHc3RyZWFtZXJGcmFtZUNhcHR1cmUgZmluYWwgOiBw
dWJsaWMgRnJhbWVDYXB0dXJlCj4gIHsKPiAgcHVibGljOgo+IEBAIC04Niw3ICs5NSw2IEBAIHBy
aXZhdGU6Cj4gICAgICBEaXNwbGF5ICpjb25zdCBkcHk7Cj4gICNpZiBYTElCX0NBUFRVUkUKPiAg
ICAgIHZvaWQgeGxpYl9jYXB0dXJlKCk7Cj4gLSAgICBYSW1hZ2UgKmltYWdlID0gbnVsbHB0cjsK
PiAgI2VuZGlmCj4gICAgICBHc3RPYmplY3RVUHRyPEdzdEVsZW1lbnQ+IHBpcGVsaW5lLCBjYXB0
dXJlLCBzaW5rOwo+ICAgICAgR3N0U2FtcGxlVVB0ciBzYW1wbGU7Cj4gQEAgLTMwNiwxMiArMzE0
LDYgQEAgdm9pZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6OmZyZWVfc2FtcGxlKCkKPiAgICAgICAg
ICBnc3RfYnVmZmVyX3VubWFwKGdzdF9zYW1wbGVfZ2V0X2J1ZmZlcihzYW1wbGUuZ2V0KCkpLCAm
bWFwKTsKPiAgICAgICAgICBzYW1wbGUucmVzZXQoKTsKPiAgICAgIH0KPiAtI2lmIFhMSUJfQ0FQ
VFVSRQo+IC0gICAgaWYoaW1hZ2UpIHsKPiAtICAgICAgICBpbWFnZS0+Zi5kZXN0cm95X2ltYWdl
KGltYWdlKTsKPiAtICAgICAgICBpbWFnZSA9IG51bGxwdHI7Cj4gLSAgICB9Cj4gLSNlbmRpZgo+
ICB9Cj4gIAo+ICBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6On5Hc3RyZWFtZXJGcmFtZUNhcHR1cmUo
KQo+IEBAIC0zMjcsNiArMzI5LDEyIEBAIHZvaWQgR3N0cmVhbWVyRnJhbWVDYXB0dXJlOjpSZXNl
dCgpCj4gIH0KPiAgCj4gICNpZiBYTElCX0NBUFRVUkUKPiArdm9pZCBmcmVlX3hpbWFnZShncG9p
bnRlciBkYXRhKQo+ICt7Cj4gKyAgICBYSW1hZ2UgKmltYWdlID0gKFhJbWFnZSopZGF0YTsKPiAr
ICAgIGltYWdlLT5mLmRlc3Ryb3lfaW1hZ2UoaW1hZ2UpOwo+ICt9Cj4gKwo+ICB2b2lkIEdzdHJl
YW1lckZyYW1lQ2FwdHVyZTo6eGxpYl9jYXB0dXJlKCkKPiAgewo+ICAgICAgaW50IHNjcmVlbiA9
IFhEZWZhdWx0U2NyZWVuKGRweSk7Cj4gQEAgLTM0OSwxNCArMzU3LDE2IEBAIHZvaWQgR3N0cmVh
bWVyRnJhbWVDYXB0dXJlOjp4bGliX2NhcHR1cmUoKQo+ICAgICAgICAgIGdzdF9lbGVtZW50X3Nl
dF9zdGF0ZShwaXBlbGluZS5nZXQoKSwgR1NUX1NUQVRFX1BMQVlJTkcpOwo+ICAgICAgfQo+ICAK
PiAtICAgIGltYWdlID0gWEdldEltYWdlKGRweSwgd2luLCAwLCAwLAo+IC0gICAgICAgICAgICAg
ICAgICAgICAgY3VyX3dpZHRoLCBjdXJfaGVpZ2h0LCBBbGxQbGFuZXMsIFpQaXhtYXApOwo+ICsg
ICAgWEltYWdlICppbWFnZSA9IFhHZXRJbWFnZShkcHksIHdpbiwgMCwgMCwKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgY3VyX3dpZHRoLCBjdXJfaGVpZ2h0LCBBbGxQbGFuZXMsIFpQ
aXhtYXApOwo+ICAgICAgaWYgKCFpbWFnZSkgewo+ICAgICAgICAgIHRocm93IHN0ZDo6cnVudGlt
ZV9lcnJvcigiQ2Fubm90IGNhcHR1cmUgZnJvbSBYIik7Cj4gICAgICB9Cj4gIAo+IC0gICAgR3N0
QnVmZmVyICpidWY7Cj4gLSAgICBidWYgPSBnc3RfYnVmZmVyX25ld193cmFwcGVkKGltYWdlLT5k
YXRhLCBpbWFnZS0+aGVpZ2h0ICoKPiBpbWFnZS0+Ynl0ZXNfcGVyX2xpbmUpOwo+ICsgICAgR3N0
QnVmZmVyVVB0cgo+IGJ1Zihnc3RfYnVmZmVyX25ld193cmFwcGVkX2Z1bGwoR1NUX01FTU9SWV9G
TEFHX1BIWVNJQ0FMTFlfQ09OVElHVU9VUywKPiBpbWFnZS0+ZGF0YSwKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbWFnZS0+aGVpZ2h0ICoKPiBp
bWFnZS0+Ynl0ZXNfcGVyX2xpbmUsIDAsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgaW1hZ2UtPmhlaWdodCAqCj4gaW1hZ2UtPmJ5dGVzX3Blcl9s
aW5lLCBpbWFnZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBmcmVlX3hpbWFnZSkpOwo+ICAgICAgaWYgKCFidWYpIHsKPiAgICAgICAgICB0aHJv
dyBzdGQ6OnJ1bnRpbWVfZXJyb3IoIkZhaWxlZCB0byB3cmFwIGltYWdlIGluIGdzdHJlYW1lcgo+
ICAgICAgICAgIGJ1ZmZlciIpOwo+ICAgICAgfQo+IEBAIC0zNjgsOCArMzc4LDggQEAgdm9pZCBH
c3RyZWFtZXJGcmFtZUNhcHR1cmU6OnhsaWJfY2FwdHVyZSgpCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgImZyYW1lcmF0ZSIsIEdTVF9UWVBFX0ZSQUNUSU9OLAo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNldHRpbmdzLmZwcywg
MSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBudWxscHRyKSk7
Cj4gIAo+IC0gICAgLy8gUHVzaCBzYW1wbGUKPiAtICAgIEdzdFNhbXBsZVVQdHIgYXBwc3JjX3Nh
bXBsZShnc3Rfc2FtcGxlX25ldyhidWYsIGNhcHMuZ2V0KCksIG51bGxwdHIsCj4gbnVsbHB0cikp
Owo+ICsgICAgLy8gUHVzaCBzYW1wbGUgKGdzdF9hcHBfc3JjX3B1c2hfc2FtcGxlIGRvZXMgbm90
IHRha2UgYnVmZmVyIG93bmVyc2hpcCkKPiArICAgIEdzdFNhbXBsZVVQdHIgYXBwc3JjX3NhbXBs
ZShnc3Rfc2FtcGxlX25ldyhidWYuZ2V0KCksIGNhcHMuZ2V0KCksCj4gbnVsbHB0ciwgbnVsbHB0
cikpOwo+ICAgICAgaWYgKGdzdF9hcHBfc3JjX3B1c2hfc2FtcGxlKEdTVF9BUFBfU1JDKGNhcHR1
cmUuZ2V0KCkpLAo+ICAgICAgYXBwc3JjX3NhbXBsZS5nZXQoKSkgIT0gR1NUX0ZMT1dfT0spIHsK
PiAgICAgICAgICB0aHJvdyBzdGQ6OnJ1bnRpbWVfZXJyb3IoImdzdHJhbWVyIGFwcHNyYyBlbGVt
ZW50IGNhbm5vdCBwdXNoCj4gICAgICAgICAgc2FtcGxlIik7Cj4gICAgICB9Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
