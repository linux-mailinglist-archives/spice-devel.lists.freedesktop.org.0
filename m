Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B1B12FA7E
	for <lists+spice-devel@lfdr.de>; Fri,  3 Jan 2020 17:33:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD2036E1F9;
	Fri,  3 Jan 2020 16:33:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18FE46E27C
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Jan 2020 16:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Message-Id:Content-Type:MIME-Version:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LOZdgjcxMhU5wYRNvwa4vX+bumNOFXceVTtQQ+OI0Ck=; b=HeEkVWkiSagB/MglZIs/ckcekR
 CFlAHMCJtVlaAAR5YediyNjBr71hfWuktBogk6Ls3xrFHUHByYi6rQhTZLZvAkw0MTk1V4QleujSI
 DbC5EIlbpLLfazhW+1HE3I4bo5c6FxShbdoD38tACFxk/JRP3tFdoZ3JYDkOQ3fQs5Rs=;
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1inPbf-0007zP-Qx
 for spice-devel@lists.freedesktop.org; Fri, 03 Jan 2020 10:15:25 -0600
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1inPbd-0008WF-8I
 for spice-devel@lists.freedesktop.org; Fri, 03 Jan 2020 17:15:21 +0100
Date: Fri, 3 Jan 2020 17:15:21 +0100 (CET)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1inPbd-0008WF-8I@amboise>
X-Spam-Score: -23.8
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This fixes building spice-gtk on Debian 10. Signed-off-by:
 Francois Gouget <fgouget@codeweavers.com> --- See
 https://github.com/mesonbuild/meson/issues/4720
 Content analysis details:   (-23.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -20 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -0.5 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.5 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fgouget[at]free.fr)
 1.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.0 AWL AWL: Adjusted score from AWL reputation of From: address
Subject: [Spice-devel] [PATCH client] build: Avoid line continuation for
 compatibility with older Meson
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This fixes building spice-gtk on Debian 10.

Signed-off-by: Francois Gouget <fgouget@codeweavers.com>
---

See https://github.com/mesonbuild/meson/issues/4720

 tests/meson.build | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/tests/meson.build b/tests/meson.build
index 57bd2cc5..bc5be5fd 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -23,9 +23,8 @@ endif
 
 # create a static library from a shared one extracting all objects
 # this allows to rewrite part of it if necessary for mocking
-test_lib = \
-  static_library('test-lib',
-                 objects : spice_client_glib_lib.extract_all_objects())
+test_lib = static_library('test-lib',
+                          objects : spice_client_glib_lib.extract_all_objects())
 
 foreach src : tests_sources
   name = 'test-@0@'.format(src).split('.')[0]
-- 
2.20.1

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
