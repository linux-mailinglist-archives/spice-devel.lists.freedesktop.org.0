Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9356305EB
	for <lists+spice-devel@lfdr.de>; Sat, 19 Nov 2022 01:00:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0977910E00A;
	Sat, 19 Nov 2022 00:00:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 385 seconds by postgrey-1.36 at gabe;
 Sat, 19 Nov 2022 00:00:12 UTC
Received: from ore.jhcloos.com (ore.jhcloos.com [192.40.56.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF5B110E833
 for <spice-devel@lists.freedesktop.org>; Sat, 19 Nov 2022 00:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
 s=ore17; t=1668815626;
 bh=3IRpHCgds5mWVfdicdOqHAjnkq56f3HeFxRRbzkqy74=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=KNQTBESprYlA0fSib100Rhvvirbad5hXq68lAhpK2SNjcr2bAeCL1UlIhl3Jd5r5D
 1EvnnzK166GES+QrXQZs0craQaE8Mr6z/cgrEf48sUA4mGBG+WBBS4n/VLQzV8YbpY
 ORjNLoKg7vCkdslR3Ab4TFU+QFrUXB/w55HIMr1Wv+A+D1ImPPXAzCRzatGo2Mu1yR
 QUApxwevCaaLi8Q9EzItc3sVW5oVBBhqAJe9kCjfnpV0zOSycpkGPY4WrgB7EDUfdf
 gtduPUXVcI4dQAhBxjElSrbwSCFdm4wz7mfh4b3Uhqc7Vvh1uewYs60r3K0tvyHy+o
 hhHgmj77HGmdw==
Received: by ore.jhcloos.com (Postfix, from userid 10)
 id 3AA6722AEA; Fri, 18 Nov 2022 23:53:46 +0000 (UTC)
Received: by carbon.jhcloos.org (Postfix, from userid 500)
 id 3E25EBA0A; Fri, 18 Nov 2022 23:53:39 +0000 (UTC)
From: James Cloos <cloos@jhcloos.com>
To: Stefan Silberstein <linuxstony@gmail.com>
In-Reply-To: <CADiWsK9fxPnCdAYUek0nkWgY476-svZ78d=Pqm_RQoV4FfCSKA@mail.gmail.com>
 (Stefan Silberstein's message of "Tue, 15 Nov 2022 21:53:05 +0100")
References: <CADiWsK9fxPnCdAYUek0nkWgY476-svZ78d=Pqm_RQoV4FfCSKA@mail.gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Face: iVBORw0KGgoAAAANSUhEUgAAABAAAAAQAgMAAABinRfyAAAACVBMVEX///8ZGXBQKKnCrDQ3
 AAAAJElEQVQImWNgQAAXzwQg4SKASgAlXIEEiwsSIYBEcLaAtMEAADJnB+kKcKioAAAAAElFTkSu
 QmCC
Copyright: Copyright 2022 James Cloos
OpenPGP: 0x997A9F17ED7DAEA6;
 url=https://jhcloos.com/public_key/0x997A9F17ED7DAEA6.asc
OpenPGP-Fingerprint: E9E9 F828 61A4 6EA9 0F2B  63E7 997A 9F17 ED7D AEA6
Date: Fri, 18 Nov 2022 18:53:39 -0500
Message-ID: <m3y1s7izuk.fsf@carbon.jhcloos.org>
Lines: 16
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Spice-devel] Userquestion - remote-viewer connection fails
 with "Connection type could not be determined by URI"
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

>>>>> "SS" == Stefan Silberstein <linuxstony@gmail.com> writes:

SS> sudo remote-viewer  spice:⁄⁄server@192.168.178.51:5900

i don’t knowe whether it is only in the email or also in the command
line you sent, but that quoted line has a pait of U+2044 FRACTION SLASH
where it instead should have two U+2F SOLIDUS characters.

if your input method got in the way also in the command line, that would
prevent the spice url from working.

otoh, if it is only in the email, ....

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6
