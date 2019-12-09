Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C3A1172E9
	for <lists+spice-devel@lfdr.de>; Mon,  9 Dec 2019 18:36:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 368336E03E;
	Mon,  9 Dec 2019 17:36:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BE186E03E
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Dec 2019 17:36:40 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-32-jONUHpWaO_WGHMVrpGuxyQ-1; Mon, 09 Dec 2019 12:36:37 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6E99FDB20;
 Mon,  9 Dec 2019 17:36:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 652EE60BE0;
 Mon,  9 Dec 2019 17:36:36 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 58D5F18034E9;
 Mon,  9 Dec 2019 17:36:36 +0000 (UTC)
Date: Mon, 9 Dec 2019 12:36:34 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: alexander@daynix.com
Message-ID: <1469189401.14903019.1575912994947.JavaMail.zimbra@redhat.com>
In-Reply-To: <20191208140319.22172-1-anezhins@redhat.com>
References: <20191208140319.22172-1-anezhins@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.27, 10.4.195.28]
Thread-Topic: Add Spice CD functionality to usb-device-widget
Thread-Index: TUaWqMbGiF32LHgYPJ0+jKGG7A/O4g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: jONUHpWaO_WGHMVrpGuxyQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575912999;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=H3geFa44SgZVvx0CBZcbcfc2Lk5PQxW7j0IzBhuhN7c=;
 b=cRg80LlhQr68S1VJzacpmRHbZ9fvb2OAJ+VnefINyYaSOCBKxnyL3/DRSil10C3WOeE4UO
 FrLPVvgOm14ClScUXAxZ+iQOQ+K+8y9OAB4lNhfGRwdrsItg7mzzmVs6yssJ0XptCuxneG
 TxQhdL004sOAAa1+wMpYdzj9QRfMTRA=
Subject: Re: [Spice-devel] [PATCH shared-cd v1 0/9] Add Spice CD
 functionality to usb-device-widget
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
Cc: Yan Vugenfirer <yan@daynix.com>, spice-devel@lists.freedesktop.org,
 Alexander Nezhinsky <anezhins@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBGcm9tOiBBbGV4YW5kZXIgTmV6aGluc2t5IDxhbmV6aGluc0ByZWRoYXQuY29tPgo+IAo+
