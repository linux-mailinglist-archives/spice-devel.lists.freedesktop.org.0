Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4645B96CEF1
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2024 08:13:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D48A410E6DD;
	Thu,  5 Sep 2024 06:13:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UayUEHbC";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com
 [209.85.128.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9928910E6DD
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2024 06:13:29 +0000 (UTC)
Received: by mail-yw1-f179.google.com with SMTP id
 00721157ae682-6b6b9867faaso3204977b3.2
 for <spice-devel@lists.freedesktop.org>; Wed, 04 Sep 2024 23:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725516808; x=1726121608; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZCNE0MZe7LuQhmlQwd7seCTeBiPPPQZeBb3FOJ8bu2s=;
 b=UayUEHbCkvdmp/Q/yIDP0p0y4IfSoQKmMa6+TlUmyaKacBPuem06vwTqtulElrLl3g
 uQeMcA9c531q0j8KamyJjim9gt/PFjhFLmRdBIOBdinikWsyyccdIdeDZtR9AicLVDo1
 I0+o3tSAGdjmFe4A1KBZoWeujg9JnBCJT4bRVFAJ2DFcUJ7iYIfdrM1wF1/NKz4qWbmZ
 Z4zQiYY9aD1jt2LBS9xMWFW2zqUMhNirmUwOMV2LtXTvmZw+RUj4Rw8yQJc/dT+W7x57
 pIJcjmX0Q5FrBCn6bkePqX2hO12n/W14n3tgc1+m7uEWo9W7x3m4DzVlMOBQxV5CATa+
 IQtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725516808; x=1726121608;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZCNE0MZe7LuQhmlQwd7seCTeBiPPPQZeBb3FOJ8bu2s=;
 b=w0mnMajzLLE1XyF3XEsiQxD6A3fP0hg3aKIwf1OL6S3jF0jcqZwfqrkERVwv5j8x6i
 q9NRUpRpVU0RnZfnr7MZjt/LoyDAB7V0sFhoQacbKzbkGEUGm/C6CCn8Sy4JZizYmu4E
 iRUN64t3st4qALX/+RfDkR9oIO6kOgeUuUS5xhHXUU3Mb6FO968TSw9xHhp7cRkidkJs
 bfO3CZCO/cIuzqNCMKO/YdZCGr/JOpMsrinrRN3ykoVqRzADQzcBHRuA8QuzghFuVw8P
 cb18sgxOClT7RSQdheY5vhB5tnEVIt0O2tZiMxdNj0PiD/5lTog3Ot2ZULdh+eDueGdy
 e73A==
X-Gm-Message-State: AOJu0Yy4CiT9hdpahSc4a2RciEGzRrtKU7Hlg3dXtfV19KMGoE2MpE0R
 sjIR9PUs0hA+7OBbssU+Pz/yffDJqrn5qaHf+mQ1ArYULJ5nPrsSBi7UK9NXCFVnbDTZaVWNmP2
 xO/1LPL5DUltuM2elTkXr4108TiyVew==
X-Google-Smtp-Source: AGHT+IFuaBB6kJ9L29aCmK515R6cUWtkk+r82kLlzFnTq34TOe/QuW2JfxUS80IeH1htNYn+0iZ+lUC82yQx+2UAuMA=
X-Received: by 2002:a05:690c:60c4:b0:664:badf:5a8c with SMTP id
 00721157ae682-6db234a4d9amr66444897b3.3.1725516808233; Wed, 04 Sep 2024
 23:13:28 -0700 (PDT)
MIME-Version: 1.0
References: <20240610183703.684420-1-vivek.kasireddy@intel.com>
 <6d61e169-7452-44bd-9e69-66fb3bac1193@rz.uni-freiburg.de>
In-Reply-To: <6d61e169-7452-44bd-9e69-66fb3bac1193@rz.uni-freiburg.de>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 5 Sep 2024 07:13:16 +0100
Message-ID: <CAHt6W4f2WAdO5nALmfRk8uxc6na111iYf4sSb2O27fBzy-OD=g@mail.gmail.com>
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

Hi,
   I surely should get back to this.

At the moment the series does not even compile on most of the supported sys=
tems.
I understand that the feature works for some but merging in master not
compiling code does not seem really nice to me.
I think before merging code should compile and run, maybe with
disabled features due to detected limitations but surely not crash if
any unwritten and untested dependencies are not met.

Regards,
  Frediano

Il giorno ven 30 ago 2024 alle ore 12:53 Michael Scherle
<michael.scherle@rz.uni-freiburg.de> ha scritto:
>
>
>
> On 10.06.24 20:34, Vivek Kasireddy wrote:
> > For clients that cannot accept a dmabuf fd directly (such as those
> > running on a remote system), this patch series provides a way for
> > the Spice server to stream the gl/dmabuf data/buffer instead. This
> > is mostly done by enabling the creation of Gst memory using a dmabuf
> > fd as the source. This ability is useful given that dmabuf is the
> > standard mechanism for sharing buffers between various drivers and
> > userspace in many Graphics and Media usecases. Currently, this is
> > tested with Qemu and remote-viewer using the x264enc/avdec_h264
> > and msdkh264enc/dec plugins to stream the Guest/VM desktop but it
> > can be easily extended to other plugins and applications.
> >
> > Here is roughly how things work:
> > - The application (e.g, Qemu) chooses its preferred codec (a Gstreamer
> >    one) and calls gl_scanout (to update the fd) followed by gl_draw.
> > - In response, the Spice server checks to see if the client is capable
> >    of accepting a dmabuf fd directly or not. If yes, the fd is forwarde=
d
> >    directly to the client; otherwise, a new stream is created.
> > - The Spice server then sends the dmabuf fd to the Gstreamer encoder
> >    which uses it as an input for creating an encoded buffer which is th=
en
> >    sent to the client.
> > - Once the encoding process is done, an async completion cookie is sent
> >    to the application.
> >
> > Here is a link to the previous version that used a drawable to share
> > the dmabuf fd with the Gstreamer encoder:
> > https://lists.freedesktop.org/archives/spice-devel/2023-January/052948.=
html
> >
> > This version is tested together with following (required) patches in qe=
mu:
> > https://gitlab.freedesktop.org/Vivek/qemu/-/commits/spice_gl_on_v4
> >
> > Changelog:
> >
> > v8:
> > - Added a new gstreamer-encoder patch to this series to convert drm for=
mat
> >    shared by the VMM to the appropriate Gstreamer format.
> >
> > v7:
> > - Revert back to the previous design where we do not share fd with the =
stream
> >    and scanout is the sole owner of the fd. This is because sharing fd =
ownership
> >    opens up a lot of corner cases.
> >
> > v6: (Frediano)
> > - Properly share ownership of the dmabuf fd between stream and scanout
> > - Ensure that a newly created stream is associated with all connected c=
lients
> >
> > v5:
> > - Addressed review comments from Frediano mainly regarding adding autoc=
onf
> >    support for gstreamer-allocators dependency and not needing to acces=
s
> >    scanout as part of gl draw operation
> >
> > v4:
> > - Test with Virgl enabled
> > - Associate dmabuf's y0_top with stream's top_down variable
> >
> > v3:
> > - Updated the second patch to have a new primary surface created
> >    whenever a new stream gets created. This will avoid having to
> >    trigger primary surface creation from Qemu. And, this change
> >    also fixes the following error seen with v2:
> >    ../server/display-channel.cpp:2074:display_channel_create_surface:
> >    condition `!display->priv->surfaces[surface_id]' failed
> > - Rebase all patches on master
> >
> > v2:
> > - Update all patches to address review comments from Frediano
> > - Tested this series with msdkh264enc/dec plugins that will be added
> >    in another patch series
> >
> > Cc: Frediano Ziglio <freddy77@gmail.com>
> > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> > Cc: Dongwon Kim <dongwon.kim@intel.com>
> >
> > Vivek Kasireddy (6):
> >    dcc: Check to see if the client supports multiple codecs (v2)
> >    dcc: Create a stream associated with gl_draw for non-gl clients (v6)
> >    dcc-send: Encode and send gl_draw stream data to the remote client
> >      (v4)
> >    gstreamer-encoder: Add an encoder function that takes dmabuf fd as
> >      input (v3)
> >    gstreamer-encoder: Map the drm format to appropriate Gstreamer forma=
t
> >    video-stream: Don't stop a stream associated with gl_draw (v2)
> >
> >   configure.ac                     |   2 +-
> >   meson.build                      |   2 +-
> >   server/dcc-send.cpp              | 159 ++++++++++++++++----
> >   server/dcc.cpp                   |  31 ++--
> >   server/dcc.h                     |   6 +
> >   server/display-channel-private.h |   1 +
> >   server/display-channel.cpp       |   1 +
> >   server/gstreamer-encoder.c       | 246 ++++++++++++++++++++++++++----=
-
> >   server/video-encoder.h           |  14 ++
> >   server/video-stream.cpp          | 205 ++++++++++++++++++++++----
> >   server/video-stream.h            |   4 +
> >   11 files changed, 563 insertions(+), 108 deletions(-)
> >
>
> I tested this patchset with several configurations:
>
> - With a passthrough intel gvt-g virtual gpu it works.
>
> - With virtio-vga it works.
>
> - With some extra patches to qemu and an virtualization driver it even
> works with an virtual GPU from an SR-IOV-partitioned Intel Flex
> 140 GPU. Note this extra patches are related to the gpu and not this
> patchset.
>
> This patch is a significant improvement for handling graphically
> demanding tasks or rapidly changing image content and is crucial for
> SPICE to be a component of a competitive virtual desktop infrastructure.
>
> Tested-by: Michael Scherle <michael.scherle@rz.uni-freiburg.de>
>
> Greetings,
> Michael
>
