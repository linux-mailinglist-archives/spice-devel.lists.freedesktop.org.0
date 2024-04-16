Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC66D8A693F
	for <lists+spice-devel@lfdr.de>; Tue, 16 Apr 2024 13:00:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EB07112B8A;
	Tue, 16 Apr 2024 10:59:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=rz.uni-freiburg.de header.i=@rz.uni-freiburg.de header.b="FIk0U0nk";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from b1422.mx.srv.dfn.de (b1422.mx.srv.dfn.de [194.95.235.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6F8E112BB7
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Apr 2024 10:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 rz.uni-freiburg.de; h=content-transfer-encoding:content-type
 :content-type:in-reply-to:from:from:content-language:references
 :subject:subject:user-agent:mime-version:date:date:message-id
 :received; s=s1; t=1713265191; x=1715079592; bh=ESefrQFJN0EdX3WB
 nG4jbjfhHdcuzZ1r3gafGZuIzpw=; b=FIk0U0nkAR/MD1UfUITVM62K57t5+L/A
 I2CLS4HRwrdWl5XrZllqtMmA7CJkr/cOI1lI86uJpUjiCd0OzpddEKs8aXF0hsv0
 pPd/NABacIGtbivIs9yCnxdiNfif/TJf+z3UJavxd/41/OmaHGel9bTIQ4/9asuI
 wMo5mNfnE1E=
Received: from fe2.uni-freiburg.de (fe2.uni-freiburg.de [132.230.2.222])
 by b1422.mx.srv.dfn.de (Postfix) with ESMTP id 216AB260252
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Apr 2024 12:59:50 +0200 (CEST)
Received: from [10.8.8.225] (account michael.scherle@rz.uni-freiburg.de
 [10.8.8.225] verified)
 by mail.uni-freiburg.de (CommuniGate Pro SMTP 6.3.19)
 with ESMTPSA id 126384125; Tue, 16 Apr 2024 12:59:50 +0200
Message-ID: <18fdc646-f2ca-44e8-b329-4d82b7d56071@rz.uni-freiburg.de>
Date: Tue, 16 Apr 2024 12:59:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: High delay of video-streams
To: Frediano Ziglio <freddy77@gmail.com>
Cc: spice-devel@lists.freedesktop.org,
 "dirk.von.suchodoletz@rz.uni-freiburg.de"
 <dirk.von.suchodoletz@rz.uni-freiburg.de>
References: <31bdee77-ac54-4da4-bb8f-fbc00882070d@rz.uni-freiburg.de>
 <03544c6b-b8b4-441a-b0aa-9d6a629c9794@rz.uni-freiburg.de>
 <CAHt6W4cOrnTZhEAjyfQY3Mf5Y93ynNNeM8Y2+3bCLHvDhXLzfw@mail.gmail.com>
 <267f038a-3d8f-4d7f-bb13-e77c4ea69558@rz.uni-freiburg.de>
 <CAHt6W4eOY0GfTBiVfjC2ksQGxqTBWouxo3Wnfeu5Urtikgu9GQ@mail.gmail.com>
Content-Language: en-US
From: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
In-Reply-To: <CAHt6W4eOY0GfTBiVfjC2ksQGxqTBWouxo3Wnfeu5Urtikgu9GQ@mail.gmail.com>
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

Hello,

Thanks for your changesets, they definitely reduce the delay 
significantly (to a similar level as our provosoric fixes, but yours are 
much cleaner).

On the client side (spice-gtk) I looked at the problem with the high 
decoding time (2 frames buffering) and was able to find a simple fix 
with the help of the gstreamer community:

---
  src/channel-display-priv.h | 4 ++--
  1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/src/channel-display-priv.h b/src/channel-display-priv.h
index 1a7590a..a2af1a7 100644
--- a/src/channel-display-priv.h
+++ b/src/channel-display-priv.h
@@ -177,7 +177,7 @@ static const struct {
       * (hardcoded in spice-server), let's add it here to avoid the 
warning.
       */
      { SPICE_DISPLAY_CAP_CODEC_H264, "h264",
-      "h264parse ! avdec_h264", "video/x-h264,stream-format=byte-stream" },
+      "h264parse ! avdec_h264", 
"video/x-h264,stream-format=byte-stream,alignment=au" },

      /* SPICE_VIDEO_CODEC_TYPE_VP9 */
      { SPICE_DISPLAY_CAP_CODEC_VP9, "vp9",
@@ -185,7 +185,7 @@ static const struct {

      /* SPICE_DISPLAY_CAP_CODEC_H265 */
      { SPICE_DISPLAY_CAP_CODEC_H265, "h265",
-      "h265parse ! avdec_h265", "video/x-h265,stream-format=byte-stream" },
+      "h265parse ! avdec_h265", 
"video/x-h265,stream-format=byte-stream,alignment=au" },

  };

-- 
2.40.1

However, this change should probably still be tested on different 
setups. Since I don't know whether they are always au aligned, I should 
probably find out about that.

Also I have made other experiments, such as removing decoding_queue in 
channel-display-gst.c and adding the SpiceGstFrame to the metadata of 
the gstBuffer instead, as well as completely ignoring the display time 
of a frame and instead displaying them immediately. With that i got down 
to 60-80ms delay.

Do you know if your changes or similar ones that reduce the delay will 
go upstream soon?

While looking through the source code, I found SPICE_KEYPRESS_DELAY, 
which is not mentioned anywhere. Is this the only use to save some 
network traffic? Is there any reason not to always set this to 0 in 
today's network environments? (And maybe set the default to 0?)

Michael

On 03.04.24 21:22, Frediano Ziglio wrote:
> Frediano
> 
> Il giorno mar 2 apr 2024 alle ore 15:27 Michael Scherle
> <michael.scherle@rz.uni-freiburg.de> ha scritto:
>>
>> Hi Frediano,
>>
>> thank you very much for your detailed answer.
>>
>>
>> On 02.04.24 14:13, Frediano Ziglio wrote:
>>
>>> Really short explanation: Lipsync.
>>>
>>> Less cryptic explanation: video streaming was added much time ago when
>>> desktops used 2D graphic drawings, like lines, fillings, strings and
>>> so on. At that time networks were more unreliable, latency bigger, and
>>> with high probability a continuous bitblt on the same big area was a
>>> video playing. So the idea of detecting the video playing and
>>> optimizing to sync audio and video was a good idea.
>>
>> ok this explains a lot.
>>
>>> Now starts my opinionated ideas. The idea of continuous bitblt being
>>> only a video stream is wrong, nowadays desktops do use large bitblt
>>> for everything, or better they use 3D cards a lot and compose the
>>> various windows on the screen which appears to us as just bitblt,
>>> often contiguous. So the delay should just be removed optimizing for
>>> real time video streaming. As you realize the algorithm also keeps
>>> increasing the delay for every glitch found which is not improving the
>>> user experience. I have different changesets removing entirely all
>>> these delays (it's possible to get this just by changing the server
>>> part), the result is much less delay, the audio/video sync (watching a
>>> movie) is, with nowadays networks, acceptable.
>>
>>
>> Would it be possible to get your changesets, so that I could try them
>> out? I would be interested to know how this can be implemented with only
>> server-side changes. A dirty idea I had (and tried) would be to set the
>> mm_time to the past so that the client displays the image immediately,
>> but that would not be a good fix in my opinion.
>>
> 
> That's the commit
> https://cgit.freedesktop.org/~fziglio/spice-server/commit/?h=nvidia&id=eaaec7be80a9d402f425f7571bb27a082ebf739a.
> 
>> I would rather consider it reasonable that the server timestamps the
>> frames (and perhaps the sound) with the encoding time and that the
>> client itself calculates when it wants to display them (from the diffs).
>> So the client could decide if it wants to display the images directly or
>> add some delay to compensate for network jitter (or lipsync) or maybe
>> even implement something like v-sync. These would of course be breaking
>> changes that would require changes to the client and server and would
>> make them incompatible with older versions. If this could not be done
>> directly, due to compatibility reasons, maybe this could be implemented
>> in a separate low latency mode or something like that (which both server
>> and client needs to support).
>>
> 
> I suppose the negative time you though is something like
> https://cgit.freedesktop.org/~fziglio/spice-server/commit/?h=nvidia&id=4a1a2a20505bc453f30573a0d453a9dfa1d97e7c
> (which improve the previous).
> 
>> Even with above ideas applied, for spice-gtk, I have noticed a high
>> decode delay. The gstreamer pipeline always seems to keep at least 2
>> frames in the pipeline (regardless of the frame rate) which increases
>> the delay further. Have you also noticed this? I'm currently looking
>> into the reason for this.
>>
>> When testing stuff out we saw that Sunshine/Moonlight performed very
>> well in generating  a low delay and high QoE. That is kind of our
>> benchmark for remote access to strive for :)
>>
>> Greetings
>> Michael
>>
> 
> Frediano
> 
>>>>
>>>> On 15.03.24 14:08, Michael Scherle wrote:
>>>>> Hello spice developers,
>>>>>
>>>>> we are trying to develop an Open Source virtual desktop infrastructure
>>>>> to be deployed at multiple German universities as described, by my
>>>>> colleagues, in the paper which I have put in the attachment. The
>>>>> solution based on openstack, qemu, spice... Our plan is also to have VM
>>>>> instances with virtual GPUs (SR-IOV). Due to the resulting requirements,
>>>>> it is necessary to transmit the image data as a video stream.
>>>>> We have seen Vivek Kasireddy recent work on spice which solves exactly
>>>>> this problem. However, when we tested it, we noticed a very high input
>>>>> to display delay (400 ms+ but only if the image data is transferred as
>>>>> video-stream). However, the problem seems to be a more general spice
>>>>> problem or is there something wrong with our setup or are there special
>>>>> parameters that we are missing?
>>>>>
>>>>> Our setup:
>>>>>
>>>>> QEMU: https://gitlab.freedesktop.org/Vivek/qemu/-/commits/spice_gl_on_v2
>>>>> Spice:
>>>>> https://gitlab.freedesktop.org/Vivek/spice/-/commits/encode_dmabuf_v6
>>>>> virt-viewer
>>>>> Intel HW decoder/encoder (but same with sw)
>>>>>
>>>>> I have looked into what is causing the delay and have noticed that
>>>>> encoding only takes about 3-4ms. In general, the image seems to reach
>>>>> the client in less than 15ms.
>>>>> The main problem seems to be that gstreamer gets a very high
>>>>> margin(https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/master/src/channel-display.c?ref_type=heads#L1773) and therefore waits a long time before starting decoding. And the reason for the high margin seems to be the bad mm_time_offset https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/master/src/spice-session.c?ref_type=heads#L2418 which is used to offset the server time to the client time (with some margin). And this variable is set by the spice server to initially 400 ms https://gitlab.freedesktop.org/spice/spice/-/blob/master/server/reds.cpp?ref_type=heads#L3062 and gets updated with the latency https://gitlab.freedesktop.org/spice/spice/-/blob/master/server/reds.cpp?ref_type=heads#L2614 (but only increased). I still need to see how this latency is calculated.
>>>>>
>>>>> Am I missing something or is this design not intended for transmitting
>>>>> interactive content via video stream?
>>>>> Temporarily overwriting the margin and tweaking parameter settings on
>>>>> the msdkh264dec brought the delay to about 80-100ms, which is not yet
>>>>> optimal but usable. To see what is technical possible on my setup, I
>>>>> made a comparison using moonlight/sunshine which resulted in an delay of
>>>>> 20-40ms.
>>>>>
>>>>> Our goal is to achieve some round trip time similar to the
>>>>> moonlight/sunshine scenario to achieve a properly usable desktop
>>>>> experience.
>>>>>
>>>>> Greetings
>>>>> Michael
>>>>
>>>> Greetings
>>>> Michael
