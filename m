Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09068CB6F3B
	for <lists+spice-devel@lfdr.de>; Thu, 11 Dec 2025 19:49:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68F1C10E12C;
	Thu, 11 Dec 2025 18:49:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="QcUEhAGp";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D22510E12C
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Dec 2025 18:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1765478950;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kWPlWzqAjbVAYmpqBQj5wsElt0agg6PhPV2spLnsy/0=;
 b=QcUEhAGp4ne536GxFDaiXFYfP0I6ZHujENhMHxbPEQxQrrEtg7w/60sth+k0OrEPm4LXAs
 u9v4y6N6SajAIZpnGOpLTPI+o2rzzDmGCBEpRHWItosPmlFI3pK7TJ2wuW8AR/PZctmyzy
 p0ByFRxtAPVNX6DYA52hgW6oC+K6B1A=
Received: from mail-yx1-f70.google.com (mail-yx1-f70.google.com
 [74.125.224.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-228-f4FHu5lCMwKsJVI0OqIzSg-1; Thu, 11 Dec 2025 13:49:08 -0500
X-MC-Unique: f4FHu5lCMwKsJVI0OqIzSg-1
X-Mimecast-MFC-AGG-ID: f4FHu5lCMwKsJVI0OqIzSg_1765478948
Received: by mail-yx1-f70.google.com with SMTP id
 956f58d0204a3-6421389b8b7so637255d50.2
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Dec 2025 10:49:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765478948; x=1766083748;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kWPlWzqAjbVAYmpqBQj5wsElt0agg6PhPV2spLnsy/0=;
 b=Wnoby/dHxH3GdLc8a4KAPz0u2n6jkHDJ+vKkOd3cbcy9l5SINMv+Tcvt9dQWSuF059
 ZhWg2/bq3IKYsp4Romzhh4w50IdaFDuQgnOjPCtdxhFR/XsVYeZ+JaYN2yEq98rsXBTM
 T7Z9tfpfqFIyUmi4TijH8yZ+Xh4zM5DSu/jZT3AVtnHh0Xi5c7H2pJsEfZO4zLrO4j8O
 mGTPAnkxvDJ1cO8k1T72UPPu6AL2UYpV6zABUGx///czvyvbZtumjYSRmSVbCQIDfrEK
 EHt3hPXCBsAsiHvn020i8d8iIKnzXldyeUy+le2RmHJiAsqBhvre8zhRUnP+e3LmWMZw
 9P1A==
X-Forwarded-Encrypted: i=1;
 AJvYcCW7BTreX59g0eN8HEAkCnPZGONzFAC54jM20mK5gc72hY1l8NHxNGCLEVdPKopCLahIS6xXR9+s+XaKWQ==@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yza7jxpDV8z1ttE8y43D8kTrGTaNBxjU1Z8pdrJhNzrBaUVJ2eC
 fI5/h9+Clv7twkXaG+I271k1583Ckb0ETZByVe8UW1Y7cKAE94cu3JMH8dyCLsGwTAggIuHzpP5
 uvagDl1JVJWl7FKa7JgI1KbaeIp2iCgCeUa8TpRfzG1Dn1imEil9sTSDRIYwcbvgaI01xU1l2Q1
 tEdt8KHb+/GeXXNKGZhUAuFyQXbPQfsNq/WJZi4dntq6yUT44=
X-Gm-Gg: AY/fxX4HkYeq+I3/6IAxhqH3t4wmDn30UOPNp/qNH955bkTpsCXwI/gTiX9ieRpJOxX
 2DIb5Kg9gqXsRSF42BAUKDEidvpLi8cMR0BqMawGL17MhCP4MnM/R5YMjfXYezdKOPqxYkf+kPV
 HekLlmUJuhathhfgo0MGXEb9B2QE3La5cgf1fua12KIC1wAaaqikk8hgb9Vl3Q+m4=
X-Received: by 2002:a05:690e:155a:20b0:63f:bab4:fdcd with SMTP id
 956f58d0204a3-6446eb3b89cmr4807865d50.48.1765478947915; 
 Thu, 11 Dec 2025 10:49:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpIJhU8C3b9OrpVX0vSnk+2qPjfU5oKIaasmNB9Cjm4rXhdjrxW/4ALPRN4TYuPk8Fqr/fSp5F0K5wOptVZEg=
X-Received: by 2002:a05:690e:155a:20b0:63f:bab4:fdcd with SMTP id
 956f58d0204a3-6446eb3b89cmr4807841d50.48.1765478947509; Thu, 11 Dec 2025
 10:49:07 -0800 (PST)
MIME-Version: 1.0
References: <cover.1765109578.git.nvinson234@gmail.com>
 <CAHt6W4dfEwtJWV0cPL4MA4ZrbQ-Quxy7cPPPG+oSJLcrVm87aQ@mail.gmail.com>
 <b0d290d2-2db8-4d68-a700-724d1d6ac431@gmail.com>
In-Reply-To: <b0d290d2-2db8-4d68-a700-724d1d6ac431@gmail.com>
From: Uri Lublin <uril@redhat.com>
Date: Thu, 11 Dec 2025 20:48:56 +0200
X-Gm-Features: AQt7F2qSxy33ZAw6nVBFTmCa2JqnnfzPpqUTmdyUfMFGUXQkqJoyOsOTC971xJM
Message-ID: <CAAg9qJ29KxThRT8ej9P8U9iou7Lt6UJDO3gk+rXjq5d=-DbUFA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Adjust dsignated initializer to be C++20 compliant
To: Nicholas Vinson <nvinson234@gmail.com>
Cc: Frediano Ziglio <freddy77@gmail.com>, Victor Toso <victortoso@redhat.com>, 
 spice-devel@lists.freedesktop.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 9a7XvI5etUBbIJ8Gm0veyfJA4uI3JVLD6RZTXkICi9Q_1765478948
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000086e26d0645b19904"
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

--00000000000086e26d0645b19904
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 11, 2025 at 2:38=E2=80=AFPM Nicholas Vinson <nvinson234@gmail.c=
om>
wrote:

> On 12/11/25 06:55, Frediano Ziglio wrote:
> > On Sun, 7 Dec 2025 at 12:20, Nicholas Vinson <nvinson234@gmail.com>
> wrote:
> >>
> >> When building with g++-16, the build fails with the following error:
> >>
> >>      server/tests/test-display-base.cpp:809:5: error: either all
> initializer
> >>      clauses should be designated or none of them should be
> >>
> >> This is because g++-16 defaults to c++20 and when using designated
> >> initializers with c++20, you don't wrap anonymous union fields with
> braces.
> >>
> >> Nicholas Vinson (2):
> >>    m4/spice-compile-warnings.m4: disable -Wmissing-braces
> >>    test-display-base.cpp: adjust designated init.
> >>
> >>   m4/spice-compile-warnings.m4       | 1 +
> >>   server/tests/test-display-base.cpp | 2 +-
> >>   2 files changed, 2 insertions(+), 1 deletion(-)
> >>
> >
> > The CI is not that happy. I added some commit to make it pass:
> > - missing AUTHORS for "make syntax-check"
> >
> https://gitlab.freedesktop.org/fziglio/spice/-/commit/fb018b3fbb26f38b2ff=
b0ee569d4aafc287fc738
> > - too old Fedora (not related to these changes)
> >
> https://gitlab.freedesktop.org/fziglio/spice/-/commit/a4525e204ef8b7e3beb=
3709823029e27de633d7a
> > - compatibility with pretty old GCC
> >
> https://gitlab.freedesktop.org/fziglio/spice/-/commit/6a2c24fd5c088cb3b01=
6a40965882e98f010b583


Frediano, where did you take the 10 from ?
Shouldn't it check if the gcc version is 16 (or even 20) ?


>
>
> I'm concerned about the old GCC compatibility commit. I think it would
> be more robust if designated initializer feature checks were added to
> configure.ac and meson.build instead.
>
> That way you don't have to worry about how old or new the compiler is or
> if it implements the necessary GCC extensions, or implements them
> correctly.
>

Do you mean compiling a simple program with designated initializers in
meson/configure ?

Regards,
    Uri.



>
> Regards,
> Nicholas Vinson
>
> >
> > Do they sound good?
> > I suppose the compatibility one could be merged.
> >
> > Regards,
> >    Frediano
>
>

--00000000000086e26d0645b19904
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 11,=
 2025 at 2:38=E2=80=AFPM Nicholas Vinson &lt;<a href=3D"mailto:nvinson234@g=
mail.com">nvinson234@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">On 12/11/25 06:55, Frediano Ziglio wrote:<br>
&gt; On Sun, 7 Dec 2025 at 12:20, Nicholas Vinson &lt;<a href=3D"mailto:nvi=
nson234@gmail.com" target=3D"_blank">nvinson234@gmail.com</a>&gt; wrote:<br=
>
&gt;&gt;<br>
&gt;&gt; When building with g++-16, the build fails with the following erro=
r:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 server/tests/test-display-base.cpp:809:5: erro=
r: either all initializer<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 clauses should be designated or none of them s=
hould be<br>
&gt;&gt;<br>
&gt;&gt; This is because g++-16 defaults to c++20 and when using designated=
<br>
&gt;&gt; initializers with c++20, you don&#39;t wrap anonymous union fields=
 with braces.<br>
&gt;&gt;<br>
&gt;&gt; Nicholas Vinson (2):<br>
&gt;&gt;=C2=A0 =C2=A0 m4/spice-compile-warnings.m4: disable -Wmissing-brace=
s<br>
&gt;&gt;=C2=A0 =C2=A0 test-display-base.cpp: adjust designated init.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0m4/spice-compile-warnings.m4=C2=A0 =C2=A0 =C2=A0 =C2=
=A0| 1 +<br>
&gt;&gt;=C2=A0 =C2=A0server/tests/test-display-base.cpp | 2 +-<br>
&gt;&gt;=C2=A0 =C2=A02 files changed, 2 insertions(+), 1 deletion(-)<br>
&gt;&gt;<br>
&gt; <br>
&gt; The CI is not that happy. I added some commit to make it pass:<br>
&gt; - missing AUTHORS for &quot;make syntax-check&quot;<br>
&gt; <a href=3D"https://gitlab.freedesktop.org/fziglio/spice/-/commit/fb018=
b3fbb26f38b2ffb0ee569d4aafc287fc738" rel=3D"noreferrer" target=3D"_blank">h=
ttps://gitlab.freedesktop.org/fziglio/spice/-/commit/fb018b3fbb26f38b2ffb0e=
e569d4aafc287fc738</a><br>
&gt; - too old Fedora (not related to these changes)<br>
&gt; <a href=3D"https://gitlab.freedesktop.org/fziglio/spice/-/commit/a4525=
e204ef8b7e3beb3709823029e27de633d7a" rel=3D"noreferrer" target=3D"_blank">h=
ttps://gitlab.freedesktop.org/fziglio/spice/-/commit/a4525e204ef8b7e3beb370=
9823029e27de633d7a</a><br>
&gt; - compatibility with pretty old GCC<br>
&gt; <a href=3D"https://gitlab.freedesktop.org/fziglio/spice/-/commit/6a2c2=
4fd5c088cb3b016a40965882e98f010b583" rel=3D"noreferrer" target=3D"_blank">h=
ttps://gitlab.freedesktop.org/fziglio/spice/-/commit/6a2c24fd5c088cb3b016a4=
0965882e98f010b583</a></blockquote><div><br></div><div>Frediano, where did =
you take the 10 from ?</div><div>Shouldn&#39;t it check=C2=A0if the gcc ver=
sion is 16 (or even 20) ?</div><div>=C2=A0</div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><br>
<br>
I&#39;m concerned about the old GCC compatibility commit. I think it would =
<br>
be more robust if designated initializer feature checks were added to <br>
<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank">config=
ure.ac</a> and meson.build instead.<br>
<br>
That way you don&#39;t have to worry about how old or new the compiler is o=
r <br>
if it implements the necessary GCC extensions, or implements them correctly=
.<br></blockquote><div><br></div><div>Do you mean compiling a simple progra=
m with designated initializers in meson/configure ?</div><div><br></div><di=
v>Regards,</div><div>=C2=A0 =C2=A0 Uri.</div><div><br></div><div>=C2=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Regards,<br>
Nicholas Vinson<br>
<br>
&gt; <br>
&gt; Do they sound good?<br>
&gt; I suppose the compatibility one could be merged.<br>
&gt; <br>
&gt; Regards,<br>
&gt;=C2=A0 =C2=A0 Frediano<br>
<br>
</blockquote></div></div>

--00000000000086e26d0645b19904--

