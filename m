Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D020649E2
	for <lists+spice-devel@lfdr.de>; Wed, 10 Jul 2019 17:42:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA6856E106;
	Wed, 10 Jul 2019 15:42:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22F7B6E106
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 15:42:17 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id a127so1989503oii.2
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 08:42:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=Y5cFgLNBqXVWG81HGfd79dUDv95bxXbvkfUj+vyDhuE=;
 b=QaJhSjaoZ66nUw4AULvqWYdEolP+XZ+NhKItlmIuRxnZW3Xn77FNEvigcMjA2/2/vd
 ZHpT/H/kdfph5MRU6/znCVbjrR4d7PuDfYR4FxO5pQ8kRvTBcUyx6ybC5npPIEhqEsOY
 uqmxZ04PvfDCrgfIXUEWRMRZ3G/8stm6uK3ywDiENQ4mw/u/w33xdFLLnY/at0lQnLDu
 0Gk1xG1haB546nlG503uUYvsCFGr6YmlLIeTgCh6jgQNAM3ogpWSxRGFloRcLoY6+dYl
 HRYxtJf/A6WFljP3PvPoS8sFRPfRqc0zFo80UGYjqHyW381oJdGuqEC3sKtt4vRpKHcM
 FEhQ==
X-Gm-Message-State: APjAAAXPlorQEO4U3dEsYBXZimGWV6w1pUWjUhQxUbBYHP1xjCXmUy1h
 +iWj7c+a9VeZYmyDHx/718rYiJEo6IJhHiH9viaeJWMe
X-Google-Smtp-Source: APXvYqztWwkocMoXgKN3WlhbaxLhguFZULeEOHadEYlp7ptOqBziPZdb6XetkfYrvcZPpUlpg/pt6NO+QxDHE1U+MSc=
X-Received: by 2002:aca:c715:: with SMTP id x21mr4030838oif.142.1562773336346; 
 Wed, 10 Jul 2019 08:42:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190704080841.21403-1-kpouget@redhat.com>
In-Reply-To: <20190704080841.21403-1-kpouget@redhat.com>
From: Kevin Pouget <kpouget@redhat.com>
Date: Wed, 10 Jul 2019 17:42:04 +0200
Message-ID: <CADJ1XR3qS7eaJ--pshn2uEa-adMpoQx5AbkNiV7EHr=vxLcauQ@mail.gmail.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
Subject: Re: [Spice-devel] [PATCH spice-server] streaming: Restart streams
 on video-codec changes
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1622607793=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1622607793==
Content-Type: multipart/alternative; boundary="00000000000093e8ff058d55858a"

--00000000000093e8ff058d55858a
Content-Type: text/plain; charset="UTF-8"

ping

On Thu, Jul 4, 2019 at 10:08 AM Kevin Pouget <kpouget@redhat.com> wrote:

> Interrupt the video streams when the user changes the preferred
> video-codecs (dcc_handle_preferred_video_codec_type) or when the host
> admin updates the list of video-codecs allowed
> (display_channel_set_video_codecs).
>
> The video streaming will be automatically restarted by spice
> video-detection rules.
> ---
>  server/dcc.c             | 2 ++
>  server/display-channel.c | 2 ++
>  2 files changed, 4 insertions(+)
>
> diff --git a/server/dcc.c b/server/dcc.c
> index 71d09b77..86893ffe 100644
> --- a/server/dcc.c
> +++ b/server/dcc.c
> @@ -1198,6 +1198,8 @@ static int
> dcc_handle_preferred_video_codec_type(DisplayChannelClient *dcc,
>
>      /* New client preference */
>      dcc_update_preferred_video_codecs(dcc);
> +    video_stream_detach_and_stop(DCC_TO_DC(dcc));
> +
>      return TRUE;
>  }
>
> diff --git a/server/display-channel.c b/server/display-channel.c
> index 4677c261..75266598 100644
> --- a/server/display-channel.c
> +++ b/server/display-channel.c
> @@ -255,6 +255,8 @@ void display_channel_set_video_codecs(DisplayChannel
> *display, GArray *video_cod
>      g_clear_pointer(&display->priv->video_codecs, g_array_unref);
>      display->priv->video_codecs = g_array_ref(video_codecs);
>      g_object_notify(G_OBJECT(display), "video-codecs");
> +
> +    video_stream_detach_and_stop(display);
>  }
>
>  GArray *display_channel_get_video_codecs(DisplayChannel *display)
> --
> 2.21.0
>
>

--00000000000093e8ff058d55858a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">ping<br></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, Jul 4, 2019 at 10:08 AM Kevin Pouget &lt;<=
a href=3D"mailto:kpouget@redhat.com">kpouget@redhat.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">Interrupt the video =
streams when the user changes the preferred<br>
video-codecs (dcc_handle_preferred_video_codec_type) or when the host<br>
admin updates the list of video-codecs allowed<br>
(display_channel_set_video_codecs).<br>
<br>
The video streaming will be automatically restarted by spice<br>
video-detection rules.<br>
---<br>
=C2=A0server/dcc.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br=
>
=C2=A0server/display-channel.c | 2 ++<br>
=C2=A02 files changed, 4 insertions(+)<br>
<br>
diff --git a/server/dcc.c b/server/dcc.c<br>
index 71d09b77..86893ffe 100644<br>
--- a/server/dcc.c<br>
+++ b/server/dcc.c<br>
@@ -1198,6 +1198,8 @@ static int dcc_handle_preferred_video_codec_type(Disp=
layChannelClient *dcc,<br>
<br>
=C2=A0 =C2=A0 =C2=A0/* New client preference */<br>
=C2=A0 =C2=A0 =C2=A0dcc_update_preferred_video_codecs(dcc);<br>
+=C2=A0 =C2=A0 video_stream_detach_and_stop(DCC_TO_DC(dcc));<br>
+<br>
=C2=A0 =C2=A0 =C2=A0return TRUE;<br>
=C2=A0}<br>
<br>
diff --git a/server/display-channel.c b/server/display-channel.c<br>
index 4677c261..75266598 100644<br>
--- a/server/display-channel.c<br>
+++ b/server/display-channel.c<br>
@@ -255,6 +255,8 @@ void display_channel_set_video_codecs(DisplayChannel *d=
isplay, GArray *video_cod<br>
=C2=A0 =C2=A0 =C2=A0g_clear_pointer(&amp;display-&gt;priv-&gt;video_codecs,=
 g_array_unref);<br>
=C2=A0 =C2=A0 =C2=A0display-&gt;priv-&gt;video_codecs =3D g_array_ref(video=
_codecs);<br>
=C2=A0 =C2=A0 =C2=A0g_object_notify(G_OBJECT(display), &quot;video-codecs&q=
uot;);<br>
+<br>
+=C2=A0 =C2=A0 video_stream_detach_and_stop(display);<br>
=C2=A0}<br>
<br>
=C2=A0GArray *display_channel_get_video_codecs(DisplayChannel *display)<br>
-- <br>
2.21.0<br>
<br>
</blockquote></div>

--00000000000093e8ff058d55858a--

--===============1622607793==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1622607793==--
