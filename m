Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4079262ED79
	for <lists+spice-devel@lfdr.de>; Fri, 18 Nov 2022 07:08:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28AF910E6C3;
	Fri, 18 Nov 2022 06:08:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A876410E6C3
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Nov 2022 06:08:39 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id l8so5525983ljh.13
 for <spice-devel@lists.freedesktop.org>; Thu, 17 Nov 2022 22:08:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=+gvrr3fjgBrKJngE+ldYoRCOggtP4imBVKxkZsfNCAs=;
 b=M//8IA1Qg/bWFDnAe9om/8YYyCDdzBbKU9szDnLBeSJXI1QFaFtt25WPagUeWxsO8j
 EsMzp+mVIk0F3bJ8aZFvCNP8Dixih7OcY/WRnv3A8RL9H0EYN4JCW7XkD0XHU2Lr1Svm
 99F3XCsPHmGxJE7R1hZvaJQyrCR27GfCXTQZxPMVU8rT61FnPECOVu6QHgH4FKXQablI
 iID1w7p2IrXIQlF7963RanjFVSjiIRfPlZfd6lOZb0yAjKSohiKmoqdGpW+Przvxd5m0
 oQbapz83bFplplLsy2Z2AUXsDhAj3/lWRTDs3lscArZo2vD6fftQyIcsvsdhninBtHUz
 HKtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+gvrr3fjgBrKJngE+ldYoRCOggtP4imBVKxkZsfNCAs=;
 b=U9V3bPgClAg3Vf/MatC3qlu7GlUI0UkSN2LZWNs+dt7AHR1VG5Ys7q4qFGTALXRykD
 9Don4P1OVvXQ+DL9yV4GY5gVVPfX4+GsmLsBB4+Ny/RK1UdmZyEaUXkP2Dfm7D9oNYYb
 OR3y3VCTq26+a6DVv2x0u5pqJ7QDgX63x473W7FfnPaS1WQ97bbnsfy4dgdUQ+7ED/Mu
 ohcKlu0nLwPqlmhasv+EWGAmsVhv/cvmYUBTnAIoUcwL/r4HoGcHFOWIrMT6NsIAx8P9
 f+LukWRMQpDtBJvpWpMA3SgQVMRosgp1dYD2XtVrubvlD5cL5vYWcf9BwV89nLMty0LF
 WcsQ==
X-Gm-Message-State: ANoB5pnk3iIOHW9YASsUgbChOAJW6O2Of1OirnLZw/cfEF8dCMORFE7v
 pvRFEXnW+3G0Ib+uY1RxBic+aozVG4QJ+yH7aZNG2tev
X-Google-Smtp-Source: AA0mqf4WU5TMUvCSD1T8cUST/TT6XoKDSK+6IckKWIVaLXhrVzGE1zwFUkpUu0wg3BlRonAUkXHOYsTbd1PpIjUiP+Q=
X-Received: by 2002:a05:651c:1061:b0:26c:532e:3cc with SMTP id
 y1-20020a05651c106100b0026c532e03ccmr1926158ljm.66.1668751717689; Thu, 17 Nov
 2022 22:08:37 -0800 (PST)
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
In-Reply-To: <CADiWsK_5Oeof94_gU6fUXoMh9rapZgAcmaXkcM2Rg3TQdSyo5g@mail.gmail.com>
From: Stefan Silberstein <linuxstony@gmail.com>
Date: Fri, 18 Nov 2022 07:08:26 +0100
Message-ID: <CADiWsK-mpnzoTDBWEg8iJG+aEy-jWSK9JYqmtkASbO8jNhVR+Q@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000059ef8d05edb8893d"
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

--00000000000059ef8d05edb8893d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Frediano, Hi List,

after I was able to start the virtual machine with the GUI I tried your
command

LANG=3DC remote-viewer spice://192.168.178.51:5900

and it started right up into the virtual machine.

HOWEVER

even

remote-viewer spice://192.168.178.51:5900

now opens the virtual machine - without problems. (Yeah - i am stunned
myself)

I slept over it then tried again today - thinking it never worked again the
day after...

Result is that I am able to open up the VM just fine....

This is the worst - something works without changing anything so I have no
chance of knowing what the problem is/was in the first place

At a loss for words,

Stefan

Am Do., 17. Nov. 2022 um 10:30 Uhr schrieb Stefan Silberstein <
linuxstony@gmail.com>:

