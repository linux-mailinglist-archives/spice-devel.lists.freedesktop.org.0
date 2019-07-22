Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D8A6FDEC
	for <lists+spice-devel@lfdr.de>; Mon, 22 Jul 2019 12:37:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC3FC898CA;
	Mon, 22 Jul 2019 10:37:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79FD2898CA
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 10:37:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2385F859FB
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 10:37:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A56C5D704
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 10:37:01 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0CB0E4EA62;
 Mon, 22 Jul 2019 10:37:01 +0000 (UTC)
Date: Mon, 22 Jul 2019 06:37:01 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <1768910554.2025864.1563791821024.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190722101355.25853-2-uril@redhat.com>
References: <20190722101355.25853-1-uril@redhat.com>
 <20190722101355.25853-2-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.20]
Thread-Topic: tests: rename video-encoders to test-video-encoders
Thread-Index: JNxiDAd1LTJDry//lNLAc1aG5O0b7w==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Mon, 22 Jul 2019 10:37:01 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH 2/2] tests: rename video-encoders to
 test-video-encoders
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

QWNrZWQKCj4gCj4gLS0tCj4gIHNlcnZlci90ZXN0cy9NYWtlZmlsZS5hbSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCA2ICsrKy0tLQo+ICBzZXJ2ZXIvdGVzdHMvbWVzb24uYnVpbGQgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgMiArLQo+ICBzZXJ2ZXIvdGVzdHMve3ZpZGVvLWVu
Y29kZXJzID0+IHRlc3QtdmlkZW8tZW5jb2RlcnN9IHwgMAo+ICAzIGZpbGVzIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAgcmVuYW1lIHNlcnZlci90ZXN0cy97dmlk
ZW8tZW5jb2RlcnMgPT4gdGVzdC12aWRlby1lbmNvZGVyc30gKDEwMCUpCj4gCj4gZGlmZiAtLWdp
dCBhL3NlcnZlci90ZXN0cy9NYWtlZmlsZS5hbSBiL3NlcnZlci90ZXN0cy9NYWtlZmlsZS5hbQo+
IGluZGV4IGNjYWY1Yzg3Yy4uMWU2MjU1N2E4IDEwMDY0NAo+IC0tLSBhL3NlcnZlci90ZXN0cy9N
YWtlZmlsZS5hbQo+ICsrKyBiL3NlcnZlci90ZXN0cy9NYWtlZmlsZS5hbQo+IEBAIC0xMzksMTMg
KzEzOSwxMyBAQCBsaWJ0ZXN0X3N0YXQzX2FfQ1BQRkxBR1MgPSAkKEFNX0NQUEZMQUdTKQo+IC1E
VEVTVF9DT01QUkVTU19TVEFUPTEgLURURVNUX1JFRF9XT1JLCj4gIGxpYnRlc3Rfc3RhdDRfYV9T
T1VSQ0VTID0gc3RhdC10ZXN0LmMKPiAgbGlidGVzdF9zdGF0NF9hX0NQUEZMQUdTID0gJChBTV9D
UFBGTEFHUykgLURURVNUX0NPTVBSRVNTX1NUQVQ9MQo+ICAtRFRFU1RfUkVEX1dPUktFUl9TVEFU
PTEgLURURVNUX05BTUU9c3RhdF90ZXN0NAo+ICAKPiAtIyMgdGVzdC1nc3QgKGhlbHBlcikgYW5k
IHZpZGVvLWVuY29kZXJzICh0ZXN0KQo+ICsjIyB0ZXN0LWdzdCAoaGVscGVyKSBhbmQgdGVzdC12
aWRlby1lbmNvZGVycyAodGVzdCkKPiAgCj4gIGlmIEhBVkVfR1NUUkVBTUVSCj4gIG5vaW5zdF9Q
Uk9HUkFNUyArPSB0ZXN0LWdzdAo+ICAKPiAgaWYgRU5BQkxFX0VYVFJBX0NIRUNLUwo+IC1URVNU
UyArPSB2aWRlby1lbmNvZGVycwo+ICtURVNUUyArPSB0ZXN0LXZpZGVvLWVuY29kZXJzCj4gIGVu
ZGlmCj4gIAo+ICB0ZXN0X2dzdF9TT1VSQ0VTID0gdGVzdC1nc3QuYyBcCj4gQEAgLTE1Nyw3ICsx
NTcsNyBAQCB0ZXN0X2dzdF9DUFBGTEFHUyA9IFwKPiAgCSQoTlVMTCkKPiAgZW5kaWYKPiAgCj4g
LUVYVFJBX0RJU1QgKz0gdmlkZW8tZW5jb2RlcnMKPiArRVhUUkFfRElTVCArPSB0ZXN0LXZpZGVv
LWVuY29kZXJzCj4gIAo+ICBpZiBIQVZFX1NBU0wKPiAgY2hlY2tfUFJPR1JBTVMgKz0gdGVzdC1z
YXNsCj4gZGlmZiAtLWdpdCBhL3NlcnZlci90ZXN0cy9tZXNvbi5idWlsZCBiL3NlcnZlci90ZXN0
cy9tZXNvbi5idWlsZAo+IGluZGV4IGI2Y2Y4OTg5NC4uYzkzNzdmMWViIDEwMDY0NAo+IC0tLSBh
L3NlcnZlci90ZXN0cy9tZXNvbi5idWlsZAo+ICsrKyBiL3NlcnZlci90ZXN0cy9tZXNvbi5idWls
ZAo+IEBAIC03NCw3ICs3NCw3IEBAIGVuZGlmCj4gIGlmIHNwaWNlX3NlcnZlcl9oYXNfZ3N0cmVh
bWVyCj4gICAgdGVzdHMgKz0gW1sndGVzdC1nc3QnLCBmYWxzZV1dCgpPVDogbWF5YmUgdXRpbGl0
aWVzIGxpa2UgInRlc3QtZ3N0IiBzaG91bGQgYmUgY2FsbGVkCiJ0b29sLWdzdCIgb3IgInV0aWwt
Z3N0IiA/Cgo+ICAgIGlmIGdldF9vcHRpb24oJ2V4dHJhLWNoZWNrcycpCj4gLSAgICB0ZXN0KCd2
aWRlby1lbmNvZGVycycsIGZpbGVzKCd2aWRlby1lbmNvZGVycycpKQo+ICsgICAgdGVzdCgndGVz
dC12aWRlby1lbmNvZGVycycsIGZpbGVzKCd0ZXN0LXZpZGVvLWVuY29kZXJzJykpCj4gICAgZW5k
aWYKPiAgZW5kaWYKPiAgCj4gZGlmZiAtLWdpdCBhL3NlcnZlci90ZXN0cy92aWRlby1lbmNvZGVy
cyBiL3NlcnZlci90ZXN0cy90ZXN0LXZpZGVvLWVuY29kZXJzCj4gc2ltaWxhcml0eSBpbmRleCAx
MDAlCj4gcmVuYW1lIGZyb20gc2VydmVyL3Rlc3RzL3ZpZGVvLWVuY29kZXJzCj4gcmVuYW1lIHRv
IHNlcnZlci90ZXN0cy90ZXN0LXZpZGVvLWVuY29kZXJzCgpGcmVkaWFubwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
