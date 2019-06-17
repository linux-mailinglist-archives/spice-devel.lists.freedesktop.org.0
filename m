Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E04D448A25
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 19:32:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7849689270;
	Mon, 17 Jun 2019 17:32:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26F0489270
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 17:32:18 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hcvUx-00077k-Qq
 for spice-devel@lists.freedesktop.org; Mon, 17 Jun 2019 12:32:52 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hcvUN-00084O-Ld
 for spice-devel@lists.freedesktop.org; Mon, 17 Jun 2019 19:32:15 +0200
Date: Mon, 17 Jun 2019 19:32:15 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
In-Reply-To: <cover.1560790607.git.fgouget@free.fr>
Message-ID: <4eb0dceefa87cb24fb96e385ac2c51e9cf9e6629.1560790607.git.fgouget@free.fr>
References: <cover.1560790607.git.fgouget@free.fr>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The number of frames that were sitting in the decoding_queue
 before the current frame was added is crucial to correctly interpret the
 decoding time: * Less than MAX_DECODED_FRAMES means nothing blocke [...] 
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
 d=codeweavers.com; s=6377696661; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mCd8E9r0JbfeFEOj2D1MgvX3y24bcpV6BFqKFnLS2ts=; b=qio3AmBTn/J5lPyNl4D9VS+Lz
 FM02/ETwPCleJUA3DIQkFsRirkjKCQsI7VDHE2ratEk0hUTiafv+8YwMmq2EoxEPXor6nIWdmgFQn
 soA4Jl//TRquJTgNqBYPjb2EBg19LZybodpkQE4odtqFM4oHTQopCJRBQNXaOALt9vjxc=;
Subject: [Spice-devel] [client v2 04/12] gstreamer: Add the encoded frame's
 order the statistics
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

