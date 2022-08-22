Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C74459BCFA
	for <lists+spice-devel@lfdr.de>; Mon, 22 Aug 2022 11:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F33BD10E3C6;
	Mon, 22 Aug 2022 09:40:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from smtp-out.diasite.fr (smtp-out.diasite.fr
 [IPv6:2001:41d0:8:a542::156])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9CAB910E303
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Aug 2022 09:27:19 +0000 (UTC)
Received: from mail.diateam.net (mail.diateam.net [92.222.227.130])
 by smtp-out.diasite.fr (Postfix) with ESMTP id 5A4B534D98
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Aug 2022 11:27:17 +0200 (CEST)
Received: (qmail 17276 invoked from network); 22 Aug 2022 11:27:17 +0200
Received: from cgy77-1?migr-88-168-176-68.fbx.proxad.net (HELO
 ?192.168.1.188?) (jonathan.winterflood@diateam.net@88.168.176.68)
 by mail.diateam.net (envelope-from jonathan.winterflood@diateam.net)
 with AES128-GCM-SHA256 encrypted SMTP; 22 Aug 2022 11:27:17 +0200
Message-ID: <998d6cc7-0f06-46a0-f3c7-a3ae9bb4287f@diateam.net>
Date: Mon, 22 Aug 2022 11:27:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-US
To: Frediano Ziglio <freddy77@gmail.com>, Victor Toso <victortoso@redhat.com>
References: <76c675b0-8955-82b7-9c32-1f7fb18bebe9@diateam.net>
 <20220821081942.rtfdwntvlmu6kqfk@tapioca>
 <CAHt6W4diTuY=F0bsP=Rh2ikisGNaTegHUbdw-Q4c-uLCHPCXeA@mail.gmail.com>
From: Jonathan Winterflood <jonathan.winterflood@diateam.net>
In-Reply-To: <CAHt6W4diTuY=F0bsP=Rh2ikisGNaTegHUbdw-Q4c-uLCHPCXeA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 22 Aug 2022 09:39:58 +0000
Subject: Re: [Spice-devel] x11-spice equivalent for Windows
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Thank you very much Victor, Frediano!

I'll have to try out winspice

All the best,
Jonathan

On 21/08/2022 12:14, Frediano Ziglio wrote:
> Il giorno dom 21 ago 2022 alle ore 09:20 Victor Toso
> <victortoso@redhat.com> ha scritto:
>> Hi Jonathan,
>>
>> On Fri, Aug 19, 2022 at 06:33:18PM +0200, Jonathan Winterflood wrote:
>>> Hello,
>>>
>>> We are using SPICE with Qemu with much success, but were
>>> wondering whether a solution similar to x11-spice exists for
>>> sharing an existing Windows system via SPICE (rather than then
>>> usual RDP/VNC, etc.), for use on e.g. bare metal, VirtualBox,
>>> Vmware, etc. that do not provide "normal" spice servers like
>>> Qemu does.
>> I'm not aware of anyone that has started such project. I think
>> that should be possible as spice-sever does build on windows and
>> can be enabled for windows build of QEMU.
>>
>> Cheers,
>> Victor
> There's a project at https://github.com/mathslinux/winspice or
> https://gitlab.freedesktop.org/spice/win32/winspice.
> The status is "as it is". I personally still have to test it in any way.
>
> Frediano

-- 
Jonathan WINTERFLOOD <jonathan.winterflood@diateam.net>
diateam; 31 rue Yves Collet; 29200 Brest, FRANCE
Phone : +33(0)2.98.050.050
GPG: 3E2F 55B0 C841 6CE9 97B3  214D 1CD4 823F 9474 0362

