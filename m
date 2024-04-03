Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 122278978F0
	for <lists+spice-devel@lfdr.de>; Wed,  3 Apr 2024 21:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9816F112844;
	Wed,  3 Apr 2024 19:22:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HGpkhoQc";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com
 [209.85.219.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DF17112844
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Apr 2024 19:22:52 +0000 (UTC)
Received: by mail-yb1-f170.google.com with SMTP id
 3f1490d57ef6-dcbef31a9dbso197687276.1
 for <spice-devel@lists.freedesktop.org>; Wed, 03 Apr 2024 12:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712172171; x=1712776971; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+SVVOF5cIkIPGz8ihkkeuQxQsxj6ypKxnHUOJEikswU=;
 b=HGpkhoQc+Dy1ICeRofmOhy4Op1klOE2CfhE6JIsJo7+yCPL0oHLRoj4CqcSXnSbyRv
 dPXxrZbeGM3OFZ2KlBRwv90e/pABuJ141YMCNhgvu40ofmqtHEDRZkKvDSEANZRnarwR
 MtFt0x2C6kkr7cpuN3G8k+A5ccg/8EQUNakEs45fZuQZCmT19zyZr64SArVgJZqHDoEy
 8zNx/ozPq8koFPufFbENz6Fzr6hllwQfBgkS3uXsRNhdo9ZQit+nDOOuKaEBXWsWfTkW
 00VjKSvrHzkwbUY/zQXr7iURJK5UKUqfSZI9+HmJZs03WEFWWKNPfniNe8d42epHwbAt
 UpJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712172171; x=1712776971;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+SVVOF5cIkIPGz8ihkkeuQxQsxj6ypKxnHUOJEikswU=;
 b=YEYWlJAc11+sf606A3UjGO9zh/40qZ0D7NdWPAJRi/pQjIvE1pJjiX7jbJYGUYjPVW
 6Ll5xncWXCEdHBK02yinskSRFvaXGPdYbo+T77DF2421rkFU5kZGEb7cmZOvOaN+oy8a
 fd3cnd1kKloKb0+ecz9S8Ym+32iv9bU7i62u2B8FdIf27Ter82admEIZiLjNFnZ/s6CT
 bczXkq2bs2RMl1JJL6MWJRko5JAeKSGglAejTWonnrQoGqx3WdWWxownSD8zY4UhOC9Y
 ZkFO+YVhGzvEGDujcXdfMvaYxgGLyrZaS3rO3I5Q/AMaWqpKPyhWi4xMMUt8ZD1rB9Pe
 4vsg==
X-Gm-Message-State: AOJu0Yy1nytHxf17bTs2Dwoc88nPpNrSbmM5zWiIsereQfWNd3J7Asrb
 +65HfBj1omiWQDTXYR7WG1LEAzRvIAMdXl8dTwTW+Wf4JIJvni0HJaztdtG8Rvz/MiK2WxcJIgV
 d2TYFDyjDq2Uagi7tgSTqEXdZMyuqwPXBywM=
X-Google-Smtp-Source: AGHT+IE/aXUGc/0vr03I8oLH3WpS+Z/our1HiamFH+G4bAD6paE/K6wgy0qcvlAeuJlV9oUVx0UcFDariaBZAQMEbdw=
X-Received: by 2002:a25:5f51:0:b0:dc6:9d35:f9aa with SMTP id
 h17-20020a255f51000000b00dc69d35f9aamr504182ybm.19.1712172171473; Wed, 03 Apr
 2024 12:22:51 -0700 (PDT)
MIME-Version: 1.0
References: <31bdee77-ac54-4da4-bb8f-fbc00882070d@rz.uni-freiburg.de>
 <03544c6b-b8b4-441a-b0aa-9d6a629c9794@rz.uni-freiburg.de>
 <CAHt6W4cOrnTZhEAjyfQY3Mf5Y93ynNNeM8Y2+3bCLHvDhXLzfw@mail.gmail.com>
 <267f038a-3d8f-4d7f-bb13-e77c4ea69558@rz.uni-freiburg.de>
In-Reply-To: <267f038a-3d8f-4d7f-bb13-e77c4ea69558@rz.uni-freiburg.de>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Wed, 3 Apr 2024 20:22:40 +0100
Message-ID: <CAHt6W4eOY0GfTBiVfjC2ksQGxqTBWouxo3Wnfeu5Urtikgu9GQ@mail.gmail.com>
Subject: Re: [EXTERN] Re: High delay of video-streams
To: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
Cc: spice-devel@lists.freedesktop.org, 
 "dirk.von.suchodoletz@rz.uni-freiburg.de"
 <dirk.von.suchodoletz@rz.uni-freiburg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Frediano

Il giorno mar 2 apr 2024 alle ore 15:27 Michael Scherle
<michael.scherle@rz.uni-freiburg.de> ha scritto:
>
> Hi Frediano,
>
> thank you very much for your detailed answer.
>
>
> On 02.04.24 14:13, Frediano Ziglio wrote:
>
> > Really short explanation: Lipsync.
> >
> > Less cryptic explanation: video streaming was added much time ago when
> > desktops used 2D graphic drawings, like lines, fillings, strings and
> > so on. At that time networks were more unreliable, latency bigger, and
> > with high probability a continuous bitblt on the same big area was a
> > video playing. So the idea of detecting the video playing and
> > optimizing to sync audio and video was a good idea.
>
> ok this explains a lot.
>
> > Now starts my opinionated ideas. The idea of continuous bitblt being
> > only a video stream is wrong, nowadays desktops do use large bitblt
> > for everything, or better they use 3D cards a lot and compose the
> > various windows on the screen which appears to us as just bitblt,
> > often contiguous. So the delay should just be removed optimizing for
> > real time video streaming. As you realize the algorithm also keeps
> > increasing the delay for every glitch found which is not improving the
> > user experience. I have different changesets removing entirely all
> > these delays (it's possible to get this just by changing the server
> > part), the result is much less delay, the audio/video sync (watching a
> > movie) is, with nowadays networks, acceptable.
>
>
> Would it be possible to get your changesets, so that I could try them
> out? I would be interested to know how this can be implemented with only
> server-side changes. A dirty idea I had (and tried) would be to set the
> mm_time to the past so that the client displays the image immediately,
> but that would not be a good fix in my opinion.
>

That's the commit
https://cgit.freedesktop.org/~fziglio/spice-server/commit/?h=3Dnvidia&id=3D=
eaaec7be80a9d402f425f7571bb27a082ebf739a.

> I would rather consider it reasonable that the server timestamps the
> frames (and perhaps the sound) with the encoding time and that the
> client itself calculates when it wants to display them (from the diffs).
> So the client could decide if it wants to display the images directly or
> add some delay to compensate for network jitter (or lipsync) or maybe
> even implement something like v-sync. These would of course be breaking
> changes that would require changes to the client and server and would
> make them incompatible with older versions. If this could not be done
> directly, due to compatibility reasons, maybe this could be implemented
> in a separate low latency mode or something like that (which both server
> and client needs to support).
>

I suppose the negative time you though is something like
https://cgit.freedesktop.org/~fziglio/spice-server/commit/?h=3Dnvidia&id=3D=
4a1a2a20505bc453f30573a0d453a9dfa1d97e7c
(which improve the previous).

> Even with above ideas applied, for spice-gtk, I have noticed a high
> decode delay. The gstreamer pipeline always seems to keep at least 2
> frames in the pipeline (regardless of the frame rate) which increases
> the delay further. Have you also noticed this? I'm currently looking
> into the reason for this.
>
> When testing stuff out we saw that Sunshine/Moonlight performed very
> well in generating  a low delay and high QoE. That is kind of our
> benchmark for remote access to strive for :)
>
> Greetings
> Michael
>

Frediano

> >>
> >> On 15.03.24 14:08, Michael Scherle wrote:
> >>> Hello spice developers,
> >>>
> >>> we are trying to develop an Open Source virtual desktop infrastructur=
e
> >>> to be deployed at multiple German universities as described, by my
> >>> colleagues, in the paper which I have put in the attachment. The
> >>> solution based on openstack, qemu, spice... Our plan is also to have =
VM
> >>> instances with virtual GPUs (SR-IOV). Due to the resulting requiremen=
ts,
> >>> it is necessary to transmit the image data as a video stream.
> >>> We have seen Vivek Kasireddy recent work on spice which solves exactl=
y
> >>> this problem. However, when we tested it, we noticed a very high inpu=
t
> >>> to display delay (400 ms+ but only if the image data is transferred a=
s
> >>> video-stream). However, the problem seems to be a more general spice
> >>> problem or is there something wrong with our setup or are there speci=
al
> >>> parameters that we are missing?
> >>>
> >>> Our setup:
> >>>
> >>> QEMU: https://gitlab.freedesktop.org/Vivek/qemu/-/commits/spice_gl_on=
_v2
> >>> Spice:
> >>> https://gitlab.freedesktop.org/Vivek/spice/-/commits/encode_dmabuf_v6
> >>> virt-viewer
> >>> Intel HW decoder/encoder (but same with sw)
> >>>
> >>> I have looked into what is causing the delay and have noticed that
> >>> encoding only takes about 3-4ms. In general, the image seems to reach
> >>> the client in less than 15ms.
> >>> The main problem seems to be that gstreamer gets a very high
> >>> margin(https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/master/s=
rc/channel-display.c?ref_type=3Dheads#L1773) and therefore waits a long tim=
e before starting decoding. And the reason for the high margin seems to be =
the bad mm_time_offset https://gitlab.freedesktop.org/spice/spice-gtk/-/blo=
b/master/src/spice-session.c?ref_type=3Dheads#L2418 which is used to offset=
 the server time to the client time (with some margin). And this variable i=
s set by the spice server to initially 400 ms https://gitlab.freedesktop.or=
g/spice/spice/-/blob/master/server/reds.cpp?ref_type=3Dheads#L3062 and gets=
 updated with the latency https://gitlab.freedesktop.org/spice/spice/-/blob=
/master/server/reds.cpp?ref_type=3Dheads#L2614 (but only increased). I stil=
l need to see how this latency is calculated.
> >>>
> >>> Am I missing something or is this design not intended for transmittin=
g
> >>> interactive content via video stream?
> >>> Temporarily overwriting the margin and tweaking parameter settings on
> >>> the msdkh264dec brought the delay to about 80-100ms, which is not yet
> >>> optimal but usable. To see what is technical possible on my setup, I
> >>> made a comparison using moonlight/sunshine which resulted in an delay=
 of
> >>> 20-40ms.
> >>>
> >>> Our goal is to achieve some round trip time similar to the
> >>> moonlight/sunshine scenario to achieve a properly usable desktop
> >>> experience.
> >>>
> >>> Greetings
> >>> Michael
> >>
> >> Greetings
> >> Michael
