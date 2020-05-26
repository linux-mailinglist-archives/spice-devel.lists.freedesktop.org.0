Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9381E25A4
	for <lists+spice-devel@lfdr.de>; Tue, 26 May 2020 17:41:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D61706E039;
	Tue, 26 May 2020 15:40:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 364A16E039
 for <spice-devel@lists.freedesktop.org>; Tue, 26 May 2020 15:40:58 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id j10so5250671wrw.8
 for <spice-devel@lists.freedesktop.org>; Tue, 26 May 2020 08:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UfUeE/9OxnRvfp7vAG+QRQAtKVyNhwMcSetOB303KQQ=;
 b=nBLhyIbP/+QUQp5LStXwNFW5g17g9gjBQTYO9SpaIWDLhLikEYfCDqwROQT2tTi0x+
 rL8Wj6vyAUwfWKXihTyMQ5fQlE3SOl16JfxigjecX6xo4C7zqi5l2Q1WoDI2siNr9Y1M
 KBBBpVRz1nNlbyBJLlaCgLbg5T1Ud5UAa/DHrCYa0fnarTZtJwNlaRtHrk+idQoG95uW
 EE1VaZr7rq+qmSNJ4XS1q0KGCWVTC4kL3pQKsz9B+ARUr6b5x+8HrnTEixyNdZXBz0np
 0FojnwgQgxRWLJBS56jTe8PqTAjVKlb/wJB4HWP0T07b2ovJSCKiUL4C13YwXTJDL7sw
 utvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UfUeE/9OxnRvfp7vAG+QRQAtKVyNhwMcSetOB303KQQ=;
 b=EvPMsEW6WaXIeo6sgUE6/9k7O2MJ2bVkVRNGIh/xlgcMIFmARaGQLi9todNohbtdgO
 ImE08U//T/yRTzpzg3TvJjxysYzJGsdVBd9RlfH7qi7Q0O0rcS+5GlkN0PdTTrAumenL
 Na+ZBs3SbmqsOELtrmthQUK/qeFwEXGopnCZh2dGErukIdf0wZG+n+jWaqK0RbSoLwSZ
 LMhAsLB9Pw0C9rv57VBJDq6yKnAAyoUAyOluE8vPqdUq0+lHvJEGTNIHjnr6s2p7ayEM
 UHF0pnRCx99Fj4tnYfk0oLEujVnWX/21HH0GDW54AdepN5deHymaXTJjRVFiUGQ02r03
 b+Uw==
X-Gm-Message-State: AOAM532wMtigsehNdz90SQ3ftX5K/Cpgzl1jW3/9C2/pFOpHgBR4UFbf
 TFJoUc+zuvmDe3WUDzd1NAkGAPMwllzM9zGYSCQ=
X-Google-Smtp-Source: ABdhPJyvYO72hDQaQTb9PKxeKdSSn736nLhhSOxLTM1j3kMWxMvbPdqtkzewq+9nMO9qoWIRQja/Wmo+dUkyx9GM96w=
X-Received: by 2002:adf:9544:: with SMTP id 62mr13415346wrs.32.1590507656878; 
 Tue, 26 May 2020 08:40:56 -0700 (PDT)
MIME-Version: 1.0
References: <9de80072-fffc-9155-d2dc-9aab7ad73745@codeweavers.com>
In-Reply-To: <9de80072-fffc-9155-d2dc-9aab7ad73745@codeweavers.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Tue, 26 May 2020 17:40:44 +0200
Message-ID: <CAJ+F1C+GjG_jawa1y=KReZfBvf0j40Jxs3MhMCQ5Dj0nx6r7xA@mail.gmail.com>
To: Jeremy White <jwhite@codeweavers.com>
Subject: Re: [Spice-devel] Brainstorming help with x11spice on socket
 permissions across users
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
Content-Type: multipart/mixed; boundary="===============1825047656=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1825047656==
Content-Type: multipart/alternative; boundary="000000000000e69d4705a68eeb07"

--000000000000e69d4705a68eeb07
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

On Tue, May 26, 2020 at 3:55 PM Jeremy White <jwhite@codeweavers.com> wrote=
:

> Hi all,
>
> I'm trying to get x11spice and spice-html5, at least as packaged for
> Fedora, into a pretty much 'turn key' state.
>
> I've got 3 use cases.  The first is user A sharing their current
> desktop, either for themselves, or to get help.  That case is largely
> done, imho, modulo some documentation and perhaps some streamlining.
>

I didn't know you could do that. I suppose the solution is X11 only? It
would be nice to have gnome-remote-desktop integration. Though GNOME seems
more interested to support RDP these days (having a glib/gobject server
library would certainly help them to consider Spice, *hint* ;)

