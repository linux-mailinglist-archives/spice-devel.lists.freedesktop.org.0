Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 577668956ED
	for <lists+spice-devel@lfdr.de>; Tue,  2 Apr 2024 16:36:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCBCC10FD76;
	Tue,  2 Apr 2024 14:36:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=rz.uni-freiburg.de header.i=@rz.uni-freiburg.de header.b="Cq8m4i30";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 518 seconds by postgrey-1.36 at gabe;
 Tue, 02 Apr 2024 14:36:22 UTC
Received: from b1422.mx.srv.dfn.de (b1422.mx.srv.dfn.de [194.95.235.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6043010FD76
 for <spice-devel@lists.freedesktop.org>; Tue,  2 Apr 2024 14:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 rz.uni-freiburg.de; h=content-transfer-encoding:content-type
 :content-type:in-reply-to:from:from:content-language:references
 :subject:subject:user-agent:mime-version:date:date:message-id
 :received; s=s1; t=1712068061; x=1713882462; bh=G7cnla49Dtkp3nYy
 nGd5AUIyN+/jRUK+OFTnKkprf/Y=; b=Cq8m4i30/lB0ecA88tR4m1ezlbCYmdex
 bKYp4HFp/hbBrdkIgvPAjKoITRbamFO6U/JHqZLJWrKYzNc94vnDLWlYGQOUY90J
 4OZXmvXQuKbkwyn5RdYLipbbKY9lMWJk8gbKvGAgD8L3QlbV31bpM9yLAHJr5QOY
 UQEwBQ/61BI=
Received: from fe2.uni-freiburg.de (fe2.uni-freiburg.de [132.230.2.222])
 by b1422.mx.srv.dfn.de (Postfix) with ESMTP id 327FE2601FC
 for <spice-devel@lists.freedesktop.org>; Tue,  2 Apr 2024 16:27:40 +0200 (CEST)
Received: from [10.8.8.225] (account michael.scherle@rz.uni-freiburg.de
 [10.8.8.225] verified)
 by mail.uni-freiburg.de (CommuniGate Pro SMTP 6.3.19)
 with ESMTPSA id 125599655; Tue, 02 Apr 2024 16:27:40 +0200
Message-ID: <267f038a-3d8f-4d7f-bb13-e77c4ea69558@rz.uni-freiburg.de>
Date: Tue, 2 Apr 2024 16:27:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [EXTERN] Re: High delay of video-streams
To: Frediano Ziglio <freddy77@gmail.com>
Cc: spice-devel@lists.freedesktop.org,
 "dirk.von.suchodoletz@rz.uni-freiburg.de"
 <dirk.von.suchodoletz@rz.uni-freiburg.de>
References: <31bdee77-ac54-4da4-bb8f-fbc00882070d@rz.uni-freiburg.de>
 <03544c6b-b8b4-441a-b0aa-9d6a629c9794@rz.uni-freiburg.de>
 <CAHt6W4cOrnTZhEAjyfQY3Mf5Y93ynNNeM8Y2+3bCLHvDhXLzfw@mail.gmail.com>
Content-Language: en-US
From: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
In-Reply-To: <CAHt6W4cOrnTZhEAjyfQY3Mf5Y93ynNNeM8Y2+3bCLHvDhXLzfw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

Hi Frediano,

thank you very much for your detailed answer.


On 02.04.24 14:13, Frediano Ziglio wrote:

> Really short explanation: Lipsync.
> 
> Less cryptic explanation: video streaming was added much time ago when
> desktops used 2D graphic drawings, like lines, fillings, strings and
> so on. At that time networks were more unreliable, latency bigger, and
> with high probability a continuous bitblt on the same big area was a
> video playing. So the idea of detecting the video playing and
> optimizing to sync audio and video was a good idea.

ok this explains a lot.

> Now starts my opinionated ideas. The idea of continuous bitblt being
> only a video stream is wrong, nowadays desktops do use large bitblt
> for everything, or better they use 3D cards a lot and compose the
> various windows on the screen which appears to us as just bitblt,
> often contiguous. So the delay should just be removed optimizing for
> real time video streaming. As you realize the algorithm also keeps
> increasing the delay for every glitch found which is not improving the
> user experience. I have different changesets removing entirely all
> these delays (it's possible to get this just by changing the server
> part), the result is much less delay, the audio/video sync (watching a
> movie) is, with nowadays networks, acceptable.


Would it be possible to get your changesets, so that I could try them 
out? I would be interested to know how this can be implemented with only 
server-side changes. A dirty idea I had (and tried) would be to set the 
mm_time to the past so that the client displays the image immediately, 
but that would not be a good fix in my opinion.

I would rather consider it reasonable that the server timestamps the 
frames (and perhaps the sound) with the encoding time and that the 
client itself calculates when it wants to display them (from the diffs). 
So the client could decide if it wants to display the images directly or 
add some delay to compensate for network jitter (or lipsync) or maybe 
even implement something like v-sync. These would of course be breaking 
changes that would require changes to the client and server and would 
make them incompatible with older versions. If this could not be done 
directly, due to compatibility reasons, maybe this could be implemented 
in a separate low latency mode or something like that (which both server 
and client needs to support).

Even with above ideas applied, for spice-gtk, I have noticed a high 
decode delay. The gstreamer pipeline always seems to keep at least 2 
frames in the pipeline (regardless of the frame rate) which increases 
the delay further. Have you also noticed this? I'm currently looking 
into the reason for this.

When testing stuff out we saw that Sunshine/Moonlight performed very 
well in generating  a low delay and high QoE. That is kind of our 
benchmark for remote access to strive for :)

Greetings
Michael

>>
>> On 15.03.24 14:08, Michael Scherle wrote:
>>> Hello spice developers,
>>>
>>> we are trying to develop an Open Source virtual desktop infrastructure
>>> to be deployed at multiple German universities as described, by my
>>> colleagues, in the paper which I have put in the attachment. The
>>> solution based on openstack, qemu, spice... Our plan is also to have VM
>>> instances with virtual GPUs (SR-IOV). Due to the resulting requirements,
>>> it is necessary to transmit the image data as a video stream.
>>> We have seen Vivek Kasireddy recent work on spice which solves exactly
>>> this problem. However, when we tested it, we noticed a very high input
>>> to display delay (400 ms+ but only if the image data is transferred as
>>> video-stream). However, the problem seems to be a more general spice
>>> problem or is there something wrong with our setup or are there special
>>> parameters that we are missing?
>>>
>>> Our setup:
>>>
>>> QEMU: https://gitlab.freedesktop.org/Vivek/qemu/-/commits/spice_gl_on_v2
>>> Spice:
>>> https://gitlab.freedesktop.org/Vivek/spice/-/commits/encode_dmabuf_v6
>>> virt-viewer
>>> Intel HW decoder/encoder (but same with sw)
>>>
>>> I have looked into what is causing the delay and have noticed that
>>> encoding only takes about 3-4ms. In general, the image seems to reach
>>> the client in less than 15ms.
>>> The main problem seems to be that gstreamer gets a very high
>>> margin(https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/master/src/channel-display.c?ref_type=heads#L1773) and therefore waits a long time before starting decoding. And the reason for the high margin seems to be the bad mm_time_offset https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/master/src/spice-session.c?ref_type=heads#L2418 which is used to offset the server time to the client time (with some margin). And this variable is set by the spice server to initially 400 ms https://gitlab.freedesktop.org/spice/spice/-/blob/master/server/reds.cpp?ref_type=heads#L3062 and gets updated with the latency https://gitlab.freedesktop.org/spice/spice/-/blob/master/server/reds.cpp?ref_type=heads#L2614 (but only increased). I still need to see how this latency is calculated.
>>>
>>> Am I missing something or is this design not intended for transmitting
>>> interactive content via video stream?
>>> Temporarily overwriting the margin and tweaking parameter settings on
>>> the msdkh264dec brought the delay to about 80-100ms, which is not yet
>>> optimal but usable. To see what is technical possible on my setup, I
>>> made a comparison using moonlight/sunshine which resulted in an delay of
>>> 20-40ms.
>>>
>>> Our goal is to achieve some round trip time similar to the
>>> moonlight/sunshine scenario to achieve a properly usable desktop
>>> experience.
>>>
>>> Greetings
>>> Michael
>>
>> Greetings
>> Michael
