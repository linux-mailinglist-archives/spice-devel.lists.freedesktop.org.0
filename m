Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A41CB36560B
	for <lists+spice-devel@lfdr.de>; Tue, 20 Apr 2021 12:21:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 185456E4F1;
	Tue, 20 Apr 2021 10:21:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3654B6E4F1
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Apr 2021 10:21:38 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id h8so4217781edb.2
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Apr 2021 03:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cTG+56vRchOYyAe1SoJC0Hnu9Lon9iTIYS+ydyWM3j0=;
 b=AXyNwDYOOmEVEFtEhVKXgEwioEDiSauOPI/NbKlvBpl7VJhdUcRkDQSlcYqfccwaIa
 IniSK/qAo8ocfdzTnp8tqL8hKHi6yKI6/5JNBItJ8ZqJcd4QS18ByyVt8eotM65s8b+i
 jQnrryq0vLl9BHaw7ZgqkETVvR90xoiN22NT9OXPm2ORAYj8QOTsD20SCO2jUIIChXnb
 lbBJ3wv+cltiLFFNgHBj8QpEHLEtqp7zFgHZiGHJYpIwOiacrHLDQNp8Pya0dCGopDHB
 fHu1XkYUBIKSH4Uu41GTY19l/E1or37ji4ie6EtUg/ScF86KV3MOdp7KsnPVa+k3c92N
 23HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cTG+56vRchOYyAe1SoJC0Hnu9Lon9iTIYS+ydyWM3j0=;
 b=N992+4erMHa8JiM0SDO8YbQITTqtxOucQ5yzICXOHo1prHHim9iTWWq2wSnDNGUuDP
 iq9EYs+zHqCKqkvBYy9Ai2nKutVFXXdOiDQj3A1nke2mWIS68bA+iCXB77Yjxiio/J7y
 RKE29bZwHupF8Yb9i5Mj1LGFMvWb/B0/wE9JEw0jPVv3/0HPhYAIc+lMeCsRxIaalqWs
 jNbBQj7+550+UskbbMe6gePI0Cgc9dZ9q61hUqLPffXGZDSsHSkxungRrTdud5tzNOlN
 Q3OyaoJPDX6wrfr6vUvmFefNnoTh8SlHNx3FBn0TNl/iOF8ZM8zJP3CVDBsFJG6/6qpS
 OF8g==
X-Gm-Message-State: AOAM530BLUiSXJDHoABgKyNx9GiTr1/zZ9TPeu9SDa7/HxSUx1EL2CaY
 KEySmpo2smlmtxfrDIGHWmTsgnAtP1+MUiC0bnBqGWHp/U6/1A==
X-Google-Smtp-Source: ABdhPJyWnnSYxfnnAzoFH0MudkYtOc+VxJotEhGTh/DnZukTPuVoJAk22pQ1TQiE5rphrLXxOFAVpdBt0TOmyM4Wr4k=
X-Received: by 2002:aa7:cb89:: with SMTP id r9mr31709939edt.245.1618914096891; 
 Tue, 20 Apr 2021 03:21:36 -0700 (PDT)
MIME-Version: 1.0
References: <5861b1c3-a4f5-2faf-4dc7-dd8167ec3ea5@gmail.com>
In-Reply-To: <5861b1c3-a4f5-2faf-4dc7-dd8167ec3ea5@gmail.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Tue, 20 Apr 2021 14:21:25 +0400
Message-ID: <CAJ+F1CL5oWfPWonbJa2jXSeJdissqF27vw4iwayBFYuxaorGPw@mail.gmail.com>
To: Germano Massullo <germano.massullo@gmail.com>
Subject: Re: [Spice-devel] Fedora 34 guests can no longer paste from host
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
Content-Type: multipart/mixed; boundary="===============2097128683=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============2097128683==
Content-Type: multipart/alternative; boundary="000000000000aaca6405c064cfbd"

--000000000000aaca6405c064cfbd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

On Tue, Apr 20, 2021 at 1:56 PM Germano Massullo <germano.massullo@gmail.co=
m>
wrote:

