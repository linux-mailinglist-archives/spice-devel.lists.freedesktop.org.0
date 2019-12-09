Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB45116C5A
	for <lists+spice-devel@lfdr.de>; Mon,  9 Dec 2019 12:35:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 992B36E3D2;
	Mon,  9 Dec 2019 11:35:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8993E6E3D2
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Dec 2019 11:35:34 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-232-eqA_i0RUMzmIslDPtoz05A-1; Mon, 09 Dec 2019 06:35:30 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1C8E3801E76;
 Mon,  9 Dec 2019 11:35:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 129E960BEC;
 Mon,  9 Dec 2019 11:35:29 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 08FC66B51A;
 Mon,  9 Dec 2019 11:35:28 +0000 (UTC)
Date: Mon, 9 Dec 2019 06:35:26 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: me@ehoefel.com
Message-ID: <1366586147.14774973.1575891326837.JavaMail.zimbra@redhat.com>
In-Reply-To: <dcd6bbde-582e-8cbb-d416-4416d2d92380@ehoefel.com>
References: <dcd6bbde-582e-8cbb-d416-4416d2d92380@ehoefel.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.27, 10.4.195.20]
Thread-Topic: About Opus encoding on spice
Thread-Index: DZ+6L5aEbbBaKZJIzDAN/1k1so17zg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: eqA_i0RUMzmIslDPtoz05A-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575891333;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0wxjBTM5GYCKXgUupMgujYufTdGrAYCaJ3JgJm+JWSc=;
 b=RKlSvu1pwv9TSxUYrbLs0ODEnbi77UNqDiXTSe3dxstO8s9KX37Fm8HpMLyoVgb5Z8koQU
 g5meHJSn6+6OqewGre7MjTnpzKsEpm84WKu+X3Sexz7hLUJEMVdFBBL6JO3D88mMNU1N2Z
 5HPxG736J9Vaduoqxb/UvJBLRYwrkUM=
Subject: Re: [Spice-devel] About Opus encoding on spice
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

PiAKPiBJJ20gZGV2ZWxvcGluZyBhIHRvb2wgdG8gY29ubmVjdCBWb2lwIGNhbGxzIHRvIGEgU3Bp
Y2Ugc2VydmVyIHVzaW5nCj4gQXN0ZXJpc2sgUEJYLgo+IAo+IEknbSByZWNlaXZpbmcgdGhlIHBs
YXliYWNrIHBhY2tldHMsIGJ1dCBjYW5ub3QgZGVjb2RlIHRoZW0gZnJvbSB0aGUgb3B1cwo+IGNv
ZGVjLgo+IAo+IEkgdHJpZWQgbWFueSBvcHRpb25zLCBidXQgdGhlIHRvb2wgYWx3YXlzIGNsYWlt
cyB0aGF0IHRoZSBkYXRhIGlzIG5vdAo+IGVuY29kZWQgd2l0aCBvcHVzLgo+IAo+IAo+IEkgcmVj
ZWl2ZSB0aGUgZGF0YSBwYWNrZXRzIGFuZCBzYXZlIHRoZW0gaW4gZmlsZXMub3B1cy4gVGhlbiBJ
J20gdHJ5aW5nCj4gdG8gZGVjb2RlIHVzaW5nIG9wdXNkZWMgdG9vbC4KPiAKPiAKPiBEbyB5b3Ug
a25vdyBob3cgZG8gSSBuZWVkIHRvIGNvbmZpZ3VyZSBpdD8KPgoKQXJlIHlvdSBzdXJlIHNlcnZl
ciBpcyBzZW5kaW5nIGRhdGEgdXNpbmcgT3B1cyBlbmNvZGVyPwoKU2VlIGNvbW1vbi9zbmRfY29k
ZWMuYyBpbiBzcGljZS1jb21tb24gcmVwb3NpdG9yeS4KCk5vdCBzdXJlIHdoaWNoIGZvcm1hdCBv
cHVzZGVjIGlzIGV4cGVjdGluZy4KCkZyZWRpYW5vCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
