Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F24B57632E
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 12:08:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A0996ED0F;
	Fri, 26 Jul 2019 10:08:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 196ED6ED0F
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:08:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A7D523CBDC
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:08:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F8FD62667
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:08:57 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 984D541F40
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 10:08:57 +0000 (UTC)
Date: Fri, 26 Jul 2019 06:08:57 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1320598516.3099709.1564135737587.JavaMail.zimbra@redhat.com>
In-Reply-To: <2101936264.688104.1563435644485.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-5-fziglio@redhat.com>
 <446069078.22408168.1560319019754.JavaMail.zimbra@redhat.com>
 <1644185886.23872973.1561102512272.JavaMail.zimbra@redhat.com>
 <1043795662.25083171.1561708103515.JavaMail.zimbra@redhat.com>
 <468729087.26605953.1562570963658.JavaMail.zimbra@redhat.com>
 <2101936264.688104.1563435644485.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.26]
Thread-Topic: red-worker: Remove warning
Thread-Index: IYikIAqrrvK3LDfWnE/5b6T+50W4l4euGaXfqFDCfjW6dV2Sia9Zy8JbJ0ySHMM=
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Fri, 26 Jul 2019 10:08:57 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 05/13] red-worker: Remove
 warning
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gcGluZwo+
ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBwaW5nCj4gPiA+ID4gCj4gPiA+ID4gPiAKPiA+ID4gPiA+
IHBpbmcKPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gSW4gc29tZSBjb25maWd1
cmF0aW9uIF9HTlVfU09VUkNFIGlzIGRlZmluZWQgYnkgdGhlIGNvbXBpbGVyCj4gPiA+ID4gPiA+
IGFuZCBkZWZpbmluZyBhZ2FpbiBjYXVzZSBhIHdhcm5pbmcuCj4gPiA+ID4gPiA+IERvIG5vdCBk
ZWZpbmUgYWdhaW4gdG8gYXZvaWQgdGhlIHdhcm5pbmcuCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+
ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+ICBzZXJ2ZXIvcmVkLXdvcmtlci5jIHwgMiArKwo+ID4g
PiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9yZWQtd29ya2VyLmMgYi9zZXJ2ZXIvcmVkLXdv
cmtlci5jCj4gPiA+ID4gPiA+IGluZGV4IGQ2NGMyNmU4My4uYjMzMzVhNTNhIDEwMDY0NAo+ID4g
PiA+ID4gPiAtLS0gYS9zZXJ2ZXIvcmVkLXdvcmtlci5jCj4gPiA+ID4gPiA+ICsrKyBiL3NlcnZl
ci9yZWQtd29ya2VyLmMKPiA+ID4gPiA+ID4gQEAgLTE3LDcgKzE3LDkgQEAKPiA+ID4gPiA+ID4g
ICovCj4gPiA+ID4gPiA+ICAjaW5jbHVkZSA8Y29uZmlnLmg+Cj4gPiA+ID4gPiA+ICAKPiA+ID4g
PiA+ID4gKyNpZm5kZWYgX0dOVV9TT1VSQ0UKPiA+ID4gPiA+ID4gICNkZWZpbmUgX0dOVV9TT1VS
Q0UKPiA+ID4gPiA+ID4gKyNlbmRpZgo+ID4gPiA+ID4gPiAgI2luY2x1ZGUgPHN0ZGlvLmg+Cj4g
PiA+ID4gPiA+ICAjaW5jbHVkZSA8c3RkYXJnLmg+Cj4gPiA+ID4gPiA+ICAjaW5jbHVkZSA8c3Rk
bGliLmg+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
