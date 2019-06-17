Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAB548A1B
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 19:31:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EFEB891AC;
	Mon, 17 Jun 2019 17:31:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from smtp1-g21.free.fr (smtp1-g21.free.fr [IPv6:2a01:e0c:1:1599::10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A144B891AC
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 17:31:06 +0000 (UTC)
Received: from amboise (unknown [82.64.54.218])
 by smtp1-g21.free.fr (Postfix) with ESMTPS id 82C0AB005C8
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 19:31:03 +0200 (CEST)
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hcvTD-00083X-7j
 for spice-devel@lists.freedesktop.org; Mon, 17 Jun 2019 19:31:03 +0200
Date: Mon, 17 Jun 2019 19:31:03 +0200 (CEST)
From: Francois Gouget <fgouget@free.fr>
To: Spice devel <spice-devel@lists.freedesktop.org>
Message-ID: <cover.1560790607.git.fgouget@free.fr>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Subject: [Spice-devel] [client v2 00/12] Client-side video stream lag
 reduction
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

ClRoZSBmaXJzdCBmZXcgcGF0Y2hlcyBpbiB0aGlzIHNlcmllcyBhcmUgdGhlIHNhbWUgYXMgdGhv
c2UgSSBzZW50IApwcmV2aW91c2x5LiBCdXQgdGhlIHNlcmllcyBtYWluIGdvYWwgaXMgdG8gcmVk
dWNlIHRoZSB2aWRlbyBzdHJlYW0gbGFnLgoKQ3VycmVudGx5IHRoZSBzZXJ2ZXIgc2V0cyB0aGUg
Y2xpZW50J3MgbW10aW1lIG9mZnNldCB3aGljaCBpcyB0aGUgc291cmNlIApvZiB0aGUgdmlkZW8g
c3RyZWFtIGxhZy4gQnV0IGFzIHdhcyBkaXNjdXNzZWQgYmVmb3JlIHRoaXMgb2Zmc2V0IGlzIApl
bnRhbmdsZWQgd2l0aCB0aGUgYXZhaWxhYmxlIG5ldHdvcmsgYmFuZHdpZHRoIGVzdGltYXRpb25z
IGFzIHdlbGwgYXMgCndpdGggdGhlIGFjdHVhbCB2aWRlbyBiaXRyYXRlIHdoaWNoIG1ha2VzIGl0
IHRyaWNreSAoYWx0aG91Z2ggbW9zdGx5IApkb2FibGUpIHRvIHJlZHVjZSBpdC4gRnVydGhlcm1v
cmUgdGhlIHNlcnZlciBpcyA1IGZyYW1lIGludGVydmFscyBhbmQgYSAKbmV0d29yayByb3VuZHRy
aXAgYXdheSB3aGljaCBkZWxheXMgYW55IGFjdGlvbiBpdCBjYW4gdGFrZS4KCkluIGNvbnRyYXN0
IHRoZSBjbGllbnQga25vd3MgaW1tZWRpYXRlbHkgd2hlbiBhIGZyYW1lIGlzIGxhdGUgYW5kIGhh
cyAKYWxsIHRoZSBpbmZvcm1hdGlvbiBpdCBuZWVkcyB0byBmaWd1cmUgb3V0IGhvdyBtdWNoIGJ1
ZmZlcmluZyBpcyBuZWVkZWQuIApTbyB0aGlzIGlzIHRoZSBhcHByb2FjaCB0YWtlbiBpbiB0aGlz
IHBhdGNoc2V0LiBTZWUgcGF0Y2ggNyBhbmQgdXAgZm9yIAptb3JlIGRldGFpbHMuCgoKRnJhbmNv
aXMgR291Z2V0ICgxMik6CiAgZ3N0cmVhbWVyOiBBdm9pZCBhIGNvdXBsZSBvZiBmb3J3YXJkIGZ1
bmN0aW9uIGRlY2xhcmF0aW9ucwogIGdzdHJlYW1lcjogRml4IHRoZSBzcGljZV9nc3RfZGVjb2Rl
cl9xdWV1ZV9mcmFtZSgpIGRvY3VtZW50YXRpb24KICBnc3RyZWFtZXI6IEltcHJvdmUgdGhlIHN0
YXRpc3RpY3MgY29sbGVjdGlvbgogIGdzdHJlYW1lcjogQWRkIHRoZSBlbmNvZGVkIGZyYW1lJ3Mg
cmFuayB0byB0aGUgc3RhdGlzdGljcwogIGNoYW5uZWwtZGlzcGxheTogVGhlIHZpZGVvIGxhdGVu
Y3kgaXMgaW4gZmFjdCBhIG1hcmdpbgogIGNoYW5uZWwtZGlzcGxheTogUmVuYW1lIHRoZSBmcmFt
ZSBtbXRpbWUgdmFyaWFibGVzCiAgY2hhbm5lbC1kaXNwbGF5OiBNaW5pbWl6ZSB0aGUgc3RyZWFt
IGxhZyBieSBpZ25vcmluZyB0aGUgc2VydmVyIG9uZQogIHBsYXliYWNrOiBVc2UgdGhlIGF1ZGlv
IHRpbWVzdGFtcHMgZm9yIHRoZSBnbG9iYWwgbW10aW1lIGNvbnZlcnNpb24KICBjaGFubmVsLWRp
c3BsYXk6IE5vIG5lZWQgdG8gcmVjaGVkdWxlIG9uIG1tdGltZSBvZmZzZXQgY2hhbmdlcwogIGNo
YW5uZWwtZGlzcGxheTogUmVtb3ZlIHBsYXliYWNrX3N5bmNfZHJvcHNfc2VxX2xlbgogIHNwaWNl
LXNlc3Npb246IEtlZXAgdHJhY2sgb2YgdGhlIGdsb2JhbCBzdHJlYW1zIGxhZwogIG1qcGVnOiBU
YWtlIHRoZSBkZWNvZGluZyB0aW1lIGludG8gYWNjb3VudCB0byBkaXNwbGF5IGZyYW1lcwoKIHNy
Yy9jaGFubmVsLWRpc3BsYXktZ3N0LmMgICB8IDMwNCArKysrKysrKysrKysrKysrKysrLS0tLS0t
LS0tLS0tLS0tLS0KIHNyYy9jaGFubmVsLWRpc3BsYXktbWpwZWcuYyB8ICA0MCArKystLQogc3Jj
L2NoYW5uZWwtZGlzcGxheS1wcml2LmggIHwgIDI3ICsrKy0KIHNyYy9jaGFubmVsLWRpc3BsYXku
YyAgICAgICB8IDMwNCArKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0KIHNyYy9j
aGFubmVsLWRpc3BsYXkuaCAgICAgICB8ICAgMiArCiBzcmMvY2hhbm5lbC1wbGF5YmFjay1wcml2
LmggfCAgIDQgKy0KIHNyYy9jaGFubmVsLXBsYXliYWNrLmMgICAgICB8ICAzMiArKy0tCiBzcmMv
c3BpY2Utc2Vzc2lvbi1wcml2LmggICAgfCAgIDggKy0KIHNyYy9zcGljZS1zZXNzaW9uLmMgICAg
ICAgICB8IDEwMyArKysrKysrKysrLS0KIDkgZmlsZXMgY2hhbmdlZCwgNTI1IGluc2VydGlvbnMo
KyksIDI5OSBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
