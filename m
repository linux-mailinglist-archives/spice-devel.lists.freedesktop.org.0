Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC0A7A1253
	for <lists+spice-devel@lfdr.de>; Fri, 15 Sep 2023 02:33:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23FAF10E5B6;
	Fri, 15 Sep 2023 00:33:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8995310E14C
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 00:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694737982; x=1726273982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a6XrtpKOtLwn9chHCNbWaaCM4wrkxfExArDjCy8R8NU=;
 b=Q0U4LlrryoLZtoaUtNTzFNQwOXC8hCGeGzhnf3ASwByQtfl4MhRwBKjc
 V1Z2RK4TjLcObdy6QNqUh5Bh/PxMRJG38KGIrvB1QwMT9P1iJr4LY+snS
 153Xl3sK5yRFfRuAYjhuW5xmf4gjK352RHWLOaGOTGwVV/W5RCEA6KdJX
 fDor+aLSElsQnsfqxusrMYM9yk4FiFZYjnchDNkcXrPGlhwlcIJcu+2xR
 TKstvR8/cFy84a9wHFCUCy/jak5xJlmIlZxar1QMjuYnGSqaLUqZONgCs
 l1NuX97XrEms/erQmK2oYbU2Fi0qtzwnfB4gO5d71wcGVQNWQIDj/6W6M A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="359378158"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="359378158"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 17:33:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="918442352"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="918442352"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 17:33:01 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 14 Sep 2023 17:12:10 -0700
Message-Id: <20230915001215.531746-3-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230915001215.531746-1-vivek.kasireddy@intel.com>
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH] common: Add a udev helper to identify GPU
 Vendor
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
Cc: Dongwon Kim <dongwon.kim@intel.com>,
 Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Jin Chung Teng <jin.chung.teng@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Given that libudev is widely available on many distros, we can
use the relevant APIs to iterate over all the PCI devices on
any given system to identify if a GPU is available by looking
at the driver name associated with it.

This capability (identifying GPU Vendor) is useful to determine
whether to launch Gstreamer pipeline using h/w accelerated
plugins. On systems where libudev is not available (Windows),
we'd have to make this determination based on the availability
of the plugins in Gstreamer registry.

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Cc: Jin Chung Teng <jin.chung.teng@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 common/meson.build |  2 ++
 common/udev.c      | 60 ++++++++++++++++++++++++++++++++++++++++++++++
 common/udev.h      | 12 ++++++++++
 meson.build        |  7 ++++++
 4 files changed, 81 insertions(+)
 create mode 100644 common/udev.c
 create mode 100644 common/udev.h

diff --git a/common/meson.build b/common/meson.build
index 09e3ea7..63bd2db 100644
--- a/common/meson.build
+++ b/common/meson.build
@@ -39,6 +39,8 @@ spice_common_sources = [
   'snd_codec.h',
   'utils.c',
   'utils.h',
+  'udev.c',
+  'udev.h',
   'verify.h',
   'recorder.h'
 ]
diff --git a/common/udev.c b/common/udev.c
new file mode 100644
index 0000000..995a37e
--- /dev/null
+++ b/common/udev.c
@@ -0,0 +1,60 @@
+#include <config.h>
+
+#ifdef HAVE_UDEV
+#include <libudev.h>
+#include <stdbool.h>
+#include <string.h>
+#include "udev.h"
+
+#define INTEL_GFX_DRV_NAME "i915"
+
+static bool is_intel_gpu(const char *drv_name)
+{
+    return !strcmp(drv_name, INTEL_GFX_DRV_NAME);
+}
+
+GpuVendor spice_udev_detect_gpu()
+{
+    struct udev *udev;
+    struct udev_device *udev_dev;
+    struct udev_enumerate *udev_enum;
+    struct udev_list_entry *entry, *devices;
+    const char *path, *driver;
+    GpuVendor vendor = GPU_VENDOR_OTHER;
+
+    udev = udev_new();
+    if (!udev) {
+        return vendor;
+    }
+
+    udev_enum = udev_enumerate_new(udev);
+    if (udev_enum) {
+        udev_enumerate_add_match_subsystem(udev_enum, "pci");
+        udev_enumerate_scan_devices(udev_enum);
+        devices = udev_enumerate_get_list_entry(udev_enum);
+
+        udev_list_entry_foreach(entry, devices) {
+            path = udev_list_entry_get_name(entry);
+            udev_dev = udev_device_new_from_syspath(udev, path);
+
+            driver = udev_device_get_driver(udev_dev);
+            if (driver && is_intel_gpu(driver)) {
+                vendor = GPU_VENDOR_INTEL;
+                udev_device_unref(udev_dev);
+                break;
+            }
+            udev_device_unref(udev_dev);
+        }
+        udev_enumerate_unref(udev_enum);
+    }
+    udev_unref(udev);
+
+    return vendor;
+}
+#else
+GpuVendor spice_udev_detect_gpu()
+{
+    return GPU_VENDOR_UNKNOWN;
+}
+#endif
+
diff --git a/common/udev.h b/common/udev.h
new file mode 100644
index 0000000..f1ba0ec
--- /dev/null
+++ b/common/udev.h
@@ -0,0 +1,12 @@
+#ifndef H_SPICE_COMMON_UDEV
+#define H_SPICE_COMMON_UDEV
+
+typedef enum {
+    GPU_VENDOR_UNKNOWN,
+    GPU_VENDOR_OTHER,
+    GPU_VENDOR_INTEL,
+} GpuVendor;
+
+GpuVendor spice_udev_detect_gpu();
+
+#endif
diff --git a/meson.build b/meson.build
index eeccecd..cafbf03 100644
--- a/meson.build
+++ b/meson.build
@@ -147,6 +147,13 @@ if smartcard_dep.found()
   spice_common_config_data.set('USE_SMARTCARD', '1')
 endif
 
+#udev
+udev_dep = dependency('libudev')
+if udev_dep.found()
+  spice_common_deps += udev_dep
+  spice_common_config_data.set('HAVE_UDEV', '1')
+endif
+
 #
 # global C defines
 #
-- 
2.39.2

