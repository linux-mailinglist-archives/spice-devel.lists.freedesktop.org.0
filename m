Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB206CEFEE
	for <lists+spice-devel@lfdr.de>; Wed, 29 Mar 2023 18:55:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F419110E548;
	Wed, 29 Mar 2023 16:55:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com
 [IPv6:2001:4860:4864:20::2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1E5D10EB9D
 for <spice-devel@lists.freedesktop.org>; Wed, 29 Mar 2023 16:55:09 +0000 (UTC)
Received: by mail-oa1-x2f.google.com with SMTP id
 586e51a60fabf-17ebba88c60so16864742fac.3
 for <spice-devel@lists.freedesktop.org>; Wed, 29 Mar 2023 09:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680108909;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EDhH+1ToXcdt6qixozlmEuklqGed+r+DX3/8Rs6R/KY=;
 b=lqcg2wks2BKFJX5dn0RLhS5FSP7ZvNgSqw1zzqJQwkcBQIuAmdjCOfTghpR7Bfa3VH
 uar8o8C1Jky+1odQ5pLvPvhceU2B4j2gjFZTcRmYu4nGAA6/Mq29tIvOkU7jhmx/O8+n
 07ivljTx/ytR9HHBEcgFKqVnQzfSb2tIOa/r9DfOScIC6cZI2liMaTE3ec3zn8JmGAzm
 T66zlhZOouSfQWzHCTE1fJo/T/W6efBeQIhU0rCaPIYHyiscoKfpRXxtAQaFL2kuYI1X
 marux4hxTVl180l37V+DnNubCCcPeXRS91thiWe94WlevaGrMwrVdNVRoDkFw1tJjyTa
 nCVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680108909;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EDhH+1ToXcdt6qixozlmEuklqGed+r+DX3/8Rs6R/KY=;
 b=Y6WeDCUCrK1JyN4GjrC52ScQsHzA7nI+SH3Y0VNEjUK2dNJFwePydR8h9DR1E+LD7C
 IzV06KxlvAciycOPLFxiMbs4BTb1KO2Qi/SgnIDxnxUIHRHQ5Ph+x83KjIFhEnYzSuLK
 KFlAYbm4nxERCWJHp0baj4OT0Oo27Tl1uuV8hS7/6nmhEXKlPIi35sEFl044Xps1NQZo
 lwZ9FVhFI1KXCq2mIsrHVJY6UcOzYXWTxo9kS8vcNlWkvwn50M1rhtcL7W2UC3+weJd/
 14XTuvfyh2a9Zls0ASOpmB+hsjj/Feybra00qAwF8Z6JOpmEneq3Qh2Xk2MN7Vs4HVCh
 PKAw==
X-Gm-Message-State: AAQBX9fB45groiHXndLMVYAANzWZdkU89QpQqYFTgkrbQpWOmTzITKx8
 DLMAmtpKuEMxZB4rivR4ncPGWnXBgfhm6a4ft9A=
X-Google-Smtp-Source: AKy350avMT9UDI3pQ1CmTiyCzElg3ZsCb/vbVTVeps1/h/3LvP+/KGxN3rZKrqNJRPZtNm5ugwBUHKTTfYzD8C9aDpo=
X-Received: by 2002:a05:6870:1194:b0:17b:7376:8c82 with SMTP id
 20-20020a056870119400b0017b73768c82mr7124069oau.1.1680108908895; Wed, 29 Mar
 2023 09:55:08 -0700 (PDT)
MIME-Version: 1.0
References: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
 <CAHt6W4fwABLRLkjsZ584-kaJbJPvn4huNMeXQBnZj+usAs_fyQ@mail.gmail.com>
 <IA0PR11MB7185A086540E06748286F573F88B9@IA0PR11MB7185.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7185A086540E06748286F573F88B9@IA0PR11MB7185.namprd11.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Wed, 29 Mar 2023 17:54:57 +0100
Message-ID: <CAHt6W4cBU7pakwn+nwuUKQj_=BoXDV=Oc5M8fuc3gCA18gK8Qg@mail.gmail.com>
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

Il giorno lun 27 mar 2023 alle ore 07:53 Kasireddy, Vivek
<vivek.kasireddy@intel.com> ha scritto:
>
> Hi Frediano,
>
> >    I was trying the patch series but the client keeps crashing. I
> > tried different versions of remote-viewer (from Fedora and from
> > Ubuntu) and they both crashed.
> > On host I installed Intel VA drivers , Gstreamer VAAPIs and forced
> > gstreamer:h264 as encoder.
> [Kasireddy, Vivek] I don't think any of these packages are needed if we a=
re testing
> with a software (i.e, CPU-based) encoder/decoder (i.e, using x264enc/x264=
dec plugins).

They should allow hardware encoding.

> On my Fedora 37, these relevant plugins are provided by:
> # rpm -q --whatprovides /usr/lib64/gstreamer-1.0/libgstx264.so
> gstreamer1-plugins-ugly-1.20.5-1.fc37.x86_64
> # rpm -q --whatprovides /usr/lib64/gstreamer-1.0/libgstlibav.so
> gstreamer1-plugin-libav-1.20.5-1.fc37.x86_64
>
> The former provides x264enc and the latter provides x264dec. You can eith=
er choose
> the ones provided by your distro or build Gstreamer with -Dgst-plugins-ug=
ly:x264=3Denabled
> and -Dlibav=3Denabled. However, note that one of our eventual goals is to=
 cleanly add a
> new Gstreamer pipeline to Spice to provide users an option for hardware-b=
ased
> (i.e, GPU assisted) H.264 encoding/decoding using msdkh264enc/msdkh264dec=
 plugins:
> https://gstreamer.freedesktop.org/documentation/msdk/msdkh264enc.html?gi-=
language=3Dc
>
> > Anything else you need to do?
> [Kasireddy, Vivek] Sorry, I was not expecting anyone would test the Spice=
 server
> patches and therefore did not provide all the required information to tes=
t them.
> Anyway, I suspect the reason for your remote-viewer crash is because ther=
e is no
> (primary) surface created. Here is the tentative Qemu patch that does jus=
t that:
>

Do you have a branch for Qemu somewhere?

> Author: Vivek Kasireddy <vivek.kasireddy@intel.com>
> Date:   Wed Mar 15 22:18:00 2023 -0700
>
>     spice: Create a primary surface for a streaming non-gl client
>
>     When gl=3Don option is enabled and a client that cannot accept
>     dmabuf fds is connected, create a primary surface so that
>     the server can start streaming the dmabuf data.
>
>     Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
>
> diff --git a/include/ui/spice-display.h b/include/ui/spice-display.h
> index e271e011da..121fb0caf8 100644
> --- a/include/ui/spice-display.h
> +++ b/include/ui/spice-display.h
> @@ -153,6 +153,7 @@ struct SimpleSpiceCursor {
>  };
>
>  extern bool spice_opengl;
> +extern bool streaming_client;
>
>  int qemu_spice_rect_is_empty(const QXLRect* r);
>  void qemu_spice_rect_union(QXLRect *dest, const QXLRect *r);
> diff --git a/ui/spice-core.c b/ui/spice-core.c
> index 6e00211e3a..e5822b41ef 100644
> --- a/ui/spice-core.c
> +++ b/ui/spice-core.c
> @@ -845,9 +845,7 @@ static void qemu_spice_init(void)
>  #ifdef HAVE_SPICE_GL
>      if (qemu_opt_get_bool(opts, "gl", 0)) {
>          if ((port !=3D 0) || (tls_port !=3D 0)) {
> -            error_report("SPICE GL support is local-only for now and "
> -                         "incompatible with -spice port/tls-port");
> -            exit(1);
> +            streaming_client =3D 1;
>          }
>          if (egl_rendernode_init(qemu_opt_get(opts, "rendernode"),
>                                  DISPLAYGL_MODE_ON) !=3D 0) {
> diff --git a/ui/spice-display.c b/ui/spice-display.c
> index 494168e7fe..fe85604c2e 100644
> --- a/ui/spice-display.c
> +++ b/ui/spice-display.c
> @@ -28,6 +28,7 @@
>  #include "ui/spice-display.h"
>
>  bool spice_opengl;
> +bool streaming_client;
>
>  int qemu_spice_rect_is_empty(const QXLRect* r)
>  {
> @@ -891,6 +892,9 @@ static void spice_gl_switch(DisplayChangeListener *dc=
l,
>      }
>      ssd->ds =3D new_surface;
>      if (ssd->ds) {
> +        if (streaming_client) {
> +            qemu_spice_create_host_primary(ssd);
> +        }
>          surface_gl_create_texture(ssd->gls, ssd->ds);
>          fd =3D egl_get_fd_for_texture(ssd->ds->texture,
>
> I did not yet post this patch to the Qemu mailing list because I still ne=
ed to implement
> feature negotiation between Qemu and Spice to auto-detect this capability=
. And,
> in addition to this patch, you also need the patch that adds the "preferr=
ed-codec"
> option to Qemu, unless you are hardcoding it in Spice:
> https://lists.nongnu.org/archive/html/qemu-devel/2023-01/msg04999.html
>

Yes, I hardcoded that in SPICE. Note that I posted a comment in that
commit, I think it's valid as it is.
Also I think it should not change the SPICE default.

> Lastly, not sure if it makes a difference, but here are the relevant opti=
ons I am
> using to launch Qemu:
> -device virtio-gpu-pci,max_outputs=3D1,blob=3Dtrue,xres=3D1920,yres=3D108=
0
> -spice port=3D3001,gl=3Don,disable-ticketing=3Don,preferred-codec=3Dgstre=
amer:h264
> -object memory-backend-memfd,id=3Dmem1,size=3D4096M
> -machine memory-backend=3Dmem1 -usb -device usb-tablet -serial stdio
>
> Thanks,
> Vivek
>

I will try again.

Thanks,
  Frediano

> >
> > On the logs I find:
> >
> > 2023-03-25T19:31:36.034007Z qemu-system-x86_64: warning: Spice:
> > ../server/dcc-send.cpp:1786:red_marshall_gl_draw_stream: bad return
> > value (0) from VideoEncoder::encode_dmabuf
> > 2023-03-25T19:31:37.064219Z qemu-system-x86_64: warning: spice: no
> > gl-draw-done within one second
> > 2023-03-25T19:31:58.214387Z qemu-system-x86_64: warning: Spice:
> > Connection reset by peer
> > 2023-03-25T19:31:58.214482Z qemu-system-x86_64: warning: Spice:
> > Connection reset by peer
> > 2023-03-25T19:31:58.214580Z qemu-system-x86_64: warning: Spice:
> > Connection reset by peer
> > 2023-03-25T19:31:58.214642Z 2023-03-25T19:31:58.214636Z
> > qemu-system-x86_64:qemu-system-x86_64:  warning: Spice: Connection
> > reset by peer
> > warning: Spice: display:0 (0x55947e76fd10): Connection reset by peer
> > 2023-03-25T19:31:58.214721Z qemu-system-x86_64: warning: Spice:
> > Connection reset by peer
> > 2023-03-25T19:31:58.214841Z qemu-system-x86_64: warning: Spice:
> > Connection reset by peer
> > 2023-03-25T19:31:58.215057Z qemu-system-x86_64: warning: Spice:
> > Connection reset by peer
> >
> > 0 value from encode_dmabuf should mean VIDEO_ENCODER_FRAME_DROP.
> >
> > Regards,
> >    Frediano
> >
> > Il giorno gio 16 mar 2023 alle ore 06:05 Vivek Kasireddy
> > <vivek.kasireddy@intel.com> ha scritto:
> > >
> > > For clients that cannot accept a dmabuf fd directly (such as those
> > > running on a remote system), this patch series provides a way for
> > > the Spice server to stream the gl/dmabuf data/buffer instead. This
> > > is mostly done by enabling the creation of Gst memory using a dmabuf
> > > fd as the source. This ability is useful given that dmabuf is the
> > > standard mechanism for sharing buffers between various drivers and
> > > userspace in many Graphics and Media usecases. Currently, this is
> > > only used/tested with Qemu and remote-viewer using the x264enc/dec
> > > codec to stream the Guest/VM desktop but it can be easily extended
> > > to other plugins and applications.
> > >
> > > Here is roughly how things work:
> > > - The application (e.g, Qemu) chooses its preferred codec (a Gstreame=
r
> > >   one) and calls gl_scanout (to update the fd) followed by gl_draw.
> > > - In response, the Spice server checks to see if the client is capabl=
e
> > >   of accepting a dmabuf fd directly or not. If yes, the fd is forward=
ed
> > >   directly to the client; otherwise, a new stream is created.
> > > - The Spice server then sends the dmabuf fd to the Gstreamer encoder
> > >   which uses it as an input for creating an encoded buffer which is t=
hen
> > >   sent to the client.
> > > - Once the encoding process is done, an async completion cookie is se=
nt
> > >   to the application.
> > >
> > > Here is a link to the previous version that used a drawable to share
> > > the dmabuf fd with the Gstreamer encoder:
> > > https://lists.freedesktop.org/archives/spice-devel/2023-January/05294=
8.html
> > >
> > > Cc: Frediano Ziglio <freddy77@gmail.com>
> > > Cc: Gerd Hoffmann <kraxel@redhat.com>
> > > Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> > > Cc: Dongwon Kim <dongwon.kim@intel.com>
> > >
> > > Vivek Kasireddy (5):
> > >   dcc: Check to see if the client supports multiple codecs
> > >   dcc: Create a stream associated with gl_draw for non-gl clients
> > >   dcc-send: Encode and send gl_draw stream data to the remote client
> > >   gstreamer-encoder: Add an encoder function that takes dmabuf fd as
> > >     input
> > >   video-stream: Don't stop a stream if a gl_draw operation is pending
> > >
> > >  meson.build                      |   2 +-
> > >  server/dcc-private.h             |   4 ++
> > >  server/dcc-send.cpp              |  89 ++++++++++++++++++++++-
> > >  server/dcc.cpp                   |  36 +++++++---
> > >  server/display-channel-private.h |   6 ++
> > >  server/gstreamer-encoder.c       | 119 +++++++++++++++++++++++++++++=
+-
> > >  server/video-encoder.h           |  13 ++++
> > >  server/video-stream.cpp          |  65 ++++++++++++++++-
> > >  server/video-stream.h            |   2 +
> > >  9 files changed, 319 insertions(+), 17 deletions(-)
> > >
> > > --
> > > 2.37.2
> > >
