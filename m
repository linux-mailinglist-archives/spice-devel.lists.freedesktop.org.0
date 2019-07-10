Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC8B649E1
	for <lists+spice-devel@lfdr.de>; Wed, 10 Jul 2019 17:42:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E79586E105;
	Wed, 10 Jul 2019 15:42:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F6E26E105
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 15:42:03 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id x21so2561996otq.12
 for <spice-devel@lists.freedesktop.org>; Wed, 10 Jul 2019 08:42:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=p/WadlPmI599ne6s5CGb0IAT7tBjEwsZG2irwXHKFlI=;
 b=WN6QT+3+HAH7RZdJwBhpKEHfl01RmVdBMDViR9k7skgOdZ4F+KnG/BDh35RjwtcgAv
 JKHyDe7k/iEMMOvjn0uwa0up2adnd4a/E3SJzKA9JO8NH5cSNc8itfrggbZKFVFoH+3X
 zvBwQXi+d0+3oGgwxrdAA2eSq6W/ov7+iuzYaoPwTT1yo/8JOG3/qwBgVpvTwnhSic5T
 Yz7zFfMYpnBWUNZ13noHWBSg9Ljs5ixO6YqXQf54zV3ekNuMqLOwh1eg8kcvJjWFSief
 cD/oQ3o4trFVNHpLR8uu2cZZMqO0C/fj4FJMinfutpYIR75EVkE4CgyTc9TggAQxKKvi
 38rw==
X-Gm-Message-State: APjAAAUqPlwBAKcLtfOU0Rtby7gFWFs/zJKhdnnwa++uDNz/agLgYh42
 W0ghygMWQWAe6oUAYgVOlUIlZ/gp61D/ZrNwYydaONrH
X-Google-Smtp-Source: APXvYqxKSTPmNRfXSMP+3pGT+fDFsL6txIVA2Rqftv142JZmFkz4UE/TKiUBlCcacCRisNIi7eb4IgcNDKN5WSIu1Zo=
X-Received: by 2002:a9d:4103:: with SMTP id o3mr2751205ote.134.1562773322765; 
 Wed, 10 Jul 2019 08:42:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190704102922.17433-1-kpouget@redhat.com>
 <20190704102922.17433-2-kpouget@redhat.com>
In-Reply-To: <20190704102922.17433-2-kpouget@redhat.com>
From: Kevin Pouget <kpouget@redhat.com>
Date: Wed, 10 Jul 2019 17:41:51 +0200
Message-ID: <CADJ1XR0=T3K_EsyP-K6SB=6y21MCDtYE=Ais+=BjLohL5iTJ8Q@mail.gmail.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
Subject: Re: [Spice-devel] [PATCH spice-gtk 2/2] spicy: send ordered list of
 preferred video codecs
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
Content-Type: multipart/mixed; boundary="===============1949435846=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1949435846==
Content-Type: multipart/alternative; boundary="000000000000c4ae11058d55849b"

--000000000000c4ae11058d55849b
Content-Type: text/plain; charset="UTF-8"

ping

On Thu, Jul 4, 2019 at 12:29 PM Kevin Pouget <kpouget@redhat.com> wrote:

> Instead of sending only the preferred video codec (selected), spicy
> now sends an ordered list. When a video codec is selected in the radio
> box, this codec is moved to beginning of the list.
>
> Signed-off-by: Kevin Pouget <kpouget@redhat.com>
> ---
>  tools/spicy.c | 31 +++++++++++++++++++++++++++++--
>  1 file changed, 29 insertions(+), 2 deletions(-)
>
> diff --git a/tools/spicy.c b/tools/spicy.c
> index 8a6d077..403a66d 100644
> --- a/tools/spicy.c
> +++ b/tools/spicy.c
> @@ -1014,8 +1014,35 @@ static void video_codec_type_cb(GtkRadioAction
> *action G_GNUC_UNUSED,
>                                  GtkRadioAction *current,
>                                  gpointer user_data)
>  {
> -
> spice_display_channel_change_preferred_video_codec_type(SPICE_CHANNEL(user_data),
> -
> gtk_radio_action_get_current_value(current));
> +    static GArray *preferred_codecs = NULL;
> +    gint selected_codec = gtk_radio_action_get_current_value(current);
> +    guint i;
> +    GError *err = NULL;
> +
> +    if (!preferred_codecs) {
> +        preferred_codecs = g_array_sized_new(FALSE, FALSE,
> +                                             sizeof(gint),
> +
>  G_N_ELEMENTS(video_codec_type_entries));
> +        /* initialize with the menu ordering */
> +        for (i = 0; i < G_N_ELEMENTS(video_codec_type_entries); i++) {
> +            g_array_append_val(preferred_codecs,
> video_codec_type_entries[i].value);
> +        }
> +    }
> +
> +    /* remove codec from array and insert at the beginning */
> +    for (i = 0; i < preferred_codecs->len &&
> +                g_array_index(preferred_codecs, gint, i) !=
> selected_codec; i++);
> +
> +    g_assert(i < preferred_codecs->len);
> +    g_array_remove_index(preferred_codecs, i);
> +    g_array_prepend_val(preferred_codecs, selected_codec);
> +
> +    if
> (!spice_display_channel_change_preferred_video_codec_types(SPICE_CHANNEL(user_data),
> +                                                                  (gint
> *) preferred_codecs->data,
> +
> preferred_codecs->len, &err)) {
> +        g_warning("setting preferred video codecs failed: %s",
> err->message);
> +        g_error_free(err);
> +    }
>  }
>
>  static void
> --
> 2.21.0
>
>

