Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F106EB1D1
	for <lists+spice-devel@lfdr.de>; Fri, 21 Apr 2023 20:46:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF66710EEBF;
	Fri, 21 Apr 2023 18:46:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com
 [IPv6:2607:f8b0:4864:20::234])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5599510EEBF
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Apr 2023 18:46:07 +0000 (UTC)
Received: by mail-oi1-x234.google.com with SMTP id
 5614622812f47-38c35975545so1743013b6e.1
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Apr 2023 11:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682102766; x=1684694766;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TPZHIYU/zBVBqqTK8WB5QBvx8uXVLS0q9716umxIn88=;
 b=fqr2i/0Ul0qpedXpHDzsUpLIvzQOe6pvf68dHQi3/x7daXt0P1dJK/3tTuL8TiGb5l
 SnUpTJNarzS3vh3u/zuxhxGQhOXAsuzwkmubhaE4Mgl28TzRpFVzEW4ihSjxJ06do5Vu
 OeR0rP4Zcg7jfv7EQUIOb4UfT8VgkVCSAat8JC9Rhu5hozLcpm97tnQHcsWqUgu4hNca
 +G3utvw29g55NhVjB8KhUU2CT4zmFe5Faii/lNr6eNbtQqzJmKI7jbmi8C9F6BCxq1hU
 BFwouF84JfEIV05y7DpQrSlvqG930JkbrpMnYMbUMcE7sX8eoiBeMTlZApstWfEIDipy
 RZOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682102766; x=1684694766;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TPZHIYU/zBVBqqTK8WB5QBvx8uXVLS0q9716umxIn88=;
 b=hCTFrrm1XzhtgEriauwzjZeQcxHi86o0VVDsasREkg3bws0tIB+DPWJM+0+TBCvKL6
 6GPjMDM5IZdXvAwHyln+JFcgD671bKERabXwpi3/4/GMOR4SAuAJ1r1q2qxVntJRvFQL
 9hkHPk4sWNb+t8aSpCXxrKjLnFIcwWyg2jOMEbMTeS0+Zrl1rRoGvTgRJ8s6oXSnxv6N
 3DLIaeZVEAa321EqdQgn4BtgpkuJ7aMk24KARDOl2FxNCDSuOtQXB2vaPd9Z2ks30GpD
 QdwuLKviSarOolZnTc7jfVslyFnP4gNNRirZOTJZyh2QbTh+z003uNSo3Ai3C64NV9VF
 uazw==
X-Gm-Message-State: AAQBX9fkRBiBwNyFwpP/OBrCQqZ8u2//l8Fjd1cLs06oLHBrsry5DCOz
 O1DyzPd3b9KO99syynrM/oC32vKhOyZ/TcfVW8Y=
X-Google-Smtp-Source: AKy350Yz4wVS1ExWQhVjxySAFSR04hWATtbTgqyko8AfdrZ4dBFB5Wb3rCtb44CBregbbw5oSsUpXu5L74D6V3xR1vU=
X-Received: by 2002:a05:6808:3083:b0:38b:fa17:5c99 with SMTP id
 bl3-20020a056808308300b0038bfa175c99mr3961978oib.17.1682102766117; Fri, 21
 Apr 2023 11:46:06 -0700 (PDT)
MIME-Version: 1.0
References: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
 <20230316054458.1546085-4-vivek.kasireddy@intel.com>
In-Reply-To: <20230316054458.1546085-4-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 21 Apr 2023 19:45:54 +0100
Message-ID: <CAHt6W4ew-j012MBPkKB6B1iu7A4Lh3Wxzr_URsttr+KJ5rBuuQ@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [PATCH v1 3/5] dcc-send: Encode and send gl_draw
 stream data to the remote client
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

