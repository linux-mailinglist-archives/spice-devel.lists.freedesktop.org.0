Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A5C47FF0
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 12:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D8389078;
	Mon, 17 Jun 2019 10:44:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D25689078
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 10:44:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B8F9D309B149;
 Mon, 17 Jun 2019 10:44:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AAFDC9F2E4;
 Mon, 17 Jun 2019 10:44:41 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9F5881806B0F;
 Mon, 17 Jun 2019 10:44:41 +0000 (UTC)
Date: Mon, 17 Jun 2019 06:44:40 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <1096299612.23039230.1560768280252.JavaMail.zimbra@redhat.com>
In-Reply-To: <a7b7b2316040129afd5a6e621735be4f69d3f68f.1560528809.git.fgouget@free.fr>
References: <3cfa084bfb39cf77de9269282c087f8b30f99867.1560528809.git.fgouget@free.fr>
 <a7b7b2316040129afd5a6e621735be4f69d3f68f.1560528809.git.fgouget@free.fr>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.51, 10.4.195.8]
Thread-Topic: gstreamer: Add the encoded frame's rank to the statistics
Thread-Index: DZ8plLXdrDgnUTEnYqMWZ4qVD09IBw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Mon, 17 Jun 2019 10:44:47 +0000 (UTC)
Subject: Re: [Spice-devel] [client 5/5] gstreamer: Add the encoded frame's
 rank to the statistics
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
b20+Cj4gLS0tCj4gIHNyYy9jaGFubmVsLWRpc3BsYXktZ3N0LmMgfCA2ICsrKystLQo+ICAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jIGIvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3Qu
Ywo+IGluZGV4IGZjMzM4ZGZmLi5iOGYwYzJlZSAxMDA2NDQKPiAtLS0gYS9zcmMvY2hhbm5lbC1k
aXNwbGF5LWdzdC5jCj4gKysrIGIvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYwo+IEBAIC05MCw2
ICs5MCw3IEBAIHN0cnVjdCBTcGljZUdzdEZyYW1lIHsKPiAgICAgIEdzdEJ1ZmZlciAqZW5jb2Rl
ZF9idWZmZXI7Cj4gICAgICBTcGljZUZyYW1lICplbmNvZGVkX2ZyYW1lOwo+ICAgICAgR3N0U2Ft
cGxlICpkZWNvZGVkX3NhbXBsZTsKPiArICAgIGd1aW50IHJhbms7CgpNYXliZSBwdXQgc29tZSBj
b21tZW50IGluIHRoZSBjb2RlIGFuZCBub3Qgb25seSBvbiBjb21taXQgbWVzc2FnZT8KCkhvbmVz
dGx5ICJyYW5rIiBkb2VzIG5vdCBzb3VuZCB0aGF0IGdyZWF0IG5hbWUgdG8gbWUsIEknbSBub3Qg
YW4gRW5nbGlzaCBuYXRpdmUKc3BlYWtlciBhbmQgSSBoYWQgYSBsb29rIGF0IGEgZGljdGlvbmFy
eSBmb3IgcG90ZW50aWFsIG90aGVyIG1lYW5pbmdzIGJ1dApJIGRpZG4ndCBmaW5kIG9uZSB3ZXJl
IHRoaXMgInJhbmsiIHNvdW5kcyByaWdodC4KCj4gIH07Cj4gIAo+ICBzdGF0aWMgU3BpY2VHc3RG
cmFtZSAqY3JlYXRlX2dzdF9mcmFtZShHc3RCdWZmZXIgKmJ1ZmZlciwgU3BpY2VGcmFtZSAqZnJh
bWUpCj4gQEAgLTQ0Miw5ICs0NDMsOSBAQCBzaW5rX2V2ZW50X3Byb2JlKEdzdFBhZCAqcGFkLCBH
c3RQYWRQcm9iZUluZm8gKmluZm8sCj4gZ3BvaW50ZXIgZGF0YSkKPiAgICAgICAgICAgICAgaW50
NjRfdCBkdXJhdGlvbiA9IGdfZ2V0X21vbm90b25pY190aW1lKCkgLQo+ICAgICAgICAgICAgICBm
cmFtZS0+Y3JlYXRpb25fdGltZTsKPiAgICAgICAgICAgICAgcmVjb3JkKGZyYW1lc19zdGF0cywK
PiAgICAgICAgICAgICAgICAgICAgICJmcmFtZSBtbV90aW1lICV1IHNpemUgJXUgY3JlYXRpb24g
dGltZSAlIiBQUklkNjQKPiAtICAgICAgICAgICAgICAgICAgICIgZGVjb2RlZCB0aW1lICUiIFBS
SWQ2NCAiIHF1ZXVlICV1IiwKPiArICAgICAgICAgICAgICAgICAgICIgZGVjb2RlZCB0aW1lICUi
IFBSSWQ2NCAiIHJhbmsgJXUgcXVldWUgJXUiLAoKV2h5IG5vdCBhZGRpbmcgdG8gdGhlIGVuZD8g
SSdtIGFza2luZyBiZWNhdXNlIEkgaGF2ZSBhIHRvb2wgd2hpY2ggdXNlcwp0aGF0IG91dHB1dC4g
SXMgaXQgYSBwcm9ibGVtIGFkZGluZyB0aGF0IHRvIHRoZSBlbmQ/Cgo+ICAgICAgICAgICAgICAg
ICAgICAgZnJhbWUtPm1tX3RpbWUsIGZyYW1lLT5zaXplLCBmcmFtZS0+Y3JlYXRpb25fdGltZSwK
PiAgICAgICAgICAgICAgICAgICAgIGR1cmF0aW9uLAo+IC0gICAgICAgICAgICAgICAgICAgZ19x
dWV1ZV9nZXRfbGVuZ3RoKGRlY29kZXItPmRlY29kaW5nX3F1ZXVlKSk7Cj4gKyAgICAgICAgICAg
ICAgICAgICBnc3RmcmFtZS0+cmFuaywKPiBnX3F1ZXVlX2dldF9sZW5ndGgoZGVjb2Rlci0+ZGVj
b2RpbmdfcXVldWUpKTsKPiAgCj4gICAgICAgICAgICAgIGlmICghZGVjb2Rlci0+YXBwc2luaykg
ewo+ICAgICAgICAgICAgICAgICAgLyogVGhlIHNpbmsgd2lsbCBkaXNwbGF5IHRoZSBmcmFtZSBk
aXJlY3RseSBzbyB0aGlzCj4gQEAgLTcyOSw2ICs3MzAsNyBAQCBzdGF0aWMgZ2Jvb2xlYW4KPiBz
cGljZV9nc3RfZGVjb2Rlcl9xdWV1ZV9mcmFtZShWaWRlb0RlY29kZXIgKnZpZGVvX2RlY29kZXIs
Cj4gIAo+ICAgICAgU3BpY2VHc3RGcmFtZSAqZ3N0X2ZyYW1lID0gY3JlYXRlX2dzdF9mcmFtZShi
dWZmZXIsIGZyYW1lKTsKPiAgICAgIGdfbXV0ZXhfbG9jaygmZGVjb2Rlci0+cXVldWVzX211dGV4
KTsKPiArICAgIGdzdF9mcmFtZS0+cmFuayA9IGdfcXVldWVfZ2V0X2xlbmd0aChkZWNvZGVyLT5k
ZWNvZGluZ19xdWV1ZSk7Cj4gICAgICBnX3F1ZXVlX3B1c2hfdGFpbChkZWNvZGVyLT5kZWNvZGlu
Z19xdWV1ZSwgZ3N0X2ZyYW1lKTsKPiAgICAgIGdfbXV0ZXhfdW5sb2NrKCZkZWNvZGVyLT5xdWV1
ZXNfbXV0ZXgpOwo+ICAKCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9zcGljZS1kZXZlbA==
