Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A714DA06E2
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 18:02:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D6FA89D7B;
	Wed, 28 Aug 2019 16:02:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ADAC89D7B
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:02:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AA27E18C426D
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:02:39 +0000 (UTC)
Received: from lub.com (dhcp-4-176.tlv.redhat.com [10.35.4.176])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 19FD4600CD
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:02:38 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 28 Aug 2019 19:02:34 +0300
Message-Id: <20190828160234.8182-2-uril@redhat.com>
In-Reply-To: <20190828160234.8182-1-uril@redhat.com>
References: <20190828160234.8182-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.62]); Wed, 28 Aug 2019 16:02:39 +0000 (UTC)
Subject: [Spice-devel] [spice-vdagent PATCH 2/2] virtio-port: handle_fds:
 make read and write code consistent
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

InJldHVybiBlYXJseSIgYmVmb3JlIHdyaXRlIHRvbwoKU2lnbmVkLW9mZi1ieTogVXJpIEx1Ymxp
biA8dXJpbEByZWRoYXQuY29tPgotLS0KCkFsdGVybmF0aXZlbHksIGNoYW5nZSB0aGUgcmVhZCBw
YXJ0IHN1Y2ggdGhhdDoKCiAgICBpZiAoKnZwb3J0cCAmJiBGRF9JU1NFVCgoKnZwb3J0cCktPmZk
LCByZWFkZmRzKSkKICAgICAgICB2ZGFnZW50X3ZpcnRpb19wb3J0X2RvX3JlYWQKICAgIGlmICgq
dnBvcnRwICYmIEZEX0lTU0VUKCgqdnBvcnRwKS0+ZmQsIHdyaXRlZmRzKSkKICAgICAgICB2ZGFn
ZW50X3ZpcnRpb19wb3J0X2RvX3dyaXRlCgoKLS0tCiBzcmMvdmRhZ2VudGQvdmlydGlvLXBvcnQu
YyB8IDUgKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9zcmMvdmRhZ2VudGQvdmlydGlvLXBvcnQuYyBiL3NyYy92ZGFnZW50
ZC92aXJ0aW8tcG9ydC5jCmluZGV4IDNhZTdmMjIuLmFmNWJkNTggMTAwNjQ0Ci0tLSBhL3NyYy92
ZGFnZW50ZC92aXJ0aW8tcG9ydC5jCisrKyBiL3NyYy92ZGFnZW50ZC92aXJ0aW8tcG9ydC5jCkBA
IC0xNzIsNyArMTcyLDEwIEBAIHZvaWQgdmRhZ2VudF92aXJ0aW9fcG9ydF9oYW5kbGVfZmRzKHN0
cnVjdCB2ZGFnZW50X3ZpcnRpb19wb3J0ICoqdnBvcnRwLAogICAgIGlmIChGRF9JU1NFVCgoKnZw
b3J0cCktPmZkLCByZWFkZmRzKSkKICAgICAgICAgdmRhZ2VudF92aXJ0aW9fcG9ydF9kb19yZWFk
KHZwb3J0cCk7CiAKLSAgICBpZiAoKnZwb3J0cCAmJiBGRF9JU1NFVCgoKnZwb3J0cCktPmZkLCB3
cml0ZWZkcykpCisgICAgaWYgKCEqdnBvcnRwKSAvKiBtYXkgaGF2ZSBiZWVuIGRlc3Ryb3llZCBp
biBkb19yZWFkICovCisgICAgICAgIHJldHVybjsKKworICAgIGlmIChGRF9JU1NFVCgoKnZwb3J0
cCktPmZkLCB3cml0ZWZkcykpCiAgICAgICAgIHZkYWdlbnRfdmlydGlvX3BvcnRfZG9fd3JpdGUo
dnBvcnRwKTsKIH0KIAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
