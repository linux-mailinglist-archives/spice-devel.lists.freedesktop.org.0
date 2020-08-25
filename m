Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3687B2510EA
	for <lists+spice-devel@lfdr.de>; Tue, 25 Aug 2020 06:51:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CAA36E84C;
	Tue, 25 Aug 2020 04:51:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com
 [IPv6:2607:f8b0:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1CE96E84C
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Aug 2020 04:51:48 +0000 (UTC)
Received: by mail-ot1-x335.google.com with SMTP id x24so9376371otp.3
 for <spice-devel@lists.freedesktop.org>; Mon, 24 Aug 2020 21:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=7VYFEpMJnSRZ8ZsoUimK1J/kE7tufgUqOhKYMpsUYhg=;
 b=S0WE+ooOyZRZbdlSXkQ7TNtd+QfcssAKZJM+PIC/uamTU0s2EccMyAsLm/97Z8K0i7
 O65M7DV8YvvlkErDg7RzTuO1JC068SbprtfQFVmEK4g5iv1IYd0+SCDc+Vw7qI41ypLD
 +zPWa1tazBIp1wCxC8rNSzp9Se4hcj6BtTE+cVot533S9l+tsJgkYMiWBZV0m25NXeqo
 kvgd/Fs8dHN/PTbFyqwFelfuHRKH/VONo5/A9s4fifnZArakCqiWakJ9q39Lbbfx/ViI
 JuD98alOJv3IIeSelHC/6MJMzsAFQ6IFECgRiUYbjx2urk5Z0ZknsoNinJKcI8yPMUEy
 DSww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=7VYFEpMJnSRZ8ZsoUimK1J/kE7tufgUqOhKYMpsUYhg=;
 b=UMAhyoHE8xBdTjUQoF3GTcXsdc9mQvs12S6Qq8pqDNgkK7HcVdrHk4T1hiGRLTzafz
 7bFWaulNTryNle8rhgqF/Y7bE9hdjg+cl4r/7e6JD5ihTdNdH+n2oS1OhSjxwc/SH0Ju
 GONj4Hkm1oBHc0mQlC5FQ1jo3gmeap98yz+kNeTrx9zjlWQpHDAchTMDkwVMBz6rMfuN
 Ro5Xfnt33w39KGP7cWRjbIlWsDC67288huRb+XcZioL+qK2XovDZVhgWyYCN+kOaXCb3
 pIBq3wYLUwkwSmlIxTgsfl5RUNZsVhzjPHLmS7pdtbMPJvUZgeYlJobe3UpaAnY0HUAv
 oB1w==
X-Gm-Message-State: AOAM532TWd70gu66jP5n8x3zMcv0sLYotMa5leItBJsX5Ox8Dx/odyrL
 /6D1x/CzeP3Vbv84xTxctV8axOeFh+bsuM4gMLl8SxJWKIE=
X-Google-Smtp-Source: ABdhPJxruWAhZrZ2maCxORA8KYzUbXiHEKxjCkWyiNfDrcPOp6zw4sTDq42V2+c8UML2lPNdy++1UEF0Mr4DZCvEzMY=
X-Received: by 2002:a9d:4f04:: with SMTP id d4mr5569156otl.210.1598331107732; 
 Mon, 24 Aug 2020 21:51:47 -0700 (PDT)
MIME-Version: 1.0
From: i iordanov <iiordanov@gmail.com>
Date: Tue, 25 Aug 2020 00:51:36 -0400
Message-ID: <CAMS0tn29PAn=j36wef9C96rx_rPpCGW1EmF2WeHBAxvtZt=vKQ@mail.gmail.com>
To: spice-devel <spice-devel@lists.freedesktop.org>
Subject: [Spice-devel] agent_sync_audio_playback call causes deadlock
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
Content-Type: multipart/mixed; boundary="===============0053836917=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0053836917==
Content-Type: multipart/alternative; boundary="000000000000e8ef9e05adac7553"

--000000000000e8ef9e05adac7553
Content-Type: text/plain; charset="UTF-8"

Hello,

Opaque and aSPICE (source at
https://github.com/iiordanov/remote-desktop-clients) both use
spice-gtk-0.37 now, and I found that while I was installing a VM under
oVirt 4.4 using a Live CD (which amusingly was the LiveCD of Proxmox 6.2),
when the Proxmox installer launches and the vdagent which starts in the
installer starts, both Opaque and aSPICE would freeze with some
audio-related debug messages

2020-08-24 01:24:31.609 11571-11643/com.undatech.opaque D/GLib+GSpice:
spice-gstaudio.c:631 PlaybackChannel not created yet, force start
2020-08-24 01:24:31.609 11571-11643/com.undatech.opaque D/GLib+GSpice:
spice-gstaudio.c:299 audio pipeline: appsrc is-live=1 do-timestamp=0
format=time caps="audio/x-raw,format="S16LE",channels=2,rate=48000,lay$
2020-08-24 01:24:31.618 11571-11643/com.undatech.opaque W/libOpenSLES:
Leaving Object::GetInterface (SL_RESULT_FEATURE_UNSUPPORTED)
2020-08-24 01:24:31.621 11571-11643/com.undatech.opaque
W/GLib+GLib-GObject: cannot register existing type 'GstStreamVolume'
2020-08-24 01:24:31.621 11571-11643/com.undatech.opaque
E/GLib+GLib-GObject: g_type_interface_add_prerequisite: assertion
'G_TYPE_IS_INTERFACE (interface_type)' failed
2020-08-24 01:24:31.621 11571-11643/com.undatech.opaque E/GLib+GLib:
g_once_init_leave: assertion 'result != 0' failed
2020-08-24 01:24:31.626 11571-11645/com.undatech.opaque
W/GStreamer+audio-resampler: 0:00:01.582157603 0x74d0497630
../gst-libs/gst/audio/audio-resampler.c:274:convert_taps_gint16_c can't
find exact taps
2020-08-24 01:24:31.628 11571-11645/com.undatech.opaque I/libOpenSLES:
Emulating old channel mask behavior (ignoring positional mask 0x3, using
default mask 0x3 based on channel count of 2)
2020-08-24 01:24:31.635 11571-11645/com.undatech.opaque W/AudioTrack:
createTrack_l(134611203): AUDIO_OUTPUT_FLAG_FAST denied by server;
frameCount 0 -> 1764
2020-08-24 01:24:31.635 11571-11645/com.undatech.opaque I/AudioTrack: Need
throttle time for OpenSLES player

This was happening on an Android 10 arm64 device.

I tracked the issue to the agent_sync_audio_playback() call in
channel-main.c and introduced a patch in my project to disable both
agent_sync_audio_playback and agent_sync_audio_record for the time being.

Does anybody know what could be causing this issue? Please reply-all to
this thread. I'll try to provide whatever information you need to help.

Thank you very much!
iordan

-- 
The conscious mind has only one thread of execution.

--000000000000e8ef9e05adac7553
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br><div>Opaque and aSPICE (source at <a href=3D=
"https://github.com/iiordanov/remote-desktop-clients">https://github.com/ii=
ordanov/remote-desktop-clients</a>) both use spice-gtk-0.37 now, and I foun=
d that while I was installing a VM under oVirt 4.4 using a Live CD (which a=
musingly was the LiveCD of Proxmox 6.2), when the Proxmox installer launche=
s and the vdagent which starts in the installer starts, both Opaque and aSP=
ICE would freeze with some audio-related debug messages</div><div><br></div=
><div>2020-08-24 01:24:31.609 11571-11643/com.undatech.opaque D/GLib+GSpice=
: spice-gstaudio.c:631 PlaybackChannel not created yet, force start<br>2020=
-08-24 01:24:31.609 11571-11643/com.undatech.opaque D/GLib+GSpice: spice-gs=
taudio.c:299 audio pipeline: appsrc is-live=3D1 do-timestamp=3D0 format=3Dt=
ime caps=3D&quot;audio/x-raw,format=3D&quot;S16LE&quot;,channels=3D2,rate=
=3D48000,lay$<br>2020-08-24 01:24:31.618 11571-11643/com.undatech.opaque W/=
libOpenSLES: Leaving Object::GetInterface (SL_RESULT_FEATURE_UNSUPPORTED)<b=
r>2020-08-24 01:24:31.621 11571-11643/com.undatech.opaque W/GLib+GLib-GObje=
ct: cannot register existing type &#39;GstStreamVolume&#39;<br>2020-08-24 0=
1:24:31.621 11571-11643/com.undatech.opaque E/GLib+GLib-GObject: g_type_int=
erface_add_prerequisite: assertion &#39;G_TYPE_IS_INTERFACE (interface_type=
)&#39; failed<br>2020-08-24 01:24:31.621 11571-11643/com.undatech.opaque E/=
GLib+GLib: g_once_init_leave: assertion &#39;result !=3D 0&#39; failed<br>2=
020-08-24 01:24:31.626 11571-11645/com.undatech.opaque W/GStreamer+audio-re=
sampler: 0:00:01.582157603 0x74d0497630 ../gst-libs/gst/audio/audio-resampl=
er.c:274:convert_taps_gint16_c can&#39;t find exact taps<br>2020-08-24 01:2=
4:31.628 11571-11645/com.undatech.opaque I/libOpenSLES: Emulating old chann=
el mask behavior (ignoring positional mask 0x3, using default mask 0x3 base=
d on channel count of 2)<br>2020-08-24 01:24:31.635 11571-11645/com.undatec=
h.opaque W/AudioTrack: createTrack_l(134611203): AUDIO_OUTPUT_FLAG_FAST den=
ied by server; frameCount 0 -&gt; 1764<br>2020-08-24 01:24:31.635 11571-116=
45/com.undatech.opaque I/AudioTrack: Need throttle time for OpenSLES player=
</div><div><br></div><div>This was happening on an Android 10 arm64 device.=
<br></div><div><br></div>I tracked the issue to the agent_sync_audio_playba=
ck<span style=3D"color:rgb(128,128,128);font-style:italic"></span>() call i=
n channel-main.c and introduced a patch in my project to disable both agent=
_sync_audio_playback and agent_sync_audio_record for the time being.<span s=
tyle=3D"color:rgb(128,128,128);font-style:italic"></span><span style=3D"col=
or:rgb(128,128,128);font-style:italic"></span><br clear=3D"all"><div><br></=
div><div>Does anybody know what could be causing this issue? Please reply-a=
ll to this thread. I&#39;ll try to provide whatever information you need to=
 help.<br></div><div><br></div><div>Thank you very much!</div><div>iordan<b=
r></div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" da=
ta-smartmail=3D"gmail_signature">The conscious mind has only one thread of =
execution.</div></div>

--000000000000e8ef9e05adac7553--

--===============0053836917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0053836917==--
