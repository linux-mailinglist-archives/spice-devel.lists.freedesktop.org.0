Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2DC6EB1F2
	for <lists+spice-devel@lfdr.de>; Fri, 21 Apr 2023 21:00:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D779610E129;
	Fri, 21 Apr 2023 19:00:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com
 [IPv6:2001:4860:4864:20::33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BD5D10E129
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Apr 2023 19:00:23 +0000 (UTC)
Received: by mail-oa1-x33.google.com with SMTP id
 586e51a60fabf-187df75c901so841009fac.1
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Apr 2023 12:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682103622; x=1684695622;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cQcl0pLMyG+hXE0wK4v1w8Ms9bN1UUL6DGrtJQgFbC4=;
 b=jcpQasQkGyBUZ4HeFxDrF7er3WZI6Jz+9P/JczxRh0/v/mkLE4QiOCvdJ+QfQBAUDO
 z73gZxnZ4zjc8fvojBb+4SsCEMz1qLuqpiTtceCe35r7kXQip9MeR0cYXsjlNcCk1qLD
 kpBR5KSOe3oT34qr9mGWlLKWoU86nTrF7jWFjl8y+n1sx30Ptt4UrrnZVvkddv6AyvB8
 WV7oTtUpQt6xQ/lm/sjU0UnT6qn55uEvx/7L+nKA4nTZfOi2gcVo3+agLupgGqehttej
 aBFWQId59VgKbyH45EJ327YhZ3QMJ99Jda3Fr35rFCx4KDS+wsBzCqqvcwVtxwVnS7va
 lBhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682103622; x=1684695622;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=cQcl0pLMyG+hXE0wK4v1w8Ms9bN1UUL6DGrtJQgFbC4=;
 b=MlSKlsaklYMfnFCJjoz0/dyxAnL9wywALKQnmg+TLWhBl/oRCfDixp4u+ZmPrsGxO4
 Qh0aKDhpM7T8EeAqsykcFrsZl9AgipfHe+wJSg/2EVj0hi8KQFYTWjnAI2qG26YHe/Xj
 Dma37G/n/czTvkFxTjXJjZNfj8wUj1V7kfbzSNFnIedLfYWdqn4KxQN0zmIaGolUjFM4
 4Q11ujWj/FxOn3AG4wvNPhXrnT27qfEC/uFYxrGoSEiqdkqSkv4lMEKMZp2O6JAA0UoJ
 9c+Vk4rMgqTjOOZKLPMYy5wi7dgCo/8Yyg5g74cG3tBuoGs8ySfjABw40q0W2EouYtEp
 aQhg==
X-Gm-Message-State: AAQBX9eC8Pngnqivsgd8LSrkclGPHAIn+r1d9NMSmFYBZjzjpsYXJldQ
 ZRkxgPD1xA6PLq+e9RViEz06BpMQkutahpURGAl5RCUM
X-Google-Smtp-Source: AKy350awp2ORLA1pCZU+1+4jpD3VLL9SJpRVIYUQGm6xdeQq+EQEzn9tkOhuyABBpp/5S/Y4ZTUJhpjQbWSjkJ+dVWg=
X-Received: by 2002:a05:6870:8185:b0:187:b646:a735 with SMTP id
 k5-20020a056870818500b00187b646a735mr4296716oae.13.1682103621926; Fri, 21 Apr
 2023 12:00:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
 <20230316054458.1546085-6-vivek.kasireddy@intel.com>
In-Reply-To: <20230316054458.1546085-6-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 21 Apr 2023 20:00:10 +0100
Message-ID: <CAHt6W4eS_k_ZRH5GpGVa5Z6bxbJd+KRtfwhdxKGM_MdG6xWkSQ@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [PATCH v1 5/5] video-stream: Don't stop a stream
 if a gl_draw operation is pending
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
> Before stopping a stream, we need to ensure that there is no ongoing
> gl_draw operation; otherwise, we may not get another opportunity to
> create a new stream if the current one gets stopped. And, once the
> stream is stopped, we need to clear the gl_draw_stream pointer
> associated with the relevant client (dcc).
>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  server/video-stream.cpp | 21 ++++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
>
> diff --git a/server/video-stream.cpp b/server/video-stream.cpp
> index 03a7d68d..b7f3d2c5 100644
> --- a/server/video-stream.cpp
> +++ b/server/video-stream.cpp
> @@ -18,6 +18,7 @@
>
>  #include "video-stream.h"
>  #include "display-channel-private.h"
> +#include "dcc-private.h"

This smells bad from design, it loose the "private" meaning.

>  #include "main-channel-client.h"
>  #include "red-client.h"
>
> @@ -115,6 +116,10 @@ void video_stream_stop(DisplayChannel *display, Vide=
oStream *stream)
>          }
>          dcc->pipe_add(video_stream_destroy_item_new(stream_agent));
>          video_stream_agent_stats_print(stream_agent);
> +
> +        if (stream =3D=3D dcc->priv->gl_draw_stream) {
> +            dcc->priv->gl_draw_stream =3D nullptr;

It looks like a "weak" pointer. Why is that? Maybe the bound between
stream and time expiration? Maybe for that specific stream time
expiration does not make much sense?

> +        }
>      }
>      display->priv->streams_size_total -=3D stream->width * stream->heigh=
t;
>      ring_remove(&stream->link);
> @@ -974,6 +979,19 @@ void video_stream_detach_and_stop(DisplayChannel *di=
splay)
>      }
>  }
>
> +static bool is_stream_gl_draw(VideoStream *stream, DisplayChannel *displ=
ay)
> +{
> +    DisplayChannelClient *dcc;
> +
> +    FOREACH_DCC(display, dcc) {
> +        if (stream =3D=3D dcc->priv->gl_draw_stream &&
> +            dcc->priv->gl_draw_ongoing) {
> +            return TRUE;

Minor: true

> +        }
> +    }
> +    return FALSE;

Minor: false

Maybe use a boolean flag in VideoStream instead ?

> +}
> +
>  void video_stream_timeout(DisplayChannel *display)
>  {
>      Ring *ring =3D &display->priv->streams;
> @@ -984,7 +1002,8 @@ void video_stream_timeout(DisplayChannel *display)
>      while (item) {
>          VideoStream *stream =3D SPICE_CONTAINEROF(item, VideoStream, lin=
k);
>          item =3D ring_next(ring, item);
> -        if (now >=3D (stream->last_time + RED_STREAM_TIMEOUT)) {
> +        if (now >=3D (stream->last_time + RED_STREAM_TIMEOUT) &&
> +            !is_stream_gl_draw(stream, display)) {
>              detach_video_stream_gracefully(display, stream, nullptr);
>              video_stream_stop(display, stream);
>          }

Frediano
