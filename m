Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E584422DF82
	for <lists+spice-devel@lfdr.de>; Sun, 26 Jul 2020 15:36:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71A7489E0D;
	Sun, 26 Jul 2020 13:36:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D628089E0D
 for <spice-devel@lists.freedesktop.org>; Sun, 26 Jul 2020 13:36:15 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id q17so6746432pls.9
 for <spice-devel@lists.freedesktop.org>; Sun, 26 Jul 2020 06:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zoup-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d/e+QaNtrMYkJluXf5gPvdkI4CA2KhNTx0AkLM+y+EM=;
 b=hhNz69JVEvyafChfv0rAXK3g9xsF6fPfIxTRd+CimL9pzhE6c2B6LTgBzKSFUEpMsb
 6z377jvuivK75zrTng8AMFNBSADDpjprtxapWA8tqSvfpRHIkDdvTDpS55qzRs9O8GOo
 V10Z9d+qdchjUcY31GfVZ3jjmZHgNErpGIffBct1MMxCvNYyXI5T/479kvZSFyc/Oduc
 nGnkcnKIgSWb3mRXMRSEzf2GaijMuUnixxvQ3cRvreRNhjInrDEikBcWNvr/9AUAyoXt
 AGiJgN06supAyWjm5onyndOvgY4BFBuQPNMUVVcqO26/2hTxqvPmf57kZSFhEcq8DdGK
 Qw1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d/e+QaNtrMYkJluXf5gPvdkI4CA2KhNTx0AkLM+y+EM=;
 b=mz04/FsKr3yR3fl9Q1r6nNkvJ6VncIH0XJ6YNKCZMJJCRLWJMM0sMKw1Sj9B6X6XvI
 Fmsm5VZOCYVLcTs8hOW0KOGqzcRfZelNaL9whk/Meno0/ZKhv5gGzZUuBtBBgs1yaQpx
 QVcMD0403iHuytoxM75DBLmPWadMO5alMxAtKMhmOble9iKccOZRCu14G8fFclHa6osW
 FrCv8vYJm6BzNPvgUWZGWzNfB4babwNknc8026Cp8G0kT1wGgARHyj/gOkCqhRjcv2Rr
 P/4dQHYtQQrw8T/dEs9sxdPhzQbaMvKrgYht3TPbj0T/lYPY3v3OyobiZ5PTR/1YCAEM
 IqpA==
X-Gm-Message-State: AOAM530yzEQTmjFc/CmcUCFYoVbHhDcx225+LksiLWN9ZP06IYo6sIN4
 dhMcwBwYm50l2Ww5WYrYCKH3cPJECbj54mAOCChVjQ==
X-Google-Smtp-Source: ABdhPJyHlUg1eANJfSx50OQ+R5jNkcCvAQYH3M2DqLlfjdVg70fRM1knAnBrz5UAD3lcuw7vRPYswdRCp3cgT4vulYk=
X-Received: by 2002:a17:902:10e:: with SMTP id
 14mr14683554plb.297.1595770575239; 
 Sun, 26 Jul 2020 06:36:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAOvx4-3XCxvmZCa+77Zt4eJAV0qMbuZtu0ZSYYYLfmp5jhmkpA@mail.gmail.com>
 <5c38c86c-76b3-ad20-37e4-35b5ac376fa8@redhat.com>
In-Reply-To: <5c38c86c-76b3-ad20-37e4-35b5ac376fa8@redhat.com>
From: Armin Ranjbar <zoup@zoup.org>
Date: Sun, 26 Jul 2020 18:06:03 +0430
Message-ID: <CAOvx4-2n=ZfZi-5=1QgBzCD-sFRnR=EC1UQN3YHT3GGUryNygg@mail.gmail.com>
To: uril@redhat.com
Subject: Re: [Spice-devel] spice-streaming-agent, the motivation and drive
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
Cc: Spice List <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0525312073=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0525312073==
Content-Type: multipart/alternative; boundary="00000000000047d3f505ab584a68"

--00000000000047d3f505ab584a68
Content-Type: text/plain; charset="UTF-8"

Thanks for the Info,

looking at the code, it seems support for running the streaming agent on
windows is not yet implemented, is there a blocker to this? (excluding the
build scripts, etc)

---
Armin ranjbar



On Sun, Jul 26, 2020 at 5:18 PM Uri Lublin <uril@redhat.com> wrote:

> On 7/25/20 6:43 PM, Armin Ranjbar wrote:
> > Dear All
> >
> > First of all, let me thank you again for your efforts!
> >
> > I was reading on spice-streaming-agent, which is in experimental stage,
> and
> > I was wondering what is the driver behind the idea?
> > Will that lead to less bandwidth consumption? less latency? or is it
> just a
> > refactoring to make the codebase cleaner?
>
> Hi,
>
> It is possible to configure a VM with a hardware GPU (either assign the
> whole
> device to the VM or a part of it).
> That is helpful for running, on the guest, applications that require such
> strong GPU (e.g. 3D graphics).
> When that is the case, spice-streaming-agent can use the GPU
> on the guest
> to stream video (encode the screenbuffer and send it).
> This is what spice-streaming-agent does and it indeed leads to less
> bandwidth used.
>
> Uri.
>
>

--00000000000047d3f505ab584a68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the Info,<div><br></div><div>looking at the cod=
e, it seems support for running the streaming agent on windows is not yet i=
mplemented, is there a blocker to this? (excluding the build scripts, etc)<=
/div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature"=
 data-smartmail=3D"gmail_signature"><div dir=3D"ltr">---<br>Armin ranjbar<b=
r><div><br></div></div></div></div><br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jul 26, 2020 at 5:18 P=
M Uri Lublin &lt;<a href=3D"mailto:uril@redhat.com">uril@redhat.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 7/25/=
20 6:43 PM, Armin Ranjbar wrote:<br>
&gt; Dear All<br>
&gt; <br>
&gt; First of all, let me thank you again for your efforts!<br>
&gt; <br>
&gt; I was reading on spice-streaming-agent, which is in experimental stage=
, and<br>
&gt; I was wondering what is the driver behind the idea?<br>
&gt; Will that lead to less bandwidth consumption? less latency? or is it j=
ust a<br>
&gt; refactoring to make the codebase cleaner?<br>
<br>
Hi,<br>
<br>
It is possible to configure a VM with a hardware GPU (either assign the <br=
>
whole<br>
device to the VM or a part of it).<br>
That is helpful for running, on the guest, applications that require such<b=
r>
strong GPU (e.g. 3D graphics).<br>
When that is the case, spice-streaming-agent can use the GPU<br>
on the guest<br>
to stream video (encode the screenbuffer and send it).<br>
This is what spice-streaming-agent does and it indeed leads to less <br>
bandwidth used.<br>
<br>
Uri.<br>
<br>
</blockquote></div>

--00000000000047d3f505ab584a68--

--===============0525312073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0525312073==--
