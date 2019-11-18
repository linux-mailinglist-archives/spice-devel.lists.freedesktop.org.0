Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 261131001B6
	for <lists+spice-devel@lfdr.de>; Mon, 18 Nov 2019 10:50:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8030B89CCE;
	Mon, 18 Nov 2019 09:50:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C789889CCE
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Nov 2019 09:50:38 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-289-5_qX5gXfPjSw9wcUp5paIQ-1; Mon, 18 Nov 2019 04:50:32 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8D96A107ACC5;
 Mon, 18 Nov 2019 09:50:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8582D75E30;
 Mon, 18 Nov 2019 09:50:31 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7B88F4BB5B;
 Mon, 18 Nov 2019 09:50:31 +0000 (UTC)
Date: Mon, 18 Nov 2019 04:50:29 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: Carlos =?utf-8?Q?Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Message-ID: <60026404.12175418.1574070629928.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAGeBE=zw4FUJg5Trej1C6A=HXTits7=L6OzZy-PwiEG2pF8ZrA@mail.gmail.com>
References: <CAGeBE=zw4FUJg5Trej1C6A=HXTits7=L6OzZy-PwiEG2pF8ZrA@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.86, 10.4.195.10]
Thread-Topic: Spice thin clients
Thread-Index: DdD9jKDbFmPyKwyo6WlBnGu7KZMNdg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: 5_qX5gXfPjSw9wcUp5paIQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1574070637;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BtI6FN1dy/5T5vnLwNdHM2RobJvBD5jjPRroEuAgo0Q=;
 b=AdcLrnDtpHKNr/n6Fk9GfD3LbqZYd8f7DStJtMOxIKd8VQNnKC+BPoEB4Kq1mC0RtRWsqx
 /nqu/7wz075Py0dksXH5EftyquLTYtqxSj7f2Pssg3u7I6snDHf7t5PAeSSske4l5l24wU
 7JQo9YJGoG3pEW72nKoIq+2yBr+YaHg=
Subject: Re: [Spice-devel] Spice thin clients
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

PiBXZSdyZSB0aGlua2luZyBpbiBtb3VudGluZyBhIFBDIGxhYiB3aXRoIGNpcmNhIDIwIFBDcywg
YnV0IGJ5IHVzaW5nIHRoaW4KPiBjbGllbnRzLgoKPiBXaGF0IHdlJ2QgbGlrZSB0byBkbyBpcywg
b25lIGJpZyBLVk0gc2VydmVyIHdpdGggdGhlIFdpbmRvd3MgVk1zLCBhbmQgZWFjaCBQQwo+IGNs
aWVudCB0byBhY2Nlc3MgdGhlbSBhcyBhIHRoaW4gY2xpZW50LCB1c2luZyBlaXRoZXIgY2hlYXAg
c21hbGwgUENzIG9yCj4gUmFzcGJlcnJ5IFBpLiBQcmVmZXJhYmx5IHRoZSBsYXRlci4KCj4gQnV0
IEknbSBsb3N0IGFzIHRvIGhvdyB0byBldmVuIGJlZ2luLiBTaG91bGQgSSBqdXN0IG1vdW50IGEg
bWluaW1hbGlzdGljCj4gY29tbWFuZC1saW5lLW9ubHkgTGludXggZGlzdHJpYnV0aW9uIGluIGVh
Y2ggY2xpZW50LCB0aGVuIHNvbWVob3cgbWFrZSBpdAo+IGF1dG9tYXRpY2FsbHkgc3RhcnQgdGhl
IGNvcnJlc3BvbmRpbmcgVk0gdmlhIHZpcnQtdmlld2VyPwoKPiBPciBhcmUgdGhlcmUgd2F5cyBm
b3IgdGhlIFBDIGNsaWVudCB0byBiZSBPUy1sZXNzIGFuZCBzb21laG93IGRpcmVjdGx5IGJvb3Qg
YQo+IFZNIHZpYSBQWEUgb3Igc29tZXRoaW5nPwoKPiBUaGFua3MuCgpIaSwKICBoYXJkIHRvIGdp
dmUgYSByZXBseS4gVGhlcmUgYXJlIGRpZmZlcmVudCB0aGluZ3MgdG8gY29uc2lkZXIgZnJvbSBt
YWludGVuYW5jZQp0byBjb3N0cyB0byBwbGFubmluZy4gVGFraW5nIGFzaWRlIHRoZSBzZXJ2ZXIg
cGxhbm5pbmcgKEkgc3VwcG9zZSBmcm9tIDIwIFdpbmRvd3MKVk1zIHdvbid0IGJlIHN1Y2ggZGVt
YW5kaW5nLCBtb3JlIG9mZmljZSBqb2JzKS4KRm9yIGNsaWVudHMgdGhlcmUgYXJlIGFscmVhZHkg
bWFkZSBzb2x1dGlvbiAob25lIEkgZm91bmQgaXMKaHR0cDovL3d3dy5qaWV5dW5nLmNvbS9pbmRl
eC5waHA/bGFuZz1lbiwgZGlkbid0IHRyeSBpdCksIHNvZnR3YXJlIHNvbHV0aW9uczoKLSBodHRw
czovL2x0c3AuZ2l0aHViLmlvLwotIGh0dHA6Ly93d3cudGhpbnN0YXRpb24ub3JnLwotIGh0dHBz
Oi8vZHJibC5vcmcvClBlcnNvbmFsbHkgSSd2ZSBzZWVuIGN1c3RvbSBtYWRlIHNvbHV0aW9ucyBi
YXNlZCBvbiBVYnVudHUgYW5kICJjbGFzc2ljIiB0aGluIFBDcwp3aXRoIFBYRSBhbmQgTkZTLgpU
YWtlIGludG8gYWNjb3VudCB5b3VyIG5ldHdvcmsgKE5GUyB3aWxsIGNvbnN1bWUgYmFuZHdpZHRo
IGFuZCBjb3VsZCBzbG93IGRvd24Kd2hpbGUgaGF2aW5nIGFuIGludGVybmFsIHN0b3JhZ2UgY291
bGQgbWFrZSB1cGRhdGVzIG1vcmUgY29tcGxpY2F0ZSkuClRha2UgaW50byBhY2NvdW50IHRoZSBz
dXBwb3J0IGFuZCBtYWludGVuYW5jZSAoYW4gYWxyZWFkeSBtYWRlIHNvbHV0aW9uIHVzdWFsbHkK
bW92ZSBwYXJ0IG9mIHRoZSBtYWludGVuYW5jZSB0aW1lIGVmZm9ydHMgdG8gZXh0ZXJuYWwgY29t
cGFueSB3aXRoIGFsbCB0aGUKcHJvcyBhbmQgY29ucykuCkkgd291bGQgYXZvaWQgYSAic3RhcnQg
ZnJvbSBzY3JhdGNoIiBhcHByb2FjaCwgY291bGQgYmUgdmVyeSB0aW1lIGNvbnN1bWluZyBhbmQK
aGFyZCB0byBtYWludGFpbiwgaWYgb25lIHN0cm9uZyByZXF1aXJlbWVudCBpcyBjaGVhcCBjbGll
bnRzIGF0IGxlYXN0IEkgd291bGQKdHJ5IGFuIGFscmVhZHkgbWFkZSBzb2Z0d2FyZSBzb2x1dGlv
biBhZGFwdGluZyBpdC4KCkZyZWRpYW5vCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
