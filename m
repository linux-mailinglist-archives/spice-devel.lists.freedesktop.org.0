Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EC81A06A8
	for <lists+spice-devel@lfdr.de>; Tue,  7 Apr 2020 07:44:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80C8C6E10D;
	Tue,  7 Apr 2020 05:44:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.nanotek.info (mail.nanotek.info [188.166.13.56])
 by gabe.freedesktop.org (Postfix) with ESMTP id 62A2E6E10D
 for <spice-devel@lists.freedesktop.org>; Tue,  7 Apr 2020 05:44:05 +0000 (UTC)
Received: from ousire.calculus.lan (unknown [185.107.80.152])
 by mail.nanotek.info (Postfix) with ESMTPSA id 253EE5FA35;
 Tue,  7 Apr 2020 07:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nanotek.info;
 s=default; t=1586237728;
 bh=jltSB/d3wbAwqzRTkrJYQ6z+BMGDpeCtjQwASP9OSdU=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=kNf0++/oGSedWCOpp/i3zx7QNWyhHWznxwuTo3t+u9GPdMlSiOHfn0hKSLQA9rha4
 vHRm8YFruYsDNsXWQkWroebux3tobMWk36XWhPCIKCXxILJaDvfcZTXiYBVO6sGd50
 hkmrNoWFTNjjcq3gCUlBymVPNKYjAJDwToeqKJns=
To: Victor Toso <victortoso@redhat.com>
References: <3ae50a13-3580-39ba-bca0-8a2bfa2bd6f1@nanotek.info>
 <20200406174001.ijcfimooxvxtohcg@wingsuit>
From: shiftag <shiftag@nanotek.info>
Message-ID: <0cf1a01b-06e7-0485-d789-6e0a1316699e@nanotek.info>
Date: Tue, 7 Apr 2020 09:44:02 +0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20200406174001.ijcfimooxvxtohcg@wingsuit>
Content-Language: en-US
Subject: Re: [Spice-devel] Can't activate share folding in virt-viewer
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


On 4/6/20 9:40 PM, Victor Toso wrote:
> Hi,
>
> On Mon, Apr 06, 2020 at 09:17:19PM +0400, shiftag wrote:
>> Hello,
>>
>> I would to use share folder with a Windows 10 guest. I installed spice
>> guest tool and spice webdav daemon in the guest operating system. Also,
>> spice webdav is running as a service in windows guest. Then, I add
>> "Channel spice-webdav" as hardware for the Windows virtual machine.
>>
>> Finally, I would to like "share folding" in virt-viewer client but it's
>> grey (screenshot attached).
>>
>> Did I miss a step ?
> The spice-gtk library used by remote-viewer must be built with
> webdav enabled. If you are using a linux client, you can check if
> phodav is linked with remote-viewer with:
>
> $ ldd /usr/bin/remote-viewer | grep -i phodav
>     libphodav-2.0.so.0 => /lib64/libphodav-2.0.so.0
>
> You can compare the configuration as mentioned in 'Folder
> Sharing' section in:
>
>     https://www.spice-space.org/spice-user-manual.html
>
> If you can't figure out, might need to add some --spice-debug and
> share it.
>

So I missed a step, I forgot to enable webdav in spice-gtk.

The problem is solved now.

Thank you Victor.

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
