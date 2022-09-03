Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9854C5ABF8C
	for <lists+spice-devel@lfdr.de>; Sat,  3 Sep 2022 17:30:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5BD10E9EF;
	Sat,  3 Sep 2022 15:30:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7603110E9EF
 for <spice-devel@lists.freedesktop.org>; Sat,  3 Sep 2022 15:30:42 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 c131-20020a1c3589000000b003a84b160addso4379203wma.2
 for <spice-devel@lists.freedesktop.org>; Sat, 03 Sep 2022 08:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date;
 bh=jJqid5OueciKVTPkCv5W+GKFdwzSKJVqi+jR0JvElIQ=;
 b=LNpZ52e3Rhx2VdfHR/0lncTOQYvO75He1TeK9IZ5txrX86einUdjNhJjQhGFJvI/WQ
 FmWCGOo+/az1MJJ8DJwAIEDUwWFOb8JufhjtSxJSv7yZsms0LIyTvr6SkaIMnRA4RkQP
 oDgLGEGiCGqh3qn2PUxVpa+83ZV88iDNFLyaQ3E/XeIMLRnAZMoR0oudWhb/uRc8w6eV
 3cReHSCIA/JUhggoEteqj43d1siMlxfSbO3dOk0RpY/Sg+/ogJ9zWLdqAH3Tq7fMYsQb
 CUk7M5mwlljP7c7pAEZOuEYP1N9VBBL+OLvyeAUfW5os/hRP02gelCtArNPIjoboI/ap
 bgrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date;
 bh=jJqid5OueciKVTPkCv5W+GKFdwzSKJVqi+jR0JvElIQ=;
 b=KjyKkJCWf98LWy/j9jAgtkaayT4ep4Ai/rMK8sqQ5/baUXoW8WXy0TyX8HS/oCVpb+
 pwoiLHwJqagYU6ArxlNQwNINnVgKPPcsIZDH4zJMXfGU9b8F2Q8OQP4tThKVaMJXjD/w
 Z6PlMhUK5MdFFE2qYShKWPBJ+Qbb0LB43vwO68JNPwP++sfAV3YP51c9x1/fXGDSTQFP
 qD8RtmO3NejG3rP6+BY595I6xpYa5aL41Ft1ExzsOayHV114Tf+Brv1XXWSmsuu82Isv
 I/yKkQ20nRGZ21zQ3AaTEzQXrOfSZImBFF36Xhkl0AhoRvIA8/PYLY4z1CyoJ/1iGSHD
 M+OA==
X-Gm-Message-State: ACgBeo1AEUX3xA5582yHe2e2tw9JZ6MluvrbC6hR+AN0mGGL/NPWdeq6
 OH4grMC1eVpPw7s+7ojz9s0svWni/55aGwuK9Af6omMNxBk=
X-Google-Smtp-Source: AA6agR4fga+huQOhmqEIAU0FlIEqXCOqdTjAWjDgiVgU81w+NjjOm+0L5HPgGzQ6YTJKiT2gT3ERo4ZMnCxLVUZMaP8=
X-Received: by 2002:a1c:7414:0:b0:3a5:fd9e:e629 with SMTP id
 p20-20020a1c7414000000b003a5fd9ee629mr6324233wmc.194.1662219040197; Sat, 03
 Sep 2022 08:30:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAGeBE=yhPCXNeR72Oiy83yS+gC+P82_tSX59XQ4dSvUMDHJGRA@mail.gmail.com>
 <20220902065324.kqoezlbkidndyx4m@tapioca>
 <CAGeBE=z8ee5V4_fT7rxOnaE_6g5idXke3UMLeQw3G-DGSADwfw@mail.gmail.com>
 <CAHt6W4cbdzRuo1Fkvi7fY+xrVSMf3HxP=F3-Z7Ej=R=mgZGFgg@mail.gmail.com>
In-Reply-To: <CAHt6W4cbdzRuo1Fkvi7fY+xrVSMf3HxP=F3-Z7Ej=R=mgZGFgg@mail.gmail.com>
From: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Date: Sat, 3 Sep 2022 15:30:27 +0000
Message-ID: <CAGeBE=xEXafWkdBfL8Qn+ynx3eP1a5W1Rg9D68DfZsJ9Rj9wuA@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000006e11e605e7c787b0"
Subject: Re: [Spice-devel] qxldod driver for Windows 11
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

--0000000000006e11e605e7c787b0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

