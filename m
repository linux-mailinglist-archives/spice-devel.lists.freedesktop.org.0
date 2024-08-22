Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB9295B43A
	for <lists+spice-devel@lfdr.de>; Thu, 22 Aug 2024 13:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3111710E86D;
	Thu, 22 Aug 2024 11:50:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=rz.uni-freiburg.de header.i=@rz.uni-freiburg.de header.b="JwJ4O3Bp";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from a1422.mx.srv.dfn.de (a1422.mx.srv.dfn.de [194.95.233.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AEA210E86D
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2024 11:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 rz.uni-freiburg.de; h=content-transfer-encoding:content-type
 :content-type:in-reply-to:from:from:content-language:references
 :subject:subject:user-agent:mime-version:date:date:message-id
 :received; s=s1; t=1724327429; x=1726141830; bh=EONfEP1R184u+SCA
 /0Q+GB1RszOmzqRg6lTwX0eNhE8=; b=JwJ4O3BpEPzYjLVjKHbadjoyxf/Z20Mi
 DbvuuuvnCtVTSlmLbrz/Xq8hCZvclbU5BLDA3brVfkFvNVhwCINXpbHbSIdrAVrn
 chYLu7bz5bw7xErge2QNRmPiYDbvyILDj4MNGI0E8luGbh15DVThiJe/4u3pHATk
 x5yl6MffQ8s=
Received: from fe2.uni-freiburg.de (fe2.uni-freiburg.de [132.230.2.222])
 by a1422.mx.srv.dfn.de (Postfix) with ESMTP id B34681E02E8
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2024 13:50:29 +0200 (CEST)
Received: from [2001:7c0:2517:11:7d98:4f3e:7a06:24d3] (account
 michael.scherle@rz.uni-freiburg.de HELO
 [IPV6:2001:7c0:2517:11:7d98:4f3e:7a06:24d3])
 by mail.uni-freiburg.de (CommuniGate Pro SMTP 6.3.19)
 with ESMTPSA id 133305226 for spice-devel@lists.freedesktop.org;
 Thu, 22 Aug 2024 13:50:29 +0200
Message-ID: <f1028cee-a987-485c-9aee-332fe70f5872@rz.uni-freiburg.de>
Date: Thu, 22 Aug 2024 13:50:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [EXTERN] HW de/encoding & Chroma supsampling
To: spice-devel@lists.freedesktop.org
References: <d2acb649-da1d-42b1-a7bf-0e25d6911c2b@rz.uni-freiburg.de>
Content-Language: en-US
From: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
In-Reply-To: <d2acb649-da1d-42b1-a7bf-0e25d6911c2b@rz.uni-freiburg.de>
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



On 29.07.24 13:56, Michael Scherle wrote:
> Hello,
> 
> with the hopefully soon merged pull request: “[PATCH v8 0/6] dcc: Create 
> a stream for non-gl/remote clients that want to use dmabuf (v8)” (which 
> we urgently need for our project), I have noticed the problem of chroma 
> supsampling. The problem usually occurs with colored text and thin 
> lines. Which of course is bad in a remote desktop scenario.
> 
> The attached screenshot shows a test image of rtings on chroma 
> supsampling, whereby it should be noted that the image should either be 
> viewed at exactly 100% or greatly enlarged, as otherwise artifacts may 
> occur that are not present in the original.
> 
> The left third shows the current hardware encoding implementation, which 
> uses Chroma Supsampling 4:2:0, and the resulting artifacts that occur 
> especially in blue and red. In the right third you can see a prototype 
> implementation of 4:4:4 hardware de/encoding that produces a perfect 
> image. In the center is a prototype of 4:2:0 encoding, where the image 
> is upsampled to double before encoding and downsampled after decoding to 
> remove the artifacts. The picture does not show the artifacts, but it is 
> a bit blurry due to the interpolation of the up/downsampling of the 
> Gstreamer plugins. I have modified the Gstreamer plugins so that it is 
> possible to set the interpolation method to Nearest Neighbor, then the 
> blurring is gone and the picture is the same as 4:4:4 (but of course it 
> has the disadvantage of higher bandwidths and en/decoder load). 
> Nevertheless, in some cases it could be a fallback for hardware that 
> cannot work with 4:4:4.
> You can find the original test image here: 
> https://www.rtings.com/images/test-materials/2017/chroma-444.png if you 
> want to try it out for yourself.
> 
> 
> Since I would like to submit my implementation after the above merge 
> request has been merged (since it depends on it), I have a few questions 
> for a reasonable implementation.
> 
> At the moment I have implemented everything as a separate format, e.g. 
> for h265:
> 
>   SPICE_VIDEO_CODEC_TYPE_H265,
>   SPICE_VIDEO_CODEC_TYPE_H265_444,
>   SPICE_VIDEO_CODEC_TYPE_H265_U,
> 
> and for caps:
> 
>   SPICE_DISPLAY_CAP_CODEC_H265,
>   SPICE_DISPLAY_CAP_CODEC_H265_444,
>   SPICE_DISPLAY_CAP_CODEC_H265_U,
> 
> For caps, I think this makes sense, since a HW de/encoder, for example, 
> could only do 4:2:0. But what do you think, does it also make sense for 
> the formats or should it be done via extra parameters?
> 
> Where should I place my fork? should it be on the freedesktop gitlab? 
> then I would have to see how to get the appropriate permissions.
> 
> Does anyone know of any other methods of avoiding artifacts on hardware 
> that can only work with chroma supsamling?
> 
> 
> Greetings
> Michael


Hello,

I got the patches for gstreamer merged for the va and msdk plugin for 
Nearest Neighbor. With them the upsampling looks flawlessly.

Regarding merge requests, are these still accepted at all, for example:
 >dcc: Create a stream for non-gl/remote clients that want to use dmabuf 
(v8)
doesn't seem to be handled anymore?
can you still make merge requestsor are only security vulnerabilities fixed?

Greetings
Michael
