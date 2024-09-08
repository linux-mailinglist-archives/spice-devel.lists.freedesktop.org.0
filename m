Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C8E9708CE
	for <lists+spice-devel@lfdr.de>; Sun,  8 Sep 2024 18:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57D5E10E1CD;
	Sun,  8 Sep 2024 16:43:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DsjYUsgX";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com
 [209.85.128.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAA9110E1CD
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Sep 2024 16:43:54 +0000 (UTC)
Received: by mail-yw1-f182.google.com with SMTP id
 00721157ae682-6d49cec2a5dso33615087b3.3
 for <spice-devel@lists.freedesktop.org>; Sun, 08 Sep 2024 09:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725813834; x=1726418634; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yOvVBriSH57oDFvvR1fxwgRLC8fAnGLJTBj05te/VzQ=;
 b=DsjYUsgXF0KeUppSrlpkp257YkzWwAj52sIECmIn9Z20nB730QQe1sYNUbLY/nbROG
 I+LTNHhrKTezheFeYZv9nrBF+V5c7Hd1yaBKrB3kNevX7hSKzY2eKi58HQZVj4IOTk2w
 EA1i2lXNO1vNxBremUoQM/FFjDSwaYMoZCLCW2UeDhbSUqrOC1HFtdfMItNlXmNUzwk5
 oaDm7P8jgk96pftBm0vpHw8zUEjPUpjZlyTaNMnl6r3NuNhJNzK4Cwcc9BKrZ90n8WF+
 iKPpc+w4NJOCNkr3qA7Rme9xCeJN+EE5RIdw8gyLgv7gNgJlY4Y3poVQH7539ofIywN5
 5NeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725813834; x=1726418634;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=yOvVBriSH57oDFvvR1fxwgRLC8fAnGLJTBj05te/VzQ=;
 b=h07x8G+1043CCfGOtmhKnyCvL8aGlF7GsaNOpMAm6EPcHsnGyuqb9ohdXxxFtOkMgS
 KqF32ym1qHhovManHuMOiegNI+P5bdRUFjtv+LLM2qO8X6RIz4HT0pSo88WAkO0SBy1a
 P+J6/D0eoZxBFKfxIhSw4urDvleqjivsfXbaJRdKRtUOBY4alDJUwTHRynfkkJYPriQd
 zCpQeTQB1vjVw1nfP7MzareWuxSkW+VHZfyyYI2pHf9KbsE81iEIVNGrngrHZq2MGXam
 3yTv60l9tCNsnq2bN3HNnehvB259LGQgqixbJpgJvHO7MKCDGLQkhB2F4322M2GIaguX
 MmwQ==
X-Gm-Message-State: AOJu0Yzf1A/jsAm1Xxtc3fKn0UCxOZ7ClsyIvW9ioFFzo4eEtwy1QLJK
 aoeJrFcz2rPad5xLRCZMHb66OphY4YDYbIs0fvO14kjpp7u2UgfViDGhbco11GwXPhX6OAtrEL9
 gE54fbl8peAlGzfcjgwcX983T8DgKLA==
X-Google-Smtp-Source: AGHT+IEiWAM5h45mbhKM7xd/W0wcu6JtscilFeJrl4rKtRA67cTXQuGnimq/UONozl45AlWKecI2IGRY2xBYFSvAZtw=
X-Received: by 2002:a05:690c:2e84:b0:6b1:2a9e:4002 with SMTP id
 00721157ae682-6db61c5de6cmr31229667b3.24.1725813833297; Sun, 08 Sep 2024
 09:43:53 -0700 (PDT)
MIME-Version: 1.0
References: <20240610183703.684420-1-vivek.kasireddy@intel.com>
 <6d61e169-7452-44bd-9e69-66fb3bac1193@rz.uni-freiburg.de>
 <CAHt6W4f2WAdO5nALmfRk8uxc6na111iYf4sSb2O27fBzy-OD=g@mail.gmail.com>
 <5e8e1d48-2750-4bef-85e8-a8cca25f4de6@rz.uni-freiburg.de>
In-Reply-To: <5e8e1d48-2750-4bef-85e8-a8cca25f4de6@rz.uni-freiburg.de>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 8 Sep 2024 17:43:42 +0100
Message-ID: <CAHt6W4eB_VwE35Z5bwrUJNQ9VX3a0jw7jRcrWrAiwvzFJDyKMQ@mail.gmail.com>
Subject: Re: [PATCH v8 0/6] dcc: Create a stream for non-gl/remote clients
 that want to use dmabuf (v8)
To: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
Cc: spice-devel@lists.freedesktop.org
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

Il giorno ven 6 set 2024 alle ore 10:43 Michael Scherle
<michael.scherle@rz.uni-freiburg.de> ha scritto:
>
> Hi,
>
> thank you very much for your reply. Of course I understand that
> non-compiling/crashing code should not be merged into main.
> Unfortunately I have not been able to reproduce this so far. Here's a
> list of the systems I have tested on:
>
> - Ubuntu server 20.04 LTS
>    AMD EPYC 7742
>    Intel Flex 140 with SR-IOV passthrough and without passthrough
>
> - CentOS Stream 9
>    AMD EPYC 7742
>    Intel Flex 170 (SR-IOV)
>
> - Ubuntu 22.04
>    8th Gen Intel with GVT-g and without passthrough
>
> - Fedora 39
>    12th Gen Intel (SR-IOV)
>
> Do you have an example system on which it does not compile/crash or what
> the error messages are? Then I could possibly reproduce it and
> contribute to a fix.
>
> Greetings,
> Michael
>

Hi,
  now I start to understand. You are only testing what you want to
achieve disregarding any compatibility. For instance you didn't test
any system which is not Linux (yes, both Mac and Windows are
supported, obviously with different features) or does have a non Intel
card.

If we suppose system S with libraries L1, L2, L3 respectively with
versions V1, V2 and V3 provides features  F1 and F2 the same system
should continue to provide the same features with these libraries and
versions. That does not mean they need to support new features.

I also bet that to make the code compile you had to update some system
libraries. Not an issue but Spice should continue to compile with
stuck distro libraries (still, don't need to support new features).

To limit the back and forth of series versions I suggest you also set
up the CI so you can see some of the failures yourself.

I already have some patches.

Regards,
   Frediano


> On 05.09.24 08:13, Frediano Ziglio wrote:
> > Hi,
> >     I surely should get back to this.
> >
> > At the moment the series does not even compile on most of the supported=
 systems.
> > I understand that the feature works for some but merging in master not
> > compiling code does not seem really nice to me.
> > I think before merging code should compile and run, maybe with
> > disabled features due to detected limitations but surely not crash if
> > any unwritten and untested dependencies are not met.
> >
> > Regards,
> >    Frediano
> >
> > Il giorno ven 30 ago 2024 alle ore 12:53 Michael Scherle
> > <michael.scherle@rz.uni-freiburg.de> ha scritto:
> >>
> >>
> >>
> >> On 10.06.24 20:34, Vivek Kasireddy wrote:
> >>> For clients that cannot accept a dmabuf fd directly (such as those
> >>> running on a remote system), this patch series provides a way for
> >>> the Spice server to stream the gl/dmabuf data/buffer instead. This
> >>> is mostly done by enabling the creation of Gst memory using a dmabuf
> >>> fd as the source. This ability is useful given that dmabuf is the
> >>> standard mechanism for sharing buffers between various drivers and
> >>> userspace in many Graphics and Media usecases. Currently, this is
> >>> tested with Qemu and remote-viewer using the x264enc/avdec_h264
> >>> and msdkh264enc/dec plugins to stream the Guest/VM desktop but it
> >>> can be easily extended to other plugins and applications.
> >>>
> >>> Here is roughly how things work:
> >>> - The application (e.g, Qemu) chooses its preferred codec (a Gstreame=
r
> >>>     one) and calls gl_scanout (to update the fd) followed by gl_draw.
> >>> - In response, the Spice server checks to see if the client is capabl=
e
> >>>     of accepting a dmabuf fd directly or not. If yes, the fd is forwa=
rded
> >>>     directly to the client; otherwise, a new stream is created.
> >>> - The Spice server then sends the dmabuf fd to the Gstreamer encoder
> >>>     which uses it as an input for creating an encoded buffer which is=
 then
> >>>     sent to the client.
> >>> - Once the encoding process is done, an async completion cookie is se=
nt
> >>>     to the application.
> >>>
> >>> Here is a link to the previous version that used a drawable to share
> >>> the dmabuf fd with the Gstreamer encoder:
> >>> https://lists.freedesktop.org/archives/spice-devel/2023-January/05294=
8.html
> >>>
> >>> This version is tested together with following (required) patches in =
qemu:
> >>> https://gitlab.freedesktop.org/Vivek/qemu/-/commits/spice_gl_on_v4
> >>>
> >>> Changelog:
> >>>
> >>> v8:
> >>> - Added a new gstreamer-encoder patch to this series to convert drm f=
ormat
> >>>     shared by the VMM to the appropriate Gstreamer format.
> >>>
> >>> v7:
> >>> - Revert back to the previous design where we do not share fd with th=
e stream
> >>>     and scanout is the sole owner of the fd. This is because sharing =
fd ownership
> >>>     opens up a lot of corner cases.
> >>>
> >>> v6: (Frediano)
> >>> - Properly share ownership of the dmabuf fd between stream and scanou=
t
> >>> - Ensure that a newly created stream is associated with all connected=
 clients
> >>>
> >>> v5:
> >>> - Addressed review comments from Frediano mainly regarding adding aut=
oconf
> >>>     support for gstreamer-allocators dependency and not needing to ac=
cess
> >>>     scanout as part of gl draw operation
> >>>
> >>> v4:
> >>> - Test with Virgl enabled
> >>> - Associate dmabuf's y0_top with stream's top_down variable
> >>>
> >>> v3:
> >>> - Updated the second patch to have a new primary surface created
> >>>     whenever a new stream gets created. This will avoid having to
> >>>     trigger primary surface creation from Qemu. And, this change
> >>>     also fixes the following error seen with v2:
> >>>     ../server/display-channel.cpp:2074:display_channel_create_surface=
:
> >>>     condition `!display->priv->surfaces[surface_id]' failed
> >>> - Rebase all patches on master
> >>>
> >>> v2:
> >>> - Update all patches to address review comments from Frediano
> >>> - Tested this series with msdkh264enc/dec plugins that will be added
> >>>     in another patch series
> >>>
> >>> Cc: Frediano Ziglio <freddy77@gmail.com>
> >>> Cc: Gerd Hoffmann <kraxel@redhat.com>
> >>> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> >>> Cc: Dongwon Kim <dongwon.kim@intel.com>
> >>>
> >>> Vivek Kasireddy (6):
> >>>     dcc: Check to see if the client supports multiple codecs (v2)
> >>>     dcc: Create a stream associated with gl_draw for non-gl clients (=
v6)
> >>>     dcc-send: Encode and send gl_draw stream data to the remote clien=
t
> >>>       (v4)
> >>>     gstreamer-encoder: Add an encoder function that takes dmabuf fd a=
s
> >>>       input (v3)
> >>>     gstreamer-encoder: Map the drm format to appropriate Gstreamer fo=
rmat
> >>>     video-stream: Don't stop a stream associated with gl_draw (v2)
> >>>
> >>>    configure.ac                     |   2 +-
> >>>    meson.build                      |   2 +-
> >>>    server/dcc-send.cpp              | 159 ++++++++++++++++----
> >>>    server/dcc.cpp                   |  31 ++--
> >>>    server/dcc.h                     |   6 +
> >>>    server/display-channel-private.h |   1 +
> >>>    server/display-channel.cpp       |   1 +
> >>>    server/gstreamer-encoder.c       | 246 ++++++++++++++++++++++++++-=
----
> >>>    server/video-encoder.h           |  14 ++
> >>>    server/video-stream.cpp          | 205 ++++++++++++++++++++++----
> >>>    server/video-stream.h            |   4 +
> >>>    11 files changed, 563 insertions(+), 108 deletions(-)
> >>>
> >>
> >> I tested this patchset with several configurations:
> >>
> >> - With a passthrough intel gvt-g virtual gpu it works.
> >>
> >> - With virtio-vga it works.
> >>
> >> - With some extra patches to qemu and an virtualization driver it even
> >> works with an virtual GPU from an SR-IOV-partitioned Intel Flex
> >> 140 GPU. Note this extra patches are related to the gpu and not this
> >> patchset.
> >>
> >> This patch is a significant improvement for handling graphically
> >> demanding tasks or rapidly changing image content and is crucial for
> >> SPICE to be a component of a competitive virtual desktop infrastructur=
e.
> >>
> >> Tested-by: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
> >>
> >> Greetings,
> >> Michael
> >>
