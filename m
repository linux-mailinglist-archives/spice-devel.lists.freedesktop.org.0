Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD10C1632A8
	for <lists+spice-devel@lfdr.de>; Tue, 18 Feb 2020 21:11:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 658596E3F5;
	Tue, 18 Feb 2020 20:10:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8245D6E3F5
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Feb 2020 20:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dzUDywSPEEXdePajNr7tfZtFjjHc9+STEp4Ugq/wIRk=; b=qcfZo4p/jmlyqp7f4Iuvy3scBa
 qU65zP1xN+ngt97H3OPH7rf8f8JcOc5YG3GfJqFP9mIKFAFZASCRAGsMLqJ7Lw0B9qhlY/WO4L8wC
 ZPcnToRQwrq+vT6rS1RyVx7pH4/P14CHDPlXdv+BNr24M3bRiFg1/YWyH6DsMl3AEciU=;
Received: from foghorn.codeweavers.com ([50.203.203.242]
 helo=localhost.localdomain)
 by mail.codeweavers.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <hverbeet@codeweavers.com>)
 id 1j48wA-0000F4-Cz
 for spice-devel@lists.freedesktop.org; Tue, 18 Feb 2020 13:53:42 -0600
From: Henri Verbeet <hverbeet@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 18 Feb 2020 13:53:34 -0600
Message-Id: <20200218195337.4080-5-hverbeet@codeweavers.com>
X-Mailer: git-send-email 2.11.0
Subject: [Spice-devel] [PATCH x11spice 5/8] Provide support for outputs and
 crtcs.
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

From: Jeremy White <jwhite@codeweavers.com>

This allow us to size and dynamically resize the dummy driver.

Signed-off-by: Jeremy White <jwhite@codeweavers.com>
Acked-by: Henri Verbeet <hverbeet@codeweavers.com>
---
 spice-video-dummy/src/Makefile.am         |   2 +-
 spice-video-dummy/src/display.c           | 425 ++++++++++++++++++++++++++++++
 spice-video-dummy/src/dri2.c              |   5 +-
 spice-video-dummy/src/dummy.h             |  33 +++
 spice-video-dummy/src/dummy_cursor.c      | 101 -------
 spice-video-dummy/src/present.c           | 125 ++++++++-
 spice-video-dummy/src/spicedummy_driver.c |  53 ++--
 7 files changed, 599 insertions(+), 145 deletions(-)
 create mode 100644 spice-video-dummy/src/display.c
 delete mode 100644 spice-video-dummy/src/dummy_cursor.c

diff --git a/spice-video-dummy/src/Makefile.am b/spice-video-dummy/src/Makefile.am
index 1dc4df8..8c6e132 100644
--- a/spice-video-dummy/src/Makefile.am
+++ b/spice-video-dummy/src/Makefile.am
@@ -35,7 +35,7 @@ spicedummy_drv_ladir = @moduledir@/drivers
 spicedummy_drv_la_SOURCES = \
          compat-api.h \
          dri2.c \
-         dummy_cursor.c \
          spicedummy_driver.c \
+         display.c \
          dummy.h \
          present.c
