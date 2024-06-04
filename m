Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F16218FBCA7
	for <lists+spice-devel@lfdr.de>; Tue,  4 Jun 2024 21:35:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A97E10E5DE;
	Tue,  4 Jun 2024 19:35:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XFqrKqGR";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com
 [209.85.219.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7CAE10E5DE
 for <spice-devel@lists.freedesktop.org>; Tue,  4 Jun 2024 19:35:37 +0000 (UTC)
Received: by mail-yb1-f181.google.com with SMTP id
 3f1490d57ef6-df79380ffceso145480276.1
 for <spice-devel@lists.freedesktop.org>; Tue, 04 Jun 2024 12:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1717529736; x=1718134536; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uoXsi2tAztqXLN8juYg4ELKvhiKSNSPZooePXlKBer4=;
 b=XFqrKqGRIc2whpt3Mz0hPjt5ttyrZg0q9UglcZt+VaxauciLVE370EsiqUMjU8ZuDG
 77EXPPMfJJv7F+TOwdruDW21IDTmA2Ih+upY/GN5Jae+YzL2z5g+jjwEA73RZmeUJ9cl
 Jgm3Zw7xWhcRcR6ykPpGFB30DtZUtp04aA6paZLuMAxokSugWgLf1w3MY27bQgMCpFTA
 cc93CGhBN78NGQzKlmvxeDm/2vYyJ6+6Z2f1q8HwPMhMkuzvA0Rg1VlddJ16fqHg+ebp
 9VQ2FR9eYnBpQAmvyeC8sjR904EA2e01v3YLzb6pYzBsCmkT1fvxmThnOhMcJrJlX5tY
 nelA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717529736; x=1718134536;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=uoXsi2tAztqXLN8juYg4ELKvhiKSNSPZooePXlKBer4=;
 b=hevJcdMtlq38SSczxDyyUAu4Ce0DB8gVbDIo/4Qnl+oQQdWcf1Wb9UrdC90F7+f/Xm
 tdoWmmkZEUlOvdV3WKx6WJVRtkvZnMYjDBv6IxF6535PIqdEpIrBRz6k2Oppl/44INuy
 U4QOhbnvpyTHBkqsRgiq0IoMydTG8Pf00pDz0aAvwmxThe2bAhjq2EXzsMJuZ3CRglHE
 Jq8aXnoCUVXBZTfLePTwsi235U83+IkGzT99O1QqsXTVTwVwLjT/d81IFmLC3yttEW4o
 Dd68fcH+CoScWZAqZJtEqVw5vtkm96jfA1HLyDE58md2F4eUksJtAU7t7dPn+3Cy7FKZ
 4Xvg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXqJFqydki0euoGTdt6a00rjY3O4fAOniwaiSdl95OPw/+5k5PfuJcmWzVwQO2T3BEnRY5zQldF1m4sFSA9UTJVIcwRld43biueTQB2p5rfQPk=
X-Gm-Message-State: AOJu0Ywi8anV4NFZXGlTcjEpViRIQzY0dBWr4Rs1v5xuhrlrupWY8tcM
 CSXpW9Z63nBcth2hhVWnFilsGZm/NQOycSptPF/rWwQCtvebmuOrXiZ7uZ5vHPeAaxtl8IzTKbi
 XvW/6p1W01YIqdyDlFWML2T3gyR8=
X-Google-Smtp-Source: AGHT+IFaDt/2zOL25YqC5ABSuuzfowgEqaktfY5oW2fmi3aykejJ5s+pzXN+zFqfRTF/vPB7hod5OBYOGOZ4C4CrVaM=
X-Received: by 2002:a25:7a45:0:b0:df4:7a85:d603 with SMTP id
 3f1490d57ef6-dfab854c0c5mr3182172276.10.1717529736315; Tue, 04 Jun 2024
 12:35:36 -0700 (PDT)
MIME-Version: 1.0
References: <31bdee77-ac54-4da4-bb8f-fbc00882070d@rz.uni-freiburg.de>
 <03544c6b-b8b4-441a-b0aa-9d6a629c9794@rz.uni-freiburg.de>
 <CAHt6W4cOrnTZhEAjyfQY3Mf5Y93ynNNeM8Y2+3bCLHvDhXLzfw@mail.gmail.com>
 <267f038a-3d8f-4d7f-bb13-e77c4ea69558@rz.uni-freiburg.de>
 <CAHt6W4eOY0GfTBiVfjC2ksQGxqTBWouxo3Wnfeu5Urtikgu9GQ@mail.gmail.com>
 <18fdc646-f2ca-44e8-b329-4d82b7d56071@rz.uni-freiburg.de>
 <jgs46gtlnammisxpmxg5suavqcc2lz3tjplvc4kb4gsrdhhb6e@zb4rifwhrh3p>
 <CAHt6W4cdbUbT7DAoAm5KEigkNPXyX+HHBz6uUGYefiZCNd18CA@mail.gmail.com>
In-Reply-To: <CAHt6W4cdbUbT7DAoAm5KEigkNPXyX+HHBz6uUGYefiZCNd18CA@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 4 Jun 2024 20:35:25 +0100
Message-ID: <CAHt6W4edxA0HXqzBuwiZ+HufvayS=W8nyN5oS-EPbgUfzBB40w@mail.gmail.com>
Subject: Re: High delay of video-streams
To: Victor Toso <victortoso@redhat.com>
Cc: Michael Scherle <michael.scherle@rz.uni-freiburg.de>,
 spice-devel@lists.freedesktop.org, 
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

Hi,
   sent my patch as MR.
https://gitlab.freedesktop.org/spice/spice/-/merge_requests/226.

Frediano

Il giorno sab 1 giu 2024 alle ore 17:14 Frediano Ziglio
<freddy77@gmail.com> ha scritto:
>
> Il giorno lun 27 mag 2024 alle ore 16:19 Victor Toso
> <victortoso@redhat.com> ha scritto:
> >
> > Hi,
> >
> > On Tue, Apr 16, 2024 at 12:59:50PM GMT, Michael Scherle wrote:
> > > Hello,
> > >
> > > Thanks for your changesets, they definitely reduce the delay signific=
antly
> > > (to a similar level as our provosoric fixes, but yours are much clean=
er).
> > >
> > > On the client side (spice-gtk) I looked at the problem with the high
> > > decoding time (2 frames buffering) and was able to find a simple fix =
with
> > > the help of the gstreamer community:
> > >
> > > ---
> > >  src/channel-display-priv.h | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/src/channel-display-priv.h b/src/channel-display-priv.h
> > > index 1a7590a..a2af1a7 100644
> > > --- a/src/channel-display-priv.h
> > > +++ b/src/channel-display-priv.h
> > > @@ -177,7 +177,7 @@ static const struct {
> > >       * (hardcoded in spice-server), let's add it here to avoid the w=
arning.
> > >       */
> > >      { SPICE_DISPLAY_CAP_CODEC_H264, "h264",
> > > -      "h264parse ! avdec_h264", "video/x-h264,stream-format=3Dbyte-s=
tream" },
> > > +      "h264parse ! avdec_h264",
> > > "video/x-h264,stream-format=3Dbyte-stream,alignment=3Dau" },
> > >
> > >      /* SPICE_VIDEO_CODEC_TYPE_VP9 */
> > >      { SPICE_DISPLAY_CAP_CODEC_VP9, "vp9",
> > > @@ -185,7 +185,7 @@ static const struct {
> > >
> > >      /* SPICE_DISPLAY_CAP_CODEC_H265 */
> > >      { SPICE_DISPLAY_CAP_CODEC_H265, "h265",
> > > -      "h265parse ! avdec_h265", "video/x-h265,stream-format=3Dbyte-s=
tream" },
> > > +      "h265parse ! avdec_h265",
> > > "video/x-h265,stream-format=3Dbyte-stream,alignment=3Dau" },
> >
> > jfyi, this was discussed in the past. It depends how spice server
> > was configured too, no? I'm not sure, it has been awhile. What I
> > mean is, what/who is doing h264 encoding. We had a
> > spice-streaming-agent that wrapped guest's GPU h264 encoding and
> > sent to the client, with the same protocol.... depending how it
> > is configured, the stream-format was important I think. Again,
> > not 100% sure.
> >
>
> I think we  used the same format. I also remember that we sent an
> additional NAL unit to force the "flush" so I think it's very similar,
> the stream render waits the next SPICE packet as not recognizing the
> frame to have ended.
>
> > >
> > >  };
> > >
> > > --
> > > 2.40.1
> > >
> > > However, this change should probably still be tested on different set=
ups.
> > > Since I don't know whether they are always au aligned, I should proba=
bly
> > > find out about that.
> > >
> > > Also I have made other experiments, such as removing decoding_queue i=
n
> > > channel-display-gst.c and adding the SpiceGstFrame to the metadata of=
 the
> > > gstBuffer instead, as well as completely ignoring the display time of=
 a
> > > frame and instead displaying them immediately. With that i got down t=
o
> > > 60-80ms delay.
> >
> > If you send patches about this one, feel free to tag me. This
> > looks cool.
> >
> > > Do you know if your changes or similar ones that reduce the
> > > delay will go upstream soon?
> > >
> > > While looking through the source code, I found
> > > SPICE_KEYPRESS_DELAY, which is not mentioned anywhere. Is this
> > > the only use to save some network traffic? Is there any reason
> > > not to always set this to 0 in today's network environments?
> > > (And maybe set the default to 0?)
> >
> > Introduced in c03e002152dc0c, commit log says:
> >
> >  > widget: add keypress-delay property
> >  >
> >  > The delay before the press event is sent to the server if the key is
> >  > kept pressed. If the key is released within that time, that delay is
> >  > ignored and a single key-press-release event will be sent.
> >
> > Introduced in 2012. I'm pretty sure there were reasons for it.
> > Not sure if worth to remove it.
> >
>
> Not much indication on why it was introduced. Beside reducing the
> network packets (but not much the traffic, display traffic is way
> bigger) I would suppose wonky networks. Suppose the network has quite
> some weird latency patterns and you type (so press and release) "A"
> key. You send a press request and a release request. But the server
> receives the release after a while (say 1 second or more for
> instance). This could trigger key repetition in the guest causing a
> "AAA" (for instance) to be typed. Typing normally 100ms is enough to
> release the key so even on wonky networks you won't hit key
> repetitions due to network delays. But that's a theory. Surely if you
> want to play a game this delay is not helping :-)
>
> > Cheers,
> > Victor
> >
> > > Michael
> > >
>
> Frediano
>
> > > On 03.04.24 21:22, Frediano Ziglio wrote:
> > > > Frediano
> > > >
> > > > Il giorno mar 2 apr 2024 alle ore 15:27 Michael Scherle
> > > > <michael.scherle@rz.uni-freiburg.de> ha scritto:
> > > > >
> > > > > Hi Frediano,
> > > > >
> > > > > thank you very much for your detailed answer.
> > > > >
> > > > >
> > > > > On 02.04.24 14:13, Frediano Ziglio wrote:
> > > > >
> > > > > > Really short explanation: Lipsync.
> > > > > >
> > > > > > Less cryptic explanation: video streaming was added much time a=
go when
> > > > > > desktops used 2D graphic drawings, like lines, fillings, string=
s and
> > > > > > so on. At that time networks were more unreliable, latency bigg=
er, and
> > > > > > with high probability a continuous bitblt on the same big area =
was a
> > > > > > video playing. So the idea of detecting the video playing and
> > > > > > optimizing to sync audio and video was a good idea.
> > > > >
> > > > > ok this explains a lot.
> > > > >
> > > > > > Now starts my opinionated ideas. The idea of continuous bitblt =
being
> > > > > > only a video stream is wrong, nowadays desktops do use large bi=
tblt
> > > > > > for everything, or better they use 3D cards a lot and compose t=
he
> > > > > > various windows on the screen which appears to us as just bitbl=
t,
> > > > > > often contiguous. So the delay should just be removed optimizin=
g for
> > > > > > real time video streaming. As you realize the algorithm also ke=
eps
> > > > > > increasing the delay for every glitch found which is not improv=
ing the
> > > > > > user experience. I have different changesets removing entirely =
all
> > > > > > these delays (it's possible to get this just by changing the se=
rver
> > > > > > part), the result is much less delay, the audio/video sync (wat=
ching a
> > > > > > movie) is, with nowadays networks, acceptable.
> > > > >
> > > > >
> > > > > Would it be possible to get your changesets, so that I could try =
them
> > > > > out? I would be interested to know how this can be implemented wi=
th only
> > > > > server-side changes. A dirty idea I had (and tried) would be to s=
et the
> > > > > mm_time to the past so that the client displays the image immedia=
tely,
> > > > > but that would not be a good fix in my opinion.
> > > > >
> > > >
> > > > That's the commit
> > > > https://cgit.freedesktop.org/~fziglio/spice-server/commit/?h=3Dnvid=
ia&id=3Deaaec7be80a9d402f425f7571bb27a082ebf739a.
> > > >
> > > > > I would rather consider it reasonable that the server timestamps =
the
> > > > > frames (and perhaps the sound) with the encoding time and that th=
e
> > > > > client itself calculates when it wants to display them (from the =
diffs).
> > > > > So the client could decide if it wants to display the images dire=
ctly or
> > > > > add some delay to compensate for network jitter (or lipsync) or m=
aybe
> > > > > even implement something like v-sync. These would of course be br=
eaking
> > > > > changes that would require changes to the client and server and w=
ould
> > > > > make them incompatible with older versions. If this could not be =
done
> > > > > directly, due to compatibility reasons, maybe this could be imple=
mented
> > > > > in a separate low latency mode or something like that (which both=
 server
> > > > > and client needs to support).
> > > > >
> > > >
> > > > I suppose the negative time you though is something like
> > > > https://cgit.freedesktop.org/~fziglio/spice-server/commit/?h=3Dnvid=
ia&id=3D4a1a2a20505bc453f30573a0d453a9dfa1d97e7c
> > > > (which improve the previous).
> > > >
> > > > > Even with above ideas applied, for spice-gtk, I have noticed a hi=
gh
> > > > > decode delay. The gstreamer pipeline always seems to keep at leas=
t 2
> > > > > frames in the pipeline (regardless of the frame rate) which incre=
ases
> > > > > the delay further. Have you also noticed this? I'm currently look=
ing
> > > > > into the reason for this.
> > > > >
> > > > > When testing stuff out we saw that Sunshine/Moonlight performed v=
ery
> > > > > well in generating  a low delay and high QoE. That is kind of our
> > > > > benchmark for remote access to strive for :)
> > > > >
> > > > > Greetings
> > > > > Michael
> > > > >
> > > >
> > > > Frediano
> > > >
> > > > > > >
> > > > > > > On 15.03.24 14:08, Michael Scherle wrote:
> > > > > > > > Hello spice developers,
> > > > > > > >
> > > > > > > > we are trying to develop an Open Source virtual desktop inf=
rastructure
> > > > > > > > to be deployed at multiple German universities as described=
, by my
> > > > > > > > colleagues, in the paper which I have put in the attachment=
. The
> > > > > > > > solution based on openstack, qemu, spice... Our plan is als=
o to have VM
> > > > > > > > instances with virtual GPUs (SR-IOV). Due to the resulting =
requirements,
> > > > > > > > it is necessary to transmit the image data as a video strea=
m.
> > > > > > > > We have seen Vivek Kasireddy recent work on spice which sol=
ves exactly
> > > > > > > > this problem. However, when we tested it, we noticed a very=
 high input
> > > > > > > > to display delay (400 ms+ but only if the image data is tra=
nsferred as
> > > > > > > > video-stream). However, the problem seems to be a more gene=
ral spice
> > > > > > > > problem or is there something wrong with our setup or are t=
here special
> > > > > > > > parameters that we are missing?
> > > > > > > >
> > > > > > > > Our setup:
> > > > > > > >
> > > > > > > > QEMU: https://gitlab.freedesktop.org/Vivek/qemu/-/commits/s=
pice_gl_on_v2
> > > > > > > > Spice:
> > > > > > > > https://gitlab.freedesktop.org/Vivek/spice/-/commits/encode=
_dmabuf_v6
> > > > > > > > virt-viewer
> > > > > > > > Intel HW decoder/encoder (but same with sw)
> > > > > > > >
> > > > > > > > I have looked into what is causing the delay and have notic=
ed that
> > > > > > > > encoding only takes about 3-4ms. In general, the image seem=
s to reach
> > > > > > > > the client in less than 15ms.
> > > > > > > > The main problem seems to be that gstreamer gets a very hig=
h
> > > > > > > > margin(https://gitlab.freedesktop.org/spice/spice-gtk/-/blo=
b/master/src/channel-display.c?ref_type=3Dheads#L1773) and therefore waits =
a long time before starting decoding. And the reason for the high margin se=
ems to be the bad mm_time_offset https://gitlab.freedesktop.org/spice/spice=
-gtk/-/blob/master/src/spice-session.c?ref_type=3Dheads#L2418 which is used=
 to offset the server time to the client time (with some margin). And this =
variable is set by the spice server to initially 400 ms https://gitlab.free=
desktop.org/spice/spice/-/blob/master/server/reds.cpp?ref_type=3Dheads#L306=
2 and gets updated with the latency https://gitlab.freedesktop.org/spice/sp=
ice/-/blob/master/server/reds.cpp?ref_type=3Dheads#L2614 (but only increase=
d). I still need to see how this latency is calculated.
> > > > > > > >
> > > > > > > > Am I missing something or is this design not intended for t=
ransmitting
> > > > > > > > interactive content via video stream?
> > > > > > > > Temporarily overwriting the margin and tweaking parameter s=
ettings on
> > > > > > > > the msdkh264dec brought the delay to about 80-100ms, which =
is not yet
> > > > > > > > optimal but usable. To see what is technical possible on my=
 setup, I
> > > > > > > > made a comparison using moonlight/sunshine which resulted i=
n an delay of
> > > > > > > > 20-40ms.
> > > > > > > >
> > > > > > > > Our goal is to achieve some round trip time similar to the
> > > > > > > > moonlight/sunshine scenario to achieve a properly usable de=
sktop
> > > > > > > > experience.
> > > > > > > >
> > > > > > > > Greetings
> > > > > > > > Michael
> > > > > > >
> > > > > > > Greetings
> > > > > > > Michael
> > >
