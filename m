Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE516C9093
	for <lists+spice-devel@lfdr.de>; Sat, 25 Mar 2023 20:49:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 871FD10E059;
	Sat, 25 Mar 2023 19:49:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com
 [IPv6:2607:f8b0:4864:20::229])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E931810E059
 for <spice-devel@lists.freedesktop.org>; Sat, 25 Mar 2023 19:49:33 +0000 (UTC)
Received: by mail-oi1-x229.google.com with SMTP id bm2so3670886oib.4
 for <spice-devel@lists.freedesktop.org>; Sat, 25 Mar 2023 12:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679773773;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Si3Ff987av3eTlBeR76Jg0ajEY9hAPK8q7OYH9HxPB0=;
 b=X6Bb6yCNwh1hHLfiqf5kR++XexlO9e2LiA/A7lbeo7P7+qOnUKvRcJKT5crHB6jzX1
 FF6KZMEVjOGu0sqJGi2YyCtNw+LcTEtQPHIoY3/A7yBLZKyjKGZ1zVwdMtSgdzzfM/G+
 g0vtglmiGYhu5NCCpmv3vG5cxILP79jD4PfzDK9i0L/xHo8yEdmmCgK9ODlth6oNNMnE
 74PIgt4Q3UOk9CL9rQVoSrWy4XWjRI4jlv6efGSx7EFB2Jn8aLcisdNJcyKghGt9wmmW
 C5S8Kuzc9FVYaEZ7zytnNDYqs3dtICud2VHEkev1isLzr572gM+Vex1uZAu/6n/FiGKw
 Bw0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679773773;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Si3Ff987av3eTlBeR76Jg0ajEY9hAPK8q7OYH9HxPB0=;
 b=LfiR73gJwj3Pu/Uj9lvPShyf88NACWAfBs5EIezgtcEGcGnScOSMhkJ7bViP39zR63
 0wyvEFBcEoryPgW/N3nf5KFrd2aV4PF8g72+slucEnQssHcZpbPe/eZJnMvNAbybWKET
 CCX+D6dkFiBeEXExPg8P8mxNYwVKuwkIj2BTuTYDPW+e3Mj+Sx4z9bisPAzRNaJTnzC7
 UIfvNePJW0VizVLGcPs5l7w8xfXynKJUQNWhRWKVnv4lW+Ewn+nq9vz5lHRxcDsEVEzW
 9AGGziZFbduG4w84pIhCB9O0HPfr8yE58Kel1PdVaew+kypKFen3jn5uNBCEjxE6nx3X
 VdtQ==
X-Gm-Message-State: AO0yUKVjOutVL43QSZw307fTBjs3y86RpaUZtq7qRJDwapm9tHjsNj9L
 S8XLlZnujqST9689lG5PHVVlUfji6IuvzYcDyPrfaGvNU/A=
X-Google-Smtp-Source: AK7set/qB7XnQjTfqlgNy6Kc3gTSyWvtFJ2pnr8fYpXRX9lb7IEvc5TmaTfc/OPFOPik6UiUFVoagM7OcpasJQL7nvE=
X-Received: by 2002:a54:4694:0:b0:386:a6d2:30ac with SMTP id
 k20-20020a544694000000b00386a6d230acmr1848030oic.1.1679773773088; Sat, 25 Mar
 2023 12:49:33 -0700 (PDT)
MIME-Version: 1.0
References: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
In-Reply-To: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 25 Mar 2023 19:49:22 +0000
Message-ID: <CAHt6W4fwABLRLkjsZ584-kaJbJPvn4huNMeXQBnZj+usAs_fyQ@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
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
Cc: spice-devel@lists.freedesktop.org, Dongwon Kim <dongwon.kim@intel.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Vivek,
   I was trying the patch series but the client keeps crashing. I
tried different versions of remote-viewer (from Fedora and from
Ubuntu) and they both crashed.
On host I installed Intel VA drivers , Gstreamer VAAPIs and forced
gstreamer:h264 as encoder.
Anything else you need to do?

