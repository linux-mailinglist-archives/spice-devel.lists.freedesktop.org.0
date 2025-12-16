Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49623CC1F0A
	for <lists+spice-devel@lfdr.de>; Tue, 16 Dec 2025 11:19:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 216F210E74C;
	Tue, 16 Dec 2025 10:19:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="TBiiEuj0";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99E6D10E74C
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Dec 2025 10:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1765880388;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YFvEKmi7+GPakvwVvZ0WTuohNhTC7DfsvMTdDymzL10=;
 b=TBiiEuj01JAINee942Ij4mDj2/xPsEESrp+ufXJluvKkM8UIE/jxX49V9u3VOzlp1r5ltJ
 Ti/rHm9mD2gquucI9u9EWOU212xutc89PrToXOmZ8Xogdh20QMi6sya+fUUYjAxcjR1Vne
 384PBT96MjzUpHW+OpO6e2f96JfEIW0=
Received: from mail-yx1-f70.google.com (mail-yx1-f70.google.com
 [74.125.224.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-191-4tT4wIEeMg69PBIK-NTImg-1; Tue, 16 Dec 2025 05:19:47 -0500
X-MC-Unique: 4tT4wIEeMg69PBIK-NTImg-1
X-Mimecast-MFC-AGG-ID: 4tT4wIEeMg69PBIK-NTImg_1765880386
Received: by mail-yx1-f70.google.com with SMTP id
 956f58d0204a3-64471fcf4efso6270150d50.2
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Dec 2025 02:19:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765880386; x=1766485186;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YFvEKmi7+GPakvwVvZ0WTuohNhTC7DfsvMTdDymzL10=;
 b=Ts02s7g/MIpQF/AQwhMmN9UW5sUHFi5CY1NGGzfSlFprfFt3ueEWZ07SnS7XwrkQT2
 UEfOQRxbSShkjFUsQZlwU/G2jZwizm8WSi249pkWZyANmLlcJ4r7/D/SjMNgopqITTAG
 XBF1q+go6CLYFY3hC7emfa01pAbNOGkNZ4ikgpyXJRIVVajEuRSnh4EIGmGof9ZwSePf
 gKKKTcIGyV4/k+XHz6uBPE6TRDrX1guRbl2PQQ1ugGilIZTomkY7IuBQFB08YvyCUt4/
 KQ2GoOrHs3nHSbtBwV6gdY2tajWcnU0eawo5bo4/AwbIpuNSwNFzMj3JHjQYSVsgg92s
 qh0g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWlNphSzmgbjT5NZWVFwDn4yT+6EsO9yjgR+sK3rRbgjK4Kxe9a4kIqKBYc6u07KammWCYKiblgWsQrfw==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzApC6bm+KMZXLTd+Jix1INGEMX3V6/Lwx4cQjkLtd5O5jiMXTG
 ShtlOghMwMVs8WayqeKkaQTideZZJt9bhYAtmddtfHbHqqHw6Cn8crAPSYeR5ptFBVQxQ31UB6g
 a5Bf+n/tt0KKdsW84wre5Wh3djKyL/qg2CEXZMvVbFwQiObGhivpZwkrGlE7plgigCuX3vnOZx7
 yWq99P9hdacR9WteEwSONhDasKzn2aK3LAZ0MR0KzAWitZ5og=
X-Gm-Gg: AY/fxX4ywa/h8JBKTfPWXqum/1gI5MhbtK1Q70s61D5Pw+4uiWZ7dlgPy9Cctz/XQ6k
 WBUrrJoHiSnpnqfuu6qVWvF4/aChBEsapX50wjTp8RRVbHjbJVuRvSohmHXF4P1h4f0/+45EF0n
 84KhzK35Kt6Iy+Ph9FSYpjZtFY/uX3etk31352Mo/c3cqKLU/5WdyyOjFNm8xpq0NB8vsjb42Lr
 +8EQSTD0zxqaUXfy59ZdcxluAQcopjeiaZWOoqfVrOaHbBlxtc=
X-Received: by 2002:a05:690e:bc9:b0:644:444f:3bd1 with SMTP id
 956f58d0204a3-64555661dc8mr10817619d50.68.1765880386291; 
 Tue, 16 Dec 2025 02:19:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH3HJWMCwAEGaVnABEg9HZpnXpBRXPpcOQpN2ZzyLJPElfAPQOfgIcrKpVg3XYKcAmcuzrVWSRVEqVDfgZmLt0=
X-Received: by 2002:a05:690e:bc9:b0:644:444f:3bd1 with SMTP id
 956f58d0204a3-64555661dc8mr10817604d50.68.1765880385869; Tue, 16 Dec 2025
 02:19:45 -0800 (PST)
MIME-Version: 1.0
References: <cover.1765109578.git.nvinson234@gmail.com>
 <CAHt6W4dfEwtJWV0cPL4MA4ZrbQ-Quxy7cPPPG+oSJLcrVm87aQ@mail.gmail.com>
 <b0d290d2-2db8-4d68-a700-724d1d6ac431@gmail.com>
 <CAAg9qJ29KxThRT8ej9P8U9iou7Lt6UJDO3gk+rXjq5d=-DbUFA@mail.gmail.com>
 <a37f58f3-4586-47b3-bba3-a7a1f7198c45@gmail.com>
In-Reply-To: <a37f58f3-4586-47b3-bba3-a7a1f7198c45@gmail.com>
From: Uri Lublin <uril@redhat.com>
Date: Tue, 16 Dec 2025 12:19:34 +0200
X-Gm-Features: AQt7F2qRtdMu1mMEutmUUooFbZ8pdb9JK_OvLHwvzx7wh2qExCNjjSmKx4fJMQs
Message-ID: <CAAg9qJ2ps=Cq+y4ihCsBHPBEpk33NVguJR2+s+K5H-D=8XmaQg@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Adjust dsignated initializer to be C++20 compliant
To: Nicholas Vinson <nvinson234@gmail.com>
Cc: Frediano Ziglio <freddy77@gmail.com>, Victor Toso <victortoso@redhat.com>, 
 spice-devel@lists.freedesktop.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ZIbhA5JkXOotQ0tKYCov_-LI9sG9pOghSXZizVEEfks_1765880386
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000001e280506460f11fa"
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

--0000000000001e280506460f11fa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 12, 2025 at 7:56=E2=80=AFAM Nicholas Vinson <nvinson234@gmail.c=
om>
wrote:

>
>
> On 12/11/25 13:48, Uri Lublin wrote:
> >
> >
> > On Thu, Dec 11, 2025 at 2:38=E2=80=AFPM Nicholas Vinson <nvinson234@gma=
il.com
> > <mailto:nvinson234@gmail.com>> wrote:
> >
> >     On 12/11/25 06:55, Frediano Ziglio wrote:
> >      > On Sun, 7 Dec 2025 at 12:20, Nicholas Vinson
> >     <nvinson234@gmail.com <mailto:nvinson234@gmail.com>> wrote:
> >      >>
> >      >> When building with g++-16, the build fails with the following
> error:
> >      >>
> >      >>      server/tests/test-display-base.cpp:809:5: error: either al=
l
> >     initializer
> >      >>      clauses should be designated or none of them should be
> >      >>
> >      >> This is because g++-16 defaults to c++20 and when using
> designated
> >      >> initializers with c++20, you don't wrap anonymous union fields
> >     with braces.
> >      >>
> >      >> Nicholas Vinson (2):
> >      >>    m4/spice-compile-warnings.m4: disable -Wmissing-braces
> >      >>    test-display-base.cpp: adjust designated init.
> >      >>
> >      >>   m4/spice-compile-warnings.m4       | 1 +
> >      >>   server/tests/test-display-base.cpp | 2 +-
> >      >>   2 files changed, 2 insertions(+), 1 deletion(-)
> >      >>
> >      >
> >      > The CI is not that happy. I added some commit to make it pass:
> >      > - missing AUTHORS for "make syntax-check"
> >      > https://gitlab.freedesktop.org/fziglio/spice/-/commit/
> >     fb018b3fbb26f38b2ffb0ee569d4aafc287fc738 <https://
> >     gitlab.freedesktop.org/fziglio/spice/-/commit/
> >     fb018b3fbb26f38b2ffb0ee569d4aafc287fc738>
> >      > - too old Fedora (not related to these changes)
> >      > https://gitlab.freedesktop.org/fziglio/spice/-/commit/
> >     a4525e204ef8b7e3beb3709823029e27de633d7a <https://
> >     gitlab.freedesktop.org/fziglio/spice/-/commit/
> >     a4525e204ef8b7e3beb3709823029e27de633d7a>
> >      > - compatibility with pretty old GCC
> >      > https://gitlab.freedesktop.org/fziglio/spice/-/
> >     commit/6a2c24fd5c088cb3b016a40965882e98f010b583 <https://
> >     gitlab.freedesktop.org/fziglio/spice/-/
> >     commit/6a2c24fd5c088cb3b016a40965882e98f010b583>
> >
> >
> > Frediano, where did you take the 10 from ?
> > Shouldn't it check if the gcc version is 16 (or even 20) ?
> >
> >
> >
> >     I'm concerned about the old GCC compatibility commit. I think it
> would
> >     be more robust if designated initializer feature checks were added =
to
> >     configure.ac <http://configure.ac> and meson.build instead.
> >
> >     That way you don't have to worry about how old or new the compiler
> >     is or
> >     if it implements the necessary GCC extensions, or implements them
> >     correctly.
> >
> >
> > Do you mean compiling a simple program with designated initializers in
> > meson/configure ?
>
> That's exactly what I mean.
>

It is a bit safer, but I think we can trust gcc in this case, like
Frediano's patch does.

Thanks,
    Uri.


>
> Regards,
> Nicholas Vinson
>
> >
> > Regards,
> >      Uri.
> >
> >
> >     Regards,
> >     Nicholas Vinson
> >
> >      >
> >      > Do they sound good?
> >      > I suppose the compatibility one could be merged.
> >      >
> >      > Regards,
> >      >    Frediano
> >
>
>

--0000000000001e280506460f11fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Dec 12, 2025 at 7:56=E2=80=AFAM Nicho=
las Vinson &lt;<a href=3D"mailto:nvinson234@gmail.com">nvinson234@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<br>
<br>
On 12/11/25 13:48, Uri Lublin wrote:<br>
&gt; <br>
&gt; <br>
&gt; On Thu, Dec 11, 2025 at 2:38=E2=80=AFPM Nicholas Vinson &lt;<a href=3D=
"mailto:nvinson234@gmail.com" target=3D"_blank">nvinson234@gmail.com</a> <b=
r>
&gt; &lt;mailto:<a href=3D"mailto:nvinson234@gmail.com" target=3D"_blank">n=
vinson234@gmail.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 12/11/25 06:55, Frediano Ziglio wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Sun, 7 Dec 2025 at 12:20, Nicholas Vinson<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:nvinson234@gmail.com" target=
=3D"_blank">nvinson234@gmail.com</a> &lt;mailto:<a href=3D"mailto:nvinson23=
4@gmail.com" target=3D"_blank">nvinson234@gmail.com</a>&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; When building with g++-16, the build fail=
s with the following error:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0 =C2=A0 server/tests/test-dis=
play-base.cpp:809:5: error: either all<br>
&gt;=C2=A0 =C2=A0 =C2=A0initializer<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0 =C2=A0 clauses should be des=
ignated or none of them should be<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; This is because g++-16 defaults to c++20 =
and when using designated<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; initializers with c++20, you don&#39;t wr=
ap anonymous union fields<br>
&gt;=C2=A0 =C2=A0 =C2=A0with braces.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; Nicholas Vinson (2):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0 m4/spice-compile-warnings.m4=
: disable -Wmissing-braces<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0 test-display-base.cpp: adjus=
t designated init.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0m4/spice-compile-warnings.m4=
=C2=A0 =C2=A0 =C2=A0 =C2=A0| 1 +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0server/tests/test-display-bas=
e.cpp | 2 +-<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A02 files changed, 2 insertions=
(+), 1 deletion(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; The CI is not that happy. I added some commit=
 to make it pass:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; - missing AUTHORS for &quot;make syntax-check=
&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"https://gitlab.freedesktop.org/fzi=
glio/spice/-/commit/" rel=3D"noreferrer" target=3D"_blank">https://gitlab.f=
reedesktop.org/fziglio/spice/-/commit/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0fb018b3fbb26f38b2ffb0ee569d4aafc287fc738 &lt;https:=
//<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://gitlab.freedesktop.org/fziglio/sp=
ice/-/commit/" rel=3D"noreferrer" target=3D"_blank">gitlab.freedesktop.org/=
fziglio/spice/-/commit/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0fb018b3fbb26f38b2ffb0ee569d4aafc287fc738&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; - too old Fedora (not related to these change=
s)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"https://gitlab.freedesktop.org/fzi=
glio/spice/-/commit/" rel=3D"noreferrer" target=3D"_blank">https://gitlab.f=
reedesktop.org/fziglio/spice/-/commit/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0a4525e204ef8b7e3beb3709823029e27de633d7a &lt;https:=
//<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://gitlab.freedesktop.org/fziglio/sp=
ice/-/commit/" rel=3D"noreferrer" target=3D"_blank">gitlab.freedesktop.org/=
fziglio/spice/-/commit/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0a4525e204ef8b7e3beb3709823029e27de633d7a&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; - compatibility with pretty old GCC<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"https://gitlab.freedesktop.org/fzi=
glio/spice/-/" rel=3D"noreferrer" target=3D"_blank">https://gitlab.freedesk=
top.org/fziglio/spice/-/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0commit/6a2c24fd5c088cb3b016a40965882e98f010b583 &lt=
;https://<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://gitlab.freedesktop.org/fziglio/sp=
ice/-/" rel=3D"noreferrer" target=3D"_blank">gitlab.freedesktop.org/fziglio=
/spice/-/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0commit/6a2c24fd5c088cb3b016a40965882e98f010b583&gt;=
<br>
&gt; <br>
&gt; <br>
&gt; Frediano, where did you take the 10 from ?<br>
&gt; Shouldn&#39;t it check=C2=A0if the gcc version is 16 (or even 20) ?<br=
>
&gt; <br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I&#39;m concerned about the old GCC compatibility c=
ommit. I think it would<br>
&gt;=C2=A0 =C2=A0 =C2=A0be more robust if designated initializer feature ch=
ecks were added to<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://configure.ac" rel=3D"noreferrer" =
target=3D"_blank">configure.ac</a> &lt;<a href=3D"http://configure.ac" rel=
=3D"noreferrer" target=3D"_blank">http://configure.ac</a>&gt; and meson.bui=
ld instead.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0That way you don&#39;t have to worry about how old =
or new the compiler<br>
&gt;=C2=A0 =C2=A0 =C2=A0is or<br>
&gt;=C2=A0 =C2=A0 =C2=A0if it implements the necessary GCC extensions, or i=
mplements them<br>
&gt;=C2=A0 =C2=A0 =C2=A0correctly.<br>
&gt; <br>
&gt; <br>
&gt; Do you mean compiling a simple program with designated initializers in=
 <br>
&gt; meson/configure ?<br>
<br>
That&#39;s exactly what I mean.<br></blockquote><div><br></div><div>It is a=
 bit safer, but I think we can trust gcc in this case,=C2=A0like Frediano&#=
39;s patch does.</div><div><br></div><div>Thanks,</div><div>=C2=A0 =C2=A0 U=
ri.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
<br>
Regards,<br>
Nicholas Vinson<br>
<br>
&gt; <br>
&gt; Regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 Uri.<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Nicholas Vinson<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Do they sound good?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; I suppose the compatibility one could be merg=
ed.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 Frediano<br>
&gt; <br>
<br>
</blockquote></div></div>

--0000000000001e280506460f11fa--

