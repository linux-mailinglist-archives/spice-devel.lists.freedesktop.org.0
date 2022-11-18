Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A23FA62F281
	for <lists+spice-devel@lfdr.de>; Fri, 18 Nov 2022 11:25:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBD3B10E216;
	Fri, 18 Nov 2022 10:25:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com
 [IPv6:2607:f8b0:4864:20::22b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0553910E216
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Nov 2022 10:25:54 +0000 (UTC)
Received: by mail-oi1-x22b.google.com with SMTP id n205so4897350oib.1
 for <spice-devel@lists.freedesktop.org>; Fri, 18 Nov 2022 02:25:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=w5xNzfDOASNtqGr0lMVihBa3HZs7KfTbA2PxbIsRe5U=;
 b=kLwbnZ6BsezB+6PqkpS+Fs+TL5YFuaq3Evl0tUqk7mPXlOrLeIqZl3cPGCsB0DLBei
 sal9FtkF6YeJaSj7cYDV/kV5eCZC866BY+Y6hdbDaywrC5OZpbGEbdP/lmXSjCDLJBSH
 mP7IbVtouDF0JbwshiQ1J2DMjZWKbLazBwWXzRYCqjnD84WN1HZaONnLUBO2tHPPQuFf
 5ZiFqATmqTGxFadC7QqF3loEfTJE3LpCBr/I7dW+uXCKBKBy/hUrXMMFTYgEqwp3MDV3
 fwIUCyp4xcfHAgOgSg3On6YrEeUbzhoOm0hTE/rXYbjQ/Q/jVfcFhCtAYv0yfZodIYn1
 Uc/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=w5xNzfDOASNtqGr0lMVihBa3HZs7KfTbA2PxbIsRe5U=;
 b=77pV89tlvbh885qkSQ9k1ZO2reuJXNYsA2IpyKnh0FcnIw6j4Cyimdc6vytDoHRRtA
 KiWhiEBg8YJ1Hv6CKTs/BvVR+Oynxrp4SuA70TFdLr87WW/XlCskkDj6rCAROWOMa9TY
 Kk8EnhgElVXrmEpVH5alkbDQ3jfZuTQAsjl/C+hrT5qcY8Y/3bmyPOEry9RX59DsEvhi
 h5Cr1UOMqZ800jjq7OnYdmiwrwmjByo5d4C2AqwJEp7JGh/FNWFf05nWtMZNdecUB0ZU
 +rCde9uCzbBtEg//WLJl4sYe3QdKE0CDe688pklWC/10LhLidvNSvqP6/Zl7UYg0lJp6
 N2jw==
X-Gm-Message-State: ANoB5plZ/1Yo82lSQgtPxGcsgt7kT2R75QhheL+s7hxYqTW7sq5QVFm8
 5f29SzJLQA12vWXUYeE1Ooc+gwAh5qQtU1QHu2M=
X-Google-Smtp-Source: AA0mqf4Nyu4cK4RL6AbhiHFH9jllwL8D+5YdsBnPHeZOdPRKt54IE78LTRP0x/eabBd1EFr0fn6+kJ/ISF3SYaHosQc=
X-Received: by 2002:a54:4009:0:b0:35a:3bb8:da5e with SMTP id
 x9-20020a544009000000b0035a3bb8da5emr6130599oie.1.1668767153181; Fri, 18 Nov
 2022 02:25:53 -0800 (PST)
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
In-Reply-To: <CADiWsK-mpnzoTDBWEg8iJG+aEy-jWSK9JYqmtkASbO8jNhVR+Q@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 18 Nov 2022 10:25:41 +0000
Message-ID: <CAHt6W4f-HxuQ=+eNtYiTsNkeQwXKZ=h=WhUbc8y6Caua26dyKA@mail.gmail.com>
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

Il giorno ven 18 nov 2022 alle ore 06:08 Stefan Silberstein
<linuxstony@gmail.com> ha scritto:
>
> Hi Frediano, Hi List,
>
> after I was able to start the virtual machine with the GUI I tried your c=
ommand
>
> LANG=3DC remote-viewer spice://192.168.178.51:5900
>
> and it started right up into the virtual machine.
>
> HOWEVER
>
> even
>
> remote-viewer spice://192.168.178.51:5900
>
> now opens the virtual machine - without problems. (Yeah - i am stunned my=
self)
>
> I slept over it then tried again today - thinking it never worked again t=
he day after...
>
> Result is that I am able to open up the VM just fine....
>
> This is the worst - something works without changing anything so I have n=
o chance of knowing what the problem is/was in the first place
>
> At a loss for words,
>
> Stefan
>

Well, problem solved :-)

