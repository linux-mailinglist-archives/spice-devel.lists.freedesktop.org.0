Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E3586D1C7
	for <lists+spice-devel@lfdr.de>; Thu, 29 Feb 2024 19:14:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBBCC10E590;
	Thu, 29 Feb 2024 18:14:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KshnmgNA";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com
 [209.85.219.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B809210E4E0
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Feb 2024 18:14:53 +0000 (UTC)
Received: by mail-yb1-f169.google.com with SMTP id
 3f1490d57ef6-dc23bf7e5aaso1443031276.0
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Feb 2024 10:14:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709230492; x=1709835292; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YXBPC93UJ/JmtMfpNLTPfhgj2Tl06J2pmsiW1nJK/rY=;
 b=KshnmgNAuJtHHoImT6YLKyEgqCiejxnc8DqqTWusnfwUE+ryJOo7Fr9HjtCdeyd1Rw
 blLWx2FLFc6hYMWIy3JiG9P1G2PpQlZ/aDCk794Gx2lSPDG7q1sXZitzTY0cToX1iKnq
 uH8GGLMHDOxO1ZQAlGoc/1ORFYdN3EHXcASaTZCkdaTS5IOuGhCeP77Jg8NRG0JnHb9K
 bv/ThJ/beuBPKfHXnpaaPErX2MXPtBIJcwWMe4rht9UtNH+QUZizQABzgMV0vg38IpDc
 Hw3RvKvqJ1jpLwdYCQnRpXsDB2VCcGRkH6fszfaElL/VR6sWs09Yu+KjKDTERkRKJf6R
 Qwzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709230492; x=1709835292;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YXBPC93UJ/JmtMfpNLTPfhgj2Tl06J2pmsiW1nJK/rY=;
 b=F//68/A8CBesEPGYh1P48uVVWZg2u4Gpg2AnQCVLfRZjBwjxOShlM0lpwXQ+KphkS4
 9LHnNAlSzcwkgKRvtTaEV6WGRlcCYpsbHjvkFt/HWWWEAecoeY0MlJGszuC2PAVyLOJF
 x3W8WpVvqpkrfwPc4em6jWDSIDBp4LH3gVtniP7gHgBr4LadTrmsk8UeMLNBmk2RAQHP
 bD0h+3bFG3UBL7lkIdGReUrqJ1uEAk8Ogsg2BdEYD9d5E+s83/aWWfpm/l1PVj26sA6f
 j3uUri5V9VU3879qJ6sQSxjdGbxk1DDpR4nOpt+tBj7Yta2yc3HINhpW/NZkmmjBJEFp
 RHGw==
X-Gm-Message-State: AOJu0Yzb8EytvscALJ9L1F4Cx1dRXV3TJKYlJPZR+55WgaxM9doBfeUm
 nVQMxxw/UZ5mDD/8F/ZVyhPwXfpJslcJrh+GxvUC2y6UX1uFZztRCUSTfrUVWWp8ZWdWI9WMDy/
 JO3Pc2isYgOxaiEU7tbDTZpvsfIo=
X-Google-Smtp-Source: AGHT+IH7A6c0mqh/Eo5dEkXmzJn3RcFRrZzzzTiPtvbPr6y8S9A8pemsOQE8iDYag/gBmXAkrqSA6AjTBok3K3lLqcQ=
X-Received: by 2002:a5b:c47:0:b0:dcf:313d:d4ab with SMTP id
 d7-20020a5b0c47000000b00dcf313dd4abmr3401100ybr.54.1709230492434; Thu, 29 Feb
 2024 10:14:52 -0800 (PST)
MIME-Version: 1.0
References: <20240228081730.1374127-1-vivek.kasireddy@intel.com>
 <20240228081730.1374127-2-vivek.kasireddy@intel.com>
In-Reply-To: <20240228081730.1374127-2-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 29 Feb 2024 18:14:42 +0000
Message-ID: <CAHt6W4fN5AzgYaZiyoHMPdR1OnhfEaA6YWuY2k7=Uhxzm4TC8A@mail.gmail.com>
Subject: Re: [PATCH v4 1/5] dcc: Check to see if the client supports multiple
 codecs (v2)
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Cc: spice-devel@lists.freedesktop.org, Gerd Hoffmann <kraxel@redhat.com>, 
 =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@redhat.com>, 
 Dongwon Kim <dongwon.kim@intel.com>
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

Il giorno mer 28 feb 2024 alle ore 08:41 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> We need to determine if the client is new enough to support multiple
> codecs -- which might include any of the Gstreamer based ones.
>
> v2: (suggestions and fixups from Frediano)
> - Add is_gl_client() method to DisplayChannelClient instead of a
>   dcc_is_gl_client() function.
> - Avoid the usage of XXX_CAST macro.
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>

Acked

> ---
>  server/dcc.cpp | 22 ++++++++++++----------
>  server/dcc.h   |  6 ++++++
>  2 files changed, 18 insertions(+), 10 deletions(-)
>
> diff --git a/server/dcc.cpp b/server/dcc.cpp
> index 01c16ab7..ca73470a 100644
> --- a/server/dcc.cpp
> +++ b/server/dcc.cpp
> @@ -494,29 +494,31 @@ RedSurfaceDestroyItem::RedSurfaceDestroyItem(uint32=
_t surface_id)
>
>  RedPipeItemPtr dcc_gl_scanout_item_new(RedChannelClient *rcc, void *data=
, int num)
>  {
> -    /* FIXME: on !unix peer, start streaming with a video codec */
> -    if (!red_stream_is_plain_unix(rcc->get_stream()) ||
> -        !rcc->test_remote_cap(SPICE_DISPLAY_CAP_GL_SCANOUT)) {
> +    auto dcc =3D static_cast<DisplayChannelClient *>(rcc);
> +
> +    if (dcc->is_gl_client()) {
> +        return red::make_shared<RedGlScanoutUnixItem>();
> +    } else if (rcc->test_remote_cap(SPICE_DISPLAY_CAP_MULTI_CODEC)) {
> +        return RedPipeItemPtr();
> +    } else {
>          red_channel_warning(rcc->get_channel(),
> -                            "FIXME: client does not support GL scanout")=
;
> +                            "Client does not support GL scanout or multi=
ple codecs");
>          rcc->disconnect();
>          return RedPipeItemPtr();
>      }
> -
> -    return red::make_shared<RedGlScanoutUnixItem>();
>  }
>
>  XXX_CAST(RedChannelClient, DisplayChannelClient, DISPLAY_CHANNEL_CLIENT)=
;
>
>  RedPipeItemPtr dcc_gl_draw_item_new(RedChannelClient *rcc, void *data, i=
nt num)
>  {
> -    DisplayChannelClient *dcc =3D DISPLAY_CHANNEL_CLIENT(rcc);
> +    auto dcc =3D static_cast<DisplayChannelClient *>(rcc);
>      auto draw =3D static_cast<const SpiceMsgDisplayGlDraw *>(data);
>
> -    if (!red_stream_is_plain_unix(rcc->get_stream()) ||
> -        !rcc->test_remote_cap(SPICE_DISPLAY_CAP_GL_SCANOUT)) {
> +    if (!dcc->is_gl_client() &&
> +        !rcc->test_remote_cap(SPICE_DISPLAY_CAP_MULTI_CODEC)) {
>          red_channel_warning(rcc->get_channel(),
> -                            "FIXME: client does not support GL scanout")=
;
> +                            "Client does not support GL scanout or multi=
ple codecs");
>          rcc->disconnect();
>          return RedPipeItemPtr();
>      }
> diff --git a/server/dcc.h b/server/dcc.h
> index a8dd3bef..47f082fe 100644
> --- a/server/dcc.h
> +++ b/server/dcc.h
> @@ -47,6 +47,12 @@ public:
>                           spice_wan_compression_t zlib_glz_state);
>      virtual void disconnect() override;
>
> +    bool is_gl_client()
> +    {
> +        return red_stream_is_plain_unix(get_stream()) &&
> +           test_remote_cap(SPICE_DISPLAY_CAP_GL_SCANOUT);
> +    }
> +
>  protected:
>      virtual bool handle_message(uint16_t type, uint32_t size, void *msg)=
 override;
>      virtual bool config_socket() override;
