Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE6262F42B
	for <lists+spice-devel@lfdr.de>; Fri, 18 Nov 2022 13:02:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77BD010E709;
	Fri, 18 Nov 2022 12:02:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F61110E700
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Nov 2022 12:02:36 +0000 (UTC)
Received: by mail-lj1-x22d.google.com with SMTP id h12so6477681ljg.9
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Nov 2022 04:02:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=oKsglJGuN7rvkPoSti/3GGtWfMxgY4cN1n2I8KWRKs0=;
 b=A+sKcqsljeUEhT3qYPoBLR46Tac8eed0/LMSlAtsw420KNFrqmxcQ8JB3+VTkxGFH8
 jDokvSvsTfpDxPyTpUyQriUL5EjADuOdj1vMxVZtjySDnPgY7thPxboHoItyCt6HvRLj
 oOD2+C07fX3EYp8dhUqaOorWriyOCNsfOkhOOLQrZ3T3qh3XdxZwWn5K82Y7HNE1P5lq
 pyMZIJmSPz9qfpB7v6OkZd27jMKoNVz4r3PFUb+h6kGLHcnUi5GDJqRVXTNCrUSGOuW6
 lJQxnh5VaLAFtUVUnwu35+VrrWiSJHJvQJV5xvaSMQQda6HhKnViFqMuRpmiL7IaFsx4
 2+LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=oKsglJGuN7rvkPoSti/3GGtWfMxgY4cN1n2I8KWRKs0=;
 b=JcuwGLR3VCWbSE8C3JxHQZsTCkmuVRdm+GUo+k+G6UpdU8wU7/6ju5N74rY99fyREu
 BTl9JBW+szXYrpKMzpY7el772UnsaAfS+UL/9M0c5nAWMJadG2DVdUjqMTIgSYnv98Hx
 /eTUyzLrrigadDHFj+W8rrvmqW+fzJRf20fVD1samYWxuBrME6GcR0F0W5eqOf0P31lQ
 wpNsBRbgPkaMqVEsCoJ991DPAkgahAcGy61kjsNpg7fAOqu0LhzTORXyQh0hR0C3YULG
 HTghci7CBumhyVfgzQOculdn9nn1fMHcNX2U9O/JILGiZ6WpQQBJ5hKx3Qx6DaSGm1yU
 MG5A==
X-Gm-Message-State: ANoB5pkNaBSooYHjbimBfekdnI55Fclc1BjzlIzt45wO67mNZPGd4/Jp
 RjdnWDzK75KDrEDnQGrSBRWtoeunknEiVrD8E28GlPWZ
X-Google-Smtp-Source: AA0mqf7Ai/yS4suXWOwreQAZo2ZEhcfiBMXU3SHBDatnmvZwAx+qxuJTws//7kG+DaFhGP/6E2Vfjaeb1tqxpxLKnKs=
X-Received: by 2002:a2e:a810:0:b0:277:9e5:6cc8 with SMTP id
 l16-20020a2ea810000000b0027709e56cc8mr2241445ljq.105.1668772953842; Fri, 18
 Nov 2022 04:02:33 -0800 (PST)
MIME-Version: 1.0
References: <CADiWsK9fxPnCdAYUek0nkWgY476-svZ78d=Pqm_RQoV4FfCSKA@mail.gmail.com>
 <20221116082102.uasas3k4whcjcbqv@tapioca>
 <CADiWsK-Mv1rR8yWmaSfYp5d9kU9tfrSqkvC_zor9hKYhA51+CA@mail.gmail.com>
 <20221116083733.yal5hdblbefrewjj@tapioca>
 <CADiWsK8NizZeSeQCrbZ-PU1Vjufmnt0exTOhJ5jFaRfnWo+aVA@mail.gmail.com>
 <CAHt6W4cmvcxagPeCMv1WsShT7BnMHGXMyzpp7BT=6wT+wBYFxw@mail.gmail.com>
 <CADiWsK9CunRBfzbazm9FqFw3t3vqRf58rR2uW8Erxns9r3xxPw@mail.gmail.com>
 <CAHt6W4eb2Mu1kCxh1wQy1pUsJkeamq1KhgH29B+r7V-8KDMWdQ@mail.gmail.com>
 <CADiWsK_5Oeof94_gU6fUXoMh9rapZgAcmaXkcM2Rg3TQdSyo5g@mail.gmail.com>
 <CADiWsK-mpnzoTDBWEg8iJG+aEy-jWSK9JYqmtkASbO8jNhVR+Q@mail.gmail.com>
 <CAHt6W4f-HxuQ=+eNtYiTsNkeQwXKZ=h=WhUbc8y6Caua26dyKA@mail.gmail.com>
 <CADiWsK9-PWpMoSezbtO4gh2z1dnznZSY8kT1DxWruAjUhCrtWQ@mail.gmail.com>
 <CAHt6W4c8Hm6yvkx5cDhxjz7EEtMSJ70TgXPUJXQN-9XBxWJOxQ@mail.gmail.com>
