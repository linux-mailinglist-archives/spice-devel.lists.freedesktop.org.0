Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD9C6EB1E5
	for <lists+spice-devel@lfdr.de>; Fri, 21 Apr 2023 20:56:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24DCF10E275;
	Fri, 21 Apr 2023 18:56:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com
 [IPv6:2001:4860:4864:20::32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13D6510E275
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Apr 2023 18:56:09 +0000 (UTC)
Received: by mail-oa1-x32.google.com with SMTP id
 586e51a60fabf-18b1c643219so775359fac.2
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Apr 2023 11:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682103366; x=1684695366;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sshCvr+/FjRq446VMyR7vy29pQqMti4WUewcfZwO+18=;
 b=LpoVjkD0FyOyTKcoFq6cafxcpk6CZCqjtGsft/+zOfNsf5uABHpt9qMtDFR2WHXR/D
 fYoelMSingvEcfvPei5sZbeDM9mfP/TAKO/5ToKT4UsQPv3DPIgI98uUiXLf40lZGBYQ
 sP9cQrSfreZcnsWwg9ciFwEbtAB9dmUOl8ucP4mIY8CWc3tUjso2+uonhBd0v7BtaZQc
 rXoDColuAqxKLi9yBtJ4qN4uMfJBvNrswFG/VnTs5jNAmPUJZ6ZgQNAFByiSBM7h/PLb
 O9ePFaZWZJE19UKc+DLTGczIvaATomZPLUfk6gecFar09TYjd/KV64IZJNko6dH1SO15
 uoCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682103366; x=1684695366;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sshCvr+/FjRq446VMyR7vy29pQqMti4WUewcfZwO+18=;
 b=AmDVTeb/gIwEFLlPugrv2V/dYQjJRXhV74rfOGKdMrq7xZw9txmbokRfAKzEO2TYgP
 l0nYvYoyBP5AwpuoE/NuuMzhm+1S0XKtVFL/+gcj/0goI0rTODTm+bf2hCUuP7RhDv+U
 uLgEq8dzQ/H9IPTyKtnKjneVzP8bxNqE1eyt6eQMAuk72y9BNQZI3AO/loJ1uVTLMwSP
 Rea9y6oeScaIfhoQ9lGdCsWeutnHXlAbfC1mugmvZcR4IPAVZcBE0C1Ija57xqTgH9e9
 JQNiy6/TLexDmHluC4wmbwBIsCMwVoBgZ02VduOPW0eAwbE/bXVfEMabGx0vQBNNt3zp
 JrEw==
X-Gm-Message-State: AAQBX9e+mpEZUKaU0beJBq7v7kJl3L1JlEH778I+IuM7s9zso60Hrgig
 IxSMuIh22YpMH4SH9htcdy1DJRCWYp3Ydx9Eg+M=
X-Google-Smtp-Source: AKy350YwT1zhHOXO6RXHzNyENljVBDxLmod6RwQA2iP8xVxM7w4crxMTp6Cs3cJskgkd6AoMdkmL5frjXWW4Uw33RuE=
X-Received: by 2002:a05:6870:32ca:b0:187:9f69:a474 with SMTP id
 r10-20020a05687032ca00b001879f69a474mr4007630oac.8.1682103366111; Fri, 21 Apr
 2023 11:56:06 -0700 (PDT)
MIME-Version: 1.0
References: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
 <20230316054458.1546085-5-vivek.kasireddy@intel.com>
In-Reply-To: <20230316054458.1546085-5-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 21 Apr 2023 19:55:55 +0100
Message-ID: <CAHt6W4cMrw4WyudVh17ehsUWT7JNrv1RvoNfhEP_sjr5aRjVrw@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [PATCH v1 4/5] gstreamer-encoder: Add an encoder
 function that takes dmabuf fd as input
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
> This patch adds a new function to enable the creation of Gst memory with
> the dmabuf fd as the source by using a dmabuf allocator. And, it also
> adds a mechanism to register and invoke any callbacks once the Gst memory
> object is no longer used by the pipeline.
>
> This patch also ensures that the source_fps value is always non-zero.
>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  meson.build                |   2 +-
>  server/gstreamer-encoder.c | 119 ++++++++++++++++++++++++++++++++++++-
>  2 files changed, 118 insertions(+), 3 deletions(-)
>
> diff --git a/meson.build b/meson.build
> index ef8b41ad..d66fac10 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -131,7 +131,7 @@ endforeach
>  spice_server_has_gstreamer =3D false
>  spice_server_gst_version =3D get_option('gstreamer')
>  if spice_server_gst_version !=3D 'no'
> -  gst_deps =3D ['gstreamer', 'gstreamer-base', 'gstreamer-app', 'gstream=
er-video']
> +  gst_deps =3D ['gstreamer', 'gstreamer-base', 'gstreamer-app', 'gstream=
er-video', 'gstreamer-allocators']
>    foreach dep : gst_deps
>      dep =3D '@0@-@1@'.format(dep, spice_server_gst_version)
>      spice_server_deps +=3D dependency(dep)
> diff --git a/server/gstreamer-encoder.c b/server/gstreamer-encoder.c
> index 5ea11f4b..2ceb80ba 100644
> --- a/server/gstreamer-encoder.c
> +++ b/server/gstreamer-encoder.c
> @@ -22,6 +22,7 @@
>  #include <pthread.h>
>
>  #include <gst/gst.h>
> +#include <gst/allocators/gstdmabuf.h>
>  #include <gst/app/gstappsrc.h>
>  #include <gst/app/gstappsink.h>
>  #include <gst/video/video.h>
> @@ -298,6 +299,7 @@ typedef struct SpiceGstEncoder {
>
>      /* How many frames were dropped by the server since the last encoded=
 frame. */
>      uint32_t server_drops;
> +    GstAllocator *allocator;
>  } SpiceGstEncoder;
>
>
> @@ -335,8 +337,12 @@ static inline double get_mbps(uint64_t bit_rate)
>   */
>  static uint32_t get_source_fps(const SpiceGstEncoder *encoder)
>  {
> -    return encoder->cbs.get_source_fps ?
> -        encoder->cbs.get_source_fps(encoder->cbs.opaque) : SPICE_GST_DEF=
AULT_FPS;
> +    uint32_t source_fps =3D 0;
> +
> +    if (encoder->cbs.get_source_fps) {
> +        source_fps =3D encoder->cbs.get_source_fps(encoder->cbs.opaque);
> +    }
> +    return source_fps ? source_fps : SPICE_GST_DEFAULT_FPS;
>  }
>
>  static uint32_t get_network_latency(const SpiceGstEncoder *encoder)
> @@ -1456,6 +1462,7 @@ static void spice_gst_encoder_destroy(VideoEncoder =
*video_encoder)
>  {
>      SpiceGstEncoder *encoder =3D (SpiceGstEncoder*)video_encoder;
>
> +    gst_object_unref(encoder->allocator);
>      free_pipeline(encoder);
>      pthread_mutex_destroy(&encoder->outbuf_mutex);
>      pthread_cond_destroy(&encoder->outbuf_cond);
> @@ -1568,6 +1575,112 @@ spice_gst_encoder_encode_frame(VideoEncoder *vide=
o_encoder,
>      return rc;
>  }
>
> +static void
> +spice_gst_mem_free_cb(VideoEncoderDmabufData *dmabuf_data, GstMiniObject=
 *obj)
> +{
> +    if (dmabuf_data->notify_mem_free) {
> +        dmabuf_data->notify_mem_free(dmabuf_data->opaque);
> +        g_free(dmabuf_data);

See previous patch comments on opaque and notify_mem_free.

From which thread is this function called?

> +    }
> +}
> +
> +static VideoEncodeResults
> +spice_gst_encoder_encode_dmabuf(VideoEncoder *video_encoder,
> +                                uint32_t frame_mm_time,
> +                                VideoEncoderDmabufData *dmabuf_data,
> +                                VideoBuffer **outbuf)
> +{
> +    SpiceGstEncoder *encoder =3D (SpiceGstEncoder*)video_encoder;
> +    g_return_val_if_fail(outbuf !=3D NULL, VIDEO_ENCODER_FRAME_UNSUPPORT=
ED);
> +    g_return_val_if_fail(dmabuf_data !=3D NULL, VIDEO_ENCODER_FRAME_UNSU=
PPORTED);
> +    VideoEncodeResults rc =3D VIDEO_ENCODER_FRAME_UNSUPPORTED;
> +    *outbuf =3D NULL;
> +
> +    if (dmabuf_data->width !=3D encoder->width ||
> +        dmabuf_data->height !=3D encoder->height) {
> +        encoder->format =3D map_format(SPICE_BITMAP_FMT_32BIT);
> +        encoder->width =3D dmabuf_data->width;
> +        encoder->height =3D dmabuf_data->height;
> +
> +        if (encoder->bit_rate =3D=3D 0) {
> +            encoder->history[0].mm_time =3D frame_mm_time;
> +            encoder->max_bit_rate =3D get_bit_rate_cap(encoder);
> +            encoder->min_bit_rate =3D SPICE_GST_MIN_BITRATE;
> +            encoder->status =3D SPICE_GST_BITRATE_DECREASING;
> +            set_bit_rate(encoder, encoder->starting_bit_rate);
> +            encoder->vbuffer_free =3D 0;
> +        } else if (encoder->pipeline) {
> +            set_pipeline_changes(encoder, SPICE_GST_VIDEO_PIPELINE_CAPS)=
;
> +        }
> +        encoder->errors =3D 0;
> +    } else if (encoder->errors >=3D 3) {
> +        if (encoder->errors =3D=3D 3) {
> +            spice_debug("%s cannot compress %dx%d:%dbpp frames",
> +                        get_gst_codec_name(encoder), encoder->width,
> +                        encoder->height, encoder->format->bpp);
> +            encoder->errors++;
> +        }
> +        return VIDEO_ENCODER_FRAME_UNSUPPORTED;
> +    }
> +
> +    if (handle_server_drops(encoder, frame_mm_time) ||
> +        frame_mm_time < encoder->next_frame_mm_time) {
> +        return VIDEO_ENCODER_FRAME_DROP;
> +    }
> +
> +    if (!configure_pipeline(encoder)) {
> +        encoder->errors++;
> +        return rc;
> +    }
> +
> +    GstBuffer *buffer =3D gst_buffer_new();
> +    GstMemory *mem =3D NULL;
> +    gsize size =3D GST_ROUND_UP_4(dmabuf_data->stride) * dmabuf_data->he=
ight;

Shouldn't the stride already be aligned correctly ??

> +    uint64_t start =3D spice_get_monotonic_time_ns();
> +
> +    mem =3D gst_dmabuf_allocator_alloc_with_flags(encoder->allocator,
> +                                                dmabuf_data->drm_dma_buf=
_fd,
> +                                                size,
> +                                                GST_FD_MEMORY_FLAG_DONT_=
CLOSE);
> +    if (!mem) {

should you not free the "buffer" ?

> +        return rc;
> +    }
> +    gst_buffer_append_memory(buffer, mem);
> +    gst_mini_object_weak_ref(GST_MINI_OBJECT(mem),
> +                             (GstMiniObjectNotify)spice_gst_mem_free_cb,
> +                             dmabuf_data);
> +    GstFlowReturn ret =3D gst_app_src_push_buffer(encoder->appsrc, buffe=
r);
> +    if (ret !=3D GST_FLOW_OK) {
> +        spice_warning("GStreamer error: unable to push source buffer (%d=
)", ret);
> +        return rc;
> +    }
> +
> +    rc =3D pull_compressed_buffer(encoder, outbuf);
> +    if (rc !=3D VIDEO_ENCODER_FRAME_ENCODE_DONE) {
> +        /* The input buffer will be stuck in the pipeline, preventing
> +         * later ones from being processed. Furthermore something went
> +         * wrong with this pipeline, so it may be safer to rebuild it
> +         * from scratch.
> +         */
> +        free_pipeline(encoder);
> +        encoder->errors++;
> +        return rc;
> +    }
> +
> +    uint32_t last_mm_time =3D get_last_frame_mm_time(encoder);
> +    add_frame(encoder, frame_mm_time, spice_get_monotonic_time_ns() - st=
art,
> +              (*outbuf)->size);
> +
> +    int32_t refill =3D encoder->bit_rate * (frame_mm_time - last_mm_time=
) / MSEC_PER_SEC / 8;
> +    encoder->vbuffer_free =3D MIN(encoder->vbuffer_free + refill,
> +                                encoder->vbuffer_size) - (*outbuf)->size=
;
> +
> +    server_increase_bit_rate(encoder, frame_mm_time);
> +    update_next_frame_mm_time(encoder);
> +
> +    return rc;
> +}
> +
>  static void spice_gst_encoder_client_stream_report(VideoEncoder *video_e=
ncoder,
>                                               uint32_t num_frames,
>                                               uint32_t num_drops,
> @@ -1758,6 +1871,7 @@ VideoEncoder *gstreamer_encoder_new(SpiceVideoCodec=
Type codec_type,
>      SpiceGstEncoder *encoder =3D g_new0(SpiceGstEncoder, 1);
>      encoder->base.destroy =3D spice_gst_encoder_destroy;
>      encoder->base.encode_frame =3D spice_gst_encoder_encode_frame;
> +    encoder->base.encode_dmabuf =3D spice_gst_encoder_encode_dmabuf;
>      encoder->base.client_stream_report =3D spice_gst_encoder_client_stre=
am_report;
>      encoder->base.notify_server_frame_drop =3D spice_gst_encoder_notify_=
server_frame_drop;
>      encoder->base.get_bit_rate =3D spice_gst_encoder_get_bit_rate;
> @@ -1772,6 +1886,7 @@ VideoEncoder *gstreamer_encoder_new(SpiceVideoCodec=
Type codec_type,
>      encoder->bitmap_ref =3D bitmap_ref;
>      encoder->bitmap_unref =3D bitmap_unref;
>      encoder->format =3D GSTREAMER_FORMAT_INVALID;
> +    encoder->allocator =3D gst_dmabuf_allocator_new();

This is not symmetric with spice_gst_encoder_destroy. Usually you want
the reverse order between allocation and freeing. Possibly not much of
an issue.

>      pthread_mutex_init(&encoder->outbuf_mutex, NULL);
>      pthread_cond_init(&encoder->outbuf_cond, NULL);
>

Frediano
