Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98161863C8
	for <lists+spice-devel@lfdr.de>; Thu,  8 Aug 2019 15:59:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19E9B8919D;
	Thu,  8 Aug 2019 13:59:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82E818912F
 for <spice-devel@lists.freedesktop.org>; Thu,  8 Aug 2019 13:59:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EEE0A315C00B
 for <spice-devel@lists.freedesktop.org>; Thu,  8 Aug 2019 13:59:26 +0000 (UTC)
Received: from lub.tlv (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D7375D70D;
 Thu,  8 Aug 2019 13:59:26 +0000 (UTC)
To: Snir Sheriber <ssheribe@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190801150119.29179-1-ssheribe@redhat.com>
 <20190801150119.29179-3-ssheribe@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <b96cff9b-355c-4ced-1a67-df2ce704fcf5@redhat.com>
Date: Thu, 8 Aug 2019 16:59:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190801150119.29179-3-ssheribe@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Thu, 08 Aug 2019 13:59:27 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent 3/4] gst-plugin:
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gOC8xLzE5IDY6MDEgUE0sIFNuaXIgU2hlcmliZXIgd3JvdGU6Cj4gLS0tCj4gICBzcmMvZ3N0
LXBsdWdpbi5jcHAgfCAzMSArKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tCj4gICAxIGZp
bGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL3NyYy9nc3QtcGx1Z2luLmNwcCBiL3NyYy9nc3QtcGx1Z2luLmNwcAo+IGluZGV4IDBh
MWQwNDEuLmM3NDEyYzUgMTAwNjQ0Cj4gLS0tIGEvc3JjL2dzdC1wbHVnaW4uY3BwCj4gKysrIGIv
c3JjL2dzdC1wbHVnaW4uY3BwCj4gQEAgLTY3LDYgKzY3LDE1IEBAIHN0cnVjdCBHc3RTYW1wbGVE
ZWxldGVyIHsKPiAgIAo+ICAgdXNpbmcgR3N0U2FtcGxlVVB0ciA9IHN0ZDo6dW5pcXVlX3B0cjxH
c3RTYW1wbGUsIEdzdFNhbXBsZURlbGV0ZXI+Owo+ICAgCj4gK3N0cnVjdCBHc3RCdWZmZXJEZWxl
dGVyIHsKPiArICAgIHZvaWQgb3BlcmF0b3IoKShHc3RCdWZmZXIqIHApCj4gKyAgICB7Cj4gKyAg
ICAgICAgZ3N0X2J1ZmZlcl91bnJlZihwKTsKPiArICAgIH0KPiArfTsKPiArCj4gK3VzaW5nIEdz
dEJ1ZmZlclVQdHIgPSBzdGQ6OnVuaXF1ZV9wdHI8R3N0QnVmZmVyLCBHc3RCdWZmZXJEZWxldGVy
PjsKPiArCj4gICBjbGFzcyBHc3RyZWFtZXJGcmFtZUNhcHR1cmUgZmluYWwgOiBwdWJsaWMgRnJh
bWVDYXB0dXJlCj4gICB7Cj4gICBwdWJsaWM6Cj4gQEAgLTg2LDcgKzk1LDYgQEAgcHJpdmF0ZToK
PiAgICAgICBEaXNwbGF5ICpjb25zdCBkcHk7Cj4gICAjaWYgWExJQl9DQVBUVVJFCj4gICAgICAg
dm9pZCB4bGliX2NhcHR1cmUoKTsKPiAtICAgIFhJbWFnZSAqaW1hZ2UgPSBudWxscHRyOwo+ICAg
I2VuZGlmCj4gICAgICAgR3N0T2JqZWN0VVB0cjxHc3RFbGVtZW50PiBwaXBlbGluZSwgY2FwdHVy
ZSwgc2luazsKPiAgICAgICBHc3RTYW1wbGVVUHRyIHNhbXBsZTsKPiBAQCAtMzA2LDEyICszMTQs
NiBAQCB2b2lkIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6ZnJlZV9zYW1wbGUoKQo+ICAgICAgICAg
ICBnc3RfYnVmZmVyX3VubWFwKGdzdF9zYW1wbGVfZ2V0X2J1ZmZlcihzYW1wbGUuZ2V0KCkpLCAm
bWFwKTsKPiAgICAgICAgICAgc2FtcGxlLnJlc2V0KCk7Cj4gICAgICAgfQo+IC0jaWYgWExJQl9D
QVBUVVJFCj4gLSAgICBpZihpbWFnZSkgewo+IC0gICAgICAgIGltYWdlLT5mLmRlc3Ryb3lfaW1h
Z2UoaW1hZ2UpOwo+IC0gICAgICAgIGltYWdlID0gbnVsbHB0cjsKPiAtICAgIH0KPiAtI2VuZGlm
Cj4gICB9Cj4gICAKPiAgIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6fkdzdHJlYW1lckZyYW1lQ2Fw
dHVyZSgpCj4gQEAgLTMyNyw5ICszMjksMTQgQEAgdm9pZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6
OlJlc2V0KCkKPiAgIH0KPiAgIAo+ICAgI2lmIFhMSUJfQ0FQVFVSRQo+ICt2b2lkIGZyZWVfeGlt
YWdlKGdwb2ludGVyIGRhdGEpIHsKPiArICAgICgoWEltYWdlKilkYXRhKS0+Zi5kZXN0cm95X2lt
YWdlKChYSW1hZ2UqKWRhdGEpOwoKSGksCgpJdCB3b3VsZCBiZSBuaWNlciB0byBzcGxpdCBpbnRv
IHR3byBsaW5lcwogICAgICBYSW1hZ2UgKmltYWdlID0gZGF0YTsKICAgICAgaW1hZ2UtPmYuZGVz
dHJveV9pbWFnZShpbWFnZSkKClVyaS4KCj4gK30KPiArCj4gICB2b2lkIEdzdHJlYW1lckZyYW1l
Q2FwdHVyZTo6eGxpYl9jYXB0dXJlKCkKPiAgIHsKPiAgICAgICBpbnQgc2NyZWVuID0gWERlZmF1
bHRTY3JlZW4oZHB5KTsKPiArICAgIFhJbWFnZSAqaW1hZ2UgPSBudWxscHRyOwo+ICAgCj4gICAg
ICAgV2luZG93IHdpbiA9IFJvb3RXaW5kb3coZHB5LCBzY3JlZW4pOwo+ICAgICAgIFhXaW5kb3dB
dHRyaWJ1dGVzIHdpbl9pbmZvOwo+IEBAIC0zNTUsOSArMzYyLDExIEBAIHZvaWQgR3N0cmVhbWVy
RnJhbWVDYXB0dXJlOjp4bGliX2NhcHR1cmUoKQo+ICAgICAgICAgICB0aHJvdyBzdGQ6OnJ1bnRp
bWVfZXJyb3IoIkNhbm5vdCBjYXB0dXJlIGZyb20gWCIpOwo+ICAgICAgIH0KPiAgIAo+IC0gICAg
R3N0QnVmZmVyICpidWY7Cj4gLSAgICBidWYgPSBnc3RfYnVmZmVyX25ld193cmFwcGVkKGltYWdl
LT5kYXRhLCBpbWFnZS0+aGVpZ2h0ICogaW1hZ2UtPmJ5dGVzX3Blcl9saW5lKTsKPiAtICAgIGlm
ICghYnVmKSB7Cj4gKyAgICBHc3RCdWZmZXJVUHRyIGJ1Zihnc3RfYnVmZmVyX25ld193cmFwcGVk
X2Z1bGwoKEdzdE1lbW9yeUZsYWdzKTAsIGltYWdlLT5kYXRhLAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGltYWdlLT5oZWlnaHQgKiBpbWFnZS0+
Ynl0ZXNfcGVyX2xpbmUsIDAsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgaW1hZ2UtPmhlaWdodCAqIGltYWdlLT5ieXRlc19wZXJfbGluZSwgaW1h
Z2UsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ZnJlZV94aW1hZ2UpKTsKPiArICAgIGlmICghYnVmLmdldCgpKSB7Cj4gICAgICAgICAgIHRocm93
IHN0ZDo6cnVudGltZV9lcnJvcigiRmFpbGVkIHRvIHdyYXAgaW1hZ2UgaW4gZ3N0cmVhbWVyIGJ1
ZmZlciIpOwo+ICAgICAgIH0KPiAgIAo+IEBAIC0zNjksNyArMzc4LDcgQEAgdm9pZCBHc3RyZWFt
ZXJGcmFtZUNhcHR1cmU6OnhsaWJfY2FwdHVyZSgpCj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIG51bGxwdHIpKTsKPiAgIAo+ICAgICAgIC8vIFB1c2ggc2FtcGxl
Cj4gLSAgICBHc3RTYW1wbGVVUHRyIGFwcHNyY19zYW1wbGUoZ3N0X3NhbXBsZV9uZXcoYnVmLCBj
YXBzLmdldCgpLCBudWxscHRyLCBudWxscHRyKSk7Cj4gKyAgICBHc3RTYW1wbGVVUHRyIGFwcHNy
Y19zYW1wbGUoZ3N0X3NhbXBsZV9uZXcoYnVmLmdldCgpLCBjYXBzLmdldCgpLCBudWxscHRyLCBu
dWxscHRyKSk7Cj4gICAgICAgaWYgKGdzdF9hcHBfc3JjX3B1c2hfc2FtcGxlKEdTVF9BUFBfU1JD
KGNhcHR1cmUuZ2V0KCkpLCBhcHBzcmNfc2FtcGxlLmdldCgpKSAhPSBHU1RfRkxPV19PSykgewo+
ICAgICAgICAgICB0aHJvdyBzdGQ6OnJ1bnRpbWVfZXJyb3IoImdzdHJhbWVyIGFwcHNyYyBlbGVt
ZW50IGNhbm5vdCBwdXNoIHNhbXBsZSIpOwo+ICAgICAgIH0KPiAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