In-Reply-To: <CAHt6W4c8Hm6yvkx5cDhxjz7EEtMSJ70TgXPUJXQN-9XBxWJOxQ@mail.gmail.com>
From: Stefan Silberstein <linuxstony@gmail.com>
Date: Fri, 18 Nov 2022 13:02:22 +0100
Message-ID: <CADiWsK8AwiGXR1SRXOWGK1DVXbi736pb=pHG8LVGX-YvVX6MWw@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000001fea1905edbd7b78"
Subject: Re: [Spice-devel] Userquestion - remote-viewer connection fails
 with "Connection type could not be determined by URI"
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

--0000000000001fea1905edbd7b78
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Okay - now I feel like the dumbest and worst user ever - and rightfully so.

Just for the record - just incase someone else is as dumb as me...
(Damn - i feel so embarrassed)

To be able to connect fast to the virtual machine and not to forget what to
write - I created a text file on my desktop with the command to start the
VM as name.
Desperate KDE tried to fulfill my wish in translating the double "//" into
something that doesn't interfere with the naming-principles but looks like
the user wanted it to.

I then copied the command from the text file name to command line and used
it (I thought i typed it later on from the beginning with legitimate "/" as
well but it seems that was not the case)

So everytime i tried, I apparently used the old entries which weren't
normal "/" - they never were but looked like them.

Sorry for cussing - but I am such a dumbass...

Frediano - may i tip you a coffee or something - I clearly owe you one.

Stefan

Am Fr., 18. Nov. 2022 um 12:46 Uhr schrieb Frediano Ziglio <
freddy77@gmail.com>:

