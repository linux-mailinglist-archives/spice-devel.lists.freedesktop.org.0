Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B99115519
	for <lists+spice-devel@lfdr.de>; Fri,  6 Dec 2019 17:24:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04C136FA55;
	Fri,  6 Dec 2019 16:24:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7464C6FA55
 for <spice-devel@lists.freedesktop.org>; Fri,  6 Dec 2019 16:19:26 +0000 (UTC)
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-89-RXCFTXIIN5eHM0afAdpBNA-1; Fri, 06 Dec 2019 11:19:21 -0500
Received: by mail-lf1-f72.google.com with SMTP id i29so1219229lfc.18
 for <spice-devel@lists.freedesktop.org>; Fri, 06 Dec 2019 08:19:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=01603m5glz2JDAoQjE+UsgKN4oYNsu4icGSJbUpQNaQ=;
 b=o5Lmi8IrMnepoosoM3Khs4crwyJXRlbDa0/kmaULE5iXUGm0v1ON25vBtzNB4qsWMs
 kxRojQTcZCoqoel3g4JcKb+URvL8dJV3yJ48EWPGyoLn4px/FyUsF8+BD9UBSHlsHjDr
 EVt5HAW7DiQhTQk59zhCJ4+SFc5n2QqwFm/IgEWyEA99tTqE4Mrg67MViJoodbbex6c+
 Pjz88PdvwhRCcJ8/lFGF/DmewvG1wTw19Zn091jkVQaBrtD6hmWdfPOJwYMOqR/QIB4H
 m5y4pvZYAlvLkttkFeMhzoSkAYd2XUi3JUZ5k+gA2AfHzW1sFrzpKsAFjumrS3Vq+q/K
 cFow==
X-Gm-Message-State: APjAAAVmM+xEpUKZJqbR3ngwDXFjdNtLxz/FuF2H9B/nye/cKKNDD/lW
 fiRcEUahb8fE+SUYbzvWY7yYttnfL+N8QgKvVlNs317wSV3GasceMxK8C/YEkFNiJffF/+UacUk
 pzmLcOMgakoOtAZKjmo/CjnKzGmDfNOMhMP8P7oZVms0jJz0=
X-Received: by 2002:a2e:2e0e:: with SMTP id u14mr9183551lju.106.1575649160181; 
 Fri, 06 Dec 2019 08:19:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqzxeqQGc7jpNPVOUIS4MYKj8evg3VSFjgvI1nIKsz7Up5pkeI3XLsB8J+PAQNvfuPrX1vWb8XXRWPenzxlGh6c=
X-Received: by 2002:a2e:2e0e:: with SMTP id u14mr9183545lju.106.1575649160039; 
 Fri, 06 Dec 2019 08:19:20 -0800 (PST)
MIME-Version: 1.0
References: <20191205174915.24546-1-anezhins@redhat.com>
 <20191205174915.24546-6-anezhins@redhat.com>
 <1842678994.14473772.1575627520464.JavaMail.zimbra@redhat.com>
In-Reply-To: <1842678994.14473772.1575627520464.JavaMail.zimbra@redhat.com>
From: Alexander Nezhinsky <anezhins@redhat.com>
Date: Fri, 6 Dec 2019 18:24:54 +0200
Message-ID: <CA+H+ueykhNaM+JfPv1biT5-LSwv4BRLde=oUwiT5RdPtUcfaiA@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-MC-Unique: RXCFTXIIN5eHM0afAdpBNA-1
X-Mimecast-Spam-Score: 0
X-Mailman-Approved-At: Fri, 06 Dec 2019 16:24:43 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575649165;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=N9fUOPyuVbKJfpaPXpw/gK44g/RIbYzFxigA/cstwBA=;
 b=PcnkU9giPAWa8fdY3bRma/Jnk/te8ydG2EvFJkHvL3+BEbpCiSYGboN/HELhSq82EfrjUF
 IC8m0rdn5uY5R6WF5LQ5qiVQmlG9VpSJIhV+8bG58j7oAj4BQutN1p676EEYuQcCf7cEcB
 dQ9VmbtNJabTQXB2yrkaTCHLxpFYq6g=
Subject: Re: [Spice-devel] [PATCH 5/9] Add empty CD entry to
 usb-device-widget, create shared CD when toggled
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
Cc: Yan Vugenfirer <yan@daynix.com>, spice-devel@lists.freedesktop.org,
 alexander@daynix.com
Content-Type: multipart/mixed; boundary="===============1745187726=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1745187726==
Content-Type: multipart/alternative; boundary="00000000000079aa4605990b68fc"

--00000000000079aa4605990b68fc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 6, 2019 at 12:18 PM Frediano Ziglio <fziglio@redhat.com> wrote:

> >
> > +
> > +    if (gtk_toggle_button_get_active(toggle))
> > +        gtk_toggle_button_set_active(toggle, FALSE);
>
> style: always use brackets, here and below
>
> OK

> > +    else
> > +        return;
>
> I would handle the return in the if to reduce indentation
>
OK