First, thanks *very* much for your complete explanations, and at the same
time offering apologies. Not justifiable, but I was kind of anxious and a
bit desperate of finally setting up a win11 VM with SPICE just the way I
did with win10.

I think this is already well known but, why SPICE? For me, because of all
the following features:
---Graphic acceleration --even if just 2D, QXL worked *far* better than any
other available virtual driver
---All the paravirtualized drivers, which are still offering the best
performance
---Easy USB and sound redirection
---Clipboard sharing
---Copy-and-paste --even if just files and only from host to guest
---Automatic resolution resizing with SPICE window
And perhaps other ones I may be already forgetting...

I already know what's said about software in general, that it's big enough
and *always* comes and goes. But now that SPICE in general is dead, or in
the process of, it'll take many years for another entire solution offering
*all* these features to appear.

I no longer want to set up windows VMs with generic virtualized drivers,
and all what you just explained further supports this way of thinking.

So, humbly trying to ask here, what else can I do? Or where else to try
asking?

Thanks very much and apologies again.

P.S.: small offtopic: I'm also having problems trying to set up TPM2
emulation for win11 VM, using swtpm package. I think the author, user
"stefanb", is an IBM employee, but employees never offer free support...
Where could I ask for support with this? Thanks again.

El s=C3=A1b, 3 sept 2022 a las 6:38, Frediano Ziglio (<freddy77@gmail.com>)
escribi=C3=B3:

> Il giorno ven 2 set 2022 alle ore 22:23 Carlos Gonz=C3=A1lez
> <piteccelaya@gmail.com> ha scritto:
> >
> > So the "rumors" are true: you (in general) really did discontinue/kill
> the qxl drivers, if not the entire SPICE project soon. Was it because IBM=
?
> Since being sold to them the first one to die was Centos, now this...
> >
>
> Hi Carlos,
>    In Italy we use the expression "=C3=88 come sparare sulla Croce Rossa"
> (more or less "it's like shooting at the Red Cross").
> It's like accusing a doctor trying to save a life that it's trying to
> kill somebody.
> As Victor is actively contributing to SPICE as a developer (you can
> find multiple recent emails and commits in this ML and related
> projects without much effort) is not kind to point fingers.
>
> > FYI:
> >
> https://gist.github.com/pojntfx/b860e123e649504bcd298aa6e92c4043#file-mai=
n-sh-L32
> >
> https://lists.freedesktop.org/archives/virglrenderer-devel/2021-January/0=
01897.html
> > virtio-gpu implies virgl, and currently only works on Linux guests;
> RedHat people explicitly deemed the Windows work "not worthy".
> >
>
> Let's get back to the technical side of this thread.
> That's not entirely true. Virgl it's an "option" to virtio-gpu. By
> default Virgl is not enabled. Virgl adds 3D support to Qemu virtual
> cards, as far as I know it's the only virtual GPU (bypass are not
> virtual) in Qemu supporting 3D. Although QXL was born alongside SPICE
> while Virgl is more related to Qemu directly, efforts were made to
> support all features QXL provides using virtio-gpu. So the technical
> suggestion Victor gave is not against SPICE. You have also to consider
> the way QXL works and how the graphics software stacks evolved in
> time. QXL design it's 2D only, supporting a lot of specific commands
> and options for Windows 95/98/XP. Yes, you read well, Windows XP...
> which was declared unsupported 12 years ago! At that time OSes relay
> to the GPU plenty of complex 2D commands. Nowadays most OSes (if not
> all but surely Linux, Windows and Mac) use 3D commands for everything,
> and many brushes, raster operations and similars are long since gone.
> Taken all that into account, with a modern OS the commands QXL and
> virtio-gpu use are basically the same.
>
> > Thanks for killing the project.
> >
>
> Now let's get back to the less technical.
> Beside reiterating that pointing fingers to Victor is not fair nor kind..=
.
> Yes, SPICE was, company wise, well founded and supported by Red Hat
> (which _had_ a specific team for it). After RedHat was acquired by IBM
> some investments were moved from desktop side to the cloud. More or
> less RedHat/IBM thinks that spending money on Linux desktop is not
> worth much. That includes SPICE, Virgl and Windows drivers but others.
>
> Regards,
>   Frediano
>
> > El vie, 2 sept 2022 a las 6:53, Victor Toso (<victortoso@redhat.com>)
> escribi=C3=B3:
> >>
> >> Hi Carlos,
> >>
> >> On Fri, Sep 02, 2022 at 12:08:04AM +0000, Carlos Gonz=C3=A1lez wrote:
> >> > I downloaded latest virtio-win ISO, and by browsing it I
> >> > noticed that, unlike the other drivers, for the qxldod one
> >> > there's only up to win10, and no explicit win11 versions.
> >> >
> >> > Does this mean that there are no drivers for Windows 11, and no
> >> > possibility of setting up a VM with full SPICE support?
> >> >
> >> > Thanks beforehand.
> >>
> >> You are correct, the last cycle of development was focused for
> >> windows 10.
> >>
> >> I expect windows 11 to maintain some compatibility with windows
> >> 10 so the drivers should work to some extent but I did not test
> >> it.
> >>
> >> I'd not hope for further development on qxl unless there is
> >> someone interested in investing time on it (and it would take
> >> some time).
> >>
> >> I'd instead switch to virtio-vga / virtio-gpu as this seems to
> >> have an active community.
> >>
> >>     https://github.com/virtio-win/kvm-guest-drivers-windows
> >>
> >> Cheers,
> >> Victor
>