diff --git a/spice-video-dummy/src/display.c b/spice-video-dummy/src/display.c
new file mode 100644
index 0000000..ef55114
--- /dev/null
+++ b/spice-video-dummy/src/display.c
@@ -0,0 +1,425 @@
+/*
+ * Copyright 2019 Jeremy White
+ *
+ * Permission to use, copy, modify, distribute, and sell this software and its
+ * documentation for any purpose is hereby granted without fee, provided that
+ * the above copyright notice appear in all copies and that both that copyright
+ * notice and this permission notice appear in supporting documentation, and
+ * that the name of the copyright holders not be used in advertising or
+ * publicity pertaining to distribution of the software without specific,
+ * written prior permission.  The copyright holders make no representations
+ * about the suitability of this software for any purpose.  It is provided "as
+ * is" without express or implied warranty.
+ *
+ * THE COPYRIGHT HOLDERS DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
+ * INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO
+ * EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY SPECIAL, INDIRECT OR
+ * CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE,
+ * DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
+ * TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE
+ * OF THIS SOFTWARE.
+ */
+
+#ifdef HAVE_CONFIG_H
+#include "config.h"
+#endif
+
+#include "dummy.h"
+
+#define DUMMY_DEFAULT_WIDTH 1024
+#define DUMMY_DEFAULT_HEIGHT 768
+
+static Bool
+crtc_resize(ScrnInfoRec * scrn, int width, int height)
+{
+    PixmapRec *pixmap;
+    ScreenRec *screen;
+
+    screen = xf86ScrnToScreen(scrn);
+    pixmap = screen->GetScreenPixmap(screen);
+
+    screen->ModifyPixmapHeader(pixmap, width, height, -1, -1, -1, NULL);
+
+    scrn->virtualX = width;
+    scrn->virtualY = height;
+
+    return TRUE;
+}
+
+static const xf86CrtcConfigFuncsRec crtc_config_funcs = {
+    crtc_resize
+};
+
+static void
+crtc_dpms(xf86CrtcPtr crtc, int mode)
+{
+    xf86DrvMsg(crtc->scrn->scrnIndex, X_INFO, "%s: STUB dpms %d\n", __func__, mode);
+}
+
+static Bool
+crtc_set_mode_major(xf86CrtcPtr crtc, DisplayModePtr mode, Rotation rotation, int x, int y)
+{
+    struct dummy_crtc_state *state;
+    uint64_t ust;
+
+    xf86DrvMsg(crtc->scrn->scrnIndex, X_INFO, "%s: mode %s, x %d, y %d\n", __func__, mode->name, x,
+               y);
+
+    state = crtc->driver_private;
+    ust = dummy_gettime_us();
+    if (state->interval)
+        state->msc_base += ((ust - state->ust_base) / state->interval);
+    state->ust_base = ust;
+    state->interval =
+        (((uint64_t) 1000 * mode->HTotal * mode->VTotal) + (mode->Clock / 2)) / mode->Clock;
+
+    crtc->mode = *mode;
+    crtc->x = x;
+    crtc->y = y;
+    crtc->rotation = rotation;
+#if XORG_VERSION_CURRENT >= XORG_VERSION_NUMERIC (1, 5, 99, 0, 0)
+    crtc->transformPresent = FALSE;
+#endif
+
+    return TRUE;
+}
+
+static void
+crtc_destroy(xf86CrtcPtr crtc)
+{
+    xf86DrvMsg(crtc->scrn->scrnIndex, X_INFO, "%s\n", __func__);
+
+    if (crtc->driver_private) {
+        dummy_present_free_vblanks(crtc);
+        free(crtc->driver_private);
+    }
+    crtc->driver_private = NULL;
+}
+
+static void
+dummy_crtc_set_cursor_colors(xf86CrtcPtr crtc, int bg, int fg)
+{
+}
+
+static void
+dummy_crtc_set_cursor_position(xf86CrtcPtr crtc, int x, int y)
+{
+}
+
+static void
+dummy_crtc_hide_cursor(xf86CrtcPtr crtc)
+{
+}
+
+#if XF86_CRTC_VERSION > 7
+static Bool
+#else
+static void
+#endif
+dummy_crtc_show_cursor(xf86CrtcPtr crtc)
+{
+#if XF86_CRTC_VERSION > 7
+    return TRUE;
+#endif
+}
+
+static Bool
+dummy_crtc_load_cursor_argb_check(xf86CrtcPtr crtc, CARD32 * image)
+{
+    return TRUE;
+}
+
+static const xf86CrtcFuncsRec crtc_funcs = {
+    .dpms = crtc_dpms,
+    .save = NULL,
+    .restore = NULL,
+    .lock = NULL,
+    .unlock = NULL,
+    .mode_fixup = NULL,
+    .prepare = NULL,
+    .mode_set = NULL,
+    .commit = NULL,
+    .gamma_set = NULL,
+    .shadow_allocate = NULL,
+    .shadow_create = NULL,
+    .shadow_destroy = NULL,
+    .set_cursor_colors = dummy_crtc_set_cursor_colors,
+    .set_cursor_position = dummy_crtc_set_cursor_position,
+#if XF86_CRTC_VERSION > 7
+    .show_cursor = NULL,
+    .show_cursor_check = dummy_crtc_show_cursor,
+#else
+    .show_cursor = dummy_crtc_show_cursor,
+#endif
+    .hide_cursor = dummy_crtc_hide_cursor,
+    .load_cursor_image = NULL,
+    .load_cursor_image_check = NULL,
+    .load_cursor_argb = NULL,
+    .load_cursor_argb_check = dummy_crtc_load_cursor_argb_check,
+    .destroy = crtc_destroy,
+    .set_mode_major = crtc_set_mode_major,
+    .set_origin = NULL,
+    .set_scanout_pixmap = NULL,
+};
+
+void
+crtc_config_init(ScrnInfoPtr pScrn)
+{
+    xf86CrtcConfigInit(pScrn, &crtc_config_funcs);
+}
+
+void
+crtc_create(ScrnInfoPtr pScrn)
+{
+    struct dummy_crtc_state *state;
+    xf86CrtcRec *crtc;
+
+    crtc = xf86CrtcCreate(pScrn, &crtc_funcs);
+
+    state = malloc(sizeof(*state));
+    state->ust_base = 0;
+    state->msc_base = 0;
+    state->interval = 0;
+    xorg_list_init(&state->vblank_queue);
+    xorg_list_init(&state->vblank_free);
+    state->vblank_timer = NULL;
+    crtc->driver_private = state;
+
+    /*
+     * Set the CRTC parameters for all of the modes based on the type
+     * of mode, and the chipset's interlace requirements.
+     *
+     * Calling this is required if the mode->Crtc* values are used by the
+     * driver and if the driver doesn't provide code to set them.  They
+     * are not pre-initialised at all.
+     */
+    xf86SetCrtcForModes(pScrn, 0);
+
+    xf86CrtcSetSizeRange(pScrn, 320, 200, pScrn->display->virtualX, pScrn->display->virtualY);
+}
+
+/**
+ * Turns the output on/off, or sets intermediate power levels if available.
+ *
+ * Unsupported intermediate modes drop to the lower power setting.  If the
+ * mode is DPMSModeOff, the output must be disabled, as the DPLL may be
+ * disabled afterwards.
+ */
+static void
+output_dpms(xf86OutputPtr output, int mode)
+{
+    xf86DrvMsg(output->scrn->scrnIndex, X_INFO, "%s: STUB dpms %d\n", __func__, mode);
+}
+
+/**
+ * Callback for testing a video mode for a given output.
+ *
+ * This function should only check for cases where a mode can't be supported
+ * on the output specifically, and not represent generic CRTC limitations.
+ *
+ * \return MODE_OK if the mode is valid, or another MODE_* otherwise.
+ */
+static int
+output_mode_valid(xf86OutputPtr output, DisplayModePtr pMode)
+{
+    return MODE_OK;
+}
+
+/* This is copied from xf86Crtc.c/GuessRangeFromModes.  Essentially, we want
+   all of the default modes to be considered within sync range.  The normal
+   xf86InitialConfiguration will use this, but then discard the sync ranges.
+*/
+static void
+output_guess_ranges_from_modes(MonPtr mon, DisplayModePtr mode)
+{
+    if (!mon || !mode)
+        return;
+
+    mon->nHsync = 1;
+    mon->hsync[0].lo = 1024.0;
+    mon->hsync[0].hi = 0.0;
+
+    mon->nVrefresh = 1;
+    mon->vrefresh[0].lo = 1024.0;
+    mon->vrefresh[0].hi = 0.0;
+
+    while (mode) {
+        if (!mode->HSync)
+            mode->HSync = ((float) mode->Clock) / ((float) mode->HTotal);
+
+        if (!mode->VRefresh)
+            mode->VRefresh = (1000.0 * ((float) mode->Clock)) /
+                ((float) (mode->HTotal * mode->VTotal));
+
+        if (mode->HSync < mon->hsync[0].lo)
+            mon->hsync[0].lo = mode->HSync;
+
+        if (mode->HSync > mon->hsync[0].hi)
+            mon->hsync[0].hi = mode->HSync;
+
+        if (mode->VRefresh < mon->vrefresh[0].lo)
+            mon->vrefresh[0].lo = mode->VRefresh;
+
+        if (mode->VRefresh > mon->vrefresh[0].hi)
+            mon->vrefresh[0].hi = mode->VRefresh;
+
+        mode = mode->next;
+    }
+
+    /* stretch out the bottom to fit 640x480@60 */
+    if (mon->hsync[0].lo > 31.0)
+        mon->hsync[0].lo = 31.0;
+    if (mon->vrefresh[0].lo > 58.0)
+        mon->vrefresh[0].lo = 58.0;
+}
+
+/**
+ * Probe for a connected output, and return detect_status.
+ */
+static xf86OutputStatus
+output_detect(xf86OutputPtr output)
+{
+    xf86DrvMsg(output->scrn->scrnIndex, X_INFO, "%s: STUB detect\n", __func__);
+    return XF86OutputStatusConnected;
+}
+
+static DisplayModePtr
+output_create_mode(ScrnInfoPtr pScrn, int width, int height, int type)
+{
+    DisplayModePtr mode;
+
+    mode = xnfcalloc(1, sizeof(DisplayModeRec));
+
+    mode->status = MODE_OK;
+    mode->type = type;
+    mode->HDisplay = width;
+    mode->HSyncStart = (width * 105 / 100 + 7) & ~7;
+    mode->HSyncEnd = (width * 115 / 100 + 7) & ~7;
+    mode->HTotal = (width * 130 / 100 + 7) & ~7;
+    mode->VDisplay = height;
+    mode->VSyncStart = height + 1;
+    mode->VSyncEnd = height + 4;
+    mode->VTotal = height * 1035 / 1000;
+    mode->Clock = mode->HTotal * mode->VTotal * 60 / 1000;
+    mode->Flags = V_NHSYNC | V_PVSYNC;
+
+    xf86SetModeDefaultName(mode);
+    xf86SetModeCrtc(mode, pScrn->adjustFlags);  /* needed? xf86-video-modesetting does this */
+
+    return mode;
+}
+
+static void
+output_check_modes(ScrnInfoPtr pScrn, DisplayModePtr modes)
+{
+    int preferred_found = 0;
+    int virtual_found = 0;
+    DisplayModePtr mode = modes;
+
+    while (mode) {
+        if (mode->HDisplay == DUMMY_DEFAULT_WIDTH && mode->VDisplay == DUMMY_DEFAULT_HEIGHT) {
+            mode->type |= M_T_PREFERRED;
+            preferred_found++;
+        }
+        if (mode->HDisplay == pScrn->display->virtualX &&
+            mode->VDisplay == pScrn->display->virtualY) {
+            virtual_found = 0;
+        }
+
+        mode->type |= M_T_DRIVER;
+        mode = mode->next;
+    }
+
+    if (preferred_found == 0) {
+        mode = output_create_mode(pScrn, DUMMY_DEFAULT_WIDTH,
+                                  DUMMY_DEFAULT_HEIGHT, M_T_DRIVER | M_T_PREFERRED);
+        xf86ModesAdd(modes, mode);
+    }
+
+    if (DUMMY_DEFAULT_WIDTH == pScrn->display->virtualX &&
+        DUMMY_DEFAULT_HEIGHT == pScrn->display->virtualY) {
+        virtual_found++;
+    }
+
+    if (virtual_found == 0) {
+        mode = output_create_mode(pScrn, pScrn->display->virtualX,
+                                  pScrn->display->virtualY, M_T_DRIVER);
+        xf86ModesAdd(modes, mode);
+    }
+}
+
+/**
+ * Query the device for the modes it provides.
+ *
+ * This function may also update MonInfo, mm_width, and mm_height.
+ *
+ * \return singly-linked list of modes or NULL if no modes found.
+ */
+static DisplayModePtr
+output_get_modes(xf86OutputPtr output)
+{
+    DisplayModePtr modes = output->driver_private;
+
+    xf86DrvMsg(output->scrn->scrnIndex, X_INFO, "%s: STUB %p\n", __func__, modes);
+
+    return xf86DuplicateModes(output->scrn, modes);
+}
+
+/**
+ * Callback to get current CRTC for a given output
+ */
+static xf86CrtcPtr
+output_get_crtc(xf86OutputPtr output)
+{
+    return output->crtc;
+}
+
+/**
+ * Clean up driver-specific bits of the output
+ */
+static void
+output_destroy(xf86OutputPtr output)
+{
+    DisplayModePtr modes = output->driver_private;
+
+    output->driver_private = NULL;
+    while (modes)
+        xf86DeleteMode(&modes, modes);
+}
+
+xf86OutputFuncsRec output_funcs = {
+    .create_resources = NULL,
+    .dpms = output_dpms,
+    .save = NULL,
+    .restore = NULL,
+    .mode_valid = output_mode_valid,
+    .mode_fixup = NULL,         /* Not required if crtc provides set_major_mode */
+    .prepare = NULL,
+    .commit = NULL,
+    .mode_set = NULL,
+    .detect = output_detect,
+    .get_modes = output_get_modes,
+
+#ifdef RANDR_12_INTERFACE
+    .set_property = NULL,
+#endif
+#ifdef RANDR_13_INTERFACE
+    .get_property = NULL,
+#endif
+#ifdef RANDR_GET_CRTC_INTERFACE
+    .get_crtc = output_get_crtc,
+#endif
+    .destroy = output_destroy,
+};
+
+void
+output_pre_init(ScrnInfoPtr pScrn)
+{
+    DisplayModePtr modes;
+    xf86OutputPtr output = xf86OutputCreate(pScrn, &output_funcs, "SPICE-0");
+    output->possible_crtcs = (1 << 0);
+    modes = xf86GetDefaultModes();
+    output_check_modes(pScrn, modes);
+    output_guess_ranges_from_modes(output->scrn->monitor, modes);
+    output->driver_private = modes;
+}
diff --git a/spice-video-dummy/src/dri2.c b/spice-video-dummy/src/dri2.c
index 2d3f4c0..ea498da 100644
--- a/spice-video-dummy/src/dri2.c
+++ b/spice-video-dummy/src/dri2.c
@@ -219,8 +219,9 @@ dummy_dri2_copy_region(DrawableRec * drawable, RegionRec * region,
 static int
 dummy_dri2_get_msc(DrawableRec * drawable, CARD64 * ust, CARD64 * msc)
 {
-    *ust = dummy_gettime_us();
-    *msc = 0;
+    ScrnInfoRec *scrn = xf86ScreenToScrn(drawable->pScreen);
+
+    dummy_get_ust_msc(xf86CompatRRCrtc(scrn), ust, msc);
 
     return TRUE;
 }
diff --git a/spice-video-dummy/src/dummy.h b/spice-video-dummy/src/dummy.h
index dc4ab92..79d1a9e 100644
--- a/spice-video-dummy/src/dummy.h
+++ b/spice-video-dummy/src/dummy.h
@@ -4,6 +4,7 @@
 #include "xf86_OSproc.h"
 
 #include "xf86Cursor.h"
+#include "xf86Crtc.h"
 
 #ifdef XvExtension
 #include "xf86xv.h"
@@ -35,6 +36,14 @@ extern void DUMMYHideCursor(ScrnInfoPtr pScrn);
 void dummy_dri2_close_screen(ScreenRec * screen);
 Bool dummy_dri2_screen_init(ScreenRec * screen);
 Bool dummy_present_screen_init(ScreenRec * screen);
+void dummy_present_free_vblanks(xf86CrtcPtr crtc);
+
+/* in crtc.c */
+void crtc_config_init(ScrnInfoPtr scrn);
+void crtc_create(ScrnInfoPtr scrn);
+
+/* in output.c */
+void output_pre_init(ScrnInfoPtr scrn);
 
 /* globals */
 typedef struct _color {
@@ -63,6 +72,16 @@ typedef struct dummyRec {
     int fd;
 } DUMMYRec, *DUMMYPtr;
 
+struct dummy_crtc_state {
+    uint64_t ust_base;
+    uint64_t msc_base;
+    uint64_t interval;
+
+    struct xorg_list vblank_queue;
+    struct xorg_list vblank_free;
+    OsTimerPtr vblank_timer;
+};
+
 /* The privates of the DUMMY driver */
 #define DUMMYPTR(p)	((DUMMYPtr)((p)->driverPrivate))
 
@@ -77,3 +96,17 @@ dummy_gettime_us(void)
 
     return (uint64_t) tv.tv_sec * 1000000 + tv.tv_nsec / 1000;
 }
+
+static inline void
+dummy_get_ust_msc(const RRCrtcRec * crtc, uint64_t * ust, uint64_t * msc)
+{
+    struct dummy_crtc_state *state;
+    xf86CrtcRec *xf86_crtc;
+
+    xf86_crtc = crtc->devPrivate;
+    state = xf86_crtc->driver_private;
+    *ust = dummy_gettime_us();
+    *msc = state->msc_base;
+    if (state->interval)
+        *msc += (*ust - state->ust_base) / state->interval;
+}
diff --git a/spice-video-dummy/src/dummy_cursor.c b/spice-video-dummy/src/dummy_cursor.c
deleted file mode 100644
index 03de8eb..0000000
--- a/spice-video-dummy/src/dummy_cursor.c
+++ /dev/null
@@ -1,101 +0,0 @@
-#ifdef HAVE_CONFIG_H
-#include "config.h"
-#endif
-
-/* All drivers should typically include these */
-#include "xf86.h"
-#include "xf86_OSproc.h"
-
-#include "xf86Cursor.h"
-#include "cursorstr.h"
-/* Driver specific headers */
-#include "dummy.h"
-
-static void
-dummyShowCursor(ScrnInfoPtr pScrn)
-{
-    DUMMYPtr dPtr = DUMMYPTR(pScrn);
-
-    /* turn cursor on */
-    dPtr->DummyHWCursorShown = TRUE;
-}
-
-static void
-dummyHideCursor(ScrnInfoPtr pScrn)
-{
-    DUMMYPtr dPtr = DUMMYPTR(pScrn);
-
-    /*
-     * turn cursor off
-     *
-     */
-    dPtr->DummyHWCursorShown = FALSE;
-}
-
-#define MAX_CURS 64
-
-static void
-dummySetCursorPosition(ScrnInfoPtr pScrn, int x, int y)
-{
-    DUMMYPtr dPtr = DUMMYPTR(pScrn);
-
-    dPtr->cursorX = x;
-    dPtr->cursorY = y;
-}
-
-static void
-dummySetCursorColors(ScrnInfoPtr pScrn, int bg, int fg)
-{
-    DUMMYPtr dPtr = DUMMYPTR(pScrn);
-
-    dPtr->cursorFG = fg;
-    dPtr->cursorBG = bg;
-}
-
-static void
-dummyLoadCursorImage(ScrnInfoPtr pScrn, unsigned char *src)
-{
-}
-
-static Bool
-dummyUseHWCursor(ScreenPtr pScr, CursorPtr pCurs)
-{
-    DUMMYPtr dPtr = DUMMYPTR(xf86ScreenToScrn(pScr));
-    return (!dPtr->swCursor);
-}
-
-#if 0
-static unsigned char *
-dummyRealizeCursor(xf86CursorInfoPtr infoPtr, CursorPtr pCurs)
-{
-    return NULL;
-}
-#endif
-
-Bool
-DUMMYCursorInit(ScreenPtr pScreen)
-{
-    DUMMYPtr dPtr = DUMMYPTR(xf86ScreenToScrn(pScreen));
-
-    xf86CursorInfoPtr infoPtr;
-    infoPtr = xf86CreateCursorInfoRec();
-    if (!infoPtr) {
-        return FALSE;
-    }
-
-    dPtr->CursorInfo = infoPtr;
-
-    infoPtr->MaxHeight = 64;
-    infoPtr->MaxWidth = 64;
-    infoPtr->Flags = HARDWARE_CURSOR_TRUECOLOR_AT_8BPP;
-
-    infoPtr->SetCursorColors = dummySetCursorColors;
-    infoPtr->SetCursorPosition = dummySetCursorPosition;
-    infoPtr->LoadCursorImage = dummyLoadCursorImage;
-    infoPtr->HideCursor = dummyHideCursor;
-    infoPtr->ShowCursor = dummyShowCursor;
-    infoPtr->UseHWCursor = dummyUseHWCursor;
-/*     infoPtr->RealizeCursor = dummyRealizeCursor; */
-
-    return (xf86InitCursor(pScreen, infoPtr));
-}
diff --git a/spice-video-dummy/src/present.c b/spice-video-dummy/src/present.c
index 81fcc5b..ad29dc9 100644
--- a/spice-video-dummy/src/present.c
+++ b/spice-video-dummy/src/present.c
@@ -27,25 +27,109 @@
 #include "dummy.h"
 #include "present.h"
 
+#include <stdbool.h>
+
+struct dummy_vblank {
+    struct xorg_list list;
+    uint64_t event_id;
+    uint64_t target_msc;
+};
+
 static RRCrtcRec *
 dummy_present_get_crtc(WindowRec * window)
 {
-    return NULL;
+    ScrnInfoRec *scrn;
+
+    if (!(scrn = xf86ScreenToScrn(window->drawable.pScreen)))
+        return NULL;
+    return xf86CompatRRCrtc(scrn);
 }
 
 static int
 dummy_present_get_ust_msc(RRCrtcRec * crtc, CARD64 * ust, CARD64 * msc)
 {
-    *ust = dummy_gettime_us();
-    *msc = 0;
+    dummy_get_ust_msc(crtc, ust, msc);
 
     return Success;
 }
 
+static uint64_t
+dummy_present_ust_for_msc(RRCrtcRec * crtc, uint64_t msc)
+{
+    struct dummy_crtc_state *state;
+    xf86CrtcRec *xf86_crtc;
+
+    xf86_crtc = crtc->devPrivate;
+    state = xf86_crtc->driver_private;
+
+    return state->ust_base + (state->interval * (msc - state->msc_base));
+}
+
+static uint32_t
+dummy_do_timer(OsTimerPtr timer, uint32_t time, void *arg)
+{
+    struct dummy_vblank *vblank, *tmp;
+    struct dummy_crtc_state *state;
+    uint64_t ust, msc, next_ust;
+    xf86CrtcRec *xf86_crtc;
+    RRCrtcRec *crtc = arg;
+
+    xf86_crtc = crtc->devPrivate;
+    state = xf86_crtc->driver_private;
+
+    dummy_get_ust_msc(crtc, &ust, &msc);
+    xorg_list_for_each_entry_safe(vblank, tmp, &state->vblank_queue, list) {
+        if (msc < vblank->target_msc)
+            continue;
+
+        present_event_notify(vblank->event_id, ust, msc);
+        xorg_list_del(&vblank->list);
+        xorg_list_add(&vblank->list, &state->vblank_free);
+    }
+
+    if (!xorg_list_is_empty(&state->vblank_queue)) {
+        next_ust = dummy_present_ust_for_msc(crtc, msc + 1);
+        TimerSet(state->vblank_timer, TimerAbsolute, (next_ust / 1000) + 1, dummy_do_timer, arg);
+    }
+
+    return 0;
+}
+
 static int
-dummy_present_queue_vblank(RRCrtcRec * crtc, uint64_t event_id, uint64_t msc)
+dummy_present_queue_vblank(RRCrtcRec * crtc, uint64_t event_id, uint64_t target_msc)
 {
-    present_event_notify(event_id, dummy_gettime_us(), msc);
+    struct dummy_crtc_state *state;
+    uint64_t ust, target_ust, msc;
+    struct dummy_vblank *vblank;
+    xf86CrtcRec *xf86_crtc;
+    bool start = false;
+
+    xf86_crtc = crtc->devPrivate;
+    state = xf86_crtc->driver_private;
+
+    dummy_get_ust_msc(crtc, &ust, &msc);
+    if ((target_ust = dummy_present_ust_for_msc(crtc, target_msc)) <= ust)
+        target_ust = dummy_present_ust_for_msc(crtc, msc + 1);
+
+    if (!xorg_list_is_empty(&state->vblank_free)) {
+        vblank = xorg_list_first_entry(&state->vblank_free, struct dummy_vblank, list);
+        xorg_list_del(&vblank->list);
+    } else if (!(vblank = malloc(sizeof(*vblank)))) {
+        return BadAlloc;
+    }
+
+    vblank->event_id = event_id;
+    vblank->target_msc = target_msc;
+    if (xorg_list_is_empty(&state->vblank_queue))
+        start = true;
+    xorg_list_append(&vblank->list, &state->vblank_queue);
+    if (start
+        && !(state->vblank_timer =
+             TimerSet(NULL, TimerAbsolute, (target_ust / 1000) + 1, dummy_do_timer, crtc))) {
+        xorg_list_del(&vblank->list);
+        free(vblank);
+        return BadAlloc;
+    }
 
     return Success;
 }
@@ -53,6 +137,20 @@ dummy_present_queue_vblank(RRCrtcRec * crtc, uint64_t event_id, uint64_t msc)
 static void
 dummy_present_abort_vblank(RRCrtcRec * crtc, uint64_t event_id, uint64_t msc)
 {
+    struct dummy_vblank *vblank, *tmp;
+    struct dummy_crtc_state *state;
+    xf86CrtcRec *xf86_crtc;
+
+    xf86_crtc = crtc->devPrivate;
+    state = xf86_crtc->driver_private;
+
+    xorg_list_for_each_entry_safe(vblank, tmp, &state->vblank_queue, list) {
+        if (vblank->event_id == event_id) {
+            xorg_list_del(&vblank->list);
+            free(vblank);
+            break;
+        }
+    }
 }
 
 static void
@@ -100,3 +198,20 @@ dummy_present_screen_init(ScreenRec * screen)
 
     return present_screen_init(screen, &present_screen_info);
 }
