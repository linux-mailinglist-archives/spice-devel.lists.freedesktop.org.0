Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A13D1632AE
	for <lists+spice-devel@lfdr.de>; Tue, 18 Feb 2020 21:11:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49E086EA7C;
	Tue, 18 Feb 2020 20:11:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97A796EA7C
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Feb 2020 20:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D5fnKpHeenp6l8AHbjxBpne/VzSnJkw5etNgt3F5c/k=; b=ibEgUUyjEG87J5xhBqaR26GwiA
 E/TEBxpWAG8sdA772Cvqk8CxSH/FpWGeZrD7z+8T4cdba495XX+HoAhLFXzZR1/RxIQElMaQirGpd
 XGovV/LDMW2d2Qfbg9h0nHWX9bOYg0uzkeUJsqUlCm8W9Wf4i0Wo1DnC0NkylTXldfSc=;
Received: from foghorn.codeweavers.com ([50.203.203.242]
 helo=localhost.localdomain)
 by mail.codeweavers.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <hverbeet@codeweavers.com>)
 id 1j48w7-0000F4-PJ
 for spice-devel@lists.freedesktop.org; Tue, 18 Feb 2020 13:53:40 -0600
From: Henri Verbeet <hverbeet@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 18 Feb 2020 13:53:31 -0600
Message-Id: <20200218195337.4080-2-hverbeet@codeweavers.com>
X-Mailer: git-send-email 2.11.0
Subject: [Spice-devel] [PATCH x11spice 2/8] Add .dirstamp to .gitignore.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Signed-off-by: Henri Verbeet <hverbeet@codeweavers.com>
---
 .gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.gitignore b/.gitignore
index aee6c93..7052d3f 100644
--- a/.gitignore
+++ b/.gitignore
@@ -11,6 +11,7 @@ install-sh
 missing
 
 .deps
+.dirstamp
 Makefile
 Makefile.in
 *.o
-- 
2.11.0

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
