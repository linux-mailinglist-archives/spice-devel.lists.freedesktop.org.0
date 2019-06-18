Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8BF49E43
	for <lists+spice-devel@lfdr.de>; Tue, 18 Jun 2019 12:30:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C583B6E12F;
	Tue, 18 Jun 2019 10:30:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75A616E134
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 10:30:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1C9803092674
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 10:30:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F920179F7
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 10:30:42 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 00D264EBC4;
 Tue, 18 Jun 2019 10:30:41 +0000 (UTC)
Date: Tue, 18 Jun 2019 06:30:41 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jakub =?utf-8?Q?Jank=C5=AF?= <jjanku@redhat.com>
Message-ID: <1741010991.23381592.1560853841938.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190617204630.22420-2-jjanku@redhat.com>
References: <20190617204630.22420-1-jjanku@redhat.com>
 <20190617204630.22420-2-jjanku@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.128, 10.4.195.3]
Thread-Topic: vmcstream: finish task immediately when reading 0 bytes
Thread-Index: 6tP9+JIpPLS85HuGRz0YCYnJtqb4gA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 18 Jun 2019 10:30:42 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 2/5] vmcstream: finish task
 immediately when reading 0 bytes
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

PiAKPiBUaGUgY3VycmVudCBpbXBsZW1lbnRhdGlvbiBmaW5pc2hlcyBpdAo+IG9ubHkgYWZ0ZXIg
bmV3IGRhdGEgYXJyaXZlcyBmcm9tIHRoZSBjaGFubmVsIChvciBhZnRlciBpdCBpcyBjYW5jZWxs
ZWQpLgo+IAoKTWlub3I6IHdlaXJkIHNwbGl0IG9mIGxvbmcgbGluZQoKPiBTaWduZWQtb2ZmLWJ5
OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQuY29tPgo+IC0tLQo+ICBzcmMvdm1jc3RyZWFt
LmMgfCAxNSArKysrKysrKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy92bWNzdHJlYW0uYyBiL3Ny
Yy92bWNzdHJlYW0uYwo+IGluZGV4IDg2Yzk0OWEuLjQ1MWQwNmUgMTAwNjQ0Cj4gLS0tIGEvc3Jj
L3ZtY3N0cmVhbS5jCj4gKysrIGIvc3JjL3ZtY3N0cmVhbS5jCj4gQEAgLTIwMSwxNCArMjAxLDIx
IEBAIHNwaWNlX3ZtY19pbnB1dF9zdHJlYW1fcmVhZF9hbGxfYXN5bmMoR0lucHV0U3RyZWFtCj4g
KnN0cmVhbSwKPiAgCj4gICAgICAvKiBubyBjb25jdXJyZW50IHJlYWQgcGVybWl0dGVkIGJ5IGdp
bnB1dHN0cmVhbSAqLwo+ICAgICAgZ19yZXR1cm5faWZfZmFpbChzZWxmLT50YXNrID09IE5VTEwp
Owo+IC0gICAgc2VsZi0+YWxsID0gVFJVRTsKPiAtICAgIHNlbGYtPmJ1ZmZlciA9IGJ1ZmZlcjsK
PiAtICAgIHNlbGYtPmNvdW50ID0gY291bnQ7Cj4gLSAgICBzZWxmLT5wb3MgPSAwOwo+ICsKCldo
eSB5b3UgY2hhbmdlZCB0aGlzPyBJIHRoaW5rIHRoZXNlIGZpZWxkcyB3b24ndCBiZSB1c2VkIGlm
CmNvdW50ID09IDAgYnV0IEkgd291bGQgcHJlZmVyIGlmIHRoZXkgY29udGFpbiB0aGUgdmFsdWVz
Cm9mIHRoZSBsYXN0IGNhbGwuIEFsc28gdGhpcyByZWR1Y2UgY29kZSBjaGFuZ2VzLgoKPiAgICAg
IHRhc2sgPSBnX3Rhc2tfbmV3KHNlbGYsCj4gICAgICAgICAgICAgICAgICAgICAgICBjYW5jZWxs
YWJsZSwKPiAgICAgICAgICAgICAgICAgICAgICAgIGNhbGxiYWNrLAo+ICAgICAgICAgICAgICAg
ICAgICAgICAgdXNlcl9kYXRhKTsKPiArICAgIGlmIChjb3VudCA9PSAwKSB7Cj4gKyAgICAgICAg
Z190YXNrX3JldHVybl9pbnQodGFzaywgMCk7Cj4gKyAgICAgICAgZ19vYmplY3RfdW5yZWYodGFz
ayk7Cj4gKyAgICAgICAgcmV0dXJuOwo+ICsgICAgfQo+ICsKPiArICAgIHNlbGYtPmFsbCA9IFRS
VUU7Cj4gKyAgICBzZWxmLT5idWZmZXIgPSBidWZmZXI7Cj4gKyAgICBzZWxmLT5jb3VudCA9IGNv
dW50Owo+ICsgICAgc2VsZi0+cG9zID0gMDsKPiAgICAgIHNlbGYtPnRhc2sgPSB0YXNrOwo+ICAg
ICAgaWYgKGNhbmNlbGxhYmxlKQo+ICAgICAgICAgIHNlbGYtPmNhbmNlbF9pZCA9CgpPdGhlcndp
c2UgcGF0Y2ggaXMgZmluZS4KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