The second is user A getting access to a new session for themselves.  I
> don't feel blocked on this case; the work should be straight forward, if
> fiddly (I may regret those words; doing a secure 'su' like function out
> of apache may be harder than I think).
>

Multiple user session is tricky. Afaik, this is mostly used for desktop
development. The instructions to setup such environmnent change over time
and desktop. Did I miss something? What's the use case?


> The 3rd case, however, has me troubled.  This is the case that user A
> (potentially apache) starts x11spice which then does an xdmcp request to
> gdm, and eventually supports a log in by user B.  This makes it
> challenging to provide a way for user B to launch a spice agent or a
> pulseaudio daemon and have it securely connect back to the spice process
> started by user A.  The approach I've used in the past is to have a
> privileged binary use information from an X atom to adjust socket
> permissions.  But that feels unsatisfying, and it seems to me that this
> is an area with a lot of modern thinking that I've largely missed.
>
> As an added complexity, in the ideal case, you have a vdagent running as
> user A during the login process, which knows to reap itself and give way
> to a vdagent launched by user B.
>
> I was hoping that others would have modern instincts on how to more
> correctly implement the third use case.  Clue bats or other ideas welcome=
.
>

This is systemd/desktop territories, and I don't know what would be the
best way to do all that. I would suggest you ask the gnome-remote-desktop &
systemd/logind developpers, or other desktop developpers how they plan or
not to solve it.

cheers

--=20
Marc-Andr=C3=A9 Lureau

--000000000000e69d4705a68eeb07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi<br></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 26, 2020 at 3:55 PM Jer=
emy White &lt;<a href=3D"mailto:jwhite@codeweavers.com">jwhite@codeweavers.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Hi all,<br>
<br>
I&#39;m trying to get x11spice and spice-html5, at least as packaged for <b=
r>
Fedora, into a pretty much &#39;turn key&#39; state.<br>
<br>
I&#39;ve got 3 use cases.=C2=A0 The first is user A sharing their current <=
br>
desktop, either for themselves, or to get help.=C2=A0 That case is largely =
<br>
done, imho, modulo some documentation and perhaps some streamlining. <br></=
blockquote><div><br></div><div>I didn&#39;t know you could do that. I suppo=
se the solution is X11 only? It would be nice to have gnome-remote-desktop =
integration. Though GNOME seems more interested to support RDP these days (=
having a glib/gobject server library would certainly help them to consider =
Spice, *hint* ;)<br></div><div> <br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
The second is user A getting access to a new session for themselves.=C2=A0 =
I <br>
don&#39;t feel blocked on this case; the work should be straight forward, i=
f <br>
fiddly (I may regret those words; doing a secure &#39;su&#39; like function=
 out <br>
of apache may be harder than I think).<br></blockquote><div><br></div><div>=
Multiple user session is tricky. Afaik, this is mostly used for desktop dev=
elopment. The instructions to setup such environmnent change over time and =
desktop. Did I miss something? What&#39;s the use case?<br></div><div> <br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
The 3rd case, however, has me troubled.=C2=A0 This is the case that user A =
<br>
(potentially apache) starts x11spice which then does an xdmcp request to <b=
r>
gdm, and eventually supports a log in by user B.=C2=A0 This makes it <br>
challenging to provide a way for user B to launch a spice agent or a <br>
pulseaudio daemon and have it securely connect back to the spice process <b=
r>
started by user A.=C2=A0 The approach I&#39;ve used in the past is to have =
a <br>
privileged binary use information from an X atom to adjust socket <br>
permissions.=C2=A0 But that feels unsatisfying, and it seems to me that thi=
s <br>
is an area with a lot of modern thinking that I&#39;ve largely missed.<br>
<br>
As an added complexity, in the ideal case, you have a vdagent running as <b=
r>
user A during the login process, which knows to reap itself and give way <b=
r>
to a vdagent launched by user B.<br>
<br>
I was hoping that others would have modern instincts on how to more <br>
correctly implement the third use case.=C2=A0 Clue bats or other ideas welc=
ome.<br></blockquote><div><br></div><div>This is systemd/desktop territorie=
s, and I don&#39;t know what would be the best way to do all that. I would =
suggest you ask the gnome-remote-desktop &amp; systemd/logind developpers, =
or other desktop developpers how they plan or not to solve it.</div></div><=
div class=3D"gmail_quote"><br></div><div>cheers</div><div><br></div>-- <br>=
<div dir=3D"ltr" class=3D"gmail_signature">Marc-Andr=C3=A9 Lureau<br></div>=
</div>

--000000000000e69d4705a68eeb07--

--===============1825047656==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1825047656==--