I would check with a command like "history | grep spice | hexdump -C"
(you can post the output) for some weird input. The errors you
reported are basically (or at least they should) parsing errors for
the URI you passed.

Frediano



> Am Do., 17. Nov. 2022 um 10:30 Uhr schrieb Stefan Silberstein <linuxstony=
@gmail.com>:
>>
>> Some details:
>> Operating System: Kubuntu 22.04
>> KDE Plasma Version: 5.24.6
>> KDE Frameworks Version: 5.92.0
>> Qt Version: 5.15.3
>> Kernel Version: 5.15.0-53-generic (64-bit)
>> Graphics Platform: X11
>> Processors: 8 =C3=97 AMD Ryzen 5 1500X Quad-Core Processor
>> Memory: 15.6 GiB of RAM
>> Graphics Processor: NVIDIA GeForce GTX 1050 Ti/PCIe/SSE2
>>
>> Opening a Konsole "bash":
>>
>> Konsole
>> Version 21.12.3
>>
>>
>> Locale:
>>
>> stony@Aperture-Science:~$ locale LANG=3Dde_DE.UTF-8 LANGUAGE=3D LC_CTYPE=
=3D"de_DE.UTF-8" LC_NUMERIC=3D"de_DE.UTF-8" LC_TIME=3D"de_DE.UTF-8" LC_COLL=
ATE=3D"de_DE.UTF-8" LC_MONETARY=3D"de_DE.UTF-8" LC_MESSAGES=3D"de_DE.UTF-8"=
 LC_PAPER=3D"de_DE.UTF-8" LC_NAME=3D"de_DE.UTF-8" LC_ADDRESS=3D"de_DE.UTF-8=
