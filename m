Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E20E461C8C
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 11:46:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D44C89BB2;
	Mon,  8 Jul 2019 09:46:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1424589BB2
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 09:46:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B22DC882FB
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 09:46:41 +0000 (UTC)
Received: from lub.tlv (dhcp-4-218.tlv.redhat.com [10.35.4.218])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D7F5BA7C;
 Mon,  8 Jul 2019 09:46:40 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190520073947.5382-1-fziglio@redhat.com>
 <20190520073947.5382-4-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <d5b29067-86e0-49df-bdbe-a7622295787e@redhat.com>
Date: Mon, 8 Jul 2019 12:46:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190520073947.5382-4-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Mon, 08 Jul 2019 09:46:41 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 3/4] build: Do additional
 changes to Meson distribution
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

T24gNS8yMC8xOSAxMDozOSBBTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IC0gY29weSBtaXNz
aW5nIHJlY29yZGVyIGZpbGVzOwo+IC0gZ2VuZXJhdGUgVEhBTktTIGZpbGUuCj4gCj4gU2lnbmVk
LW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gICBN
YWtlZmlsZS5hbSAgICAgICAgICB8ICAxICsKPiAgIGJ1aWxkLWF1eC9tZXNvbi1kaXN0IHwgMjgg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAgbWVzb24uYnVpbGQgICAgICAgICAgfCAg
MiArLQo+ICAgMyBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4gICBjcmVhdGUgbW9kZSAxMDA3NTUgYnVpbGQtYXV4L21lc29uLWRpc3QKPiAKPiBkaWZmIC0t
Z2l0IGEvTWFrZWZpbGUuYW0gYi9NYWtlZmlsZS5hbQo+IGluZGV4IDNjNjA3YzlhLi42YmE4YzAy
OCAxMDA2NDQKPiAtLS0gYS9NYWtlZmlsZS5hbQo+ICsrKyBiL01ha2VmaWxlLmFtCj4gQEAgLTI3
LDYgKzI3LDcgQEAgRVhUUkFfRElTVCA9CQkJCQlcCj4gICAJbWVzb25fb3B0aW9ucy50eHQJCQlc
Cj4gICAJcG8vbWVzb24uYnVpbGQJCQkJXAo+ICAgCWJ1aWxkLWF1eC9naXQtdmVyc2lvbi1nZW4J
CVwKPiArCWJ1aWxkLWF1eC9tZXNvbi1kaXN0CQkJXAo+ICAgCWd0ay1kb2MubWFrZQkJCQlcCj4g
ICAJLnZlcnNpb24JCQkJXAo+ICAgCSQoTlVMTCkKPiBkaWZmIC0tZ2l0IGEvYnVpbGQtYXV4L21l
c29uLWRpc3QgYi9idWlsZC1hdXgvbWVzb24tZGlzdAo+IG5ldyBmaWxlIG1vZGUgMTAwNzU1Cj4g
aW5kZXggMDAwMDAwMDAuLjlhMThmZjJkCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2J1aWxkLWF1
eC9tZXNvbi1kaXN0Cj4gQEAgLTAsMCArMSwyOCBAQAo+ICsjIS9iaW4vYmFzaAo+ICsKPiArc2V0
IC1lCj4gK3NldCAtbyBwaXBlZmFpbAo+ICsKPiAraWYgdGVzdCAiJDEiID0gIiI7IHRoZW4KPiAr
ICAgIGVjaG8gIlZlcnNpb24gbm90IHByb3ZpZGVkIiA+JjIKPiArICAgIGV4aXQgMQo+ICtmaQo+
ICtpZiAhIHRlc3QgLWQgIiQyIjsgdGhlbgo+ICsgICAgZWNobyAiU291cmNlIGRpcmVjdG9yeSBu
b3QgcHJvdmlkZWQiID4mMgo+ICsgICAgZXhpdCAxCj4gK2ZpCj4gKwo+ICsjIGdlbmVyYXRlIHRh
cmJhbGwgdmVyc2lvbgo+ICtlY2hvICIkMSIgPiAiJE1FU09OX0RJU1RfUk9PVC8udGFyYmFsbC12
ZXJzaW9uIgo+ICsKPiArIyBhZGQgbWlzc2luZyByZWNvcmRlciBmaWxlcwo+ICsoY2QgIiQyIiAm
JiBscyAtMSBzdWJwcm9qZWN0cy9zcGljZS1jb21tb24vY29tbW9uL3JlY29yZGVyL3JlY29yZGVy
LltjaF0gXAo+ICsgICAgc3VicHJvamVjdHMvc3BpY2UtY29tbW9uL2NvbW1vbi9yZWNvcmRlci9y
ZWNvcmRlcl9yaW5nLltjaF0gfCBcCj4gKyAgICB0YXIgY2YgLSAtVCAtKSB8IChjZCAiJE1FU09O
X0RJU1RfUk9PVCIgJiYgZXhlYyB0YXIgeGYgLSkKCldoYXQgaGFwcGVucyB3aGVuIHJlY29yZGVy
IGlzIGRpc2FibGVkIGFuZCB0aGlzIHNjcmlwdHMgZXhpdHMgd2l0aAphbiBlcnJvciA/CgpVcmku
Cgo+ICsKPiArIyBnZW5lcmF0ZSBUSEFOS1MgZmlsZQo+ICt7Cj4gKwkgIGVjaG8gIlRoZSBzcGlj
ZS1ndGsgdGVhbSB3b3VsZCBsaWtlIHRvIHRoYW5rIHRoZSBmb2xsb3dpbmcgY29udHJpYnV0b3Jz
OiIKPiArCSAgZWNobwo+ICsJICAoY2QgIiQyIiAmJiBleGVjIGdpdCBsb2cgLS1mb3JtYXQ9JyVh
TiA8JWFFPicpIHwgc29ydCAtdQo+ICt9ID4gIiRNRVNPTl9ESVNUX1JPT1QvVEhBTktTIgo+IGRp
ZmYgLS1naXQgYS9tZXNvbi5idWlsZCBiL21lc29uLmJ1aWxkCj4gaW5kZXggOGM2Mjg4ZjMuLjU4
OTYxNTUxIDEwMDY0NAo+IC0tLSBhL21lc29uLmJ1aWxkCj4gKysrIGIvbWVzb24uYnVpbGQKPiBA
QCAtNiw3ICs2LDcgQEAgcHJvamVjdCgnc3BpY2UtZ3RrJywgJ2MnLAo+ICAgICAgICAgICAgbGlj
ZW5zZSA6ICdMR1BMdjIuMScsCj4gICAgICAgICAgICBtZXNvbl92ZXJzaW9uIDogJz49IDAuNDkn
KQo+ICAgCj4gLW1lc29uLmFkZF9kaXN0X3NjcmlwdCgnc2gnLCAnLWMnLCAnZWNobyBAMEA+IiRN
RVNPTl9ESVNUX1JPT1QvLnRhcmJhbGwtdmVyc2lvbiInLmZvcm1hdChtZXNvbi5wcm9qZWN0X3Zl
cnNpb24oKSkpCj4gK21lc29uLmFkZF9kaXN0X3NjcmlwdCgnYnVpbGQtYXV4L21lc29uLWRpc3Qn
LCBtZXNvbi5wcm9qZWN0X3ZlcnNpb24oKSwgbWVzb24uc291cmNlX3Jvb3QoKSkKPiAgIAo+ICAg
Iwo+ICAgIyBnbG9iYWwgQyBkZWZpbmVzCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
