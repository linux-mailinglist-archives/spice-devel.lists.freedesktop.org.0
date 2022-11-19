Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 229FB630C07
	for <lists+spice-devel@lfdr.de>; Sat, 19 Nov 2022 06:18:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5863310E25D;
	Sat, 19 Nov 2022 05:18:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 230CC10E25D
 for <spice-devel@lists.freedesktop.org>; Sat, 19 Nov 2022 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1668835112;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=B8uijI5jFRRYkkrsirMGVkYJ/d6J3yhwKTytUJOrrbU=;
 b=Vgr9/rW8OoJkwJNWdMIbH844PYK0gQX+D40MDEo11xA37zBclQAMGO2iPJ7cn1uw9pMYJe
 YgWhDDMLmb4tw9WrcGCjKqiusOpep2+UzxqOUokzyTgQFw+LFWub/XzyWTvFqwFyOTERzE
 AQKnNq4PAOzAm69Tt2As36alIJTiBU8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-74-neVhFdbEMMG5ykZS49nLWA-1; Sat, 19 Nov 2022 00:18:24 -0500
X-MC-Unique: neVhFdbEMMG5ykZS49nLWA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5F3478339B4;
 Sat, 19 Nov 2022 05:18:24 +0000 (UTC)
Received: from localhost (ovpn-192-12.brq.redhat.com [10.40.192.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B9E9D140EBF3;
 Sat, 19 Nov 2022 05:18:23 +0000 (UTC)
Date: Sat, 19 Nov 2022 06:18:22 +0100
From: Victor Toso <victortoso@redhat.com>
To: Stefan Silberstein <linuxstony@gmail.com>
Message-ID: <20221119051822.42qssixbaoehfqiz@tapioca>
References: <CADiWsK8NizZeSeQCrbZ-PU1Vjufmnt0exTOhJ5jFaRfnWo+aVA@mail.gmail.com>
 <CAHt6W4cmvcxagPeCMv1WsShT7BnMHGXMyzpp7BT=6wT+wBYFxw@mail.gmail.com>
 <CADiWsK9CunRBfzbazm9FqFw3t3vqRf58rR2uW8Erxns9r3xxPw@mail.gmail.com>
 <CAHt6W4eb2Mu1kCxh1wQy1pUsJkeamq1KhgH29B+r7V-8KDMWdQ@mail.gmail.com>
 <CADiWsK_5Oeof94_gU6fUXoMh9rapZgAcmaXkcM2Rg3TQdSyo5g@mail.gmail.com>
 <CADiWsK-mpnzoTDBWEg8iJG+aEy-jWSK9JYqmtkASbO8jNhVR+Q@mail.gmail.com>
 <CAHt6W4f-HxuQ=+eNtYiTsNkeQwXKZ=h=WhUbc8y6Caua26dyKA@mail.gmail.com>
 <CADiWsK9-PWpMoSezbtO4gh2z1dnznZSY8kT1DxWruAjUhCrtWQ@mail.gmail.com>
 <CAHt6W4c8Hm6yvkx5cDhxjz7EEtMSJ70TgXPUJXQN-9XBxWJOxQ@mail.gmail.com>
 <CADiWsK8AwiGXR1SRXOWGK1DVXbi736pb=pHG8LVGX-YvVX6MWw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="srllviknuxcwqbku"
Content-Disposition: inline
In-Reply-To: <CADiWsK8AwiGXR1SRXOWGK1DVXbi736pb=pHG8LVGX-YvVX6MWw@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
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


--srllviknuxcwqbku
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Nov 18, 2022 at 01:02:22PM +0100, Stefan Silberstein wrote:
> Okay - now I feel like the dumbest and worst user ever - and rightfully s=
o.
>
> Just for the record - just incase someone else is as dumb as me...
> (Damn - i feel so embarrassed)
>
> To be able to connect fast to the virtual machine and not to forget what =
to
> write - I created a text file on my desktop with the command to start the
> VM as name.
> Desperate KDE tried to fulfill my wish in translating the double "//" into
> something that doesn't interfere with the naming-principles but looks like
> the user wanted it to.
>
> I then copied the command from the text file name to command line and used
> it (I thought i typed it later on from the beginning with legitimate "/" =
as
> well but it seems that was not the case)

You can create a shell script with the command which should work
by even double clicking with KDE's file manager.

I personally use terminal's history. With bash you can just hit
ctrl+R and type something (e.g: "re") and it'll reverse search in
your history. I use fish instead of bash, reverse history is
default and very useful indeed.

> So everytime i tried, I apparently used the old entries which weren't
> normal "/" - they never were but looked like them.
>
> Sorry for cussing - but I am such a dumbass...

It happens, don't worry.
Cheers,

>
> Frediano - may i tip you a coffee or something - I clearly owe
> you one.
>
> Stefan
>=20
> Am Fr., 18. Nov. 2022 um 12:46 Uhr schrieb Frediano Ziglio <
> freddy77@gmail.com>:
>=20
> > Il giorno ven 18 nov 2022 alle ore 10:48 Stefan Silberstein
> > <linuxstony@gmail.com> ha scritto:
> > >
> > > Hope this wall of text helps you in any way :D
> > >
> > > stony@Aperture-Science:~$ history | grep spice | hexdump -C
> > > 00000000  20 31 32 30 36 20 20 72  65 6d 6f 74 65 2d 76 69  | 1206
> > remote-vi|
> > > 00000010  65 77 65 72 20 73 70 69  63 65 3a 2f 2f 31 39 32  |ewer
> > spice://192|
> > > 00000020  2e 31 36 38 2e 31 37 38  2e 35 31 3a 35 39 30 30
> > |.168.178.51:5900|
> > > 00000030  0a 20 31 32 31 30 20 20  72 65 6d 6f 74 65 2d 76  |. 1210
> > remote-v|
> > > 00000040  69 65 77 65 72 20 73 70  69 63 65 3a 2f 2f 31 39  |iewer
> > spice://19|
> > > 00000050  32 2e 31 36 38 2e 31 37  38 2e 35 31 3a 35 39 30
> > |2.168.178.51:590|
> > > 00000060  30 0a 20 31 33 30 39 20  20 72 65 6d 6f 74 65 2d  |0. 1309
> > remote-|
> > > 00000070  76 69 65 77 65 72 20 73  70 69 63 65 3a e2 81 84  |viewer
> > spice:...|
> > > 00000080  e2 81 84 31 39 32 2e 31  36 38 2e 31 37 38 2e 35
> > |...192.168.178.5|
> >
> > There you go!
> >
> > $ echo -e '\xe2\x81\x84'
> > =E2=81=84
> >
> > that's no a ASCII slash. echo -n / | hexdump -C
> > 00000000  2f                                                |/|
> > 00000001
> >
> > (one byte, your is 3 bytes, surely not ASCII)
> >
> > ... omissis (a lot more there) ...
> >
> > > 0000179c
> > > stony@Aperture-Science:~$
> > >
> > > For now I will fade into the shadow of userdom again :)
> > >
> > > Stefan
> > >
> >
> > Frediano
> >
> > > Am Fr., 18. Nov. 2022 um 11:25 Uhr schrieb Frediano Ziglio <
> > freddy77@gmail.com>:
> > >>
> > >> Il giorno ven 18 nov 2022 alle ore 06:08 Stefan Silberstein
> > >> <linuxstony@gmail.com> ha scritto:
> > >> >
> > >> > Hi Frediano, Hi List,
> > >> >
> > >> > after I was able to start the virtual machine with the GUI I tried
> > your command
> > >> >
> > >> > LANG=3DC remote-viewer spice://192.168.178.51:5900
> > >> >
> > >> > and it started right up into the virtual machine.
> > >> >
> > >> > HOWEVER
> > >> >
> > >> > even
> > >> >
> > >> > remote-viewer spice://192.168.178.51:5900
> > >> >
> > >> > now opens the virtual machine - without problems. (Yeah - i am
> > stunned myself)
> > >> >
> > >> > I slept over it then tried again today - thinking it never worked
> > again the day after...
> > >> >
> > >> > Result is that I am able to open up the VM just fine....
> > >> >
> > >> > This is the worst - something works without changing anything so I
> > have no chance of knowing what the problem is/was in the first place
> > >> >
> > >> > At a loss for words,
> > >> >
> > >> > Stefan
> > >> >
> > >>
> > >> Well, problem solved :-)
> > >>
> > >> I would check with a command like "history | grep spice | hexdump -C"
> > >> (you can post the output) for some weird input. The errors you
> > >> reported are basically (or at least they should) parsing errors for
> > >> the URI you passed.
> > >>
> > >> Frediano
> > >>
> > >>
> > >>
> > >> > Am Do., 17. Nov. 2022 um 10:30 Uhr schrieb Stefan Silberstein <
> > linuxstony@gmail.com>:
> > >> >>
> > >> >> Some details:
> > >> >> Operating System: Kubuntu 22.04
> > >> >> KDE Plasma Version: 5.24.6
> > >> >> KDE Frameworks Version: 5.92.0
> > >> >> Qt Version: 5.15.3
> > >> >> Kernel Version: 5.15.0-53-generic (64-bit)
> > >> >> Graphics Platform: X11
> > >> >> Processors: 8 =C3=97 AMD Ryzen 5 1500X Quad-Core Processor
> > >> >> Memory: 15.6 GiB of RAM
> > >> >> Graphics Processor: NVIDIA GeForce GTX 1050 Ti/PCIe/SSE2
> > >> >>
> > >> >> Opening a Konsole "bash":
> > >> >>
> > >> >> Konsole
> > >> >> Version 21.12.3
> > >> >>
> > >> >>
> > >> >> Locale:
> > >> >>
> > >> >> stony@Aperture-Science:~$ locale LANG=3Dde_DE.UTF-8 LANGUAGE=3D
> > LC_CTYPE=3D"de_DE.UTF-8" LC_NUMERIC=3D"de_DE.UTF-8" LC_TIME=3D"de_DE.UT=
F-8"
> > LC_COLLATE=3D"de_DE.UTF-8" LC_MONETARY=3D"de_DE.UTF-8"
> > LC_MESSAGES=3D"de_DE.UTF-8" LC_PAPER=3D"de_DE.UTF-8" LC_NAME=3D"de_DE.U=
TF-8"
> > LC_ADDRESS=3D"de_DE.UTF-8" LC_TELEPHONE=3D"de_DE.UTF-8"
> > LC_MEASUREMENT=3D"de_DE.UTF-8" LC_IDENTIFICATION=3D"de_DE.UTF-8" LC_ALL=
=3D
> > >> >>
> > >> >> I will try to open it today at noon - during my lunch break.
> > >> >> (ATM I am glad it works because i gotta work from home and this
> > windows-machine is the only way to connect to the Server in my company =
for
> > me)
> > >> >>
> > >> >> I will get back to you in approximately two hours.
> > >> >>
> > >> >> Stefan
> > >> >>
> > >> >> Am Do., 17. Nov. 2022 um 10:18 Uhr schrieb Frediano Ziglio <
> > freddy77@gmail.com>:
> > >> >>>
> > >> >>> Il giorno gio 17 nov 2022 alle ore 09:13 Stefan Silberstein
> > >> >>> <linuxstony@gmail.com> ha scritto:
> > >> >>> >
> > >> >>> > Hi,
> > >> >>> >
> > >> >>> > no this is the normal forward-slash with "shift+7" on the germ=
an
> > keyboard - googlemail messed it up translating it to something else.
> > >> >>> > The URL  is normally typed.
> > >> >>> >
> > >> >>> > This is really weird and I will try to help you as much as I c=
an
> > to get to the bottom of it.
> > >> >>> >
> > >> >>> > Stefan
> > >> >>> >
> > >> >>>
> > >> >>> That's pretty weird. That code has been there for ages. I tried =
but
> > no
> > >> >>> problems for me.
> > >> >>> This operating system and version are you using?
> > >> >>> Which shell?
> > >> >>> Maybe it's the locale? Try launching something like "LANG=3DC
> > >> >>> remote-viewer spice://192.168.178.51:5900" (LANG environment
> > change)
> > >> >>>
> > >> >>> Frediano
> > >> >>>
> > >> >>> > Am Do., 17. Nov. 2022 um 10:08 Uhr schrieb Frediano Ziglio <
> > freddy77@gmail.com>:
> > >> >>> >>
> > >> >>> >> Il giorno gio 17 nov 2022 alle ore 07:57 Stefan Silberstein
> > >> >>> >> <linuxstony@gmail.com> ha scritto:
> > >> >>> >> >
> > >> >>> >> > Hello again,
> > >> >>> >> >
> > >> >>> >> > so - yesterday I worked from home - as I wrote I was able to
> > connect by specifying the user root with "remote-viewer spice://
> > root@192.168.178.51:5900"
> > >> >>> >> >
> > >> >>> >> > Today I want to connect the exact same way (yesterday i sim=
ply
> > closed the remote-viewer window and the server keept on running so the
> > windows-VM was running the whole night) - and I can not connect.
> > >> >>> >> >
> > >> >>> >> > Error Message on the console  "** (remote-viewer:6146):
> > CRITICAL **: 07:55:52.853: virt_viewer_util_extract_host: assertion 'ur=
i !=3D
> > NULL' failed"
> > >> >>> >> > Error Message on the popup says translated: Connectiontype
> > could not be determined by URI.
> > >> >>> >> >
> > >> >>> >>
> > >> >>> >> Hi,
> > >> >>> >>    That means that the code was not able to parse the URI.
> > >> >>> >>
> > >> >>> >> > IP of the server itself is 192.168.178.51
> > >> >>> >> > IP of the Virtual Machine is 192.168.178.64 and i pingable
> > >> >>> >> > Port 5900 on the server is open: 5900/tcp open  vnc
> > >> >>> >> > remote-viewer --spice-debug spice:=E2=81=84=E2=81=84192.168=
=2E178.51:5900 does
> > not produce a more verbose output :(
> > >> >>> >> >
> > >> >>> >>
> > >> >>> >> In this example you are not using ASCII slashes (//), maybe
> > that's the problem.
> > >> >>> >>
> > >> >>> >> > Update in the meantime
> > >> >>> >> > But maybe this is helpful to you:
> > >> >>> >> >
> > >> >>> >> > I simply started "remote-viewer --spice-debug"
> > >> >>> >> > Then i got the GUI (which i wasnt even aware it existed).
> > >> >>> >> >
> > >> >>> >> > When I choose the same entry on that list - I AM able to
> > connect.
> > >> >>> >> >
> > >> >>> >> > So the error only exists only when I try to connect via
> > command line?! (This is when I am able to connect tomorrow via GUI ;) )
> > >> >>> >> >
> > >> >>> >> > Shouldn't this be the same ?
> > >> >>> >> >
> > >> >>> >> > I mabe I can help - maybe this is indeed a bug?
> > >> >>> >> >
> > >> >>> >> > Stefan
> > >> >>> >> >
> > >> >>> >>
> > >> >>> >> Frediano
> > >> >>> >>
> > >> >>> >> > Am Mi., 16. Nov. 2022 um 09:37 Uhr schrieb Victor Toso <
> > victortoso@redhat.com>:
> > >> >>> >> >>
> > >> >>> >> >> On Wed, Nov 16, 2022 at 09:27:21AM +0100, Stefan Silberste=
in
> > wrote:
> > >> >>> >> >> > I appreciate the time to answer me.
> > >> >>> >> >> >
> > >> >>> >> >> > In the meantime (out of desperation because i needed the
> > virtualmachine for
> > >> >>> >> >> > work) I gave it a go with specifying root as user and not
> > the servers
> > >> >>> >> >> > username "server".
> > >> >>> >> >> >
> > >> >>> >> >> > I was able to connect to the virtual Windows10 installat=
ion
> > with
> > >> >>> >> >> >
> > >> >>> >> >> > remote-viewer spice://root@192.168.178.51:5900
> > >> >>> >> >>
> > >> >>> >> >> Cool
> > >> >>> >> >>
> > >> >>> >> >> > But again - then I dont unterstand why it worked as user=
 and
> > >> >>> >> >> > later on with specifying the user later on (which doesn't
> > work
> > >> >>> >> >> > right now anymore)
> > >> >>> >> >> >
> > >> >>> >> >> > So it is a permissions problem on my side and I successf=
ully
> > >> >>> >> >> > wasted your time. :/
> > >> >>> >> >> >
> > >> >>> >> >> > Sorry about that.
> > >> >>> >> >>
> > >> >>> >> >> Don't worry about that. Happy to hear it worked.
> > >> >>> >> >>
> > >> >>> >> >> >
> > >> >>> >> >> > This happens when "users" try to play with the big boys
> > toys :D
> > >> >>> >> >> >
> > >> >>> >> >> > Have a nice day you all and thanks for your time.
> > >> >>> >> >>
> > >> >>> >> >> You too.
> > >> >>> >> >> Cheers,
> > >> >>> >> >>
> > >> >>> >> >> >
> > >> >>> >> >> > Stefan
> > >> >>> >> >> >
> > >> >>> >> >> > Am Mi., 16. Nov. 2022 um 09:21 Uhr schrieb Victor Toso <
> > >> >>> >> >> > victortoso@redhat.com>:
> > >> >>> >> >> >
> > >> >>> >> >> > > Hi Stefan,
> > >> >>> >> >> > >
> > >> >>> >> >> > > On Tue, Nov 15, 2022 at 09:53:05PM +0100, Stefan
> > Silberstein wrote:
> > >> >>> >> >> > > > Hello developers,
> > >> >>> >> >> > > >
> > >> >>> >> >> > > > I can imagine that this will be an annoying question
> > for you -
> > >> >>> >> >> > > > so I apologize in advance.
> > >> >>> >> >> > > >
> > >> >>> >> >> > > > I am a user - with a longer history with linux BUT i=
 am
> > >> >>> >> >> > > > completely new to virtualization.
> > >> >>> >> >> > > > Due to the fact that I got a server donated to me I
> > wanted to
> > >> >>> >> >> > > > give it a go and it worked like a charm.
> > >> >>> >> >> > > >
> > >> >>> >> >> > > > Installed virt-manager, installed Windows10  connect=
ed
> > with
> > >> >>> >> >> > > > virt-manager - absolutely no problem.
> > >> >>> >> >> > > >
> > >> >>> >> >> > > > Due to the fact that I need dual monitors I learned
> > that I
> > >> >>> >> >> > > > could add another display and connect with spice - a=
nd
> > it
> > >> >>> >> >> > > > worked immediately.
> > >> >>> >> >> > > >
> > >> >>> >> >> > > > BUT - without me changing anything (consciously) I
> > wasn't able
> > >> >>> >> >> > > > to connect to the virtual machine the next week.
> > >> >>> >> >> > > >
> > >> >>> >> >> > > > It refuses with "Verbindungstyp konnte nicht von URI
> > ermittelt werden"
> > >> >>> >> >> > > > (Connection type could not be determined by URI)
> > >> >>> >> >> > > >
> > >> >>> >> >> > > > Then i tried to connect with sudo and specifying the
> > user in
> > >> >>> >> >> > > > the command line and it once again connected:
> > >> >>> >> >> > > >
> > >> >>> >> >> > > > sudo remote-viewer  spice:=E2=81=84=E2=81=84server@1=
92.168.178.51:5900
> > >> >>> >> >> > >
> > >> >>> >> >> > > Perhaps the URL is the problem. If the IP is
> > 192.168.178.51 and
> > >> >>> >> >> > > the port for the VM is 5900, then try
> > >> >>> >> >> > >
> > >> >>> >> >> > >     remote-viewer spice://192.168.178.51:5900
> > >> >>> >> >> > >
> > >> >>> >> >> > > If server is a dns that can be resolved, should be fine
> > to use it
> > >> >>> >> >> > > instead of ip address
> > >> >>> >> >> > >
> > >> >>> >> >> > >     remote-viewer spice://server:5900
> > >> >>> >> >> > >
> > >> >>> >> >> > >
> > >> >>> >> >> > > > And now - again without changing anything - it doesn=
't
> > connect
> > >> >>> >> >> > > > with that command as well.
> > >> >>> >> >> > > >
> > >> >>> >> >> > > > I have sadly NO clue whatsoever where to even search
> > for a
> > >> >>> >> >> > > > solution - the internet didn't help me here...
> > >> >>> >> >> > > >
> > >> >>> >> >> > > > Do you have any hint at all what I might do wrong he=
re?
> > >> >>> >> >> > > >
> > >> >>> >> >> > > > The machine is available - the port is open and visi=
ble
> > >> >>> >> >> > > > PORT     STATE SERVICE
> > >> >>> >> >> > > > 22/tcp   open  ssh
> > >> >>> >> >> > > > 80/tcp   open  http
> > >> >>> >> >> > > > 3389/tcp open  ms-wbt-server
> > >> >>> >> >> > > > 5900/tcp open  vnc
> > >> >>> >> >> > > >
> > >> >>> >> >> > > > ufw on the server is shut down.
> > >> >>> >> >> > > >
> > >> >>> >> >> > > > ANY help would be greatly appreciated.
> > >> >>> >> >> > >
> > >> >>> >> >> > > You can get more verbose information of issues with
> > --spice-debug
> > >> >>> >> >> > > command line option too.
> > >> >>> >> >> > >
> > >> >>> >> >> > > Cheers,
> > >> >>> >> >> > > Victor
> > >> >>> >> >> > >
> >

--srllviknuxcwqbku
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmN4Zx0ACgkQl9kSPeN6
SE+++Q//b3Qz97yNcL2DLj18FP3+ThHXPa0a5bv9JnvgJADgIg5NY0Qe20W9qFEN
/hIJmOE/oCzKCdvIfFUB9HDVokG9G5Ifxy8g8+62PtQmccazpXSu4qEYWYOTmOdE
0wLlpWPFHhSaXr5lyvXKVdKriHZBoUKwxIxFpQhFcAraIkAPAInabUdJzT0rHNKr
NuyFxZ/a6Jc86BpNug6TUMMYz5L9Ubb/5Yb6Vm8+5vg6EUPVy7c1cwfBf47wF0Fv
9ct2zmSWbbntGVx73Y4DNzbxOIX7bgPykxxvLAW15JoHpWlQ2NYTQEx9toXj9mv4
iSZx7xAUxnBlET/pC5ZVDs1xAMZ7BwSfUKgPOxAMSqP7qsf6O7UfEYAtY1ckduU8
zs4EcFv16yOnk+Bhpor7dcrL7hq/CPccB/qGsNpc0s4jCo2UdwdlEYphjRIyhPAt
7Q51ZJCeRxjRYA9wlPcIhWKn4lJ+HKMNc6EB3+4EqKgOEF6owSOnS0eMx7Y5DRjr
YsL7JTXM4JG+4HRy4ldBOcZJGMHCuFBBIt4YHSxKwuAL0FjRB1VBjD25eMODpTSp
wL2Zvnbv8Qwin5pmsuRqa0Dw/5HHhV/hGY0E2tGYbuqV2GT9zY7Dk5WUAFf9x6DW
IlG2p08HtNb+fdvDpJmo0iOQmCWeXkACv/FMT1u9xjnNdNp16Tg=
=eyxU
-----END PGP SIGNATURE-----

--srllviknuxcwqbku--

