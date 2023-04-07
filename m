Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DACE6DB011
	for <lists+spice-devel@lfdr.de>; Fri,  7 Apr 2023 18:02:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 730F110E097;
	Fri,  7 Apr 2023 16:02:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-vs1-xe34.google.com (mail-vs1-xe34.google.com
 [IPv6:2607:f8b0:4864:20::e34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7F2510E097
 for <spice-devel@lists.freedesktop.org>; Fri,  7 Apr 2023 16:02:45 +0000 (UTC)
Received: by mail-vs1-xe34.google.com with SMTP id z17so30630459vsf.4
 for <spice-devel@lists.freedesktop.org>; Fri, 07 Apr 2023 09:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680883364; x=1683475364;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=j4PQCa7r/f6t50O7GxUhbPEhYr+Se8+l4dtE8W/fjVc=;
 b=Z7Z31hx0UWq2BBivXw/5UolVgkumf8Von2OLFnNYj3RIceor4sYn2vie/Xe5B0MsFw
 bJx20yZZeFQAOB4GrWUmqp4FqM8BrIs8gzqYF8dXNq4treNHC3P81NADNh+Z0cpl/a1/
 +e8I5qtrNFUUFMEMiyOhtGEdWo2FrZ5B3E22xNlFNigyvzvtSCYLM4VaZy7FlPvK6vUM
 YgZFrP1ZIBHo0EIaO/5RSgVbsYOWJj0dli7dH1SOdT+C8jYMURBMM2PvdpWOxh3YSsvV
 mP82imWG0OT1jrXW0lqQ6cPgjEXXYv/qwAZIyjWCUCskMqJ6sYCZ7Unbo/d81m7HNmDh
 bsGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680883364; x=1683475364;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=j4PQCa7r/f6t50O7GxUhbPEhYr+Se8+l4dtE8W/fjVc=;
 b=g5bXwxcwi/w7cnKXRGK8E0I7b7yaIN+813sYdfKV9mV5KtpRn6iNl8Yr6/85ExihDR
 zgpWEQrWEbtCj4qHwVabk+N7C+LIXJ0lZ6mVR+GzDEDYBzdDmQQSg4hbu6eZtCnOhHlY
 wj03Zs2kb/1sZwE1S3H2usOoW401XuR443bz326H8idKxXPM/TWK/E2ptXXfve7xwJcu
 2Yyh1yeqyJFhBrceoGASHkoyUheVOhWVpoV/hG8orRT1wkSqdXJh5krXw6r2gZk5x8hw
 ds6tqJjZ9iEd4nbYUGgwiwSNjguyWNd8fFCV0L96BJ8zlEAPCF0s8Xv31cjxibl0PNPb
 4lcg==
X-Gm-Message-State: AAQBX9co/0EQW5tsvbvk7oLY/IfQdOcndkwkfdvNc5aBVzCyFObKUBLX
 zs7iP8Dqqs15VcN9hk4FyRjaFQuU+QnOxZSzMeRpk9GO
X-Google-Smtp-Source: AKy350Y0chCqsw5VMgLnKgDRCvq+A9BHg2Afyk8SHxZms3ULl92AvxqeWtyORU9eHWXhWZQPzdic/CsWCdILYzfhnb8=
X-Received: by 2002:a67:d984:0:b0:425:d096:fd42 with SMTP id
 u4-20020a67d984000000b00425d096fd42mr1326449vsj.5.1680883364450; Fri, 07 Apr
 2023 09:02:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
 <CAHt6W4fwABLRLkjsZ584-kaJbJPvn4huNMeXQBnZj+usAs_fyQ@mail.gmail.com>
 <IA0PR11MB7185A086540E06748286F573F88B9@IA0PR11MB7185.namprd11.prod.outlook.com>
 <CAHt6W4cBU7pakwn+nwuUKQj_=BoXDV=Oc5M8fuc3gCA18gK8Qg@mail.gmail.com>
 <IA0PR11MB7185A0BF637E1C676469E04BF88F9@IA0PR11MB7185.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7185A0BF637E1C676469E04BF88F9@IA0PR11MB7185.namprd11.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 7 Apr 2023 17:02:33 +0100
Message-ID: <CAHt6W4d+DkEReW0z97ejQ+UhEWCV3aONgCywY6Vpio=Hqo=4tA@mail.gmail.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [PATCH v1 0/5] dcc: Create a stream for
 non-gl/remote clients that want to use dmabuf
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 "Kim, Dongwon" <dongwon.kim@intel.com>, Gerd Hoffmann <kraxel@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno ven 31 mar 2023 alle ore 08:52 Kasireddy, Vivek
<vivek.kasireddy@intel.com> ha scritto:
>
> Hi Frediano,
>
> >
> > Il giorno lun 27 mar 2023 alle ore 07:53 Kasireddy, Vivek
> > <vivek.kasireddy@intel.com> ha scritto:
> > >
> > > Hi Frediano,
> > >
> > > >    I was trying the patch series but the client keeps crashing. I
> > > > tried different versions of remote-viewer (from Fedora and from
> > > > Ubuntu) and they both crashed.
> > > > On host I installed Intel VA drivers , Gstreamer VAAPIs and forced
> > > > gstreamer:h264 as encoder.
> > > [Kasireddy, Vivek] I don't think any of these packages are needed if =
we are
> > testing
> > > with a software (i.e, CPU-based) encoder/decoder (i.e, using x264enc/=
x264dec
> > plugins).
> >
> > They should allow hardware encoding.
> [Kasireddy, Vivek] IIUC, currently, Spice only uses x264enc/x264dec plugi=
ns and
> with these only software encoding is possible. We need to use different p=
lugins to
> enable hardware encoding. For instance we need to use either vaapih264enc=
 or
> msdkh264enc on Intel hardware. As I mentioned earlier, we are planning to
> add this support.
>
> >
> > > On my Fedora 37, these relevant plugins are provided by:
> > > # rpm -q --whatprovides /usr/lib64/gstreamer-1.0/libgstx264.so
> > > gstreamer1-plugins-ugly-1.20.5-1.fc37.x86_64
> > > # rpm -q --whatprovides /usr/lib64/gstreamer-1.0/libgstlibav.so
> > > gstreamer1-plugin-libav-1.20.5-1.fc37.x86_64
> > >
> > > The former provides x264enc and the latter provides x264dec. You can =
either
> > choose
> > > the ones provided by your distro or build Gstreamer with -Dgst-plugin=
s-
> > ugly:x264=3Denabled
> > > and -Dlibav=3Denabled. However, note that one of our eventual goals i=
s to cleanly
> > add a
> > > new Gstreamer pipeline to Spice to provide users an option for hardwa=
re-based
> > > (i.e, GPU assisted) H.264 encoding/decoding using msdkh264enc/msdkh26=
4dec
> > plugins:
> > > https://gstreamer.freedesktop.org/documentation/msdk/msdkh264enc.html=
?gi-
> > language=3Dc
> > >
> > > > Anything else you need to do?
> > > [Kasireddy, Vivek] Sorry, I was not expecting anyone would test the S=
pice server
> > > patches and therefore did not provide all the required information to=
 test them.
> > > Anyway, I suspect the reason for your remote-viewer crash is because =
there is no
> > > (primary) surface created. Here is the tentative Qemu patch that does=
 just that:
> > >
> >
> > Do you have a branch for Qemu somewhere?
> [Kasireddy, Vivek] Yes, I created one here:
> https://gitlab.freedesktop.org/Vivek/qemu/-/commits/pref_codec1
> https://gitlab.freedesktop.org/Vivek/spice/-/commits/encode_dmabuf1
>
> And, FYI, here is my exact qemu launch cmd (on Fedora 37):
> ./qemu-system-x86_64 -m 4096m -enable-kvm -cpu host -smp cores=3D8 -drive=
 file=3D./fed30kvm.img,format=3Dqcow2,cache=3Dnone -vga none -device e1000,=
netdev=3Dnet0,mac=3DDE:AD:BE:EF:BF:FA -netdev tap,id=3Dnet0,ifname=3Dtap0,s=
cript=3Dno,downscript=3Dno -device virtio-gpu-pci,max_outputs=3D1,blob=3Dtr=
ue,xres=3D1920,yres=3D1080 -spice port=3D3001,gl=3Don,disable-ticketing=3Do=
n,preferred-codec=3Dgstreamer:h264 -object memory-backend-memfd,id=3Dmem1,s=
ize=3D4096M -machine memory-backend=3Dmem1 -usb -device usb-tablet -serial =
stdio
>
> >
> > >          fd =3D egl_get_fd_for_texture(ssd->ds->texture,
> > >
> > > I did not yet post this patch to the Qemu mailing list because I stil=
l need to
> > implement
> > > feature negotiation between Qemu and Spice to auto-detect this capabi=
lity. And,
> > > in addition to this patch, you also need the patch that adds the "pre=
ferred-codec"
> > > option to Qemu, unless you are hardcoding it in Spice:
> > > https://lists.nongnu.org/archive/html/qemu-devel/2023-01/msg04999.htm=
l
> > >
> >
> > Yes, I hardcoded that in SPICE. Note that I posted a comment in that
> > commit, I think it's valid as it is.
> > Also I think it should not change the SPICE default.
> [Kasireddy, Vivek] Yes, I noted your comment; I'll make the change in the
> next version.
>
> Thanks,
> Vivek
>
> >
> > > Lastly, not sure if it makes a difference, but here are the relevant =
options I am
> > > using to launch Qemu:
> > > -device virtio-gpu-pci,max_outputs=3D1,blob=3Dtrue,xres=3D1920,yres=
=3D1080
> > > -spice port=3D3001,gl=3Don,disable-ticketing=3Don,preferred-codec=3Dg=
streamer:h264
> > > -object memory-backend-memfd,id=3Dmem1,size=3D4096M
> > > -machine memory-backend=3Dmem1 -usb -device usb-tablet -serial stdio
> > >
> > > Thanks,
> > > Vivek
> > >
> >
> > I will try again.
> >
> > Thanks,
> >   Frediano
> >
> > > >
> > > > On the logs I find:
> > > >
> > > > 2023-03-25T19:31:36.034007Z qemu-system-x86_64: warning: Spice:
> > > > ../server/dcc-send.cpp:1786:red_marshall_gl_draw_stream: bad return
> > > > value (0) from VideoEncoder::encode_dmabuf
> > > > 2023-03-25T19:31:37.064219Z qemu-system-x86_64: warning: spice: no
> > > > gl-draw-done within one second
> > > > 2023-03-25T19:31:58.214387Z qemu-system-x86_64: warning: Spice:
> > > > Connection reset by peer
> > > > 2023-03-25T19:31:58.214482Z qemu-system-x86_64: warning: Spice:
> > > > Connection reset by peer
> > > > 2023-03-25T19:31:58.214580Z qemu-system-x86_64: warning: Spice:
> > > > Connection reset by peer
> > > > 2023-03-25T19:31:58.214642Z 2023-03-25T19:31:58.214636Z
> > > > qemu-system-x86_64:qemu-system-x86_64:  warning: Spice: Connection
> > > > reset by peer
> > > > warning: Spice: display:0 (0x55947e76fd10): Connection reset by pee=
r
> > > > 2023-03-25T19:31:58.214721Z qemu-system-x86_64: warning: Spice:
> > > > Connection reset by peer
> > > > 2023-03-25T19:31:58.214841Z qemu-system-x86_64: warning: Spice:
> > > > Connection reset by peer
> > > > 2023-03-25T19:31:58.215057Z qemu-system-x86_64: warning: Spice:
> > > > Connection reset by peer
> > > >
> > > > 0 value from encode_dmabuf should mean
> > VIDEO_ENCODER_FRAME_DROP.
> > > >
> > > > Regards,
> > > >    Frediano
> > > >

Hi,
   some updates. I grab your exact versions and compiled them again.
At the beginning I still had some problems with codecs and security
settings (seccomp was enabled causing Qemu to crash on gstreamer code
,turned off).
However even after solving them the result is not that great. The
video is not fluid and when there are some updates it is almost
"garbage". Which type of GPU are you using? I'm using integrated Intel
and I remember they have a not-linear memory addressing for textures
which lead to these garbaged style images due to trying to interpret
memory as linear.
I also had to change spice-gtk due to a missing specification in the
encoder. Which client did you use? Which version? Maybe the bug was
introduced later.
Also I have some warnings in Qemu logs due to attempts to create
primary surfaces multiple times.

By the way, the code looks better than the previous version but as
commented the running behaviour is not that great.
The style (well, also the style of spice code I have to admit) is a
bit "messy" but better to fix the big problems first than try to solve
everything at once.

Regards,
  Frediano

> > > > Il giorno gio 16 mar 2023 alle ore 06:05 Vivek Kasireddy
> > > > <vivek.kasireddy@intel.com> ha scritto:
> > > > >
> > > > > For clients that cannot accept a dmabuf fd directly (such as thos=
e
> > > > > running on a remote system), this patch series provides a way for
> > > > > the Spice server to stream the gl/dmabuf data/buffer instead. Thi=
s
> > > > > is mostly done by enabling the creation of Gst memory using a dma=
buf
> > > > > fd as the source. This ability is useful given that dmabuf is the
> > > > > standard mechanism for sharing buffers between various drivers an=
d
> > > > > userspace in many Graphics and Media usecases. Currently, this is
> > > > > only used/tested with Qemu and remote-viewer using the x264enc/de=
c
> > > > > codec to stream the Guest/VM desktop but it can be easily extende=
d
> > > > > to other plugins and applications.
> > > > >
> > > > > Here is roughly how things work:
> > > > > - The application (e.g, Qemu) chooses its preferred codec (a Gstr=
eamer
> > > > >   one) and calls gl_scanout (to update the fd) followed by gl_dra=
w.
> > > > > - In response, the Spice server checks to see if the client is ca=
pable
> > > > >   of accepting a dmabuf fd directly or not. If yes, the fd is for=
warded
> > > > >   directly to the client; otherwise, a new stream is created.
> > > > > - The Spice server then sends the dmabuf fd to the Gstreamer enco=
der
> > > > >   which uses it as an input for creating an encoded buffer which =
is then
> > > > >   sent to the client.
> > > > > - Once the encoding process is done, an async completion cookie i=
s sent
> > > > >   to the application.
> > > > >
> > > > > Here is a link to the previous version that used a drawable to sh=
are
> > > > > the dmabuf fd with the Gstreamer encoder:
> > > > > https://lists.freedesktop.org/archives/spice-devel/2023-January/0=
52948.html
> > > > >
> > > > > Cc: Frediano Ziglio <freddy77@gmail.com>
> > > > > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > > > > Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> > > > > Cc: Dongwon Kim <dongwon.kim@intel.com>
> > > > >
> > > > > Vivek Kasireddy (5):
> > > > >   dcc: Check to see if the client supports multiple codecs
> > > > >   dcc: Create a stream associated with gl_draw for non-gl clients
> > > > >   dcc-send: Encode and send gl_draw stream data to the remote cli=
ent
> > > > >   gstreamer-encoder: Add an encoder function that takes dmabuf fd=
 as
> > > > >     input
> > > > >   video-stream: Don't stop a stream if a gl_draw operation is pen=
ding
> > > > >
> > > > >  meson.build                      |   2 +-
> > > > >  server/dcc-private.h             |   4 ++
> > > > >  server/dcc-send.cpp              |  89 ++++++++++++++++++++++-
> > > > >  server/dcc.cpp                   |  36 +++++++---
> > > > >  server/display-channel-private.h |   6 ++
> > > > >  server/gstreamer-encoder.c       | 119
> > ++++++++++++++++++++++++++++++-
> > > > >  server/video-encoder.h           |  13 ++++
> > > > >  server/video-stream.cpp          |  65 ++++++++++++++++-
> > > > >  server/video-stream.h            |   2 +
> > > > >  9 files changed, 319 insertions(+), 17 deletions(-)
> > > > >
> > > > > --
> > > > > 2.37.2
> > > > >
