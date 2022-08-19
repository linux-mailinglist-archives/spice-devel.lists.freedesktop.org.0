Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB29359AE91
	for <lists+spice-devel@lfdr.de>; Sat, 20 Aug 2022 15:56:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BC3010E00A;
	Sat, 20 Aug 2022 13:56:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 349 seconds by postgrey-1.36 at gabe;
 Fri, 19 Aug 2022 16:39:11 UTC
Received: from smtp-out.diasite.fr (smtp-out.diasite.fr
 [IPv6:2001:41d0:8:a542::156])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6550910EBB3
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Aug 2022 16:39:11 +0000 (UTC)
Received: from mail.diateam.net (mail.diateam.net [92.222.227.130])
 by smtp-out.diasite.fr (Postfix) with ESMTP id 120643375A
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Aug 2022 18:33:19 +0200 (CEST)
Received: (qmail 22639 invoked from network); 19 Aug 2022 18:33:19 +0200
Received: from cgy77-1?migr-88-168-176-68.fbx.proxad.net (HELO
 ?192.168.1.188?) (jonathan.winterflood@diateam.net@88.168.176.68)
 by mail.diateam.net (envelope-from jonathan.winterflood@diateam.net)
 with AES128-GCM-SHA256 encrypted SMTP; 19 Aug 2022 18:33:19 +0200
Message-ID: <76c675b0-8955-82b7-9c32-1f7fb18bebe9@diateam.net>
Date: Fri, 19 Aug 2022 18:33:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
To: spice-devel@lists.freedesktop.org
Content-Language: en-US
From: Jonathan Winterflood <jonathan.winterflood@diateam.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Sat, 20 Aug 2022 13:56:24 +0000
Subject: [Spice-devel] x11-spice equivalent for Windows
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

We are using SPICE with Qemu with much success, but were wondering 
whether a solution similar to x11-spice exists for sharing an existing 
Windows system via SPICE (rather than then usual RDP/VNC, etc.), for use 
on e.g. bare metal, VirtualBox, Vmware, etc. that do not provide 
"normal" spice servers like Qemu does.

Many thanks,
Jonathan

-- 
Jonathan WINTERFLOOD <jonathan.winterflood@diateam.net>
diateam; 31 rue Yves Collet; 29200 Brest, FRANCE
Phone : +33(0)2.98.050.050
GPG: 3E2F 55B0 C841 6CE9 97B3  214D 1CD4 823F 9474 0362