> > +
> > +    dialog =3D gtk_file_chooser_dialog_new(_("Select ISO file or devic=
e"),
> > +
> > GTK_WINDOW(gtk_widget_get_toplevel(GTK_WIDGET(self))),
> > +                                         GTK_FILE_CHOOSER_ACTION_OPEN,
> > +                                         _("_Cancel"),
> GTK_RESPONSE_CANCEL,
> > +                                         _("_Open"),
> GTK_RESPONSE_ACCEPT,
> > +                                         NULL);
> > +
> > +    dialog_rc =3D gtk_dialog_run(GTK_DIALOG(dialog));
> > +    if (dialog_rc =3D=3D GTK_RESPONSE_ACCEPT) {
> > +        gchar *filename =3D
> > gtk_file_chooser_get_filename(GTK_FILE_CHOOSER(dialog));
> > +        GError *err =3D NULL;
> > +        gboolean rc;
> > +
> > +        rc =3D
> spice_usb_device_manager_create_shared_cd_device(priv->manager,
> > filename, &err);
> > +        if (!rc && err) {
> > +            gchar *err_msg =3D g_strdup_printf("shared CD %s, %s",
> > +
>  g_path_get_basename(filename),
> > err->message);
>
> I would add _( to string for i18n
>
OK

>
> > +
> > +            SPICE_DEBUG("Failed to create %s", err_msg);
> > +            spice_usb_device_widget_add_err_msg(self, err_msg);
> > +            spice_usb_device_widget_update_status(user_data);
> > +        }
> > +        g_clear_error(&err);
>
 Similar to the previous patch

> +    }
>
> +    empty_cd =3D gtk_check_button_new_with_label("SPICE CD (empty)");
>
> i18n also here

OK

>  static void spice_usb_device_widget_constructed(GObject *gobject)
> >  {
> > . . .
> > +    priv->empty_cd =3D NULL;
>

> This is not necessary, we don't support environment where NULL !=3D 0 and=
 all
> structure is initialized to 0 as default.
> And standard C decided now that NULL =3D=3D 0 so no issue for the future.
>
OK

--00000000000079aa4605990b68fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 6, 2019 at 12:18 PM Fredi=
ano Ziglio &lt;<a href=3D"mailto:fziglio@redhat.com">fziglio@redhat.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt;=
 <br>&gt; +<br>
&gt; +=C2=A0 =C2=A0 if (gtk_toggle_button_get_active(toggle))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 gtk_toggle_button_set_active(toggle, FALS=
E);<br>
<br>
style: always use brackets, here and below<br>
<br></blockquote><div>OK=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
&gt; +=C2=A0 =C2=A0 else<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
<br>
I would handle the return in the if to reduce indentation<br></blockquote><=
div>OK=C2=A0</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
&gt; +<br>
&gt; +=C2=A0 =C2=A0 dialog =3D gtk_file_chooser_dialog_new(_(&quot;Select I=
SO file or device&quot;),<br>
&gt; +<br>
&gt; GTK_WINDOW(gtk_widget_get_toplevel(GTK_WIDGET(self))),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0GTK_FILE_CHOOSER_ACTION_OPEN,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0_(&quot;_Cancel&quot;), GTK_RESPONSE_CANCEL,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0_(&quot;_Open&quot;), GTK_RESPONSE_ACCEPT,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0NULL);<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 dialog_rc =3D gtk_dialog_run(GTK_DIALOG(dialog));<br>
&gt; +=C2=A0 =C2=A0 if (dialog_rc =3D=3D GTK_RESPONSE_ACCEPT) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 gchar *filename =3D<br>
&gt; gtk_file_chooser_get_filename(GTK_FILE_CHOOSER(dialog));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 GError *err =3D NULL;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 gboolean rc;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D spice_usb_device_manager_create_sh=
ared_cd_device(priv-&gt;manager,<br>
&gt; filename, &amp;err);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!rc &amp;&amp; err) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gchar *err_msg =3D g_strdup=
_printf(&quot;shared CD %s, %s&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0g_path_get_basename(filename),<br>
&gt; err-&gt;message);<br>
<br>
I would add _( to string for i18n<br></blockquote><div>OK=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 SPICE_DEBUG(&quot;Failed to=
 create %s&quot;, err_msg);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 spice_usb_device_widget_add=
_err_msg(self, err_msg);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 spice_usb_device_widget_upd=
ate_status(user_data);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_clear_error(&amp;err);<br>
</blockquote><div>=C2=A0Similar to the previous patch</div><div><br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">&gt; +=C2=A0 =C2=A0 }<br><=
/blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt; +=C2=A0 =
=C2=A0 empty_cd =3D gtk_check_button_new_with_label(&quot;SPICE CD (empty)&=
quot;);<br>
<br>
i18n also here</blockquote><div>OK</div><div><br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">
&gt;=C2=A0 static void spice_usb_device_widget_constructed(GObject *gobject=
)<br>
&gt;=C2=A0 {<br>&gt; . . .=C2=A0<br>
&gt; +=C2=A0 =C2=A0 priv-&gt;empty_cd =3D NULL;<br></blockquote><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">
<br>
This is not necessary, we don&#39;t support environment where NULL !=3D 0 a=
nd all<br>
structure is initialized to 0 as default.<br>
And standard C decided now that NULL =3D=3D 0 so no issue for the future.<b=
r></blockquote><div>OK=C2=A0</div><div>=C2=A0</div></div></div>

--00000000000079aa4605990b68fc--


--===============1745187726==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1745187726==--