> Il giorno ven 18 nov 2022 alle ore 10:48 Stefan Silberstein
> <linuxstony@gmail.com> ha scritto:
> >
> > Hope this wall of text helps you in any way :D
> >
> > stony@Aperture-Science:~$ history | grep spice | hexdump -C
> > 00000000  20 31 32 30 36 20 20 72  65 6d 6f 74 65 2d 76 69  | 1206
> remote-vi|
> > 00000010  65 77 65 72 20 73 70 69  63 65 3a 2f 2f 31 39 32  |ewer
> spice://192|
> > 00000020  2e 31 36 38 2e 31 37 38  2e 35 31 3a 35 39 30 30
> |.168.178.51:5900|
> > 00000030  0a 20 31 32 31 30 20 20  72 65 6d 6f 74 65 2d 76  |. 1210
> remote-v|
> > 00000040  69 65 77 65 72 20 73 70  69 63 65 3a 2f 2f 31 39  |iewer
> spice://19|
> > 00000050  32 2e 31 36 38 2e 31 37  38 2e 35 31 3a 35 39 30
> |2.168.178.51:590|
> > 00000060  30 0a 20 31 33 30 39 20  20 72 65 6d 6f 74 65 2d  |0. 1309
> remote-|
> > 00000070  76 69 65 77 65 72 20 73  70 69 63 65 3a e2 81 84  |viewer
> spice:...|
> > 00000080  e2 81 84 31 39 32 2e 31  36 38 2e 31 37 38 2e 35
> |...192.168.178.5|
>
> There you go!
>
> $ echo -e '\xe2\x81\x84'
> =E2=81=84
>
> that's no a ASCII slash. echo -n / | hexdump -C
> 00000000  2f                                                |/|
> 00000001
>
> (one byte, your is 3 bytes, surely not ASCII)
>
> ... omissis (a lot more there) ...
>
> > 0000179c
> > stony@Aperture-Science:~$
> >
> > For now I will fade into the shadow of userdom again :)
> >
> > Stefan
> >
>
> Frediano
>
> > Am Fr., 18. Nov. 2022 um 11:25 Uhr schrieb Frediano Ziglio <
> freddy77@gmail.com>:
> >>
> >> Il giorno ven 18 nov 2022 alle ore 06:08 Stefan Silberstein
> >> <linuxstony@gmail.com> ha scritto:
> >> >
> >> > Hi Frediano, Hi List,
> >> >
> >> > after I was able to start the virtual machine with the GUI I tried
> your command
> >> >
> >> > LANG=3DC remote-viewer spice://192.168.178.51:5900
> >> >
> >> > and it started right up into the virtual machine.
> >> >
> >> > HOWEVER
> >> >
> >> > even
> >> >
> >> > remote-viewer spice://192.168.178.51:5900
> >> >
> >> > now opens the virtual machine - without problems. (Yeah - i am
> stunned myself)
> >> >
> >> > I slept over it then tried again today - thinking it never worked
> again the day after...
> >> >
> >> > Result is that I am able to open up the VM just fine....
> >> >
> >> > This is the worst - something works without changing anything so I
> have no chance of knowing what the problem is/was in the first place
> >> >
> >> > At a loss for words,
> >> >
> >> > Stefan
> >> >
> >>
> >> Well, problem solved :-)
> >>
> >> I would check with a command like "history | grep spice | hexdump -C"
> >> (you can post the output) for some weird input. The errors you
> >> reported are basically (or at least they should) parsing errors for
> >> the URI you passed.
> >>
> >> Frediano
> >>
> >>
> >>
> >> > Am Do., 17. Nov. 2022 um 10:30 Uhr schrieb Stefan Silberstein <
> linuxstony@gmail.com>:
> >> >>
> >> >> Some details:
> >> >> Operating System: Kubuntu 22.04
> >> >> KDE Plasma Version: 5.24.6
> >> >> KDE Frameworks Version: 5.92.0
> >> >> Qt Version: 5.15.3
> >> >> Kernel Version: 5.15.0-53-generic (64-bit)
> >> >> Graphics Platform: X11
> >> >> Processors: 8 =C3=97 AMD Ryzen 5 1500X Quad-Core Processor
> >> >> Memory: 15.6 GiB of RAM
> >> >> Graphics Processor: NVIDIA GeForce GTX 1050 Ti/PCIe/SSE2
> >> >>
> >> >> Opening a Konsole "bash":
> >> >>
> >> >> Konsole
> >> >> Version 21.12.3
> >> >>
> >> >>
> >> >> Locale:
> >> >>
> >> >> stony@Aperture-Science:~$ locale LANG=3Dde_DE.UTF-8 LANGUAGE=3D
> LC_CTYPE=3D"de_DE.UTF-8" LC_NUMERIC=3D"de_DE.UTF-8" LC_TIME=3D"de_DE.UTF-=
8"
> LC_COLLATE=3D"de_DE.UTF-8" LC_MONETARY=3D"de_DE.UTF-8"
> LC_MESSAGES=3D"de_DE.UTF-8" LC_PAPER=3D"de_DE.UTF-8" LC_NAME=3D"de_DE.UTF=
-8"
> LC_ADDRESS=3D"de_DE.UTF-8" LC_TELEPHONE=3D"de_DE.UTF-8"
> LC_MEASUREMENT=3D"de_DE.UTF-8" LC_IDENTIFICATION=3D"de_DE.UTF-8" LC_ALL=
=3D
> >> >>
> >> >> I will try to open it today at noon - during my lunch break.
> >> >> (ATM I am glad it works because i gotta work from home and this
> windows-machine is the only way to connect to the Server in my company fo=
r
> me)
> >> >>
> >> >> I will get back to you in approximately two hours.
> >> >>
> >> >> Stefan
> >> >>
> >> >> Am Do., 17. Nov. 2022 um 10:18 Uhr schrieb Frediano Ziglio <
> freddy77@gmail.com>:
> >> >>>
> >> >>> Il giorno gio 17 nov 2022 alle ore 09:13 Stefan Silberstein
> >> >>> <linuxstony@gmail.com> ha scritto:
> >> >>> >
> >> >>> > Hi,
> >> >>> >
> >> >>> > no this is the normal forward-slash with "shift+7" on the german
> keyboard - googlemail messed it up translating it to something else.
> >> >>> > The URL  is normally typed.
> >> >>> >
> >> >>> > This is really weird and I will try to help you as much as I can
> to get to the bottom of it.
> >> >>> >
> >> >>> > Stefan
> >> >>> >
> >> >>>
> >> >>> That's pretty weird. That code has been there for ages. I tried bu=
t
> no
> >> >>> problems for me.
> >> >>> This operating system and version are you using?
> >> >>> Which shell?
> >> >>> Maybe it's the locale? Try launching something like "LANG=3DC
> >> >>> remote-viewer spice://192.168.178.51:5900" (LANG environment
> change)
> >> >>>
> >> >>> Frediano
> >> >>>
> >> >>> > Am Do., 17. Nov. 2022 um 10:08 Uhr schrieb Frediano Ziglio <
> freddy77@gmail.com>:
> >> >>> >>
> >> >>> >> Il giorno gio 17 nov 2022 alle ore 07:57 Stefan Silberstein
> >> >>> >> <linuxstony@gmail.com> ha scritto:
> >> >>> >> >
> >> >>> >> > Hello again,
> >> >>> >> >
> >> >>> >> > so - yesterday I worked from home - as I wrote I was able to
> connect by specifying the user root with "remote-viewer spice://
> root@192.168.178.51:5900"
> >> >>> >> >
> >> >>> >> > Today I want to connect the exact same way (yesterday i simpl=
y
> closed the remote-viewer window and the server keept on running so the
> windows-VM was running the whole night) - and I can not connect.
> >> >>> >> >
> >> >>> >> > Error Message on the console  "** (remote-viewer:6146):
> CRITICAL **: 07:55:52.853: virt_viewer_util_extract_host: assertion 'uri =
!=3D
> NULL' failed"
> >> >>> >> > Error Message on the popup says translated: Connectiontype
> could not be determined by URI.
> >> >>> >> >
> >> >>> >>
> >> >>> >> Hi,
> >> >>> >>    That means that the code was not able to parse the URI.
> >> >>> >>
> >> >>> >> > IP of the server itself is 192.168.178.51
> >> >>> >> > IP of the Virtual Machine is 192.168.178.64 and i pingable
> >> >>> >> > Port 5900 on the server is open: 5900/tcp open  vnc
> >> >>> >> > remote-viewer --spice-debug spice:=E2=81=84=E2=81=84192.168.1=
78.51:5900 does
> not produce a more verbose output :(
> >> >>> >> >
> >> >>> >>
> >> >>> >> In this example you are not using ASCII slashes (//), maybe
> that's the problem.
> >> >>> >>
> >> >>> >> > Update in the meantime
> >> >>> >> > But maybe this is helpful to you:
> >> >>> >> >
> >> >>> >> > I simply started "remote-viewer --spice-debug"
> >> >>> >> > Then i got the GUI (which i wasnt even aware it existed).
> >> >>> >> >
> >> >>> >> > When I choose the same entry on that list - I AM able to
> connect.
> >> >>> >> >
> >> >>> >> > So the error only exists only when I try to connect via
> command line?! (This is when I am able to connect tomorrow via GUI ;) )
> >> >>> >> >
> >> >>> >> > Shouldn't this be the same ?
> >> >>> >> >
> >> >>> >> > I mabe I can help - maybe this is indeed a bug?
> >> >>> >> >
> >> >>> >> > Stefan
> >> >>> >> >
> >> >>> >>
> >> >>> >> Frediano
> >> >>> >>
> >> >>> >> > Am Mi., 16. Nov. 2022 um 09:37 Uhr schrieb Victor Toso <
> victortoso@redhat.com>:
> >> >>> >> >>
> >> >>> >> >> On Wed, Nov 16, 2022 at 09:27:21AM +0100, Stefan Silberstein
> wrote:
> >> >>> >> >> > I appreciate the time to answer me.
> >> >>> >> >> >
> >> >>> >> >> > In the meantime (out of desperation because i needed the
> virtualmachine for
> >> >>> >> >> > work) I gave it a go with specifying root as user and not
> the servers
> >> >>> >> >> > username "server".
> >> >>> >> >> >
> >> >>> >> >> > I was able to connect to the virtual Windows10 installatio=
n
> with
> >> >>> >> >> >
> >> >>> >> >> > remote-viewer spice://root@192.168.178.51:5900
> >> >>> >> >>
> >> >>> >> >> Cool
> >> >>> >> >>
> >> >>> >> >> > But again - then I dont unterstand why it worked as user a=
nd
> >> >>> >> >> > later on with specifying the user later on (which doesn't
> work
> >> >>> >> >> > right now anymore)
> >> >>> >> >> >
> >> >>> >> >> > So it is a permissions problem on my side and I successful=
ly
> >> >>> >> >> > wasted your time. :/
> >> >>> >> >> >
> >> >>> >> >> > Sorry about that.
> >> >>> >> >>
> >> >>> >> >> Don't worry about that. Happy to hear it worked.
> >> >>> >> >>
> >> >>> >> >> >
> >> >>> >> >> > This happens when "users" try to play with the big boys
> toys :D
> >> >>> >> >> >
> >> >>> >> >> > Have a nice day you all and thanks for your time.
> >> >>> >> >>
> >> >>> >> >> You too.
> >> >>> >> >> Cheers,
> >> >>> >> >>
> >> >>> >> >> >
> >> >>> >> >> > Stefan
> >> >>> >> >> >
> >> >>> >> >> > Am Mi., 16. Nov. 2022 um 09:21 Uhr schrieb Victor Toso <
> >> >>> >> >> > victortoso@redhat.com>:
> >> >>> >> >> >
> >> >>> >> >> > > Hi Stefan,
> >> >>> >> >> > >
> >> >>> >> >> > > On Tue, Nov 15, 2022 at 09:53:05PM +0100, Stefan
> Silberstein wrote:
> >> >>> >> >> > > > Hello developers,
> >> >>> >> >> > > >
> >> >>> >> >> > > > I can imagine that this will be an annoying question
> for you -
> >> >>> >> >> > > > so I apologize in advance.
> >> >>> >> >> > > >
> >> >>> >> >> > > > I am a user - with a longer history with linux BUT i a=
m
> >> >>> >> >> > > > completely new to virtualization.
> >> >>> >> >> > > > Due to the fact that I got a server donated to me I
> wanted to
> >> >>> >> >> > > > give it a go and it worked like a charm.
> >> >>> >> >> > > >
> >> >>> >> >> > > > Installed virt-manager, installed Windows10  connected
> with
> >> >>> >> >> > > > virt-manager - absolutely no problem.
> >> >>> >> >> > > >
> >> >>> >> >> > > > Due to the fact that I need dual monitors I learned
> that I
> >> >>> >> >> > > > could add another display and connect with spice - and
> it
> >> >>> >> >> > > > worked immediately.
> >> >>> >> >> > > >
> >> >>> >> >> > > > BUT - without me changing anything (consciously) I
> wasn't able
> >> >>> >> >> > > > to connect to the virtual machine the next week.
> >> >>> >> >> > > >
> >> >>> >> >> > > > It refuses with "Verbindungstyp konnte nicht von URI
> ermittelt werden"
> >> >>> >> >> > > > (Connection type could not be determined by URI)
> >> >>> >> >> > > >
> >> >>> >> >> > > > Then i tried to connect with sudo and specifying the
> user in
> >> >>> >> >> > > > the command line and it once again connected:
> >> >>> >> >> > > >
> >> >>> >> >> > > > sudo remote-viewer  spice:=E2=81=84=E2=81=84server@192=
.168.178.51:5900
> >> >>> >> >> > >
> >> >>> >> >> > > Perhaps the URL is the problem. If the IP is
> 192.168.178.51 and
> >> >>> >> >> > > the port for the VM is 5900, then try
> >> >>> >> >> > >
> >> >>> >> >> > >     remote-viewer spice://192.168.178.51:5900
> >> >>> >> >> > >
> >> >>> >> >> > > If server is a dns that can be resolved, should be fine
> to use it
> >> >>> >> >> > > instead of ip address
> >> >>> >> >> > >
> >> >>> >> >> > >     remote-viewer spice://server:5900
> >> >>> >> >> > >
> >> >>> >> >> > >
> >> >>> >> >> > > > And now - again without changing anything - it doesn't
> connect
> >> >>> >> >> > > > with that command as well.
> >> >>> >> >> > > >
> >> >>> >> >> > > > I have sadly NO clue whatsoever where to even search
> for a
> >> >>> >> >> > > > solution - the internet didn't help me here...
> >> >>> >> >> > > >
> >> >>> >> >> > > > Do you have any hint at all what I might do wrong here=
?
> >> >>> >> >> > > >
> >> >>> >> >> > > > The machine is available - the port is open and visibl=
e
> >> >>> >> >> > > > PORT     STATE SERVICE
> >> >>> >> >> > > > 22/tcp   open  ssh
> >> >>> >> >> > > > 80/tcp   open  http
> >> >>> >> >> > > > 3389/tcp open  ms-wbt-server
> >> >>> >> >> > > > 5900/tcp open  vnc
> >> >>> >> >> > > >
> >> >>> >> >> > > > ufw on the server is shut down.
> >> >>> >> >> > > >
> >> >>> >> >> > > > ANY help would be greatly appreciated.
> >> >>> >> >> > >
> >> >>> >> >> > > You can get more verbose information of issues with
> --spice-debug
> >> >>> >> >> > > command line option too.
> >> >>> >> >> > >
> >> >>> >> >> > > Cheers,
> >> >>> >> >> > > Victor
> >> >>> >> >> > >
>

--0000000000001fea1905edbd7b78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Okay - now I feel like the dumbest and worst user eve=
r - and rightfully so.</div><div><br></div><div>Just for the record - just =
incase someone else is as dumb as me...</div><div>(Damn - i feel so embarra=
ssed)</div><div><br></div><div>To be able to connect fast to the virtual ma=
chine and not to forget what to write - I created a text file on my desktop=
 with the command to start the VM as name. <br></div><div>Desperate KDE tri=
ed to fulfill my wish in translating the double &quot;//&quot; into somethi=
ng that doesn&#39;t interfere with the naming-principles but looks like the=
 user wanted it to.</div><div><br></div><div>I then copied the command from=
 the text file name to command line and used it (I thought i typed it later=
 on from the beginning with legitimate &quot;/&quot; as well but it seems t=
hat was not the case)</div><div><br></div><div>So everytime i tried, I appa=
rently used the old entries which weren&#39;t normal &quot;/&quot; - they n=
ever were but looked like them.</div><div><br></div><div>Sorry for cussing =
- but I am such a dumbass...</div><div><br></div><div>Frediano - may i tip =
you a coffee or something - I clearly owe you one.</div><div><br></div><div=
>Stefan<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">Am Fr., 18. Nov. 2022 um 12:46=C2=A0Uhr schrieb Frediano Z=
iglio &lt;<a href=3D"mailto:freddy77@gmail.com">freddy77@gmail.com</a>&gt;:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Il giorno ven 1=
8 nov 2022 alle ore 10:48 Stefan Silberstein<br>
&lt;<a href=3D"mailto:linuxstony@gmail.com" target=3D"_blank">linuxstony@gm=
ail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; Hope this wall of text helps you in any way :D<br>
&gt;<br>
&gt; stony@Aperture-Science:~$ history | grep spice | hexdump -C<br>
&gt; 00000000=C2=A0 20 31 32 30 36 20 20 72=C2=A0 65 6d 6f 74 65 2d 76 69=
=C2=A0 | 1206=C2=A0 remote-vi|<br>
&gt; 00000010=C2=A0 65 77 65 72 20 73 70 69=C2=A0 63 65 3a 2f 2f 31 39 32=
=C2=A0 |ewer spice://192|<br>
&gt; 00000020=C2=A0 2e 31 36 38 2e 31 37 38=C2=A0 2e 35 31 3a 35 39 30 30=
=C2=A0 |.168.178.51:5900|<br>
&gt; 00000030=C2=A0 0a 20 31 32 31 30 20 20=C2=A0 72 65 6d 6f 74 65 2d 76=
=C2=A0 |. 1210=C2=A0 remote-v|<br>
&gt; 00000040=C2=A0 69 65 77 65 72 20 73 70=C2=A0 69 63 65 3a 2f 2f 31 39=
=C2=A0 |iewer spice://19|<br>
&gt; 00000050=C2=A0 32 2e 31 36 38 2e 31 37=C2=A0 38 2e 35 31 3a 35 39 30=
=C2=A0 |2.168.178.51:590|<br>
&gt; 00000060=C2=A0 30 0a 20 31 33 30 39 20=C2=A0 20 72 65 6d 6f 74 65 2d=
=C2=A0 |0. 1309=C2=A0 remote-|<br>
&gt; 00000070=C2=A0 76 69 65 77 65 72 20 73=C2=A0 70 69 63 65 3a e2 81 84=
=C2=A0 |viewer spice:...|<br>
&gt; 00000080=C2=A0 e2 81 84 31 39 32 2e 31=C2=A0 36 38 2e 31 37 38 2e 35=
=C2=A0 |...192.168.178.5|<br>
<br>
There you go!<br>
<br>
$ echo -e &#39;\xe2\x81\x84&#39;<br>
=E2=81=84<br>
<br>
that&#39;s no a ASCII slash. echo -n / | hexdump -C<br>
00000000=C2=A0 2f=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |/|<br>
00000001<br>
<br>
(one byte, your is 3 bytes, surely not ASCII)<br>
<br>
... omissis (a lot more there) ...<br>
<br>
&gt; 0000179c<br>
&gt; stony@Aperture-Science:~$<br>
&gt;<br>
&gt; For now I will fade into the shadow of userdom again :)<br>
&gt;<br>
&gt; Stefan<br>
&gt;<br>
<br>
Frediano<br>
<br>
&gt; Am Fr., 18. Nov. 2022 um 11:25 Uhr schrieb Frediano Ziglio &lt;<a href=
=3D"mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>&gt;=
:<br>
&gt;&gt;<br>
&gt;&gt; Il giorno ven 18 nov 2022 alle ore 06:08 Stefan Silberstein<br>
&gt;&gt; &lt;<a href=3D"mailto:linuxstony@gmail.com" target=3D"_blank">linu=
xstony@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi Frediano, Hi List,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; after I was able to start the virtual machine with the GUI I =
tried your command<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; LANG=3DC remote-viewer spice://<a href=3D"http://192.168.178.=
51:5900" rel=3D"noreferrer" target=3D"_blank">192.168.178.51:5900</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; and it started right up into the virtual machine.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; HOWEVER<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; even<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; remote-viewer spice://<a href=3D"http://192.168.178.51:5900" =
rel=3D"noreferrer" target=3D"_blank">192.168.178.51:5900</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; now opens the virtual machine - without problems. (Yeah - i a=
m stunned myself)<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I slept over it then tried again today - thinking it never wo=
rked again the day after...<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Result is that I am able to open up the VM just fine....<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; This is the worst - something works without changing anything=
 so I have no chance of knowing what the problem is/was in the first place<=
