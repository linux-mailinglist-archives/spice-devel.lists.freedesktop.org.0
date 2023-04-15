Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A956E2FAC
	for <lists+spice-devel@lfdr.de>; Sat, 15 Apr 2023 10:17:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEA4E10E04C;
	Sat, 15 Apr 2023 08:17:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com
 [IPv6:2607:f8b0:4864:20::232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDE8610E025
 for <spice-devel@lists.freedesktop.org>; Sat, 15 Apr 2023 08:17:34 +0000 (UTC)
Received: by mail-oi1-x232.google.com with SMTP id a7so21199oiw.7
 for <spice-devel@lists.freedesktop.org>; Sat, 15 Apr 2023 01:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681546653; x=1684138653;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2TY0hDxYNQaPiOuxTf1ND6gRUx5F12NLv5wj/+lCV5w=;
 b=VRxQSoPk8vcquAk2nogSSlk/hJdvo8NVdxpIfPaeyDctvOL7jVsAhNt5XfstD+cfQs
 vnq7l76aKcb5guM85/+ahgBiJLpMw7u8VMQmWLQ/5+/IrIqeTZGS1gcM/lAulMEJKjwT
 w+ks6XkaAgN1uGc9iSxS27x72dsMJCOmgzYu1Zy7WWehWDPot7X1uyJ3TSh79cUDAH/e
 ySjINZnIR2W46bzKl7+/RfyMqX2H6GGSQu2HFgWRCVvGsTAvcKx0HdtKnQeAzt+PuLQ2
 jHdCTcPl3HLwjttvCKoMI/3OCWgC56oOBzrWMAJpki9lHh1sR632AcP/W5rJ79+DWB5m
 uM2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681546653; x=1684138653;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2TY0hDxYNQaPiOuxTf1ND6gRUx5F12NLv5wj/+lCV5w=;
 b=X75YiSpEM91YBE+4x20K11Fe2B2bF07HB030XEL4HgDCaQM0k1XjfxVV8MvNGO8x0T
 EuhgyXukcCJD6MwyswTCeN7f9nexJCSg97TFsutPDwPNPr70qZdJx2aorbmghWRQk1+9
 ImbiZSbE6IU8/bGteXrR/1hXg2H514HUNHoqIy2g4OtmkUvCxLhOleulCWY1M9tHD99u
 eClE64tIedBgPReR9MrKobJm6SeCj/T3hubHKBMR1p8SGNg7TaRVefrkfOiBaozevtnl
 vHvIOgDkRpZRunh4xe7Kb+zxMYzp0n8Zs+UCSN7OFTiUTQiHlDuJdaxVn7k3s06/tIXV
 yHMQ==
X-Gm-Message-State: AAQBX9euT0TjjD/j46HmHbiR4LdRLRvGqnmA5SLtqt0+NPpo5+MYH8GW
 ONgKrd7H+3goqyD8K6QO8ByAOxLlYvLtmcFY2Mk=
X-Google-Smtp-Source: AKy350YyKFkvvAZmnhtWehRrUbXdlx8Sesr4k9sFcqJ/8xjMn1TImO+WxLNeLavu+/s4KyGU0tQwnNg53hr2wgXDLBE=
X-Received: by 2002:a05:6808:1801:b0:38c:98a9:2b28 with SMTP id
 bh1-20020a056808180100b0038c98a92b28mr126359oib.3.1681546653430; Sat, 15 Apr
 2023 01:17:33 -0700 (PDT)
MIME-Version: 1.0
References: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
 <CAHt6W4fwABLRLkjsZ584-kaJbJPvn4huNMeXQBnZj+usAs_fyQ@mail.gmail.com>
 <IA0PR11MB7185A086540E06748286F573F88B9@IA0PR11MB7185.namprd11.prod.outlook.com>
 <CAHt6W4cBU7pakwn+nwuUKQj_=BoXDV=Oc5M8fuc3gCA18gK8Qg@mail.gmail.com>
 <IA0PR11MB7185A0BF637E1C676469E04BF88F9@IA0PR11MB7185.namprd11.prod.outlook.com>
 <CAHt6W4d+DkEReW0z97ejQ+UhEWCV3aONgCywY6Vpio=Hqo=4tA@mail.gmail.com>
 <IA0SPRMB0001BC01AC9CE18534BE3A7FF89E9@IA0SPRMB0001.namprd11.prod.outlook.com>
In-Reply-To: <IA0SPRMB0001BC01AC9CE18534BE3A7FF89E9@IA0SPRMB0001.namprd11.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 15 Apr 2023 09:17:22 +0100
Message-ID: <CAHt6W4fO2AA-8SFp-NbwBV0bUXiUBdkn86i8AkmPP4F+YfDVQw@mail.gmail.com>
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

Il giorno sab 15 apr 2023 alle ore 02:32 Kasireddy, Vivek
<vivek.kasireddy@intel.com> ha scritto:
>
> Hi Frediano,
>
> > Il giorno ven 31 mar 2023 alle ore 08:52 Kasireddy, Vivek
> > <vivek.kasireddy@intel.com> ha scritto:
> > >
> > > Hi Frediano,
> > >
> > > >
> > > > Il giorno lun 27 mar 2023 alle ore 07:53 Kasireddy, Vivek
> > > > <vivek.kasireddy@intel.com> ha scritto:
> > > > >
> > > > > Hi Frediano,
> > > > >
> > > > > >    I was trying the patch series but the client keeps crashing.=
 I
> > > > > > tried different versions of remote-viewer (from Fedora and from
> > > > > > Ubuntu) and they both crashed.
> > > > > > On host I installed Intel VA drivers , Gstreamer VAAPIs and for=
ced
> > > > > > gstreamer:h264 as encoder.
> > > > > [Kasireddy, Vivek] I don't think any of these packages are needed=
 if we
> > are
> > > > testing
> > > > > with a software (i.e, CPU-based) encoder/decoder (i.e, using
> > x264enc/x264dec
> > > > plugins).
> > > >
> > > > They should allow hardware encoding.
> > > [Kasireddy, Vivek] IIUC, currently, Spice only uses x264enc/x264dec p=
lugins
> > and
> > > with these only software encoding is possible. We need to use differe=
nt
> > plugins to
> > > enable hardware encoding. For instance we need to use either
> > vaapih264enc or
> > > msdkh264enc on Intel hardware. As I mentioned earlier, we are plannin=
g to
> > > add this support.
> > >
> > > >
> > > > > On my Fedora 37, these relevant plugins are provided by:
> > > > > # rpm -q --whatprovides /usr/lib64/gstreamer-1.0/libgstx264.so
> > > > > gstreamer1-plugins-ugly-1.20.5-1.fc37.x86_64
> > > > > # rpm -q --whatprovides /usr/lib64/gstreamer-1.0/libgstlibav.so
> > > > > gstreamer1-plugin-libav-1.20.5-1.fc37.x86_64
> > > > >
> > > > > The former provides x264enc and the latter provides x264dec. You =
can
> > either
> > > > choose
> > > > > the ones provided by your distro or build Gstreamer with -Dgst-pl=
ugins-
> > > > ugly:x264=3Denabled
> > > > > and -Dlibav=3Denabled. However, note that one of our eventual goa=
ls is to
> > cleanly
> > > > add a
> > > > > new Gstreamer pipeline to Spice to provide users an option for
> > hardware-based
> > > > > (i.e, GPU assisted) H.264 encoding/decoding using
> > msdkh264enc/msdkh264dec
> > > > plugins:
> > > > >
> > https://gstreamer.freedesktop.org/documentation/msdk/msdkh264enc.htm
> > l?gi-
> > > > language=3Dc
> > > > >
> > > > > > Anything else you need to do?
> > > > > [Kasireddy, Vivek] Sorry, I was not expecting anyone would test t=
he
> > Spice server
> > > > > patches and therefore did not provide all the required informatio=
n to
> > test them.
> > > > > Anyway, I suspect the reason for your remote-viewer crash is beca=
use
> > there is no
> > > > > (primary) surface created. Here is the tentative Qemu patch that =
does
> > just that:
> > > > >
> > > >
> > > > Do you have a branch for Qemu somewhere?
> > > [Kasireddy, Vivek] Yes, I created one here:
> > > https://gitlab.freedesktop.org/Vivek/qemu/-/commits/pref_codec1
> > > https://gitlab.freedesktop.org/Vivek/spice/-/commits/encode_dmabuf1
> > >
> > > And, FYI, here is my exact qemu launch cmd (on Fedora 37):
> > > ./qemu-system-x86_64 -m 4096m -enable-kvm -cpu host -smp cores=3D8 -
> > drive file=3D./fed30kvm.img,format=3Dqcow2,cache=3Dnone -vga none -devi=
ce
> > e1000,netdev=3Dnet0,mac=3DDE:AD:BE:EF:BF:FA -netdev
> > tap,id=3Dnet0,ifname=3Dtap0,script=3Dno,downscript=3Dno -device virtio-=
gpu-
> > pci,max_outputs=3D1,blob=3Dtrue,xres=3D1920,yres=3D1080 -spice
> > port=3D3001,gl=3Don,disable-ticketing=3Don,preferred-codec=3Dgstreamer:=
h264 -
> > object memory-backend-memfd,id=3Dmem1,size=3D4096M -machine memory-
> > backend=3Dmem1 -usb -device usb-tablet -serial stdio
> > >
> > > >
> > > > >          fd =3D egl_get_fd_for_texture(ssd->ds->texture,
> > > > >
> > > > > I did not yet post this patch to the Qemu mailing list because I =
still need
> > to
> > > > implement
> > > > > feature negotiation between Qemu and Spice to auto-detect this
> > capability. And,
> > > > > in addition to this patch, you also need the patch that adds the
> > "preferred-codec"
> > > > > option to Qemu, unless you are hardcoding it in Spice:
> > > > > https://lists.nongnu.org/archive/html/qemu-devel/2023-
> > 01/msg04999.html
> > > > >
> > > >
> > > > Yes, I hardcoded that in SPICE. Note that I posted a comment in tha=
t
> > > > commit, I think it's valid as it is.
> > > > Also I think it should not change the SPICE default.
> > > [Kasireddy, Vivek] Yes, I noted your comment; I'll make the change in=
 the
> > > next version.
> > >
> > > Thanks,
> > > Vivek
> > >
> > > >
> > > > > Lastly, not sure if it makes a difference, but here are the relev=
ant
> > options I am
> > > > > using to launch Qemu:
> > > > > -device virtio-gpu-pci,max_outputs=3D1,blob=3Dtrue,xres=3D1920,yr=
es=3D1080
> > > > > -spice port=3D3001,gl=3Don,disable-ticketing=3Don,preferred-
> > codec=3Dgstreamer:h264
> > > > > -object memory-backend-memfd,id=3Dmem1,size=3D4096M
> > > > > -machine memory-backend=3Dmem1 -usb -device usb-tablet -serial st=
dio
> > > > >
> > > > > Thanks,
> > > > > Vivek
> > > > >
> > > >
> > > > I will try again.
> > > >
> > > > Thanks,
> > > >   Frediano
> > > >
> > > > > >
> > > > > > On the logs I find:
> > > > > >
> > > > > > 2023-03-25T19:31:36.034007Z qemu-system-x86_64: warning: Spice:
> > > > > > ../server/dcc-send.cpp:1786:red_marshall_gl_draw_stream: bad
> > return
> > > > > > value (0) from VideoEncoder::encode_dmabuf
> > > > > > 2023-03-25T19:31:37.064219Z qemu-system-x86_64: warning: spice:
> > no
> > > > > > gl-draw-done within one second
> > > > > > 2023-03-25T19:31:58.214387Z qemu-system-x86_64: warning: Spice:
> > > > > > Connection reset by peer
> > > > > > 2023-03-25T19:31:58.214482Z qemu-system-x86_64: warning: Spice:
> > > > > > Connection reset by peer
> > > > > > 2023-03-25T19:31:58.214580Z qemu-system-x86_64: warning: Spice:
> > > > > > Connection reset by peer
> > > > > > 2023-03-25T19:31:58.214642Z 2023-03-25T19:31:58.214636Z
> > > > > > qemu-system-x86_64:qemu-system-x86_64:  warning: Spice:
> > Connection
> > > > > > reset by peer
> > > > > > warning: Spice: display:0 (0x55947e76fd10): Connection reset by=
 peer
> > > > > > 2023-03-25T19:31:58.214721Z qemu-system-x86_64: warning: Spice:
> > > > > > Connection reset by peer
> > > > > > 2023-03-25T19:31:58.214841Z qemu-system-x86_64: warning: Spice:
> > > > > > Connection reset by peer
> > > > > > 2023-03-25T19:31:58.215057Z qemu-system-x86_64: warning: Spice:
> > > > > > Connection reset by peer
> > > > > >
> > > > > > 0 value from encode_dmabuf should mean
> > > > VIDEO_ENCODER_FRAME_DROP.
> > > > > >
> > > > > > Regards,
> > > > > >    Frediano
> > > > > >
> >
> > Hi,
> >    some updates. I grab your exact versions and compiled them again.
> > At the beginning I still had some problems with codecs and security
> > settings (seccomp was enabled causing Qemu to crash on gstreamer code
> > ,turned off).
> > However even after solving them the result is not that great. The
> > video is not fluid and when there are some updates it is almost
> > "garbage". Which type of GPU are you using? I'm using integrated Intel
> > and I remember they have a not-linear memory addressing for textures
> > which lead to these garbaged style images due to trying to interpret
> > memory as linear.
> [Vivek] I am using an integrated Intel GPU (Gen 12, codenamed TigerLake/A=
lderLake)
> as well. Regardless, IIUC, the memory backing the dmabuf fd is linear as =
Virtio-gpu
> does not allow/expose modifier support -- which is needed to allocate
> non-linear/tiled memory. The video not being fluid issue is probably a sy=
mptom
> of the time it (software encoder/x264enc) takes to encode a frame. In my
> setup, it takes about ~10-12 ms to encode a 1920x1080 BGRX frame -- which
> obviously drops the FPS to ~25-30. And, the "garbage" behavior could most
> likely be environmental. In other words, in this use-case, we are heavily
> relying on the complex Gstreamer stack which includes 100s of libraries a=
nd
> plugins; so, any of these could be playing a role. Can you please try bui=
lding
> the Gstreamer stack yourself and test to see if it helps? Also, can you f=
orcefully
> use only the avdec_h264 decoder (by possibly hiding/removing libgstvaapi.=
so,
> libgstva.so, libgstopenh264.so and other h264 decoders) to see if the gar=
bage
> goes away?
>

It was more that I see 3/4 changes for half a second then 4/5 seconds
no changes than not much fluid.
About not linear I remember that trying to mmap the fd in the past I
got no-linear image and what I'm getting is pretty similar.
Can you dump the 2 GStreamer pipelines (Qemu and client side)
https://gstreamer.freedesktop.org/documentation/tutorials/basic/debugging-t=
ools.html?gi-language=3Dc#getting-pipeline-graphs
(probably you know but I never remember the environment).

> Lastly, could you please share details about your setup such as OS versio=
n,
> which libraries you have built (decoders?) and installed, Qemu/Spice buil=
d
> options, runtime options, etc., so that I can try reproducing this issue =
in
> my setup?
>

I tried to not change much the system, it's an Ubuntu 22.04.2 LTS,
card (integrated)

00:02.0 VGA compatible controller: Intel Corporation CometLake-U GT2
[UHD Graphics] (rev 02) (prog-if 00 [VGA controller])
    Subsystem: Lenovo CometLake-U GT2 [UHD Graphics]
    Flags: bus master, fast devsel, latency 0, IRQ 158, IOMMU group 1
    Memory at e9000000 (64-bit, non-prefetchable) [size=3D16M]
    Memory at a0000000 (64-bit, prefetchable) [size=3D512M]
    I/O ports at 4000 [size=3D64]
    Expansion ROM at 000c0000 [virtual] [disabled] [size=3D128K]
    Capabilities: <access denied>
    Kernel driver in use: i915
    Kernel modules: i915

gstreamer came from packages, Qemu and SPICE are from your branches.
I tried different remote-viewer, eventually I found an issue with
initialization so I had to change a line of code in spice-gtk.

> > I also had to change spice-gtk due to a missing specification in the
> > encoder. Which client did you use? Which version? Maybe the bug was
> > introduced later.
> [Vivek] I am currently using remote-viewer version 11.0-5.fc37 as the
> client but I have also successfully tested with the remote-viewer version
> from Fedora 36. In addition, I have also tested with spice-gtk master as =
well.
>

Maybe the plugin you are using is not having that issue, the graph will hel=
p.

> > Also I have some warnings in Qemu logs due to attempts to create
> > primary surfaces multiple times.
> [Vivek] Yeah, I see them as well. I'll eventually fix them as they seem
> harmless so far.
>

At least it should cause a memory leak. But it is not good.

> >
> > By the way, the code looks better than the previous version but as
> > commented the running behaviour is not that great.
> [Vivek] As I mentioned above, I think there is not much we can do in Spic=
e
> to fix the behavior you are seeing given the heavy reliance on Gstreamer
> in this use-case. However, we are also actively working on cleanly adding
> Spice options to enable hardware encoders/decoders for Intel GPUs to
> reduce the encode time to < 5 ms. In addition, we are also trying to
> identify and fix all the other performance bottlenecks. We'll post patche=
s
> as soon as we clean everything up and fix all the issues we are seeing.
>
> > The style (well, also the style of spice code I have to admit) is a
> > bit "messy" but better to fix the big problems first than try to solve
> [Vivek] Ok, I guess we can fix it incrementally if you can first point ou=
t
> the worst style violoations.
>

I'll try to write some fixup commits and post some comments to some
"code smell".

> Thanks,
> Vivek
>
> > everything at once.
> >
> > Regards,
> >   Frediano
> >
> > > > > > Il giorno gio 16 mar 2023 alle ore 06:05 Vivek Kasireddy
> > > > > > <vivek.kasireddy@intel.com> ha scritto:
> > > > > > >
> > > > > > > For clients that cannot accept a dmabuf fd directly (such as =
those
> > > > > > > running on a remote system), this patch series provides a way=
 for
> > > > > > > the Spice server to stream the gl/dmabuf data/buffer instead.=
 This
> > > > > > > is mostly done by enabling the creation of Gst memory using a
> > dmabuf
> > > > > > > fd as the source. This ability is useful given that dmabuf is=
 the
> > > > > > > standard mechanism for sharing buffers between various driver=
s
> > and
> > > > > > > userspace in many Graphics and Media usecases. Currently, thi=
s is
> > > > > > > only used/tested with Qemu and remote-viewer using the
> > x264enc/dec
> > > > > > > codec to stream the Guest/VM desktop but it can be easily ext=
ended
> > > > > > > to other plugins and applications.
> > > > > > >
> > > > > > > Here is roughly how things work:
> > > > > > > - The application (e.g, Qemu) chooses its preferred codec (a
> > Gstreamer
> > > > > > >   one) and calls gl_scanout (to update the fd) followed by gl=
_draw.
> > > > > > > - In response, the Spice server checks to see if the client i=
s capable
> > > > > > >   of accepting a dmabuf fd directly or not. If yes, the fd is=
 forwarded
> > > > > > >   directly to the client; otherwise, a new stream is created.
> > > > > > > - The Spice server then sends the dmabuf fd to the Gstreamer
> > encoder
> > > > > > >   which uses it as an input for creating an encoded buffer wh=
ich is
> > then
> > > > > > >   sent to the client.
> > > > > > > - Once the encoding process is done, an async completion cook=
ie is
> > sent
> > > > > > >   to the application.
> > > > > > >
> > > > > > > Here is a link to the previous version that used a drawable t=
o share
> > > > > > > the dmabuf fd with the Gstreamer encoder:
> > > > > > > https://lists.freedesktop.org/archives/spice-devel/2023-
> > January/052948.html
> > > > > > >
> > > > > > > Cc: Frediano Ziglio <freddy77@gmail.com>
> > > > > > > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > > > > > > Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> > > > > > > Cc: Dongwon Kim <dongwon.kim@intel.com>
> > > > > > >
> > > > > > > Vivek Kasireddy (5):
> > > > > > >   dcc: Check to see if the client supports multiple codecs
> > > > > > >   dcc: Create a stream associated with gl_draw for non-gl cli=
ents
> > > > > > >   dcc-send: Encode and send gl_draw stream data to the remote
> > client
> > > > > > >   gstreamer-encoder: Add an encoder function that takes dmabu=
f fd
> > as
> > > > > > >     input
> > > > > > >   video-stream: Don't stop a stream if a gl_draw operation is
> > pending
> > > > > > >
> > > > > > >  meson.build                      |   2 +-
> > > > > > >  server/dcc-private.h             |   4 ++
> > > > > > >  server/dcc-send.cpp              |  89 +++++++++++++++++++++=
+-
> > > > > > >  server/dcc.cpp                   |  36 +++++++---
> > > > > > >  server/display-channel-private.h |   6 ++
> > > > > > >  server/gstreamer-encoder.c       | 119
> > > > ++++++++++++++++++++++++++++++-
> > > > > > >  server/video-encoder.h           |  13 ++++
> > > > > > >  server/video-stream.cpp          |  65 ++++++++++++++++-
> > > > > > >  server/video-stream.h            |   2 +
> > > > > > >  9 files changed, 319 insertions(+), 17 deletions(-)
> > > > > > >
> > > > > > > --
> > > > > > > 2.37.2
> > > > > > >
