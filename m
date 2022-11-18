Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A664462F3F2
	for <lists+spice-devel@lfdr.de>; Fri, 18 Nov 2022 12:46:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27F8810E6C8;
	Fri, 18 Nov 2022 11:46:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com
 [IPv6:2607:f8b0:4864:20::233])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D6AE10E6FE
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Nov 2022 11:46:33 +0000 (UTC)
Received: by mail-oi1-x233.google.com with SMTP id t62so5046384oib.12
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Nov 2022 03:46:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0LxBD+BuHoborx0NhiiNa0DdLKJNh6mAkrsdvOj6Y0Q=;
 b=pbrbqSHK4mSPR4FrXSl41y55aat1T0ELwCwHLMPes5yYcbfUq+5MQwWvir3PGXp6kg
 L6rB66VL/gAUutO+dK+Rrxvg0kNcTPTskV77grr4AsDuKkq+hjMfUCEDuQmYHNAH0L+B
 DVWdfhlRGa8hlD23mTNfHfLBs11Vu4cG1K04P35y2kdxXmyVIxAc8ia0YpioZdmtj/aU
 NyAG2fVW3nf2afzyuOXky2QgUxM1TMx0/agauT2oqtFR1+YOtA9ocXzQRNvsj+2xrJz5
 TMGaEprjb7iHb22o5AH3Yl6k3vfTxPL+qxDplTn+VFJFmWlD3T7cJDgV69+0bnNSXSU7
 kzEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0LxBD+BuHoborx0NhiiNa0DdLKJNh6mAkrsdvOj6Y0Q=;
 b=FQZHYT4cpIfvAgltsL0DB7n/HZXznmwp3faYv5BjCmk2wa42wlRXrii5/QtRUh2gLA
 lcYptt4dwymRtj0vhOITdEukHsLbgR20aMckLq7HqTRPwrtZa1xrxnnCwJVbH8LcGS/K
 sy6rQbfJp3ljwn+WsHKXlMUO29l7u5yku9xUgxHrsiyjZa1ApJVYFYI9dVLkK1r4A8R7
 1FVmUITfdi+bIo0AytPxZqUf4CrX+wlWraSdMGYRsgtGm6Iksisqc+ujcJ0qk6RcBUdI
 GKg2vU9uyuStw4Spr6q0vjF4EISYmf/dQMqrLqIoygVjmVgSinm6ctXLTYYu87Fu6F/i
 aJww==
X-Gm-Message-State: ANoB5pn4MIgRaynhltkpWHlCkKuWcvhN11twYBac0GhkQ6mNwZOnk4ZK
 iGBkYMR9CKjd1AsQbeaOYHMufQFF8O86DJH3XNtM/eKtTk0=
X-Google-Smtp-Source: AA0mqf7zJgG0dJhMiYoXMj97hhLSROMVIqO00Swzvp4XToDTWgCwhoZOP1wMfVWoSgsYb5nmjTfl0Wb8VA6B6vmqRdM=
X-Received: by 2002:a54:4009:0:b0:35a:3bb8:da5e with SMTP id
 x9-20020a544009000000b0035a3bb8da5emr6258941oie.1.1668771992157; Fri, 18 Nov
 2022 03:46:32 -0800 (PST)
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
In-Reply-To: <CADiWsK9-PWpMoSezbtO4gh2z1dnznZSY8kT1DxWruAjUhCrtWQ@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 18 Nov 2022 11:46:21 +0000
Message-ID: <CAHt6W4c8Hm6yvkx5cDhxjz7EEtMSJ70TgXPUJXQN-9XBxWJOxQ@mail.gmail.com>
To: Stefan Silberstein <linuxstony@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Il giorno ven 18 nov 2022 alle ore 10:48 Stefan Silberstein
<linuxstony@gmail.com> ha scritto:
>
> Hope this wall of text helps you in any way :D
>
> stony@Aperture-Science:~$ history | grep spice | hexdump -C
> 00000000  20 31 32 30 36 20 20 72  65 6d 6f 74 65 2d 76 69  | 1206  remot=
e-vi|
> 00000010  65 77 65 72 20 73 70 69  63 65 3a 2f 2f 31 39 32  |ewer spice:/=
/192|
> 00000020  2e 31 36 38 2e 31 37 38  2e 35 31 3a 35 39 30 30  |.168.178.51:=
5900|
> 00000030  0a 20 31 32 31 30 20 20  72 65 6d 6f 74 65 2d 76  |. 1210  remo=
te-v|
> 00000040  69 65 77 65 72 20 73 70  69 63 65 3a 2f 2f 31 39  |iewer spice:=
//19|
> 00000050  32 2e 31 36 38 2e 31 37  38 2e 35 31 3a 35 39 30  |2.168.178.51=
:590|
> 00000060  30 0a 20 31 33 30 39 20  20 72 65 6d 6f 74 65 2d  |0. 1309  rem=
ote-|
> 00000070  76 69 65 77 65 72 20 73  70 69 63 65 3a e2 81 84  |viewer spice=
:...|
> 00000080  e2 81 84 31 39 32 2e 31  36 38 2e 31 37 38 2e 35  |...192.168.1=
78.5|

