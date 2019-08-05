Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0C48255C
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 21:12:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A22889FAD;
	Mon,  5 Aug 2019 19:12:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 742E489FAD
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 19:12:37 +0000 (UTC)
Received: from cpe-107-184-2-226.socal.res.rr.com ([107.184.2.226]
 helo=brendan-dell.bslabs.net)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <bshanks@codeweavers.com>)
 id 1huiPY-0006CK-BK; Mon, 05 Aug 2019 14:12:50 -0500
From: Brendan Shanks <bshanks@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  5 Aug 2019 12:12:18 -0700
Message-Id: <20190805191218.1244-1-bshanks@codeweavers.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: -106.0
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The 'display->fullscreen' SHM segment was previously being
 used for both x11spice's internal change scanning and as the spice primary
 surface. I don't think spice wants anything else writing to the pr [...] 
 Content analysis details:   (-106.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:Cc:To:From:Sender:
 Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UOblTAEuMzc959gA+MobVGHRFh7nC4NQDmZey2j2z34=; b=UwM45v0SB+Zvtk3AOk49ei4Rxh
 skUfobCxhCmbO/lidSk2P3yYACEItHVulCMJSBZtd5i/VGvrcpE0D4GuHjdWOyU31ZpNZpclKl7A2
 Ja+SKslKNG04Cx4kBBu83NciMjFQZu+3iHP/4wG9cq4tBaukI2IbUgz8LjHx31HYd2k0=;
Subject: [Spice-devel] [PATCH x11spice] Use separate buffer for primary
 surface to fix graphical corruption
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

VGhlICdkaXNwbGF5LT5mdWxsc2NyZWVuJyBTSE0gc2VnbWVudCB3YXMgcHJldmlvdXNseSBiZWlu
ZyB1c2VkIGZvciBib3RoCngxMXNwaWNlJ3MgaW50ZXJuYWwgY2hhbmdlIHNjYW5uaW5nIGFuZCBh
cyB0aGUgc3BpY2UgcHJpbWFyeSBzdXJmYWNlLgpJIGRvbid0IHRoaW5rIHNwaWNlIHdhbnRzIGFu
eXRoaW5nIGVsc2Ugd3JpdGluZyB0byB0aGUgcHJpbWFyeSBzdXJmYWNlLAphbmQgdGhpcyBjYXVz
ZWQgc3BvcmFkaWMgdGVzdCBmYWlsdXJlcyBhbmQgZ3JhcGhpY2FsIGNvcnJ1cHRpb24uCgpDcmVh
dGUgYSBzZXBhcmF0ZSBTSE0gc2VnbWVudCAnZGlzcGxheS0+cHJpbWFyeScgYW5kIHVzZSBpdCBv
bmx5IGZvciB0aGUKcHJpbWFyeSBzdXJmYWNlLgoKU2lnbmVkLW9mZi1ieTogQnJlbmRhbiBTaGFu
a3MgPGJzaGFua3NAY29kZXdlYXZlcnMuY29tPgotLS0KIHNyYy9kaXNwbGF5LmMgfCAyMCArKysr
KysrKysrKysrKysrKysrLQogc3JjL2Rpc3BsYXkuaCB8ICAxICsKIHNyYy9tYWluLmMgICAgfCAg
MiArLQogc3JjL3Nlc3Npb24uYyB8ICAyICstCiA0IGZpbGVzIGNoYW5nZWQsIDIyIGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2Rpc3BsYXkuYyBiL3NyYy9k
aXNwbGF5LmMKaW5kZXggMDFlMGU4NS4uNzdiNGQ0ZSAxMDA2NDQKLS0tIGEvc3JjL2Rpc3BsYXku
YworKysgYi9zcmMvZGlzcGxheS5jCkBAIC00NjEsMTIgKzQ2MSwyNSBAQCB2b2lkIGRlc3Ryb3lf
c2htX2ltYWdlKGRpc3BsYXlfdCAqZCwgc2htX2ltYWdlX3QgKnNobWkpCiAKIGludCBkaXNwbGF5
X2NyZWF0ZV9zY3JlZW5faW1hZ2VzKGRpc3BsYXlfdCAqZCkKIHsKKyAgICAvKiAncHJpbWFyeScg
YW5kICdmdWxsc2NyZWVuJyBkb24ndCBuZWVkIHRvIGJlIFNITSwgbm9ybWFsIGJ1ZmZlcnMgd291
bGQgd29yaworICAgICAqIGZpbmUuIFVzaW5nIFNITSBmb3IgYWxsIGJ1ZmZlcnMgaXMgc2ltcGxl
ciB0aG91Z2gsIGFuZCBoYXMgbm8gcmVhbCBkb3duc2lkZXMuCisgICAgICovCisgICAgZC0+cHJp
bWFyeSA9IGNyZWF0ZV9zaG1faW1hZ2UoZCwgMCwgMCk7CisgICAgaWYgKCFkLT5wcmltYXJ5KSB7
CisgICAgICAgIHJldHVybiBYMTFTUElDRV9FUlJfTk9TSE07CisgICAgfQorCiAgICAgZC0+ZnVs
bHNjcmVlbiA9IGNyZWF0ZV9zaG1faW1hZ2UoZCwgMCwgMCk7Ci0gICAgaWYgKCFkLT5mdWxsc2Ny
ZWVuKQorICAgIGlmICghZC0+ZnVsbHNjcmVlbikgeworICAgICAgICBkZXN0cm95X3NobV9pbWFn
ZShkLCBkLT5wcmltYXJ5KTsKKyAgICAgICAgZC0+cHJpbWFyeSA9IE5VTEw7CiAgICAgICAgIHJl
dHVybiBYMTFTUElDRV9FUlJfTk9TSE07CisgICAgfQogCiAgICAgZC0+c2NhbmxpbmUgPSBjcmVh
dGVfc2htX2ltYWdlKGQsIDAsIDEpOwogICAgIGlmICghZC0+c2NhbmxpbmUpIHsKKyAgICAgICAg
ZGVzdHJveV9zaG1faW1hZ2UoZCwgZC0+cHJpbWFyeSk7CisgICAgICAgIGQtPnByaW1hcnkgPSBO
VUxMOwogICAgICAgICBkZXN0cm95X3NobV9pbWFnZShkLCBkLT5mdWxsc2NyZWVuKTsKICAgICAg
ICAgZC0+ZnVsbHNjcmVlbiA9IE5VTEw7CiAgICAgICAgIHJldHVybiBYMTFTUElDRV9FUlJfTk9T
SE07CkBAIC00NzcsNiArNDkwLDExIEBAIGludCBkaXNwbGF5X2NyZWF0ZV9zY3JlZW5faW1hZ2Vz
KGRpc3BsYXlfdCAqZCkKIAogdm9pZCBkaXNwbGF5X2Rlc3Ryb3lfc2NyZWVuX2ltYWdlcyhkaXNw
bGF5X3QgKmQpCiB7CisgICAgaWYgKGQtPnByaW1hcnkpIHsKKyAgICAgICAgZGVzdHJveV9zaG1f
aW1hZ2UoZCwgZC0+cHJpbWFyeSk7CisgICAgICAgIGQtPnByaW1hcnkgPSBOVUxMOworICAgIH0K
KwogICAgIGlmIChkLT5mdWxsc2NyZWVuKSB7CiAgICAgICAgIGRlc3Ryb3lfc2htX2ltYWdlKGQs
IGQtPmZ1bGxzY3JlZW4pOwogICAgICAgICBkLT5mdWxsc2NyZWVuID0gTlVMTDsKZGlmZiAtLWdp
dCBhL3NyYy9kaXNwbGF5LmggYi9zcmMvZGlzcGxheS5oCmluZGV4IGRjNDI1NGIuLjI3YmM4Mjkg
MTAwNjQ0Ci0tLSBhL3NyYy9kaXNwbGF5LmgKKysrIGIvc3JjL2Rpc3BsYXkuaApAQCAtNTUsNiAr
NTUsNyBAQCB0eXBlZGVmIHN0cnVjdCB7CiAKICAgICBjb25zdCB4Y2JfcXVlcnlfZXh0ZW5zaW9u
X3JlcGx5X3QgKnhmaXhlc19leHQ7CiAKKyAgICBzaG1faW1hZ2VfdCAqcHJpbWFyeTsKICAgICBz
aG1faW1hZ2VfdCAqZnVsbHNjcmVlbjsKICAgICBzaG1faW1hZ2VfdCAqc2NhbmxpbmU7CiAKZGlm
ZiAtLWdpdCBhL3NyYy9tYWluLmMgYi9zcmMvbWFpbi5jCmluZGV4IGNlY2FkYzguLjcxY2JiNDYg
MTAwNjQ0Ci0tLSBhL3NyYy9tYWluLmMKKysrIGIvc3JjL21haW4uYwpAQCAtMTA4LDcgKzEwOCw3
IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pCiAgICAgLyotLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KICAgICAqKiAgU3RhcnQgdXAgYSBzcGljZSBzZXJ2ZXIKICAgICAqKi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0q
LwotICAgIHJjID0gc3BpY2Vfc3RhcnQoJnNlc3Npb24uc3BpY2UsICZzZXNzaW9uLm9wdGlvbnMs
IHNlc3Npb24uZGlzcGxheS5mdWxsc2NyZWVuKTsKKyAgICByYyA9IHNwaWNlX3N0YXJ0KCZzZXNz
aW9uLnNwaWNlLCAmc2Vzc2lvbi5vcHRpb25zLCBzZXNzaW9uLmRpc3BsYXkucHJpbWFyeSk7CiAg
ICAgaWYgKHJjKQogICAgICAgICBnb3RvIGV4aXQ7CiAgICAgc3BpY2Vfc3RhcnRlZCA9IDE7CmRp
ZmYgLS1naXQgYS9zcmMvc2Vzc2lvbi5jIGIvc3JjL3Nlc3Npb24uYwppbmRleCAxZTU5NDE1Li40
ZDcyZTE0IDEwMDY0NAotLS0gYS9zcmMvc2Vzc2lvbi5jCisrKyBiL3NyYy9zZXNzaW9uLmMKQEAg
LTM1Miw3ICszNTIsNyBAQCBpbnQgc2Vzc2lvbl9yZWNyZWF0ZV9wcmltYXJ5KHNlc3Npb25fdCAq
cykKIAogICAgIHJjID0gZGlzcGxheV9jcmVhdGVfc2NyZWVuX2ltYWdlcygmcy0+ZGlzcGxheSk7
CiAgICAgaWYgKHJjID09IDApIHsKLSAgICAgICAgc2htX2ltYWdlX3QgKmYgPSBzLT5kaXNwbGF5
LmZ1bGxzY3JlZW47CisgICAgICAgIHNobV9pbWFnZV90ICpmID0gcy0+ZGlzcGxheS5wcmltYXJ5
OwogICAgICAgICByYyA9IHNwaWNlX2NyZWF0ZV9wcmltYXJ5KCZzLT5zcGljZSwgZi0+dywgZi0+
aCwgZi0+Ynl0ZXNfcGVyX2xpbmUsIGYtPnNobWFkZHIpOwogICAgIH0KIAotLSAKMi4xNy4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
