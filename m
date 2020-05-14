Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2251D2F26
	for <lists+spice-devel@lfdr.de>; Thu, 14 May 2020 14:08:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C4DE6E33A;
	Thu, 14 May 2020 12:08:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC6386E33A
 for <spice-devel@lists.freedesktop.org>; Thu, 14 May 2020 12:08:19 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id f13so1652909wmc.5
 for <spice-devel@lists.freedesktop.org>; Thu, 14 May 2020 05:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NIwTvmOry6XZkjLUpp54hoJGGDK/12/3ORbKd7iscgY=;
 b=O5PSxr7/wHeyqnTQQJWGX/nbROnYSxCkqbG/JL0gRmLqlo/2IkMFKb8qwuMHXUaqad
 RuC/xLjCEeTw7spkIpjCFr5caRyQd0nblLm8vMel8tZz6blbo1Ao4rnCzrL/u58PQcvV
 j8oTE+QxqxWzrh8XDzayhq3O/S2pQEfsxG+Gh88+bdojnHjs5t37ivVWq12BWMmro5gj
 KyJXPS8OuV45qtA1TXfR/4ohvB00Z3DcRkgDAqY9XwBGKw8E7M0XHQImxGY4mNpH42d/
 PYhs729TlBoPge6gHDm1KTkNrFxhqERk9+eBDFlmLuFjYv78mk8eiSKNgv9vDz5byv4o
 WF9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NIwTvmOry6XZkjLUpp54hoJGGDK/12/3ORbKd7iscgY=;
 b=n8/gqgA0uuJM2CSI6dQM6QgERLqH2+anQ1npJj0IQcCqLBWx/Fdrj2Cc6nsvfKZIaE
 xwDlqBeunRZP6YhIjxDUPVtpLEtd6YbGbcgACLiM/csWsx5/HrWv75OXgO1DHLf1cXOt
 oQ8BE2rterc1WdKfG5qeAQMZwb/jrP4eXWfrGys60ErPbKupl9No+PFnXW3VnT+cmFyd
 eTrT7EIpBsqZxJEbMi/zCJhNXhsQhCnoOp7m8My46QQvbcxoayQ3lG/48P1ssuUHdaSV
 /gNG11XpA7On+1q+QVzkiv866nRKiDoWewK0xdWLd1JMpA7v4eeRIB0/zM8tEDgwRm92
 EgeA==
X-Gm-Message-State: AGi0PuZGSEYSXSFlOM2dfS0WHDRT5w1muQtMWwEx/2S2sMRMDBTVeKDi
 Mvd8oDlRoaK4z+hNfkf5W37VmYA44U5CoAD5uUc=
X-Google-Smtp-Source: APiQypJ1pM2c/6TtFtCUvp1ioPi5wgGj6cw3BbBRlnE79R3Y8FL+NCzJQcWcVA3db1QPHQV09xmE45eJcxoZ/vnQtPw=
X-Received: by 2002:a1c:4641:: with SMTP id t62mr20977591wma.37.1589458098617; 
 Thu, 14 May 2020 05:08:18 -0700 (PDT)
MIME-Version: 1.0
References: <a001cb4e-31a5-ecf2-e8b8-8a8aac17ad24@thinsia.com>
In-Reply-To: <a001cb4e-31a5-ecf2-e8b8-8a8aac17ad24@thinsia.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 14 May 2020 14:08:06 +0200
Message-ID: <CAJ+F1C+48MEKqv7F=qRbE2jaMbcV3XBd5xyj1rReA2PocFxF3g@mail.gmail.com>
To: sassen@thinsia.com
Subject: Re: [Spice-devel] Spice status
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1773646870=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1773646870==
Content-Type: multipart/alternative; boundary="0000000000005a837d05a59a8d91"

--0000000000005a837d05a59a8d91
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

On Thu, May 14, 2020 at 1:06 PM Roland Sassen <sassen@thinsia.com> wrote:

> can you please give me a short update about Spice?
>
> 1    status quo
> 2    roadmap
> 3    how many people work on the project
>

It's not easy to answer such question, but it's an open-source project.

You may have a measure of the work being done by looking at the gitlab
pages/issues, mailing list activity and the git repository statistics.

https://gitlab.freedesktop.org/spice


4    support for mobile phones
>

Clients exist on Android. I am not aware of MacOS solution.

I am not aware of remoting a phone UI either.


> 5    video from mobile phones
>

What do you mean? Playback of video on mobile phones should work. Recording
of video isn't probably possible, since afaik the only solution with Spice
today is to use USB passthrough.

--=20
Marc-Andr=C3=A9 Lureau

--0000000000005a837d05a59a8d91
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi<br></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 14, 2020 at 1:06 PM Rol=
and Sassen &lt;<a href=3D"mailto:sassen@thinsia.com">sassen@thinsia.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20

   =20
 =20
  <div>
    <div>can
      you please give me a short update about Spice?</div>
    <div><br>
    </div>
    <div>1=C2=A0=C2=A0=C2=A0
      status quo</div>
    <div>2=C2=A0=C2=A0=C2=A0
      roadmap</div>
    <div>3=C2=A0=C2=A0=C2=A0
      how many people work on the project</div></div></blockquote><div><br>=
</div><div>It&#39;s not easy to answer such question, but it&#39;s an open-=
source project.<br></div><div><br></div><div>You may have a measure of the =
work being done by looking at the gitlab pages/issues, mailing list activit=
y and the git repository statistics.</div><div><br></div><div><a href=3D"ht=
tps://gitlab.freedesktop.org/spice">https://gitlab.freedesktop.org/spice</a=
></div><div><br></div><div> <br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div>
    <div>4=C2=A0=C2=A0=C2=A0
      support for mobile phones</div></div></blockquote><div><br></div><div=
>Clients exist on Android. I am not aware of MacOS solution.</div><div><br>=
</div><div>I am not aware of remoting a phone UI either.<br></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>
    <div>5=C2=A0=C2=A0=C2=A0
      video from mobile phones<br></div></div></blockquote><div><br></div><=
div>What do you mean? Playback of video on mobile phones should work. Recor=
ding of video isn&#39;t probably possible, since afaik the only solution wi=
th Spice today is to use USB passthrough.<br></div><div> <br></div></div>--=
 <br><div dir=3D"ltr" class=3D"gmail_signature">Marc-Andr=C3=A9 Lureau<br><=
/div></div>

--0000000000005a837d05a59a8d91--

--===============1773646870==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1773646870==--
