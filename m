Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 606365AC1AF
	for <lists+spice-devel@lfdr.de>; Sun,  4 Sep 2022 01:05:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F25710E3C8;
	Sat,  3 Sep 2022 23:05:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com
 [IPv6:2607:f8b0:4864:20::112d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABA5210E3C8
 for <spice-devel@lists.freedesktop.org>; Sat,  3 Sep 2022 23:05:18 +0000 (UTC)
Received: by mail-yw1-x112d.google.com with SMTP id
 00721157ae682-32a09b909f6so44729507b3.0
 for <spice-devel@lists.freedesktop.org>; Sat, 03 Sep 2022 16:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bogomips.com; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=ZMp7F/yoh/Z73fzjYdrpVuyByLLVDXY/TFzfTDGIfmM=;
 b=HLKhqZCv/1wQP/5ULm+5msskumBmyXINwF2V1Kyp21Gx3EZyV3QQlkeckCDkS32tzN
 8qvPzmb0rXIE+wCbhdtUi2ojgwPbtJKO0Th5GVksn61tpnLX3fJbnT3ItJFf+4h0lNZl
 qt/KQtLry/3kyqqqwKU334yJWUFr9z1joK+RY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=ZMp7F/yoh/Z73fzjYdrpVuyByLLVDXY/TFzfTDGIfmM=;
 b=Hnl2GdBgAeOfl9ldg8yUZLz86Bhn0YOiGVQnoYE6pGDj5DG8L6OdcYpcNLVOX4iJ5e
 Anf+eio6lhJNNH1HIpQ6/9EylDYPj9GImhwmfPi4BWstLCKFVbNaN2ueP4nyEsuzbieV
 8f7up1OiipsX+keIJea+3uRKv0wPsLU7d8gNcHLGJ+d0eS7MNASyKiejOuhJOpG5u0cs
 UBECVhchw4BQnyny2yBRnq0flSdfDk02ZRZ49WXPPcgqZpz3Cn6HnxNCqurOgXZHXGIQ
 VFYAkkpuUmSbLvqVwMbVV3yDLL8veYdh7HzBFvT+1agmxuNZcNXooeqewzBVIKTdeFvh
 cY7A==
X-Gm-Message-State: ACgBeo1nHiSEKxLtT9k3L13/0S/1NiVy9zQQZtKH7tjUunqYFE2+wtdO
 tLFQfxvrH3m/9lPDkkcWvYMO4YuQcXxjRc3BAsQ6pw==
X-Google-Smtp-Source: AA6agR5c+7suxBblMCwaRX9ag1d6wXXNk2a58vXT6wiacg+oZVUojyRdCMAoShlxfAo3dcbbdK3FVgj0hn4fYkIsNpc=
X-Received: by 2002:a0d:cd43:0:b0:329:febf:8c25 with SMTP id
 p64-20020a0dcd43000000b00329febf8c25mr32329143ywd.90.1662246317100; Sat, 03
 Sep 2022 16:05:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAGeBE=yhPCXNeR72Oiy83yS+gC+P82_tSX59XQ4dSvUMDHJGRA@mail.gmail.com>
 <20220902065324.kqoezlbkidndyx4m@tapioca>
 <CAGeBE=z8ee5V4_fT7rxOnaE_6g5idXke3UMLeQw3G-DGSADwfw@mail.gmail.com>
 <CAHt6W4cbdzRuo1Fkvi7fY+xrVSMf3HxP=F3-Z7Ej=R=mgZGFgg@mail.gmail.com>
 <CAGeBE=xEXafWkdBfL8Qn+ynx3eP1a5W1Rg9D68DfZsJ9Rj9wuA@mail.gmail.com>
In-Reply-To: <CAGeBE=xEXafWkdBfL8Qn+ynx3eP1a5W1Rg9D68DfZsJ9Rj9wuA@mail.gmail.com>
From: John Paul Morrison <jmorrison@bogomips.com>
Date: Sat, 3 Sep 2022 16:05:06 -0700
Message-ID: <CAO-kYtHsm4b328MRgVx_5zAMkMpvWm2wj3WweBDWhBT4UiW1iA@mail.gmail.com>
To: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000042aba605e7cde15a"
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--00000000000042aba605e7cde15a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The quickemu scripts (GitHub) seemed to work well with Win11 and swtpm.

That=E2=80=99s too bad about Spice - so development is stopped?

On Sat, Sep 3, 2022 at 8:30 AM Carlos Gonz=C3=A1lez <piteccelaya@gmail.com>
wrote:

> First, thanks *very* much for your complete explanations, and at the same
> time offering apologies. Not justifiable, but I was kind of anxious and a
> bit desperate of finally setting up a win11 VM with SPICE just the way I
> did with win10.
>
> I think this is already well known but, why SPICE? For me, because of all
> the following features:
> ---Graphic acceleration --even if just 2D, QXL worked *far* better than
> any other available virtual driver
> ---All the paravirtualized drivers, which are still offering the best
> performance
> ---Easy USB and sound redirection
> ---Clipboard sharing
> ---Copy-and-paste --even if just files and only from host to guest
> ---Automatic resolution resizing with SPICE window
> And perhaps other ones I may be already forgetting...
>
> I already know what's said about software in general, that it's big enoug=
h
> and *always* comes and goes. But now that SPICE in general is dead, or in
> the process of, it'll take many years for another entire solution offerin=
g
> *all* these features to appear.
>
> I no longer want to set up windows VMs with generic virtualized drivers,
> and all what you just explained further supports this way of thinking.
>
> So, humbly trying to ask here, what else can I do? Or where else to try
> asking?
>
> Thanks very much and apologies again.
>
> P.S.: small offtopic: I'm also having problems trying to set up TPM2
> emulation for win11 VM, using swtpm package. I think the author, user
> "stefanb", is an IBM employee, but employees never offer free support...
> Where could I ask for support with this? Thanks again.
>
> El s=C3=A1b, 3 sept 2022 a las 6:38, Frediano Ziglio (<freddy77@gmail.com=
>)
> escribi=C3=B3:
>
>> Il giorno ven 2 set 2022 alle ore 22:23 Carlos Gonz=C3=A1lez
>> <piteccelaya@gmail.com> ha scritto:
>> >
>> > So the "rumors" are true: you (in general) really did discontinue/kill
>> the qxl drivers, if not the entire SPICE project soon. Was it because IB=
M?
>> Since being sold to them the first one to die was Centos, now this...
>> >
>>
>> Hi Carlos,
>>    In Italy we use the expression "=C3=88 come sparare sulla Croce Rossa=
"
>> (more or less "it's like shooting at the Red Cross").
>> It's like accusing a doctor trying to save a life that it's trying to
>> kill somebody.
>> As Victor is actively contributing to SPICE as a developer (you can
>> find multiple recent emails and commits in this ML and related
>> projects without much effort) is not kind to point fingers.
>>
>> > FYI:
>> >
>> https://gist.github.com/pojntfx/b860e123e649504bcd298aa6e92c4043#file-ma=
in-sh-L32
>> >
>> https://lists.freedesktop.org/archives/virglrenderer-devel/2021-January/=
001897.html
>> > virtio-gpu implies virgl, and currently only works on Linux guests;
>> RedHat people explicitly deemed the Windows work "not worthy".
>> >
>>
>> Let's get back to the technical side of this thread.
>> That's not entirely true. Virgl it's an "option" to virtio-gpu. By
>> default Virgl is not enabled. Virgl adds 3D support to Qemu virtual
>> cards, as far as I know it's the only virtual GPU (bypass are not
>> virtual) in Qemu supporting 3D. Although QXL was born alongside SPICE
>> while Virgl is more related to Qemu directly, efforts were made to
>> support all features QXL provides using virtio-gpu. So the technical
>> suggestion Victor gave is not against SPICE. You have also to consider
>> the way QXL works and how the graphics software stacks evolved in
>> time. QXL design it's 2D only, supporting a lot of specific commands
>> and options for Windows 95/98/XP. Yes, you read well, Windows XP...
>> which was declared unsupported 12 years ago! At that time OSes relay
>> to the GPU plenty of complex 2D commands. Nowadays most OSes (if not
>> all but surely Linux, Windows and Mac) use 3D commands for everything,
>> and many brushes, raster operations and similars are long since gone.
>> Taken all that into account, with a modern OS the commands QXL and
>> virtio-gpu use are basically the same.
>>
>> > Thanks for killing the project.
>> >
>>
>> Now let's get back to the less technical.
>> Beside reiterating that pointing fingers to Victor is not fair nor kind.=
..
>> Yes, SPICE was, company wise, well founded and supported by Red Hat
>> (which _had_ a specific team for it). After RedHat was acquired by IBM
>> some investments were moved from desktop side to the cloud. More or
>> less RedHat/IBM thinks that spending money on Linux desktop is not
>> worth much. That includes SPICE, Virgl and Windows drivers but others.
>>
>> Regards,
>>   Frediano
>>
>> > El vie, 2 sept 2022 a las 6:53, Victor Toso (<victortoso@redhat.com>)
>> escribi=C3=B3:
>> >>
>> >> Hi Carlos,
>> >>
>> >> On Fri, Sep 02, 2022 at 12:08:04AM +0000, Carlos Gonz=C3=A1lez wrote:
>> >> > I downloaded latest virtio-win ISO, and by browsing it I
>> >> > noticed that, unlike the other drivers, for the qxldod one
>> >> > there's only up to win10, and no explicit win11 versions.
>> >> >
>> >> > Does this mean that there are no drivers for Windows 11, and no
>> >> > possibility of setting up a VM with full SPICE support?
>> >> >
>> >> > Thanks beforehand.
>> >>
>> >> You are correct, the last cycle of development was focused for
>> >> windows 10.
>> >>
>> >> I expect windows 11 to maintain some compatibility with windows
>> >> 10 so the drivers should work to some extent but I did not test
>> >> it.
>> >>
>> >> I'd not hope for further development on qxl unless there is
>> >> someone interested in investing time on it (and it would take
>> >> some time).
>> >>
>> >> I'd instead switch to virtio-vga / virtio-gpu as this seems to
>> >> have an active community.
>> >>
>> >>     https://github.com/virtio-win/kvm-guest-drivers-windows
>> >>
>> >> Cheers,
>> >> Victor
>>
>

--00000000000042aba605e7cde15a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">The quickemu scripts (GitHub) seemed to work well with Wi=
n11 and swtpm.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Tha=
t=E2=80=99s too bad about Spice - so development is stopped?</div><div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Se=
p 3, 2022 at 8:30 AM Carlos Gonz=C3=A1lez &lt;<a href=3D"mailto:piteccelaya=
@gmail.com">piteccelaya@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">=
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
<a href=3D"mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com<=
/a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;pad=
ding-left:1ex;border-left-color:rgb(204,204,204)">Il giorno ven 2 set 2022 =
alle ore 22:23 Carlos Gonz=C3=A1lez<br>
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
</blockquote></div></div>

--00000000000042aba605e7cde15a--
