Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 070991D33C3
	for <lists+spice-devel@lfdr.de>; Thu, 14 May 2020 16:58:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 734496E369;
	Thu, 14 May 2020 14:58:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 600B36E369
 for <spice-devel@lists.freedesktop.org>; Thu, 14 May 2020 14:58:34 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id k12so30745812wmj.3
 for <spice-devel@lists.freedesktop.org>; Thu, 14 May 2020 07:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=keo4r46875Mz9UTX78kZwPSiaTfSENDZ7+x7qe3qefM=;
 b=ARqQXfpZee04yLJRrzCqh886DxKdWyIHclckcN3HR9h8Ux9DVHVF3UnTFltLbu28hf
 KpuYoZ7LBlXS1+cQvuGMCOTScGiTckQ0qW2XMIJqWZ42BtMo2y6mvSp2+oF+5x/CFP3t
 nitF+Rn0Jy7VX+PCgTA2UVSyKbKA45Kxe6KMY2CnL83FYG2GgLqa98xymKvp3P+ppaJ6
 atpL6T0NRK5oeo8kedD/pbdscIonL6dDeETATgky43qGzAV32xOOoPEJac9NDkvbV0Eq
 IET5/ssVcrKO5jFiNk2Vjr0s0yn83IlAvK3WvoHKZ0B9mFjqRbFvo7L+iC4eQXJ8GgOb
 mg+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=keo4r46875Mz9UTX78kZwPSiaTfSENDZ7+x7qe3qefM=;
 b=Dr+PXXWAzkcF5sfw+x1OQ8jGQk3hiBOU1A+CLaNvttUJhcOloMIKKu/Mry6e7eU+9m
 nsLmCu13jh/DrA+MOJReoBE64QERFib92zDFGZ9jv8pzfw2+bM7X+xdcBVfNPqc1C0ho
 VY+EBiBW7T87QZ3RnThvhK/vg64Pi1E83wDk4Zl53TrL4z8Ud4zYYwHpuQX3xO+K+R05
 elQdw2QdKcxblXkF59iyZNhp1hO0F77bkQXiDGP5yC8mvlKOrv2fLM6YJaZMcFArhAXK
 N/vEeaphl1kvY+a1xvDVlKQ9/jA1Mqgdsn5GTHgj5hRJVKAiFZGK1EsvEBtgZt4tdEdj
 V0hQ==
X-Gm-Message-State: AGi0PuYL3OBmrxEfI3LpYy5D8I1m99xsnYtQJUuTEtxmhpC6qSU8TyG6
 +JAA7p5TlQg41DG7ZvN60b5ljIrVHjJXZkod/9r8RxnnoH4=
X-Google-Smtp-Source: APiQypI1xDxmy6SkLDxN15uqTjEuMYEKU4KUTh2nVMiB4RbKS6z24xKdMV8U9JTVy3+4RDaNWkg3/acYJMUDBvwApTg=
X-Received: by 2002:a1c:9cd4:: with SMTP id f203mr25720783wme.26.1589468311510; 
 Thu, 14 May 2020 07:58:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAMxuvawzmqKdLwk6AvthZkmZTr9T+q+UU8Q+raVHj0nZ2swhiw@mail.gmail.com>
 <CAJ+F1CKCb=Kj7MqE0Jz3uNmBVvguB5_jbm7DWsNeMdKEsv5FdQ@mail.gmail.com>
In-Reply-To: <CAJ+F1CKCb=Kj7MqE0Jz3uNmBVvguB5_jbm7DWsNeMdKEsv5FdQ@mail.gmail.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 14 May 2020 16:58:18 +0200
Message-ID: <CAJ+F1CJFkBL6OQOzdrrXkW7zyvELfe-RX_c4RB7FUnRAK1Ec-g@mail.gmail.com>
To: spice-devel <spice-devel@lists.freedesktop.org>,
 Frediano Ziglio <fziglio@redhat.com>
