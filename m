Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D37D57F74
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 11:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFD6D6E82E;
	Thu, 27 Jun 2019 09:40:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B64F6E82E
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:40:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D565D81DFA
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 09:40:44 +0000 (UTC)
Received: from lub.tlv (dhcp-4-34.tlv.redhat.com [10.35.4.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 39374600CC;
 Thu, 27 Jun 2019 09:40:44 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190627090527.7748-1-fziglio@redhat.com>
 <20190627090527.7748-2-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <7458a0b6-e03e-6a69-363c-31af7a73e6b9@redhat.com>
Date: Thu, 27 Jun 2019 12:40:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190627090527.7748-2-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Thu, 27 Jun 2019 09:40:44 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] display-channel: Remove some
 useless function declaration
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

T24gNi8yNy8xOSAxMjowNSBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+ICJpbWFnZV9zdXJm
YWNlc19nZXQiIGFuZCAiZHJhd2FibGVzX2luaXQiIGFyZSBhbHJlYWR5IGRlZmluZWQKPiBpbiB0
aGUgc2FtZSBmaWxlIGVhcmxpZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlv
IDxmemlnbGlvQHJlZGhhdC5jb20+CkFjay4KClVyaS4KCj4gLS0tCj4gICBzZXJ2ZXIvZGlzcGxh
eS1jaGFubmVsLmMgfCAyIC0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5jIGIvc2VydmVyL2Rpc3BsYXkt
Y2hhbm5lbC5jCj4gaW5kZXggZjk5ZmQ4ZmFmLi40Njc3YzI2MTkgMTAwNjQ0Cj4gLS0tIGEvc2Vy
dmVyL2Rpc3BsYXktY2hhbm5lbC5jCj4gKysrIGIvc2VydmVyL2Rpc3BsYXktY2hhbm5lbC5jCj4g
QEAgLTIyNjMsOCArMjI2Myw2IEBAIERpc3BsYXlDaGFubmVsKiBkaXNwbGF5X2NoYW5uZWxfbmV3
KFJlZHNTdGF0ZSAqcmVkcywKPiAgICAgICByZXR1cm4gZGlzcGxheTsKPiAgIH0KPiAgIAo+IC1z
dGF0aWMgU3BpY2VDYW52YXMgKmltYWdlX3N1cmZhY2VzX2dldChTcGljZUltYWdlU3VyZmFjZXMg
KnN1cmZhY2VzLCB1aW50MzJfdCBzdXJmYWNlX2lkKTsKPiAtc3RhdGljIHZvaWQgZHJhd2FibGVz
X2luaXQoRGlzcGxheUNoYW5uZWwgKmRpc3BsYXkpOwo+ICAgc3RhdGljIHZvaWQKPiAgIGRpc3Bs
YXlfY2hhbm5lbF9pbml0KERpc3BsYXlDaGFubmVsICpzZWxmKQo+ICAgewo+IAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
