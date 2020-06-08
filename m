Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AB71F1A7A
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jun 2020 16:00:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C08276E52D;
	Mon,  8 Jun 2020 14:00:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 347 seconds by postgrey-1.36 at gabe;
 Mon, 08 Jun 2020 14:00:44 UTC
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8BFC6E52D
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jun 2020 14:00:44 +0000 (UTC)
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 58558160060
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jun 2020 15:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
 t=1591624495; bh=vQPyTAix85/FlmCGhso9VMIkBfJphXHQT2ih+a62kbg=;
 h=Date:From:To:Subject:From;
 b=PgT/VcmojS1gyJ6JezMq1MsgNE0GrdzOP1mmfXHL4RIhman2TWkET99jxc0llnLEb
 9c3jQo3G1cLAmvpXS4kHNWtgMDYZ2kID+C4VgEj+1XwwKz62V0VnBOjETWdAkARcN7
 1at0OmIWp3hYcewh0WP1KDkhNqDarIlSBMK0uc7mU3sW0LYm+Sxzc7nLOfxqonPgE5
 IX35jq3JBxvshQoeaTBZ//3ACSoel6aOjwioiIWNS3k3B4vh+UkrScDBOtW7NY0UYN
 YoJ7s+xJrgpwecV0Q0bhvlhjIQwI0zArmITtQ28KEvesUA9W5hVtY15DOd0J9lyKZz
 TCilZLuz+o3Sw==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 49gZWL5YJZz9rxW
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jun 2020 15:54:54 +0200 (CEST)
MIME-Version: 1.0
Date: Mon, 08 Jun 2020 15:54:54 +0200
From: laurens.nikolaisen@posteo.de
To: spice-devel@lists.freedesktop.org
Message-ID: <9fe938f74ff5b7e5a198464811947eff@posteo.de>
X-Sender: laurens.nikolaisen@posteo.de
User-Agent: Posteo Webmail
Subject: [Spice-devel] Using QXL & Spice with Windows Host & QEMU
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

Hello everyone,

when using Qemu 4.2.0 with a Windows host, qemu-system-x86_64 reports:
"QXL VGA not available"

I used the following Qemu args for testing:
qemu-system-x86-x64.exe -accel hax -machine q35 -m 4GB -cdrom 
xubuntu-20.04-desktop-amd64.iso

Using either "-vga stdt" or "-vga vmware" works. The performance is just 
not that good.

Do I have a chance to get that up and running with a Windows 10 host and 
Qemu?

Thanks,
Laurens
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
