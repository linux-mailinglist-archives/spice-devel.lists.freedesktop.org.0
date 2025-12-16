Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A33CC1ED6
	for <lists+spice-devel@lfdr.de>; Tue, 16 Dec 2025 11:15:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA6E510E7A3;
	Tue, 16 Dec 2025 10:15:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="QCRqPKPx";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BD2A10E74C
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Dec 2025 10:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1765880142;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Fvehoo4Z61Tb52iUK91u4+c19Uo/UNN1GfykyB4j9l0=;
 b=QCRqPKPxvF+07JWEdcjGFHnRP7pkYzOUS0avAszXmv20JLEPAst+xZaI5GBRE5lxbfKP5c
 mpup8LI5lsEQiroBygnq6EN6IMzeYBdu63uYJ9AS2xVC2fEVurMsz99wQ1duSTMSVx0D8E
 B9BYTH7ixI3bLgosWmdOtsttL1WvQjo=
Received: from mail-yx1-f69.google.com (mail-yx1-f69.google.com
 [74.125.224.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-513-GleriDw2MtOK12k8UmBjcg-1; Tue, 16 Dec 2025 05:15:40 -0500
X-MC-Unique: GleriDw2MtOK12k8UmBjcg-1
X-Mimecast-MFC-AGG-ID: GleriDw2MtOK12k8UmBjcg_1765880140
Received: by mail-yx1-f69.google.com with SMTP id
 956f58d0204a3-64558391a78so5456413d50.1
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Dec 2025 02:15:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765880140; x=1766484940;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Fvehoo4Z61Tb52iUK91u4+c19Uo/UNN1GfykyB4j9l0=;
 b=ONLaWgARMvRUCp7O0eG01uP4t3bPq9YvHeQFG8uC4/6V2+ASeDzr+HL/ZuyYf3H751
 S0eD/6diNdOv+eJuF+083RJKk6XKenN3gIba4yrCM6cTWRndVX1AbaLrXCoo22QdDl6D
 r7fkJ49FKnEQSbX9PMKh+hcjjkcPN6opN2fhcRIyoK6ao93FLgL2H9M10Pgs1lXx6IHY
 Q2JEANbotwKz9wJ2ZU1S3lMXKDSubo6zg31g/m9eIIjWIU9kqbi+AHsxWgPu9rfD+E4O
 IMMColM35Nw6RkMzPQNhht69V9RYBNVfOVbv2XPE7D1EParqK4R14XaICUGpFnWxoxWU
 N28A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXEfFYzpu4m/kKXLOrbiNfmvUdKwAxuwQofQU7U5XAxwNA9BH01IP6XeIu6G5GstgfYJgp313Q5iKhQww==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyZn4qXxbF5/ml9+x4XzcIhFNRIVmB3G9V1Bype5kO+AdPmFQYB
 J+Zj0gI1iiGEGiJWfrNLaeh66bGl1IK0aresXxJfogiOO3WtB9XnvNlUV2VjORCNRiVTrj/Vbjl
 YX98kZjIkwHbKsxdZ5sHTihtprx/uOHSwHhHNscuMI79WQKoRycIJjTmYsK8JQgjEr7o2/OHaer
 KYaOm2W3vsfkgQTdU6ZiO1mt2yJw/tgTe3T7erqFIvX8kKBAI=
X-Gm-Gg: AY/fxX6n67yTyL4MRJn8mpX/xTRXl9N3ktIEb5G6rC46knoN8racdGyRAfkm8ZLcP+R
 Ny41r9F0Xq5Xl9pqg8SFgS+4uz7cFSD7uZh/M6fX9cOIEyk3JKQMIFi/zwH7KazmmQDs8XXBYs9
 5K0Q6JPh1R0sN8ezeVNhciGq/INF0PNXzCl9iGsEeLegescxQaQz6m5P8HL5X+N+7OVAGPtftYV
 EN0PsgbGtgWybkFClaKV49/C17KX/9v1RSdjs+gLapMn835qSY=
X-Received: by 2002:a05:690e:d46:b0:63f:9fbd:6e8c with SMTP id
 956f58d0204a3-64555650e67mr10695705d50.48.1765880139856; 
 Tue, 16 Dec 2025 02:15:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHlx9m8WXkVjXGnv3hbmFq6ZMGBwmnw7RuVt2iPGwoJ7gGXeBAjmEv8aIqcjOBhEvcxbLownO6ji1IVetiNvKk=
X-Received: by 2002:a05:690e:d46:b0:63f:9fbd:6e8c with SMTP id
 956f58d0204a3-64555650e67mr10695684d50.48.1765880139453; Tue, 16 Dec 2025
 02:15:39 -0800 (PST)
MIME-Version: 1.0
References: <cover.1765109578.git.nvinson234@gmail.com>
 <CAHt6W4dfEwtJWV0cPL4MA4ZrbQ-Quxy7cPPPG+oSJLcrVm87aQ@mail.gmail.com>
 <b0d290d2-2db8-4d68-a700-724d1d6ac431@gmail.com>
 <CAAg9qJ29KxThRT8ej9P8U9iou7Lt6UJDO3gk+rXjq5d=-DbUFA@mail.gmail.com>
 <CAHt6W4dbRswsyaZgeBQRxx8Uor5gLgnfH5G2O9i9nidhaX+X0Q@mail.gmail.com>
In-Reply-To: <CAHt6W4dbRswsyaZgeBQRxx8Uor5gLgnfH5G2O9i9nidhaX+X0Q@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Date: Tue, 16 Dec 2025 12:15:28 +0200
X-Gm-Features: AQt7F2osIJoaBibchJPc8PLWY9KnQBuZl8MGJLlt0_c9IKHyzNlQP2aep7J063Y
Message-ID: <CAAg9qJ1NdqiF+W0cz1G7ZhWSo-pK9s8_7LKHY8e13nMPED_qqA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Adjust dsignated initializer to be C++20 compliant
To: Frediano Ziglio <freddy77@gmail.com>
Cc: Nicholas Vinson <nvinson234@gmail.com>, Victor Toso <victortoso@redhat.com>,
 spice-devel@lists.freedesktop.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: RCV-W1A9xO6GVPwaS2dcS_uE3xO8J5kIrFqrP9AG90s_1765880140
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000006e554206460f02b0"
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

--0000000000006e554206460f02b0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Frediano,

On Thu, Dec 11, 2025 at 9:25=E2=80=AFPM Frediano Ziglio <freddy77@gmail.com=
> wrote:

> On Thu, 11 Dec 2025 at 18:49, Uri Lublin <uril@redhat.com> wrote:
> >
> >
> >
> > On Thu, Dec 11, 2025 at 2:38=E2=80=AFPM Nicholas Vinson <nvinson234@gma=
il.com>
> wrote:
> >>
> >> On 12/11/25 06:55, Frediano Ziglio wrote:
> >> > On Sun, 7 Dec 2025 at 12:20, Nicholas Vinson <nvinson234@gmail.com>
> wrote:
> >> >>
> >> >> When building with g++-16, the build fails with the following error=
:
> >> >>
> >> >>      server/tests/test-display-base.cpp:809:5: error: either all
> initializer
> >> >>      clauses should be designated or none of them should be
> >> >>
> >> >> This is because g++-16 defaults to c++20 and when using designated
> >> >> initializers with c++20, you don't wrap anonymous union fields with
> braces.
> >> >>
> >> >> Nicholas Vinson (2):
> >> >>    m4/spice-compile-warnings.m4: disable -Wmissing-braces
> >> >>    test-display-base.cpp: adjust designated init.
> >> >>
> >> >>   m4/spice-compile-warnings.m4       | 1 +
> >> >>   server/tests/test-display-base.cpp | 2 +-
> >> >>   2 files changed, 2 insertions(+), 1 deletion(-)
> >> >>
> >> >
> >> > The CI is not that happy. I added some commit to make it pass:
> >> > - missing AUTHORS for "make syntax-check"
> >> >
> https://gitlab.freedesktop.org/fziglio/spice/-/commit/fb018b3fbb26f38b2ff=
b0ee569d4aafc287fc738
> >> > - too old Fedora (not related to these changes)
> >> >
> https://gitlab.freedesktop.org/fziglio/spice/-/commit/a4525e204ef8b7e3beb=
3709823029e27de633d7a
> >> > - compatibility with pretty old GCC
> >> >
> https://gitlab.freedesktop.org/fziglio/spice/-/commit/6a2c24fd5c088cb3b01=
6a40965882e98f010b583
> >
> >
> > Frediano, where did you take the 10 from ?
> > Shouldn't it check if the gcc version is 16 (or even 20) ?
> >
>
> Hi,
>    indeed not very scientific.
> Given the initial reason of the change, why not
>
> #if __cplusplus >=3D 202002L
>     .attached_worker =3D attached_worker,
> #else
>     { .attached_worker =3D attached_worker },
> #endif
>

Looks good to me.
https://gcc.gnu.org/onlinedocs/cpp/Standard-Predefined-Macros.html

Thanks,
    Uri.


> ?
>
> >>
> >>
> >>
> >> I'm concerned about the old GCC compatibility commit. I think it would
> >> be more robust if designated initializer feature checks were added to
> >> configure.ac and meson.build instead.
> >>
> >> That way you don't have to worry about how old or new the compiler is =
or
> >> if it implements the necessary GCC extensions, or implements them
> correctly.
> >
>
> I think the above proposal also addresses this comment.
>
> >
> > Do you mean compiling a simple program with designated initializers in
> meson/configure ?
> >
> > Regards,
> >     Uri.
> >
> >
> >>
> >>
> >> Regards,
> >> Nicholas Vinson
> >>
>
> Frediano
>
> >> >
> >> > Do they sound good?
> >> > I suppose the compatibility one could be merged.
> >> >
>
>

--0000000000006e554206460f02b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Frediano,</div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 11, 2025 at =
9:25=E2=80=AFPM Frediano Ziglio &lt;<a href=3D"mailto:freddy77@gmail.com" t=
arget=3D"_blank">freddy77@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">On Thu, 11 Dec 2025 at 18:49, Uri Lublin=
 &lt;<a href=3D"mailto:uril@redhat.com" target=3D"_blank">uril@redhat.com</=
a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Dec 11, 2025 at 2:38=E2=80=AFPM Nicholas Vinson &lt;<a href=3D=
"mailto:nvinson234@gmail.com" target=3D"_blank">nvinson234@gmail.com</a>&gt=
; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On 12/11/25 06:55, Frediano Ziglio wrote:<br>
&gt;&gt; &gt; On Sun, 7 Dec 2025 at 12:20, Nicholas Vinson &lt;<a href=3D"m=
ailto:nvinson234@gmail.com" target=3D"_blank">nvinson234@gmail.com</a>&gt; =
wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; When building with g++-16, the build fails with the follo=
wing error:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 server/tests/test-display-base.cpp:80=
9:5: error: either all initializer<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 clauses should be designated or none =
of them should be<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; This is because g++-16 defaults to c++20 and when using d=
esignated<br>
&gt;&gt; &gt;&gt; initializers with c++20, you don&#39;t wrap anonymous uni=
on fields with braces.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Nicholas Vinson (2):<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 m4/spice-compile-warnings.m4: disable -Wmiss=
ing-braces<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 test-display-base.cpp: adjust designated ini=
t.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0m4/spice-compile-warnings.m4=C2=A0 =C2=A0 =C2=
=A0 =C2=A0| 1 +<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0server/tests/test-display-base.cpp | 2 +-<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A02 files changed, 2 insertions(+), 1 deletion(=
-)<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; The CI is not that happy. I added some commit to make it pass=
:<br>
&gt;&gt; &gt; - missing AUTHORS for &quot;make syntax-check&quot;<br>
&gt;&gt; &gt; <a href=3D"https://gitlab.freedesktop.org/fziglio/spice/-/com=
mit/fb018b3fbb26f38b2ffb0ee569d4aafc287fc738" rel=3D"noreferrer" target=3D"=
_blank">https://gitlab.freedesktop.org/fziglio/spice/-/commit/fb018b3fbb26f=
38b2ffb0ee569d4aafc287fc738</a><br>
&gt;&gt; &gt; - too old Fedora (not related to these changes)<br>
&gt;&gt; &gt; <a href=3D"https://gitlab.freedesktop.org/fziglio/spice/-/com=
mit/a4525e204ef8b7e3beb3709823029e27de633d7a" rel=3D"noreferrer" target=3D"=
_blank">https://gitlab.freedesktop.org/fziglio/spice/-/commit/a4525e204ef8b=
7e3beb3709823029e27de633d7a</a><br>
&gt;&gt; &gt; - compatibility with pretty old GCC<br>
&gt;&gt; &gt; <a href=3D"https://gitlab.freedesktop.org/fziglio/spice/-/com=
mit/6a2c24fd5c088cb3b016a40965882e98f010b583" rel=3D"noreferrer" target=3D"=
_blank">https://gitlab.freedesktop.org/fziglio/spice/-/commit/6a2c24fd5c088=
cb3b016a40965882e98f010b583</a><br>
&gt;<br>
&gt;<br>
&gt; Frediano, where did you take the 10 from ?<br>
&gt; Shouldn&#39;t it check if the gcc version is 16 (or even 20) ?<br>
&gt;<br>
<br>
Hi,<br>
=C2=A0 =C2=A0indeed not very scientific.<br>
Given the initial reason of the change, why not<br>
<br>
#if __cplusplus &gt;=3D 202002L<br>
=C2=A0 =C2=A0 .attached_worker =3D attached_worker,<br>
#else<br>
=C2=A0 =C2=A0 { .attached_worker =3D attached_worker },<br>
#endif<br></blockquote><div><br></div><div>Looks good to me.</div><div><a h=
ref=3D"https://gcc.gnu.org/onlinedocs/cpp/Standard-Predefined-Macros.html" =
target=3D"_blank">https://gcc.gnu.org/onlinedocs/cpp/Standard-Predefined-Ma=
cros.html</a>=C2=A0</div><div><br></div><div>Thanks,</div><div>=C2=A0 =C2=
=A0 Uri.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">
<br>
?<br>
<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m concerned about the old GCC compatibility commit. I think =
it would<br>
&gt;&gt; be more robust if designated initializer feature checks were added=
 to<br>
&gt;&gt; <a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blan=
k">configure.ac</a> and meson.build instead.<br>
&gt;&gt;<br>
&gt;&gt; That way you don&#39;t have to worry about how old or new the comp=
iler is or<br>
&gt;&gt; if it implements the necessary GCC extensions, or implements them =
correctly.<br>
&gt;<br>
<br>
I think the above proposal also addresses this comment.<br>
<br>
&gt;<br>
&gt; Do you mean compiling a simple program with designated initializers in=
 meson/configure ?<br>
&gt;<br>
&gt; Regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Uri.<br>
&gt;<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt; Nicholas Vinson<br>
&gt;&gt;<br>
<br>
Frediano<br>
<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Do they sound good?<br>
&gt;&gt; &gt; I suppose the compatibility one could be merged.<br>
&gt;&gt; &gt;<br>
<br>
</blockquote></div></div>
</div>

--0000000000006e554206460f02b0--

