Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB10AA9366
	for <lists+spice-devel@lfdr.de>; Mon,  5 May 2025 14:40:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 176C510E403;
	Mon,  5 May 2025 12:40:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=rz.uni-freiburg.de header.i=@rz.uni-freiburg.de header.b="MMYo3ua6";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 388 seconds by postgrey-1.36 at gabe;
 Mon, 05 May 2025 12:40:03 UTC
Received: from c1422.mx.srv.dfn.de (c1422.mx.srv.dfn.de [194.95.239.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBE6710E3D8
 for <spice-devel@lists.freedesktop.org>; Mon,  5 May 2025 12:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 rz.uni-freiburg.de; h=content-transfer-encoding:content-type
 :content-type:in-reply-to:from:from:content-language:references
 :subject:subject:user-agent:mime-version:date:date:message-id
 :received; s=s1; t=1746448401; x=1748262802; bh=3qDM8lUJ06oaXHee
 lTHkzby9FMgjQjP0OKXcwo7Y1K0=; b=MMYo3ua6/ACLuElwBZ+SW6UG07atTxtW
 c+pgkjIw4Nn7cQxiNsvv8nSZ1wPTAS6VZHjJrh/8jouYFlpZiPxSk2wAS5fOKp91
 xh6XKkqx7/pL29xuZ8slC1M/9+8gzkaPFXiyiRKAY4unxRXLYKxnyI0J8CkuQjxC
 dta50RcgPLg=
Received: from fe1.uni-freiburg.de (fe1.uni-freiburg.de [132.230.2.221])
 by c1422.mx.srv.dfn.de (Postfix) with ESMTP id 39F0C2C0154
 for <spice-devel@lists.freedesktop.org>; Mon,  5 May 2025 14:33:21 +0200 (CEST)
Received: from [2001:7c0:2517:a:4b56:9ec4:d188:b1a0] (account
 michael.scherle@rz.uni-freiburg.de HELO
 [IPV6:2001:7c0:2517:a:4b56:9ec4:d188:b1a0])
 by mail.uni-freiburg.de (CommuniGate Pro SMTP 6.3.19)
 with ESMTPSA id 47366482; Mon, 05 May 2025 14:33:20 +0200
Message-ID: <8470bed0-5860-40c9-8688-11593b7e1b3b@rz.uni-freiburg.de>
Date: Mon, 5 May 2025 14:33:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Forcing initial Frame Transmission for dmabuf encoding on SPICE
 display channel connection
To: Frediano Ziglio <freddy77@gmail.com>
Cc: spice-devel@lists.freedesktop.org
References: <760d379f-91b2-4f43-bf22-57d0859977b3@rz.uni-freiburg.de>
 <CAHt6W4dgigb9P=D99Lv2BxBA530+Os3Bm9dWX4W4gWfHiOW=wg@mail.gmail.com>
Content-Language: en-US
From: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
In-Reply-To: <CAHt6W4dgigb9P=D99Lv2BxBA530+Os3Bm9dWX4W4gWfHiOW=wg@mail.gmail.com>
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

Sorry for the late reply — I was on vacation. Thank you very much for 
the detailed explanation; it gave me a clear direction on how to 
approach the problem.

The race condition I was facing involved qemu calling 
spice_qxl_gl_scanout during the initial frame transmission. This caused 
the dma-buf to be closed while GStreamer was still using it. I resolved 
this by giving GStreamer a duplicate of the dma-buf file descriptor and 
letting it close it once it's done. I'm still keeping the original 
dma-buf fd in qxl_state so that one is always available for the initial 
frame transmission. The question now is whether this is an acceptable 
solution.

With that, I have a working prototype. However, there are still a few 
things I need to improve before i can do a MR:

1. Callback (async_complete) handling: I obviously don’t want to call 
this for the initial frame transmission. Implementing a special case for 
this in the current code structure is a bit tricky. Either by passing a 
variable through, or perhaps storing it in the qxl_state. For the 
latter, however, I first need to better understand the thread, worker 
and pipe system and see if that is possible.

2. I'm not sure whether it's necessary to ensure that, when multiple 
clients are connected, only the newly connected one receives the new 
frame. It's also an interesting design choice to encode the frame 
separately for each connection.

Best regards,
Michael


On 16.04.25 00:00, Frediano Ziglio wrote:
> On Thu, Apr 10, 2025 at 3:18 PM Michael Scherle <
> michael.scherle@rz.uni-freiburg.de> wrote:
> 
>> Hello,
>>
>> I’ve encountered an issue with the new DMA-BUF -> video encoding feature
>> in SPICE. When connecting, the first frame is only sent once the GPU
>> renders a new frame. However, this can take quite some time if the VM is
>> idle (e.g., sitting on the desktop), since the GPU only renders a new
>> frame when something on the screen changes. To address this, I wanted to
>> force a frame to be sent when the display channel is connected.
>>
>>
> Which makes sense.
> 
> 
>> My initial, naive attempt was to grab the latest DMA-BUF on the display
>> channel's connection in the SPICE server, encode it, and send it.
>> However, this led to race conditions and crashes—particularly when QEMU
>> happened to perform a scanout at the same time, closing the DMA-BUF in
>> the process.
>>
>> By "closing" do you mean calling close() function? No, we should have
> ownership.
> What exact race did you encounter?
> 
> 
>> As a second approach, I modified the QXLInterface to pass the display
>> channel on_connect event back to QEMU. I couldn’t find any existing
>> mechanism in QEMU to detect the connection of a display channel. Within
>> QEMU, I then used qemu_spice_gl_monitor_config, and spice_gl_refresh to
>> trigger a spice_gl_draw. This solution works, but the downside is that
>> it requires changes to SPICE, QEMU, and especially the
>> QXLInterface—which is obviously not ideal.
>>
>> Not ideal is a compliment. I would say complicated, hard to maintain,
> adding too much coupling.
> 
> So now I’m wondering: does anyone have a better idea for how to tackle
>> this problem?
>>
>> I would define "the problem" first, currently you mentioned a race
> condition without describing the details of the race.
> 
> 
>> Best regards,
>> Michael
>>
> 
> I could suspect the race is more in the current implementation of the
> interface. Indeed that interface does not fit entirely in the Spice server
> model.
> 
> Externally there are 2 functions, spice_qxl_gl_scanout and
> spice_qxl_gl_draw_async, the callback async_complete is used to tell Qemu
> when we finish with the scanout. So, spice_qxl_gl_scanout should set the
> scanout (or frame if you prefer), while spice_qxl_gl_draw_async tells Spice
> to use the scanout, till async_complete is called (which should be done in
> a time fashion, I think Qemu timeout is 1 second). In theory the scanout
> can be reused for multiple draws (which was never the case, but that's
> another story). In theory a partial draw of the scanout can be requested.
> In theory the scanout should not be used after async_complete is called as
> Qemu could reuse the scanout for next drawings. That last point is a bit of
> a problem here and to be honest something I think is an issue of the
> external interface definition. In hardware you set the framebuffer and the
> video card will continue to use it, no matter what, the computer can freeze
> or panic and the video card will continue to use the same frame over and
> over. Also, considering that the maximum that can happen is to get a
> partial draw that will be fixed, I think it's correct to use the last
> scanout to solve your initial problem.
> 
> Internally Spice server stores the scanout in the RedQxl thread (Qemu I/O
> one) but uses it in the RedWorker thread. This is pretty uncommon, usually
> data is passed from a thread to the other, ownership included. This,
> probably, leads to the race you are facing. If that's the issue I think
> really the best option is to fix that race.
> 
> Regards,
>    Frediano
> 