" LC_TELEPHONE=3D"de_DE.UTF-8" LC_MEASUREMENT=3D"de_DE.UTF-8" LC_IDENTIFICA=
TION=3D"de_DE.UTF-8" LC_ALL=3D
>>
>> I will try to open it today at noon - during my lunch break.
>> (ATM I am glad it works because i gotta work from home and this windows-=
machine is the only way to connect to the Server in my company for me)
>>
>> I will get back to you in approximately two hours.
>>
>> Stefan
>>
>> Am Do., 17. Nov. 2022 um 10:18 Uhr schrieb Frediano Ziglio <freddy77@gma=
il.com>:
>>>
>>> Il giorno gio 17 nov 2022 alle ore 09:13 Stefan Silberstein
>>> <linuxstony@gmail.com> ha scritto:
>>> >
>>> > Hi,
>>> >
>>> > no this is the normal forward-slash with "shift+7" on the german keyb=
oard - googlemail messed it up translating it to something else.
>>> > The URL  is normally typed.
>>> >
>>> > This is really weird and I will try to help you as much as I can to g=
et to the bottom of it.
>>> >
>>> > Stefan
>>> >
>>>
>>> That's pretty weird. That code has been there for ages. I tried but no
>>> problems for me.
>>> This operating system and version are you using?
>>> Which shell?
>>> Maybe it's the locale? Try launching something like "LANG=3DC
>>> remote-viewer spice://192.168.178.51:5900" (LANG environment change)
>>>
>>> Frediano
>>>
>>> > Am Do., 17. Nov. 2022 um 10:08 Uhr schrieb Frediano Ziglio <freddy77@=
gmail.com>:
>>> >>
>>> >> Il giorno gio 17 nov 2022 alle ore 07:57 Stefan Silberstein
>>> >> <linuxstony@gmail.com> ha scritto:
>>> >> >
>>> >> > Hello again,
>>> >> >
>>> >> > so - yesterday I worked from home - as I wrote I was able to conne=
ct by specifying the user root with "remote-viewer spice://root@192.168.178=
.51:5900"
>>> >> >
>>> >> > Today I want to connect the exact same way (yesterday i simply clo=
sed the remote-viewer window and the server keept on running so the windows=
-VM was running the whole night) - and I can not connect.
>>> >> >
>>> >> > Error Message on the console  "** (remote-viewer:6146): CRITICAL *=
*: 07:55:52.853: virt_viewer_util_extract_host: assertion 'uri !=3D NULL' f=
ailed"
>>> >> > Error Message on the popup says translated: Connectiontype could n=
ot be determined by URI.
>>> >> >
>>> >>
>>> >> Hi,
>>> >>    That means that the code was not able to parse the URI.
>>> >>
>>> >> > IP of the server itself is 192.168.178.51
>>> >> > IP of the Virtual Machine is 192.168.178.64 and i pingable
>>> >> > Port 5900 on the server is open: 5900/tcp open  vnc
>>> >> > remote-viewer --spice-debug spice:=E2=81=84=E2=81=84192.168.178.51=
:5900 does not produce a more verbose output :(
>>> >> >
>>> >>
>>> >> In this example you are not using ASCII slashes (//), maybe that's t=
he problem.
>>> >>
>>> >> > Update in the meantime
>>> >> > But maybe this is helpful to you:
>>> >> >
>>> >> > I simply started "remote-viewer --spice-debug"
>>> >> > Then i got the GUI (which i wasnt even aware it existed).
>>> >> >
>>> >> > When I choose the same entry on that list - I AM able to connect.
>>> >> >
>>> >> > So the error only exists only when I try to connect via command li=
ne?! (This is when I am able to connect tomorrow via GUI ;) )
>>> >> >
>>> >> > Shouldn't this be the same ?
>>> >> >
>>> >> > I mabe I can help - maybe this is indeed a bug?
>>> >> >
>>> >> > Stefan
>>> >> >
>>> >>
>>> >> Frediano
>>> >>
>>> >> > Am Mi., 16. Nov. 2022 um 09:37 Uhr schrieb Victor Toso <victortoso=
@redhat.com>:
>>> >> >>
>>> >> >> On Wed, Nov 16, 2022 at 09:27:21AM +0100, Stefan Silberstein wrot=
e:
>>> >> >> > I appreciate the time to answer me.
>>> >> >> >
>>> >> >> > In the meantime (out of desperation because i needed the virtua=
lmachine for
>>> >> >> > work) I gave it a go with specifying root as user and not the s=
ervers
>>> >> >> > username "server".
>>> >> >> >
>>> >> >> > I was able to connect to the virtual Windows10 installation wit=
h
>>> >> >> >
>>> >> >> > remote-viewer spice://root@192.168.178.51:5900
>>> >> >>
>>> >> >> Cool
>>> >> >>
>>> >> >> > But again - then I dont unterstand why it worked as user and
>>> >> >> > later on with specifying the user later on (which doesn't work
>>> >> >> > right now anymore)
>>> >> >> >
>>> >> >> > So it is a permissions problem on my side and I successfully
>>> >> >> > wasted your time. :/
>>> >> >> >
>>> >> >> > Sorry about that.
>>> >> >>
>>> >> >> Don't worry about that. Happy to hear it worked.
>>> >> >>
>>> >> >> >
>>> >> >> > This happens when "users" try to play with the big boys toys :D
>>> >> >> >
>>> >> >> > Have a nice day you all and thanks for your time.
>>> >> >>
>>> >> >> You too.
>>> >> >> Cheers,
>>> >> >>
>>> >> >> >
>>> >> >> > Stefan
>>> >> >> >
>>> >> >> > Am Mi., 16. Nov. 2022 um 09:21 Uhr schrieb Victor Toso <
>>> >> >> > victortoso@redhat.com>:
>>> >> >> >
>>> >> >> > > Hi Stefan,
>>> >> >> > >
>>> >> >> > > On Tue, Nov 15, 2022 at 09:53:05PM +0100, Stefan Silberstein =
wrote:
>>> >> >> > > > Hello developers,
>>> >> >> > > >
>>> >> >> > > > I can imagine that this will be an annoying question for yo=
u -
>>> >> >> > > > so I apologize in advance.
>>> >> >> > > >
>>> >> >> > > > I am a user - with a longer history with linux BUT i am
>>> >> >> > > > completely new to virtualization.
>>> >> >> > > > Due to the fact that I got a server donated to me I wanted =
to
>>> >> >> > > > give it a go and it worked like a charm.
>>> >> >> > > >
>>> >> >> > > > Installed virt-manager, installed Windows10  connected with
>>> >> >> > > > virt-manager - absolutely no problem.
>>> >> >> > > >
>>> >> >> > > > Due to the fact that I need dual monitors I learned that I
>>> >> >> > > > could add another display and connect with spice - and it
>>> >> >> > > > worked immediately.
>>> >> >> > > >
>>> >> >> > > > BUT - without me changing anything (consciously) I wasn't a=
ble
>>> >> >> > > > to connect to the virtual machine the next week.
>>> >> >> > > >
>>> >> >> > > > It refuses with "Verbindungstyp konnte nicht von URI ermitt=
elt werden"
>>> >> >> > > > (Connection type could not be determined by URI)
>>> >> >> > > >
>>> >> >> > > > Then i tried to connect with sudo and specifying the user i=
n
>>> >> >> > > > the command line and it once again connected:
>>> >> >> > > >
>>> >> >> > > > sudo remote-viewer  spice:=E2=81=84=E2=81=84server@192.168.=
178.51:5900
>>> >> >> > >
>>> >> >> > > Perhaps the URL is the problem. If the IP is 192.168.178.51 a=
nd
>>> >> >> > > the port for the VM is 5900, then try
>>> >> >> > >
>>> >> >> > >     remote-viewer spice://192.168.178.51:5900
>>> >> >> > >
>>> >> >> > > If server is a dns that can be resolved, should be fine to us=
e it
>>> >> >> > > instead of ip address
>>> >> >> > >
>>> >> >> > >     remote-viewer spice://server:5900
>>> >> >> > >
>>> >> >> > >
>>> >> >> > > > And now - again without changing anything - it doesn't conn=
ect
>>> >> >> > > > with that command as well.
>>> >> >> > > >
>>> >> >> > > > I have sadly NO clue whatsoever where to even search for a
>>> >> >> > > > solution - the internet didn't help me here...
>>> >> >> > > >
>>> >> >> > > > Do you have any hint at all what I might do wrong here?
>>> >> >> > > >
>>> >> >> > > > The machine is available - the port is open and visible
>>> >> >> > > > PORT     STATE SERVICE
>>> >> >> > > > 22/tcp   open  ssh
>>> >> >> > > > 80/tcp   open  http
>>> >> >> > > > 3389/tcp open  ms-wbt-server
>>> >> >> > > > 5900/tcp open  vnc
>>> >> >> > > >
>>> >> >> > > > ufw on the server is shut down.
>>> >> >> > > >
>>> >> >> > > > ANY help would be greatly appreciated.
>>> >> >> > >
>>> >> >> > > You can get more verbose information of issues with --spice-d=
ebug
>>> >> >> > > command line option too.
>>> >> >> > >
>>> >> >> > > Cheers,
>>> >> >> > > Victor
>>> >> >> > >