+
+void
+dummy_present_free_vblanks(xf86CrtcPtr crtc)
+{
+    struct dummy_crtc_state *state;
+    struct dummy_vblank *vblank, *tmp;
+    state = crtc->driver_private;
+    xorg_list_for_each_entry_safe(vblank, tmp, &state->vblank_queue, list) {
+        xorg_list_del(&vblank->list);
+        free(vblank);
+    }
+
+    xorg_list_for_each_entry_safe(vblank, tmp, &state->vblank_free, list) {
+        xorg_list_del(&vblank->list);
+        free(vblank);
+    }
+}
diff --git a/spice-video-dummy/src/spicedummy_driver.c b/spice-video-dummy/src/spicedummy_driver.c
index 1efae47..18e96ce 100644
--- a/spice-video-dummy/src/spicedummy_driver.c
+++ b/spice-video-dummy/src/spicedummy_driver.c
@@ -429,6 +429,16 @@ DUMMYPreInit(ScrnInfoPtr pScrn, int flags)
         xf86DrvMsg(pScrn->scrnIndex, X_PROBED, "Max Clock: %d kHz\n", maxClock);
     }
 
+    /* Initialize an output and crtc */
+    crtc_config_init(pScrn);
+    output_pre_init(pScrn);
+    crtc_create(pScrn);
+
+    /* If monitor resolution is set on the command line, use it */
+    xf86SetDpi(pScrn, 0, 0);
+
+    xf86InitialConfiguration(pScrn, TRUE);
+
     pScrn->progClock = TRUE;
     /*
      * Setup the ClockRanges, which describe what clock ranges are available,
@@ -444,8 +454,6 @@ DUMMYPreInit(ScrnInfoPtr pScrn, int flags)
     clockRanges->doubleScanAllowed = TRUE;
 
     /* Subtract memory for HW cursor */
