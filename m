Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 264FB6D107
	for <lists+spice-devel@lfdr.de>; Thu, 18 Jul 2019 17:24:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 889C86E3F9;
	Thu, 18 Jul 2019 15:24:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C2B96E3F9
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:24:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BBA388553B
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2019 15:24:08 +0000 (UTC)
Received: from lub.tlv (dhcp-4-204.tlv.redhat.com [10.35.4.204])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2809C6103B;
 Thu, 18 Jul 2019 15:24:07 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190717120652.11876-1-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <3e07734d-d38a-d8ae-764b-13ad01ed5793@redhat.com>
Date: Thu, 18 Jul 2019 18:24:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190717120652.11876-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Thu, 18 Jul 2019 15:24:08 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v3] ci: Workaround an issue
 with GLib on Fedora 30
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

T24gNy8xNy8xOSAzOjA2IFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gVGhpcyByZW1vdmUg
dGhpcyBlcnJvciBydW5uaW5nIHRlc3QtbGlzdGVuIHRlc3Qgb24gYSBGZWRvcmEgMzAgZG9ja2Vy
Cj4gaW1hZ2U6Cj4gCj4gKC9idWlsZHMvc3BpY2Uvc3BpY2UvYnVpbGQvc2VydmVyL3Rlc3RzL3Rl
c3QtbGlzdGVuOjIyMzMpOiBHTGliLUdJTy1DUklUSUNBTCAqKjogMTU6Mjk6MDMuMTIzOiBnX2Zp
bGVfbmV3X2Zvcl9wYXRoOiBhc3NlcnRpb24gJ3BhdGggIT0gTlVMTCcgZmFpbGVkCj4gCj4gVGhp
cyBlcnJvciBpcyBkdWUgdG8gc29tZSBtaXNzaW5nIGNvbmZpZ3VyYXRpb24gb24gdGhlIGltYWdl
Lgo+IE9uIGEgZnVsbHkgaW5zdGFsbGVkIERlc2t0b3AvU2VydmVyIG1hY2hpbmUgdGhlc2UgY29u
ZmlndXJhdGlvbgo+IGFyZSB1c3VhbGx5IGluIHBsYWNlIHNvIHlvdSB3b24ndCBub3RlIHRoZSBp
c3N1ZSBidXQgb24gcmVjZW50Cj4gZG9ja2VyIGltYWdlcyB0aGVzZSBjb25maWd1cmF0aW9uIGFy
ZSBtaXNzaW5nLgo+IAo+IFJ1bm5pbmcgdGhlIGRjb25mIGNvbW1hbmQgYWRkIHJlcXVpcmVkIGNv
bmZpZ3VyYXRpb24uCgpUaGlzIGlzIGluZGVlZCB3ZWlyZC4gQnV0IGl0IHdvcmtzLgoKVGhhbmtz
IGZvciBhZGRpbmcgdGhlIGNvbW1lbnQgeW91IGFkZGVkIGJlbG93LgoKPiAKPiBTaWduZWQtb2Zm
LWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KQWNrLgoKVXJpLgoKPiAt
LS0KPiAgIC5naXRsYWItY2kueW1sIHwgNyArKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspCj4gCj4gQ2hhbmdlcyBzaW5jZSB2MjoKPiAtIG1vcmUgY29tbWVudHMKPiAK
PiBkaWZmIC0tZ2l0IGEvLmdpdGxhYi1jaS55bWwgYi8uZ2l0bGFiLWNpLnltbAo+IGluZGV4IGIz
MDNkNDY1Ni4uMzE2YTg2MGRkIDEwMDY0NAo+IC0tLSBhLy5naXRsYWItY2kueW1sCj4gKysrIGIv
LmdpdGxhYi1jaS55bWwKPiBAQCAtOCw5ICs4LDE2IEBAIGJlZm9yZV9zY3JpcHQ6Cj4gICAgICAg
Z2xpYjItZGV2ZWwgY2VsdDA1MS1kZXZlbCBwaXhtYW4tZGV2ZWwgYWxzYS1saWItZGV2ZWwgb3Bl
bnNzbC1kZXZlbCBsaWJqcGVnLXR1cmJvLWRldmVsCj4gICAgICAgbGliY2FjYXJkLWRldmVsIGN5
cnVzLXNhc2wtZGV2ZWwgbHo0LWRldmVsIG9wdXMtZGV2ZWwKPiAgICAgICBnc3RyZWFtZXIxLWRl
dmVsIGdzdHJlYW1lcjEtcGx1Z2lucy1iYXNlLWRldmVsCj4gKyAgICBkY29uZgo+ICAgICAgIC15
Cj4gICAgIC0gZ2l0IGNsb25lICR7Q0lfUkVQT1NJVE9SWV9VUkwvc3BpY2UuZ2l0L3NwaWNlLXBy
b3RvY29sLmdpdH0KPiAgICAgLSAoY2Qgc3BpY2UtcHJvdG9jb2wgJiYgLi9hdXRvZ2VuLnNoIC0t
cHJlZml4PS91c3IgJiYgbWFrZSBpbnN0YWxsKQo+ICsgICMgVGhpcyBpcyBhIHdvcmthcm91bmQg
Zm9yIEZlZG9yYSBkb2NrZXIgaW1hZ2UsIHRoaXMgd2lsbCBhZGQgc29tZQo+ICsgICMgbWlzc2lu
ZyBjb25maWd1cmF0aW9uCj4gKyAgIyAnL29yZy9nbm9tZS9zeXN0ZW0vbG9jYXRpb24vZW5hYmxl
ZCcgaXMganVzdCB0aGUgZmlyc3Qga2V5IHBhdGgKPiArICAjIEkgZm91bmQsIG5vdGhpbmcgc3Bl
Y2lhbCBpbiBpdAo+ICsgICMgVE9ETyByZW1vdmUgd2hlbiB0aGUgaW1hZ2Ugd2lsbCBmaXggdGhp
cyBpc3N1ZQo+ICsgIC0gZGNvbmYgcmVzZXQgL29yZy9nbm9tZS9zeXN0ZW0vbG9jYXRpb24vZW5h
YmxlZCB8fCB0cnVlCj4gICAKPiAgIG1ha2VjaGVjazoKPiAgICAgc2NyaXB0Ogo+IAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
