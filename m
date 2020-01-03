Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C3C12FA7D
	for <lists+spice-devel@lfdr.de>; Fri,  3 Jan 2020 17:33:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA31E6E110;
	Fri,  3 Jan 2020 16:33:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 1091 seconds by postgrey-1.36 at gabe;
 Fri, 03 Jan 2020 16:33:37 UTC
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E3476E1ED
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Jan 2020 16:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Message-Id:Content-Type:MIME-Version:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jlx3njKQTHFhNihtFHkfCXHsILrINr7anSMO35XWSRA=; b=ugfMSrV385ROq9bPZQ27KhyB/K
 WmFNjEfKm058FRyTI3Mrv2F0lACYfaoFcJkevymstf6s3MXGXBuAJ2aE+ViMt1XD3nOROCZ5sowO1
 3C7Ke0ujzeWc7bxbJwxHrcFH5VLxMLSBqra8nlzL8ZG6dX1s1O9/lsfZ1O3Hdd174KDQ=;
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>) id 1inPbx-00080H-JD
 for spice-devel@lists.freedesktop.org; Fri, 03 Jan 2020 10:15:43 -0600
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>) id 1inPbw-00008t-EV
 for spice-devel@lists.freedesktop.org; Fri, 03 Jan 2020 17:15:40 +0100
Date: Fri, 3 Jan 2020 17:15:40 +0100 (CET)
From: Francois Gouget <fgouget@codeweavers.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Message-Id: <E1inPbw-00008t-EV@amboise>
X-Spam-Score: -23.8
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Signed-off-by: Francois Gouget <fgouget@codeweavers.com> ---
 src/channel-display-gst.c | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-)
 diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c index
 6fccf621..bd72625d 100644 --- a/src/channel-display-gst.c +++
 b/src/channel-display-gst.c
 @@ -469,7 +469,7 @@ sink_event_probe( [...] 
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
Subject: [Spice-devel] [PATCH client] channel-display: Fix wording of the
 deep_element_added_cb() documentation
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

Signed-off-by: Francois Gouget <fgouget@codeweavers.com>
---
 src/channel-display-gst.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
index 6fccf621..bd72625d 100644
--- a/src/channel-display-gst.c
+++ b/src/channel-display-gst.c
@@ -469,7 +469,7 @@ sink_event_probe(GstPad *pad, GstPadProbeInfo *info, gpointer data)
     return GST_PAD_PROBE_OK;
 }
 
-/* This function is called to used to set a probe on the sink */
+/* This function is used to set a probe on the sink */
 static void
 deep_element_added_cb(GstBin *pipeline, GstBin *bin, GstElement *element,
                       SpiceGstDecoder *decoder)
-- 
2.20.1
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