Subject: Re: [Spice-devel] About decisions and reviews
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
Content-Type: multipart/mixed; boundary="===============1680570722=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1680570722==
Content-Type: multipart/alternative; boundary="00000000000016e6a905a59ceee7"

--00000000000016e6a905a59ceee7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

On Thu, May 14, 2020 at 2:32 PM Marc-Andr=C3=A9 Lureau <
marcandre.lureau@gmail.com> wrote:

> Hi
>
> On Mon, May 11, 2020 at 12:16 PM Marc-Andr=C3=A9 Lureau <
> marcandre.lureau@redhat.com> wrote:
>
>> Hi,
>>
>> About "Move code to C++":
>> https://gitlab.freedesktop.org/spice/spice/-/merge_requests/62
>>
>> I would like to know how the decision happened. As long as I have been
>> involved in the Spice project, we had open discussions and did
>> mandatory review for anything non-trivial.
>>
>> This change is substantial, and impacts the work and contribution of
>> others. Where did the discussion happen? Who reviewed the code
>> changes?
>>
>>
> Since no real discussion nor public review took place, I propose to rever=
t
> the change and add a HACKING file to make the rules clear. See:
>
> https://gitlab.freedesktop.org/spice/spice/-/merge_requests/91
>


I propose a spice-space page derived from libvirt "Project governance":
https://gitlab.freedesktop.org/spice/spice-space-pages/-/merge_requests/18

(readable version
https://gitlab.freedesktop.org/spice/spice-space-pages/-/blob/9a1907de182f9=
f64450a7348e9e6a1423dfa580a/governance.rst
)

--00000000000016e6a905a59ceee7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi<br></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 14, 2020 at 2:32 PM Mar=
c-Andr=C3=A9 Lureau &lt;<a href=3D"mailto:marcandre.lureau@gmail.com">marca=
ndre.lureau@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi<br></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 11=
, 2020 at 12:16 PM Marc-Andr=C3=A9 Lureau &lt;<a href=3D"mailto:marcandre.l=
ureau@redhat.com" target=3D"_blank">marcandre.lureau@redhat.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
About &quot;Move code to C++&quot;:<br>
<a href=3D"https://gitlab.freedesktop.org/spice/spice/-/merge_requests/62" =
rel=3D"noreferrer" target=3D"_blank">https://gitlab.freedesktop.org/spice/s=
pice/-/merge_requests/62</a><br>
<br>
I would like to know how the decision happened. As long as I have been<br>
involved in the Spice project, we had open discussions and did<br>
mandatory review for anything non-trivial.<br>
<br>
This change is substantial, and impacts the work and contribution of<br>
others. Where did the discussion happen? Who reviewed the code<br>
changes?<br>
<br></blockquote><div><br></div><div>Since no real discussion nor public re=
view took place, I propose to revert the change and add a HACKING file to m=
ake the rules clear. See:<br></div><div><br></div><div><a href=3D"https://g=
itlab.freedesktop.org/spice/spice/-/merge_requests/91" target=3D"_blank">ht=
tps://gitlab.freedesktop.org/spice/spice/-/merge_requests/91</a></div></div=
></div></blockquote><div><br></div><div><br></div><div>I propose a spice-sp=
ace page derived from libvirt &quot;Project governance&quot;: <a href=3D"ht=
tps://gitlab.freedesktop.org/spice/spice-space-pages/-/merge_requests/18">h=
ttps://gitlab.freedesktop.org/spice/spice-space-pages/-/merge_requests/18</=
a></div><div><br></div><div></div><div>(readable version <a href=3D"https:/=
/gitlab.freedesktop.org/spice/spice-space-pages/-/blob/9a1907de182f9f64450a=
7348e9e6a1423dfa580a/governance.rst">https://gitlab.freedesktop.org/spice/s=
pice-space-pages/-/blob/9a1907de182f9f64450a7348e9e6a1423dfa580a/governance=
.rst</a>)</div></div></div>

--00000000000016e6a905a59ceee7--

--===============1680570722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1680570722==--