-
-
     {
         int apertureSize = (pScrn->videoRam * 1024);
         i = xf86ValidateModes(pScrn, pScrn->monitor->Modes,
@@ -468,35 +476,16 @@ DUMMYPreInit(ScrnInfoPtr pScrn, int flags)
         RETURN;
     }
 
-    /*
-     * Set the CRTC parameters for all of the modes based on the type
-     * of mode, and the chipset's interlace requirements.
-     *
-     * Calling this is required if the mode->Crtc* values are used by the
-     * driver and if the driver doesn't provide code to set them.  They
-     * are not pre-initialised at all.
-     */
-    xf86SetCrtcForModes(pScrn, 0);
-
     /* Set the current mode to the first in the list */
     pScrn->currentMode = pScrn->modes;
 
     /* Print the list of modes being used */
     xf86PrintModes(pScrn);
 
-    /* If monitor resolution is set on the command line, use it */
-    xf86SetDpi(pScrn, 0, 0);
-
     if (xf86LoadSubModule(pScrn, "fb") == NULL) {
         RETURN;
     }
 
-    if (!dPtr->swCursor) {
-        if (!xf86LoadSubModule(pScrn, "ramdac")) {
-            RETURN;
-        }
-    }
-
     /* We have no contiguous physical fb in physical memory */
     pScrn->memPhysBase = 0;
     pScrn->fbOffset = 0;
@@ -631,6 +620,9 @@ DUMMYScreenInit(SCREEN_INIT_ARGS_DECL)
     /* must be after RGB ordering fixed */
     fbPictureInit(pScreen, 0, 0);
 
+    if (!xf86CrtcScreenInit(pScreen))
+        return FALSE;
+
     if (dPtr->glamor && !glamor_init(pScreen, glamor_flags)) {
         xf86DrvMsg(pScrn->scrnIndex, X_ERROR,
                    "Failed to initialise glamor at ScreenInit() time.\n");
@@ -639,13 +631,7 @@ DUMMYScreenInit(SCREEN_INIT_ARGS_DECL)
 
     xf86SetBlackWhitePixels(pScreen);
 
-    if (dPtr->swCursor) {
-        xf86DrvMsg(pScrn->scrnIndex, X_CONFIG, "Using Software Cursor.\n");
-    }
-
     {
-
-
         BoxRec AvailFBArea;
         int lines = pScrn->videoRam * 1024 / (pScrn->displayWidth * (pScrn->bitsPerPixel >> 3));
         AvailFBArea.x1 = 0;
@@ -663,15 +649,10 @@ DUMMYScreenInit(SCREEN_INIT_ARGS_DECL)
 
     /* Initialise cursor functions */
     miDCInitialize(pScreen, xf86GetPointerScreenFuncs());
-
-
-    if (!dPtr->swCursor) {
-        /* HW cursor functions */
-        if (!DUMMYCursorInit(pScreen)) {
-            xf86DrvMsg(pScrn->scrnIndex, X_ERROR, "Hardware cursor initialization failed\n");
-            return FALSE;
-        }
-    }
+    if (!dPtr->swCursor)
+        xf86_cursors_init(pScreen, 64, 64, HARDWARE_CURSOR_UPDATE_UNHIDDEN | HARDWARE_CURSOR_ARGB);
+    else
+        xf86DrvMsg(pScrn->scrnIndex, X_CONFIG, "Using Software Cursor.\n");
 
     /* Initialise default colourmap */
     if (!miCreateDefColormap(pScreen)) {
-- 
2.11.0

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
