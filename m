Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A802B7CBC81
	for <lists+spice-devel@lfdr.de>; Tue, 17 Oct 2023 09:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C46410E115;
	Tue, 17 Oct 2023 07:43:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24FE310E115
 for <spice-devel@lists.freedesktop.org>; Tue, 17 Oct 2023 07:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697528625; x=1729064625;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=q/eQ8vCZm3OEcrl35yS4hbsQRT28ostFjvcktNE49ck=;
 b=GUqDaqWMbnF7ScnqibyVaXsNlVRPwYiEN0m9s+LOTgSMx2hMHSjddarc
 rZMdggUZw5GKjKm4ZyIImkXyIqU+SupSniJiMkObiYMNM+92UoWTU1lR5
 vrlNEYI8IvSt2SAmyqPcf5n45NZU4M8E8nmCA8uE9XlwYigCOP+rtpQ3G
 bdH1tSCpOkf/hvgvney/+cjujntglGV977oCJICiAGwQTaRRy9EomzOWv
 7+oj3PVfqD8Aarp+uPLJJMxc+V3qj7OpvweesEIL7GhGXLf7B1vLQYGGU
 VCATj3Pjk/qnBGcnVh78EHNqWBeVHcTsz3CIJ+wH0vFFmEUhIoYyTkyvF w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="416801206"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="416801206"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 00:43:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="785390493"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="785390493"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 00:43:43 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 17 Oct 2023 00:23:12 -0700
Message-Id: <20231017072312.4013460-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Spice-devel] [PATCH v3] common: Add a udev helper to identify GPU
 Vendor (v3)
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
- Add autoconf support
- Add license text
- Add pragma once and SPICE_BEGIN/END_DECLS to the header
- Check the vendor id udev attribute of the pci device to
  determine a vendor GPU instead of checking the driver name

v3: (fixups by Frediano)
- Fix broken autoconf support added in v2
- Fix compiler error on systems with no libudev support
- Return VENDOR_GPU_UNKNOWN if we cannot create udev instance
- Make libudev dependency optional
- Change the type of gpu_vendor from long to int as PCI vendor IDs
  are defined as 16-bit unsigned int

Cc: Frediano Ziglio <freddy77@gmail.com>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Marc-André Lureau <marcandre.lureau@redhat.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>
Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Cc: Jin Chung Teng <jin.chung.teng@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 common/Makefile.am |  3 ++
 common/meson.build |  2 ++
 common/udev.c      | 78 ++++++++++++++++++++++++++++++++++++++++++++++
 common/udev.h      | 33 ++++++++++++++++++++
 configure.ac       |  1 +
 m4/spice-deps.m4   | 12 +++++++
 meson.build        |  7 +++++
 7 files changed, 136 insertions(+)
 create mode 100644 common/udev.c
 create mode 100644 common/udev.h

diff --git a/common/Makefile.am b/common/Makefile.am
index 1318400..ffdd5c9 100644
--- a/common/Makefile.am
+++ b/common/Makefile.am
@@ -52,6 +52,8 @@ libspice_common_la_SOURCES =		\
 	rop3.h				\
 	snd_codec.c			\
 	snd_codec.h			\
+	udev.c				\
+	udev.h				\
 	utils.c				\
 	utils.h				\
 	verify.h			\
@@ -108,6 +110,7 @@ AM_CPPFLAGS =				\
 
 libspice_common_la_LIBADD =				\
 	$(SPICE_COMMON_LIBS)				\
+	$(UDEV_LIBS)				        \
 	$(NULL)
 
 MARSHALLERS_DEPS =					\
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
index 0000000..800a4ab
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
+#include "udev.h"
+
+#ifdef HAVE_UDEV
+#include <libudev.h>
+#include <stdbool.h>
+#include <stdlib.h>
+
+GpuVendor spice_udev_detect_gpu(int gpu_vendor)
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
+        return VENDOR_GPU_UNKNOWN;
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
+GpuVendor spice_udev_detect_gpu(int gpu_vendor)
+{
+    return VENDOR_GPU_UNKNOWN;
+}
+#endif
+
diff --git a/common/udev.h b/common/udev.h
new file mode 100644
index 0000000..389bb3f
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
+GpuVendor spice_udev_detect_gpu(int gpu_vendor);
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
index eeccecd..1018769 100644
--- a/meson.build
+++ b/meson.build
@@ -147,6 +147,13 @@ if smartcard_dep.found()
   spice_common_config_data.set('USE_SMARTCARD', '1')
 endif
 
+# udev check
+udev_dep = dependency('libudev', required : false)
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

