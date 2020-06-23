Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E86E220555D
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jun 2020 17:01:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F10C6E3F4;
	Tue, 23 Jun 2020 15:01:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 872E06E3F4
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jun 2020 15:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592924493;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CuDQ5/9AwUZekisQcWzdIhWlSSbJUmDA4lx8dYMsThE=;
 b=KGSs+XBo5o4d2IVP7HBcAnFdly7kAfAicWUu9XloyHpaICjAycsznsjJ0Oo5VKjKaB44Ee
 vJFSIHvb7hl73v0vdVj4EoWi/P8e2y0DAZeFwWqzNMKhC2GUUflkeDz5hCjWgskOPy+JUq
 KIlLIIhGWa63e5fO5nx+Tctm7X8EkWs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-353-7Fph1Qz-O_iR3Yb-EJalNQ-1; Tue, 23 Jun 2020 11:01:27 -0400
X-MC-Unique: 7Fph1Qz-O_iR3Yb-EJalNQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C1D65107ACF6;
 Tue, 23 Jun 2020 15:01:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B9BEA10013D2;
 Tue, 23 Jun 2020 15:01:24 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B145318095FF;
 Tue, 23 Jun 2020 15:01:24 +0000 (UTC)
Date: Tue, 23 Jun 2020 11:01:24 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: =?utf-8?B?0JjQu9GM0Y8=?= <iliya@i-terezie.ru>
Message-ID: <988568512.31925799.1592924484392.JavaMail.zimbra@redhat.com>
In-Reply-To: <cab6379851a0d06205ad2e000a9db034@i-terezie.ru>
References: <5f8d4665157ae5fc7b8e2c27f5d81b14@i-terezie.ru>
 <1317899397.28040740.1590391164979.JavaMail.zimbra@redhat.com>
 <cab6379851a0d06205ad2e000a9db034@i-terezie.ru>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.20]
