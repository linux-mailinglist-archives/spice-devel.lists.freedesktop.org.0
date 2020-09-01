Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC2425922C
	for <lists+spice-devel@lfdr.de>; Tue,  1 Sep 2020 17:05:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F9AA6E2B2;
	Tue,  1 Sep 2020 15:05:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A28286E2B2
 for <spice-devel@lists.freedesktop.org>; Tue,  1 Sep 2020 15:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598972732;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cQihOv1s1+5y9zBVlHyRmOCOBGovi8CUZwEM6xD/QQ0=;
 b=dCDJcqVSbH+m2Mx7jS9B6VB5/gEjp+l8/ElIwRQzwYYL5x7O9hnm6sIAjBmgDopD8Q3p1n
 grs88OhCy9KwydyaQ/B5T2KwK7bW8h5SWLwBf2G4H98sRNfLTJ43x4kKiRT5fVITSpl74y
 MeTPltShDr44JVq8zR1L+fvhq4G+qSg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-137-s8OLYOVMPxCxDsoQr8uDFA-1; Tue, 01 Sep 2020 11:05:30 -0400
X-MC-Unique: s8OLYOVMPxCxDsoQr8uDFA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 98310807333;
 Tue,  1 Sep 2020 15:05:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 911B27C5A0;
 Tue,  1 Sep 2020 15:05:29 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7945718095FF;
 Tue,  1 Sep 2020 15:05:29 +0000 (UTC)
Date: Tue, 1 Sep 2020 11:05:26 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Martin Filbrandt <hla@filbrandt.de>
Message-ID: <1253064046.39163754.1598972726958.JavaMail.zimbra@redhat.com>
In-Reply-To: <1451880e-f189-9b56-7986-a4be96b2f832@filbrandt.de>
References: <1451880e-f189-9b56-7986-a4be96b2f832@filbrandt.de>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.5, 10.4.195.7]
Thread-Topic: Data transfer guest to host/ folder sharing
Thread-Index: FIvIE+TsLJFoY8lH5GdOS17cGAtDpw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Data transfer guest to host/ folder sharing
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiBXZSB1c2UgU3BpY2Ugb24gUHJveG1veCBWTXMgKFdpbmRvd3MgMTAgZ3Vlc3RzKS4gQ2xpcGJv
YXJkIHNoYXJpbmcgZm9yIGZpbGVzCj4gaXMgcGVyZmVjdCAoZnJvbSBndWVzdCB0byBob3N0IGFu
ZCB2aWNlIHZlcnNhKS4gQnV0IHRyYW5zZmVycmluZyBkYXRhIHdvcmtzCj4gb25seSBpbiBvbmUg
ZGlyZWN0aW9uLCBpLmUuIGZvcm0gaG9zdCB0byBndWVzdC8gbm90IGZyb20gZ3Vlc3QgdG8gaG9z
dC4KPiBUbyBhdm9pZCB0aGF0IHByb2JsZW0gSSB0cmllZCB0byB1c2UgZm9sZGVyIHNoYXJpbmcu
IEJ1dCBmb2xkZXIgc2hhcmluZyBpcwo+IG5vdCBzdXBwb3J0ZWQgYnkgdGhlIHdpbmRvd3MgdmVy
c2lvbiBvZiB2aXJ0LXZpZXdlciAod2hpY2ggaXMgdXNlZCBvbiB0aGUKPiBsb2NhbCBXaW5kb3dz
IG1hY2hpbmVzKS4KPiBJcyB0aGVyZSBhbnkgY2hhbmNlIG9mIGdldHRpbmcgZGF0YSB0cmFuc2Zl
ciB3b3JraW5nIGluIGJvdGggZGlyZWN0aW9ucz8gSXMKPiBhbnl0aGluZyBsaWtlIHRoYXQgcGxh
bm5lZCBmb3IgdGhlIGZ1dHVyZT8KPiBLaW5kIHJlZ2FyZHMKPiBNYXJ0aW4gRmlsYnJhbmR0Cj4g
U3VwcG9ydGNlbnRlcgo+IEhMQSAoSGVzc2lzY2hlIExlaHJrcsOkZnRlYWthZGVtaWUpCgpIaSwg
CiAgSSdtIHN1cnByaXNlZCB2aXJ0LXZpZXdlciBkb2VzIG5vdCBzdXBwb3J0IHNoYXJlZCBmb2xk
ZXIuCkNhbm5vdCB5b3UgY2hhbmdlIHRoZSB2ZXJzaW9uIG9mIHZpcnQtdmlld2VyIGluc3RlYWQ/
CgpGcmVkaWFubwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVsCg==
