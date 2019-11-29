Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D68D10D6A4
	for <lists+spice-devel@lfdr.de>; Fri, 29 Nov 2019 15:08:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 723E86E913;
	Fri, 29 Nov 2019 14:08:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36D5E6E913
 for <spice-devel@lists.freedesktop.org>; Fri, 29 Nov 2019 14:08:29 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-22-noHGlGXcO9Wj_NhvAlYuqA-1; Fri, 29 Nov 2019 09:08:24 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A593E800D41;
 Fri, 29 Nov 2019 14:08:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D07219C58;
 Fri, 29 Nov 2019 14:08:23 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 944FB18089CD;
 Fri, 29 Nov 2019 14:08:23 +0000 (UTC)
Date: Fri, 29 Nov 2019 09:08:22 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: ra du <radu64.xyz@gmail.com>
Message-ID: <1193650015.13820940.1575036502297.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAOYDFCHuRBsrH8fPh+byyu3+Tfg5orv810w3FSOa4OW7OfLf1A@mail.gmail.com>
References: <CAOYDFCHuRBsrH8fPh+byyu3+Tfg5orv810w3FSOa4OW7OfLf1A@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.8]
Thread-Topic: QXL on real hardware
Thread-Index: QAgMLAA0Ym1XZbLhzgsH8KSfyzkaCA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: noHGlGXcO9Wj_NhvAlYuqA-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575036507;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yTvBeF81kAr6o4huQXrjDkIgbQn2UvG1R93tltnKvq0=;
 b=YTcDXaUV0GkFxcKBW8EyoVLmHtAFTeiXZ2mO7RUkUHKraJNNTqLi00GpH/8tw20EFCzcdR
 VtzJ7x9CcNqISECXcjRyhi3aED65vr5SKV3kAHNhvbhDg1W/emsXRiqeTNOmdEuTwTpkh+
 fggLdIOOP+AvKrvdeVoPORrYgJzQRgg=
Subject: Re: [Spice-devel] QXL on real hardware
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

Cj4gSGkgYWxsLAoKPiBJIHdhcyB3b25kZXJpbmcgaWYgaXQgaXMgcG9zc2libGUgdG8gZ2V0IGEg
U1BJQ0UgKFFYTCkgZXh0cmEgc2NyZWVuIG9uIHJlYWwKPiBoYXJkd2FyZS4KPiBUaGUgaWRlYSBp
cyB0byB1c2UgdGhlIHF4bCBvdXRwdXQgYW5kIHN0cmVhbSBpdCBvdmVyIG5ldHdvcmsgdG8gYSBz
ZWNvbmRhcnkKPiBkaXNwbGF5LgoKPiBPbmUgc29sdXRpb24gdGhhdCBpcyBvdXQgdGhlcmUgaXMg
dGhlIHZpcnRTY3JlZW46Cj4gaHR0cHM6Ly9naXRodWIuY29tL2tidW1zaWsvVmlydFNjcmVlbgo+
IFRoaXMgc29sdXRpb24gdXNlcyB0aGUgaW50ZWwgdmlydHVhbG91dHB1dCBhbmQgVk5DIHNlcnZl
ciwgYnV0IGl0IGlzIG5vdCB2ZXJ5Cj4gcmVzcG9uc2l2ZS4KCj4gV2hpbGUgZG9pbmcgc29tZSB0
ZXN0cyB3aXRoIHRoZSB4MTFzcGljZSBzZXJ2ZXIsIFNQSUNFIHByb3RvY29sIHNlZW1zIHRvIGJl
Cj4gYmV0dGVyIHRoZW4gdm5jIGF0IHJlbW90ZSBkaXNwbGF5LgoKPiBUaGFua3MuCgpUZWNobmlj
YWxseSBubywgUVhMIGlzIHRoZSB2aXJ0dWFsIGNhcmQgd2hpY2ggaXMgcHJvdmlkZWQgdG8gVk1z
LgpJZiB5b3Ugd2FudCB0byBoYXZlIGFuIGFkZGl0aW9uYWwgc2NyZWVuIGFkZGVkIHRvIHlvdXIg
YmFyZSBtZXRhbCBtYWNoaW5lCmlzIG5vdCBwb3NzaWJsZS4KVGhlcmUgd2FzIGEgeHNwaWNlIHBy
b2plY3QgZ2l2aW5nIGJvdGggYSBYb3JnIGRyaXZlciBhbmQgYW4gWHNlcnZlciBidXQKaGFzIG5v
dCBiZWVuIHVwZGF0ZWQgcmVjZW50bHkuCgpJJ20gY3VyaW91cyBhYm91dCB0aGUgdXNhZ2UuIElz
IGl0IGxpa2UgcHV0dGluZyB0aGUgcHJlc2VudGF0aW9uIG9uIHRoZQpzZWNvbmQgc2NyZWVuIGFu
ZCBiZWluZyBhYmxlIHRvIHNoYXJlIGl0IHVzaW5nIFNQSUNFID8KCkZyZWRpYW5vCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
