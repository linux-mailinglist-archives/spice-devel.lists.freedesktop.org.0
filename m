Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A0A19F077
	for <lists+spice-devel@lfdr.de>; Mon,  6 Apr 2020 08:51:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 914576E233;
	Mon,  6 Apr 2020 06:51:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 354 seconds by postgrey-1.36 at gabe;
 Mon, 06 Apr 2020 00:30:53 UTC
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1DB06E216
 for <spice-devel@lists.freedesktop.org>; Mon,  6 Apr 2020 00:30:53 +0000 (UTC)
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id E5F1616005C
 for <spice-devel@lists.freedesktop.org>; Mon,  6 Apr 2020 02:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
 t=1586132696; bh=W1kzCFrwMiDQ1c2kDDx1w4lJX2SHAJBof5c8guMc0Vw=;
 h=To:From:Subject:Date:From;
 b=BqLM282nMUjlRccXQ9kfHi3dWwSJmEhBcmLDGt0UCm8WyTvgf7pYlM2Yt935RVRbQ
 O3vu7QS6MEtNOlliJAnJGdNCcCGjEf2FLYHZl/wUG+K2aztBjf9hJMczpEKpv51bMH
 /KUhnkUYJFwMeS1OI8BHp/jbfSmRiF5PtxL7tgC5n+Ko4ps8tPxrf0avy648BnFlst
 2RYMp/mFV7HjJDg1AUzudD6k0pBJXWnZTvyxGSG2H+0NBQjGCCx65She+x9T3FgLvZ
 aDd5MpCBif9d1AX/pH0yT43dT9WlZIM3UeRNBxUBwtzjSVUHSdYg0CBIrj86jL3YAx
 nkOaRQZvSz8Dw==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 48wWWr2Nsyz6tm9
 for <spice-devel@lists.freedesktop.org>; Mon,  6 Apr 2020 02:24:55 +0200 (CEST)
To: spice-devel@lists.freedesktop.org
From: "Robert S. Irrgang" <rs.irrgang@posteo.de>
Message-ID: <cc805b3a-0471-c42e-2cf2-b088c74edf78@posteo.de>
Date: Mon, 6 Apr 2020 02:24:54 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: de-DE
X-Mailman-Approved-At: Mon, 06 Apr 2020 06:51:56 +0000
Subject: [Spice-devel] Windows (10) Spice client not working...
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

Hello,

I've tried to connect to my KVM/qemu guest with Windows Spice Remote 
Viewer, but it did not work. I connect with spice://192.168.50.225:5901 
(my Server LAN IP and the port of a windows 7 guest with Spice 
drivers...), but get only the message in spice windows ... "Connect to 
graphics-server", but nothing happend.
I've already connected to this guest with local and remote virt-manager 
on linux without any problems. Only the windows version of spice viwer 
did not work.

Any idea what is wrong?

I'm using Windows 10 insider preview and the latest Spice viwer version, 
can this be a problem?

Thanks and greetings
Robert
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
