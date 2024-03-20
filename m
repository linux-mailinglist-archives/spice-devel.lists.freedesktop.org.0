Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8588881447
	for <lists+spice-devel@lfdr.de>; Wed, 20 Mar 2024 16:13:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A8D110E100;
	Wed, 20 Mar 2024 15:13:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=rz.uni-freiburg.de header.i=@rz.uni-freiburg.de header.b="Iq4IpmfZ";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from a1422.mx.srv.dfn.de (a1422.mx.srv.dfn.de [194.95.233.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2331110FD6D
 for <spice-devel@lists.freedesktop.org>; Wed, 20 Mar 2024 15:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 rz.uni-freiburg.de; h=content-transfer-encoding:content-type
 :content-type:in-reply-to:references:from:from:content-language
 :subject:subject:user-agent:mime-version:date:date:message-id
 :received; s=s1; t=1710947628; x=1712762029; bh=BlIzid+UqG/A/T5n
 lMPnLYUKOyd6z9P6f3xwSHhrHyE=; b=Iq4IpmfZLk2Hjf7CK7t0Kg6AobuypDne
 yJX9VC0swBxNunZ2s9aNXfMhYUErXQjPJXzsMk2TV/trWE5vTT3qiAITvYSX3GTR
 twfEqPhsAwuPHlXOYN/pSnBnxkEh7oAMeDlT2+dQnlzB2IJcd08mUa5HalHs8Kkq
 E8T5hzqNb44=
Received: from fe1.uni-freiburg.de (fe1.uni-freiburg.de [132.230.2.221])
 by a1422.mx.srv.dfn.de (Postfix) with ESMTP id 7AF791E0105
 for <spice-devel@lists.freedesktop.org>; Wed, 20 Mar 2024 16:13:48 +0100 (CET)
Received: from [2001:7c0:2517:a:cca7:e119:2599:1be8] (account
 michael.scherle@rz.uni-freiburg.de HELO
 [IPV6:2001:7c0:2517:a:cca7:e119:2599:1be8])
 by mail.uni-freiburg.de (CommuniGate Pro SMTP 6.3.19)
 with ESMTPSA id 40730518; Wed, 20 Mar 2024 16:13:48 +0100
Message-ID: <03544c6b-b8b4-441a-b0aa-9d6a629c9794@rz.uni-freiburg.de>
Date: Wed, 20 Mar 2024 16:13:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: High delay of video-streams
Content-Language: en-US
From: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
To: spice-devel@lists.freedesktop.org
References: <31bdee77-ac54-4da4-bb8f-fbc00882070d@rz.uni-freiburg.de>
Cc: "dirk.von.suchodoletz@rz.uni-freiburg.de"
 <dirk.von.suchodoletz@rz.uni-freiburg.de>
In-Reply-To: <31bdee77-ac54-4da4-bb8f-fbc00882070d@rz.uni-freiburg.de>
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

Hello spice developers,

I looked further and found the function get_min_playback_delay( 
https://gitlab.freedesktop.org/spice/spice/-/blob/fe1c25f530b95d32cc81bc1a395d80ace631d2dd/server/gstreamer-encoder.c#L507)
which calculates the delay I was looking for. However, some of the 
calculations do not make sense to me.  net_latency + 
get_average_encoding_time seems to be reasonable. However send_time 
seems strange to me. I assume that this is to calculate how long a large 
(I frame) and a normal frame is encoded. I think that this calculation 
is not optimal, the more so as the average encoding time has already 
been added and the gstreamer target bitrate is not accurate (especially 
for variable bitrates) which makes the calculations less accurate.

As a result, the delay is unnecessarily increased, if the image size 
changes rapidly in a short period of time, e.g. due to rapidly changing 
image content. Which would also work without a delay increase. Also the 
decoding time of the client is not taken into account here. I'm also not 
sure how useful it is, to calculate the display delay for the client on 
the server. But perhaps I have been mistaken and you can enlighten me.


On 15.03.24 14:08, Michael Scherle wrote:
> Hello spice developers,
> 
> we are trying to develop an Open Source virtual desktop infrastructure 
> to be deployed at multiple German universities as described, by my 
> colleagues, in the paper which I have put in the attachment. The 
> solution based on openstack, qemu, spice... Our plan is also to have VM 
> instances with virtual GPUs (SR-IOV). Due to the resulting requirements, 
> it is necessary to transmit the image data as a video stream.
> We have seen Vivek Kasireddy recent work on spice which solves exactly 
> this problem. However, when we tested it, we noticed a very high input 
> to display delay (400 ms+ but only if the image data is transferred as 
> video-stream). However, the problem seems to be a more general spice 
> problem or is there something wrong with our setup or are there special 
> parameters that we are missing?
> 
> Our setup:
> 
> QEMU: https://gitlab.freedesktop.org/Vivek/qemu/-/commits/spice_gl_on_v2
> Spice: 
> https://gitlab.freedesktop.org/Vivek/spice/-/commits/encode_dmabuf_v6
> virt-viewer
> Intel HW decoder/encoder (but same with sw)
> 
> I have looked into what is causing the delay and have noticed that 
> encoding only takes about 3-4ms. In general, the image seems to reach 
> the client in less than 15ms.
> The main problem seems to be that gstreamer gets a very high 
> margin(https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/master/src/channel-display.c?ref_type=heads#L1773) and therefore waits a long time before starting decoding. And the reason for the high margin seems to be the bad mm_time_offset https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/master/src/spice-session.c?ref_type=heads#L2418 which is used to offset the server time to the client time (with some margin). And this variable is set by the spice server to initially 400 ms https://gitlab.freedesktop.org/spice/spice/-/blob/master/server/reds.cpp?ref_type=heads#L3062 and gets updated with the latency https://gitlab.freedesktop.org/spice/spice/-/blob/master/server/reds.cpp?ref_type=heads#L2614 (but only increased). I still need to see how this latency is calculated.
> 
> Am I missing something or is this design not intended for transmitting 
> interactive content via video stream?
> Temporarily overwriting the margin and tweaking parameter settings on 
> the msdkh264dec brought the delay to about 80-100ms, which is not yet 
> optimal but usable. To see what is technical possible on my setup, I 
> made a comparison using moonlight/sunshine which resulted in an delay of 
> 20-40ms.
> 
> Our goal is to achieve some round trip time similar to the 
> moonlight/sunshine scenario to achieve a properly usable desktop 
> experience.
> 
> Greetings
> Michael

Greetings
Michael
