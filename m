Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0996A7BC21
	for <lists+spice-devel@lfdr.de>; Wed, 31 Jul 2019 10:48:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0570989A59;
	Wed, 31 Jul 2019 08:48:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 681F689A59
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 08:48:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D92FCC049E1A
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 08:48:01 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (unknown [10.40.205.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1C9B6100032A;
 Wed, 31 Jul 2019 08:48:00 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 31 Jul 2019 10:47:52 +0200
Message-Id: <20190731084752.14568-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Wed, 31 Jul 2019 08:48:01 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] spice-file-xfer-task: unref
 properties on dispose
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

V2hlbiB0aGUgY29uc3RydWN0aW9uIHByb3BlcnRpZXMgYXJlIHNldCwgdGhlIG9iamVjdHMgYXJl
CnJlZmVyZW5jZWQgYnkgZ192YWx1ZV9kdXBfb2JqZWN0KCksIHNvIHRoZXkgc2hvdWxkIGJlIHVu
cmVmCm9uY2UgdGhlIHRhc2sgaXMgZG9uZS4KCklmIHRoZSBtYWluIGNoYW5uZWwgc3RheXMgcmVm
ZXJlbmNlZCwgc3BpY2Ugc2Vzc2lvbiBmYWlscwp0byBkaXNjb25uZWN0IGFuZCB0aGUgdmlld2Vy
IGRvZXMgbm90IGNsb3NlLgoKU2lnbmVkLW9mZi1ieTogSmFrdWIgSmFua8WvIDxqamFua3VAcmVk
aGF0LmNvbT4KLS0tCgpIaSwKaXQgc2VlbXMgYSBiaXQgd2VpcmQgdG8gbWUgdGhhdCB0aGlzIGlz
c3VlIGhhc24ndCBiZWVuIHJlcG9ydGVkCmFuZCBmaXhlZCB5ZXQuIElzIHNvbWVib2R5IGFibGUg
dG8gcmVwcm9kdWNlPwoKMSkgdHJhbnNmZXIgZmlsZSBieSBkcmFnJmRyb3AKMikgdHJ5IHRvIGNs
b3NlIHRoZSB2aWV3ZXIKCi0tLQogc3JjL3NwaWNlLWZpbGUtdHJhbnNmZXItdGFzay5jIHwgMiAr
KwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NyYy9zcGlj
ZS1maWxlLXRyYW5zZmVyLXRhc2suYyBiL3NyYy9zcGljZS1maWxlLXRyYW5zZmVyLXRhc2suYwpp
bmRleCA5MGYzMWRiLi5jYTMxYjIzIDEwMDY0NAotLS0gYS9zcmMvc3BpY2UtZmlsZS10cmFuc2Zl
ci10YXNrLmMKKysrIGIvc3JjL3NwaWNlLWZpbGUtdHJhbnNmZXItdGFzay5jCkBAIC02NDgsNiAr
NjQ4LDggQEAgc3BpY2VfZmlsZV90cmFuc2Zlcl90YXNrX2Rpc3Bvc2UoR09iamVjdCAqb2JqZWN0
KQogICAgIGdfY2xlYXJfb2JqZWN0KCZzZWxmLT5maWxlKTsKICAgICBnX2NsZWFyX29iamVjdCgm
c2VsZi0+ZmlsZV9zdHJlYW0pOwogICAgIGdfY2xlYXJfZXJyb3IoJnNlbGYtPmVycm9yKTsKKyAg
ICBnX2NsZWFyX29iamVjdCgmc2VsZi0+Y2hhbm5lbCk7CisgICAgZ19jbGVhcl9vYmplY3QoJnNl
bGYtPmNhbmNlbGxhYmxlKTsKIAogICAgIEdfT0JKRUNUX0NMQVNTKHNwaWNlX2ZpbGVfdHJhbnNm
ZXJfdGFza19wYXJlbnRfY2xhc3MpLT5kaXNwb3NlKG9iamVjdCk7CiB9Ci0tIAoyLjIxLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVs
IG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