On the logs I find:

2023-03-25T19:31:36.034007Z qemu-system-x86_64: warning: Spice:
../server/dcc-send.cpp:1786:red_marshall_gl_draw_stream: bad return
value (0) from VideoEncoder::encode_dmabuf
2023-03-25T19:31:37.064219Z qemu-system-x86_64: warning: spice: no
gl-draw-done within one second
2023-03-25T19:31:58.214387Z qemu-system-x86_64: warning: Spice:
Connection reset by peer
2023-03-25T19:31:58.214482Z qemu-system-x86_64: warning: Spice:
Connection reset by peer
2023-03-25T19:31:58.214580Z qemu-system-x86_64: warning: Spice:
Connection reset by peer
2023-03-25T19:31:58.214642Z 2023-03-25T19:31:58.214636Z
qemu-system-x86_64:qemu-system-x86_64:  warning: Spice: Connection
reset by peer
warning: Spice: display:0 (0x55947e76fd10): Connection reset by peer
2023-03-25T19:31:58.214721Z qemu-system-x86_64: warning: Spice:
Connection reset by peer
2023-03-25T19:31:58.214841Z qemu-system-x86_64: warning: Spice:
Connection reset by peer
2023-03-25T19:31:58.215057Z qemu-system-x86_64: warning: Spice:
Connection reset by peer

0 value from encode_dmabuf should mean VIDEO_ENCODER_FRAME_DROP.

Regards,
   Frediano

Il giorno gio 16 mar 2023 alle ore 06:05 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> For clients that cannot accept a dmabuf fd directly (such as those
> running on a remote system), this patch series provides a way for
> the Spice server to stream the gl/dmabuf data/buffer instead. This
> is mostly done by enabling the creation of Gst memory using a dmabuf
> fd as the source. This ability is useful given that dmabuf is the
> standard mechanism for sharing buffers between various drivers and
> userspace in many Graphics and Media usecases. Currently, this is
> only used/tested with Qemu and remote-viewer using the x264enc/dec
> codec to stream the Guest/VM desktop but it can be easily extended
> to other plugins and applications.
>
> Here is roughly how things work:
> - The application (e.g, Qemu) chooses its preferred codec (a Gstreamer
>   one) and calls gl_scanout (to update the fd) followed by gl_draw.
> - In response, the Spice server checks to see if the client is capable
>   of accepting a dmabuf fd directly or not. If yes, the fd is forwarded
>   directly to the client; otherwise, a new stream is created.
> - The Spice server then sends the dmabuf fd to the Gstreamer encoder
>   which uses it as an input for creating an encoded buffer which is then
>   sent to the client.
> - Once the encoding process is done, an async completion cookie is sent
>   to the application.
>
> Here is a link to the previous version that used a drawable to share
> the dmabuf fd with the Gstreamer encoder:
> https://lists.freedesktop.org/archives/spice-devel/2023-January/052948.ht=
ml
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
>
> Vivek Kasireddy (5):
>   dcc: Check to see if the client supports multiple codecs
>   dcc: Create a stream associated with gl_draw for non-gl clients
>   dcc-send: Encode and send gl_draw stream data to the remote client
>   gstreamer-encoder: Add an encoder function that takes dmabuf fd as
>     input
>   video-stream: Don't stop a stream if a gl_draw operation is pending
>
>  meson.build                      |   2 +-
>  server/dcc-private.h             |   4 ++
>  server/dcc-send.cpp              |  89 ++++++++++++++++++++++-
>  server/dcc.cpp                   |  36 +++++++---
>  server/display-channel-private.h |   6 ++
>  server/gstreamer-encoder.c       | 119 ++++++++++++++++++++++++++++++-
>  server/video-encoder.h           |  13 ++++
>  server/video-stream.cpp          |  65 ++++++++++++++++-
>  server/video-stream.h            |   2 +
>  9 files changed, 319 insertions(+), 17 deletions(-)
>
> --
> 2.37.2
>