br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; At a loss for words,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Stefan<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; Well, problem solved :-)<br>
&gt;&gt;<br>
&gt;&gt; I would check with a command like &quot;history | grep spice | hex=
dump -C&quot;<br>
&gt;&gt; (you can post the output) for some weird input. The errors you<br>
&gt;&gt; reported are basically (or at least they should) parsing errors fo=
r<br>
&gt;&gt; the URI you passed.<br>
&gt;&gt;<br>
&gt;&gt; Frediano<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Am Do., 17. Nov. 2022 um 10:30 Uhr schrieb Stefan Silberstein=
 &lt;<a href=3D"mailto:linuxstony@gmail.com" target=3D"_blank">linuxstony@g=
mail.com</a>&gt;:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Some details:<br>
&gt;&gt; &gt;&gt; Operating System: Kubuntu 22.04<br>
&gt;&gt; &gt;&gt; KDE Plasma Version: 5.24.6<br>
&gt;&gt; &gt;&gt; KDE Frameworks Version: 5.92.0<br>
&gt;&gt; &gt;&gt; Qt Version: 5.15.3<br>
&gt;&gt; &gt;&gt; Kernel Version: 5.15.0-53-generic (64-bit)<br>
&gt;&gt; &gt;&gt; Graphics Platform: X11<br>
&gt;&gt; &gt;&gt; Processors: 8 =C3=97 AMD Ryzen 5 1500X Quad-Core Processo=
r<br>
&gt;&gt; &gt;&gt; Memory: 15.6 GiB of RAM<br>
&gt;&gt; &gt;&gt; Graphics Processor: NVIDIA GeForce GTX 1050 Ti/PCIe/SSE2<=
br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Opening a Konsole &quot;bash&quot;:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Konsole<br>
&gt;&gt; &gt;&gt; Version 21.12.3<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Locale:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; stony@Aperture-Science:~$ locale LANG=3Dde_DE.UTF-8 LANGU=
AGE=3D LC_CTYPE=3D&quot;de_DE.UTF-8&quot; LC_NUMERIC=3D&quot;de_DE.UTF-8&qu=
ot; LC_TIME=3D&quot;de_DE.UTF-8&quot; LC_COLLATE=3D&quot;de_DE.UTF-8&quot; =
LC_MONETARY=3D&quot;de_DE.UTF-8&quot; LC_MESSAGES=3D&quot;de_DE.UTF-8&quot;=
 LC_PAPER=3D&quot;de_DE.UTF-8&quot; LC_NAME=3D&quot;de_DE.UTF-8&quot; LC_AD=
