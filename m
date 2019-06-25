Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AD355423
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 18:12:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5496E6E17C;
	Tue, 25 Jun 2019 16:12:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 313F06E17C
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:12:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D1D1E81106
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:12:09 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 121BE5D70D;
 Tue, 25 Jun 2019 16:12:07 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 25 Jun 2019 17:11:38 +0100
Message-Id: <20190625161147.25211-15-fziglio@redhat.com>
In-Reply-To: <20190625161147.25211-1-fziglio@redhat.com>
References: <20190625161147.25211-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 25 Jun 2019 16:12:09 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 14/23] websocket: Avoid possible
 server crash using websockets
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

Q3VycmVudGx5IGNvZGUgZG9uJ3QgaGFuZGxlIGlmIHN5c3RlbSBjYW4ndCBzZW50IHRoZQpoZWFk
ZXIgaW4gYSBzaW5nbGUgd3JpdGUgY29tbWFuZC4KRG9uJ3QgY2F1c2UgYWJvcnQgYnV0IGp1c3Qg
Y2xvc2UgdGhlIGNvbm5lY3Rpb24uCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6
aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzZXJ2ZXIvd2Vic29ja2V0LmMgfCA3ICsrKysrKy0KIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9zZXJ2ZXIvd2Vic29ja2V0LmMgYi9zZXJ2ZXIvd2Vic29ja2V0LmMKaW5kZXggZGRhNzFmNzY4
Li42ZjE1ODFmOWMgMTAwNjQ0Ci0tLSBhL3NlcnZlci93ZWJzb2NrZXQuYworKysgYi9zZXJ2ZXIv
d2Vic29ja2V0LmMKQEAgLTQzOSw3ICs0MzksMTIgQEAgaW50IHdlYnNvY2tldF93cml0ZXYoUmVk
c1dlYlNvY2tldCAqd3MsIGNvbnN0IHN0cnVjdCBpb3ZlYyAqaW92LCBpbnQgaW92Y250KQogICAg
IH0KICAgICByYyAtPSBoZWFkZXJfbGVuOwogCi0gICAgc3BpY2VfYXNzZXJ0KHJjID49IDApOwor
ICAgIC8qIFRPRE8gdGhpcyBpbiB0aGVvcnkgY2FuIGhhcHBlbiBpZiB3ZSBjYW4ndCB3cml0ZSB0
aGUgaGVhZGVyICovCisgICAgaWYgKFNQSUNFX1VOTElLRUxZKHJjIDwgMCkpIHsKKyAgICAgICAg
d3MtPmNsb3NlZCA9IHRydWU7CisgICAgICAgIGVycm5vID0gRVBJUEU7CisgICAgICAgIHJldHVy
biAtMTsKKyAgICB9CiAKICAgICAvKiBLZXkgcG9pbnQ6ICBpZiB3ZSBkaWQgbm90IHdyaXRlIG91
dCBhbGwgdGhlIGRhdGEsIHJlbWVtYmVyIGhvdwogICAgICAgIG11Y2ggbW9yZSBkYXRhIHRoZSBj
bGllbnQgaXMgZXhwZWN0aW5nLCBhbmQgd3JpdGUgdGhhdCBkYXRhIHdpdGhvdXQKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