Il giorno gio 16 mar 2023 alle ore 06:05 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> For remote (or non-gl) clients, if a valid gl_draw stream exists,
> then we first extract the dmabuf fd associated with the scanout and
> share it with the encoder along with other key parameters such as
> stride, width and height. Once the encoder finishes creating an
> encoded buffer (using the dmabuf fd as input), we then send it
> over to the client. Also, as soon as the encoder notifies that
> it is no longer using the dmabuf fd, we send a gl_draw_done async
> to the application.
>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  server/dcc-send.cpp    | 89 +++++++++++++++++++++++++++++++++++++++++-
>  server/video-encoder.h | 13 ++++++
>  2 files changed, 100 insertions(+), 2 deletions(-)
>
> diff --git a/server/dcc-send.cpp b/server/dcc-send.cpp
> index 2c40a231..94cbe7e7 100644
> --- a/server/dcc-send.cpp
> +++ b/server/dcc-send.cpp
> @@ -1730,6 +1730,82 @@ static bool red_marshall_stream_data(DisplayChanne=
lClient *dcc,
>      return TRUE;
>  }
>
> +static void red_gst_mem_free_cb(void *opaque)

I won't use "gst" here, this is for a generic encoder.

> +{
> +    auto dcc =3D static_cast<DisplayChannelClient *>(opaque);
> +    DisplayChannel *display =3D DCC_TO_DC(dcc);
> +
> +    dcc->priv->gl_draw_ongoing =3D FALSE;

minor, false

> +    display_channel_gl_draw_done(display);

This looks like a free() which is not freeing the object, other
callbacks in SPICE free the object.

> +}
> +
> +static void red_marshall_gl_draw_stream(DisplayChannelClient *dcc,
> +                                        SpiceMarshaller *base_marshaller=
)
> +{
> +    DisplayChannel *display =3D DCC_TO_DC(dcc);
> +    QXLInstance* qxl =3D display->priv->qxl;
> +    VideoEncoderDmabufData *dmabuf_data =3D nullptr;
> +
> +    VideoStream *stream =3D dcc->priv->gl_draw_stream;
> +    SpiceMsgDisplayGlScanoutUnix *scanout =3D red_qxl_get_gl_scanout(qxl=
);
> +    if (scanout !=3D nullptr) {

"if (scanout)" suffice... not strong about.

> +        dmabuf_data =3D g_new0(VideoEncoderDmabufData, 1);

Use new/delete instead?

> +        dmabuf_data->drm_dma_buf_fd =3D scanout->drm_dma_buf_fd;
> +        dmabuf_data->width =3D stream->width;
> +        dmabuf_data->height =3D stream->height;
> +        dmabuf_data->stride =3D scanout->stride;
> +        dmabuf_data->opaque =3D dcc;

Why an opaque pointer? Better a proper typed pointer.

> +        dmabuf_data->notify_mem_free =3D red_gst_mem_free_cb;
> +    }
> +    red_qxl_put_gl_scanout(qxl, scanout);
> +    if (!dmabuf_data) {
> +        spice_warning("scanout is not valid");
> +        return;
> +    }
> +
> +    int stream_id =3D display_channel_get_video_stream_id(display, strea=
m);
> +    VideoStreamAgent *agent =3D &dcc->priv->stream_agents[stream_id];
> +    uint32_t frame_mm_time =3D reds_get_mm_time();
> +    VideoBuffer *outbuf;
> +    VideoEncodeResults ret;
> +
> +    ret =3D !agent->video_encoder || !agent->video_encoder->encode_dmabu=
f ?
> +          VIDEO_ENCODER_FRAME_UNSUPPORTED :
> +          agent->video_encoder->encode_dmabuf(agent->video_encoder,
> +                                              frame_mm_time,
> +                                              dmabuf_data, &outbuf);
> +    switch (ret) {
> +    case VIDEO_ENCODER_FRAME_ENCODE_DONE:
> +        break;
> +    case VIDEO_ENCODER_FRAME_DROP:
> +#ifdef STREAM_STATS
> +        agent->stats.num_drops_fps++;
> +#endif
> +    case VIDEO_ENCODER_FRAME_UNSUPPORTED:
> +    default:
> +        spice_warning("bad return value (%d) from VideoEncoder::encode_d=
mabuf", ret);
> +        display_channel_gl_draw_done(display);

I don't know why but not setting dcc->priv->gl_draw_ongoing here smells bad=
.

> +        g_free(dmabuf_data);
> +        return;
> +    }
> +
> +    SpiceMsgDisplayStreamData stream_data;
> +
> +    dcc->init_send_data(SPICE_MSG_DISPLAY_STREAM_DATA);
> +    stream_data.base.id =3D stream_id;
> +    stream_data.base.multi_media_time =3D frame_mm_time;
> +    stream_data.data_size =3D outbuf->size;
> +    spice_marshall_msg_display_stream_data(base_marshaller, &stream_data=
);
> +
> +    spice_marshaller_add_by_ref_full(base_marshaller, outbuf->data, outb=
uf->size,
> +                                     &red_release_video_encoder_buffer, =
outbuf);
> +#ifdef STREAM_STATS
> +    agent->stats.num_frames_sent++;
> +    agent->stats.size_sent +=3D outbuf->size;
> +    agent->stats.end =3D frame_mm_time;
> +#endif
> +}
> +
>  static inline void marshall_inval_palette(RedChannelClient *rcc,
>                                            SpiceMarshaller *base_marshall=
er,
>                                            RedCachePipeItem *cache_item)
> @@ -2126,6 +2202,8 @@ static void marshall_stream_start(DisplayChannelCli=
ent *dcc,
>      if (stream->current) {
>          RedDrawable *red_drawable =3D stream->current->red_drawable.get(=
);
>          stream_create.clip =3D red_drawable->clip;
> +    } else if (stream =3D=3D dcc->priv->gl_draw_stream){
> +        stream_create.clip.type =3D SPICE_CLIP_TYPE_NONE;

Is this necessary?

>      } else {
>          stream_create.clip.type =3D SPICE_CLIP_TYPE_RECTS;
>          clip_rects.num_rects =3D 0;
> @@ -2279,10 +2357,17 @@ static void marshall_gl_draw(RedChannelClient *rc=
c,
>                               SpiceMarshaller *m,
>                               RedPipeItem *item)
>  {
> +    DisplayChannelClient *dcc =3D DISPLAY_CHANNEL_CLIENT(rcc);

See fixups branch

>      auto p =3D static_cast<RedGlDrawItem*>(item);
>
> -    rcc->init_send_data(SPICE_MSG_DISPLAY_GL_DRAW);
> -    spice_marshall_msg_display_gl_draw(m, &p->draw);
> +    if (dcc_is_gl_client(dcc)) {
> +        rcc->init_send_data(SPICE_MSG_DISPLAY_GL_DRAW);
> +        spice_marshall_msg_display_gl_draw(m, &p->draw);
> +    } else if (dcc->priv->gl_draw_stream) {
> +        red_marshall_gl_draw_stream(dcc, m);
> +    } else {
> +        spice_warning("nothing to send to the client");
> +    }
>  }
>
>
> diff --git a/server/video-encoder.h b/server/video-encoder.h
> index d5bc0a68..8eb71ca1 100644
> --- a/server/video-encoder.h
> +++ b/server/video-encoder.h
> @@ -56,6 +56,15 @@ typedef struct VideoEncoderStats {
>      double avg_quality;
>  } VideoEncoderStats;
>
> +typedef struct VideoEncoderDmabufData {
> +    int32_t drm_dma_buf_fd;

See fixups branch

> +    uint32_t width;
> +    uint32_t height;
> +    uint32_t stride;
> +    void *opaque;

I would avoid the opaque and extend in dcc-send.

> +    void (*notify_mem_free)(void *opaque);

Here I would use a "void (*free)(struct VideoEncoderDmabufData*)".

> +} VideoEncoderDmabufData;
> +
>  typedef struct VideoEncoder VideoEncoder;
>  struct VideoEncoder {
>      /* Releases the video encoder's resources */
> @@ -84,6 +93,10 @@ struct VideoEncoder {
>                                         const SpiceRect *src, int top_dow=
n,
>                                         gpointer bitmap_opaque, VideoBuff=
er** outbuf);
>
> +    VideoEncodeResults (*encode_dmabuf)(VideoEncoder *encoder, uint32_t =
frame_mm_time,
> +                                        VideoEncoderDmabufData *dmabuf_d=
ata,
> +                                        VideoBuffer** outbuf);
> +
>      /*
>       * Bit rate control methods.
>       */

Frediano
