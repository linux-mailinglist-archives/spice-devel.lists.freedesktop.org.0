Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDD562D64A
	for <lists+spice-devel@lfdr.de>; Thu, 17 Nov 2022 10:18:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3278510E586;
	Thu, 17 Nov 2022 09:18:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com
 [IPv6:2001:4860:4864:20::2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0CB710E586
 for <spice-devel@lists.freedesktop.org>; Thu, 17 Nov 2022 09:18:37 +0000 (UTC)
Received: by mail-oa1-x2b.google.com with SMTP id
 586e51a60fabf-14263779059so675052fac.1
 for <spice-devel@lists.freedesktop.org>; Thu, 17 Nov 2022 01:18:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DQ+Phaq8NWP2mqvKQhYxUHhR6bcZZdS/qv3HbghDnsY=;
 b=UQCMJUvlvccIZE7suqCBH+NjiBwDXHXMRTCE60Eny4LD70lfp6k1EVDaYHkkMdziaN
 PK/biZZwliX0/TmMgZvqYJY/GeP5vnmXKOM9viteY6bYbsSbB+SibBxtF75IQTllU6r9
 PzL5SRTm5Edgmw8lAZTQnDA7mgFjl1gpk7Vfh3TCIk6Ojc/DI6ZLm+h71QDrh5dpFMOY
 6sQe2kalqloc3shUcXq9irEB+mi+fdFqfi4ALbsyljMjvbP9CDusb6+YW4T3e8tbBGQL
 v87+IHAJQiOohckZ5Abwd/shFCfolzSrWW2KFq+st7yhsJfLymWKHXXOQB9IGCL7ME7s
 n3xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=DQ+Phaq8NWP2mqvKQhYxUHhR6bcZZdS/qv3HbghDnsY=;
 b=an14iV4XdauELdzuZz12gDHLhkFl2pit6jvs3niY1Zl/iCuI15E0jDGq7H38ZPBRRu
 2Pqwnp3Ukb72RxiZMlXH6HG5GnXbRcl996BwMd0nhtjIVeKk9pVPjabbYrvyZAoNbZFl
 Wdse+pXxilApG2eUAmtqn7p/SqUHPxBpaoBZluQjeewDIBn53V8R/6vFEE87GT8WU3ZJ
 N8jnSOV26aBH3gocY3CIMiy/NsNsvD4UX3nlFmToiOvMK0OBWI98kesSoBrKXh0m8Xcm
 CrwbmWAtzlYVx1G3UbVz+SDnHiTZRIPgAPQe3NbUsbO1QazF6IWSQjNdZZKxsbFS/09d
 mEJg==
X-Gm-Message-State: ANoB5pli92PyCUmoSKiPtli4R3z7MYgOQFW7No8G8oV9nByErf3IVemh
 tU+WPHXuQLfPktIN1meiGHqPAoPaeZuL4aZCwNC69DXf
X-Google-Smtp-Source: AA0mqf5zegPnBJOE/FjQStHSg/8Vw/QAQKsmy5XahbLPphZBfjOAqtIiFHXJTQLFV2CMNa3+OO9opB+jSlPkFa+uVCU=
X-Received: by 2002:a05:6870:c908:b0:141:e619:169 with SMTP id
 hj8-20020a056870c90800b00141e6190169mr3939721oab.1.1668676717101; Thu, 17 Nov
 2022 01:18:37 -0800 (PST)
MIME-Version: 1.0
References: <CADiWsK9fxPnCdAYUek0nkWgY476-svZ78d=Pqm_RQoV4FfCSKA@mail.gmail.com>
 <20221116082102.uasas3k4whcjcbqv@tapioca>
 <CADiWsK-Mv1rR8yWmaSfYp5d9kU9tfrSqkvC_zor9hKYhA51+CA@mail.gmail.com>
 <20221116083733.yal5hdblbefrewjj@tapioca>
 <CADiWsK8NizZeSeQCrbZ-PU1Vjufmnt0exTOhJ5jFaRfnWo+aVA@mail.gmail.com>
 <CAHt6W4cmvcxagPeCMv1WsShT7BnMHGXMyzpp7BT=6wT+wBYFxw@mail.gmail.com>
 <CADiWsK9CunRBfzbazm9FqFw3t3vqRf58rR2uW8Erxns9r3xxPw@mail.gmail.com>
In-Reply-To: <CADiWsK9CunRBfzbazm9FqFw3t3vqRf58rR2uW8Erxns9r3xxPw@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 17 Nov 2022 09:18:25 +0000
Message-ID: <CAHt6W4eb2Mu1kCxh1wQy1pUsJkeamq1KhgH29B+r7V-8KDMWdQ@mail.gmail.com>
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

Il giorno gio 17 nov 2022 alle ore 09:13 Stefan Silberstein
<linuxstony@gmail.com> ha scritto:
>
> Hi,
>
> no this is the normal forward-slash with "shift+7" on the german keyboard=
 - googlemail messed it up translating it to something else.
> The URL  is normally typed.
>
> This is really weird and I will try to help you as much as I can to get t=
o the bottom of it.
>
> Stefan
>

That's pretty weird. That code has been there for ages. I tried but no
problems for me.
This operating system and version are you using?
Which shell?
Maybe it's the locale? Try launching something like "LANG=3DC
remote-viewer spice://192.168.178.51:5900" (LANG environment change)

Frediano

> Am Do., 17. Nov. 2022 um 10:08 Uhr schrieb Frediano Ziglio <freddy77@gmai=
l.com>:
>>
>> Il giorno gio 17 nov 2022 alle ore 07:57 Stefan Silberstein
>> <linuxstony@gmail.com> ha scritto:
>> >
>> > Hello again,
>> >
>> > so - yesterday I worked from home - as I wrote I was able to connect b=
y specifying the user root with "remote-viewer spice://root@192.168.178.51:=
5900"
>> >
>> > Today I want to connect the exact same way (yesterday i simply closed =
the remote-viewer window and the server keept on running so the windows-VM =
was running the whole night) - and I can not connect.
>> >
>> > Error Message on the console  "** (remote-viewer:6146): CRITICAL **: 0=
7:55:52.853: virt_viewer_util_extract_host: assertion 'uri !=3D NULL' faile=
d"
>> > Error Message on the popup says translated: Connectiontype could not b=
e determined by URI.
>> >
>>
>> Hi,
>>    That means that the code was not able to parse the URI.
>>
>> > IP of the server itself is 192.168.178.51
>> > IP of the Virtual Machine is 192.168.178.64 and i pingable
>> > Port 5900 on the server is open: 5900/tcp open  vnc
>> > remote-viewer --spice-debug spice:=E2=81=84=E2=81=84192.168.178.51:590=
0 does not produce a more verbose output :(
>> >
>>
>> In this example you are not using ASCII slashes (//), maybe that's the p=
roblem.
>>
>> > Update in the meantime
>> > But maybe this is helpful to you:
>> >
>> > I simply started "remote-viewer --spice-debug"
>> > Then i got the GUI (which i wasnt even aware it existed).
>> >
>> > When I choose the same entry on that list - I AM able to connect.
>> >
>> > So the error only exists only when I try to connect via command line?!=
 (This is when I am able to connect tomorrow via GUI ;) )
>> >
>> > Shouldn't this be the same ?
>> >
>> > I mabe I can help - maybe this is indeed a bug?
>> >
>> > Stefan
>> >
>>
>> Frediano
>>
>> > Am Mi., 16. Nov. 2022 um 09:37 Uhr schrieb Victor Toso <victortoso@red=
hat.com>:
>> >>
>> >> On Wed, Nov 16, 2022 at 09:27:21AM +0100, Stefan Silberstein wrote:
>> >> > I appreciate the time to answer me.
>> >> >
>> >> > In the meantime (out of desperation because i needed the virtualmac=
hine for
>> >> > work) I gave it a go with specifying root as user and not the serve=
rs
>> >> > username "server".
>> >> >
>> >> > I was able to connect to the virtual Windows10 installation with
>> >> >
>> >> > remote-viewer spice://root@192.168.178.51:5900
>> >>
>> >> Cool
>> >>
>> >> > But again - then I dont unterstand why it worked as user and
>> >> > later on with specifying the user later on (which doesn't work
>> >> > right now anymore)
>> >> >
>> >> > So it is a permissions problem on my side and I successfully
>> >> > wasted your time. :/
>> >> >
>> >> > Sorry about that.
>> >>
>> >> Don't worry about that. Happy to hear it worked.
>> >>
>> >> >
>> >> > This happens when "users" try to play with the big boys toys :D
>> >> >
>> >> > Have a nice day you all and thanks for your time.
>> >>
>> >> You too.
>> >> Cheers,
>> >>
>> >> >
>> >> > Stefan
>> >> >
>> >> > Am Mi., 16. Nov. 2022 um 09:21 Uhr schrieb Victor Toso <
>> >> > victortoso@redhat.com>:
>> >> >
>> >> > > Hi Stefan,
>> >> > >
>> >> > > On Tue, Nov 15, 2022 at 09:53:05PM +0100, Stefan Silberstein wrot=
e:
>> >> > > > Hello developers,
>> >> > > >
>> >> > > > I can imagine that this will be an annoying question for you -
>> >> > > > so I apologize in advance.
>> >> > > >
>> >> > > > I am a user - with a longer history with linux BUT i am
>> >> > > > completely new to virtualization.
>> >> > > > Due to the fact that I got a server donated to me I wanted to
>> >> > > > give it a go and it worked like a charm.
>> >> > > >
>> >> > > > Installed virt-manager, installed Windows10  connected with
>> >> > > > virt-manager - absolutely no problem.
>> >> > > >
>> >> > > > Due to the fact that I need dual monitors I learned that I
>> >> > > > could add another display and connect with spice - and it
>> >> > > > worked immediately.
>> >> > > >
>> >> > > > BUT - without me changing anything (consciously) I wasn't able
>> >> > > > to connect to the virtual machine the next week.
>> >> > > >
>> >> > > > It refuses with "Verbindungstyp konnte nicht von URI ermittelt =
werden"
>> >> > > > (Connection type could not be determined by URI)
>> >> > > >
>> >> > > > Then i tried to connect with sudo and specifying the user in
>> >> > > > the command line and it once again connected:
>> >> > > >
>> >> > > > sudo remote-viewer  spice:=E2=81=84=E2=81=84server@192.168.178.=
51:5900
>> >> > >
>> >> > > Perhaps the URL is the problem. If the IP is 192.168.178.51 and
>> >> > > the port for the VM is 5900, then try
>> >> > >
>> >> > >     remote-viewer spice://192.168.178.51:5900
>> >> > >
>> >> > > If server is a dns that can be resolved, should be fine to use it
>> >> > > instead of ip address
>> >> > >
>> >> > >     remote-viewer spice://server:5900
>> >> > >
>> >> > >
>> >> > > > And now - again without changing anything - it doesn't connect
>> >> > > > with that command as well.
>> >> > > >
>> >> > > > I have sadly NO clue whatsoever where to even search for a
>> >> > > > solution - the internet didn't help me here...
>> >> > > >
>> >> > > > Do you have any hint at all what I might do wrong here?
>> >> > > >
>> >> > > > The machine is available - the port is open and visible
>> >> > > > PORT     STATE SERVICE
>> >> > > > 22/tcp   open  ssh
>> >> > > > 80/tcp   open  http
>> >> > > > 3389/tcp open  ms-wbt-server
>> >> > > > 5900/tcp open  vnc
>> >> > > >
>> >> > > > ufw on the server is shut down.
>> >> > > >
>> >> > > > ANY help would be greatly appreciated.
>> >> > >
>> >> > > You can get more verbose information of issues with --spice-debug
>> >> > > command line option too.
>> >> > >
>> >> > > Cheers,
>> >> > > Victor
>> >> > >