> Some details:
> Operating System: Kubuntu 22.04
> KDE Plasma Version: 5.24.6
> KDE Frameworks Version: 5.92.0
> Qt Version: 5.15.3
> Kernel Version: 5.15.0-53-generic (64-bit)
> Graphics Platform: X11
> Processors: 8 =C3=97 AMD Ryzen 5 1500X Quad-Core Processor
> Memory: 15.6 GiB of RAM
> Graphics Processor: NVIDIA GeForce GTX 1050 Ti/PCIe/SSE2
>
> Opening a Konsole "bash":
>
> Konsole
> Version 21.12.3
>
>
> Locale:
>
> stony@Aperture-Science:~$ locale LANG=3Dde_DE.UTF-8 LANGUAGE=3D
> LC_CTYPE=3D"de_DE.UTF-8" LC_NUMERIC=3D"de_DE.UTF-8" LC_TIME=3D"de_DE.UTF-=
8"
> LC_COLLATE=3D"de_DE.UTF-8" LC_MONETARY=3D"de_DE.UTF-8"
> LC_MESSAGES=3D"de_DE.UTF-8" LC_PAPER=3D"de_DE.UTF-8" LC_NAME=3D"de_DE.UTF=
-8"
> LC_ADDRESS=3D"de_DE.UTF-8" LC_TELEPHONE=3D"de_DE.UTF-8"
> LC_MEASUREMENT=3D"de_DE.UTF-8" LC_IDENTIFICATION=3D"de_DE.UTF-8" LC_ALL=
=3D
>
> I will try to open it today at noon - during my lunch break.
> (ATM I am glad it works because i gotta work from home and this
> windows-machine is the only way to connect to the Server in my company fo=
r
> me)
>
> I will get back to you in approximately two hours.
>
> Stefan
>
> Am Do., 17. Nov. 2022 um 10:18 Uhr schrieb Frediano Ziglio <
> freddy77@gmail.com>:
>
>> Il giorno gio 17 nov 2022 alle ore 09:13 Stefan Silberstein
>> <linuxstony@gmail.com> ha scritto:
>> >
>> > Hi,
>> >
>> > no this is the normal forward-slash with "shift+7" on the german
>> keyboard - googlemail messed it up translating it to something else.
>> > The URL  is normally typed.
>> >
>> > This is really weird and I will try to help you as much as I can to ge=
t
>> to the bottom of it.
>> >
>> > Stefan
>> >
>>
>> That's pretty weird. That code has been there for ages. I tried but no
>> problems for me.
>> This operating system and version are you using?
>> Which shell?
>> Maybe it's the locale? Try launching something like "LANG=3DC
>> remote-viewer spice://192.168.178.51:5900" (LANG environment change)
>>
>> Frediano
>>
>> > Am Do., 17. Nov. 2022 um 10:08 Uhr schrieb Frediano Ziglio <
>> freddy77@gmail.com>:
>> >>
>> >> Il giorno gio 17 nov 2022 alle ore 07:57 Stefan Silberstein
>> >> <linuxstony@gmail.com> ha scritto:
>> >> >
>> >> > Hello again,
>> >> >
>> >> > so - yesterday I worked from home - as I wrote I was able to connec=
t
>> by specifying the user root with "remote-viewer spice://
>> root@192.168.178.51:5900"
>> >> >
>> >> > Today I want to connect the exact same way (yesterday i simply
>> closed the remote-viewer window and the server keept on running so the
>> windows-VM was running the whole night) - and I can not connect.
>> >> >
>> >> > Error Message on the console  "** (remote-viewer:6146): CRITICAL **=
:
>> 07:55:52.853: virt_viewer_util_extract_host: assertion 'uri !=3D NULL' f=
ailed"
>> >> > Error Message on the popup says translated: Connectiontype could no=
t
>> be determined by URI.
>> >> >
>> >>
>> >> Hi,
>> >>    That means that the code was not able to parse the URI.
>> >>
>> >> > IP of the server itself is 192.168.178.51
>> >> > IP of the Virtual Machine is 192.168.178.64 and i pingable
>> >> > Port 5900 on the server is open: 5900/tcp open  vnc
>> >> > remote-viewer --spice-debug spice:=E2=81=84=E2=81=84192.168.178.51:=
5900 does not
>> produce a more verbose output :(
>> >> >
>> >>
>> >> In this example you are not using ASCII slashes (//), maybe that's th=
e
>> problem.
>> >>
>> >> > Update in the meantime
>> >> > But maybe this is helpful to you:
>> >> >
>> >> > I simply started "remote-viewer --spice-debug"
>> >> > Then i got the GUI (which i wasnt even aware it existed).
>> >> >
>> >> > When I choose the same entry on that list - I AM able to connect.
>> >> >
>> >> > So the error only exists only when I try to connect via command
>> line?! (This is when I am able to connect tomorrow via GUI ;) )
>> >> >
>> >> > Shouldn't this be the same ?
>> >> >
>> >> > I mabe I can help - maybe this is indeed a bug?
>> >> >
>> >> > Stefan
>> >> >
>> >>
>> >> Frediano
>> >>
>> >> > Am Mi., 16. Nov. 2022 um 09:37 Uhr schrieb Victor Toso <
>> victortoso@redhat.com>:
>> >> >>
>> >> >> On Wed, Nov 16, 2022 at 09:27:21AM +0100, Stefan Silberstein wrote=
:
>> >> >> > I appreciate the time to answer me.
>> >> >> >
>> >> >> > In the meantime (out of desperation because i needed the
>> virtualmachine for
>> >> >> > work) I gave it a go with specifying root as user and not the
>> servers
>> >> >> > username "server".
>> >> >> >
>> >> >> > I was able to connect to the virtual Windows10 installation with
>> >> >> >
>> >> >> > remote-viewer spice://root@192.168.178.51:5900
>> >> >>
>> >> >> Cool
>> >> >>
>> >> >> > But again - then I dont unterstand why it worked as user and
>> >> >> > later on with specifying the user later on (which doesn't work
>> >> >> > right now anymore)
>> >> >> >
>> >> >> > So it is a permissions problem on my side and I successfully
>> >> >> > wasted your time. :/
>> >> >> >
>> >> >> > Sorry about that.
>> >> >>
>> >> >> Don't worry about that. Happy to hear it worked.
>> >> >>
>> >> >> >
>> >> >> > This happens when "users" try to play with the big boys toys :D
>> >> >> >
>> >> >> > Have a nice day you all and thanks for your time.
>> >> >>
>> >> >> You too.
>> >> >> Cheers,
>> >> >>
>> >> >> >
>> >> >> > Stefan
>> >> >> >
>> >> >> > Am Mi., 16. Nov. 2022 um 09:21 Uhr schrieb Victor Toso <
>> >> >> > victortoso@redhat.com>:
>> >> >> >
>> >> >> > > Hi Stefan,
>> >> >> > >
>> >> >> > > On Tue, Nov 15, 2022 at 09:53:05PM +0100, Stefan Silberstein
>> wrote:
>> >> >> > > > Hello developers,
>> >> >> > > >
>> >> >> > > > I can imagine that this will be an annoying question for you=
 -
>> >> >> > > > so I apologize in advance.
>> >> >> > > >
>> >> >> > > > I am a user - with a longer history with linux BUT i am
>> >> >> > > > completely new to virtualization.
>> >> >> > > > Due to the fact that I got a server donated to me I wanted t=
o
>> >> >> > > > give it a go and it worked like a charm.
>> >> >> > > >
>> >> >> > > > Installed virt-manager, installed Windows10  connected with
>> >> >> > > > virt-manager - absolutely no problem.
>> >> >> > > >
>> >> >> > > > Due to the fact that I need dual monitors I learned that I
>> >> >> > > > could add another display and connect with spice - and it
>> >> >> > > > worked immediately.
>> >> >> > > >
>> >> >> > > > BUT - without me changing anything (consciously) I wasn't ab=
le
>> >> >> > > > to connect to the virtual machine the next week.
>> >> >> > > >
>> >> >> > > > It refuses with "Verbindungstyp konnte nicht von URI
>> ermittelt werden"
>> >> >> > > > (Connection type could not be determined by URI)
>> >> >> > > >
>> >> >> > > > Then i tried to connect with sudo and specifying the user in
>> >> >> > > > the command line and it once again connected:
>> >> >> > > >
>> >> >> > > > sudo remote-viewer  spice:=E2=81=84=E2=81=84server@192.168.1=
78.51:5900
>> >> >> > >
>> >> >> > > Perhaps the URL is the problem. If the IP is 192.168.178.51 an=
d
>> >> >> > > the port for the VM is 5900, then try
>> >> >> > >
>> >> >> > >     remote-viewer spice://192.168.178.51:5900
>> >> >> > >
>> >> >> > > If server is a dns that can be resolved, should be fine to use
>> it
>> >> >> > > instead of ip address
>> >> >> > >
>> >> >> > >     remote-viewer spice://server:5900
>> >> >> > >
>> >> >> > >
>> >> >> > > > And now - again without changing anything - it doesn't conne=
ct
>> >> >> > > > with that command as well.
>> >> >> > > >
>> >> >> > > > I have sadly NO clue whatsoever where to even search for a
>> >> >> > > > solution - the internet didn't help me here...
>> >> >> > > >
>> >> >> > > > Do you have any hint at all what I might do wrong here?
>> >> >> > > >
>> >> >> > > > The machine is available - the port is open and visible
>> >> >> > > > PORT     STATE SERVICE
>> >> >> > > > 22/tcp   open  ssh
>> >> >> > > > 80/tcp   open  http
>> >> >> > > > 3389/tcp open  ms-wbt-server
>> >> >> > > > 5900/tcp open  vnc
>> >> >> > > >
>> >> >> > > > ufw on the server is shut down.
>> >> >> > > >
>> >> >> > > > ANY help would be greatly appreciated.
>> >> >> > >
>> >> >> > > You can get more verbose information of issues with
>> --spice-debug
>> >> >> > > command line option too.
>> >> >> > >
>> >> >> > > Cheers,
>> >> >> > > Victor
>> >> >> > >
>>
>

--00000000000059ef8d05edb8893d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Frediano, Hi List,</div><div><br></div><div>after =
I was able to start the virtual machine with the GUI I tried your command</=
div><div><br></div><div><span style=3D"font-family:arial,sans-serif"><span =
style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">LANG=3DC remot=
e-viewer spice://<a href=3D"http://192.168.178.51:5900" target=3D"_blank">1=
92.168.178.51:5900</a></span><br></span>
<span style=3D"font-family:arial,sans-serif"><br></span></div><div><span st=
yle=3D"font-family:arial,sans-serif">and it started right up into the virtu=
al machine.</span></div><div><span style=3D"font-family:arial,sans-serif"><=
br></span></div><div><span style=3D"font-family:arial,sans-serif">HOWEVER</=
span></div><div><span style=3D"font-family:monospace"><br></span></div><div=
><span style=3D"font-family:arial,sans-serif">even <br></span></div><div><s=
pan style=3D"font-family:arial,sans-serif"><br></span></div><div><span styl=
e=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0);backgrou=
nd-color:rgb(255,255,255)">remote-viewer spice://<a href=3D"http://192.168.=
178.51:5900" target=3D"_blank">192.168.178.51:5900</a></span></span></div><=
div><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0=
,0,0);background-color:rgb(255,255,255)"><br></span></span></div><div><span=
 style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0);bac=
