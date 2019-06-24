Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CE150904
	for <lists+spice-devel@lfdr.de>; Mon, 24 Jun 2019 12:36:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1052A89AB9;
	Mon, 24 Jun 2019 10:36:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 701EA89AB9
 for <spice-devel@lists.freedesktop.org>; Mon, 24 Jun 2019 10:36:17 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1hfMLA-0002GY-5x
 for spice-devel@lists.freedesktop.org; Mon, 24 Jun 2019 05:36:49 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1hfMKb-0003GP-Ge
 for spice-devel@lists.freedesktop.org; Mon, 24 Jun 2019 12:36:13 +0200
Date: Mon, 24 Jun 2019 12:36:13 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1hfMKb-0003GP-Ge@amboise>
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: We don't want to maintain more macros than necessary and
 these
 have been unused for over two years. Signed-off-by: Francois Gouget
 <fgouget@codeweavers.com>
 --- v2: Remove unused macros altogether rather than marking them as deprecated
 (no use of them has been found in spice, spice-gtk, spice-common,
 spice-protocol, 
 vd_agent and xf86-video-qxl in the past two [...] 
 Content analysis details:   (-103.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 0.0 TVD_RCVD_IP            Message was received from an IP address
 1.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 1.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fgouget[at]free.fr)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Message-Id:Content-Type:MIME-Version:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QS6dc/9/xwi0oeLGdljjRrVr0Pp4WvrORvMh39VY2us=; b=Zc2vNDG0Acloj1Xiy95SWMe1ZC
 BO/TA98La+Ko9v64RtBqmOg9NAjxEMybjpTGtVL2L5oj4y3oiTzK+Z/83obkzuFl95ke8qZmPLzMi
 ckIyETTGhKJlRGBqaixqFNVgSvhAPiTPk9oh9+EL83KbtdD0Cz8e2LqVLdBqSH2e4wUc=;
Subject: [Spice-devel] [protocol v2] macros: Remove unused SPICE_GNUC_XXX
 macros
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

V2UgZG9uJ3Qgd2FudCB0byBtYWludGFpbiBtb3JlIG1hY3JvcyB0aGFuIG5lY2Vzc2FyeSBhbmQg
dGhlc2UgaGF2ZQpiZWVuIHVudXNlZCBmb3Igb3ZlciB0d28geWVhcnMuCgpTaWduZWQtb2ZmLWJ5
OiBGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZlcnMuY29tPgotLS0KCnYyOiBSZW1v
dmUgdW51c2VkIG1hY3JvcyBhbHRvZ2V0aGVyIHJhdGhlciB0aGFuIG1hcmtpbmcgdGhlbSBhcyAK
ICAgIGRlcHJlY2F0ZWQgKG5vIHVzZSBvZiB0aGVtIGhhcyBiZWVuIGZvdW5kIGluIHNwaWNlLCBz
cGljZS1ndGssIAogICAgc3BpY2UtY29tbW9uLCBzcGljZS1wcm90b2NvbCwgdmRfYWdlbnQgYW5k
IHhmODYtdmlkZW8tcXhsIGluIHRoZSAKICAgIHBhc3QgdHdvIHllYXJzKS4KCiBzcGljZS9tYWNy
b3MuaCB8IDE2IC0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9zcGljZS9tYWNyb3MuaCBiL3NwaWNlL21hY3Jvcy5oCmluZGV4IGFi
MWQwNTYuLmEyM2U4NjYgMTAwNjQ0Ci0tLSBhL3NwaWNlL21hY3Jvcy5oCisrKyBiL3NwaWNlL21h
Y3Jvcy5oCkBAIC0zNCwxOSArMzQsMTEgQEAKICNpbmNsdWRlIDxzcGljZS90eXBlcy5oPgogCiAj
aWYgICAgX19HTlVDX18gPiAyIHx8IChfX0dOVUNfXyA9PSAyICYmIF9fR05VQ19NSU5PUl9fID49
IDk2KQotI2RlZmluZSBTUElDRV9HTlVDX1BVUkUgX19hdHRyaWJ1dGVfXygoX19wdXJlX18pKQog
I2RlZmluZSBTUElDRV9HTlVDX01BTExPQyBfX2F0dHJpYnV0ZV9fKChfX21hbGxvY19fKSkKICNl
bHNlCi0jZGVmaW5lIFNQSUNFX0dOVUNfUFVSRQogI2RlZmluZSBTUElDRV9HTlVDX01BTExPQwog
I2VuZGlmCiAKLSNpZiAgICAgX19HTlVDX18gPj0gNAotI2RlZmluZSBTUElDRV9HTlVDX05VTExf
VEVSTUlOQVRFRCBfX2F0dHJpYnV0ZV9fKChfX3NlbnRpbmVsX18pKQotI2Vsc2UKLSNkZWZpbmUg
U1BJQ0VfR05VQ19OVUxMX1RFUk1JTkFURUQKLSNlbmRpZgotCiAjaWZuZGVmIF9faGFzX2ZlYXR1
cmUKICNkZWZpbmUgX19oYXNfZmVhdHVyZSh4KSAwICAvKiBDb21wYXRpYmlsaXR5IHdpdGggbm9u
LWNsYW5nIGNvbXBpbGVycy4gKi8KICNlbmRpZgpAQCAtNjIsMjAgKzU0LDEyIEBACiAKICNpZiAg
ICAgX19HTlVDX18gPiAyIHx8IChfX0dOVUNfXyA9PSAyICYmIF9fR05VQ19NSU5PUl9fID4gNCkK
ICNkZWZpbmUgU1BJQ0VfR05VQ19QUklOVEYoIGZvcm1hdF9pZHgsIGFyZ19pZHggKSBfX2F0dHJp
YnV0ZV9fKChfX2Zvcm1hdF9fIChfX3ByaW50Zl9fLCBmb3JtYXRfaWR4LCBhcmdfaWR4KSkpCi0j
ZGVmaW5lIFNQSUNFX0dOVUNfU0NBTkYoIGZvcm1hdF9pZHgsIGFyZ19pZHggKSBfX2F0dHJpYnV0
ZV9fKChfX2Zvcm1hdF9fIChfX3NjYW5mX18sIGZvcm1hdF9pZHgsIGFyZ19pZHgpKSkKLSNkZWZp
bmUgU1BJQ0VfR05VQ19GT1JNQVQoIGFyZ19pZHggKSBfX2F0dHJpYnV0ZV9fKChfX2Zvcm1hdF9h
cmdfXyAoYXJnX2lkeCkpKQogI2RlZmluZSBTUElDRV9HTlVDX05PUkVUVVJOIF9fYXR0cmlidXRl
X18oKF9fbm9yZXR1cm5fXykpCi0jZGVmaW5lIFNQSUNFX0dOVUNfQ09OU1QgX19hdHRyaWJ1dGVf
XygoX19jb25zdF9fKSkKICNkZWZpbmUgU1BJQ0VfR05VQ19VTlVTRUQgX19hdHRyaWJ1dGVfXygo
X191bnVzZWRfXykpCi0jZGVmaW5lIFNQSUNFX0dOVUNfTk9fSU5TVFJVTUVOVCBfX2F0dHJpYnV0
ZV9fKChfX25vX2luc3RydW1lbnRfZnVuY3Rpb25fXykpCiAjZWxzZSAgIC8qICFfX0dOVUNfXyAq
LwogI2RlZmluZSBTUElDRV9HTlVDX1BSSU5URiggZm9ybWF0X2lkeCwgYXJnX2lkeCApCi0jZGVm
aW5lIFNQSUNFX0dOVUNfU0NBTkYoIGZvcm1hdF9pZHgsIGFyZ19pZHggKQotI2RlZmluZSBTUElD
RV9HTlVDX0ZPUk1BVCggYXJnX2lkeCApCiAjZGVmaW5lIFNQSUNFX0dOVUNfTk9SRVRVUk4KLSNk
ZWZpbmUgU1BJQ0VfR05VQ19DT05TVAogI2RlZmluZSBTUElDRV9HTlVDX1VOVVNFRAotI2RlZmlu
ZSBTUElDRV9HTlVDX05PX0lOU1RSVU1FTlQKICNlbmRpZiAgLyogIV9fR05VQ19fICovCiAKICNp
ZmRlZiBHX0RFUFJFQ0FURUQKLS0gCjIuMjAuMQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