--0000000000006e11e605e7c787b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>First, thanks *very* much for your complete explanati=
ons, and at the same time offering apologies. Not justifiable, but I was ki=
nd of anxious and a bit desperate of finally setting up a win11 VM with SPI=
CE just the way I did with win10.</div><div><br></div><div>I think this is =
already well known but, why SPICE? For me, because of all the following fea=
tures:</div><div>---Graphic acceleration --even if just 2D, QXL worked *far=
* better than any other available virtual driver</div><div>---All the parav=
irtualized drivers, which are still offering the best performance<br></div>=
<div>---Easy USB and sound redirection</div><div>---Clipboard sharing</div>=
<div>---Copy-and-paste --even if just files and only from host to guest</di=
v><div>---Automatic resolution resizing with SPICE window</div><div>And per=
haps other ones I may be already forgetting...</div><div><br></div><div>I a=
lready know what&#39;s said about software in general, that it&#39;s big en=
ough and *always* comes and goes. But now that SPICE in general is dead, or=
 in the process of, it&#39;ll take many years for another entire solution o=
ffering *all* these features to appear.</div><div><br></div><div>I no longe=
r want to set up windows VMs with generic virtualized drivers, and all what=
 you just explained further supports this way of thinking.</div><div><br></=
div><div>So, humbly trying to ask here, what else can I do? Or where else t=
o try asking?</div><div><br></div><div>Thanks very much and apologies again=
.</div><div><br></div><div>P.S.: small offtopic: I&#39;m also having proble=
ms trying to set up TPM2 emulation for win11 VM, using swtpm package. I thi=
nk the author, user &quot;stefanb&quot;, is an IBM employee, but employees =
never offer free support... Where could I ask for support with this? Thanks=
 again.<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">El s=C3=A1b, 3 sept 2022 a las 6:38, Frediano Ziglio (&lt;=
<a href=3D"mailto:freddy77@gmail.com">freddy77@gmail.com</a>&gt;) escribi=
=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Il giorn=
o ven 2 set 2022 alle ore 22:23 Carlos Gonz=C3=A1lez<br>
&lt;<a href=3D"mailto:piteccelaya@gmail.com" target=3D"_blank">piteccelaya@=
gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; So the &quot;rumors&quot; are true: you (in general) really did discon=
tinue/kill the qxl drivers, if not the entire SPICE project soon. Was it be=
cause IBM? Since being sold to them the first one to die was Centos, now th=
is...<br>
&gt;<br>
<br>
Hi Carlos,<br>
=C2=A0 =C2=A0In Italy we use the expression &quot;=C3=88 come sparare sulla=
 Croce Rossa&quot;<br>