kground-color:rgb(255,255,255)">now opens the virtual machine - without pro=
blems. (Yeah - i am stunned myself)<br></span></span></div><div><span style=
=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0);backgroun=
d-color:rgb(255,255,255)"><br></span></span></div><div><span style=3D"font-=
family:arial,sans-serif"><span style=3D"color:rgb(0,0,0);background-color:r=
gb(255,255,255)">I slept over it then tried again today - thinking it never=
 worked again the day after...</span></span></div><div><span style=3D"font-=
family:arial,sans-serif"><span style=3D"color:rgb(0,0,0);background-color:r=
gb(255,255,255)"><br></span></span></div><div><span style=3D"font-family:ar=
ial,sans-serif"><span style=3D"color:rgb(0,0,0);background-color:rgb(255,25=
5,255)">Result is that I am able to open up the VM just fine....</span></sp=
an></div><div><span style=3D"font-family:arial,sans-serif"><span style=3D"c=
olor:rgb(0,0,0);background-color:rgb(255,255,255)"><br></span></span></div>=
<div><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(=
0,0,0);background-color:rgb(255,255,255)">This is the worst - something wor=
ks without changing anything so I have no chance of knowing what the proble=
m is/was in the first place</span></span></div><div><span style=3D"font-fam=
ily:arial,sans-serif"><span style=3D"color:rgb(0,0,0);background-color:rgb(=
255,255,255)"><br></span></span></div><div><span style=3D"font-family:arial=
,sans-serif"><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,2=
55)">At a loss for words,</span></span></div><div><span style=3D"font-famil=
y:arial,sans-serif"><span style=3D"color:rgb(0,0,0);background-color:rgb(25=
5,255,255)"><br></span></span></div><div><span style=3D"font-family:monospa=
ce"><span style=3D"font-family:monospace"><span style=3D"color:rgb(0,0,0);b=
ackground-color:rgb(255,255,255)"><span style=3D"font-family:arial,sans-ser=
if">Stefan</span><br></span></span></span></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">Am Do., 17. Nov. 2022 um 10=
:30=C2=A0Uhr schrieb Stefan Silberstein &lt;<a href=3D"mailto:linuxstony@gm=
ail.com" target=3D"_blank">linuxstony@gmail.com</a>&gt;:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Some details=
: <br></div><div>Operating System: Kubuntu 22.04<br>KDE Plasma Version: 5.2=
4.6<br>KDE Frameworks Version: 5.92.0<br>Qt Version: 5.15.3<br>Kernel Versi=
on: 5.15.0-53-generic (64-bit)<br>Graphics Platform: X11<br>Processors: 8 =
=C3=97 AMD Ryzen 5 1500X Quad-Core Processor<br>Memory: 15.6 GiB of RAM<br>=
Graphics Processor: NVIDIA GeForce GTX 1050 Ti/PCIe/SSE2</div><div><font si=
ze=3D"2"><span style=3D"font-family:arial,sans-serif"><br></span></font></d=
iv><div><font size=3D"2"><span style=3D"font-family:arial,sans-serif">Openi=
ng a Konsole &quot;bash&quot;:=20

