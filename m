Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC2D6FD7F
	for <lists+spice-devel@lfdr.de>; Mon, 22 Jul 2019 12:14:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6C1289BFC;
	Mon, 22 Jul 2019 10:14:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 302EA89BF6
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 10:14:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CF97B4627A
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 10:14:02 +0000 (UTC)
Received: from lub.com (unknown [10.35.206.67])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8ECB15C644
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 10:14:01 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 22 Jul 2019 13:13:55 +0300
Message-Id: <20190722101355.25853-2-uril@redhat.com>
In-Reply-To: <20190722101355.25853-1-uril@redhat.com>
References: <20190722101355.25853-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Mon, 22 Jul 2019 10:14:02 +0000 (UTC)
Subject: [Spice-devel] [PATCH 2/2] tests: rename video-encoders to
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

LS0tCiBzZXJ2ZXIvdGVzdHMvTWFrZWZpbGUuYW0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgNiArKystLS0KIHNlcnZlci90ZXN0cy9tZXNvbi5idWlsZCAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAyICstCiBzZXJ2ZXIvdGVzdHMve3ZpZGVvLWVuY29kZXJzID0+IHRlc3Qtdmlk
ZW8tZW5jb2RlcnN9IHwgMAogMyBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCiByZW5hbWUgc2VydmVyL3Rlc3RzL3t2aWRlby1lbmNvZGVycyA9PiB0ZXN0LXZp
ZGVvLWVuY29kZXJzfSAoMTAwJSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvdGVzdHMvTWFrZWZpbGUu
YW0gYi9zZXJ2ZXIvdGVzdHMvTWFrZWZpbGUuYW0KaW5kZXggY2NhZjVjODdjLi4xZTYyNTU3YTgg
MTAwNjQ0Ci0tLSBhL3NlcnZlci90ZXN0cy9NYWtlZmlsZS5hbQorKysgYi9zZXJ2ZXIvdGVzdHMv
TWFrZWZpbGUuYW0KQEAgLTEzOSwxMyArMTM5LDEzIEBAIGxpYnRlc3Rfc3RhdDNfYV9DUFBGTEFH
UyA9ICQoQU1fQ1BQRkxBR1MpIC1EVEVTVF9DT01QUkVTU19TVEFUPTEgLURURVNUX1JFRF9XT1JL
CiBsaWJ0ZXN0X3N0YXQ0X2FfU09VUkNFUyA9IHN0YXQtdGVzdC5jCiBsaWJ0ZXN0X3N0YXQ0X2Ff
Q1BQRkxBR1MgPSAkKEFNX0NQUEZMQUdTKSAtRFRFU1RfQ09NUFJFU1NfU1RBVD0xIC1EVEVTVF9S
RURfV09SS0VSX1NUQVQ9MSAtRFRFU1RfTkFNRT1zdGF0X3Rlc3Q0CiAKLSMjIHRlc3QtZ3N0ICho
ZWxwZXIpIGFuZCB2aWRlby1lbmNvZGVycyAodGVzdCkKKyMjIHRlc3QtZ3N0IChoZWxwZXIpIGFu
ZCB0ZXN0LXZpZGVvLWVuY29kZXJzICh0ZXN0KQogCiBpZiBIQVZFX0dTVFJFQU1FUgogbm9pbnN0
X1BST0dSQU1TICs9IHRlc3QtZ3N0CiAKIGlmIEVOQUJMRV9FWFRSQV9DSEVDS1MKLVRFU1RTICs9
IHZpZGVvLWVuY29kZXJzCitURVNUUyArPSB0ZXN0LXZpZGVvLWVuY29kZXJzCiBlbmRpZgogCiB0
ZXN0X2dzdF9TT1VSQ0VTID0gdGVzdC1nc3QuYyBcCkBAIC0xNTcsNyArMTU3LDcgQEAgdGVzdF9n
c3RfQ1BQRkxBR1MgPSBcCiAJJChOVUxMKQogZW5kaWYKIAotRVhUUkFfRElTVCArPSB2aWRlby1l
bmNvZGVycworRVhUUkFfRElTVCArPSB0ZXN0LXZpZGVvLWVuY29kZXJzCiAKIGlmIEhBVkVfU0FT
TAogY2hlY2tfUFJPR1JBTVMgKz0gdGVzdC1zYXNsCmRpZmYgLS1naXQgYS9zZXJ2ZXIvdGVzdHMv
bWVzb24uYnVpbGQgYi9zZXJ2ZXIvdGVzdHMvbWVzb24uYnVpbGQKaW5kZXggYjZjZjg5ODk0Li5j
OTM3N2YxZWIgMTAwNjQ0Ci0tLSBhL3NlcnZlci90ZXN0cy9tZXNvbi5idWlsZAorKysgYi9zZXJ2
ZXIvdGVzdHMvbWVzb24uYnVpbGQKQEAgLTc0LDcgKzc0LDcgQEAgZW5kaWYKIGlmIHNwaWNlX3Nl
cnZlcl9oYXNfZ3N0cmVhbWVyCiAgIHRlc3RzICs9IFtbJ3Rlc3QtZ3N0JywgZmFsc2VdXQogICBp
ZiBnZXRfb3B0aW9uKCdleHRyYS1jaGVja3MnKQotICAgIHRlc3QoJ3ZpZGVvLWVuY29kZXJzJywg
ZmlsZXMoJ3ZpZGVvLWVuY29kZXJzJykpCisgICAgdGVzdCgndGVzdC12aWRlby1lbmNvZGVycycs
IGZpbGVzKCd0ZXN0LXZpZGVvLWVuY29kZXJzJykpCiAgIGVuZGlmCiBlbmRpZgogCmRpZmYgLS1n
aXQgYS9zZXJ2ZXIvdGVzdHMvdmlkZW8tZW5jb2RlcnMgYi9zZXJ2ZXIvdGVzdHMvdGVzdC12aWRl
by1lbmNvZGVycwpzaW1pbGFyaXR5IGluZGV4IDEwMCUKcmVuYW1lIGZyb20gc2VydmVyL3Rlc3Rz
L3ZpZGVvLWVuY29kZXJzCnJlbmFtZSB0byBzZXJ2ZXIvdGVzdHMvdGVzdC12aWRlby1lbmNvZGVy
cwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
