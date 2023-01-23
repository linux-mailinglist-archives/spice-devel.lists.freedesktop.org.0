Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7DD677BB5
	for <lists+spice-devel@lfdr.de>; Mon, 23 Jan 2023 13:53:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C773710E48D;
	Mon, 23 Jan 2023 12:53:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com
 [IPv6:2607:f8b0:4864:20::231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A5D510E48D
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Jan 2023 12:52:58 +0000 (UTC)
Received: by mail-oi1-x231.google.com with SMTP id n8so10299466oih.0
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Jan 2023 04:52:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pcM8CfgPh8I4omGH/YbeVk76IG/ZTtWQwFAVzt98gVY=;
 b=jL+t45BpSyycfcRsfdqdgAs58K7KRk9ClUBvQE6chfnlI5Jtt8vngaxZpepHhPLtJa
 5+4fwmtDuRodKyQ2+7zssj/munZHQOXyhlkILi9vsoOE+NkL031D+izk8NBxR7AZUjyP
 mQGGmUu1MQcBJDsJwuOaqpyiVTakWBH9mz4rAoCZD+Zkv0dbtZwMj6YT+z0iul6aUN8/
 fd5ornrYm7bjhhd7Av+EimwCJMA+2rhZLK9tgaGDeqkRrRnMz1hvww6B95GBCCuZ8Ytn
 gj3URQ92Kc/yoYFzYmKZot9X38NVYH2ajLNbISYwUKBBxdkpzseZSJAow/0hY+paCdX9
 alEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=pcM8CfgPh8I4omGH/YbeVk76IG/ZTtWQwFAVzt98gVY=;
 b=QLT1AEL6iDuhiAmrbvUhJ94mdAzSl9sBwk2QyRjP2OScrelyYgWaV/K4cpocT4euEW
 bZHEt3aYMTVkXo45nMbge9iOouIRg2MWiixKbvwqzE/Tv+C4IeiCTmR5F/gnuIAjDCvn
 ZkbzBiAIEV/16SozUMn1iuQpTl+W2ewxTfxxD2clDHEN62VJErjLdKGGHeAUwrmOiKJZ
 JU19QxGT10gWjffX5ad3ydu632d8R8RywKnivm0a+beJnm9hppzOTZggf4FUOTFY6C+t
 oPyJI97MT5asfvuIrwDW/c1bt/i6AmNJ+Ibf854xHOVnx6NYgzqaQoX8zPizHgqpagj/
 3IFQ==
X-Gm-Message-State: AFqh2kqT6keAgVzmhDw5+tD6ywgvW13BXEWj+myF2zGiEY3zoJTmt03G
 5KZae9g3CfvM4HFFh9wLuio4XAnF38tMMazvwHA=
X-Google-Smtp-Source: AMrXdXvSxyuSqaT57ahezFJ0hGVfbvZnxfElFLgUIkWpUps6+iEuQrGm182z/bjUwsfi8ru4hRyKkAYGEhUlmNBttm4=
X-Received: by 2002:a05:6808:3b1:b0:364:ebf2:735c with SMTP id
 n17-20020a05680803b100b00364ebf2735cmr1622764oie.179.1674478376584; Mon, 23
 Jan 2023 04:52:56 -0800 (PST)
MIME-Version: 1.0
References: <20230123084123.1038341-1-vivek.kasireddy@intel.com>
 <20230123084123.1038341-6-vivek.kasireddy@intel.com>
In-Reply-To: <20230123084123.1038341-6-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 23 Jan 2023 12:52:45 +0000
Message-ID: <CAHt6W4cp_pmt7FknKLQOierqZYT9uNjQWw91O6tvMnYFvs9vxw@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [RFC v2 5/5] red-qxl: Add a new parameter to
 gl_scanout and gl_draw_async
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

Il giorno lun 23 gen 2023 alle ore 09:01 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> This new parameter (named local_display) can be used by applications
> to indicate whether they are dealing with a local or remote client.
> This can be useful to ensure that gl_draw or other associated
> messages are only sent to local clients.
>

It's spice server that knows if the client are local or remote,
there's no need to have a configuration in Qemu.

> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  server/red-qxl.cpp | 14 ++++++++++----
>  server/spice-qxl.h |  4 ++--
>  2 files changed, 12 insertions(+), 6 deletions(-)
>
> diff --git a/server/red-qxl.cpp b/server/red-qxl.cpp
> index 48c293ae..14380a60 100644
> --- a/server/red-qxl.cpp
> +++ b/server/red-qxl.cpp
> @@ -426,7 +426,8 @@ void spice_qxl_gl_scanout(QXLInstance *qxl,
>                            int fd,
>                            uint32_t width, uint32_t height,
>                            uint32_t stride, uint32_t format,
> -                          int y_0_top)
> +                          int y_0_top,
> +                          uint32_t local_display)
>  {
>      RedWorkerMessageGlScanout payload =3D { /* empty */ };
>      spice_return_if_fail(qxl !=3D nullptr);
> @@ -452,7 +453,9 @@ void spice_qxl_gl_scanout(QXLInstance *qxl,
>      pthread_mutex_unlock(&qxl_state->scanout_mutex);
>
>      /* FIXME: find a way to coallesce all pending SCANOUTs */
> -    qxl_state->send_message(payload);
> +    if (local_display) {
> +        qxl_state->send_message(payload);
> +    }
>      reds_update_client_mouse_allowed(qxl_state->reds);
>  }
>
> @@ -460,7 +463,8 @@ SPICE_GNUC_VISIBLE
>  void spice_qxl_gl_draw_async(QXLInstance *qxl,
>                               uint32_t x, uint32_t y,
>                               uint32_t w, uint32_t h,
> -                             uint64_t cookie)
> +                             uint64_t cookie,
> +                             uint32_t local_display)
>  {
>      QXLState *qxl_state;
>      RedWorkerMessageGlDraw draw =3D {
> @@ -482,7 +486,9 @@ void spice_qxl_gl_draw_async(QXLInstance *qxl,
>      spice_return_if_fail(qxl_state->gl_draw_cookie =3D=3D GL_DRAW_COOKIE=
_INVALID);
>
>      qxl_state->gl_draw_cookie =3D cookie;
> -    qxl_state->send_message(draw);
> +    if (local_display) {
> +        qxl_state->send_message(draw);
> +    }
>  }
>
>  void red_qxl_gl_draw_async_complete(QXLInstance *qxl)
> diff --git a/server/spice-qxl.h b/server/spice-qxl.h
> index bf17476b..2749f1c9 100644
> --- a/server/spice-qxl.h
> +++ b/server/spice-qxl.h
> @@ -87,11 +87,11 @@ void spice_qxl_gl_scanout(QXLInstance *qxl,
>                            int fd,
>                            uint32_t width, uint32_t height,
>                            uint32_t stride, uint32_t format,
> -                          int y_0_top);
> +                          int y_0_top, uint32_t local_display);
>  void spice_qxl_gl_draw_async(QXLInstance *qxl,
>                               uint32_t x, uint32_t y,
>                               uint32_t w, uint32_t h,
> -                             uint64_t cookie);
> +                             uint64_t cookie, uint32_t local_display);
>

You cannot add a parameter, this will break both API and ABI.

>  /* since spice 0.14.2 */
>

Frediano
