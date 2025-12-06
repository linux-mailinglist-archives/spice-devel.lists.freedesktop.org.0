Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE59CAAF4A
	for <lists+spice-devel@lfdr.de>; Sun, 07 Dec 2025 00:38:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CFEB10E30F;
	Sat,  6 Dec 2025 23:38:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="XnkR9evy";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8387D10E30F
 for <spice-devel@lists.freedesktop.org>; Sat,  6 Dec 2025 23:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1765064303;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ojx2wYSlJ828bdsur4UrZx7A3/xvQBDTMcxsgRMrTFE=;
 b=XnkR9evyvw4L4m4aEmprCcBiyzAkUVdqmJ8xb2MAyYgE9bRRGjizJimoBJIeqwqdGzyWAi
 UoyW/FXuMz6ZCyK4I01XMabv0l0rVkdXGFEWCD7yd8Ao1Tu8cWjRZKoOYkbL/xILVvVWdY
 WgrqT1Co5jlr0MzkHQItbJe6TObO9fw=
Received: from mail-yx1-f70.google.com (mail-yx1-f70.google.com
 [74.125.224.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-625-9Mn7GJAhPVq28GtXL33oCw-1; Sat, 06 Dec 2025 18:38:21 -0500
X-MC-Unique: 9Mn7GJAhPVq28GtXL33oCw-1
X-Mimecast-MFC-AGG-ID: 9Mn7GJAhPVq28GtXL33oCw_1765064301
Received: by mail-yx1-f70.google.com with SMTP id
 956f58d0204a3-63f9c4e3701so4396334d50.1
 for <spice-devel@lists.freedesktop.org>; Sat, 06 Dec 2025 15:38:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765064301; x=1765669101;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Ojx2wYSlJ828bdsur4UrZx7A3/xvQBDTMcxsgRMrTFE=;
 b=mNv54F5yS+Q1xsGs1DGugm6mNXkCte96+J5mks8dW68y8G9IC9h9tdCoGNipD6tnfv
 UTnpLmMDYH6luEA3P4U4Z1/e4pdFRsygFTsq8YSZQZYAgBZFpqnbdPiNBW0+qXFMoTSA
 W+Dq0LQXg+2mYav570/K7+sEJZXZOFcyoh6QwEobUro3H/AyL52HmRqCgCbeG7WNN/yv
 /8UNt+K18W/AwOQ0hCX60IwFRu83gAvjzeuSySP/Or2Db20D6RZ0mGvjXq3ykC0qpXBx
 8Uz9m2QnyARWmKXkbCb0PkLJVU0DRHK2nBWpLr21/PDhY8Onm4cAKcLj/QiSsqahDMDC
 0UQw==
X-Gm-Message-State: AOJu0YxOfShuFPO1RHS2W2UsdwSoNTbSyWziEhsWuKHcb1a77FgeI5pL
 J40BKT7lNJ6oJnBhM1otB6QpiK4623pAI8yAY/AJeampRjhnmGa3NEyhYKYrc4TZhtBW5t/1rFc
 xCSAYQl9r6qZiFbQ+gdJyzLQZimh7gzCbeLxoKABuNHGyO+HrrBYFaB3MbYHqhj4M/1QsEizz24
 PQAwOqb53lWI1qG49ve/W9fyyS5Dyfj2hLun1G3j8Ms+HFU94=
X-Gm-Gg: ASbGncsiI1yWGuI4heFg7Z5BV8y6GjuSOQj7uMY6JKCGN9r09PMGpOoW3GDat4u1RGx
 +cws9EUpSjQIMteITTatPEQoSwRsWFpcMJdtzEics8f0JEAN2xcCvce1nFb6SsdBidoz4lwMAKb
 4w/M4k19gjQIaHhW4WkjxQMsWWVimKSF3m1VmhqzWyD5vepBIZLdO646JWZl5WTGs66ngZfkf+i
 slyAfhS5BCytnnfRswQSQJe6A0w
X-Received: by 2002:a05:690c:7204:b0:78c:25d2:4b54 with SMTP id
 00721157ae682-78c33b70245mr33997857b3.31.1765064301183; 
 Sat, 06 Dec 2025 15:38:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHg2EgGfFY763TvBcYapnPuK5qWpTl4HjtBg5N5J+oNw2CnwaIO/azOYhsHO9n2Lr8iHsHeKOA0B1DZD+SXspQ=
X-Received: by 2002:a05:690c:7204:b0:78c:25d2:4b54 with SMTP id
 00721157ae682-78c33b70245mr33997777b3.31.1765064300785; Sat, 06 Dec 2025
 15:38:20 -0800 (PST)
MIME-Version: 1.0
References: <cover.1764987923.git.nvinson234@gmail.com>
 <91f68d92ea9b417efd8cdff957711fc635d70b38.1764987923.git.nvinson234@gmail.com>
In-Reply-To: <91f68d92ea9b417efd8cdff957711fc635d70b38.1764987923.git.nvinson234@gmail.com>
From: Uri Lublin <uril@redhat.com>
Date: Sun, 7 Dec 2025 01:38:10 +0200
X-Gm-Features: AQt7F2r1ykNN3vOUOTK0ehUfT2ZhOsXJpsSN-1hTvWrLCV4_wf90Vzixb5zBLk8
Message-ID: <CAAg9qJ2jvxsQtMtVQMXPVJgLgiZDStfrHkapNMmY94v77mz07g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] m4/spice-compile-warnings.m4: disable
 -Wmissing-braces
To: Nicholas Vinson <nvinson234@gmail.com>
Cc: spice-devel@lists.freedesktop.org, freddy77@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: uvkqw5is2gI7Y_M7WCk1KVnfvM2lWvbD9nwXkkwZ0YM_1765064301
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000a816270645510eba"
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

--000000000000a816270645510eba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 6, 2025 at 10:54=E2=80=AFAM Nicholas Vinson <nvinson234@gmail.c=
om>
wrote:

> Disable the -Wmissing-braces warning as it suggests adding braces to
> designated initializes in a manner that violates C++20 rules.
>
> Signed-off-by: Nicholas Vinson <nvinson234@gmail.com>
> ---
>  m4/spice-compile-warnings.m4 | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/m4/spice-compile-warnings.m4 b/m4/spice-compile-warnings.m4
> index abe4a912..d2e1acc8 100644
> --- a/m4/spice-compile-warnings.m4
> +++ b/m4/spice-compile-warnings.m4
> @@ -84,6 +84,7 @@ AC_DEFUN([SPICE_COMPILE_WARNINGS],[
>      dontwarn=3D"$dontwarn -Wstrict-prototypes"
>      dontwarn=3D"$dontwarn -Wsuggest-final-methods"
>      dontwarn=3D"$dontwarn -Wsuggest-final-types"
> +    dontwarn=3D"$dontwarn -Wmissing-braces"
>

Probably better to (also?) remove "-Wmissing-braces" from the
list iterated by  gl_manywarn_item.

I suggest applying the m4 patch first (and g++ fix second) such
that the build works after the first patch is applied.

Thanks,
    Uri


>      # Get all possible GCC warnings
>      gl_MANYWARN_ALL_GCC([maybewarn])
> --
> 2.52.0
>
>

--000000000000a816270645510eba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sat, Dec 6, 2025 at 10:54=E2=80=AFAM Nicho=
las Vinson &lt;<a href=3D"mailto:nvinson234@gmail.com">nvinson234@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
Disable the -Wmissing-braces warning as it suggests adding braces to<br>
designated initializes in a manner that violates C++20 rules.<br>
<br>
Signed-off-by: Nicholas Vinson &lt;<a href=3D"mailto:nvinson234@gmail.com" =
target=3D"_blank">nvinson234@gmail.com</a>&gt;<br>
---<br>
=C2=A0m4/spice-compile-warnings.m4 | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/m4/spice-compile-warnings.m4 b/m4/spice-compile-warnings.m4<br=
>
index abe4a912..d2e1acc8 100644<br>
--- a/m4/spice-compile-warnings.m4<br>
+++ b/m4/spice-compile-warnings.m4<br>
@@ -84,6 +84,7 @@ AC_DEFUN([SPICE_COMPILE_WARNINGS],[<br>
=C2=A0 =C2=A0 =C2=A0dontwarn=3D&quot;$dontwarn -Wstrict-prototypes&quot;<br=
>
=C2=A0 =C2=A0 =C2=A0dontwarn=3D&quot;$dontwarn -Wsuggest-final-methods&quot=
;<br>
=C2=A0 =C2=A0 =C2=A0dontwarn=3D&quot;$dontwarn -Wsuggest-final-types&quot;<=
br>
+=C2=A0 =C2=A0 dontwarn=3D&quot;$dontwarn -Wmissing-braces&quot;<br></block=
quote><div><br></div><div>Probably better to (also?) remove &quot;-Wmissing=
-braces&quot; from the</div><div>list iterated by=C2=A0=C2=A0gl_manywarn_it=
em.</div><div><br></div><div>I suggest applying the m4 patch first (and g++=
 fix second) such</div><div>that the build works after the first patch is a=
pplied.</div><div><br></div><div>Thanks,</div><div>=C2=A0 =C2=A0 Uri</div><=
div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
=C2=A0 =C2=A0 =C2=A0# Get all possible GCC warnings<br>
=C2=A0 =C2=A0 =C2=A0gl_MANYWARN_ALL_GCC([maybewarn])<br>
-- <br>
2.52.0<br>
<br>
</blockquote></div></div>

--000000000000a816270645510eba--