DRESS=3D&quot;de_DE.UTF-8&quot; LC_TELEPHONE=3D&quot;de_DE.UTF-8&quot; LC_M=
EASUREMENT=3D&quot;de_DE.UTF-8&quot; LC_IDENTIFICATION=3D&quot;de_DE.UTF-8&=
quot; LC_ALL=3D<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; I will try to open it today at noon - during my lunch bre=
ak.<br>
&gt;&gt; &gt;&gt; (ATM I am glad it works because i gotta work from home an=
d this windows-machine is the only way to connect to the Server in my compa=
ny for me)<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; I will get back to you in approximately two hours.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Stefan<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Am Do., 17. Nov. 2022 um 10:18 Uhr schrieb Frediano Zigli=
o &lt;<a href=3D"mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmai=
l.com</a>&gt;:<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; Il giorno gio 17 nov 2022 alle ore 09:13 Stefan Silbe=
rstein<br>
&gt;&gt; &gt;&gt;&gt; &lt;<a href=3D"mailto:linuxstony@gmail.com" target=3D=
"_blank">linuxstony@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; Hi,<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; no this is the normal forward-slash with &quot;s=
hift+7&quot; on the german keyboard - googlemail messed it up translating i=
t to something else.<br>
&gt;&gt; &gt;&gt;&gt; &gt; The URL=C2=A0 is normally typed.<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; This is really weird and I will try to help you =
as much as I can to get to the bottom of it.<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; Stefan<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; That&#39;s pretty weird. That code has been there for=
 ages. I tried but no<br>
