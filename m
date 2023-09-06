Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF00797129
	for <lists+spice-devel@lfdr.de>; Thu,  7 Sep 2023 11:16:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F2310E1D1;
	Thu,  7 Sep 2023 09:16:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4507310E1EC
 for <spice-devel@lists.freedesktop.org>; Wed,  6 Sep 2023 19:55:24 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id
 38308e7fff4ca-2bc63e0d8cdso3883761fa.2
 for <spice-devel@lists.freedesktop.org>; Wed, 06 Sep 2023 12:55:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1694030122; x=1694634922; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=50C8gmiDfSgFvPOnh1H+a9djXG0DuKHy65wfuqm0Vdk=;
 b=PZ9NsrGNKwkB7xGh9knu/K/GZdUjsV6Ex5kcf9e5i7ispm3zbl21NFE1cguzz11ujc
 14e7SVzN6XKXNo8YisplHNZAU1TaUe24iqXs5BZyZUrSHw4G4MZQog4fB23uwLZmc3JB
 iIjHGzfLcVtmOnZ3W7ZDbtHo552nfnR/TDSAGG6eVeR5Do93rL3fDZbBlO5EP5Eudn4S
 CgM6qcOh7SlBLJt7FIOhTvDt5mc5qBYsMEDP/U0+tc8SXu2chZWhdhkbkp7PdV3E6JAI
 R5YhQJPctMSl4Ovfl0DgqWc6RPP20mMMSZkRIOF6ZGm97BWwsx2ibnmjBowU6uy2RpYM
 Tugg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1694030122; x=1694634922;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=50C8gmiDfSgFvPOnh1H+a9djXG0DuKHy65wfuqm0Vdk=;
 b=Lw4u45aMVskE13ca4xGSB9TegEbUx2S3/Y2dIZozVigMaDV6aWEuD37mr7quToathj
 3/kVJ72GeF25EutjGg1ltTPPLS+ahmJwcaGMKzld4shF+MJ7TwYpc8edbCsDUes+ZnKb
 XCWDUeAn3UCuWgVcUhjt8lAMqIUa+qiX9SqczR4UwsDZ1WLJxH3cS/FYZ9WpddPUO0jI
 3X+rVYbQRjXc7T875yvGJdxD+uIzFXyey3vaArVaDWsxKMNuFxdNvpdn26Xu27U/EPQy
 r9Pu4n9YW5gaLqrmo4IHBO4mFRha8g3LGuVTJ43HqDiGzzG6FG/u76uIG8c7UTzFyxXL
 dsvg==
X-Gm-Message-State: AOJu0YxSw9u4h/UosOI1U/es33AESsmrlelfWk7fgAAqTKYmtQHsPJfD
 Ntq0nkqbPbKls7VSTp4JUDpOdM5c9OpumkRLDIk=
X-Google-Smtp-Source: AGHT+IHNf1+t8NPNIHGnkWZ2BYo/N+LOvPPN5GpFngHm6a7jQ+f4mgVntC/xa8v6TQFslcWprPbuNA/gCqQtuDhBdgg=
X-Received: by 2002:a2e:b0e7:0:b0:2bc:f9d0:c3d7 with SMTP id
 h7-20020a2eb0e7000000b002bcf9d0c3d7mr3364690ljl.3.1694030121938; Wed, 06 Sep
 2023 12:55:21 -0700 (PDT)
MIME-Version: 1.0
References: <CABB28CxNKTF-kOoBYLVnwX3k9KQ7=Qauu3vOgPrx5iOyEafOMw@mail.gmail.com>
 <CAAg9qJ0tJkZWdL3ombhPMq0uTKxvZ1OGTY0N9xheGr9icSFezA@mail.gmail.com>
In-Reply-To: <CAAg9qJ0tJkZWdL3ombhPMq0uTKxvZ1OGTY0N9xheGr9icSFezA@mail.gmail.com>
From: =?UTF-8?Q?Tomasz_K=C5=82oczko?= <kloczko.tomasz@gmail.com>
Date: Wed, 6 Sep 2023 20:54:45 +0100
Message-ID: <CABB28Cz1iyiyPFU+dq2KjN+KfHWR9V6eBi69JL4Fh1aqhpJ4tw@mail.gmail.com>
To: Uri Lublin <ulublin@redhat.com>
Content-Type: multipart/alternative; boundary="000000000000a832bf0604b61f5d"
X-Mailman-Approved-At: Thu, 07 Sep 2023 09:16:48 +0000
Subject: Re: [Spice-devel] 0.42: build fails
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

