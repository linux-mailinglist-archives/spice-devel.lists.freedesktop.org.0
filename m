Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E65B6563EE
	for <lists+spice-devel@lfdr.de>; Wed, 26 Jun 2019 10:02:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B85B6E2BF;
	Wed, 26 Jun 2019 08:02:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEF716E2BF
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Jun 2019 08:02:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8D3F4307D91F
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Jun 2019 08:02:30 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (unknown [10.40.205.117])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B07935D719;
 Wed, 26 Jun 2019 08:02:29 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 26 Jun 2019 10:02:22 +0200
Message-Id: <20190626080222.8434-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Wed, 26 Jun 2019 08:02:30 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] spice-channel: return if has_error
 is TRUE in spice_channel_write_msg
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

QXZvaWQgbGluZWFyaXppbmcgaWYgdGhlIG1lc3NhZ2UgaXNuJ3Qgd3JpdHRlbiBvdXQgYW55d2F5
CihzcGljZV9jaGFubmVsX2ZsdXNoX3dpcmUgY2hlY2tzKCkgdGhpcyBjb25kaXRpb24gYXMgd2Vs
bCkuCgpUaGlzIGFsc28gc2lsZW5jZXMgdGhlIGZvbGxvd2luZyBlcnJvcjoKCiAgICAoc3BpY3k6
MzIwODcpOiBHU3BpY2UtQ1JJVElDQUwgKio6IDE2OjIyOjAzLjE0Nzogc3BpY2Vfc2Vzc2lvbl9n
ZXRfcmVhZF9vbmx5OiBhc3NlcnRpb24gJ1NQSUNFX0lTX1NFU1NJT04oc2VsZiknIGZhaWxlZAoK
dGhhdCBjYW4gYmUgc2VlbiBpZiB0aGUgY2hhbm5lbCBnZXRzIGRpc2Nvbm5lY3RlZApieSB0aGUg
c2Vzc2lvbiB3aGlsZSBoYXZpbmcgbm9uLWVtcHR5IHdyaXRlIHF1ZXVlLgoKc3BpY2Vfc2Vzc2lv
bl9jaGFubmVsX2Rlc3Ryb3koKSBzZXRzIGNoYW5uZWwtPnByaXYtPnNlc3Npb24gdG8gTlVMTCwK
YnV0IHNwaWNlX2NoYW5uZWxfd3JpdGVfbXNnKCkgc3Vic2VxdWVudGx5IGF0dGVtcHRzIHRvIGNh
bGwKc3BpY2Vfc2Vzc2lvbl9nZXRfcmVhZF9vbmx5KCkgd2l0aCBOVUxMIHBvaW50ZXIuCgpTaWdu
ZWQtb2ZmLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUByZWRoYXQuY29tPgotLS0KIHNyYy9zcGlj
ZS1jaGFubmVsLmMgfCA1ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvc3JjL3NwaWNlLWNoYW5uZWwuYyBiL3NyYy9zcGljZS1jaGFubmVsLmMKaW5k
ZXggNjFkZTE3Ny4uYWE4MGVkZiAxMDA2NDQKLS0tIGEvc3JjL3NwaWNlLWNoYW5uZWwuYworKysg
Yi9zcmMvc3BpY2UtY2hhbm5lbC5jCkBAIC04OTcsNiArODk3LDExIEBAIHN0YXRpYyB2b2lkIHNw
aWNlX2NoYW5uZWxfd3JpdGVfbXNnKFNwaWNlQ2hhbm5lbCAqY2hhbm5lbCwgU3BpY2VNc2dPdXQg
Km91dCkKICAgICBnX3JldHVybl9pZl9mYWlsKG91dCAhPSBOVUxMKTsKICAgICBnX3JldHVybl9p
Zl9mYWlsKGNoYW5uZWwgPT0gb3V0LT5jaGFubmVsKTsKIAorICAgIGlmIChjaGFubmVsLT5wcml2
LT5oYXNfZXJyb3IpIHsKKyAgICAgICAgc3BpY2VfbXNnX291dF91bnJlZihvdXQpOworICAgICAg
ICByZXR1cm47CisgICAgfQorCiAgICAgaWYgKG91dC0+cm9fY2hlY2sgJiYKICAgICAgICAgc3Bp
Y2VfY2hhbm5lbF9nZXRfcmVhZF9vbmx5KGNoYW5uZWwpKSB7CiAgICAgICAgIGdfd2FybmluZygi
VHJ5IHRvIHNlbmQgbWVzc2FnZSB3aGlsZSByZWFkLW9ubHkuIFBsZWFzZSByZXBvcnQgYSBidWcu
Iik7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9z
cGljZS1kZXZlbA==