&gt;&gt; &gt;&gt;&gt; problems for me.<br>
&gt;&gt; &gt;&gt;&gt; This operating system and version are you using?<br>
&gt;&gt; &gt;&gt;&gt; Which shell?<br>
&gt;&gt; &gt;&gt;&gt; Maybe it&#39;s the locale? Try launching something li=
ke &quot;LANG=3DC<br>
&gt;&gt; &gt;&gt;&gt; remote-viewer spice://<a href=3D"http://192.168.178.5=
1:5900" rel=3D"noreferrer" target=3D"_blank">192.168.178.51:5900</a>&quot; =
(LANG environment change)<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; Frediano<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; Am Do., 17. Nov. 2022 um 10:08 Uhr schrieb Fredi=
ano Ziglio &lt;<a href=3D"mailto:freddy77@gmail.com" target=3D"_blank">fred=
dy77@gmail.com</a>&gt;:<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; Il giorno gio 17 nov 2022 alle ore 07:57 Ste=
fan Silberstein<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:linuxstony@gmail.com" =
target=3D"_blank">linuxstony@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Hello again,<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; so - yesterday I worked from home - as =
I wrote I was able to connect by specifying the user root with &quot;remote=
-viewer spice://<a href=3D"http://root@192.168.178.51:5900" rel=3D"noreferr=
er" target=3D"_blank">root@192.168.178.51:5900</a>&quot;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Today I want to connect the exact same =
way (yesterday i simply closed the remote-viewer window and the server keep=
t on running so the windows-VM was running the whole night) - and I can not=
 connect.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Error Message on the console=C2=A0 &quo=
