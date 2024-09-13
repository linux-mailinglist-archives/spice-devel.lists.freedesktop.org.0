Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F74C978EF1
	for <lists+spice-devel@lfdr.de>; Sat, 14 Sep 2024 09:37:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F060B10E2A1;
	Sat, 14 Sep 2024 07:37:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lkjHmYIs";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
 [209.85.218.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2B6510E198
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Sep 2024 12:56:10 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id
 a640c23a62f3a-a8ce5db8668so331140666b.1
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Sep 2024 05:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1726232169; x=1726836969; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Q9F5p8Z3lu24pnReiWon2Qzqssnaoj47+7Lh0vFqp9o=;
 b=lkjHmYIsuqV/oLA/bKZ6KzpC+IhWr50yc2njRZYTEPlgyO386rSafJ2U2v4boHSo1Z
 WVeNGAoCLKcxuNyA72KXnnJugfp3wJE6YzkgDqEtDmIpbKJDMA5aV01k8Gzd5kDnglBU
 00qWP7rOf9OgA7meTGbhaJtjucfmd3v+lYp3WgZBUWppF0eqAWTwNcos5+aBYb8pZkCp
 VN6GaGIF5CGQJE6GSK+PX0OseDJvs71OWZOSkZak+JaaWxFsOZiHBFY8rDgwre18RyPJ
 +dPATcVer+iv+rOWaM+fAJBWUmuzb344ssmF5NN/FYJySBGBEBpqro7U9+IdvB4QvZkG
 M6Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726232169; x=1726836969;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Q9F5p8Z3lu24pnReiWon2Qzqssnaoj47+7Lh0vFqp9o=;
 b=hOwOOGxUh66R/WyG71hvQ2VCuRAp6zAr8Q6XtCEgkQ55YaNavcNiCgjdnAUitu7k+v
 IJHTiaOMq8eFJn4Xm9PaIhn4boi0uK0lq0JhOXewqGphjL2B0OPbA+GxjLC9f6a4TwdE
 /Hlau9cThlqDpQ/vNLaLmW8xspPC55rP4/77JO0XYZCdgboHMKV7CARIqnzsDO0DYI1d
 Squ8PKurkYPUSwHi8c4MTU29XtrWpcjD3b/7WKJk3RRT0JCnrzsp2RNhEFwljOApQRr/
 ImFD0nC/c2PBTgTMDChS+dhbtDR64EwxGNqcRK/EiihZRPmr+ji0EESN8yod572ztCaJ
 f3GA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVHxBYQxIBxJ/4GWnU4khgCM0daHhL0NxV5GzkLmmiRZWJl4W9VdtzTNxPn1YDu6ttsWC8UVCYXc+Xgrw==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyPxn/8L2RHcbcG9D0zzhLfGxRwPECsR9NOjeZzQM+GCcEEVGRn
 im2UQIA44/KxVw3803cUtfOE6JhThJKKAsf1ll7wlSN29aVUPovuTSflCmeMBmiqXCdvwkaWAZ6
 PAQfdK0V3YozeVMqwg1KpTE9igfo=
X-Google-Smtp-Source: AGHT+IFoN8rAtiGdEgzoKS3D1kALEjwW0taLMCfUWlbvs39arnkgZvuf5BWmjs+3RmXr0ekzPfxuset35tBiVNenit0=
X-Received: by 2002:a17:907:6e9f:b0:a86:b64e:bc4d with SMTP id
 a640c23a62f3a-a902961d618mr607357866b.44.1726232168980; Fri, 13 Sep 2024
 05:56:08 -0700 (PDT)
MIME-Version: 1.0
References: <CA+mZ-_JE5f7qdNFyS-zKzYwx8e22xyzNG9oU4B7cNOyCUFAENQ@mail.gmail.com>
 <CAHt6W4eAR8gN6=d9LWH4EOukuWgx76UfBj0QGT0ctdr=UbWF_Q@mail.gmail.com>
 <CA+mZ-_LwGmvUhFDjqgLzfkc0aMy0SsWXH9U_Ekdsg0rLZKZQdA@mail.gmail.com>
 <CAHt6W4egOb+jX=LDLmpTnQ4n1ujkCMF=4e2H+hs+mOPufYXUwQ@mail.gmail.com>
 <CA+mZ-_+Q7W3zJoyuSX49uxOWq2rpJ81FYndYDeiQG=EfhOPisQ@mail.gmail.com>
 <CAHt6W4dQT1M-rbtq=Ku8O=1rVjBWToHnww5MyfM-pHA5PTPOWA@mail.gmail.com>
 <CA+mZ-_Jd8i6u346W=Ymh47ELoqHhEBuDUz++GUOL9ht4Fc8mFg@mail.gmail.com>
 <CAAg9qJ0sOSuL5emMa8mZmYqXuYit2d1vVzxQATmqUkAKWYd5Pg@mail.gmail.com>
In-Reply-To: <CAAg9qJ0sOSuL5emMa8mZmYqXuYit2d1vVzxQATmqUkAKWYd5Pg@mail.gmail.com>
From: Randall Suter <randallsuter@gmail.com>
Date: Fri, 13 Sep 2024 15:55:56 +0300
Message-ID: <CA+mZ-_KY==ti4N=jHCt8mebt10smdFGn-EZK-av6tQTk5eerpw@mail.gmail.com>
Subject: Re: Guest Post Request
To: Uri Lublin <ulublin@redhat.com>
Cc: Frediano Ziglio <freddy77@gmail.com>, spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000003b69310621ffbfba"
X-Mailman-Approved-At: Sat, 14 Sep 2024 07:37:44 +0000
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

--0000000000003b69310621ffbfba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok, thanks for the reply.

Best Regards,
Randall Suter


On Thu, 12 Sept 2024 at 17:36, Uri Lublin <ulublin@redhat.com> wrote:

> Hi Randall,
>
> We do not publish advertising articles on our site.
>
> Regards,
>     Uri
>
> On Thu, Sep 12, 2024 at 5:31=E2=80=AFPM Randall Suter <randallsuter@gmail=
.com>
> wrote:
>
>> I didn't understand your answer.
>>
>> Best Regards,
>> Randall Suter
>>
>>
>> On Sun, 8 Sept 2024 at 13:41, Frediano Ziglio <freddy77@gmail.com> wrote=
:
>>
>>> Il giorno gio 5 set 2024 alle ore 18:56 Randall Suter
>>> <randallsuter@gmail.com> ha scritto:
>>> >
>>> > Hello,
>>> >
>>> > My clients are willing to pay you to place an advertising article on
>>> your site. That's what I'm asking you. Do you accept this or not?
>>> >
>>> > Best Regards,
>>> > Randall Suter
>>> >
>>> >
>>> > On Thu, 5 Sept 2024 at 09:39, Frediano Ziglio <freddy77@gmail.com>
>>> wrote:
>>> >>
>>> >> Hi,
>>> >>    it's not clear what you are trying to achieve.
>>> >>
>>> >> Do you want to sponsor our project? Like paying for a developer? Or
>>> >> donate some money (I don't think we'll have a nice usage at the mome=
nt
>>> >> but I may be wrong) ?
>>> >>
>>> >> Regards,
>>> >>    Frediano
>>> >>
>>> >> Il giorno ven 19 lug 2024 alle ore 23:14 Randall Suter
>>> >> <randallsuter@gmail.com> ha scritto:
>>> >> >
>>> >> > Hi! Thank you for your reply! I'm interested in sponsored posts
>>> with a do-follow link. I have several projects on different topics. I w=
ould
>>> like to know the terms of publication and prices on your site to begin
>>> with. Please give me more details about it if you accept such posts.
>>> >> >
>>> >> > Best Regards,
>>> >> > Randall Suter
>>> >> >
>>> >> >
>>> >> > On Fri, 19 Jul 2024 at 13:47, Frediano Ziglio <freddy77@gmail.com>
>>> wrote:
>>> >> >>
>>> >> >> Il giorno ven 19 lug 2024 alle ore 11:20 Randall Suter
>>> >> >> <randallsuter@gmail.com> ha scritto:
>>> >> >> >
>>> >> >> > Good day! My name is Randall. I would like to contribute to you=
r
>>> website (spice-space.org) by submitting a guest post. Are there any
>>> specific requirements that I need to follow?
>>> >> >> >
>>> >> >> > Best Regards,
>>> >> >> > Randall Suter
>>> >> >>
>>> >> >> Hi Randall,
>>> >> >>    pages are generated from
>>> >> >> https://gitlab.freedesktop.org/spice/spice-space-pages.
>>> >> >> What'a a "guest post" ?
>>> >> >>
>>> >> >> Frediano
>>>
>>> Hi,
>>>    I don't own the website but I think the reply is no.
>>> It's an Open Source project webpage.
>>>
>>> Regards,
>>>    Frediano
>>>
>>

--0000000000003b69310621ffbfba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok, thanks for the reply.=C2=A0<br clear=3D"all"><div><div=
 dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><=
div dir=3D"ltr"><div><br></div><div><font face=3D"arial, sans-serif">Best R=
egards,<br></font></div><div><span style=3D"color:rgb(0,0,0);white-space:pr=
e-wrap"><font face=3D"arial, sans-serif">Randall Suter</font></span><br></d=
iv></div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, 12 Sept 2024 at 17:36, Uri Lublin &lt;<a h=
ref=3D"mailto:ulublin@redhat.com">ulublin@redhat.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>H=
i Randall,</div><div><br></div><div>We do not publish advertising articles =
on our site.<br></div><div><br></div><div>Regards,</div><div>=C2=A0=C2=A0=
=C2=A0 Uri<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, Sep 12, 2024 at 5:31=E2=80=AFPM Randall Suter &=
lt;<a href=3D"mailto:randallsuter@gmail.com" target=3D"_blank">randallsuter=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">I didn&#39;t understand your a=
nswer.<br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature"><di=
v dir=3D"ltr"><div><br></div><div><font face=3D"arial, sans-serif">Best Reg=
ards,<br></font></div><div><span style=3D"color:rgb(0,0,0);white-space:pre-=
wrap"><font face=3D"arial, sans-serif">Randall Suter</font></span><br></div=
></div></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sun, 8 Sept 2024 at 13:41, Frediano Ziglio=
 &lt;<a href=3D"mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">Il giorno gio 5 set 2024 alle ore 18:56 Randall Suter<br>
&lt;<a href=3D"mailto:randallsuter@gmail.com" target=3D"_blank">randallsute=
r@gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; My clients are willing to pay you to place an advertising article on y=
our site. That&#39;s what I&#39;m asking you. Do you accept this or not?<br=
>
&gt;<br>
&gt; Best Regards,<br>
&gt; Randall Suter<br>
&gt;<br>
&gt;<br>
&gt; On Thu, 5 Sept 2024 at 09:39, Frediano Ziglio &lt;<a href=3D"mailto:fr=
eddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;=C2=A0 =C2=A0 it&#39;s not clear what you are trying to achieve.<br=
>
&gt;&gt;<br>
&gt;&gt; Do you want to sponsor our project? Like paying for a developer? O=
r<br>
&gt;&gt; donate some money (I don&#39;t think we&#39;ll have a nice usage a=
t the moment<br>
&gt;&gt; but I may be wrong) ?<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt;=C2=A0 =C2=A0 Frediano<br>
&gt;&gt;<br>
&gt;&gt; Il giorno ven 19 lug 2024 alle ore 23:14 Randall Suter<br>
&gt;&gt; &lt;<a href=3D"mailto:randallsuter@gmail.com" target=3D"_blank">ra=
ndallsuter@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi! Thank you for your reply! I&#39;m interested in sponsored=
 posts with a do-follow link. I have several projects on different topics. =
I would like to know the terms of publication and prices on your site to be=
gin with. Please give me more details about it if you accept such posts.<br=
>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Best Regards,<br>
&gt;&gt; &gt; Randall Suter<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Fri, 19 Jul 2024 at 13:47, Frediano Ziglio &lt;<a href=3D"=
mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>&gt; wro=
te:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Il giorno ven 19 lug 2024 alle ore 11:20 Randall Suter<br=
>
&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:randallsuter@gmail.com" target=3D"_=
blank">randallsuter@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Good day! My name is Randall. I would like to contri=
bute to your website (<a href=3D"http://spice-space.org" rel=3D"noreferrer"=
 target=3D"_blank">spice-space.org</a>) by submitting a guest post. Are the=
re any specific requirements that I need to follow?<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Best Regards,<br>
&gt;&gt; &gt;&gt; &gt; Randall Suter<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Hi Randall,<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 pages are generated from<br>
&gt;&gt; &gt;&gt; <a href=3D"https://gitlab.freedesktop.org/spice/spice-spa=
ce-pages" rel=3D"noreferrer" target=3D"_blank">https://gitlab.freedesktop.o=
rg/spice/spice-space-pages</a>.<br>
&gt;&gt; &gt;&gt; What&#39;a a &quot;guest post&quot; ?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Frediano<br>
<br>
Hi,<br>
=C2=A0 =C2=A0I don&#39;t own the website but I think the reply is no.<br>
It&#39;s an Open Source project webpage.<br>
<br>
Regards,<br>
=C2=A0 =C2=A0Frediano<br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000003b69310621ffbfba--