Thread-Topic: Work via slow networks
Thread-Index: WoGxp7TYnFDFHFvBqOj2TPK/vqfnJQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Work via slow networks
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiBGcmVkaWFubyBaaWdsaW8g0L/QuNGB0LDQuyAyMDIwLTA1LTI1IDEwOjE5Ogo+ID4+IAo+ID4+
IEkgaGF2ZSBhIHByb2JsZW0gd2l0aCBzbG93IHJlbmRlcmluZyBvZiBhIGNoYW5naW5nIGRlc2t0
b3AgdmlhIGEgc2xvdwo+ID4+IG5ldHdvcmsuIFNQSUNFIHRyaWVzIHRvIHJlbmRlciBhbGwgdGhl
IHN0YXRlcyBvZiB0aGUgc2NyZWVuCj4gPj4gc2VxdWVudGlhbGx5LCBpbnN0ZWFkIG9mIGltbWVk
aWF0ZWx5IGRyYXdpbmcgdGhlIGZpbmFsIHN0YXRlLgo+ID4+IAo+ID4+IFdoYXQgc2V0dGluZ3Mg
Y2FuIHlvdSByZW1vdmUgdGhpcyBiZWhhdmlvcj8KPiA+IAo+ID4gSGksCj4gPiAgIEknbSBub3Qg
c3VyZSwgdW5mb3J0dW5hdGVseSwgdGhlcmUncyBhIHdheSB0byBlbnRpcmVseSByZW1vdmUgdGhp
cwo+ID4gYmVoYXZpb3IsCj4gPiBhdCBsZWFzdCB3aXRoIGN1cnJlbnQgb3B0aW1pemF0aW9ucy4K
PiA+IENhbiB5b3UgZGVzY3JpYmUgYmV0dGVyIHlvdXIgY2FzZT8KPiA+IFdoYXQncyBzbG93IG1l
YW4sIEkgbWVhbiwgc3BlZWQ/IDEwTWJpdD8gTGVzcz8gTW9yZT8KPiA+IERvIHlvdSBrbm93IHRo
ZSBsYXRlbmN5IG9mIHRoZSBjb25uZWN0aW9uPwo+ID4gV2hhdCB0eXBlIChtb2JpbGUvd2lmaS9j
YWJsZWQvbGFuL3dhbikgPwo+ID4gV2hpY2gga2luZCBvZiBndWVzdCAoT1MvY29uZmlndXJhdGlv
bi91c2UgY2FzZSkgYXJlIHlvdSB1c2luZz8KPiA+IEluIHRoZSBzdWJqZWN0IHlvdSBzdGF0ZSBh
ICJzbG93IG5ldHdvcmsiIGluIHRoZSBtZXNzYWdlIHlvdSBzcGVhawo+ID4gYWJvdXQgInNsb3cg
cmVuZGVyaW5nIiwgdGhhdCdzIHF1aXRlIGRpZmZlcmVudCBmcm9tIHRoZSB3YXkgSSBzZWUgaXQs
Cj4gPiB3aGF0IHNwZWNpZmljIGlzc3VlcyBhcmUgeW91IG5vdGluZz8KPiA+IAo+ID4gRnJlZGlh
bm8KPiAKPiBUaGUgY2hhbm5lbCBpcyBVRFAgT3BlblZQTiB2aWEgdGhlIEludGVybmV0LiBUaGUg
dG90YWwgbG9hZCBmcm9tCj4gZXZlcnl0aGluZyB0dXJucyBvdXQgdG8gYmUgYWJvdXQgMTAwS2li
LiBCdXQgdGhpcyBpcyBub3QgYSBkaXJlY3QKPiBjaGFubmVsIGxpbWl0YXRpb24uIFRoZSBjaGFu
bmVsIG1heSBiZSBsYXJnZXIuIElmIHlvdSB1c2UgdGhlIFRDUAo+IHZlcnNpb24gb2YgT3BlblZQ
TiwgdGhlbiBpdCB3aWxsIGJlIGRpc3BsYXllZCBldmVuIG1vcmUgc2xvd2x5LiBJdCBzZWVtcwo+
IHRoYXQgdGhlIHNlcnZlciBpcyB3YWl0aW5nIGZvciBzb21lIGNvbmZpcm1hdGlvbiBmcm9tIHRo
ZSBjbGllbnQuCj4gCj4gQ2xpZW50IGFuZCBzZXJ2ZXIgVWJ1bnR1IDE4LjA0Lgo+IAo+IFdpdGgg
YSBzbW9vdGggZmFkaW5nIG9yIGJyaWdodGVuaW5nIG9mIHRoZSBXaW5kb3dzIHNjcmVlbiBvbiBh
IHZpcnR1YWwKPiBtYWNoaW5lIG9uIHRoZSBjbGllbnQsIEkgc2VlIGFsbCB0aGUgc3VjY2Vzc2l2
ZWx5IGNoYW5naW5nIGJyaWdodG5lc3MuCj4gVGhlIHNhbWUgdGhpbmcgaGFwcGVucyB3aGVuIGEg
dmlkZW8gb3Igc29tZXRoaW5nIGNoYW5nZXMgaXMgZHJhd24gaW4gdGhlCj4gYnJvd3Nlci4KPiAK
PiAKSGksCiAgbm90IG11Y2ggdG8gcmVjb21tZW5kIHdpdGggdGhlc2UgY29uZGl0aW9ucy4gSSB0
aGluayBxdWl0ZSBvdXQgb2YgU1BJQ0UKY2FuIGhhbmRsZS4KClRoZSBvcmlnaW5hbCBkZXNpZ24g
d2FzIG1vcmUgYWJvdXQgc2VuZGluZyByZW5kZXJpbmcgY29tbWFuZHMgdG8gY2xpZW50cwp3aGlj
aCBkb2VzIG5vdCBoZWxwIG11Y2ggd2l0aCBzbyBzbG93IGJhbmR3aWR0aC4KCk9uZSBvZiB0aGUg
MiBvcHRpb25zIHRvIHRyeSBpcyB0byBmb3JjZSAid2FuIG9wdGltaXphdGlvbiIgc2V0dGluZyBp
dCB0bwoiYWx3YXlzIi4gVGhpcyB3aWxsIHVzZSBtb3JlIEpQRUcgZm9yIGNvbXByZXNzaW9uLiBB
bm90aGVyIHdvdWxkIGJlIHRvCnJlZHVjZSAianBlZ19xdWFsaXR5IiBzZXR0aW5nIChkY2MuY3Bw
KSB0byBhIGxvd2VyIHZhbHVlIChjdXJyZW50bHkgZml4ZWQKdG8gODUpLgoKQW4gdW5mb3J0dW5h
dGVseSBWUE4gYW5kIHF1ZXVlaW5nIGRvZXMgbm90IGhlbHAsIGVzcGVjaWFsbHkgaWYgVENQLgpU
aGUgcmVhc29uIGlzIHRoYXQgd2hpbGUgdGhlIHNlcnZlciAod2hpY2ggbWFpbmx5IHNlbmQgZGF0
YSkgaGFzIGEgZmFzdApjb25uZWN0aW9uIHRvIHRoZSBWUE4gZ2F0ZXdheSB0aGUgY2xpZW50IGRv
ZXNuJ3Qgc28gdGhlIHNlcnZlciBwcm9iYWJseQp3aWxsIHVzZSBhIGxhcmdlIHF1ZXVlIGNhdXNp
bmcgbGF0ZW5jeSBpc3N1ZXMuIEkgaGF2ZSBhIHF1aXRlIGRpcnR5IGFuZApleHBlcmltZW50YWwg
cGF0Y2ggdG8gbGltaXQgdGhlIHF1ZXVlIGJ1dCBpdCB3b24ndCBoZWxwIHdpdGggb3RoZXIgaXNz
dWVzLgoKSSB0aGluayAoaXQgY291bGQgYmUgSSdtIHdyb25nKSB0aGF0IGFuIGFwcHJvYWNoIG1v
cmUgVk5DIGxpa2UgKGRyYXdpbmcKYWxsIGF0IGhvc3QvZ3Vlc3QgbGV2ZWwgdGhlbiBzZW5kIHRo
ZSBjb2xsYXBzZWQgY2hhbmdlcyB0byBjbGllbnQpIHdvdWxkCmJlIGJldHRlci4gSSBoYXZlIGFu
b3RoZXIgZGlydHkgcGF0Y2ggYnV0IGF0IHRoZSBtb21lbnQgaXMgZXZlbiB3b3JzZQphdCB0aGUg
b3B0aW1pemF0aW9uIGxldmVsIHNvIHdvbid0IGhlbHAgdG9vLgoKUmVnYXJkcywKICBGcmVkaWFu
bwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCg==