There you go!

$ echo -e '\xe2\x81\x84'
=E2=81=84

that's no a ASCII slash. echo -n / | hexdump -C
00000000  2f                                                |/|
00000001

(one byte, your is 3 bytes, surely not ASCII)

... omissis (a lot more there) ...

> 0000179c
> stony@Aperture-Science:~$
>
> For now I will fade into the shadow of userdom again :)
>
> Stefan
>

Frediano

> Am Fr., 18. Nov. 2022 um 11:25 Uhr schrieb Frediano Ziglio <freddy77@gmai=
l.com>:
>>
>> Il giorno ven 18 nov 2022 alle ore 06:08 Stefan Silberstein
>> <linuxstony@gmail.com> ha scritto:
>> >
>> > Hi Frediano, Hi List,
>> >
>> > after I was able to start the virtual machine with the GUI I tried you=
r command
>> >
>> > LANG=3DC remote-viewer spice://192.168.178.51:5900
>> >
>> > and it started right up into the virtual machine.
>> >
>> > HOWEVER
>> >
>> > even
>> >
>> > remote-viewer spice://192.168.178.51:5900
>> >
>> > now opens the virtual machine - without problems. (Yeah - i am stunned=
 myself)
>> >
>> > I slept over it then tried again today - thinking it never worked agai=
n the day after...
>> >
>> > Result is that I am able to open up the VM just fine....
>> >
>> > This is the worst - something works without changing anything so I hav=
e no chance of knowing what the problem is/was in the first place
>> >
>> > At a loss for words,
>> >
>> > Stefan
>> >
>>
>> Well, problem solved :-)
>>
>> I would check with a command like "history | grep spice | hexdump -C"
>> (you can post the output) for some weird input. The errors you
>> reported are basically (or at least they should) parsing errors for
>> the URI you passed.
>>
>> Frediano
>>
>>
>>
>> > Am Do., 17. Nov. 2022 um 10:30 Uhr schrieb Stefan Silberstein <linuxst=
ony@gmail.com>:
>> >>
>> >> Some details:
>> >> Operating System: Kubuntu 22.04
>> >> KDE Plasma Version: 5.24.6
>> >> KDE Frameworks Version: 5.92.0
>> >> Qt Version: 5.15.3
>> >> Kernel Version: 5.15.0-53-generic (64-bit)
>> >> Graphics Platform: X11
>> >> Processors: 8 =C3=97 AMD Ryzen 5 1500X Quad-Core Processor
>> >> Memory: 15.6 GiB of RAM
>> >> Graphics Processor: NVIDIA GeForce GTX 1050 Ti/PCIe/SSE2
>> >>
>> >> Opening a Konsole "bash":
>> >>
>> >> Konsole
>> >> Version 21.12.3
>> >>
>> >>
>> >> Locale:
>> >>
>> >> stony@Aperture-Science:~$ locale LANG=3Dde_DE.UTF-8 LANGUAGE=3D LC_CT=
YPE=3D"de_DE.UTF-8" LC_NUMERIC=3D"de_DE.UTF-8" LC_TIME=3D"de_DE.UTF-8" LC_C=
OLLATE=3D"de_DE.UTF-8" LC_MONETARY=3D"de_DE.UTF-8" LC_MESSAGES=3D"de_DE.UTF=
-8" LC_PAPER=3D"de_DE.UTF-8" LC_NAME=3D"de_DE.UTF-8" LC_ADDRESS=3D"de_DE.UT=
F-8" LC_TELEPHONE=3D"de_DE.UTF-8" LC_MEASUREMENT=3D"de_DE.UTF-8" LC_IDENTIF=
ICATION=3D"de_DE.UTF-8" LC_ALL=3D
>> >>
>> >> I will try to open it today at noon - during my lunch break.
>> >> (ATM I am glad it works because i gotta work from home and this windo=
ws-machine is the only way to connect to the Server in my company for me)
>> >>
>> >> I will get back to you in approximately two hours.
>> >>
>> >> Stefan
>> >>
>> >> Am Do., 17. Nov. 2022 um 10:18 Uhr schrieb Frediano Ziglio <freddy77@=
gmail.com>:
>> >>>
>> >>> Il giorno gio 17 nov 2022 alle ore 09:13 Stefan Silberstein
>> >>> <linuxstony@gmail.com> ha scritto:
>> >>> >
>> >>> > Hi,
>> >>> >
>> >>> > no this is the normal forward-slash with "shift+7" on the german k=
eyboard - googlemail messed it up translating it to something else.
>> >>> > The URL  is normally typed.
>> >>> >
>> >>> > This is really weird and I will try to help you as much as I can t=
o get to the bottom of it.
>> >>> >
>> >>> > Stefan
>> >>> >
>> >>>
>> >>> That's pretty weird. That code has been there for ages. I tried but =
no
>> >>> problems for me.
>> >>> This operating system and version are you using?
>> >>> Which shell?
>> >>> Maybe it's the locale? Try launching something like "LANG=3DC
>> >>> remote-viewer spice://192.168.178.51:5900" (LANG environment change)
>> >>>
>> >>> Frediano
>> >>>
>> >>> > Am Do., 17. Nov. 2022 um 10:08 Uhr schrieb Frediano Ziglio <freddy=
77@gmail.com>:
>> >>> >>
>> >>> >> Il giorno gio 17 nov 2022 alle ore 07:57 Stefan Silberstein
>> >>> >> <linuxstony@gmail.com> ha scritto:
>> >>> >> >
>> >>> >> > Hello again,
>> >>> >> >
>> >>> >> > so - yesterday I worked from home - as I wrote I was able to co=
nnect by specifying the user root with "remote-viewer spice://root@192.168.=
178.51:5900"
>> >>> >> >
>> >>> >> > Today I want to connect the exact same way (yesterday i simply =
closed the remote-viewer window and the server keept on running so the wind=
ows-VM was running the whole night) - and I can not connect.
>> >>> >> >
>> >>> >> > Error Message on the console  "** (remote-viewer:6146): CRITICA=
L **: 07:55:52.853: virt_viewer_util_extract_host: assertion 'uri !=3D NULL=
' failed"
>> >>> >> > Error Message on the popup says translated: Connectiontype coul=
d not be determined by URI.
>> >>> >> >
>> >>> >>
>> >>> >> Hi,
>> >>> >>    That means that the code was not able to parse the URI.
>> >>> >>
>> >>> >> > IP of the server itself is 192.168.178.51
>> >>> >> > IP of the Virtual Machine is 192.168.178.64 and i pingable
>> >>> >> > Port 5900 on the server is open: 5900/tcp open  vnc
>> >>> >> > remote-viewer --spice-debug spice:=E2=81=84=E2=81=84192.168.178=
.51:5900 does not produce a more verbose output :(
>> >>> >> >
>> >>> >>
>> >>> >> In this example you are not using ASCII slashes (//), maybe that'=
s the problem.
>> >>> >>
>> >>> >> > Update in the meantime
>> >>> >> > But maybe this is helpful to you:
>> >>> >> >
>> >>> >> > I simply started "remote-viewer --spice-debug"
>> >>> >> > Then i got the GUI (which i wasnt even aware it existed).
>> >>> >> >
>> >>> >> > When I choose the same entry on that list - I AM able to connec=
t.
>> >>> >> >
>> >>> >> > So the error only exists only when I try to connect via command=
 line?! (This is when I am able to connect tomorrow via GUI ;) )
>> >>> >> >
>> >>> >> > Shouldn't this be the same ?
>> >>> >> >
>> >>> >> > I mabe I can help - maybe this is indeed a bug?
>> >>> >> >
>> >>> >> > Stefan
>> >>> >> >
>> >>> >>
>> >>> >> Frediano
>> >>> >>
>> >>> >> > Am Mi., 16. Nov. 2022 um 09:37 Uhr schrieb Victor Toso <victort=
oso@redhat.com>:
>> >>> >> >>
>> >>> >> >> On Wed, Nov 16, 2022 at 09:27:21AM +0100, Stefan Silberstein w=
rote:
>> >>> >> >> > I appreciate the time to answer me.
>> >>> >> >> >
>> >>> >> >> > In the meantime (out of desperation because i needed the vir=
tualmachine for
>> >>> >> >> > work) I gave it a go with specifying root as user and not th=
e servers
>> >>> >> >> > username "server".
>> >>> >> >> >
>> >>> >> >> > I was able to connect to the virtual Windows10 installation =
with
>> >>> >> >> >
>> >>> >> >> > remote-viewer spice://root@192.168.178.51:5900
>> >>> >> >>
>> >>> >> >> Cool
>> >>> >> >>
>> >>> >> >> > But again - then I dont unterstand why it worked as user and
>> >>> >> >> > later on with specifying the user later on (which doesn't wo=
rk
>> >>> >> >> > right now anymore)
>> >>> >> >> >
>> >>> >> >> > So it is a permissions problem on my side and I successfully
>> >>> >> >> > wasted your time. :/
>> >>> >> >> >
>> >>> >> >> > Sorry about that.
>> >>> >> >>
>> >>> >> >> Don't worry about that. Happy to hear it worked.
>> >>> >> >>
>> >>> >> >> >
>> >>> >> >> > This happens when "users" try to play with the big boys toys=
 :D
>> >>> >> >> >
>> >>> >> >> > Have a nice day you all and thanks for your time.
>> >>> >> >>
>> >>> >> >> You too.
>> >>> >> >> Cheers,
>> >>> >> >>
>> >>> >> >> >
>> >>> >> >> > Stefan
>> >>> >> >> >
>> >>> >> >> > Am Mi., 16. Nov. 2022 um 09:21 Uhr schrieb Victor Toso <
>> >>> >> >> > victortoso@redhat.com>:
>> >>> >> >> >
>> >>> >> >> > > Hi Stefan,
>> >>> >> >> > >
>> >>> >> >> > > On Tue, Nov 15, 2022 at 09:53:05PM +0100, Stefan Silberste=
in wrote:
>> >>> >> >> > > > Hello developers,
>> >>> >> >> > > >
>> >>> >> >> > > > I can imagine that this will be an annoying question for=
 you -
>> >>> >> >> > > > so I apologize in advance.
>> >>> >> >> > > >
>> >>> >> >> > > > I am a user - with a longer history with linux BUT i am
>> >>> >> >> > > > completely new to virtualization.
>> >>> >> >> > > > Due to the fact that I got a server donated to me I want=
ed to
>> >>> >> >> > > > give it a go and it worked like a charm.
>> >>> >> >> > > >
>> >>> >> >> > > > Installed virt-manager, installed Windows10  connected w=
ith
>> >>> >> >> > > > virt-manager - absolutely no problem.
>> >>> >> >> > > >
>> >>> >> >> > > > Due to the fact that I need dual monitors I learned that=
 I
>> >>> >> >> > > > could add another display and connect with spice - and i=
t
>> >>> >> >> > > > worked immediately.
>> >>> >> >> > > >
>> >>> >> >> > > > BUT - without me changing anything (consciously) I wasn'=
t able
>> >>> >> >> > > > to connect to the virtual machine the next week.
>> >>> >> >> > > >
>> >>> >> >> > > > It refuses with "Verbindungstyp konnte nicht von URI erm=
ittelt werden"
>> >>> >> >> > > > (Connection type could not be determined by URI)
>> >>> >> >> > > >
>> >>> >> >> > > > Then i tried to connect with sudo and specifying the use=
r in
>> >>> >> >> > > > the command line and it once again connected:
>> >>> >> >> > > >
>> >>> >> >> > > > sudo remote-viewer  spice:=E2=81=84=E2=81=84server@192.1=
68.178.51:5900
>> >>> >> >> > >
>> >>> >> >> > > Perhaps the URL is the problem. If the IP is 192.168.178.5=
1 and
>> >>> >> >> > > the port for the VM is 5900, then try
>> >>> >> >> > >
>> >>> >> >> > >     remote-viewer spice://192.168.178.51:5900
>> >>> >> >> > >
>> >>> >> >> > > If server is a dns that can be resolved, should be fine to=
 use it
>> >>> >> >> > > instead of ip address
>> >>> >> >> > >
>> >>> >> >> > >     remote-viewer spice://server:5900
>> >>> >> >> > >
>> >>> >> >> > >
>> >>> >> >> > > > And now - again without changing anything - it doesn't c=
onnect
>> >>> >> >> > > > with that command as well.
>> >>> >> >> > > >
>> >>> >> >> > > > I have sadly NO clue whatsoever where to even search for=
 a
>> >>> >> >> > > > solution - the internet didn't help me here...
>> >>> >> >> > > >
>> >>> >> >> > > > Do you have any hint at all what I might do wrong here?
>> >>> >> >> > > >
>> >>> >> >> > > > The machine is available - the port is open and visible
>> >>> >> >> > > > PORT     STATE SERVICE
>> >>> >> >> > > > 22/tcp   open  ssh
>> >>> >> >> > > > 80/tcp   open  http
>> >>> >> >> > > > 3389/tcp open  ms-wbt-server
>> >>> >> >> > > > 5900/tcp open  vnc
>> >>> >> >> > > >
>> >>> >> >> > > > ufw on the server is shut down.
>> >>> >> >> > > >
>> >>> >> >> > > > ANY help would be greatly appreciated.
>> >>> >> >> > >
>> >>> >> >> > > You can get more verbose information of issues with --spic=
e-debug
>> >>> >> >> > > command line option too.
>> >>> >> >> > >
>> >>> >> >> > > Cheers,
>> >>> >> >> > > Victor
>> >>> >> >> > >
