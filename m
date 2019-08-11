Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 106C989111
	for <lists+spice-devel@lfdr.de>; Sun, 11 Aug 2019 11:26:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9EB26E320;
	Sun, 11 Aug 2019 09:26:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92F746E320
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 09:26:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 04A0561D25
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 09:26:09 +0000 (UTC)
Received: from lub.com (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 685D864028
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Aug 2019 09:26:08 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Sun, 11 Aug 2019 12:26:04 +0300
Message-Id: <20190811092605.31952-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Sun, 11 Aug 2019 09:26:09 +0000 (UTC)
Subject: [Spice-devel] [spice-common PATCH 1/2] ptypes.py: remove useless
 condition member != None
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

bWVtYmVyID0gTm9uZSBpcyBzZXQgYmVmb3JlIHRoZSBpZi9lbHNlIGNvbmRpdGlvbi4KSW4gdGhl
IGVsc2UgY29kZSwgd2hlbiBtZW1iZXIgaXMgc2V0IGl0IGlzIGNoZWNrZWQKYW5kIGlmIG5vdC1O
b25lIGl0IGJyZWFrcyBvdXQgb2YgdGhlIGxvb3AuCklmIHRoZSBjb2RlIGlzIHN0aWxsIGluIHRo
ZSBsb29wIGZvciBzdXJlIG1lbWJlciBpcyBOb25lLgoKRm91bmQgYnkgY292c2Nhbi4KClNpZ25l
ZC1vZmYtYnk6IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4KLS0tCiBweXRob25fbW9kdWxl
cy9wdHlwZXMucHkgfCAyIC0tCiAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9weXRob25fbW9kdWxlcy9wdHlwZXMucHkgYi9weXRob25fbW9kdWxlcy9wdHlwZXMu
cHkKaW5kZXggYjA4MTcwZS4uMzExY2UzZCAxMDA2NDQKLS0tIGEvcHl0aG9uX21vZHVsZXMvcHR5
cGVzLnB5CisrKyBiL3B5dGhvbl9tb2R1bGVzL3B0eXBlcy5weQpAQCAtODg0LDggKzg4NCw2IEBA
IGNsYXNzIENvbnRhaW5lclR5cGUoVHlwZSk6CiAgICAgICAgICAgICAgICAgICAgIG1lbWJlciA9
IG0ubG9va3VwX2Nhc2VfbWVtYmVyKG5hbWUpCiAgICAgICAgICAgICAgICAgICAgIGlmIG1lbWJl
ciAhPSBOb25lOgogICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWsKLSAgICAgICAgICAgICAg
ICBpZiBtZW1iZXIgIT0gTm9uZToKLSAgICAgICAgICAgICAgICAgICAgYnJlYWsKIAogICAgICAg
ICBpZiBtZW1iZXIgPT0gTm9uZToKICAgICAgICAgICAgIHJhaXNlIEV4Y2VwdGlvbigiTm8gbWVt
YmVyIGNhbGxlZCAlcyBmb3VuZCIgJSBuYW1lKQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
