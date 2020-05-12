Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B091A1CF185
	for <lists+spice-devel@lfdr.de>; Tue, 12 May 2020 11:24:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C7106E0DC;
	Tue, 12 May 2020 09:24:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C512B6E0DC
 for <spice-devel@lists.freedesktop.org>; Tue, 12 May 2020 09:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589275488;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RRlYC8WaJBD2a5I9CPk8HmpgCV1xORcDADjXRoit7gs=;
 b=cwYDrguWt5rh7tRgw703U2PQcJXysaTleqoaQOKnxZU0x2aerKjf1xT/JsLyMbQx2F340p
 ZSU+xV3DRAz6JZ08LBkewUg/4VcJG04D/DSYn8CX9cXLi0kuXNtUTXIVVJLhbxV0u0I+x4
 ca3LAAThxZMivsm6W0hfQqP3ZOLfAqQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-26-ky6cCJ7jNaWuZDX8PGRvGQ-1; Tue, 12 May 2020 05:24:37 -0400
X-MC-Unique: ky6cCJ7jNaWuZDX8PGRvGQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 53D568015D1
 for <spice-devel@lists.freedesktop.org>; Tue, 12 May 2020 09:24:36 +0000 (UTC)
Received: from redhat.com (unknown [10.36.110.71])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3AB3F2E186;
 Tue, 12 May 2020 09:24:32 +0000 (UTC)
Date: Tue, 12 May 2020 10:24:27 +0100
From: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
To: =?utf-8?Q?Marc-Andr=C3=A9?= Lureau <marcandre.lureau@redhat.com>
Message-ID: <20200512092427.GI1191162@redhat.com>
References: <CAMxuvawzmqKdLwk6AvthZkmZTr9T+q+UU8Q+raVHj0nZ2swhiw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMxuvawzmqKdLwk6AvthZkmZTr9T+q+UU8Q+raVHj0nZ2swhiw@mail.gmail.com>
User-Agent: Mutt/1.13.4 (2020-02-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Spice-devel] About decisions and reviews
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
Reply-To: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gTW9uLCBNYXkgMTEsIDIwMjAgYXQgMTI6MTY6MjRQTSArMDIwMCwgTWFyYy1BbmRyw6kgTHVy
ZWF1IHdyb3RlOgo+IEhpLAo+IAo+IEFib3V0ICJNb3ZlIGNvZGUgdG8gQysrIjoKPiBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvc3BpY2Uvc3BpY2UvLS9tZXJnZV9yZXF1ZXN0cy82Mgo+
IAo+IEkgd291bGQgbGlrZSB0byBrbm93IGhvdyB0aGUgZGVjaXNpb24gaGFwcGVuZWQuIEFzIGxv
bmcgYXMgSSBoYXZlIGJlZW4KPiBpbnZvbHZlZCBpbiB0aGUgU3BpY2UgcHJvamVjdCwgd2UgaGFk
IG9wZW4gZGlzY3Vzc2lvbnMgYW5kIGRpZAo+IG1hbmRhdG9yeSByZXZpZXcgZm9yIGFueXRoaW5n
IG5vbi10cml2aWFsLgo+IAo+IFRoaXMgY2hhbmdlIGlzIHN1YnN0YW50aWFsLCBhbmQgaW1wYWN0
cyB0aGUgd29yayBhbmQgY29udHJpYnV0aW9uIG9mCj4gb3RoZXJzLiBXaGVyZSBkaWQgdGhlIGRp
c2N1c3Npb24gaGFwcGVuPyBXaG8gcmV2aWV3ZWQgdGhlIGNvZGUKPiBjaGFuZ2VzPwoKTG9va2lu
ZyBhdCB0aGF0IG1lcmdlIHJlcXVlc3QsIGl0IGlzIHByZXR0eSBzdXJwcmlzaW5nIHRvIHNlZSBh
IDEwMApwYXRjaCBsb25nIHNlcmllcyBtZXJnZWQgd2l0aCBubyByZXZpZXcgY29tbWVudHMgdmlz
aWJsZSBvbiB0aGUgY29kZQpmcm9tIG90aGVyIG1haW50YWluZXJzLgoKUmVnYXJkcywKRGFuaWVs
Ci0tIAp8OiBodHRwczovL2JlcnJhbmdlLmNvbSAgICAgIC1vLSAgICBodHRwczovL3d3dy5mbGlj
a3IuY29tL3Bob3Rvcy9kYmVycmFuZ2UgOnwKfDogaHR0cHM6Ly9saWJ2aXJ0Lm9yZyAgICAgICAg
IC1vLSAgICAgICAgICAgIGh0dHBzOi8vZnN0b3AxMzguYmVycmFuZ2UuY29tIDp8Cnw6IGh0dHBz
Oi8vZW50YW5nbGUtcGhvdG8ub3JnICAgIC1vLSAgICBodHRwczovL3d3dy5pbnN0YWdyYW0uY29t
L2RiZXJyYW5nZSA6fAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVsCg==
