Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA42499E4
	for <lists+spice-devel@lfdr.de>; Tue, 18 Jun 2019 09:07:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AC9D6E0DF;
	Tue, 18 Jun 2019 07:07:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FE226E0DF
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 07:07:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F2B95882FD;
 Tue, 18 Jun 2019 07:07:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E6D5A8207F;
 Tue, 18 Jun 2019 07:07:30 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D812C24F19;
 Tue, 18 Jun 2019 07:07:30 +0000 (UTC)
Date: Tue, 18 Jun 2019 03:07:30 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <106143521.23347622.1560841650825.JavaMail.zimbra@redhat.com>
In-Reply-To: <4eb0dceefa87cb24fb96e385ac2c51e9cf9e6629.1560790607.git.fgouget@free.fr>
References: <cover.1560790607.git.fgouget@free.fr>
 <4eb0dceefa87cb24fb96e385ac2c51e9cf9e6629.1560790607.git.fgouget@free.fr>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.128, 10.4.195.5]
Thread-Topic: gstreamer: Add the encoded frame's order the statistics
Thread-Index: gdJZuw1iv7aNAZEvfCfZ49JwJP02ow==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 18 Jun 2019 07:07:31 +0000 (UTC)
Subject: Re: [Spice-devel] [client v2 04/12] gstreamer: Add the encoded
 frame's order the statistics
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBUaGUgbnVtYmVyIG9mIGZyYW1lcyB0aGF0IHdlcmUgc2l0dGluZyBpbiB0aGUgZGVjb2Rp
bmdfcXVldWUgYmVmb3JlIHRoZQo+IGN1cnJlbnQgZnJhbWUgd2FzIGFkZGVkIGlzIGNydWNpYWwg
dG8gY29ycmVjdGx5IGludGVycHJldCB0aGUgZGVjb2RpbmcKPiB0aW1lOgo+ICogTGVzcyB0aGFu
IE1BWF9ERUNPREVEX0ZSQU1FUyBtZWFucyBub3RoaW5nIGJsb2NrZWQgdGhlIGRlY29kaW5nIG9m
Cj4gICB0aGF0IGZyYW1lLgo+ICogTW9yZSB0aGFuIE1BWF9ERUNPREVEX0ZSQU1FUyBtZWFucyBk
ZWNvZGluZyB3YXMgZGVsYXllZCBieSBvbmUgb3IgbW9yZQo+ICAgZnJhbWUgaW50ZXJ2YWxzLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IEZyYW5jb2lzIEdvdWdldCA8ZmdvdWdldEBjb2Rld2VhdmVycy5j
b20+CgpBY2tlZAoKPiAtLS0KPiAKPiB2MjogUmVuYW1lZCByYW5rIHRvIHF1ZXVlX2xlbi4KPiAg
ICAgTW92ZWQgaXQgdG8gdGhlIGxhc3QgcG9zaXRpb24gaW4gdGhlIHN0YXRpc3RpY3Mgc3RyaW5n
Lgo+IAo+ICBzcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jIHwgMTMgKysrKysrKysrKystLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYyBiL3NyYy9jaGFubmVsLWRpc3BsYXkt
Z3N0LmMKPiBpbmRleCBjMmIyNGVhNy4uNDQ5YjljYjggMTAwNjQ0Cj4gLS0tIGEvc3JjL2NoYW5u
ZWwtZGlzcGxheS1nc3QuYwo+ICsrKyBiL3NyYy9jaGFubmVsLWRpc3BsYXktZ3N0LmMKPiBAQCAt
OTAsNiArOTAsNyBAQCBzdHJ1Y3QgU3BpY2VHc3RGcmFtZSB7Cj4gICAgICBHc3RCdWZmZXIgKmVu
Y29kZWRfYnVmZmVyOwo+ICAgICAgU3BpY2VGcmFtZSAqZW5jb2RlZF9mcmFtZTsKPiAgICAgIEdz
dFNhbXBsZSAqZGVjb2RlZF9zYW1wbGU7Cj4gKyAgICBndWludCBxdWV1ZV9sZW47Cj4gIH07Cj4g
IAo+ICBzdGF0aWMgU3BpY2VHc3RGcmFtZSAqY3JlYXRlX2dzdF9mcmFtZShHc3RCdWZmZXIgKmJ1
ZmZlciwgU3BpY2VGcmFtZSAqZnJhbWUpCj4gQEAgLTQ0MCwxMSArNDQxLDE4IEBAIHNpbmtfZXZl
bnRfcHJvYmUoR3N0UGFkICpwYWQsIEdzdFBhZFByb2JlSW5mbyAqaW5mbywKPiBncG9pbnRlciBk
YXRhKQo+ICAgICAgICAgICAgICBTcGljZUdzdEZyYW1lICpnc3RmcmFtZSA9IGwtPmRhdGE7Cj4g
ICAgICAgICAgICAgIGNvbnN0IFNwaWNlRnJhbWUgKmZyYW1lID0gZ3N0ZnJhbWUtPmVuY29kZWRf
ZnJhbWU7Cj4gICAgICAgICAgICAgIGludDY0X3QgZHVyYXRpb24gPSBnX2dldF9tb25vdG9uaWNf
dGltZSgpIC0KPiAgICAgICAgICAgICAgZnJhbWUtPmNyZWF0aW9uX3RpbWU7Cj4gKyAgICAgICAg
ICAgIC8qIE5vdGUgdGhhdCBxdWV1ZV9sZW4gKHRoZSBsZW5ndGggb2YgdGhlIHF1ZXVlIHByaW9y
IHRvIGFkZGluZwo+ICsgICAgICAgICAgICAgKiB0aGlzIGZyYW1lKSBpcyBjcnVjaWFsIHRvIGNv
cnJlY3RseSBpbnRlcnByZXQgdGhlIGRlY29kaW5nCj4gdGltZToKPiArICAgICAgICAgICAgICog
LSBMZXNzIHRoYW4gTUFYX0RFQ09ERURfRlJBTUVTIG1lYW5zIG5vdGhpbmcgYmxvY2tlZCB0aGUK
PiArICAgICAgICAgICAgICogICBkZWNvZGluZyBvZiB0aGF0IGZyYW1lLgo+ICsgICAgICAgICAg
ICAgKiAtIE1vcmUgdGhhbiBNQVhfREVDT0RFRF9GUkFNRVMgbWVhbnMgZGVjb2Rpbmcgd2FzIGRl
bGF5ZWQgYnkKPiBvbmUKPiArICAgICAgICAgICAgICogICBvciBtb3JlIGZyYW1lIGludGVydmFs
cy4KPiArICAgICAgICAgICAgICovCj4gICAgICAgICAgICAgIHJlY29yZChmcmFtZXNfc3RhdHMs
Cj4gICAgICAgICAgICAgICAgICAgICAiZnJhbWUgbW1fdGltZSAldSBzaXplICV1IGNyZWF0aW9u
IHRpbWUgJSIgUFJJZDY0Cj4gLSAgICAgICAgICAgICAgICAgICAiIGRlY29kZWQgdGltZSAlIiBQ
UklkNjQgIiBxdWV1ZSAldSIsCj4gKyAgICAgICAgICAgICAgICAgICAiIGRlY29kZWQgdGltZSAl
IiBQUklkNjQgIiBxdWV1ZSAldSBiZWZvcmUgJXUiLAo+ICAgICAgICAgICAgICAgICAgICAgZnJh
bWUtPm1tX3RpbWUsIGZyYW1lLT5zaXplLCBmcmFtZS0+Y3JlYXRpb25fdGltZSwKPiAgICAgICAg
ICAgICAgICAgICAgIGR1cmF0aW9uLAo+IC0gICAgICAgICAgICAgICAgICAgZGVjb2Rlci0+ZGVj
b2RpbmdfcXVldWUtPmxlbmd0aCk7Cj4gKyAgICAgICAgICAgICAgICAgICBkZWNvZGVyLT5kZWNv
ZGluZ19xdWV1ZS0+bGVuZ3RoLCBnc3RmcmFtZS0+cXVldWVfbGVuKTsKPiAgCj4gICAgICAgICAg
ICAgIGlmICghZGVjb2Rlci0+YXBwc2luaykgewo+ICAgICAgICAgICAgICAgICAgLyogVGhlIHNp
bmsgd2lsbCBkaXNwbGF5IHRoZSBmcmFtZSBkaXJlY3RseSBzbyB0aGlzCj4gQEAgLTcyOSw2ICs3
MzcsNyBAQCBzdGF0aWMgZ2Jvb2xlYW4KPiBzcGljZV9nc3RfZGVjb2Rlcl9xdWV1ZV9mcmFtZShW
aWRlb0RlY29kZXIgKnZpZGVvX2RlY29kZXIsCj4gIAo+ICAgICAgU3BpY2VHc3RGcmFtZSAqZ3N0
X2ZyYW1lID0gY3JlYXRlX2dzdF9mcmFtZShidWZmZXIsIGZyYW1lKTsKPiAgICAgIGdfbXV0ZXhf
bG9jaygmZGVjb2Rlci0+cXVldWVzX211dGV4KTsKPiArICAgIGdzdF9mcmFtZS0+cXVldWVfbGVu
ID0gZGVjb2Rlci0+ZGVjb2RpbmdfcXVldWUtPmxlbmd0aDsKPiAgICAgIGdfcXVldWVfcHVzaF90
YWlsKGRlY29kZXItPmRlY29kaW5nX3F1ZXVlLCBnc3RfZnJhbWUpOwo+ICAgICAgZ19tdXRleF91
bmxvY2soJmRlY29kZXItPnF1ZXVlc19tdXRleCk7Cj4gIApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
