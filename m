Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA80383181
	for <lists+spice-devel@lfdr.de>; Tue,  6 Aug 2019 14:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FC9F6E36F;
	Tue,  6 Aug 2019 12:38:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECCE66E36F
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 12:38:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 89F057E425
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 12:38:06 +0000 (UTC)
Received: from lub.tlv (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E9A50600CC;
 Tue,  6 Aug 2019 12:38:05 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190717094851.14923-1-fziglio@redhat.com>
 <1205636038.2944793.1564042008462.JavaMail.zimbra@redhat.com>
 <503304521.4733635.1565013130824.JavaMail.zimbra@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <8b8981b1-3e8c-ac06-e8bd-2e33a286252a@redhat.com>
Date: Tue, 6 Aug 2019 15:38:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <503304521.4733635.1565013130824.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Tue, 06 Aug 2019 12:38:06 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 1/2] test-websocket: Some
 Windows compatibility
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gOC81LzE5IDQ6NTIgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiBwaW5nCj4gCj4+IHBp
bmcgdGhlIHNlcmllcwoKQWNrIGZvciBib3RoIHBhdGNoZXMuCgpVcmkuCgo+Pgo+Pj4KPj4+IERv
bid0IGNhbGwgY2xvc2UgYnV0IHNvY2tldF9jbG9zZS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBG
cmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPj4+IC0tLQo+Pj4gICBzZXJ2ZXIv
dGVzdHMvdGVzdC13ZWJzb2NrZXQuYyB8IDQgKystLQo+Pj4gICAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4KPj4+IEN1cnJlbnRseSB0aGUgZXhlY3V0
YWJsZSBjYW5ub3QgcnVuIG9uIFdpbmRvd3MgYnV0IGl0IGRvZXMgbm90IGh1cnQKPj4+IHRvIG1h
a2UgdGhlIHNvdXJjZSBtb3JlIGNvbXBhdGlibGUgd2l0aCB0aGF0IHN5c3RlbS4KPj4+Cj4+PiBk
aWZmIC0tZ2l0IGEvc2VydmVyL3Rlc3RzL3Rlc3Qtd2Vic29ja2V0LmMgYi9zZXJ2ZXIvdGVzdHMv
dGVzdC13ZWJzb2NrZXQuYwo+Pj4gaW5kZXggZGM3YjdkMzQyLi5lNzRjYjU0OTcgMTAwNjQ0Cj4+
PiAtLS0gYS9zZXJ2ZXIvdGVzdHMvdGVzdC13ZWJzb2NrZXQuYwo+Pj4gKysrIGIvc2VydmVyL3Rl
c3RzL3Rlc3Qtd2Vic29ja2V0LmMKPj4+IEBAIC0xOTMsMTAgKzE5MywxMCBAQCBtYWluKGludCBh
cmdjLCBjaGFyICoqYXJndikKPj4+ICAgICAgICAgICArK251bV9jb25uZWN0aW9uczsKPj4+ICAg
ICAgICAgICBoYW5kbGVfY2xpZW50KG5ld19zb2NrKTsKPj4+ICAgCj4+PiAtICAgICAgICBjbG9z
ZShuZXdfc29jayk7Cj4+PiArICAgICAgICBzb2NrZXRfY2xvc2UobmV3X3NvY2spOwo+Pj4gICAg
ICAgfQo+Pj4gICAKPj4+IC0gICAgY2xvc2Uoc29jayk7Cj4+PiArICAgIHNvY2tldF9jbG9zZShz
b2NrKTsKPj4+ICAgICAgIHByaW50ZigiaGFuZGxlZCAldSBjb25uZWN0aW9uc1xuIiwgbnVtX2Nv
bm5lY3Rpb25zKTsKPj4+ICAgICAgIHJldHVybiAwOwo+Pj4gICB9Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCj4gCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
