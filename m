Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB5722E070
	for <lists+spice-devel@lfdr.de>; Sun, 26 Jul 2020 17:11:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08F0D8845B;
	Sun, 26 Jul 2020 15:11:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 627D88845B
 for <spice-devel@lists.freedesktop.org>; Sun, 26 Jul 2020 15:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1595776315;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1HpKjoD8WNkpQ/u4gl5We5OzszQgQDILRuz9IQPXj9E=;
 b=XvLuy06wXiQi/aQCUke8pVdy6S4BxiBlgfnO5FtHhpO22bk3o/wM/xLWIsT/+bEFWRqlRh
 /OcyLR+vn8u8l/MjfDmgU7vkw/Tqqc/Cp65GmG1hsuXNMf3PaY21VCX0YeJgu6XFA0Hgua
 d9WZCd3j776u2q8YLW98eYenwTK6Y34=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-4-maLiTHikMUmJNkU9YlSCFg-1; Sun, 26 Jul 2020 11:11:51 -0400
X-MC-Unique: maLiTHikMUmJNkU9YlSCFg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4539D107ACCA;
 Sun, 26 Jul 2020 15:11:50 +0000 (UTC)
Received: from lub.tlv (ovpn-112-53.ams2.redhat.com [10.36.112.53])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 51C7E1992D;
 Sun, 26 Jul 2020 15:11:49 +0000 (UTC)
To: Armin Ranjbar <zoup@zoup.org>
References: <CAOvx4-3XCxvmZCa+77Zt4eJAV0qMbuZtu0ZSYYYLfmp5jhmkpA@mail.gmail.com>
 <5c38c86c-76b3-ad20-37e4-35b5ac376fa8@redhat.com>
 <CAOvx4-2n=ZfZi-5=1QgBzCD-sFRnR=EC1UQN3YHT3GGUryNygg@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <3e036d7e-f0cb-6a2c-83c0-faacc84b597f@redhat.com>
Date: Sun, 26 Jul 2020 18:11:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAOvx4-2n=ZfZi-5=1QgBzCD-sFRnR=EC1UQN3YHT3GGUryNygg@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=uril@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] spice-streaming-agent, the motivation and drive
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
Reply-To: uril@redhat.com
Cc: Spice List <spice-devel@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 7/26/20 4:36 PM, Armin Ranjbar wrote:
> Thanks for the Info,
> 
> looking at the code, it seems support for running the streaming agent on
> windows is not yet implemented, is there a blocker to this? (excluding the
> build scripts, etc)

I think there is no blocker for running it on windows guests.
I never tried it.

Uri.

> 
> ---
> Armin ranjbar
> 
> 
> 
> On Sun, Jul 26, 2020 at 5:18 PM Uri Lublin <uril@redhat.com> wrote:
> 
>> On 7/25/20 6:43 PM, Armin Ranjbar wrote:
>>> Dear All
>>>
>>> First of all, let me thank you again for your efforts!
>>>
>>> I was reading on spice-streaming-agent, which is in experimental stage,
>> and
>>> I was wondering what is the driver behind the idea?
>>> Will that lead to less bandwidth consumption? less latency? or is it
>> just a
>>> refactoring to make the codebase cleaner?
>>
>> Hi,
>>
>> It is possible to configure a VM with a hardware GPU (either assign the
>> whole
>> device to the VM or a part of it).
>> That is helpful for running, on the guest, applications that require such
>> strong GPU (e.g. 3D graphics).
>> When that is the case, spice-streaming-agent can use the GPU
>> on the guest
>> to stream video (encode the screenbuffer and send it).
>> This is what spice-streaming-agent does and it indeed leads to less
>> bandwidth used.
>>
>> Uri.
>>
>>
> 

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