IFRoaXMgcGF0Y2gtc2V0IGFkZHMgc2hhcmVkIFNwaWNlIENEIGZ1bmN0aW9uYWxpdHkgdG8gdXNi
LWRldmljZS13aWRnZXQuCj4gCj4gRXZlcnkgdGltZSB0aGUgd2lkZ2V0IGlzIGNyZWF0ZWQgb3Ig
cmVkcmF3biwgYSBwbGFjZWhvbGRlciB0b2dnbGUgbmFtZWQKPiAiU3BpY2UgQ0QgKGVtcHR5KSIg
YXBwZWFycyBvbiB0b3Agb2YgdGhlIGF2YWlsYWJsZSBVU0IgZGV2aWNlcyBsaXN0Lgo+IEl0IGFs
bG93cyBhZGRpbmcgQ0QgZGV2aWNlcyBhbmQsIHdoZW4gY2xpY2tlZCwgZmlyZXMgdXAgYSBmaWxl
IGNob29zZXIuCj4gCj4gSWYgYW4gaW1hZ2UgcGF0aCBoYXMgYmVlbiBzZWxlY3RlZCwgYSBuZXcg
U3BpY2UgVVNCIENEIGRldmljZSBpcyBjcmVhdGVkLgo+IEFmdGVyIHRoZSBuZXcgZGV2aWNlIGlz
IGFkZGVkIGFuZCB0aGlzIGV2ZW50IGlzIHNpZ25hbGxlZCB0byB0aGUgd2lkZ2V0LAo+IHRoZSBv
cmlnaW5hbCB0b2dnbGUgc2hvd3MgdGhlIGltYWdlIGZpbGUgcGF0aCBhbmQgc3RhcnRzIHJlcHJl
c2VudGluZwo+IHRoZSBDRC4gQSBuZXcgcGxhY2Vob2xkZXIgdG9nZ2xlIGZvciBhbiBlbXB0eSBT
cGljZSBDRCBpcyBhZGRlZC4KPiAKPiBXaGVuIHRoZSBtZWRpYSBpcyB1bmxvYWRlZCwgdGhlIHNo
YXJlZCBDRCBkZXZpY2UgaXMgcmVtb3ZlZC4gT3RoZXJ3aXNlLAo+IGFsbCBzdGFuZGFyZCBzY2Vu
YXJpb3MgZm9yIFNwaWNlIFVTQiBkZXZpY2UgcmVtb3ZhbCBhcmUgc3VwcG9ydGVkLgo+IAo+IE5l
Y2Vzc2FyeSBmdW5jdGlvbmFsaXR5IGFuZCBhcGkgZm9yIHNoYXJlZCBDRCBtYWludGFpbmFuY2Ug
aGF2ZSBiZWVuIGFkZGVkCj4gdG8gdXNiLWRldmljZS1tYW5hZ2VyLgo+IAoKSSdtIGxvb2tpbmcg
YXQgdGhlIGF2ZXJhZ2Ugc2VyaWVzLgoKSSB0ZXN0ZWQgdGhlIEdVSSBhbmQgSSBmb3VuZCBuaWNl
IGFuZCBlYXN5LiBZb3UgY2xpY2ssIHByb3ZpZGUgYSBDRCBJU08gaW1hZ2UKYW5kIGEgbmV3IGRl
dmljZSBpcyByZWFkeSBhbmQgY29ubmVjdGVkLgpJIGZvdW5kIGhvd2V2ZXIgcGF0Y2hlcyAyLzkg
YW5kIDgvOSAoY29tbWFuZCBsaW5lIGludGVyZmFjZSkgYSBiaXQgZGlmZmVyZW50LApJIHdvdWxk
IGV4cGVjdCBlc3BlY2lhbGx5IGZyb20gOC85IHRoYXQgYWxsIGRldmljZXMsIGxpa2UgdGhlIEdV
SSwgYmUgY29ubmVjdGVkLApzbyBub3QgZmlsdGVyZWQgYXQgYWxsLiBNYXliZSB0aGlzIGlzIHRo
ZSBpc3N1ZSBzb2x2ZWQgYnkgOS85PwpBbHNvIEkgZmluZCA2LzkgYW5kIDcvOSBhIGJpdCBvZGQu
IFRoZSBhdXRvLXJlbW92YWwgaXMgZG9uZSBieSB0aGUgZGV2aWNlCml0c2VsZiB3aGljaCBpcyBz
ZXQgb24gZGVsZXRlX29uX2Nsb3NlLiBIb3dldmVyIG9uIHRoZXNlIHBhdGNoZXMgdGhlIHNhbWUK
am9iIGlzIGRvbmUgYXQgYSBtdWNoIGhpZ2hlciBsZXZlbCwgaW4gdGhlIEdVSS4gQWxzbyB0aGUg
cGF0aCBsb29rcyBsaWtlICJsb25nIjoKdGhlIGRldmljZSBtYW5hZ2VyIGNhbGwgdGhlIEdVSSB3
aGljaCBkZXRlY3QgdGhlIHNoYXJlZCBDRCB1c2luZyB0aGUgZGV2aWNlCm1hbmFnZXIgYW5kIHRl
bGwgdGhlIGRldmljZSBtYW5hZ2VyIHdoYXQgdG8gZG8uIFdvdWxkIGJlIG1vdmluZyBhbGwgdGhl
IGxvZ2ljCnRvIGRldmljZSBtYW5hZ2VyIGRpcmVjdGx5IGVhc2llcj8gSSB0aGluayB3b3VsZCBh
bHNvIHJlbW92ZSB0aGUgbmVjZXNzaXR5Cm9mIGJvdGggc3BpY2VfdXNiX2RldmljZV9tYW5hZ2Vy
X2lzX2RldmljZV9zaGFyZWRfY2QgYW5kCnNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9yZW1vdmVf
c2hhcmVkX2NkX2RldmljZSBBUEkuCgpJIHRoaW5rIGNyZWF0aW5nIHRoZSAiZW1wdHlfY2QiIGJl
Zm9yZSB0aGUgZGV2aWNlIG1hbmFnZXIgd291bGQgYXZvaWQgdGhlCmNoZWNrIGZvciAiZW1wdHlf
Y2QgIT0gTlVMTCIgbGF0ZXIgYW5kIHByZXZlbnQgc29tZSBwb3NzaWJsZSBpc3N1ZXMKKGxpa2Ug
ZGV2aWNlcyBub3QgY29ycmVjdGx5IGNvbm5lY3RlZCkKCkkgdGhpbmsgMS85IChlc3BlY2lhbGx5
KSBhbmQgNC85IGFzIHByZXBhcmF0b3J5IGFuZCBub3Qgc3BlY2lmaWNhbGx5IENEIGludGVyZmFj
ZQpyZWxhdGVkLCBjYW4gdGhlc2UgYmUgbW92ZWQgYXMgZmlyc3QgYW5kIHBvc3NpYmxlIGJlIG1l
cmdlZCAoY2FuIEkgZG8gdGhlIGpvYj8pCgpUaGVzZSBjb21tZW50cyBhcmUgbm90IG11Y2ggZXhw
ZWN0aW5nIGNvZGUvY29tbWVudHMgY2hhbmdlcywgbW9yZSB0cnlpbmcKdG8gc2hhcmUgaW1wcmVz
c2lvbnMgYW5kIGJldHRlciB1bmRlcnN0YW5kaW5nIHRoZSBvdmVyYWxsIGNoYW5nZXMgYW5kCmV4
cGVjdGF0aW9ucy4KCj4gQWxleGFuZGVyIE5lemhpbnNreSAoOSk6Cj4gICBtb3ZlIHNwaWNlX3Vz
Yl9iYWNrZW5kX2RldmljZV97ZWplY3R8cmVwb3J0X2NoYW5nZX0gdG8gdXNiX2JhY2tlbmQuaAo+
ICAgYWRkIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlciBzaGFyZWQgQ0QgcmVsYXRlZCBhcGkgZnVu
Y3Rpb25zCj4gICBBZGQgLS1zcGljZS1zaGFyZS1jZCBjb21tYW5kIGxpbmUgb3B0aW9uCj4gICBG
YWN0b3Igb3V0IHNwaWNlX3VzYl9kZXZpY2Vfd2lkZ2V0X2FkZF9lcnJfbXNnKCkgaW4gdXNiLWRl
dmljZS13aWRnZXQKPiAgIEFkZCBlbXB0eSBDRCBlbnRyeSB0byB1c2ItZGV2aWNlLXdpZGdldCwg
Y3JlYXRlIHNoYXJlZCBDRCB3aGVuIHRvZ2dsZWQKPiAgIEF1dG8tcmVtb3ZlIHNoYXJlZCBDRCBk
ZXZpY2VzIG9uIGRpc2Nvbm5lY3QgaW4gdXNiLWRldmljZS13aWRnZXQKPiAgIHJlbW92ZSBzaGFy
ZWQgQ0QgZGV2aWNlIG9uIGNvbm5lY3QtZmFpbCBkdXJpbmcgVVNCIHJlZGlyZWN0IGF0dGVtcHQK
PiAgIGF1dG8tY29ubmVjdCBzaGFyZWQgQ0QgZGV2aWNlcyBhZGRlZCB1c2luZyBjb21tYW5kIGxp
bmUKPiAgIHJlbW92ZSB1bmNvbm5lY3RlZCBzaGFyZWQgQ0RzIHVwb24gdXNiLWRldmljZS13aWRn
ZXQgY29uc3RydWN0aW9uCj4gCj4gIHNyYy9tYXAtZmlsZSAgICAgICAgICAgICB8ICAgMyArCj4g
IHNyYy9zcGljZS1vcHRpb24uYyAgICAgICB8ICAyOCArKysrKysrCj4gIHNyYy91c2ItYmFja2Vu
ZC5oICAgICAgICB8ICAgMiArCj4gIHNyYy91c2ItZGV2aWNlLW1hbmFnZXIuYyB8IDExMiArKysr
KysrKysrKysrKysrKysrKysrKysrKy0tCj4gIHNyYy91c2ItZGV2aWNlLW1hbmFnZXIuaCB8ICAx
NCArKysrCj4gIHNyYy91c2ItZGV2aWNlLXdpZGdldC5jICB8IDE1NyArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKy0tLS0KPiAgc3JjL3VzYi1lbXVsYXRpb24uaCAgICAgIHwgICAz
ICstCj4gIDcgZmlsZXMgY2hhbmdlZCwgMjk1IGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygt
KQo+IAo+IC0tCj4gMi4yMC4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
