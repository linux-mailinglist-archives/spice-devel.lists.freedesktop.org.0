Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3F0BF594
	for <lists+spice-devel@lfdr.de>; Thu, 26 Sep 2019 17:13:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75A996ED6F;
	Thu, 26 Sep 2019 15:13:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0990C6ED63
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 15:13:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A3CC9302C07C
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 15:13:26 +0000 (UTC)
Received: from lub.com (dhcp-4-213.tlv.redhat.com [10.35.4.213])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0DEC55FCDF
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 15:13:25 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 26 Sep 2019 18:13:19 +0300
Message-Id: <20190926151320.18868-4-uril@redhat.com>
In-Reply-To: <20190926151320.18868-1-uril@redhat.com>
References: <20190926151320.18868-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Thu, 26 Sep 2019 15:13:26 +0000 (UTC)
Subject: [Spice-devel] [spice-streaming-agent PATCH 3/4] Add a man page
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

LS0tCiBNYWtlZmlsZS5hbSAgICAgICAgICAgICAgICAgICB8ICAyICsKIHNwaWNlLXN0cmVhbWlu
Zy1hZ2VudC4xICAgICAgIHwgNzggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysK
IHNwaWNlLXN0cmVhbWluZy1hZ2VudC5zcGVjLmluIHwgIDEgKwogMyBmaWxlcyBjaGFuZ2VkLCA4
MSBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgc3BpY2Utc3RyZWFtaW5nLWFnZW50
LjEKCmRpZmYgLS1naXQgYS9NYWtlZmlsZS5hbSBiL01ha2VmaWxlLmFtCmluZGV4IDk5YzEzMDgu
LmU1NzgzOWQgMTAwNjQ0Ci0tLSBhL01ha2VmaWxlLmFtCisrKyBiL01ha2VmaWxlLmFtCkBAIC0y
NSwzICsyNSw1IEBAIEVYVFJBX0RJU1QgPSBcCiAJZGF0YS85MC1zcGljZS1ndWVzdC1zdHJlYW1p
bmcucnVsZXMgXAogCWRhdGEvc3BpY2Utc3RyZWFtaW5nLmRlc2t0b3AgXAogCSQoTlVMTCkKKwor
ZGlzdF9tYW5fTUFOUyA9IHNwaWNlLXN0cmVhbWluZy1hZ2VudC4xCmRpZmYgLS1naXQgYS9zcGlj
ZS1zdHJlYW1pbmctYWdlbnQuMSBiL3NwaWNlLXN0cmVhbWluZy1hZ2VudC4xCm5ldyBmaWxlIG1v
ZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAuLjgxOTI2ZmMKLS0tIC9kZXYvbnVsbAorKysgYi9zcGlj
ZS1zdHJlYW1pbmctYWdlbnQuMQpAQCAtMCwwICsxLDc4IEBACisuVEggU1BJQ0UtU1RSRUFNSU5H
LUFHRU5UIDEKKy5TSCBOQU1FCitzcGljZS1zdHJlYW1pbmctYWdlbnQgXC0gQW4gYWdlbnQsIHJ1
bm5pbmcgb24gYSBndWVzdCwgc2VuZGluZyB2aWRlbworc3RyZWFtIG9mIFggZGlzcGxheSB0byBh
IHJlbW90ZSBjbGllbnQgKG92ZXIgU1BJQ0UpCisKKy5TSCBTWU5PUFNJUworLkIgc3BpY2Utc3Ry
ZWFtaW5nLWFnZW50IFsgPG9wdGlvbnM+IF0KKworLlNIIERFU0NSSVBUSU9OCisuQiBzcGljZS1z
dHJlYW1pbmctYWdlbnQKK2lzIGFuIGFnZW50LCBydW5uaW5nIG9uIGEgZ3Vlc3QsIHNlbmRpbmcg
dmlkZW8gc3RyZWFtIG9mIFggZGlzcGxheSB0bworYSByZW1vdGUgY2xpZW50IChvdmVyIFNQSUNF
KQorCitUaGUgdmlkZW8gc3RyZWFtIGl0c2VsZiBkZXBlbmRzIG9uIHBsdWdpbnMvY29kZWNzIGlu
c3RhbGxlZCBvbiB0aGUgZ3Vlc3QKKyhhbmQgdGhlIGNsaWVudCkuCisKK0N1cnJlbnRseSBvbmx5
IHN1cHBvcnRzIFggZGlzcGxheSAoWG9yZy9YMTEpLgorCitSZXF1aXJlcyBhIHZpcnRpby1wb3J0
IGRldmljZSB0byBjb21tdW5pY2F0ZSBhbmQgYSByZWNlbnQgZW5vdWdoCitzcGljZS1zZXJ2ZXIu
CisKKy5CIHNwaWNlLXN0cmVhbWluZy1hZ2VudAorc2hvdWxkIHN0YXJ0IGF1dG9tYXRpY2FsbHkg
d2l0aCB5b3VyIFggc2Vzc2lvbi4KKworLlwiIFRvRG86IGFkZCBxZW11LWt2bSBjb21tYW5kIGxp
bmUgb3B0aW9uIGV4YW1wbGUKKy5cIiAgICAgICBvciByZWZlciB0byBSRUFETUUgZmlsZQorCisu
U0ggT1BUSU9OUworLlRQCisuQlIgXC1wICIgIiBcZklwb3J0bmFtZVxmUgorVGhlIHZpcnRpby1z
ZXJpYWwgcG9ydCB0byB1c2UKKyhkZWZhdWx0IGlzIC9kZXYvdmlydGlvLXBvcnRzL29yZy5zcGlj
ZS1zcGFjZS5zdHJlYW0uMCkKKy5UUAorLkJSIFwtbCAiICIgXGZJZmlsZVxmUgorbG9nIGZyYW1l
cyB0byBmaWxlCisKKy5UUAorLkJSIFwtXC1sb2ctYmluYXJ5Citsb2cgYmluYXJ5IGZyYW1lcyAo
Zm9sbG93aW5nIC1sKQorCisuVFAKKy5CUiBcLVwtbG9nLWNhdGVnb3JpZXMKK2xvZyBjYXRlZ29y
aWVzLCBzZXBhcmF0ZWQgYnkgJzonIChjdXJyZW50bHk6IGZyYW1lcykKKworLlRQCisuQlIgXC1c
LXBsdWdpbnMtZGlyICIgIiBwYXRoCitjaGFuZ2UgcGx1Z2lucyBkaXJlY3RvcnkKKworLlRQCisu
QlIgXC1kCitlbmFibGUgZGVidWcgbG9ncworCisuVFAKKy5CUiBcLWMgICIgIiBcZkl2YXJpYWJs
ZT12YWx1ZVxmUgorQSBnZW5lcmljIHdheSB0byBjaGFuZ2UgcGx1Z2lucy9jb2RlY3Mgc2V0dGlu
Z3MuCitUaGlzIG9ubHkgYWZmZWN0cyBwbHVnaW5zIHRoYXQgc3VwcG9ydCB0aGlzIHZhcmlhYmxl
CithbmQgdGhpcyB2YWx1ZSAoYW5kIGlnbm9yZWQgb3RoZXJ3aXNlKS4KKworLlRQCisuQlIgXC1j
ICAiICIgXGZJZnJhbWVyYXRlPTEtMTAwXGZSCisKKy5cIiBUb0RvOiBtb3JlIC1jIG9wdGlvbnMg
cmVsYXRlZCB0byBwbHVnaW5zCisKKy5TSCBFWEFNUExFUworLlRQCitydW4gc3BpY2Utc3RyZWFt
aW5nLWFnZW50IHdpdGggYSBmcmFtZXJhdGUgb2YgMjAgZnJhbWVzIHBlciBzZWNvbmQKK3NwaWNl
LXN0cmVhbWluZy1hZ2VudCAtYyBmcmFtZXJhdGU9MjAKKworLlRQCitydW4gYW5kIGxvZyBiaW5h
cnkgZnJhbWVzIHRvIC90bXAvc3NhLmxvZworc3BpY2Utc3RyZWFtaW5nLWFnZW50IC1sIC90bXAv
c3NhLmxvZyAtLWxvZy1iaW5hcnkKKworLlRQCitydW4gYW5kIHByaW50IGEgbG90IG9mIGRlYnVn
IGluZm9ybWF0aW9uCitzcGljZS1zdHJlYW1pbmctYWdlbnQgLWQKKworLlNIIFNFRSBBTFNPCitx
ZW11LWt2bSgxKQpkaWZmIC0tZ2l0IGEvc3BpY2Utc3RyZWFtaW5nLWFnZW50LnNwZWMuaW4gYi9z
cGljZS1zdHJlYW1pbmctYWdlbnQuc3BlYy5pbgppbmRleCBhMjY3YzU0Li5mY2I4MjMxIDEwMDY0
NAotLS0gYS9zcGljZS1zdHJlYW1pbmctYWdlbnQuc3BlYy5pbgorKysgYi9zcGljZS1zdHJlYW1p
bmctYWdlbnQuc3BlYy5pbgpAQCAtNjksNiArNjksNyBAQCBmaQogJXtfYmluZGlyfS9zcGljZS1z
dHJlYW1pbmctYWdlbnQKICV7X3N5c2NvbmZkaXJ9L3hkZy9hdXRvc3RhcnQvc3BpY2Utc3RyZWFt
aW5nLmRlc2t0b3AKICV7X2RhdGFkaXJ9L2dkbS9ncmVldGVyL2F1dG9zdGFydC9zcGljZS1zdHJl
YW1pbmcuZGVza3RvcAorJXtfbWFuZGlyfS9tYW4xL3NwaWNlLXN0cmVhbWluZy1hZ2VudC4xLmd6
CiAKICVmaWxlcyBkZXZlbAogJWRlZmF0dHIoLSxyb290LHJvb3QsLSkKLS0gCjIuMjEuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
