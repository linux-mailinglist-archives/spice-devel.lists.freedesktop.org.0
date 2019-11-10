Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBECF6991
	for <lists+spice-devel@lfdr.de>; Sun, 10 Nov 2019 16:14:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F040A6E069;
	Sun, 10 Nov 2019 15:14:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED42F6E069
 for <spice-devel@lists.freedesktop.org>; Sun, 10 Nov 2019 15:14:41 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-48-CGDsCUF6OAu1KO-VeYM2DQ-1; Sun, 10 Nov 2019 10:14:36 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 715F285B6EF;
 Sun, 10 Nov 2019 15:14:35 +0000 (UTC)
Received: from lub.tlv (dhcp-4-107.tlv.redhat.com [10.35.4.107])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BAB8E60141;
 Sun, 10 Nov 2019 15:14:34 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
References: <CAHmME9r81ugJR_NDF74kvi=ahjNZWzEMo6CGDELL8tw_dmQTxA@mail.gmail.com>
 <5b44c00f-6190-ae98-1862-012fd8d371bc@redhat.com>
 <CAHmME9r=B9gQP3doBaj-=47i2reKAoVFqQNt9sVAL0x5MwMpJw@mail.gmail.com>
 <03e794c0-70a8-f43e-6ba9-e8da5cbdfd27@redhat.com>
 <CAHmME9phs=MA2tVhBNwQFVsFvisuxS=HhBU74mbpKm1+oKkfYQ@mail.gmail.com>
 <b04377fc-7af3-c049-807d-a022c89467f2@redhat.com>
 <9898bf58-0c95-25f2-d4a5-58b9dd8591b4@redhat.com>
 <CAHmME9rXpp+FFxMRzGte4vT5H68OjYwQuA0r6t5mzC53yQHUEw@mail.gmail.com>
 <fb9bbc31-3e92-9a10-4459-cd588c652027@redhat.com>
Organization: Red Hat
Message-ID: <aad7f202-6b2a-6162-b83d-af5614f148e1@redhat.com>
Date: Sun, 10 Nov 2019 17:14:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <fb9bbc31-3e92-9a10-4459-cd588c652027@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: CGDsCUF6OAu1KO-VeYM2DQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1573398880;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ztP+zkey6rE9jeBP3WRBgAiolNojpnubyxIuy5/8Atk=;
 b=bnikMJYFNvncXcyvi6UMqTvPz4FqikOiOu3gjFJW3Bh+2NJoqRKrK+pzFqmAqVrMqlqi3T
 UnuHzdasL9X76KyOZExr82QUVu5MaaF6nqFlSTTqrpENPLynMYeN5VVK3yDwkSvd/81BDg
 XvC+wEzBkLCVI72y8AYoaSZ+Tou1OFU=
Subject: Re: [Spice-devel] regression from 0.14.0 -> 0.14.2 in screen
 resizing
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
Reply-To: uril@redhat.com
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gMTEvMy8xOSAzOjE3IFBNLCBVcmkgTHVibGluIHdyb3RlOgo+IE9uIDExLzMvMTkgMjo0MiBQ
TSwgSmFzb24gQS4gRG9uZW5mZWxkIHdyb3RlOgo+PiBPbiBTdW4sIE5vdiAzLCAyMDE5LCAyMDoy
MyBVcmkgTHVibGluIDx1cmlsQHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+Pj4+Cj4+Pj4gSSdsbCB0
cnkgV2luZG93cyAxMCBsYXRlciAoY291cGxlIG9mIGRheXMpLgo+Pj4KPj4+IEkgdHJpZWQgY2hh
bmdpbmcgdGhlIHJlc29sdXRpb24gb2YgYSBXaW5kb3dzIDEwIFZNIGZyb20gd2l0aGluIHRoZSAK
Pj4+IGd1ZXN0Lgo+Pj4gSW5kZWVkLCByZW1vdGUtdmlld2VyIGZhaWxzIHRvIGNoYW5nZSB0aGUg
cmVzb2x1dGlvbiBvZiB0aGUgd2luZG93IG9uCj4+PiB2MC4xNC4yIGJ1dCB3b3JrcyBmaW5lIG9u
IHYwLjE0LjAuCj4+PiBJIGFsc28gbm90aWNlZCB0aGF0IGl0IHdvcmtzIGZpbmUgb24gdGhlIGdp
dCBtYXN0ZXIgYnJhbmNoLgo+Pj4KPj4KPj4gQ29vbCwgc28gcHJlc3VtYWJseSBhbHJlYWR5IGZp
eGVkIGZvciAwLjE0LjMgdGhlbj8gQW55IGlkZWEgd2hhdCBjb21taXQKPj4gY2F1c2VkIHRoZSBy
ZWdyZXNzaW9uIGFuZCB3aGF0IGZpeGVkIGl0Pwo+IAo+IAo+IEkgcGxhbiB0byBnaXQgYmlzZWN0
IGFuZCByZXBvcnQuCgpUaGUgY29tbWl0IHRoYXQgZml4ZXMgdGhlIGlzc3VlIGlzIC4uLi4uCgpy
ZWQtcXhsOiBNYWtlIHN1cmUgd2UgaGF2ZSBhdCBsZWFzdCBvbmUgbW9uaXRvcgo0ZjJkOTBhNzg0
OWZhZmViYzc0ZGVjNjA4ZjliNGZmYTk0MDBkMWE2CgoKVXJpLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
