Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E6D155821
	for <lists+spice-devel@lfdr.de>; Fri,  7 Feb 2020 14:08:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C234E6FC79;
	Fri,  7 Feb 2020 13:08:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B23C6FC79
 for <spice-devel@lists.freedesktop.org>; Fri,  7 Feb 2020 13:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581080906;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=a5Ya+qI8IB2POyrzbBy/dE/8qbymCch8XL5gRsileW8=;
 b=J5iGibRC4NRIymQF4SNWEY6uuMdRhs+YPYkuKBWaQFFas7lHok7Pydb8lv1iLWKbKafXcX
 hu0yO0hKAZeclFdOcASOcwmfTszIettW2v/EstKgRBgP1Xb9ZnUtWA9UKVMhQs0M7RaFgO
 0A2Drw2x70brmsOHdkL4KMspHBlcn1s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-413-C-aIGr33ObGQuQFArBR52g-1; Fri, 07 Feb 2020 08:08:21 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 68F13800E21;
 Fri,  7 Feb 2020 13:08:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5F2B01001B28;
 Fri,  7 Feb 2020 13:08:20 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5293381739;
 Fri,  7 Feb 2020 13:08:20 +0000 (UTC)
Date: Fri, 7 Feb 2020 08:08:19 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: franklin zhou <codeit@live.com>
Message-ID: <538025878.12477291.1581080899485.JavaMail.zimbra@redhat.com>
In-Reply-To: <MN2PR06MB59662A5FF2F03BAE5A4130DEB31C0@MN2PR06MB5966.namprd06.prod.outlook.com>
References: <MN2PR06MB59662A5FF2F03BAE5A4130DEB31C0@MN2PR06MB5966.namprd06.prod.outlook.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.8]
Thread-Topic: how disable  auto enter last user windows desktop
Thread-Index: AQHV3ZNZ+Y2E9JDNQEi9wDVfqO4viiFLSlA1
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: C-aIGr33ObGQuQFArBR52g-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] how disable auto enter last user windows desktop
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

PiBoaSwgYWxsLAoKPiBXaGVuIHVzZSBzcGljZSB3aW5kb3dzIHZtLCB3aGVuIEkgZmlyc3QgY29u
bmVjdCBzcGljZTovL3h4eC54eHgueHh4OjU5MDEsCj4gd2luZG93cyBuZWVkIHVzZXIgbmFtZSBh
bmQgcGFzc3dvcmQgdG8gbG9naW4sIHRoZW4gSSBpbnB1dCB1c2VyIG5hbWUgYW5kCj4gcGFzc3dv
cmQgYW5kIGxvZ29u44CCCj4gYnV0IEkgZGlzY29ubmVjdCBhbmQgdGhlbiBjb25uZWN0IHNwaWNl
Oi8veHh4Lnh4eC54eHg6NTkwMSBhZ2FpbiwgdGhlbiBpdAo+IGRvZXMgbm90IG5lZWQgdXNlciBu
YW1lIGFuZCBwYXNzd29yZCwKPiBpdCBkaXJlY3RseSBjb25uZWN0IG15IGRlc2t0b3AsCj4gaG93
IHRvIGRpc2FibGUgdGhlIGZ1bmN0aW9uIHRoYXQgYXV0byBlbnRlciBsYXN0IHVzZXIgc2Vzc2lv
biA/CgpJJ20gbm90IGF3YXJlIG9mIHN1Y2ggZmVhdHVyZS4KQXJlIHlvdSB0YWxraW5nIGFib3V0
IFNQSUNFIHBhc3N3b3JkIG9yIFdpbmRvd3Mgb25lPwpJZiB5b3UgYXJlIHJlZmVycmluZyB0byBX
aW5kb3dzIHNpbXBseSBpZiB5b3UgZG9uJ3QgbG9jayB5b3VyCm1hY2hpbmUgdGhlIG1hY2hpbmUg
c3RheXMgdW5sb2NrZWQsIGl0J3MgbGlrZSBsZWF2aW5nIHRoZSBwaHlzaWNhbApkZXNrdG9wIHdp
dGggdGhlIHBjIHVubG9ja2VkIGFuZCBzb21lb25lIGVsc2UgY2FtZSBhbmQgdXNlIHRoZQptYWNo
aW5lLiBJZiB5b3Ugd2FudCB0byBhdm9pZCB0aGF0IEkgdGhpbmsgd291bGQgYmUgZ29vZCBhIFJG
RS4KCkZyZWRpYW5vCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWwK
