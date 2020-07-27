Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 689C322E6F4
	for <lists+spice-devel@lfdr.de>; Mon, 27 Jul 2020 09:52:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77AF789D39;
	Mon, 27 Jul 2020 07:52:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E8CC89D39
 for <spice-devel@lists.freedesktop.org>; Mon, 27 Jul 2020 07:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1595836373;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RBClhqOLnhsk6XnWKbLMyDpWkpESKgigXL25Bpq6zNM=;
 b=bU2ZDhjtY7hrb3nRii6nsitWGidj77G+as0xcm+rJdeNJ26d+XGZ8t9PEM8qbMsgGfId2e
 g+BawK8GDjdvLaRQm9kD3b4n1y8MYaQPFEgAYGCuhMY97byOLEq3v6/V6FhpJ1DhgKRryI
 Kuejz8GzPiIs5E78upLxNhNM0hFnOvU=
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-391-eYm99pZtPCSTQog2_GiRFg-1; Mon, 27 Jul 2020 03:52:49 -0400
X-MC-Unique: eYm99pZtPCSTQog2_GiRFg-1
Received: by mail-oi1-f200.google.com with SMTP id h17so3489708oib.18
 for <spice-devel@lists.freedesktop.org>; Mon, 27 Jul 2020 00:52:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RBClhqOLnhsk6XnWKbLMyDpWkpESKgigXL25Bpq6zNM=;
 b=Q5s8v0ffQHPbCeUW5bAuo/jsDO3Vn1hGEhZHnS+hNvD+P4vXY9hoLuUHn4UxTyH55z
 g/qswOVSCstHb5bBefHBigkN7kefsnrcLfq2+EQG7WosmBIwJ4kXqFkA2KE/cF8STiNs
 z3Fym427UbYYwqBe74vZTTYD+vLLwfjrlBO1VYdb4Bhv6LBn9xCDZ9TkPYQo3aB6lCLP
 ssrVF7Q1J6JLYtVBClyw2EEfbpMYvk7unC4mpqa+YthkQHTBhHSp2tSz2Z0DSrpirg1N
 9x6Pvh3GZBbQ4TD5X3zH+m8KVe36KeFY+Mk2s9n40UotjiIeCWBP4vIAqvyqWs8gwWyG
 mhqg==
X-Gm-Message-State: AOAM530Gw9u1Mozs+UZx073dIfbeqLeMnqhDWGns8XzWCU+7ovv+qZMO
 ENdn4aDFCA+UAIA0OYVu4YwkiudAjxmNp4m+zQULCfu4S5c88BYcY1NZyUGCuor5QUmygTm5vCI
 9C75Tu+GqaAMFq6WBQ5ZSlUYUwOre8VNm/saew+A5T/T47xA=
X-Received: by 2002:aca:bed5:: with SMTP id
 o204mr16152882oif.169.1595836368640; 
 Mon, 27 Jul 2020 00:52:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzNBtMr8ZbawdDoOeNePCM1pd9Dth5Ie5YPuugAWUU5zcAGjp4RxDRMA5hcKuIfxZdvIs5mDaMXuXlMRKRJl7U=
X-Received: by 2002:aca:bed5:: with SMTP id
 o204mr16152864oif.169.1595836368236; 
 Mon, 27 Jul 2020 00:52:48 -0700 (PDT)
MIME-Version: 1.0
References: <7cbfbb62-31ff-5eef-5427-7958921a1bfa@gmail.com>
 <631443465.25687850.1588591196710.JavaMail.zimbra@redhat.com>
 <7a072038-02e9-afcc-d856-82483e0c7cb9@gmail.com>
 <d88af62f-de68-e846-da40-980024e40179@redhat.com>
 <6cf0ba19-2091-1486-12a4-faedbe28ba17@gmail.com>
 <273469d7-6b85-8ad3-2f93-8a5f5fece664@redhat.com>
 <9e08513d-88aa-a253-730a-7c20e535bbd9@gmail.com>
In-Reply-To: <9e08513d-88aa-a253-730a-7c20e535bbd9@gmail.com>
From: Kevin Pouget <kpouget@redhat.com>
Date: Mon, 27 Jul 2020 09:52:37 +0200
Message-ID: <CADJ1XR0JTd6oiPBASj7NJuE_Je+=gRgCNZhHqScbcVrimYpERg@mail.gmail.com>
To: Felix Leimbach <felix.leimbach@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Stuttering video playback on LAN
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hello,

for the record, I'm sure that I managed to run spice-streaming-agent
with the Intel vaapih264enc encoder. Unfortunately I don't have
anymore the setup to try it again, but all the gstreamer encoders were
working properly (vaapi h264/vp8, nvenc h264 ...)

