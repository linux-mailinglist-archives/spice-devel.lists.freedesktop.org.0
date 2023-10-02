Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E13D7B4B2F
	for <lists+spice-devel@lfdr.de>; Mon,  2 Oct 2023 07:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECA8410E11D;
	Mon,  2 Oct 2023 05:41:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B62C10E11D
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Oct 2023 05:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696225264; x=1727761264;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/U3Q5cChWWuTI4iPTo6B6LCbvohpOEKwelzT+5kIOqE=;
 b=RZTcLZF0Msv7qtGVp7dH6cRlRhmFg6mAX6Y7aznHZB4EPltzJH9LZ7zo
 pLwVbIMLNBGDMtm+WvfrHj/k1+z7vCbfjEKPq0fc6CZlpP2N73LNOPLFl
 DuPFPfXEQNrC/kT40R5HoM6AEqsphlkthDOHhpTAI6Ql5aQiYpl8AUFW9
 Dv9UeGpQ9P4j0nS6nK5scwJTjeknrSNJIDM0h8yVVVoDV0jxPQKCtWd6d
 ejvqVgcsbAtdNvW4DuBRSAoGF1A6Nqhb7QdISvKHFaemn/vykWiZZLfNu
 eLgtLwNfGcNHauxoXqGkvEs00snwE/fNW3r/mG7tjfVfdLEvjy+YQUR2K A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="372935849"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="372935849"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 22:41:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="785682731"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="785682731"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 22:41:02 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Sun,  1 Oct 2023 22:20:23 -0700
Message-Id: <20231002052026.2994546-3-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231002052026.2994546-1-vivek.kasireddy@intel.com>
References: <20231002052026.2994546-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH] common: Add a udev helper to identify GPU
 Vendor (v2)
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
 Gerd Hoffmann <kraxel@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Given that libudev is widely available on many Linux distros, we
can use the relevant APIs to iterate over all the devices associated
with the drm subsystem to figure out if a specific vendor GPU
is available or not.

This capability (identifying GPU Vendor) is useful to determine
whether to launch Gstreamer pipeline using h/w accelerated
plugins. On systems where libudev is not available (Windows,
MacOS, etc) we'd have to make this determination based on the
availability of the relevant plugins in the Gstreamer registry.

