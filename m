Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3798E254663
	for <lists+spice-devel@lfdr.de>; Thu, 27 Aug 2020 16:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D59B06E0BF;
	Thu, 27 Aug 2020 14:03:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9926E6E0BF
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Aug 2020 14:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598537028;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=JwSWlxJ6imPWXL8CNqzeR1O8eqFEQgNDrI39ZtYVEbA=;
 b=DMWwXQwUJU4i02bXlTzANO6IdcdzrxWY8vkgIoftRUIAjcJEV1t3Iy8m8xoR+S+9ru9gKe
 ZqmHNK988tVM1aYgJRbnPlKRRNALhzmzHULHK3hdSWVMBI95W1zVeDbgW4O/JWDPvT5ynN
 yST7Tly6R397M8BB2oo0M4uTzEoL7UE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-296-C6552hEqPnySltPNligS5g-1; Thu, 27 Aug 2020 10:03:20 -0400
X-MC-Unique: C6552hEqPnySltPNligS5g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC8311054F9B
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Aug 2020 14:03:19 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.2])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BC63196F3;
 Thu, 27 Aug 2020 14:03:15 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org,
	virt-tools-list@redhat.com
Date: Thu, 27 Aug 2020 15:03:11 +0100
Message-Id: <20200827140311.90590-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH] win32: Enable some additional security flags
 for Windows executables
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

Enable ASLR and NX options.

Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
---
 src/Makefile.am | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/src/Makefile.am b/src/Makefile.am
index 3a5d90d..4dbc03f 100644
--- a/src/Makefile.am
+++ b/src/Makefile.am
@@ -131,6 +131,20 @@ COMMON_CFLAGS = \
 	$(WARN_CFLAGS) \
 	$(NULL)
 
+if OS_WIN32
+# binutils does not take into account entry point when
+# -pie is used so we need to provide it manually
+# ENTRY_PREFIX is empty for x86_64, underscore ("_") otherwise
+ENTRY_PREFIX := $(if $(filter x86_64,$(host_cpu)),,_)
+
+# --dynamicbase to enable ASLR protection
+# --nxcompat is to enable NX protection
+# -pie as --dynamicbase requires relocations
+LDFLAGS_SECURITY_COMMON = -Wl,--dynamicbase,-pie,--nxcompat
+LDFLAGS_SECURITY_GUI = $(LDFLAGS_SECURITY_COMMON) -Wl,-e,$(ENTRY_PREFIX)WinMainCRTStartup -mwindows
+LDFLAGS_SECURITY_CUI = $(LDFLAGS_SECURITY_COMMON) -Wl,-e,$(ENTRY_PREFIX)mainCRTStartup -mconsole
+endif
+
 libvirt_viewer_util_la_LIBADD = \
 	$(GLIB2_LIBS) \
 	$(GTK_LIBS) \
@@ -171,6 +185,9 @@ virt_viewer_LDADD = \
 	libvirt-viewer-util.la \
 	libvirt-viewer.la \
 	$(NULL)
+if OS_WIN32
+virt_viewer_LDFLAGS += $(LDFLAGS_SECURITY_GUI)
+endif
 endif
 
 
@@ -194,7 +211,7 @@ remote_viewer_LDADD = \
 	$(NULL)
 
 if OS_WIN32
-remote_viewer_LDFLAGS += -Wl,--subsystem,windows
+remote_viewer_LDFLAGS += $(LDFLAGS_SECURITY_GUI)
 endif
 
 VIRT_VIEWER_RES = virt-viewer.rc virt-viewer.manifest
@@ -205,7 +222,7 @@ EXTRA_DIST += $(VIRT_VIEWER_RES)
 if OS_WIN32
 bin_PROGRAMS += windows-cmdline-wrapper
 windows_cmdline_wrapper_SOURCES = windows-cmdline-wrapper.c
-windows_cmdline_wrapper_LDFLAGS = -lpsapi
+windows_cmdline_wrapper_LDFLAGS = -lpsapi $(LDFLAGS_SECURITY_CUI)
 
 virt-viewer_rc.$(OBJEXT): $(VIRT_VIEWER_RES) $(ICONDIR)/virt-viewer.ico
 	$(AM_V_GEN)$(WINDRES)				\
-- 
2.25.4

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