--000000000000a832bf0604b61f5d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 6 Sept 2023 at 18:15, Uri Lublin <ulublin@redhat.com> wrote:

> On Wed, Sep 6, 2023 at 11:17=E2=80=AFAM Tomasz K=C5=82oczko <kloczko.toma=
sz@gmail.com>
> wrote:
>
>> HI,
>>
>
> Hi,
>
> What distribution are you building this on ?
> Seems like there is a problem with the libcacard-devel package.
> Meson seems to find it but libcacard.so is not found by the gcc command.
>

MyOwn=E2=84=A2=EF=B8=8F =F0=9F=98=8B

Please ignore this email.
Issue already has been discussed, udentified and resoleved under
https://gitlab.freedesktop.org/spice/spice-gtk/-/issues/178
I found the issue with how the libcacard pkgconfig file is generated. Below
patch fixes issue.

``patch
--- a/meson.build
+++ b/meson.build
@@ -88,8 +88,7 @@
 )

 pc =3D import('pkgconfig')
-pc.generate(
-  libraries: libcacard,
   requires_private: ['glib-2.0'],
+pc.generate(libcacard,
   subdirs: 'cacard',
   version: meson.project_version(),
   name: 'cacard',
```
Missing "libcacard" as the first parameter is causing the "Libs:" line is
generated .pc file is not generated.

Additionally I just realised that case of interaction libcacard with
spice-gtk exposed again meson issue which I've reported in
https://github.com/mesonbuild/meson/issues/12225 however in this case looks
like meson developers do not understand difference between they assumptions
and fact that I've literally tested how pkgconfig is used by meson and rpm
on scaLE OF WHOLE DISTRIBUTION.

So second part of the solution is meson patch which removes generate and
propagate Requires.provate.
In this case my patch is not to submit as meson PR because distribution on
which I'm working is that NONE of the packages with libraries and pkgconfig
files packages without static libraries variants.

When I'll test that all packages which are using build dependencies defined
as "pkgcobfig(foo)" still everything is working will try to submit above
patch as libcacard  PR/

I'm expecting that above meson issue
inconsistently implementation Requires.private may cause some other issues
but it is possible to see on meson issue ticket discussion has been locked
so this is not a but "feature".=F0=9F=99=81

kloczek
--=20
Tomasz K=C5=82oczko | LinkedIn: http://lnkd.in/FXPWxH

>
>>

--000000000000a832bf0604b61f5d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:monospace,monospace"><span style=3D"font-family:Arial,Helvetica,sa=
ns-serif">On Wed, 6 Sept 2023 at 18:15, Uri Lublin &lt;<a href=3D"mailto:ul=
ublin@redhat.com">ulublin@redhat.com</a>&gt; wrote:</span></div></div><div =
class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Wed, Sep 6, 2023 at 11:17=E2=80=AFAM Tomasz K=C5=82oczko &lt;<a href=
=3D"mailto:kloczko.tomasz@gmail.com" target=3D"_blank">kloczko.tomasz@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div style=3D"font-family:monospace,monospace">HI,</di=
v></div></blockquote><div><br></div><div>Hi,<br></div><div><br></div><div><=
div>What distribution are you building this on ?<br></div><div>Seems like t=
here is a problem with the libcacard-devel package.<br></div><div>Meson see=
ms to find it but libcacard.so is not found by the gcc command.</div></div>=
</div></div></blockquote><div><br></div><div class=3D"gmail_default" style=
=3D"font-family:monospace,monospace">MyOwn=E2=84=A2=EF=B8=8F=C2=A0=F0=9F=98=
=8B</div><div class=3D"gmail_default" style=3D"font-family:monospace,monosp=
ace"><br></div><div class=3D"gmail_default" style=3D"font-family:monospace,=
monospace">Please ignore this email.</div><div class=3D"gmail_default" styl=
e=3D"font-family:monospace,monospace">Issue already has been discussed, ude=
ntified and resoleved under=C2=A0<a href=3D"https://gitlab.freedesktop.org/=
spice/spice-gtk/-/issues/178">https://gitlab.freedesktop.org/spice/spice-gt=
k/-/issues/178</a><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:monospace,monospace">I found the issue=C2=A0with how the libcacard pkgco=
nfig file is generated. Below patch fixes issue.</div><div class=3D"gmail_d=
efault" style=3D"font-family:monospace,monospace"><br></div><div class=3D"g=
mail_default" style=3D"font-family:monospace,monospace">``patch</div><div c=
lass=3D"gmail_default" style=3D"font-family:monospace,monospace">--- a/meso=
n.build<br>+++ b/meson.build<br>@@ -88,8 +88,7 @@<br>=C2=A0)<br><br>=C2=A0p=
c =3D import(&#39;pkgconfig&#39;)<br>-pc.generate(<br>- =C2=A0libraries: li=
bcacard,<br>=C2=A0 =C2=A0requires_private: [&#39;glib-2.0&#39;],<br>+pc.gen=
erate(libcacard,<br>=C2=A0 =C2=A0subdirs: &#39;cacard&#39;,<br>=C2=A0 =C2=
=A0version: meson.project_version(),<br>=C2=A0 =C2=A0name: &#39;cacard&#39;=
,<br></div><div class=3D"gmail_default" style=3D"font-family:monospace,mono=
space">```</div><div class=3D"gmail_default" style=3D"font-family:monospace=
,monospace">Missing &quot;libcacard&quot; as the first parameter=C2=A0is ca=
using the &quot;Libs:&quot; line is generated=C2=A0.pc file=C2=A0is not gen=
erated.</div><div class=3D"gmail_default" style=3D"font-family:monospace,mo=
nospace"><br></div><div class=3D"gmail_default" style=3D"font-family:monosp=
ace,monospace">Additionally I just realised that case of interaction=C2=A0l=
ibcacard with spice-gtk exposed again meson issue which I&#39;ve reported i=
n=C2=A0<a href=3D"https://github.com/mesonbuild/meson/issues/12225">https:/=
/github.com/mesonbuild/meson/issues/12225</a> however in this case looks li=
ke meson developers do not understand difference between they assumptions a=
nd fact that I&#39;ve literally tested how pkgconfig is used by meson and r=
pm on scaLE OF WHOLE DISTRIBUTION.</div><div class=3D"gmail_default" style=
=3D"font-family:monospace,monospace"><br></div><div class=3D"gmail_default"=
 style=3D"font-family:monospace,monospace">So second part of the solution i=
s meson patch which removes generate and propagate Requires.provate.</div><=
div class=3D"gmail_default" style=3D"font-family:monospace,monospace">In th=
is case my patch is not to submit as meson PR because distribution on which=
 I&#39;m working is that NONE of=C2=A0the packages with libraries and pkgco=
nfig files packages without static libraries variants.</div><div class=3D"g=
mail_default" style=3D"font-family:monospace,monospace"><br></div><div clas=
s=3D"gmail_default" style=3D"font-family:monospace,monospace">When I&#39;ll=
 test that all packages which are using build dependencies defined as &quot=
;pkgcobfig(foo)&quot; still everything is working=C2=A0will try to submit a=
bove patch=C2=A0as libcacard=C2=A0 PR/</div><div class=3D"gmail_default" st=
yle=3D"font-family:monospace,monospace"><br></div><div class=3D"gmail_defau=
lt" style=3D"font-family:monospace,monospace">I&#39;m expecting that above =
meson issue inconsistently=C2=A0implementation=C2=A0Requires.private may ca=
use some other=C2=A0issues but it is possible to see on meson issue ticket =
discussion has been locked so this is not a but &quot;feature&quot;.=F0=9F=
=99=81</div><div class=3D"gmail_default" style=3D"font-family:monospace,mon=
ospace"><br></div><div class=3D"gmail_default" style=3D"font-family:monospa=
ce,monospace">kloczek</div><div class=3D"gmail_default" style=3D"font-famil=
y:monospace,monospace"><div dir=3D"ltr" style=3D"font-family:Arial,Helvetic=
a,sans-serif"><font face=3D"monospace, monospace">--=C2=A0</font></div><div=
 dir=3D"ltr" style=3D"font-family:Arial,Helvetica,sans-serif"><font face=3D=
"monospace, monospace">Tomasz K=C5=82oczko | LinkedIn:=C2=A0<a href=3D"http=
://lnkd.in/FXPWxH" target=3D"_blank" style=3D"text-decoration-line:none"><s=
pan style=3D"font-size:13px;background-color:transparent;text-decoration-li=
ne:underline;vertical-align:baseline">http://lnkd.in/FXPWxH</span></a></fon=
t></div></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div dir=3D"ltr" class=3D"gmail_signature"><div di=
r=3D"ltr"><div dir=3D"ltr"><font face=3D"monospace, monospace"><b style=3D"=
font-weight:normal"><br></b></font></div></div></div></div>
</blockquote></div></div>
</blockquote></div></div>

--000000000000a832bf0604b61f5d--