I would recommend testing GST from the command-line first: get a
pipeline that encodes the screen (ximagescr) into h264, decodes it and
shows it onscreen, then replace the encoder with vaapih264enc. If it
works, the problem might be in spice-streaming-agent or its
configuration, if it doesn't work, the problem is on the gst+vaapi
libraries (and vgpu) setup

I hope that can help,
Kevin

On Mon, Jul 27, 2020 at 9:40 AM Felix Leimbach <felix.leimbach@gmail.com> wrote:
>
> Hi Uri
>
> I've succeeded in using h264 with spice-streaming-agent, but only with a linux client. The windows client does not seem to support anything besides mjpeg, even after installing and tinkering with gstreamer.
> I've opened a bugreport: https://gitlab.com/virt-viewer/virt-viewer/-/issues/5
>
> Another drawback: spice-streaming-agent only works with the x264enc encoder, which does not support VAAPI based hardware acceleration with the Intel GPU I passed through with GVT-g.
>
> The vaapih264enc codec claimed that it cannot produce a x-h264 stream:
>
> # ./spice-streaming-agent -d -c gst.h264=vaapih264enc
> ...
> spice-streaming-agent[266317]: Gstreamer plugin: Specified encoder named 'vaapih264enc' cannot produce 'video/x-h264, stream-format=(string)byte-stream, framerate=(fraction)25/1' streams. Make sure that gst.CODEC=ENCODER is correctly specified and that the encoder is available.
> spice-streaming-agent[266317]: Gstreamer plugin: 'x264enc' encoder plugin is used
>
> The avenc_h264 codec loaded but failed:
>
> # ./spice-streaming-agent -c gst.h264=avenc_h264_omx:bitrate=100000
> spice-streaming-agent[269477]: Gstreamer plugin: Looking for encoder plugins which can produce a 'video/x-h264, stream-format=(string)byte-stream, framerate=(fraction)25/1' stream
> spice-streaming-agent[269477]: Gstreamer plugin: 'vaapih264enc' plugin is available
> spice-streaming-agent[269477]: Gstreamer plugin: 'x264enc' plugin is available
> spice-streaming-agent[269477]: Gstreamer plugin: 'avenc_h264_omx' plugin is available
> spice-streaming-agent[269477]: Gstreamer plugin: 'avenc_h264_omx' encoder plugin is used
> spice-streaming-agent[269477]: Gstreamer plugin: Trying to set encoder property: 'bitrate = 100000'
> ** (spice-streaming-agent:269477): CRITICAL **: 22:47:26.612: gst_vaapi_display_lock: assertion 'display != NULL' failed
> ** (spice-streaming-agent:269477): CRITICAL **: 22:47:26.612: gst_vaapi_display_unlock: assertion 'display != NULL' failed
> ** (spice-streaming-agent:269477): CRITICAL **: 22:47:26.617: gst_vaapi_display_lock: assertion 'display != NULL' failed
> ** (spice-streaming-agent:269477): CRITICAL **: 22:47:26.617: gst_vaapi_display_unlock: assertion 'display != NULL' failed
> spice-streaming-agent[269477]: No sample- EOS or state change
>
> So I reverted back to using regular spice in qemu without spice-streaming-agent.
> I think it would be a huge improvement if the spice component in the qemu host process could leverage GPU based encoding with h264. We wouldn't need a guest agent, we wouldn't require GPU passthrough and have great performance for multimedia use-cases. Not sure were I would open a feature request for that, though.
>
> Best,
> Felix
>
>
> On 18.05.20 12:21, Uri Lublin wrote:
> > On 5/17/20 6:35 PM, Felix Leimbach wrote:
> >> Hi Uri,
> >>
> >> On 17.05.20 16:08, Uri Lublin wrote:
> >>> On 5/16/20 7:07 PM, Felix Leimbach wrote:
> >>>>
> >>>>>>
> >>>>>> I experience stuttering video playback in remote-viewer despite connecting
> >>>>>> via GBit/s LAN, using fast hardware and the QXL driver.
> >>>>>> Up until a video size of roughly 800x600 the playback is smooth. But on
> >>>>>> anything bigger, like my native resolution of 2540x1440, video playback is
> >>>>>> stuttering annoyingly.
> >>>>>> After lots of unsuccessful tinkering with spice parameters and qxl parameters
> >>>>>> I'm asking you guys for help.
> >>>>>>
> >>>>>> Client:
> >>>>>> Windows 10 1909
> >>>>>> Remote Viewer 8.0-256
> >>>>>> Quadcore i7-7820HQ 2.9GHz
> >>>>>> 16GB DDR4 RAM
> >>>>>>
> >>>>>> Host of the VM:
> >>>>>> Gentoo Linux
> >>>>>> Kernel 4.14.172
> >>>>>> Qemu 4.2.0
> >>>>
> >>>> I've updated to newer versions in the meantime, but no noticeable changes.
> >>>>
> >>>> Qemu 5.0.0
> >>>> Host kernel 5.4.39
> >>>> Remote Viewer 9.0-256 (x64) on the Windows 10 Client
> >>>>
> >>>>>> <snipped>
> >>>>>>
> >>>
> >>> <snipped>
> >>>
> >>>> I noticed very high CPU usage in the guest during playback, because chrome, vlc, mpv used software h264 decoding.
> >>>> I fixed this by passing a virtualized instance of the hosts Intel GPU to the guest via GVT-g.
> >>>>
> >>>> These are the qemu parameters I use for GVT-g:
> >>>> -spice port=5906,addr=10.42.2.250,password=changed
> >>>> -vga virtio
> >>>> -display egl-headless,rendernode=/dev/dri/card0
> >>>> -device vfio-pci,sysfsdev=/sys/bus/mdev/devices/f14c80d5-9ade-4802-9509-1d877d32d159,display=on,ramfb=on,driver=vfio-pci-nohotplug
> >>>
> >>> Perhaps here it would help to set streaming-video=all -spice option.
> >>
> >> It doesn't really help. Still very stuttering playback, even with a video-player window size of only 720x576.
> >> I now believe this is caused by a CPU bottleneck on the CLIENT (not guest), i.e. my Windows 10 machine.
> >> virt-viewer.exe uses consistently 12% CPU, which is 100% of one core (Quad Core with SMT => 8 logical cores).
> >> This is crazy, since the CPU core is running a modern i7 at 3.6 GHz (Turbo) with no other significant CPU users (system is idle).
> >> Could this be a problem of remote-viewer.exe not using gstreamer codecs (and hw accel) properly?
> >> Got these spice-debug messages on the client: "no video decoders from GSTreamer for {mjpeg,vp8,h264,vp9,h265} were found".
> >
> > Maybe the client is built without gstreamer.
>
>
>
>
> >> Also I noticed that the qemu process on the host is using much CPU, probably due to spice encoding the video frames.
> >> The host shows 4 qemu-ystem-x86_64 threads using 93%, 34%, 24%, 16% CPU when playing a 720x576 video in the guest.
> >> However the guest shows only 14% and 7% use for its 2 vCPUs in htop because it uses VA-API (GPT-g) in the video player (vlc, mpv).
> >
> > With egl-headless, spice-server encodes the whole screen, not 720x576 video. Since the client
> > supports almost no codec likely
> > it's using mjpeg
> >
> >>
> >> So the host qemu threads use MUCH more CPU than the guest. When I disconnect spice (video still playing) the host qemu CPU usage drops to 35%, 1%, 1%, 1%, as expected.
> >> Conclusion: Spice encoding on the host is very CPU hungry.
> >
> > Your conclusion makes sense to me.
> >
> >>
> >> Is it possible to GPU-accelerate the video encoding in the host qemu process?
> >
> > I think it can not use anything other than mjpeg if that's the only codec the client supports.
> >
> >> I've built spice and qemu with gstreamer and drm support and VA-API is working nicely.
> >> Can spice use that? How?
> >
> > Possibly, for H264 you need to change the get_gst_codec_name (gstreamer pipe);
> > For vp8 it should be done already.
> >
> >>
> >>>>
> >>>> Unfortunately video playback is still not smoother. In fact it is about the same smoothness but new visual artefacts in the video make it worse. I think this is due to egl-headless.
> >>>> For testing/comparison I installed a Windows 10 guest with the same GVT-g GPU and used RDP with h264 activated. Playback was much better and used only about 120MBit/s.
> >>>>
> >>>> Next I tried using the spice-streaming-agent in the guest to send a h264 encoded picture via spice.
> >>>> However, the windows build of remote-viewer doesn't seem to support this. The new spice display is created and I see the mouse cursor in it but no picture (just black).
> >>>
> >>> You may be the first to test spice-streaming-agent + windows client.
> >>>
> >>> I think there is some work to be done in the windows client to make
> >>> it handle better streams from spice-streaming-agent
> >>>
> >>> Also there is some work to be done to enable spice-streaming-agent
> >>> on windows guests.
> >>>
> >>>> Log from the guest:
> >>>> felix@idefix:~$ ./spice-streaming-agent -d
> >>>> spice-streaming-agent[2465]: GOT START_STOP message -- request to START streaming
> >>>> spice-streaming-agent[2465]: streaming starts now
> >>>> spice-streaming-agent[2465]: Got device info of 1 devices from the plugin
> >>>> spice-streaming-agent[2465]:    stream id 0: device address: pci/0000/06.0, device display id: 2
> >>>> spice-streaming-agent[2465]: got a frame -- size is 321265 (26 ms) (1589641660285 ms from last frame)(1589641660258136 us)
> >>>> spice-streaming-agent[2465]: wXh 1920X1200  codec=1
> >>>
> >>> Note that it's not H264, but MJPEG (codec=1)
> >>
> >> You are right, so I debugged this:
> >>
> >> Launching spice-streaming-agent with GST_DEBUG=6 shows a bunch of h264 related messages which seem to indicate that the gstreamer codecs are loaded (not sure):
> >> gstregistry.c:461:gst_registry_add_plugin:<registry0> adding plugin 0x55d279f8fe70 for filename "/usr/lib/x86_64-linux-gnu/gstreamer-1.0/libgstuvch264.so"
> >> gstregistry.c:577:gst_registry_add_feature:<registry0> adding feature 0x55d279fe1650 (video/x-h264)
> >> gstregistrychunks.c:729:gst_registry_chunks_load_feature: Added feature vp8enc, plugin 0x55d279ed1150 vpx
> >>
> >> However I didn't find an argument to force spice-streaming-agent to use a specific codec. Reading the source code I found the option "-c codec_name=h264", but it doesn't seem to have any effect.
> >>
> >> Maybe it fails auto-negotiation with the client which does not support it?
> >
> > Likely.
> >
> > Uri.
> >
> >> On the client with the "--spice-debug" option I found interesting messages:
> >>
> >> (remote-viewer.exe:15956): Spice-DEBUG: 17:17:06.218: ../src/channel-display-gst.c:792:gstvideo_has_codec: No video decoders from GStreamer for mjpeg were found
> >> (remote-viewer.exe:15956): GSpice-DEBUG: 17:17:06.218: ../src/channel-display.c:894 GStreamer does not support the mjpeg codec
> >> (remote-viewer.exe:15956): Spice-DEBUG: 17:17:06.219: ../src/channel-display-gst.c:792:gstvideo_has_codec: No video decoders from GStreamer for vp8 were found
> >> (remote-viewer.exe:15956): GSpice-DEBUG: 17:17:06.220: ../src/channel-display.c:894 GStreamer does not support the vp8 codec
> >> (remote-viewer.exe:15956): Spice-DEBUG: 17:17:06.221: ../src/channel-display-gst.c:792:gstvideo_has_codec: No video decoders from GStreamer for h264 were found
> >> (remote-viewer.exe:15956): GSpice-DEBUG: 17:17:06.222: ../src/channel-display.c:894 GStreamer does not support the h264 codec
> >> (remote-viewer.exe:15956): Spice-DEBUG: 17:17:06.223: ../src/channel-display-gst.c:792:gstvideo_has_codec: No video decoders from GStreamer for vp9 were found
> >> (remote-viewer.exe:15956): GSpice-DEBUG: 17:17:06.224: ../src/channel-display.c:894 GStreamer does not support the vp9 codec
> >> (remote-viewer.exe:15956): Spice-DEBUG: 17:17:06.227: ../src/channel-display-gst.c:792:gstvideo_has_codec: No video decoders from GStreamer for h265 were found
> >> (remote-viewer.exe:15956): GSpice-DEBUG: 17:17:06.230: ../src/channel-display.c:894 GStreamer does not support the h265 codec
> >>
> >> Any ideas how to fix this? Should I open a bug report >
> >>>> <snipped>
> >>>>
> >>>> If I use remote viewer from a linux client then it does indeed work! Playback is nearly smooth, about the same as with RDP and h264!
> >>>> So I guess it's a bug in the windows remote-viewer. Seems like it doesn't have gstreamer support, so I'll open a bug report.
> >>>>
> >>>> Any other ideas what I can try to get good reasonable video playback with good office-work performance?
> >>>>
> >>>> On a side note: Audio via spice isn't working. I hear a few strange noises and then only silence. So I use pulseaudio transmitting the sound to the client independent of spice.
> >>
> >> Found the reason: It's a regression in the windows version of remote-viewer. Was caused by libgstdirectsound.dll being replaced with libgstwasapi.dll and this changed the audio subsystem being used.
> >> Details: https://gitlab.com/virt-viewer/virt-viewer/-/issues/2
> >>
> >> Cheers,
> >> Felix
> >>
>
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