--000000000000c4ae11058d55849b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">ping<br></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, Jul 4, 2019 at 12:29 PM Kevin Pouget &lt;<=
a href=3D"mailto:kpouget@redhat.com">kpouget@redhat.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">Instead of sending o=
nly the preferred video codec (selected), spicy<br>
now sends an ordered list. When a video codec is selected in the radio<br>
box, this codec is moved to beginning of the list.<br>
<br>
Signed-off-by: Kevin Pouget &lt;<a href=3D"mailto:kpouget@redhat.com" targe=
t=3D"_blank">kpouget@redhat.com</a>&gt;<br>
---<br>
=C2=A0tools/spicy.c | 31 +++++++++++++++++++++++++++++--<br>
=C2=A01 file changed, 29 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/tools/spicy.c b/tools/spicy.c<br>
index 8a6d077..403a66d 100644<br>
--- a/tools/spicy.c<br>
+++ b/tools/spicy.c<br>
@@ -1014,8 +1014,35 @@ static void video_codec_type_cb(GtkRadioAction *acti=
on G_GNUC_UNUSED,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GtkRadioAction *current,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gpointer user_data)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 spice_display_channel_change_preferred_video_codec_type(SPIC=
E_CHANNEL(user_data),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gtk_radio_ac=
tion_get_current_value(current));<br>
+=C2=A0 =C2=A0 static GArray *preferred_codecs =3D NULL;<br>
+=C2=A0 =C2=A0 gint selected_codec =3D gtk_radio_action_get_current_value(c=
urrent);<br>
+=C2=A0 =C2=A0 guint i;<br>
+=C2=A0 =C2=A0 GError *err =3D NULL;<br>
+<br>
+=C2=A0 =C2=A0 if (!preferred_codecs) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 preferred_codecs =3D g_array_sized_new(FALSE, =
FALSE,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0sizeof(gint),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0G_N_ELEMENTS(video_codec_type_entries));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* initialize with the menu ordering */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt; G_N_ELEMENTS(video_codec_=
type_entries); i++) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 g_array_append_val(preferred_cod=
ecs, video_codec_type_entries[i].value);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 /* remove codec from array and insert at the beginning */<br=
>
+=C2=A0 =C2=A0 for (i =3D 0; i &lt; preferred_codecs-&gt;len &amp;&amp;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 g_array_index(pref=
erred_codecs, gint, i) !=3D selected_codec; i++);<br>
+<br>
+=C2=A0 =C2=A0 g_assert(i &lt; preferred_codecs-&gt;len);<br>
+=C2=A0 =C2=A0 g_array_remove_index(preferred_codecs, i);<br>
+=C2=A0 =C2=A0 g_array_prepend_val(preferred_codecs, selected_codec);<br>
+<br>
+=C2=A0 =C2=A0 if (!spice_display_channel_change_preferred_video_codec_type=
s(SPICE_CHANNEL(user_data),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 (gint *) preferred_codecs-&gt;data,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 preferred_codecs-&gt;len, &amp;err)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_warning(&quot;setting preferred video codecs=
 failed: %s&quot;, err-&gt;message);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_error_free(err);<br>
+=C2=A0 =C2=A0 }<br>
=C2=A0}<br>
<br>
=C2=A0static void<br>
-- <br>
2.21.0<br>
<br>
</blockquote></div>

--000000000000c4ae11058d55849b--

--===============1949435846==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1949435846==--
