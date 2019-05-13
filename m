Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B2B1B6A3
	for <lists+spice-devel@lfdr.de>; Mon, 13 May 2019 15:04:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A02168989A;
	Mon, 13 May 2019 13:04:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C5FC8989A
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 13:04:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B81B330054AB
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 13:04:35 +0000 (UTC)
Received: from lub.tlv (dhcp-4-208.tlv.redhat.com [10.35.4.208])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 289CD10027CD;
 Mon, 13 May 2019 13:04:34 +0000 (UTC)
To: =?UTF-8?Q?Daniel_P=2e_Berrang=c3=a9?= <berrange@redhat.com>
References: <20190507094855.20634-1-uril@redhat.com>
 <20190507095755.GJ27205@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <d75afee4-9809-602d-a7ef-e16ad46cde82@redhat.com>
Date: Mon, 13 May 2019 16:04:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190507095755.GJ27205@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Mon, 13 May 2019 13:04:35 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] build: do not warn about
 address-of-packed-member
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
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNS83LzE5IDEyOjU3IFBNLCBEYW5pZWwgUC4gQmVycmFuZ8OpIHdyb3RlOgo+IE9uIFR1ZSwg
TWF5IDA3LCAyMDE5IGF0IDEyOjQ4OjU1UE0gKzAzMDAsIFVyaSBMdWJsaW4gd3JvdGU6Cj4+IFRo
ZSBnY2Mgd2FybmluZyBhZGRyZXNzLW9mLXBhY2tlZC1tZW1iZXIgaXMgbmV3IGFuZCBvbiBieQo+
PiBkZWZhdWx0IGluIGdjYyA5Lgo+Pgo+PiBNYW55IG9mIHRoZSBzdHJ1Y3R1cmVzIHNlbnQgb3Zl
ciB0aGUgbmV0d29yayBhcmUgcGFja2VkCj4+IGFuZCB3aXRoIHVuYWxpZ25lZCBmaWVsZHMuCj4+
Cj4+IFRoaXMgYnJlYWtzIHRoZSBidWlsZCAtLSBkdWUgdG8gLVdlcnJvci4KPj4gVGVsbCBnY2Mg
dG8gbm90IHdhcm4gYWJvdXQgaXQuCj4gCj4gTm90ZSB0aGF0IHVuYWxpZ25lZCBhY2Nlc3NlcyBh
cmUgZ2VudWluZSBidWdzIHNvIGlnbm9yaW5nIHRoZXNlCj4gbWVhbiBzcGljZSBpcyBicm9rZW4g
b24gY2VydGFpbiBhcmNoaXRlY3R1cmVzLiBzcGFyYywgYXJtNywgaHBwYSwKPiBtaXBzIGluIHBh
cnRpY3VsYXIgd2lsbCBlaXRoZXIgc2lnYnVzIG9yIGNhdXNlIHRyYXBzIHRvIGtlcm5lbCBzcGFj
ZQo+IHdoaWNoIGFyZSBzdXV1dXVwZXIgc2xvdy4gRXZlbiBvbiBhcmNoaXRlY3R1cmVzIHdoZXJl
IGl0IGlzIG9rLAo+IHlvdSBvZnRlbiBnZXQgYSBwZXJmb3JtYW5jZSBkZWdyYWRhdGlvbi4KCldl
J2xsIHRyeSB0byBmaXggdGhvc2Ugd2FybmluZ3MsIHNvIGN1cnJlbnRseSB0aGlzIHBhdGNoIGlz
IHBvc3Rwb25lZC4KCk5vdGUgdGhhdCB0aGlzIGlzIHRoZSBjdXJyZW50IHN0YXRlIC0tIGl0J3Mg
anVzdCB0aGF0IGdjYyA5IHdhcm5zCmFib3V0IGl0LgoKPiAKPiBJZiB5b3UgZG9uJ3QgY2FyZSBh
Ym91dCB0aGVzZSBhcmNoaXRlY3R1cmVzIHRoYXQncyBvYnZpb3VzbHkgZmluZSwKPiBidXQgSSB0
aGluayB0aGUgY29tbWl0IG1lc3NhZ2Ugc2hvdWxkIGF0IGxlYXN0IGFja25vd2xlZGdlIHRoYXQK
PiB0aGVzZSBhcmUgZ2VudWluZSBidWdzIGJlaW5nIGludGVudGlvbmFsbHkgaWdub3JlZC4KCk9L
LCBpZiB3ZSBjYW4gbm90IGZpeCB0aGVtIGFsbCwgSSdsbCBhZGQgdGhpcyBpbmZvcm1hdGlvbiB0
byB0aGUKY29tbWl0IG1lc3NhZ2UsCgpUaGFua3MsCiAgICAgVXJpLgoKPiAKPiBSZWdhcmRzLAo+
IERhbmllbAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