VGhlIG51bWJlciBvZiBmcmFtZXMgdGhhdCB3ZXJlIHNpdHRpbmcgaW4gdGhlIGRlY29kaW5nX3F1
ZXVlIGJlZm9yZSB0aGUKY3VycmVudCBmcmFtZSB3YXMgYWRkZWQgaXMgY3J1Y2lhbCB0byBjb3Jy
ZWN0bHkgaW50ZXJwcmV0IHRoZSBkZWNvZGluZwp0aW1lOgoqIExlc3MgdGhhbiBNQVhfREVDT0RF
RF9GUkFNRVMgbWVhbnMgbm90aGluZyBibG9ja2VkIHRoZSBkZWNvZGluZyBvZgogIHRoYXQgZnJh
bWUuCiogTW9yZSB0aGFuIE1BWF9ERUNPREVEX0ZSQU1FUyBtZWFucyBkZWNvZGluZyB3YXMgZGVs
YXllZCBieSBvbmUgb3IgbW9yZQogIGZyYW1lIGludGVydmFscy4KClNpZ25lZC1vZmYtYnk6IEZy
YW5jb2lzIEdvdWdldCA8ZmdvdWdldEBjb2Rld2VhdmVycy5jb20+Ci0tLQoKdjI6IFJlbmFtZWQg
cmFuayB0byBxdWV1ZV9sZW4uCiAgICBNb3ZlZCBpdCB0byB0aGUgbGFzdCBwb3NpdGlvbiBpbiB0
aGUgc3RhdGlzdGljcyBzdHJpbmcuCgogc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYyB8IDEzICsr
KysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLWRpc3BsYXktZ3N0LmMgYi9zcmMvY2hhbm5l
bC1kaXNwbGF5LWdzdC5jCmluZGV4IGMyYjI0ZWE3Li40NDliOWNiOCAxMDA2NDQKLS0tIGEvc3Jj
L2NoYW5uZWwtZGlzcGxheS1nc3QuYworKysgYi9zcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jCkBA
IC05MCw2ICs5MCw3IEBAIHN0cnVjdCBTcGljZUdzdEZyYW1lIHsKICAgICBHc3RCdWZmZXIgKmVu
Y29kZWRfYnVmZmVyOwogICAgIFNwaWNlRnJhbWUgKmVuY29kZWRfZnJhbWU7CiAgICAgR3N0U2Ft
cGxlICpkZWNvZGVkX3NhbXBsZTsKKyAgICBndWludCBxdWV1ZV9sZW47CiB9OwogCiBzdGF0aWMg
U3BpY2VHc3RGcmFtZSAqY3JlYXRlX2dzdF9mcmFtZShHc3RCdWZmZXIgKmJ1ZmZlciwgU3BpY2VG
cmFtZSAqZnJhbWUpCkBAIC00NDAsMTEgKzQ0MSwxOCBAQCBzaW5rX2V2ZW50X3Byb2JlKEdzdFBh
ZCAqcGFkLCBHc3RQYWRQcm9iZUluZm8gKmluZm8sIGdwb2ludGVyIGRhdGEpCiAgICAgICAgICAg
ICBTcGljZUdzdEZyYW1lICpnc3RmcmFtZSA9IGwtPmRhdGE7CiAgICAgICAgICAgICBjb25zdCBT
cGljZUZyYW1lICpmcmFtZSA9IGdzdGZyYW1lLT5lbmNvZGVkX2ZyYW1lOwogICAgICAgICAgICAg
aW50NjRfdCBkdXJhdGlvbiA9IGdfZ2V0X21vbm90b25pY190aW1lKCkgLSBmcmFtZS0+Y3JlYXRp
b25fdGltZTsKKyAgICAgICAgICAgIC8qIE5vdGUgdGhhdCBxdWV1ZV9sZW4gKHRoZSBsZW5ndGgg
b2YgdGhlIHF1ZXVlIHByaW9yIHRvIGFkZGluZworICAgICAgICAgICAgICogdGhpcyBmcmFtZSkg
aXMgY3J1Y2lhbCB0byBjb3JyZWN0bHkgaW50ZXJwcmV0IHRoZSBkZWNvZGluZyB0aW1lOgorICAg
ICAgICAgICAgICogLSBMZXNzIHRoYW4gTUFYX0RFQ09ERURfRlJBTUVTIG1lYW5zIG5vdGhpbmcg
YmxvY2tlZCB0aGUKKyAgICAgICAgICAgICAqICAgZGVjb2Rpbmcgb2YgdGhhdCBmcmFtZS4KKyAg
ICAgICAgICAgICAqIC0gTW9yZSB0aGFuIE1BWF9ERUNPREVEX0ZSQU1FUyBtZWFucyBkZWNvZGlu
ZyB3YXMgZGVsYXllZCBieSBvbmUKKyAgICAgICAgICAgICAqICAgb3IgbW9yZSBmcmFtZSBpbnRl
cnZhbHMuCisgICAgICAgICAgICAgKi8KICAgICAgICAgICAgIHJlY29yZChmcmFtZXNfc3RhdHMs
CiAgICAgICAgICAgICAgICAgICAgImZyYW1lIG1tX3RpbWUgJXUgc2l6ZSAldSBjcmVhdGlvbiB0
aW1lICUiIFBSSWQ2NAotICAgICAgICAgICAgICAgICAgICIgZGVjb2RlZCB0aW1lICUiIFBSSWQ2
NCAiIHF1ZXVlICV1IiwKKyAgICAgICAgICAgICAgICAgICAiIGRlY29kZWQgdGltZSAlIiBQUklk
NjQgIiBxdWV1ZSAldSBiZWZvcmUgJXUiLAogICAgICAgICAgICAgICAgICAgIGZyYW1lLT5tbV90
aW1lLCBmcmFtZS0+c2l6ZSwgZnJhbWUtPmNyZWF0aW9uX3RpbWUsIGR1cmF0aW9uLAotICAgICAg
ICAgICAgICAgICAgIGRlY29kZXItPmRlY29kaW5nX3F1ZXVlLT5sZW5ndGgpOworICAgICAgICAg
ICAgICAgICAgIGRlY29kZXItPmRlY29kaW5nX3F1ZXVlLT5sZW5ndGgsIGdzdGZyYW1lLT5xdWV1
ZV9sZW4pOwogCiAgICAgICAgICAgICBpZiAoIWRlY29kZXItPmFwcHNpbmspIHsKICAgICAgICAg
ICAgICAgICAvKiBUaGUgc2luayB3aWxsIGRpc3BsYXkgdGhlIGZyYW1lIGRpcmVjdGx5IHNvIHRo
aXMKQEAgLTcyOSw2ICs3MzcsNyBAQCBzdGF0aWMgZ2Jvb2xlYW4gc3BpY2VfZ3N0X2RlY29kZXJf
cXVldWVfZnJhbWUoVmlkZW9EZWNvZGVyICp2aWRlb19kZWNvZGVyLAogCiAgICAgU3BpY2VHc3RG
cmFtZSAqZ3N0X2ZyYW1lID0gY3JlYXRlX2dzdF9mcmFtZShidWZmZXIsIGZyYW1lKTsKICAgICBn
X211dGV4X2xvY2soJmRlY29kZXItPnF1ZXVlc19tdXRleCk7CisgICAgZ3N0X2ZyYW1lLT5xdWV1
ZV9sZW4gPSBkZWNvZGVyLT5kZWNvZGluZ19xdWV1ZS0+bGVuZ3RoOwogICAgIGdfcXVldWVfcHVz
aF90YWlsKGRlY29kZXItPmRlY29kaW5nX3F1ZXVlLCBnc3RfZnJhbWUpOwogICAgIGdfbXV0ZXhf
dW5sb2NrKCZkZWNvZGVyLT5xdWV1ZXNfbXV0ZXgpOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
