Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7E720024
	for <lists+spice-devel@lfdr.de>; Thu, 16 May 2019 09:23:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBD3A8931F;
	Thu, 16 May 2019 07:22:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60DE5892E2
 for <spice-devel@lists.freedesktop.org>; Thu, 16 May 2019 07:22:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0045D1796;
 Thu, 16 May 2019 07:22:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EB8DC5D6A9;
 Thu, 16 May 2019 07:22:51 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E16D31806B11;
 Thu, 16 May 2019 07:22:51 +0000 (UTC)
Date: Thu, 16 May 2019 03:22:51 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <1514540367.18668535.1557991371880.JavaMail.zimbra@redhat.com>
In-Reply-To: <E1hR340-0008Ma-4M@amboise>
References: <E1hR340-0008Ma-4M@amboise>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.12]
Thread-Topic: reds: Enable mm_time adjustments on startup
Thread-Index: Iy9VRHNKnrmrQf/U8WLuliG/5NX+JQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Thu, 16 May 2019 07:22:52 +0000 (UTC)
Subject: Re: [Spice-devel] [spice] reds: Enable mm_time adjustments on
 startup
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

PiAKPiBUaGlzIHJlaW5zdGF0ZXMgdGhlIHJlZHNfZW5hYmxlX21tX3RpbWUoKSBjYWxsIGluIGRv
X3NwaWNlX2luaXQoKQo+IHRoYXQgd2FzIHJlbW92ZWQgYnkgY29tbWl0IGM1NDFkN2UyOWRjMC4K
PiAKPiBXZSBzZW5kIG1tX3RpbWUgYWRqdXN0bWVudHMgdG8gdGhlIGNsaWVudCB3aGVuZXZlciB0
aGVyZSBpcyBubyBhdWRpbwo+IHBsYXliYWNrLiBUaGVyZSBpcyBubyBhdWRpbyBwbGF5YmFjayBv
biBzdGFydHVwLiBUaGVyZWZvcmUKPiBtbV90aW1lX2VuYWJsZWQgbXVzdCBiZSB0cnVlIG9uIHN0
YXJ0dXAuIFFFRC4KPiAKPiBUaGlzIGZpeGVzIGFkanVzdGluZyB0aGUgY2xpZW50IG1tX3RpbWUg
d2hlbmV2ZXIgcGxheWluZyBhIHNpbGVudAo+IHZpZGVvIChvciBmdWxsIGRlc2t0b3Agc3RyZWFt
KSB3aGVuIG5vIHNvdW5kIGhhcyBiZWVuIHBsYXllZCBiZWZvcmUKPiBzdWNoIGFzIHdoZW4gdXNp
bmcgWHNwaWNlLCBib290aW5nIGFuIE9TIHdpdGggbm8gc3RhcnR1cCBvciBsb2dpbgo+IGppbmds
ZSwgb3IgcG9zc2libHkgd2hlbiBtaWdyYXRpbmcgYSBWTSAocGVyIGNvbW1pdCAxYzE1NGVhNWVj
YzMpLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZyYW5jb2lzIEdvdWdldCA8ZmdvdWdldEBjb2Rld2Vh
dmVycy5jb20+CgpBY2tlZAoKPiAtLS0KPiAgc2VydmVyL3JlZHMuYyB8IDUgKysrKysKPiAgMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvcmVk
cy5jIGIvc2VydmVyL3JlZHMuYwo+IGluZGV4IGQ2NTgxMDNlNi4uNzkyZTk4MzgxIDEwMDY0NAo+
IC0tLSBhL3NlcnZlci9yZWRzLmMKPiArKysgYi9zZXJ2ZXIvcmVkcy5jCj4gQEAgLTM1NzAsNiAr
MzU3MCwxMSBAQCBzdGF0aWMgaW50IGRvX3NwaWNlX2luaXQoUmVkc1N0YXRlICpyZWRzLAo+IFNw
aWNlQ29yZUludGVyZmFjZSAqY29yZV9pbnRlcmZhY2UpCj4gICAgICBpZiAoIShyZWRzLT5taWdf
dGltZXIgPSByZWRzLT5jb3JlLnRpbWVyX2FkZCgmcmVkcy0+Y29yZSwKPiAgICAgIG1pZ3JhdGVf
dGltZW91dCwgcmVkcykpKSB7Cj4gICAgICAgICAgc3BpY2VfZXJyb3IoIm1pZ3JhdGlvbiB0aW1l
ciBjcmVhdGUgZmFpbGVkIik7Cj4gICAgICB9Cj4gKyAgICAvKiBOb3RlIHRoYXQgdGhpcyB3aWxs
IG5vdCBhY3R1YWxseSBzZW5kIHRoZSBtbV90aW1lIHRvIHRoZSBjbGllbnQKPiBiZWNhdXNlCj4g
KyAgICAgKiB0aGUgbWFpbiBjaGFubmVsIGlzIG5vdCBjb25uZWN0ZWQgeWV0LiBUaGlzIHdvdWxk
IGhhdmUgYmVlbiByZWR1bmRhbnQKPiArICAgICAqIHdpdGggdGhlIFJFRF9QSVBFX0lURU1fVFlQ
RV9NQUlOX0lOSVQgbWVzc2FnZSBhbnl3YXkuCj4gKyAgICAgKi8KPiArICAgIHJlZHNfZW5hYmxl
X21tX3RpbWUocmVkcyk7Cj4gIAo+ICAgICAgaWYgKHJlZHNfaW5pdF9uZXQocmVkcykgPCAwKSB7
Cj4gICAgICAgICAgc3BpY2Vfd2FybmluZygiRmFpbGVkIHRvIG9wZW4gU1BJQ0Ugc29ja2V0cyIp
OwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
