Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 118392789F4
	for <lists+spice-devel@lfdr.de>; Fri, 25 Sep 2020 15:51:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A24006EC7B;
	Fri, 25 Sep 2020 13:51:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F9F26EC7B
 for <spice-devel@lists.freedesktop.org>; Fri, 25 Sep 2020 13:51:40 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601041900;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8Y86zsB51YRxIrGPaBaJ0OMrK6jcKF47UHG43z60HUs=;
 b=i+m1Y7JmTTb06n22NjUm7COyJRc+6f/TLB4IcYEhZfkxJCXT/yrGhx4i8GFixaiMqu1ot0
 9LTEm+fiW/cA1UQQKTjRX6g72EWR9Fze8JZbnI+ZvlFFmT2JRzXecL5Y26iI4G7AEWRZdL
 cC0lcNT/eVmOw9BumJzdYmCMOtGfauI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-592--Y6R1eraMc22fZGv1yEz7Q-1; Fri, 25 Sep 2020 09:51:38 -0400
X-MC-Unique: -Y6R1eraMc22fZGv1yEz7Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 34A42802B78;
 Fri, 25 Sep 2020 13:51:37 +0000 (UTC)
Received: from localhost (unknown [10.36.110.56])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 533B87368F;
 Fri, 25 Sep 2020 13:51:19 +0000 (UTC)
From: marcandre.lureau@redhat.com
To: qemu-devel@nongnu.org
Date: Fri, 25 Sep 2020 17:50:52 +0400
Message-Id: <20200925135057.291556-2-marcandre.lureau@redhat.com>
In-Reply-To: <20200925135057.291556-1-marcandre.lureau@redhat.com>
References: <20200925135057.291556-1-marcandre.lureau@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=marcandre.lureau@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH v2 1/6] edid: fix physical display size
 computation
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org, Gerd Hoffmann <kraxel@redhat.com>,
 "Michael S. Tsirkin" <mst@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

RnJvbTogTWFyYy1BbmRyw6kgTHVyZWF1IDxtYXJjYW5kcmUubHVyZWF1QHJlZGhhdC5jb20+CgpE
aXZpZGUgdGhlIHJlc29sdXRpb24gYnkgdGhlIERQSSwgYW5kIG11bHRpcGx5IHRvIG1tLgoKTm90
ZSB0aGUgY29tcHV0YXRpb24gZG9uZSBmb3IgZWRpZFsyMS8yMl0gaXMgY29ycmVjdCAoaW4gY20p
LgoKU2lnbmVkLW9mZi1ieTogTWFyYy1BbmRyw6kgTHVyZWF1IDxtYXJjYW5kcmUubHVyZWF1QHJl
ZGhhdC5jb20+Ci0tLQogaHcvZGlzcGxheS9lZGlkLWdlbmVyYXRlLmMgfCA0ICsrLS0KIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
aHcvZGlzcGxheS9lZGlkLWdlbmVyYXRlLmMgYi9ody9kaXNwbGF5L2VkaWQtZ2VuZXJhdGUuYwpp
bmRleCBlNTg0NzJmZGU1Li42MThjNzRlMWRmIDEwMDY0NAotLS0gYS9ody9kaXNwbGF5L2VkaWQt
Z2VuZXJhdGUuYworKysgYi9ody9kaXNwbGF5L2VkaWQtZ2VuZXJhdGUuYwpAQCAtMjA4LDggKzIw
OCw4IEBAIHN0YXRpYyB2b2lkIGVkaWRfZGVzY190aW1pbmcodWludDhfdCAqZGVzYywKICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdWludDMyX3QgZHBpKQogewogICAgIC8qIHBoeXNpY2Fs
IGRpc3BsYXkgc2l6ZSAqLwotICAgIHVpbnQzMl90IHhtbSA9IHhyZXMgKiBkcGkgLyAyNTQ7Ci0g
ICAgdWludDMyX3QgeW1tID0geXJlcyAqIGRwaSAvIDI1NDsKKyAgICB1aW50MzJfdCB4bW0gPSB4
cmVzICogMjU0IC8gMTAgLyBkcGk7CisgICAgdWludDMyX3QgeW1tID0geXJlcyAqIDI1NCAvIDEw
IC8gZHBpOwogCiAgICAgLyogcHVsbCBzb21lIHJlYWxpc3RpYyBsb29raW5nIHRpbWluZ3Mgb3V0
IG9mIHRoaW4gYWlyICovCiAgICAgdWludDMyX3QgeGZyb250ID0geHJlcyAqIDI1IC8gMTAwOwot
LSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2Ut
ZGV2ZWwK
