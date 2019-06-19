Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9F84B36C
	for <lists+spice-devel@lfdr.de>; Wed, 19 Jun 2019 09:55:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB6596E31D;
	Wed, 19 Jun 2019 07:55:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAF146E31C
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 07:55:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5A50530BC564
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 07:55:30 +0000 (UTC)
Received: from lub.tlv (dhcp-4-88.tlv.redhat.com [10.35.4.88])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AE77F1001E73;
 Wed, 19 Jun 2019 07:55:29 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190603112214.15093-1-fziglio@redhat.com>
 <20190603112214.15093-2-fziglio@redhat.com>
 <b42ea5f5-1d4e-1037-5793-5245a7548240@redhat.com>
 <1710070993.23408122.1560862162144.JavaMail.zimbra@redhat.com>
 <1818361336.23567373.1560877404608.JavaMail.zimbra@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <dc8403b9-3c71-286b-017b-8c7bffb595f7@redhat.com>
Date: Wed, 19 Jun 2019 10:55:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1818361336.23567373.1560877404608.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Wed, 19 Jun 2019 07:55:30 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 2/3] Remove a warning on MIPS
 machine
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

T24gNi8xOC8xOSA4OjAzIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4+Cj4+Pgo+Pj4gT24g
Ni8zLzE5IDI6MjIgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4+PiBUaGUgZm9ybXVsYSBp
cyBoZXJlIHRvIG1ha2Ugc3VyZSBnbHlwaCBpcyBhbGlnbmVkIHRvIDQgYnl0ZXMgc28KPj4+PiB0
ZWxsIHRvIHRoZSBjb21waWxlciB0byBhdm9pZCBhIHdhcm5pbmcuCj4+Pgo+Pj4gV2hhdCdzIHRo
ZSB3YXJuaW5nID8KPj4KPj4gVHJ5aW5nIHRvIHJlcHJvZHVjZSBidXQgdGhlIHVwZGF0ZWQgZW52
aXJvbm1lbnQgaXQncyBzbG93IGxpa2UKPj4gaGVsbCAoaXQncyBtb3JlIHRoYW4gMzAgbWludXRl
cyB0aGF0IGl0J3MgY29tcGlsaW5nIDMgZmlsZXMpLgo+Pgo+IAo+IFRoZSB3YXJuaW5nIGlzCj4g
Cj4gcmVkLXBhcnNlLXF4bC5jOiBJbiBmdW5jdGlvbiDigJhyZWRfZ2V0X3N0cmluZ+KAmToKPiBy
ZWQtcGFyc2UtcXhsLmM6OTQ5OjE3OiBlcnJvcjogY2FzdCBpbmNyZWFzZXMgcmVxdWlyZWQgYWxp
Z25tZW50IG9mIHRhcmdldCB0eXBlIFstV2Vycm9yPWNhc3QtYWxpZ25dCj4gICAgICAgICAgIGds
eXBoID0gKFNwaWNlUmFzdGVyR2x5cGgqKQo+ICAgICAgICAgICAgICAgICAgIF4KPiAKPiAKPj4+
IElzIGl0IHRoYXQgdGhlIHBvaW50ZXIgbWF5IGJlIHVuYWxpZ25lZCAod2hpY2ggaXMgaW1wb3Np
YmxlCj4+PiBpZiB5b3Ugc3RhcnQgZnJvbSBhbiBhbGlnbmVkIGFkZHJlc3MpID8KPj4+Cj4+Cj4+
IFllcywgd2FzIGFuIGFsaWdubWVudCB3YXJuaW5nCj4+Cj4+PiBMb29rcyBjb21wbGljYXRlZCB0
byBtZSwgZXNwZWNpYWxseSBzaW5jZSBhZnRlciB0aGUKPj4+IFNQSUNFX0FMSUdORURfQ0FTVCB0
aGVyZSBpcyBhbm90aGVyICh0aGUgInJlYWwiKSBjYXN0Lgo+Pj4KPj4KPj4gTWF5YmUgd2l0aCBh
biBhZGRpdGlvbmFsCj4+Cj4+IEBAIC05NDEsNyArOTQxLDcgQEAgc3RhdGljIFNwaWNlU3RyaW5n
ICpyZWRfZ2V0X3N0cmluZyhSZWRNZW1TbG90SW5mbyAqc2xvdHMsCj4+IGludCBncm91cF9pZCwK
Pj4gICAgICAgICAgIHNwaWNlX2Fzc2VydChnbHlwaF9zaXplIDw9IChjaGFyKikgZW5kIC0gKGNo
YXIqKSAmc3RhcnQtPmRhdGFbMF0pOwo+PiAgICAgICAgICAgbWVtY3B5KGdseXBoLT5kYXRhLCBz
dGFydC0+ZGF0YSwgZ2x5cGhfc2l6ZSk7Cj4+ICAgICAgICAgICBzdGFydCA9IChRWExSYXN0ZXJH
bHlwaCopKCZzdGFydC0+ZGF0YVtnbHlwaF9zaXplXSk7Cj4+IC0gICAgICAgIGdseXBoID0gKFNw
aWNlUmFzdGVyR2x5cGgqKSBTUElDRV9BTElHTkVEX0NBU1QodWludDMyX3QqLAo+PiArICAgICAg
ICBnbHlwaCA9IFNQSUNFX0FMSUdORURfQ0FTVChTcGljZVJhc3RlckdseXBoKiwKPj4gICAgICAg
ICAgICAgICAoKCh1aW50OF90ICopZ2x5cGgpICsKPj4gICAgICAgICAgICAgICAgU1BJQ0VfQUxJ
R04oc2l6ZW9mKFNwaWNlUmFzdGVyR2x5cGgpICsgZ2x5cGhfc2l6ZSwgNCkpKTsKPj4gICAgICAg
fQo+Pgo+Pgo+PiB3b3VsZCB3b3JrIHRvby4gTm90IHN1cmUgaG93IGxvbmcgaXQncyBnb2luZyB0
byB0YWtlIHRvIHRlc3QgaXQuCj4+Cj4gCj4gVGhpcyB3b3JrcyB0b28uCgpUaGF0J3MgYmV0dGVy
LCB0aGFua3MuCgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemln
bGlvQHJlZGhhdC5jb20+Cj4+Pgo+Pj4gQWNrLgoKVXJpLgoKPj4+Cj4+Pj4gLS0tCj4+Pj4gICAg
c2VydmVyL3JlZC1wYXJzZS1xeGwuYyB8IDQgKystLQo+Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvc2Vy
dmVyL3JlZC1wYXJzZS1xeGwuYyBiL3NlcnZlci9yZWQtcGFyc2UtcXhsLmMKPj4+PiBpbmRleCBh
ZmFlOTQzMTYuLjg5YjYxYzA2ZiAxMDA2NDQKPj4+PiAtLS0gYS9zZXJ2ZXIvcmVkLXBhcnNlLXF4
bC5jCj4+Pj4gKysrIGIvc2VydmVyL3JlZC1wYXJzZS1xeGwuYwo+Pj4+IEBAIC05NDEsOSArOTQx
LDkgQEAgc3RhdGljIFNwaWNlU3RyaW5nICpyZWRfZ2V0X3N0cmluZyhSZWRNZW1TbG90SW5mbwo+
Pj4+ICpzbG90cywgaW50IGdyb3VwX2lkLAo+Pj4+ICAgICAgICAgICAgc3BpY2VfYXNzZXJ0KGds
eXBoX3NpemUgPD0gKGNoYXIqKSBlbmQgLSAoY2hhciopCj4+Pj4gICAgICAgICAgICAmc3RhcnQt
PmRhdGFbMF0pOwo+Pj4+ICAgICAgICAgICAgbWVtY3B5KGdseXBoLT5kYXRhLCBzdGFydC0+ZGF0
YSwgZ2x5cGhfc2l6ZSk7Cj4+Pj4gICAgICAgICAgICBzdGFydCA9IChRWExSYXN0ZXJHbHlwaCop
KCZzdGFydC0+ZGF0YVtnbHlwaF9zaXplXSk7Cj4+Pj4gLSAgICAgICAgZ2x5cGggPSAoU3BpY2VS
YXN0ZXJHbHlwaCopCj4+Pj4gKyAgICAgICAgZ2x5cGggPSAoU3BpY2VSYXN0ZXJHbHlwaCopIFNQ
SUNFX0FMSUdORURfQ0FTVCh1aW50MzJfdCosCj4+Pj4gICAgICAgICAgICAgICAgKCgodWludDhf
dCAqKWdseXBoKSArCj4+Pj4gLSAgICAgICAgICAgICBTUElDRV9BTElHTihzaXplb2YoU3BpY2VS
YXN0ZXJHbHlwaCkgKyBnbHlwaF9zaXplLCA0KSk7Cj4+Pj4gKyAgICAgICAgICAgICBTUElDRV9B
TElHTihzaXplb2YoU3BpY2VSYXN0ZXJHbHlwaCkgKyBnbHlwaF9zaXplLCA0KSkpOwo+Pj4+ICAg
ICAgICB9Cj4+Pj4gICAgCj4+Pj4gICAgICAgIGlmIChmcmVlX2RhdGEpIHsKPj4+Pgo+Pj4KPj4+
Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IFNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdAo+PiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