t;** (remote-viewer:6146): CRITICAL **: 07:55:52.853: virt_viewer_util_extr=
act_host: assertion &#39;uri !=3D NULL&#39; failed&quot;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Error Message on the popup says transla=
ted: Connectiontype could not be determined by URI.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; Hi,<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 That means that the code was no=
t able to parse the URI.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; IP of the server itself is 192.168.178.=
51<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; IP of the Virtual Machine is 192.168.17=
8.64 and i pingable<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Port 5900 on the server is open: 5900/t=
cp open=C2=A0 vnc<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; remote-viewer --spice-debug spice:=E2=
=81=84=E2=81=84<a href=3D"http://192.168.178.51:5900" rel=3D"noreferrer" ta=
rget=3D"_blank">192.168.178.51:5900</a> does not produce a more verbose out=
put :(<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; In this example you are not using ASCII slas=
hes (//), maybe that&#39;s the problem.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Update in the meantime<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; But maybe this is helpful to you:<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; I simply started &quot;remote-viewer --=
spice-debug&quot;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Then i got the GUI (which i wasnt even =
aware it existed).<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; When I choose the same entry on that li=
st - I AM able to connect.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; So the error only exists only when I tr=
y to connect via command line?! (This is when I am able to connect tomorrow=
 via GUI ;) )<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Shouldn&#39;t this be the same ?<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; I mabe I can help - maybe this is indee=
d a bug?<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Stefan<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; Frediano<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt; Am Mi., 16. Nov. 2022 um 09:37 Uhr schr=
ieb Victor Toso &lt;<a href=3D"mailto:victortoso@redhat.com" target=3D"_bla=
nk">victortoso@redhat.com</a>&gt;:<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; On Wed, Nov 16, 2022 at 09:27:21AM =
+0100, Stefan Silberstein wrote:<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; I appreciate the time to answe=
r me.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; In the meantime (out of desper=
ation because i needed the virtualmachine for<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; work) I gave it a go with spec=
ifying root as user and not the servers<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; username &quot;server&quot;.<b=
r>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; I was able to connect to the v=
irtual Windows10 installation with<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; remote-viewer spice://<a href=
=3D"http://root@192.168.178.51:5900" rel=3D"noreferrer" target=3D"_blank">r=
oot@192.168.178.51:5900</a><br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; Cool<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; But again - then I dont unters=
tand why it worked as user and<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; later on with specifying the u=
ser later on (which doesn&#39;t work<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; right now anymore)<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; So it is a permissions problem=
 on my side and I successfully<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; wasted your time. :/<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; Sorry about that.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; Don&#39;t worry about that. Happy t=
o hear it worked.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; This happens when &quot;users&=
quot; try to play with the big boys toys :D<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; Have a nice day you all and th=
anks for your time.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; You too.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; Cheers,<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; Stefan<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; Am Mi., 16. Nov. 2022 um 09:21=
 Uhr schrieb Victor Toso &lt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; <a href=3D"mailto:victortoso@r=
edhat.com" target=3D"_blank">victortoso@redhat.com</a>&gt;:<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; Hi Stefan,<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; On Tue, Nov 15, 2022 at 0=
9:53:05PM +0100, Stefan Silberstein wrote:<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; Hello developers,<br=
>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; I can imagine that t=
his will be an annoying question for you -<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; so I apologize in ad=
vance.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; I am a user - with a=
 longer history with linux BUT i am<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; completely new to vi=
rtualization.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; Due to the fact that=
 I got a server donated to me I wanted to<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; give it a go and it =
worked like a charm.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; Installed virt-manag=
er, installed Windows10=C2=A0 connected with<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; virt-manager - absol=
utely no problem.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; Due to the fact that=
 I need dual monitors I learned that I<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; could add another di=
splay and connect with spice - and it<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; worked immediately.<=
br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; BUT - without me cha=
nging anything (consciously) I wasn&#39;t able<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; to connect to the vi=
rtual machine the next week.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; It refuses with &quo=
t;Verbindungstyp konnte nicht von URI ermittelt werden&quot;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; (Connection type cou=
ld not be determined by URI)<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; Then i tried to conn=
ect with sudo and specifying the user in<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; the command line and=
 it once again connected:<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; sudo remote-viewer=
=C2=A0 spice:=E2=81=84=E2=81=84<a href=3D"http://server@192.168.178.51:5900=
" rel=3D"noreferrer" target=3D"_blank">server@192.168.178.51:5900</a><br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; Perhaps the URL is the pr=
oblem. If the IP is 192.168.178.51 and<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; the port for the VM is 59=
00, then try<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0remote=
-viewer spice://<a href=3D"http://192.168.178.51:5900" rel=3D"noreferrer" t=
arget=3D"_blank">192.168.178.51:5900</a><br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; If server is a dns that c=
an be resolved, should be fine to use it<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; instead of ip address<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0remote=
-viewer spice://server:5900<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; And now - again with=
out changing anything - it doesn&#39;t connect<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; with that command as=
 well.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; I have sadly NO clue=
 whatsoever where to even search for a<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; solution - the inter=
net didn&#39;t help me here...<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; Do you have any hint=
 at all what I might do wrong here?<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; The machine is avail=
able - the port is open and visible<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; PORT=C2=A0 =C2=A0 =
=C2=A0STATE SERVICE<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; 22/tcp=C2=A0 =C2=A0o=
pen=C2=A0 ssh<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; 80/tcp=C2=A0 =C2=A0o=
pen=C2=A0 http<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; 3389/tcp open=C2=A0 =
ms-wbt-server<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; 5900/tcp open=C2=A0 =
vnc<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; ufw on the server is=
 shut down.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; &gt; ANY help would be gr=
eatly appreciated.<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; You can get more verbose =
information of issues with --spice-debug<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; command line option too.<=
br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; Cheers,<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt; Victor<br>
&gt;&gt; &gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
</blockquote></div>

--0000000000001fea1905edbd7b78--
