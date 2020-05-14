Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AB71D2FD8
	for <lists+spice-devel@lfdr.de>; Thu, 14 May 2020 14:33:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9451A6EB2B;
	Thu, 14 May 2020 12:33:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E9E26EB2B
 for <spice-devel@lists.freedesktop.org>; Thu, 14 May 2020 12:33:05 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id l17so3847290wrr.4
 for <spice-devel@lists.freedesktop.org>; Thu, 14 May 2020 05:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=JLhp2vULdZgN4Bewjkgu7JNa0F8oPvfjKVXgLuOZ1EM=;
 b=Ns04MpAirARIP7YciR5q70bx6zoK/keE9qMTdIbOwtzDvjfnKw3Uu5xNkt4zepAC0K
 LmOFWTum0DB7auuiK0CuH/qpZHl5/KmSlx+a1MjXa5MY3ha9RIK1DuShjFogbSAUXWc5
 v+2dmdQUnl8KVKsBPqvUPJqr7nlEkpG9pUgVDhRHxuvtKaASHn5S7vwKepRiSSr5BPCk
 +or8rCyOxtnPsJ0vY35tUiBK8pJP2UA+ZTkDFbVQSs5LPDhmrM4gH/mCkqQPXVyf4b0V
 CF7FZaZ0ivCMkTkVmbprbmdN0SFYRMmRL2SCGoq63MeZkwHUvo42bBySZYnY3ykUqLII
 Zy7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=JLhp2vULdZgN4Bewjkgu7JNa0F8oPvfjKVXgLuOZ1EM=;
 b=A9EiGnUXUk/+aeYEWD5PxitWucXYyYF+B8YfYqiS+T50UZMSgmDKRz9ZxAvaID49tx
 diFLgXyMs6bDphHZiFeGlM1TBRGk7SKQ7JHd1Pw6Ql3mOcliOzG3hw+bPegorUsI76Fo
 O994zGIMPF5hmRGzzH9rrQ4dPZDJ8tFoaPe0ugTUonmVdy+pjPsZhTvJXuzh89JdinzJ
 r5jjVd+HFaB/ZwHXCciZs474+DRA7H6BtFSzgblpZhIQ0UJnEP83jPt1trn/+xD3Qg43
 3nS/TgY29B70Cy50cOLHfT9YM3vmHtPAMxxchcd0IFBXAz+8wcreRIJ0LZP2znmq71yf
 wEGw==
X-Gm-Message-State: AOAM530sDR7g93eYLqDHtQcMjSNuemveOKDBtEf/o0PbPA4zNifkRIZe
 hJYM0m84yURekcbBsZgUaVLbB5BuCXJa8iGth05CkBIqlY0=
X-Google-Smtp-Source: ABdhPJw9Lv6XpflUtmqzo0NeVebv1SENBSRdVOvYjEh/e/ybCJCnk4NW2wPG/ZmAVmRB574ojWAmJz3SW60nluwB2jI=
X-Received: by 2002:adf:ec45:: with SMTP id w5mr5388992wrn.96.1589459583037;
 Thu, 14 May 2020 05:33:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAMxuvawzmqKdLwk6AvthZkmZTr9T+q+UU8Q+raVHj0nZ2swhiw@mail.gmail.com>
In-Reply-To: <CAMxuvawzmqKdLwk6AvthZkmZTr9T+q+UU8Q+raVHj0nZ2swhiw@mail.gmail.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 14 May 2020 14:32:50 +0200
Message-ID: <CAJ+F1CKCb=Kj7MqE0Jz3uNmBVvguB5_jbm7DWsNeMdKEsv5FdQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1175373366=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1175373366==
Content-Type: multipart/alternative; boundary="000000000000d4f5ed05a59ae5a0"

--000000000000d4f5ed05a59ae5a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

On Mon, May 11, 2020 at 12:16 PM Marc-Andr=C3=A9 Lureau <
marcandre.lureau@redhat.com> wrote:

> Hi,
>
> About "Move code to C++":
> https://gitlab.freedesktop.org/spice/spice/-/merge_requests/62
>
> I would like to know how the decision happened. As long as I have been
> involved in the Spice project, we had open discussions and did
> mandatory review for anything non-trivial.
>
> This change is substantial, and impacts the work and contribution of
> others. Where did the discussion happen? Who reviewed the code
> changes?
>
>
Since no real discussion nor public review took place, I propose to revert
the change and add a HACKING file to make the rules clear. See:

https://gitlab.freedesktop.org/spice/spice/-/merge_requests/91

Frediano, I suggest you open a thread about switching the code to c++.

thanks

--=20
Marc-Andr=C3=A9 Lureau

--000000000000d4f5ed05a59ae5a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi<br></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 11, 2020 at 12:16 PM Ma=
rc-Andr=C3=A9 Lureau &lt;<a href=3D"mailto:marcandre.lureau@redhat.com">mar=
candre.lureau@redhat.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">Hi,<br>
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
itlab.freedesktop.org/spice/spice/-/merge_requests/91">https://gitlab.freed=
esktop.org/spice/spice/-/merge_requests/91</a></div><div><br></div><div>Fre=
diano, I suggest you open a thread about switching the code to c++.</div><d=
iv><br></div><div>thanks<br></div><br></div>-- <br><div dir=3D"ltr" class=
=3D"gmail_signature">Marc-Andr=C3=A9 Lureau<br></div></div>

--000000000000d4f5ed05a59ae5a0--

--===============1175373366==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1175373366==--
