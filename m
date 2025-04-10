Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3596BA845BD
	for <lists+spice-devel@lfdr.de>; Thu, 10 Apr 2025 16:10:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34E8A10E9CA;
	Thu, 10 Apr 2025 14:10:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=rz.uni-freiburg.de header.i=@rz.uni-freiburg.de header.b="j/lZ7Rrd";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 315 seconds by postgrey-1.36 at gabe;
 Thu, 10 Apr 2025 14:10:03 UTC
Received: from a1422.mx.srv.dfn.de (a1422.mx.srv.dfn.de [194.95.233.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC4E310E9CA
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Apr 2025 14:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 rz.uni-freiburg.de; h=content-transfer-encoding:content-type
 :content-type:subject:subject:from:from:content-language
 :user-agent:mime-version:date:date:message-id:received; s=s1; t=
 1744293876; x=1746108277; bh=iDoC3305KnzMZtISvJrv/PTAjd3O9H1NCw6
 0AJwzu64=; b=j/lZ7RrdTAa4fJGTHPQvA/69lwjDBvEGjnj3pM7SbzqXhFWgZ29
 DxY9UhmjDravbYcUtT57EIyoQi59TXiXKol4RUWASxVC2ePBWUEWWiJ3Y1ObFztF
 ogNvCdDzddhrqp+zJruF91Bj8Pi5mUu07PpO5awB/KiHZNddlyanNfyo=
Received: from fe1.uni-freiburg.de (fe1.uni-freiburg.de [132.230.2.221])
 by a1422.mx.srv.dfn.de (Postfix) with ESMTP id 3EEA51E0196
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Apr 2025 16:04:35 +0200 (CEST)
Received: from [10.8.8.230] (account michael.scherle@rz.uni-freiburg.de
 [10.8.8.230] verified)
 by mail.uni-freiburg.de (CommuniGate Pro SMTP 6.3.19)
 with ESMTPSA id 46984509 for spice-devel@lists.freedesktop.org;
 Thu, 10 Apr 2025 16:04:35 +0200
Message-ID: <760d379f-91b2-4f43-bf22-57d0859977b3@rz.uni-freiburg.de>
Date: Thu, 10 Apr 2025 16:04:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
Subject: Forcing initial Frame Transmission for dmabuf encoding on SPICE
 display channel connection
To: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hello,

I’ve encountered an issue with the new DMA-BUF -> video encoding feature 
in SPICE. When connecting, the first frame is only sent once the GPU 
renders a new frame. However, this can take quite some time if the VM is 
idle (e.g., sitting on the desktop), since the GPU only renders a new 
frame when something on the screen changes. To address this, I wanted to 
force a frame to be sent when the display channel is connected.

My initial, naive attempt was to grab the latest DMA-BUF on the display 
channel's connection in the SPICE server, encode it, and send it. 
However, this led to race conditions and crashes—particularly when QEMU 
happened to perform a scanout at the same time, closing the DMA-BUF in 
the process.

As a second approach, I modified the QXLInterface to pass the display 
channel on_connect event back to QEMU. I couldn’t find any existing 
mechanism in QEMU to detect the connection of a display channel. Within 
QEMU, I then used qemu_spice_gl_monitor_config, and spice_gl_refresh to 
trigger a spice_gl_draw. This solution works, but the downside is that 
it requires changes to SPICE, QEMU, and especially the 
QXLInterface—which is obviously not ideal.

So now I’m wondering: does anyone have a better idea for how to tackle 
this problem?

Best regards,
Michael