(more or less &quot;it&#39;s like shooting at the Red Cross&quot;).<br>
It&#39;s like accusing a doctor trying to save a life that it&#39;s trying =
to<br>
kill somebody.<br>
As Victor is actively contributing to SPICE as a developer (you can<br>
find multiple recent emails and commits in this ML and related<br>
projects without much effort) is not kind to point fingers.<br>
<br>
&gt; FYI:<br>
&gt; <a href=3D"https://gist.github.com/pojntfx/b860e123e649504bcd298aa6e92=
c4043#file-main-sh-L32" rel=3D"noreferrer" target=3D"_blank">https://gist.g=
ithub.com/pojntfx/b860e123e649504bcd298aa6e92c4043#file-main-sh-L32</a><br>
&gt; <a href=3D"https://lists.freedesktop.org/archives/virglrenderer-devel/=
2021-January/001897.html" rel=3D"noreferrer" target=3D"_blank">https://list=
s.freedesktop.org/archives/virglrenderer-devel/2021-January/001897.html</a>=
<br>
&gt; virtio-gpu implies virgl, and currently only works on Linux guests; Re=
dHat people explicitly deemed the Windows work &quot;not worthy&quot;.<br>
&gt;<br>
<br>
Let&#39;s get back to the technical side of this thread.<br>
That&#39;s not entirely true. Virgl it&#39;s an &quot;option&quot; to virti=
o-gpu. By<br>
default Virgl is not enabled. Virgl adds 3D support to Qemu virtual<br>
cards, as far as I know it&#39;s the only virtual GPU (bypass are not<br>
virtual) in Qemu supporting 3D. Although QXL was born alongside SPICE<br>
while Virgl is more related to Qemu directly, efforts were made to<br>
support all features QXL provides using virtio-gpu. So the technical<br>
suggestion Victor gave is not against SPICE. You have also to consider<br>
the way QXL works and how the graphics software stacks evolved in<br>
time. QXL design it&#39;s 2D only, supporting a lot of specific commands<br=
>
and options for Windows 95/98/XP. Yes, you read well, Windows XP...<br>
which was declared unsupported 12 years ago! At that time OSes relay<br>
to the GPU plenty of complex 2D commands. Nowadays most OSes (if not<br>
all but surely Linux, Windows and Mac) use 3D commands for everything,<br>
and many brushes, raster operations and similars are long since gone.<br>
Taken all that into account, with a modern OS the commands QXL and<br>
virtio-gpu use are basically the same.<br>
<br>
&gt; Thanks for killing the project.<br>
&gt;<br>
<br>
Now let&#39;s get back to the less technical.<br>
Beside reiterating that pointing fingers to Victor is not fair nor kind...<=
br>
Yes, SPICE was, company wise, well founded and supported by Red Hat<br>
(which _had_ a specific team for it). After RedHat was acquired by IBM<br>
some investments were moved from desktop side to the cloud. More or<br>
less RedHat/IBM thinks that spending money on Linux desktop is not<br>
worth much. That includes SPICE, Virgl and Windows drivers but others.<br>
<br>
Regards,<br>
=C2=A0 Frediano<br>
<br>
&gt; El vie, 2 sept 2022 a las 6:53, Victor Toso (&lt;<a href=3D"mailto:vic=
tortoso@redhat.com" target=3D"_blank">victortoso@redhat.com</a>&gt;) escrib=
i=C3=B3:<br>
&gt;&gt;<br>
&gt;&gt; Hi Carlos,<br>
&gt;&gt;<br>
&gt;&gt; On Fri, Sep 02, 2022 at 12:08:04AM +0000, Carlos Gonz=C3=A1lez wro=
te:<br>
&gt;&gt; &gt; I downloaded latest virtio-win ISO, and by browsing it I<br>
&gt;&gt; &gt; noticed that, unlike the other drivers, for the qxldod one<br=
>
&gt;&gt; &gt; there&#39;s only up to win10, and no explicit win11 versions.=
<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Does this mean that there are no drivers for Windows 11, and =
no<br>
&gt;&gt; &gt; possibility of setting up a VM with full SPICE support?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks beforehand.<br>
&gt;&gt;<br>
&gt;&gt; You are correct, the last cycle of development was focused for<br>
&gt;&gt; windows 10.<br>
&gt;&gt;<br>
&gt;&gt; I expect windows 11 to maintain some compatibility with windows<br=
>
&gt;&gt; 10 so the drivers should work to some extent but I did not test<br=
>
&gt;&gt; it.<br>
&gt;&gt;<br>
&gt;&gt; I&#39;d not hope for further development on qxl unless there is<br=
>
&gt;&gt; someone interested in investing time on it (and it would take<br>
&gt;&gt; some time).<br>
&gt;&gt;<br>
&gt;&gt; I&#39;d instead switch to virtio-vga / virtio-gpu as this seems to=
<br>
&gt;&gt; have an active community.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://github.com/virtio-win/kvm-gu=
est-drivers-windows" rel=3D"noreferrer" target=3D"_blank">https://github.co=
m/virtio-win/kvm-guest-drivers-windows</a><br>
&gt;&gt;<br>
&gt;&gt; Cheers,<br>
&gt;&gt; Victor<br>
</blockquote></div>

--0000000000006e11e605e7c787b0--
