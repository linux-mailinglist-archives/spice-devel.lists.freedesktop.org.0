Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB3A7E1374
	for <lists+spice-devel@lfdr.de>; Sun,  5 Nov 2023 14:02:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B6A110E109;
	Sun,  5 Nov 2023 13:02:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E127910E109
 for <spice-devel@lists.freedesktop.org>; Sun,  5 Nov 2023 13:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1699189324;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=duKOIuhFuH/i9ekfQMZm8H98pFg27hi303Ax3/gdzTg=;
 b=fduWKpWWqj5Hyfqp1Bm0LF+etVlVZUNKZOENXcH50GdRO67Hgl837zq6yQM8bN79ohRZxn
 abbZsxpsxc0+W7sZGD01lRiqdF+NIZiUk57k2uW7Dh2zrJ300IvXGoFMrgJOcBYK61s79Z
 dSttcTvCL0SKkoAxRURoQyuRBA/L9Oo=
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com
 [209.85.161.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-224-Bk4w1Ca3NeyhuLBzxo9FuA-1; Sun, 05 Nov 2023 08:02:01 -0500
X-MC-Unique: Bk4w1Ca3NeyhuLBzxo9FuA-1
Received: by mail-oo1-f69.google.com with SMTP id
 006d021491bc7-584287629e2so4419000eaf.0
 for <spice-devel@lists.freedesktop.org>; Sun, 05 Nov 2023 05:02:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699189321; x=1699794121;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=duKOIuhFuH/i9ekfQMZm8H98pFg27hi303Ax3/gdzTg=;
 b=PgVXPbHjALfuFNT9B1/JWz0+U5U26O1LcxeZYUuDEoxrWfPA3LtDVOtH1k9Xcqcp2z
 /gkiOnfnQgZTi3ePz53FK7MhoVpSdaJAbsESIVR+ME4YGFbZMbn3e2SSUxYGL/JH46QX
 8WB93qpmZ6vw/TG0wFy+1aCYR4LfH5D2t8NnaprnTSLUL6+zetGBWwxNfADqFP8CXYbY
 wQ3yMmapIeLGsW25rvyWbSV56FF3Z5Pr9VBYu8CQ4W4j7ZfxHt14GdEm6DvWETDQgTES
 d8AmuXG6FGy+iQnbFEig2xbG8Of9pNHlq8iEdW1L5aZXBwoerWYXtWPpJ+Mr/n8c0D+q
 A1AQ==
X-Gm-Message-State: AOJu0Yw6aCr0IEfS1/saGnTyyvQmu3nQ+jhU5xClzpJDNStTyk/YXkXJ
 ZGGdf+DiDpXtRaq2VCGPJH85H4Z5MS7aaevXPAByWaEZwmCS7c+4ZQmzDDnDYN7ZOI0oL6+tbcs
 lfkojbxjdDADGZ1cyyrDGwPvzHX0KznubxxCnxFvxbLfwZNptk8wdl1sCqw==
X-Received: by 2002:a4a:b206:0:b0:582:28e:93a8 with SMTP id
 d6-20020a4ab206000000b00582028e93a8mr25994939ooo.3.1699189320645; 
 Sun, 05 Nov 2023 05:02:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEsSuOuyk1TLWnU0+B9yHsScwLkMYY21HBFATxrzeEYuMwICQoO4Qm7QM3iSuVwloP0BtUXm138oVpvUQE/Sl0=
X-Received: by 2002:a4a:b206:0:b0:582:28e:93a8 with SMTP id
 d6-20020a4ab206000000b00582028e93a8mr25994915ooo.3.1699189320285; Sun, 05 Nov
 2023 05:02:00 -0800 (PST)
MIME-Version: 1.0
References: <20231103085933.1873-1-freddy77@gmail.com>
In-Reply-To: <20231103085933.1873-1-freddy77@gmail.com>
From: Uri Lublin <ulublin@redhat.com>
Date: Sun, 5 Nov 2023 15:01:49 +0200
Message-ID: <CAAg9qJ1Meb3zvecvw0XiJcj1WpG1z-PR+cM7cy2XjVoSaBCRbw@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000d79d17060967571d"
Subject: Re: [Spice-devel] [PATCH spice-common] build: Avoid Meson warning
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000d79d17060967571d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Frediano,

On Fri, Nov 3, 2023 at 10:59=E2=80=AFAM Frediano Ziglio <freddy77@gmail.com=
> wrote:

> Avoids:
>
> WARNING: You should add the boolean check kwarg to the run_command call.
>          It currently defaults to false,
>          but it will default to true in future releases of meson.
>          See also: https://github.com/mesonbuild/meson/issues/9300
>
> Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
>

Acked-by: Uri Lublin <uril@redhat.com>

From a quick scan of the git repositories, there is a 'check' missing in
usbredir too.

Thanks,
    Uri.



> ---
>  meson.build | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meson.build b/meson.build
> index 1018769..33f8f8a 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -132,7 +132,7 @@ if spice_common_generate_client_code or
> spice_common_generate_server_code
>    if get_option('python-checks')
>      foreach module : ['six', 'pyparsing']
>        message('Checking for python module @0@'.format(module))
> -      cmd =3D run_command(python, '-c', 'import @0@'.format(module))
> +      cmd =3D run_command(python, '-c', 'import @0@'.format(module), che=
ck
> : false)
>        if cmd.returncode() !=3D 0
>          error('Python module @0@ not found'.format(module))
>        endif
> --
> 2.41.0
>
>

--000000000000d79d17060967571d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div class=3D"gmail_attr">Hi Fr=
ediano,</div><div class=3D"gmail_attr"><br></div><div dir=3D"ltr" class=3D"=
gmail_attr">On Fri, Nov 3, 2023 at 10:59=E2=80=AFAM Frediano Ziglio &lt;<a =
href=3D"mailto:freddy77@gmail.com">freddy77@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">Avoids:<br>
<br>
WARNING: You should add the boolean check kwarg to the run_command call.<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0It currently defaults to false,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0but it will default to true in future rel=
eases of meson.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0See also: <a href=3D"https://github.com/m=
esonbuild/meson/issues/9300" rel=3D"noreferrer" target=3D"_blank">https://g=
ithub.com/mesonbuild/meson/issues/9300</a><br>
<br>
Signed-off-by: Frediano Ziglio &lt;<a href=3D"mailto:freddy77@gmail.com" ta=
rget=3D"_blank">freddy77@gmail.com</a>&gt;<br></blockquote><div><br></div><=
div>Acked-by: Uri Lublin &lt;<a href=3D"mailto:uril@redhat.com">uril@redhat=
.com</a>&gt;</div><div><br></div><div>From a quick scan of the git reposito=
ries, there is a &#39;check&#39; missing in usbredir too.</div><div><br></d=
iv><div>Thanks,</div><div>=C2=A0=C2=A0=C2=A0 Uri.</div><div><br></div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
---<br>
=C2=A0meson.build | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/meson.build b/meson.build<br>
index 1018769..33f8f8a 100644<br>
--- a/meson.build<br>
+++ b/meson.build<br>
@@ -132,7 +132,7 @@ if spice_common_generate_client_code or spice_common_ge=
nerate_server_code<br>
=C2=A0 =C2=A0if get_option(&#39;python-checks&#39;)<br>
=C2=A0 =C2=A0 =C2=A0foreach module : [&#39;six&#39;, &#39;pyparsing&#39;]<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0message(&#39;Checking for python module @0@&#39;=
.format(module))<br>
-=C2=A0 =C2=A0 =C2=A0 cmd =3D run_command(python, &#39;-c&#39;, &#39;import=
 @0@&#39;.format(module))<br>
+=C2=A0 =C2=A0 =C2=A0 cmd =3D run_command(python, &#39;-c&#39;, &#39;import=
 @0@&#39;.format(module), check : false)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0if cmd.returncode() !=3D 0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0error(&#39;Python module @0@ not found&#3=
9;.format(module))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0endif<br>
-- <br>
2.41.0<br>
<br>
</blockquote></div></div>

--000000000000d79d17060967571d--

