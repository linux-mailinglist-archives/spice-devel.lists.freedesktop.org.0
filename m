Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF3746D2A
	for <lists+spice-devel@lfdr.de>; Sat, 15 Jun 2019 02:24:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FE108957D;
	Sat, 15 Jun 2019 00:24:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53EB68957D
 for <spice-devel@lists.freedesktop.org>; Sat, 15 Jun 2019 00:24:19 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hbwV3-0001SP-03
 for spice-devel@lists.freedesktop.org; Fri, 14 Jun 2019 19:24:54 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hbwUR-0004mE-Po
 for spice-devel@lists.freedesktop.org; Sat, 15 Jun 2019 02:24:15 +0200
Date: Sat, 15 Jun 2019 02:24:15 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1hbwUR-0004mE-Po@amboise>
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This constant fits in a 32 bit signed integer so it does not
 need the suffix. However some of the derived constants don't so use an
 uint64_t
 cast to avoid the long vs long long confusion (such as in p [...] 
 Content analysis details:   (-103.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 0.0 TVD_RCVD_IP            Message was received from an IP address
 1.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fgouget[at]free.fr)
 1.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Message-Id:Content-Type:MIME-Version:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LwxL7l9+ChDYKkb7PJ819sEWOPQB0GEhhAAtbiBLJWQ=; b=eWsEfivA+78QIVFA6KiEJvh+Zj
 lTDC0ZtLsu9BGU00d7HgaTKNnJPpyhJ+qU33T0tLlE3QeyaqSSF2RDgTnqSOQg/bnCv/N4tVeh9oh
 LarlY5aAD6lTG6NX5reHmN+mMfxnxbdwjZYhGIppp/5wVjaq18VqGWGZbwlqM8XBGfmM=;
Subject: [Spice-devel] [spice v3] utils: Remove the LL suffix from
 NSEC_PER_SEC
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

VGhpcyBjb25zdGFudCBmaXRzIGluIGEgMzIgYml0IHNpZ25lZCBpbnRlZ2VyIHNvIGl0IGRvZXMg
bm90IG5lZWQgdGhlCnN1ZmZpeC4gSG93ZXZlciBzb21lIG9mIHRoZSBkZXJpdmVkIGNvbnN0YW50
cyBkb24ndCBzbyB1c2UgYW4gdWludDY0X3QKY2FzdCB0byBhdm9pZCB0aGUgbG9uZyB2cyBsb25n
IGxvbmcgY29uZnVzaW9uIChzdWNoIGFzIGluIHByaW50CnN0YXRlbWVudHMpLgpBbHNvIHNvbWUg
b2YgdGhlIGV4cHJlc3Npb25zIHRoZXNlIGNvbnN0YW50cyBhcmUgdXNlZCBpbiBtYXkgb3ZlcmZs
b3cgc28KcGVyZm9ybSB0aGUgYXBwcm9wcmlhdGUgY2FzdHMgaW4gdGhvc2UgbG9jYXRpb25zLiBU
aGlzIG1ha2VzIGl0IGNsZWFyZXIKdGhhdCB0aGVzZSBvcGVyYXRpb25zIGFyZSA2NCBiaXQuCgpT
aWduZWQtb2ZmLWJ5OiBGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZlcnMuY29tPgot
LS0KCnYzOiBUdXJuZWQgYWxsIHRoZSB0aW1lb3V0IGNvbnN0YW50cyB3aXRoIGNhc3RzIHRvIGlu
dDY0X3QuCgogc2VydmVyL2NvbW1vbi1ncmFwaGljcy1jaGFubmVsLmggfCAyICstCiBzZXJ2ZXIv
ZGNjLmggICAgICAgICAgICAgICAgICAgICB8IDIgKy0KIHNlcnZlci9nc3RyZWFtZXItZW5jb2Rl
ci5jICAgICAgIHwgMiArLQogc2VydmVyL21qcGVnLWVuY29kZXIuYyAgICAgICAgICAgfCAyICst
CiBzZXJ2ZXIvdXRpbHMuaCAgICAgICAgICAgICAgICAgICB8IDQgKystLQogc2VydmVyL3ZpZGVv
LXN0cmVhbS5jICAgICAgICAgICAgfCA0ICsrLS0KIHNlcnZlci92aWRlby1zdHJlYW0uaCAgICAg
ICAgICAgIHwgMiArLQogNyBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL2NvbW1vbi1ncmFwaGljcy1jaGFubmVsLmggYi9z
ZXJ2ZXIvY29tbW9uLWdyYXBoaWNzLWNoYW5uZWwuaAppbmRleCBkMjNmMGM2OTUuLmNjY2QyNGQ0
NCAxMDA2NDQKLS0tIGEvc2VydmVyL2NvbW1vbi1ncmFwaGljcy1jaGFubmVsLmgKKysrIGIvc2Vy
dmVyL2NvbW1vbi1ncmFwaGljcy1jaGFubmVsLmgKQEAgLTI3LDcgKzI3LDcgQEAgR19CRUdJTl9E
RUNMUwogCiBib29sIGNvbW1vbl9jaGFubmVsX2NsaWVudF9jb25maWdfc29ja2V0KFJlZENoYW5u
ZWxDbGllbnQgKnJjYyk7CiAKLSNkZWZpbmUgQ09NTU9OX0NMSUVOVF9USU1FT1VUIChOU0VDX1BF
Ul9TRUMgKiAzMCkKKyNkZWZpbmUgQ09NTU9OX0NMSUVOVF9USU1FT1VUICgoKGludDY0X3QpTlNF
Q19QRVJfU0VDKSAqIDMwKQogCiAjZGVmaW5lIFRZUEVfQ09NTU9OX0dSQVBISUNTX0NIQU5ORUwg
Y29tbW9uX2dyYXBoaWNzX2NoYW5uZWxfZ2V0X3R5cGUoKQogCmRpZmYgLS1naXQgYS9zZXJ2ZXIv
ZGNjLmggYi9zZXJ2ZXIvZGNjLmgKaW5kZXggNzZjMDc4YmY1Li5jMzU4MjRkNTQgMTAwNjQ0Ci0t
LSBhL3NlcnZlci9kY2MuaAorKysgYi9zZXJ2ZXIvZGNjLmgKQEAgLTY2LDcgKzY2LDcgQEAgR1R5
cGUgZGlzcGxheV9jaGFubmVsX2NsaWVudF9nZXRfdHlwZSh2b2lkKSBHX0dOVUNfQ09OU1Q7CiAj
ZGVmaW5lIFBBTEVUVEVfQ0FDSEVfSEFTSF9LRVkoaWQpICgoaWQpICYgUEFMRVRURV9DQUNIRV9I
QVNIX01BU0spCiAjZGVmaW5lIENMSUVOVF9QQUxFVFRFX0NBQ0hFX1NJWkUgMTI4CiAKLSNkZWZp
bmUgRElTUExBWV9DTElFTlRfTUlHUkFURV9EQVRBX1RJTUVPVVQgKE5TRUNfUEVSX1NFQyAqIDEw
KQorI2RlZmluZSBESVNQTEFZX0NMSUVOVF9NSUdSQVRFX0RBVEFfVElNRU9VVCAoKChpbnQ2NF90
KU5TRUNfUEVSX1NFQykgKiAxMCkKICNkZWZpbmUgRElTUExBWV9DTElFTlRfUkVUUllfSU5URVJW
QUwgMTAwMDAgLy9taWNybwogCiAvKiBFYWNoIGRyYXdhYmxlIGNhbiByZWZlciB0byBhdCBtb3N0
IDMgaW1hZ2VzOiBzcmMsIGJydXNoIGFuZCBtYXNrICovCmRpZmYgLS1naXQgYS9zZXJ2ZXIvZ3N0
cmVhbWVyLWVuY29kZXIuYyBiL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jCmluZGV4IDY0MTZi
Njg4ZC4uZjJmMWNmNjFlIDEwMDY0NAotLS0gYS9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYwor
KysgYi9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYwpAQCAtNTYzLDcgKzU2Myw3IEBAIHN0YXRp
YyB2b2lkIHVwZGF0ZV9uZXh0X2ZyYW1lX21tX3RpbWUoU3BpY2VHc3RFbmNvZGVyICplbmNvZGVy
KQogICAgIC8qIEZpZ3VyZSBvdXQgaG93IG1hbnkgZnJhbWVzIHRvIGRyb3AgdG8gbm90IGV4Y2Vl
ZCB0aGUgY3VycmVudCBiaXQgcmF0ZS4KICAgICAgKiBVc2UgbmFub3NlY29uZHMgdG8gYXZvaWQg
cHJlY2lzaW9uIGxvc3MuCiAgICAgICovCi0gICAgdWludDY0X3QgZGVsYXlfbnMgPSAtZW5jb2Rl
ci0+dmJ1ZmZlcl9mcmVlICogOCAqIE5TRUNfUEVSX1NFQyAvIGVuY29kZXItPmJpdF9yYXRlOwor
ICAgIHVpbnQ2NF90IGRlbGF5X25zID0gKCh1aW50NjRfdCktZW5jb2Rlci0+dmJ1ZmZlcl9mcmVl
KSAqIDggKiBOU0VDX1BFUl9TRUMgLyBlbmNvZGVyLT5iaXRfcmF0ZTsKICAgICB1aW50MzJfdCBk
cm9wcyA9IChkZWxheV9ucyArIHBlcmlvZF9ucyAtIDEpIC8gcGVyaW9kX25zOyAvKiByb3VuZCB1
cCAqLwogICAgIHNwaWNlX2RlYnVnKCJkcm9wcz0ldSB2YnVmZmVyICVkLyVkIiwgZHJvcHMsIGVu
Y29kZXItPnZidWZmZXJfZnJlZSwKICAgICAgICAgICAgICAgICBlbmNvZGVyLT52YnVmZmVyX3Np
emUpOwpkaWZmIC0tZ2l0IGEvc2VydmVyL21qcGVnLWVuY29kZXIuYyBiL3NlcnZlci9tanBlZy1l
bmNvZGVyLmMKaW5kZXggNGEwMmU3YzhiLi41NjM4MWIxYzcgMTAwNjQ0Ci0tLSBhL3NlcnZlci9t
anBlZy1lbmNvZGVyLmMKKysrIGIvc2VydmVyL21qcGVnLWVuY29kZXIuYwpAQCAtNjUsNyArNjUs
NyBAQCBzdGF0aWMgY29uc3QgaW50IG1qcGVnX3F1YWxpdHlfc2FtcGxlc1tNSlBFR19RVUFMSVRZ
X1NBTVBMRV9OVU1dID0gezIwLCAzMCwgNDAsCiAgKiBhcmUgbm90IG5lY2Vzc2FyaWx5IHJlbGF0
ZWQgdG8gbWlzLWVzdGltYXRpb24gb2YgdGhlIGJpdCByYXRlLCBhbmQgd2Ugd291bGQKICAqIGxp
a2UgdG8gd2FpdCB0aWxsIHRoZSBzdHJlYW0gc3RhYmlsaXplcy4KICAqLwotI2RlZmluZSBNSlBF
R19XQVJNVVBfVElNRSAoTlNFQ19QRVJfU0VDICogMykKKyNkZWZpbmUgTUpQRUdfV0FSTVVQX1RJ
TUUgKCgoaW50NjRfdClOU0VDX1BFUl9TRUMpICogMykKIAogLyogVGhlIGNvbXByZXNzZWQgYnVm
ZmVyIGluaXRpYWwgc2l6ZS4gKi8KICNkZWZpbmUgTUpQRUdfSU5JVElBTF9CVUZGRVJfU0laRSAo
MzIgKiAxMDI0KQpkaWZmIC0tZ2l0IGEvc2VydmVyL3V0aWxzLmggYi9zZXJ2ZXIvdXRpbHMuaApp
bmRleCA1NGJjOWQ0OTAuLjRiYmQ0NWRmZiAxMDA2NDQKLS0tIGEvc2VydmVyL3V0aWxzLmgKKysr
IGIvc2VydmVyL3V0aWxzLmgKQEAgLTUyLDcgKzUyLDcgQEAgc3RhdGljIGlubGluZSBpbnQgdGVz
dF9iaXQoaW50IGluZGV4LCB1aW50MzJfdCB2YWwpCiAKIHR5cGVkZWYgaW50NjRfdCByZWRfdGlt
ZV90OwogCi0jZGVmaW5lIE5TRUNfUEVSX1NFQyAgICAgIDEwMDAwMDAwMDBMTAorI2RlZmluZSBO
U0VDX1BFUl9TRUMgICAgICAxMDAwMDAwMDAwCiAjZGVmaW5lIE5TRUNfUEVSX01JTExJU0VDIDEw
MDAwMDAKICNkZWZpbmUgTlNFQ19QRVJfTUlDUk9TRUMgMTAwMAogCkBAIC02Miw3ICs2Miw3IEBA
IHN0YXRpYyBpbmxpbmUgcmVkX3RpbWVfdCBzcGljZV9nZXRfbW9ub3RvbmljX3RpbWVfbnModm9p
ZCkKICAgICBzdHJ1Y3QgdGltZXNwZWMgdGltZTsKIAogICAgIGNsb2NrX2dldHRpbWUoQ0xPQ0tf
TU9OT1RPTklDLCAmdGltZSk7Ci0gICAgcmV0dXJuIE5TRUNfUEVSX1NFQyAqIHRpbWUudHZfc2Vj
ICsgdGltZS50dl9uc2VjOworICAgIHJldHVybiAoKHVpbnQ2NF90KU5TRUNfUEVSX1NFQykgKiB0
aW1lLnR2X3NlYyArIHRpbWUudHZfbnNlYzsKIH0KIAogI2RlZmluZSBNU0VDX1BFUl9TRUMgMTAw
MApkaWZmIC0tZ2l0IGEvc2VydmVyL3ZpZGVvLXN0cmVhbS5jIGIvc2VydmVyL3ZpZGVvLXN0cmVh
bS5jCmluZGV4IDRhYzI1YWY4Yi4uN2EyZGNhN2RkIDEwMDY0NAotLS0gYS9zZXJ2ZXIvdmlkZW8t
c3RyZWFtLmMKKysrIGIvc2VydmVyL3ZpZGVvLXN0cmVhbS5jCkBAIC00MTUsOCArNDE1LDggQEAg
c3RhdGljIHZvaWQgZGlzcGxheV9jaGFubmVsX2NyZWF0ZV9zdHJlYW0oRGlzcGxheUNoYW5uZWwg
KmRpc3BsYXksIERyYXdhYmxlICpkcmEKICAgICAgKiB0aGUgbmVhcmVzdCBpbnRlZ2VyLCBmb3Ig
aW5zdGFuY2UgMjQgZm9yIDIzLjk3Ni4KICAgICAgKi8KICAgICB1aW50NjRfdCBkdXJhdGlvbiA9
IGRyYXdhYmxlLT5jcmVhdGlvbl90aW1lIC0gZHJhd2FibGUtPmZpcnN0X2ZyYW1lX3RpbWU7Ci0g
ICAgaWYgKGR1cmF0aW9uID4gTlNFQ19QRVJfU0VDICogZHJhd2FibGUtPmZyYW1lc19jb3VudCAv
IE1BWF9GUFMpIHsKLSAgICAgICAgc3RyZWFtLT5pbnB1dF9mcHMgPSAoTlNFQ19QRVJfU0VDICog
ZHJhd2FibGUtPmZyYW1lc19jb3VudCArIGR1cmF0aW9uIC8gMikgLyBkdXJhdGlvbjsKKyAgICBp
ZiAoZHVyYXRpb24gPiAoKHVpbnQ2NF90KU5TRUNfUEVSX1NFQykgKiBkcmF3YWJsZS0+ZnJhbWVz
X2NvdW50IC8gTUFYX0ZQUykgeworICAgICAgICBzdHJlYW0tPmlucHV0X2ZwcyA9ICgoKHVpbnQ2
NF90KU5TRUNfUEVSX1NFQykgKiBkcmF3YWJsZS0+ZnJhbWVzX2NvdW50ICsgZHVyYXRpb24gLyAy
KSAvIGR1cmF0aW9uOwogICAgIH0gZWxzZSB7CiAgICAgICAgIHN0cmVhbS0+aW5wdXRfZnBzID0g
TUFYX0ZQUzsKICAgICB9CmRpZmYgLS1naXQgYS9zZXJ2ZXIvdmlkZW8tc3RyZWFtLmggYi9zZXJ2
ZXIvdmlkZW8tc3RyZWFtLmgKaW5kZXggNDZiMDc2ZmQ3Li5jYmQzNDdiOGEgMTAwNjQ0Ci0tLSBh
L3NlcnZlci92aWRlby1zdHJlYW0uaAorKysgYi9zZXJ2ZXIvdmlkZW8tc3RyZWFtLmgKQEAgLTM0
LDcgKzM0LDcgQEAKICNkZWZpbmUgUkVEX1NUUkVBTV9HUkFEVUFMX0ZSQU1FU19TVEFSVF9DT05E
SVRJT04gMC4yCiAjZGVmaW5lIFJFRF9TVFJFQU1fRlJBTUVTX1JFU0VUX0NPTkRJVElPTiAxMDAK
ICNkZWZpbmUgUkVEX1NUUkVBTV9NSU5fU0laRSAoOTYgKiA5NikKLSNkZWZpbmUgUkVEX1NUUkVB
TV9JTlBVVF9GUFNfVElNRU9VVCAoTlNFQ19QRVJfU0VDICogNSkKKyNkZWZpbmUgUkVEX1NUUkVB
TV9JTlBVVF9GUFNfVElNRU9VVCAoKChpbnQ2NF90KU5TRUNfUEVSX1NFQykgKiA1KQogI2RlZmlu
ZSBSRURfU1RSRUFNX0NIQU5ORUxfQ0FQQUNJVFkgMC44CiAvKiB0aGUgY2xpZW50J3Mgc3RyZWFt
IHJlcG9ydCBmcmVxdWVuY3kgaXMgdGhlIG1pbmltdW0gb2YgdGhlIDIgdmFsdWVzIGJlbG93ICov
CiAjZGVmaW5lIFJFRF9TVFJFQU1fQ0xJRU5UX1JFUE9SVF9XSU5ET1cgNSAvLyAjZnJhbWVzCi0t
IAoyLjIwLjEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