> Good day, I always used with success a Fedora 33 KDE host (qemu/kvm/libvi=
rt+virt-manager) and a F33 KDE guest, and I have always been to copy paste =
from host to guest and viceversa
>
> Now I tested two Fedora 34 Beta guests:
> - KDE spin
> - Workstation (GNOME)
> and both of them fail to paste text and files from the host. spice-vdagen=
t version is the same on both F33 and F34 guests: 0.21.0. Host machine has =
spice-gtk3-0.39-1.fc33.x86_64
> All machines mentioned in this bugreport are Xorg based.
>
> Hereunder I attach output of
> $ SPICE_DEBUG=3D1 virt-viewer --connect qemu:///systemhttps://germano.fed=
orapeople.org/bugreport/spice/spice_debug.txt
>
>
I think the main hint is:

../src/channel-main.c:1590 agent connected: no

I did a quick f34 beta VM check (GNOME), a few days ago. I also
reached a similar situation at some point, but it was gone before I
could understand the reason (probably after update & reboot).

Either it was fixed elsewhere or we will have to investigate further
if it happens randomly.

Anyway thanks for the report

# virsh dumpxml
fedora34gnomehttps://germano.fedorapeople.org/bugreport/spice/virsh_dumpxml=
.txt
>
> What can be the problem?
> Thank you
>
>
>
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>


--=20
Marc-Andr=C3=A9 Lureau

--000000000000aaca6405c064cfbd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi<br></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 20, 2021 at 1:56 PM Ger=
mano Massullo &lt;<a href=3D"mailto:germano.massullo@gmail.com">germano.mas=
sullo@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">
 =20
   =20
 =20
  <div>
    <pre id=3D"gmail-m_6378527671528378811comment_text_0">Good day, I alway=
s used with success a Fedora 33 KDE host (qemu/kvm/libvirt+virt-manager) an=
d a F33 KDE guest, and I have always been to copy paste from host to guest =
and viceversa

Now I tested two Fedora 34 Beta guests:
- KDE spin
- Workstation (GNOME)
and both of them fail to paste text and files from the host. spice-vdagent =
version is the same on both F33 and F34 guests: 0.21.0. Host machine has sp=
ice-gtk3-0.39-1.fc33.x86_64
All machines mentioned in this bugreport are Xorg based.

Hereunder I attach output of
$ SPICE_DEBUG=3D1 virt-viewer --connect qemu:///system
<a href=3D"https://germano.fedorapeople.org/bugreport/spice/spice_debug.txt=
" target=3D"_blank">https://germano.fedorapeople.org/bugreport/spice/spice_=
debug.txt</a></pre></div></blockquote><div><br></div><div>I think the main =
hint is:<br></div><div><pre>../src/channel-main.c:1590 agent connected: no<=
br><br></pre><pre>I did a quick f34 beta VM check (GNOME), a few days ago. =
I also reached a similar situation at some point, but it was gone before I =
could understand the reason (probably after update &amp; reboot).<br></pre>=
<pre>Either it was fixed elsewhere or we will have to investigate further i=
f it happens randomly.<br><br></pre><pre>Anyway thanks for the report<br></=
pre></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><pre id=3D=
"gmail-m_6378527671528378811comment_text_0"># virsh dumpxml fedora34gnome
<a href=3D"https://germano.fedorapeople.org/bugreport/spice/virsh_dumpxml.t=
xt" target=3D"_blank">https://germano.fedorapeople.org/bugreport/spice/virs=
h_dumpxml.txt</a>
=C2=A0
What can be the problem?
Thank you


</pre>
  </div>

_______________________________________________<br>
Spice-devel mailing list<br>
<a href=3D"mailto:Spice-devel@lists.freedesktop.org" target=3D"_blank">Spic=
e-devel@lists.freedesktop.org</a><br>
<a href=3D"https://lists.freedesktop.org/mailman/listinfo/spice-devel" rel=
=3D"noreferrer" target=3D"_blank">https://lists.freedesktop.org/mailman/lis=
tinfo/spice-devel</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature">Marc-Andr=C3=A9 Lureau<br></div></div>

--000000000000aaca6405c064cfbd--

--===============2097128683==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============2097128683==--
