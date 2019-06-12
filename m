Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0073942086
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 11:18:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8307A893A8;
	Wed, 12 Jun 2019 09:18:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8FB2893A8
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 09:18:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 632C08553D;
 Wed, 12 Jun 2019 09:18:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A2041001B0D;
 Wed, 12 Jun 2019 09:18:29 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 50A953D87;
 Wed, 12 Jun 2019 09:18:29 +0000 (UTC)
Date: Wed, 12 Jun 2019 05:18:29 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <1603082952.22421312.1560331109276.JavaMail.zimbra@redhat.com>
In-Reply-To: <E1hSsgJ-0001wA-Ec@amboise>
References: <E1hSsgJ-0001wA-Ec@amboise>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.25, 10.4.195.24]
Thread-Topic: gstreamer-encoder: Document get_maximum_frame_size()
Thread-Index: hmehSigko6Ok26UUyPjjXZ/NM7e6ug==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Wed, 12 Jun 2019 09:18:29 +0000 (UTC)
Subject: Re: [Spice-devel] [spice] gstreamer-encoder: Document
 get_maximum_frame_size()
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

PiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZlcnMu
Y29tPgoKQWNrZWQKCj4gLS0tCj4gIHNlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jIHwgNyArKysr
KysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEv
c2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMgYi9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYwo+
IGluZGV4IGJjY2JlMDY2MC4uMTEwZDEyOTgxIDEwMDY0NAo+IC0tLSBhL3NlcnZlci9nc3RyZWFt
ZXItZW5jb2Rlci5jCj4gKysrIGIvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKPiBAQCAtNDA0
LDYgKzQwNCwxMyBAQCBzdGF0aWMgdWludDMyX3QgZ2V0X2F2ZXJhZ2VfZnJhbWVfc2l6ZShTcGlj
ZUdzdEVuY29kZXIKPiAqZW5jb2RlcikKPiAgICAgIHJldHVybiBlbmNvZGVyLT5zdGF0X3NpemVf
c3VtIC8gY291bnQ7Cj4gIH0KPiAgCj4gKy8qIExvb2sgZm9yIHRoZSBsYXJnZXN0IGZyYW1lIGFu
ZCBzdG9yZSBpdCBpbiBzdGF0X3NpemVfbWF4IHRvIHJlZHVjZSBob3cKPiArICogb2Z0ZW4gd2Ug
aGF2ZSB0byBzY2FuIHRoZSBoaXN0b3J5IGZvciB0aGUgbGFyZ2VzdCBmcmFtZS4KPiArICogVGhl
biBhbGwgd2UgbmVlZCB0byBrZWVwIHRoaW5ncyBjb25zaXN0ZW50IGlzIHRvOgo+ICsgKiAtIFVw
ZGF0ZSBzdGF0X3NpemVfbWF4IHdoZW4gYWRkaW5nIGEgbGFyZ2VyIGZyYW1lIHRvIHRoZSBoaXN0
b3J5Lgo+ICsgKiAtIFJlc2V0IHN0YXRfc2l6ZV9tYXggdG8gemVybyB3aGVuIHRoZSBsYXJnZXN0
IGZyYW1lIGZhbGxzIG91dCBvZgo+ICsgKiAgIHRoZSBoaXN0b3J5Lgo+ICsgKi8KPiAgc3RhdGlj
IHVpbnQzMl90IGdldF9tYXhpbXVtX2ZyYW1lX3NpemUoU3BpY2VHc3RFbmNvZGVyICplbmNvZGVy
KQo+ICB7Cj4gICAgICBpZiAoZW5jb2Rlci0+c3RhdF9zaXplX21heCA9PSAwKSB7Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
