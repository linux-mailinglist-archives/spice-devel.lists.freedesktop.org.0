Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 254F961587
	for <lists+spice-devel@lfdr.de>; Sun,  7 Jul 2019 18:28:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A671389A9F;
	Sun,  7 Jul 2019 16:28:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF13E89A9F
 for <spice-devel@lists.freedesktop.org>; Sun,  7 Jul 2019 16:28:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7919159469
 for <spice-devel@lists.freedesktop.org>; Sun,  7 Jul 2019 16:28:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 700AF179C2
 for <spice-devel@lists.freedesktop.org>; Sun,  7 Jul 2019 16:28:43 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 639114EBC5;
 Sun,  7 Jul 2019 16:28:43 +0000 (UTC)
Date: Sun, 7 Jul 2019 12:28:41 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <1130603336.26581334.1562516921232.JavaMail.zimbra@redhat.com>
In-Reply-To: <6edf85cc-cc0c-6fa5-df00-fc9dcbd009d5@redhat.com>
References: <20190705130922.12132-1-fziglio@redhat.com>
 <6edf85cc-cc0c-6fa5-df00-fc9dcbd009d5@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.15]
Thread-Topic: test-codecs-parsing: On bad codec string
 spice_server_set_video_codecs can fail
Thread-Index: WrJ+bz/5ohvqobSop5Nj+lEXnW8F+g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Sun, 07 Jul 2019 16:28:43 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] test-codecs-parsing: On bad
 codec string spice_server_set_video_codecs can fail
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

PiAKPiBIaSwKPiAKPiBPbiA3LzUvMTkgNDowOSBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+
ID4gVGhlIDAgcmVzdWx0IG1lYW5zIHN1Y2Nlc3MgaG93ZXZlciB0aGUgZnVuY3Rpb24gKGNvcnJl
Y3RseSkgY291bGQKPiA+IHJlcG9ydCBhIGZhaWx1cmUgaWYgdGhlIHN0cmluZyBpcyBpbmNvcnJl
Y3QuCj4gPiBUaGlzIGZpeGVzIHRoZSB0ZXN0IGFmdGVyIGNvbW1pdCBiNDE1MGRlM2NkMGU1NmQ0
Y2U0M2E5OWVmNWMzYzVmNWNiZGZjNGEzCj4gPiAoInNwaWNlX3NlcnZlcl9zZXRfdmlkZW9fY29k
ZWNzOiBmYWlsIHdoZW4gbm8gY29kZWMgY2FuIGJlIGluc3RhbGxlZCIpLgo+ID4KPiA+IFNpZ25l
ZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+ID4gLS0tCj4g
PiAgIHNlcnZlci90ZXN0cy90ZXN0LWNvZGVjcy1wYXJzaW5nLmMgfCAyICstCj4gPiAgIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1n
aXQgYS9zZXJ2ZXIvdGVzdHMvdGVzdC1jb2RlY3MtcGFyc2luZy5jCj4gPiBiL3NlcnZlci90ZXN0
cy90ZXN0LWNvZGVjcy1wYXJzaW5nLmMKPiA+IGluZGV4IDc5OTg1MDFjOS4uMDhkODNjYzJiIDEw
MDY0NAo+ID4gLS0tIGEvc2VydmVyL3Rlc3RzL3Rlc3QtY29kZWNzLXBhcnNpbmcuYwo+ID4gKysr
IGIvc2VydmVyL3Rlc3RzL3Rlc3QtY29kZWNzLXBhcnNpbmcuYwo+ID4gQEAgLTE0MCw3ICsxNDAs
NyBAQCBzdGF0aWMgdm9pZCBjb2RlY3NfYmFkKHZvaWQpCj4gPiAgICAgICAgICAgZ190ZXN0X2V4
cGVjdF9tZXNzYWdlKEdfTE9HX0RPTUFJTiwgdGVzdF9jYXNlc1tpXS5sb2dfbGV2ZWwsCj4gPiAg
ICAgICAgICAgdGVzdF9jYXNlc1tpXS5lcnJvcl9tZXNzYWdlKTsKPiA+ICAgICAgICAgICBpZiAo
dGVzdF9jYXNlc1tpXS5kZWZhdWx0X2Vycl9tZXNzYWdlKQo+ID4gICAgICAgICAgICAgICBnX3Rl
c3RfZXhwZWN0X21lc3NhZ2UoR19MT0dfRE9NQUlOLCBHX0xPR19MRVZFTF9XQVJOSU5HLAo+ID4g
ICAgICAgICAgICAgICAiKkZhaWxlZCB0byBzZXQgdmlkZW8gY29kZWNzKiIpOwo+ID4gLSAgICAg
ICAgZ19hc3NlcnRfY21waW50KHNwaWNlX3NlcnZlcl9zZXRfdmlkZW9fY29kZWNzKHNlcnZlciwK
PiA+IHRlc3RfY2FzZXNbaV0uY29kZWNzKSwgPT0sIDApOwo+ID4gKyAgICAgICAgc3BpY2Vfc2Vy
dmVyX3NldF92aWRlb19jb2RlY3Moc2VydmVyLCB0ZXN0X2Nhc2VzW2ldLmNvZGVjcyk7Cj4gCj4g
Cj4gQ2FuJ3Qgd2UgYXNzZXJ0IGZvcsKgIC0xIG5vdz8KPiAKPiBTbmlyLgo+IAoKVGVzdGVkLiBZ
ZXMsIHRoZXkgYWxsIHJldHVybnMgY3VycmVudGx5IC0xLiBIb3dldmVyIC0xIGlzIHJldHVybmVk
IG9ubHkgaWYKbm8gY29kZWNzIHdlcmUgc2V0LgpBbHNvIHRoZSB1c2FnZXMgdGVzdCBmb3IgIT0g
MCBzbyBJIHdvdWxkIHN0aWNrIHdpdGggdGhpcyBjaGVjaywgbm90ID09IC0xLgoKRnJlZGlhbm8K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