v2: (Frediano)
- Added autoconf support
- Added license text
- Added pragma once and SPICE_BEGIN/END_DECLS to the header
- Checked the vendor id udev attribute of the pci device to
  determine a vendor GPU instead of checking the driver name

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Cc: Jin Chung Teng <jin.chung.teng@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 common/meson.build |  2 ++
 common/udev.c      | 78 ++++++++++++++++++++++++++++++++++++++++++++++
 common/udev.h      | 33 ++++++++++++++++++++
 configure.ac       |  1 +
 m4/spice-deps.m4   | 12 +++++++
 meson.build        |  7 +++++
 6 files changed, 133 insertions(+)
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
index 0000000..3985fdd
--- /dev/null
+++ b/common/udev.c
@@ -0,0 +1,78 @@
+/*
+   Copyright (C) 2023 Intel Corporation.
+
+   This library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   This library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with this library; if not, see <http://www.gnu.org/licenses/>.
+*/
+
+#include <config.h>
+
+#ifdef HAVE_UDEV
+#include <libudev.h>
+#include <stdbool.h>
+#include <stdlib.h>
+#include "udev.h"
+
+GpuVendor spice_udev_detect_gpu(long gpu_vendor)
+{
+    struct udev *udev;
+    struct udev_device *drm_dev, *pci_dev;
+    struct udev_enumerate *udev_enum;
+    struct udev_list_entry *entry, *devices;
+    const char *path, *vendor_id;
+    GpuVendor vendor = VENDOR_GPU_NOTDETECTED;
+
+    udev = udev_new();
+    if (!udev) {
+        return vendor;
+    }
+
+    udev_enum = udev_enumerate_new(udev);
+    if (udev_enum) {
+        udev_enumerate_add_match_subsystem(udev_enum, "drm");
+        udev_enumerate_add_match_sysname(udev_enum, "card[0-9]");
+        udev_enumerate_scan_devices(udev_enum);
+        devices = udev_enumerate_get_list_entry(udev_enum);
+
+        udev_list_entry_foreach(entry, devices) {
+            path = udev_list_entry_get_name(entry);
+            drm_dev = udev_device_new_from_syspath(udev, path);
+            if (!drm_dev) {
+                continue;
+            }
+
+            pci_dev = udev_device_get_parent_with_subsystem_devtype(drm_dev,
+                                                                    "pci", NULL);
+            if (pci_dev) {
+                vendor_id = udev_device_get_sysattr_value(pci_dev, "vendor");
+                if (vendor_id && strtol(vendor_id, NULL, 16) == gpu_vendor) {
+                    vendor = VENDOR_GPU_DETECTED;
+                    udev_device_unref(drm_dev);
+                    break;
+                }
+            }
+            udev_device_unref(drm_dev);
+        }
+        udev_enumerate_unref(udev_enum);
+    }
+    udev_unref(udev);
+
+    return vendor;
+}
+#else
+GpuVendor spice_udev_detect_gpu(long gpu_vendor)
+{
+    return VENDOR_GPU_UNKNOWN;
+}
+#endif
+
diff --git a/common/udev.h b/common/udev.h
new file mode 100644
index 0000000..6a3d068
--- /dev/null
+++ b/common/udev.h
@@ -0,0 +1,33 @@
+/*
+   Copyright (C) 2023 Intel Corporation.
+
+   This library is free software; you can redistribute it and/or
+   modify it under the terms of the GNU Lesser General Public
+   License as published by the Free Software Foundation; either
+   version 2.1 of the License, or (at your option) any later version.
+
+   This library is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+   Lesser General Public License for more details.
+
+   You should have received a copy of the GNU Lesser General Public
+   License along with this library; if not, see <http://www.gnu.org/licenses/>.
+*/
+
+#pragma once
+#include <spice/macros.h>
+
+#define INTEL_VENDOR_ID 0x8086
+
+typedef enum {
+    VENDOR_GPU_UNKNOWN,
+    VENDOR_GPU_DETECTED,
+    VENDOR_GPU_NOTDETECTED,
+} GpuVendor;
+
+SPICE_BEGIN_DECLS
+
+GpuVendor spice_udev_detect_gpu(long gpu_vendor);
+
+SPICE_END_DECLS
diff --git a/configure.ac b/configure.ac
index 0d4c22b..42e873d 100644
--- a/configure.ac
+++ b/configure.ac
@@ -61,6 +61,7 @@ SPICE_CHECK_GLIB2
 SPICE_CHECK_OPUS
 SPICE_CHECK_OPENSSL
 SPICE_CHECK_GDK_PIXBUF
+SPICE_CHECK_UDEV
 
 SPICE_COMMON_CFLAGS='$(PIXMAN_CFLAGS) $(SMARTCARD_CFLAGS) $(GLIB2_CFLAGS) $(OPUS_CFLAGS) $(OPENSSL_CFLAGS)'
 SPICE_COMMON_CFLAGS="$SPICE_COMMON_CFLAGS -DG_LOG_DOMAIN=\\\"Spice\\\""
diff --git a/m4/spice-deps.m4 b/m4/spice-deps.m4
index e11fc4e..6a07ee6 100644
--- a/m4/spice-deps.m4
+++ b/m4/spice-deps.m4
@@ -302,6 +302,18 @@ AC_DEFUN([SPICE_CHECK_OPENSSL], [
     PKG_CHECK_MODULES(OPENSSL, openssl)
 ])
 
+# SPICE_CHECK_UDEV
+# -----------------
+# Check for the availability of libudev. If found, it will help to determine
+# if a given vendor GPU is available or not.
+#------------------
+AC_DEFUN([SPICE_CHECK_UDEV], [
+    PKG_CHECK_MODULES([UDEV], [libudev], [have_udev=yes],[have_udev=no])
+    if test "x$have_udev" = "xyes"; then
+      AC_DEFINE([HAVE_UDEV], 1, [whether libudev is available to identify GPU])
+    fi
+])
+
 # SPICE_CHECK_INSTRUMENTATION
 # -----------------
 # Check for the availability of an instrumentation library.
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