</span></font><p style=3D"margin:0px;text-indent:0px;white-space:pre-wrap">=
<font size=3D"2"><span style=3D"font-family:arial,sans-serif"><span>Konsole=
</span><br>Version 21.12.3</span></font></p><p style=3D"margin:0px;text-ind=
ent:0px;white-space:pre-wrap"><font size=3D"2"><span style=3D"font-family:a=
rial,sans-serif"><br></span></font></p><p style=3D"margin:0px;text-indent:0=
px;white-space:pre-wrap"><font size=3D"2"><span style=3D"font-family:arial,=
sans-serif">Locale:</span></font></p><p style=3D"margin:0px;text-indent:0px=
;white-space:pre-wrap"><span style=3D"font-family:monospace"><font size=3D"=
2"><span style=3D"font-family:arial,sans-serif"><span style=3D"font-weight:=
bold;color:rgb(84,255,84);background-color:rgb(255,255,255)">stony@Aperture=
-Science</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255=
,255)">:</span><span style=3D"font-weight:bold;color:rgb(84,84,255);backgro=
und-color:rgb(255,255,255)">~</span><span style=3D"color:rgb(0,0,0);backgro=
und-color:rgb(255,255,255)">$ locale
</span>LANG=3Dde_DE.UTF-8
LANGUAGE=3D
LC_CTYPE=3D&quot;de_DE.UTF-8&quot;
LC_NUMERIC=3D&quot;de_DE.UTF-8&quot;
LC_TIME=3D&quot;de_DE.UTF-8&quot;
LC_COLLATE=3D&quot;de_DE.UTF-8&quot;
LC_MONETARY=3D&quot;de_DE.UTF-8&quot;
LC_MESSAGES=3D&quot;de_DE.UTF-8&quot;
LC_PAPER=3D&quot;de_DE.UTF-8&quot;
LC_NAME=3D&quot;de_DE.UTF-8&quot;
LC_ADDRESS=3D&quot;de_DE.UTF-8&quot;
LC_TELEPHONE=3D&quot;de_DE.UTF-8&quot;
LC_MEASUREMENT=3D&quot;de_DE.UTF-8&quot;
LC_IDENTIFICATION=3D&quot;de_DE.UTF-8&quot;
LC_ALL=3D</span></font><br>
<br></span></p></div><div>I will try to open it today at noon - during my l=
unch break. <br></div><div>(ATM I am glad it works because i gotta work fro=
m home and this windows-machine is the only way to connect to the Server in=
 my company for me)</div><div><br></div><div>I will get back to you in appr=
