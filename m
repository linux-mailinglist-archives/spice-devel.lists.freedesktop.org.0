Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B022A50D3
	for <lists+spice-devel@lfdr.de>; Tue,  3 Nov 2020 21:22:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 285FF6E8C9;
	Tue,  3 Nov 2020 20:22:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from ciao.gmane.io (static.214.254.202.116.clients.your-server.de
 [116.202.254.214])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C17C6E8DB
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Nov 2020 20:22:53 +0000 (UTC)
Received: from list by ciao.gmane.io with local (Exim 4.92)
 (envelope-from <gcesd-spice-space-devel@m.gmane-mx.org>)
 id 1ka2pP-000920-4S
 for spice-devel@lists.freedesktop.org; Tue, 03 Nov 2020 21:22:51 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: spice-devel@lists.freedesktop.org
From: Ian Pilcher <arequipeno@gmail.com>
Date: Tue, 3 Nov 2020 14:22:45 -0600
Message-ID: <rnse6m$11ke$1@ciao.gmane.io>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
X-Mozilla-News-Host: news://news.gmane.org:119
Content-Language: en-US
Subject: [Spice-devel] [PATCH] desktop_layout: ignore unconnected video
 devices
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Currently, the Windows agent does not function properly if it detects a
non-QXL video adapter connected to the guest.  See:

   https://gitlab.freedesktop.org/spice/win32/vd_agent/-/issues/15
   https://gitlab.freedesktop.org/spice/win32/vd_agent/-/issues/13

This is true even when the non-QXL adapter does not have any displays
attached, such as when a physical GPU is passed through to the guest for
AI/ML workloads.

With this patch, the agent ignores the presence of unconnected video
outputs and the mouse works as expected.  If a display is connected to
a non-QXL adapter, the behavior is unchanged.  (Tested on Windows 10 Pro
x64.)

---
  vdagent/desktop_layout.cpp | 13 +++++++++++++
  1 file changed, 13 insertions(+)

diff --git a/vdagent/desktop_layout.cpp b/vdagent/desktop_layout.cpp
index 07074da..8b538a1 100644
--- a/vdagent/desktop_layout.cpp
+++ b/vdagent/desktop_layout.cpp
@@ -48,6 +48,16 @@ DesktopLayout::~DesktopLayout()
      delete _display_config;
  }

+static BOOL
+dev_has_monitor(DISPLAY_DEVICE &dev_info)
+{
+    DISPLAY_DEVICE mon_info;
+
+    ZeroMemory(&mon_info, sizeof(mon_info));
+    mon_info.cb = sizeof(mon_info);
+    return EnumDisplayDevices(dev_info.DeviceName, 0, &mon_info, 0);
+}
+
  static bool
  get_next_display(DWORD &dev_id, DISPLAY_DEVICE &dev_info)
  {
@@ -64,6 +74,9 @@ get_next_display(DWORD &dev_id, DISPLAY_DEVICE &dev_info)
          if (wcsstr(dev_info.DeviceString, L"Citrix Indirect Display")) {
              continue;
          }
+        if (!dev_has_monitor(dev_info)) {
+            continue;
+        }
          return true;
      }
      return false;
-- 
2.26.2

-- 
========================================================================
                  In Soviet Russia, Google searches you!
========================================================================

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
