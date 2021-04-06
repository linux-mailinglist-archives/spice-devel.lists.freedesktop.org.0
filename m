Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B0E355993
	for <lists+spice-devel@lfdr.de>; Tue,  6 Apr 2021 18:50:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61B006E86D;
	Tue,  6 Apr 2021 16:50:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25F386E86A
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Apr 2021 16:50:41 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1617727839; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=4iz1LlmlAxL7coa8SFTkgP5i2/KqL3LhJGUZG1VAZVk=;
 b=L5tZkt+rlDCyrT8efCtQKJBhKGh9q351IliiiSSn59cNoZdCCtBTzlZgULJidbRhnWUi1d
 pSiO101PsAX5gb+nBDrG6F2QABukqptHIOMYHulfjodz4Pgaw0S1xGEEYxFbebe8UffWhk
 h/bGy/hxwAMMWEVSbXvrC00tMUu2WH4=
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id BC800B30E;
 Tue,  6 Apr 2021 16:50:39 +0000 (UTC)
From: Bruce Rogers <brogers@suse.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  6 Apr 2021 10:50:29 -0600
Message-Id: <20210406165029.447622-1-brogers@suse.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH] meson: Fix include directories needed to build
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

The directories needed for building isn't specified correctly.
Add the additional directories where header files reside.

Signed-off-by: Bruce Rogers <brogers@suse.com>
---
 meson.build | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meson.build b/meson.build
index 8b2ccca..a0e73b0 100644
--- a/meson.build
+++ b/meson.build
@@ -9,7 +9,7 @@ project('usbredir', 'c', 'cpp',
 
 summary_info = {'prefix': get_option('prefix')}
 
-usbredir_include_root_dir = include_directories('.')
+usbredir_include_root_dir = include_directories('.', 'usbredirhost', 'usbredirparser')
 
 cc_flags = [
     '-Wp,-D_FORTIFY_SOURCE=2',
-- 
2.30.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