oximately two hours. <br></div><div><br></div><div>Stefan<br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Am Do., =
17. Nov. 2022 um 10:18=C2=A0Uhr schrieb Frediano Ziglio &lt;<a href=3D"mail=
to:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>&gt;:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">Il giorno gio 17 nov 2=
022 alle ore 09:13 Stefan Silberstein<br>
&lt;<a href=3D"mailto:linuxstony@gmail.com" target=3D"_blank">linuxstony@gm=
ail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; no this is the normal forward-slash with &quot;shift+7&quot; on the ge=
rman keyboard - googlemail messed it up translating it to something else.<b=
r>
&gt; The URL=C2=A0 is normally typed.<br>
&gt;<br>
&gt; This is really weird and I will try to help you as much as I can to ge=
t to the bottom of it.<br>
&gt;<br>
&gt; Stefan<br>
&gt;<br>
<br>
That&#39;s pretty weird. That code has been there for ages. I tried but no<=
br>
problems for me.<br>
This operating system and version are you using?<br>
Which shell?<br>
Maybe it&#39;s the locale? Try launching something like &quot;LANG=3DC<br>
remote-viewer spice://<a href=3D"http://192.168.178.51:5900" rel=3D"norefer=
rer" target=3D"_blank">192.168.178.51:5900</a>&quot; (LANG environment chan=
ge)<br>
<br>
Frediano<br>
<br>
&gt; Am Do., 17. Nov. 2022 um 10:08 Uhr schrieb Frediano Ziglio &lt;<a href=
=3D"mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>&gt;=
:<br>
&gt;&gt;<br>
&gt;&gt; Il giorno gio 17 nov 2022 alle ore 07:57 Stefan Silberstein<br>
&gt;&gt; &lt;<a href=3D"mailto:linuxstony@gmail.com" target=3D"_blank">linu=
xstony@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hello again,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; so - yesterday I worked from home - as I wrote I was able to =
connect by specifying the user root with &quot;remote-viewer spice://<a hre=
f=3D"http://root@192.168.178.51:5900" rel=3D"noreferrer" target=3D"_blank">=
root@192.168.178.51:5900</a>&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Today I want to connect the exact same way (yesterday i simpl=
y closed the remote-viewer window and the server keept on running so the wi=
ndows-VM was running the whole night) - and I can not connect.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Error Message on the console=C2=A0 &quot;** (remote-viewer:61=
46): CRITICAL **: 07:55:52.853: virt_viewer_util_extract_host: assertion &#=
39;uri !=3D NULL&#39; failed&quot;<br>
&gt;&gt; &gt; Error Message on the popup says translated: Connectiontype co=
uld not be determined by URI.<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;=C2=A0 =C2=A0 That means that the code was not able to parse the UR=
I.<br>
&gt;&gt;<br>
&gt;&gt; &gt; IP of the server itself is 192.168.178.51<br>
&gt;&gt; &gt; IP of the Virtual Machine is 192.168.178.64 and i pingable<br=
>
&gt;&gt; &gt; Port 5900 on the server is open: 5900/tcp open=C2=A0 vnc<br>
&gt;&gt; &gt; remote-viewer --spice-debug spice:=E2=81=84=E2=81=84<a href=
=3D"http://192.168.178.51:5900" rel=3D"noreferrer" target=3D"_blank">192.16=
8.178.51:5900</a> does not produce a more verbose output :(<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; In this example you are not using ASCII slashes (//), maybe that&#=
39;s the problem.<br>
&gt;&gt;<br>
&gt;&gt; &gt; Update in the meantime<br>
&gt;&gt; &gt; But maybe this is helpful to you:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I simply started &quot;remote-viewer --spice-debug&quot;<br>
&gt;&gt; &gt; Then i got the GUI (which i wasnt even aware it existed).<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; When I choose the same entry on that list - I AM able to conn=
ect.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; So the error only exists only when I try to connect via comma=
nd line?! (This is when I am able to connect tomorrow via GUI ;) )<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Shouldn&#39;t this be the same ?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I mabe I can help - maybe this is indeed a bug?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Stefan<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; Frediano<br>
&gt;&gt;<br>
&gt;&gt; &gt; Am Mi., 16. Nov. 2022 um 09:37 Uhr schrieb Victor Toso &lt;<a=
 href=3D"mailto:victortoso@redhat.com" target=3D"_blank">victortoso@redhat.=
com</a>&gt;:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Wed, Nov 16, 2022 at 09:27:21AM +0100, Stefan Silberst=
ein wrote:<br>
&gt;&gt; &gt;&gt; &gt; I appreciate the time to answer me.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; In the meantime (out of desperation because i needed=
 the virtualmachine for<br>
&gt;&gt; &gt;&gt; &gt; work) I gave it a go with specifying root as user an=
d not the servers<br>
&gt;&gt; &gt;&gt; &gt; username &quot;server&quot;.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; I was able to connect to the virtual Windows10 insta=
llation with<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; remote-viewer spice://<a href=3D"http://root@192.168=
.178.51:5900" rel=3D"noreferrer" target=3D"_blank">root@192.168.178.51:5900=
</a><br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Cool<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt; But again - then I dont unterstand why it worked as =
user and<br>
&gt;&gt; &gt;&gt; &gt; later on with specifying the user later on (which do=
esn&#39;t work<br>
&gt;&gt; &gt;&gt; &gt; right now anymore)<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; So it is a permissions problem on my side and I succ=
essfully<br>
&gt;&gt; &gt;&gt; &gt; wasted your time. :/<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Sorry about that.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Don&#39;t worry about that. Happy to hear it worked.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; This happens when &quot;users&quot; try to play with=
 the big boys toys :D<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Have a nice day you all and thanks for your time.<br=
>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; You too.<br>
&gt;&gt; &gt;&gt; Cheers,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Stefan<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Am Mi., 16. Nov. 2022 um 09:21 Uhr schrieb Victor To=
so &lt;<br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"mailto:victortoso@redhat.com" target=3D"_=
blank">victortoso@redhat.com</a>&gt;:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; Hi Stefan,<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; On Tue, Nov 15, 2022 at 09:53:05PM +0100, Stefa=
n Silberstein wrote:<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; Hello developers,<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; I can imagine that this will be an annoyin=
g question for you -<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; so I apologize in advance.<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; I am a user - with a longer history with l=
inux BUT i am<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; completely new to virtualization.<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; Due to the fact that I got a server donate=
d to me I wanted to<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; give it a go and it worked like a charm.<b=
r>
&gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; Installed virt-manager, installed Windows1=
0=C2=A0 connected with<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; virt-manager - absolutely no problem.<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; Due to the fact that I need dual monitors =
I learned that I<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; could add another display and connect with=
 spice - and it<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; worked immediately.<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; BUT - without me changing anything (consci=
ously) I wasn&#39;t able<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; to connect to the virtual machine the next=
 week.<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; It refuses with &quot;Verbindungstyp konnt=
e nicht von URI ermittelt werden&quot;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; (Connection type could not be determined b=
y URI)<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; Then i tried to connect with sudo and spec=
ifying the user in<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; the command line and it once again connect=
ed:<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; sudo remote-viewer=C2=A0 spice:=E2=81=84=
=E2=81=84<a href=3D"http://server@192.168.178.51:5900" rel=3D"noreferrer" t=
arget=3D"_blank">server@192.168.178.51:5900</a><br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; Perhaps the URL is the problem. If the IP is 19=
2.168.178.51 and<br>
&gt;&gt; &gt;&gt; &gt; &gt; the port for the VM is 5900, then try<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0remote-viewer spice://<a hre=
f=3D"http://192.168.178.51:5900" rel=3D"noreferrer" target=3D"_blank">192.1=
68.178.51:5900</a><br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; If server is a dns that can be resolved, should=
 be fine to use it<br>
&gt;&gt; &gt;&gt; &gt; &gt; instead of ip address<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0remote-viewer spice://server=
:5900<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; And now - again without changing anything =
- it doesn&#39;t connect<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; with that command as well.<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; I have sadly NO clue whatsoever where to e=
ven search for a<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; solution - the internet didn&#39;t help me=
 here...<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; Do you have any hint at all what I might d=
o wrong here?<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; The machine is available - the port is ope=
n and visible<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; PORT=C2=A0 =C2=A0 =C2=A0STATE SERVICE<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; 22/tcp=C2=A0 =C2=A0open=C2=A0 ssh<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; 80/tcp=C2=A0 =C2=A0open=C2=A0 http<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; 3389/tcp open=C2=A0 ms-wbt-server<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; 5900/tcp open=C2=A0 vnc<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; ufw on the server is shut down.<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; ANY help would be greatly appreciated.<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; You can get more verbose information of issues =
with --spice-debug<br>
&gt;&gt; &gt;&gt; &gt; &gt; command line option too.<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; Cheers,<br>
&gt;&gt; &gt;&gt; &gt; &gt; Victor<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
</blockquote></div>
</blockquote></div>

--00000000000059ef8d05edb8893d--
