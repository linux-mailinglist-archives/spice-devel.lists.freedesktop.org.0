Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2697E276088
	for <lists+spice-devel@lfdr.de>; Wed, 23 Sep 2020 20:55:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A499C6E9ED;
	Wed, 23 Sep 2020 18:55:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 301 seconds by postgrey-1.36 at gabe;
 Wed, 23 Sep 2020 18:55:03 UTC
Received: from ciao.gmane.io (static.214.254.202.116.clients.your-server.de
 [116.202.254.214])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E52E36E9ED
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Sep 2020 18:55:03 +0000 (UTC)
Received: from list by ciao.gmane.io with local (Exim 4.92)
 (envelope-from <gcesd-spice-space-devel@m.gmane-mx.org>)
 id 1kL9q4-0007hx-Ad
 for spice-devel@lists.freedesktop.org; Wed, 23 Sep 2020 20:50:00 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: spice-devel@lists.freedesktop.org
From: Ian Pilcher <arequipeno@gmail.com>
Date: Wed, 23 Sep 2020 13:49:54 -0500
Message-ID: <rkg5ci$shh$1@ciao.gmane.io>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
X-Mozilla-News-Host: news://news.gmane.org:119
Content-Language: en-US
Subject: [Spice-devel] Windows 10 VDAgent incompatible with "hidden" KVM?
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

I'm in the process of setting up a Windows 10 (x64) VM with an NVIDIA
Quadro P1000 GPU (using PCI passthrough).  The GPU will be used only for
video processing, so it has no displays connected, and access to the
VM's user interface is via RDP or (preferably) SPICE.

I have everything working, right up to the point at which I install the
SPICE Guest Tools, specifically the guest agent.  As soon as the agent
is installed, the VM stops responding to any mouse actions; the pointer
is still visible, but it has no effect.

I am able to connect to the guest with RDP and stop the SPICE VDAgent
service.  As soon as the service is stopped, the mouse begins working
again in the SPICE console (and restarting the agent again causes the
mouse to stop working, etc.).

This seems to be related to the "hidden KVM" feature that is required
by the NVIDIA drivers.

   <kvm>
     <hidden state='on'/>
   </kvm>

Without this flag, the NVIDIA drivers refuse to load in a virtual
machine, giving a "Code 43" error.

If I remove these lines from my guest's domain XML, I an able to enable
the SPICE agent in my Windows 10 guest without breaking my mouse, but of
course the NVIDIA GPU doesn't work.

Is there any way that this combination can be made to work?

-- 
========================================================================
                  In Soviet Russia, Google searches you!
========================================================================

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
