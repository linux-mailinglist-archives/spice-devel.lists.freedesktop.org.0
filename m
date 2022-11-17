Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A74B62D6A1
	for <lists+spice-devel@lfdr.de>; Thu, 17 Nov 2022 10:23:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C14D10E588;
	Thu, 17 Nov 2022 09:23:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1C7210E57D
 for <spice-devel@lists.freedesktop.org>; Thu, 17 Nov 2022 09:13:48 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id j4so1877454lfk.0
 for <spice-devel@lists.freedesktop.org>; Thu, 17 Nov 2022 01:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=KMulL8RIauaj6AD5I8eXlix7/SNaWyPxJqz6vc801dE=;
 b=gCcMCXm3Y9qUIRWw71wIaT4Wherzvgd/i7+QZWjqjlvnl3G/XzRDT+GpXCUpXJAxWC
 yCdTXwhc9/ZH7uDYJd9xCNP1g+vQtXHFzXJYp5bqx3uP+PUM8CU8nbUk6VWHUy7a1a6k
 i3Cpsh2q7YvkuBj5DJfnTCk9VFDMFJnpbC/1CGF7VXBZHJX9O9T0lUQZF14FdHZbTh4e
 9i6LrhGa/pi5LLDeEMGEvFIDBpldCEsFtvUXyE+XXRU6j0VXCWfVb+a+KXwdbygghtFp
 1OLNnRQqlDZMLYkiJmk+9Bk73zicvyBftEhBfHEaroWQYsRLvikcN7YLaI4dYfsnC8Pz
 tOwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=KMulL8RIauaj6AD5I8eXlix7/SNaWyPxJqz6vc801dE=;
 b=w9xot/26KRGaXS091HPxGDb79y/xpzW2l2JVSpv7SWN7ye9rSMyb5DidojVVhQ6Dy6
 JhU6Z8NAily1BAMnxAY+OH3EXh9UJ43XK4Ng57WxmKJnMqvEpTIUy5DWErCr7RHWJcR1
 U1vcgwKZsBgK5Dzjuun/rI7pwS+D/5HsW3Li9soS9ETv5PR0aX01TLsKS79yG+83laiF
 ZzWQZ/1Eoqj1J8dtDqxnth2If+2ARqCWLr2xh7bz80U79RAw4zhPpAbjGb+550xIBNSy
 xiEsj+4hhX8ojfkmtNuy7R5Iii0SuiV+hSlPs7PG2+YeImtf6+d4A9xjAyQQ5u86b5ZC
 LBbg==
X-Gm-Message-State: ANoB5pl2oV3OmQv7qRTItKzHHF3d8OkOPW6e7vixLUELfuJxFBy9+sjT
 iueUt0k29Jfzci/32bx6RbgjFBH6MJFM7TfYsxw=
X-Google-Smtp-Source: AA0mqf4myDWlchWlasbfAa+0SJAN+42VIYz8CuLr4iGpaGb4ik1ZRVt1wIhg4yYVTWhzVjq24fkeCBiilVAQa9SXfHM=
X-Received: by 2002:a05:6512:3f89:b0:4ac:660b:1f02 with SMTP id
 x9-20020a0565123f8900b004ac660b1f02mr596819lfa.9.1668676426891; Thu, 17 Nov
 2022 01:13:46 -0800 (PST)
MIME-Version: 1.0
References: <CADiWsK9fxPnCdAYUek0nkWgY476-svZ78d=Pqm_RQoV4FfCSKA@mail.gmail.com>
 <20221116082102.uasas3k4whcjcbqv@tapioca>
 <CADiWsK-Mv1rR8yWmaSfYp5d9kU9tfrSqkvC_zor9hKYhA51+CA@mail.gmail.com>
 <20221116083733.yal5hdblbefrewjj@tapioca>
 <CADiWsK8NizZeSeQCrbZ-PU1Vjufmnt0exTOhJ5jFaRfnWo+aVA@mail.gmail.com>
 <CAHt6W4cmvcxagPeCMv1WsShT7BnMHGXMyzpp7BT=6wT+wBYFxw@mail.gmail.com>
In-Reply-To: <CAHt6W4cmvcxagPeCMv1WsShT7BnMHGXMyzpp7BT=6wT+wBYFxw@mail.gmail.com>
From: Stefan Silberstein <linuxstony@gmail.com>
Date: Thu, 17 Nov 2022 10:13:35 +0100
Message-ID: <CADiWsK9CunRBfzbazm9FqFw3t3vqRf58rR2uW8Erxns9r3xxPw@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000ab856c05eda701a7"
X-Mailman-Approved-At: Thu, 17 Nov 2022 09:23:33 +0000
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

--000000000000ab856c05eda701a7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

no this is the normal forward-slash with "shift+7" on the german keyboard -
googlemail messed it up translating it to something else.
The URL  is normally typed.

This is really weird and I will try to help you as much as I can to get to
the bottom of it.

Stefan

Am Do., 17. Nov. 2022 um 10:08 Uhr schrieb Frediano Ziglio <
freddy77@gmail.com>:

> Il giorno gio 17 nov 2022 alle ore 07:57 Stefan Silberstein
> <linuxstony@gmail.com> ha scritto:
> >
> > Hello again,
> >
> > so - yesterday I worked from home - as I wrote I was able to connect by
> specifying the user root with "remote-viewer spice://
> root@192.168.178.51:5900"
> >
> > Today I want to connect the exact same way (yesterday i simply closed
> the remote-viewer window and the server keept on running so the windows-V=
M
> was running the whole night) - and I can not connect.
> >
> > Error Message on the console  "** (remote-viewer:6146): CRITICAL **:
> 07:55:52.853: virt_viewer_util_extract_host: assertion 'uri !=3D NULL' fa=
iled"
> > Error Message on the popup says translated: Connectiontype could not be
> determined by URI.
> >
>
> Hi,
>    That means that the code was not able to parse the URI.
>
> > IP of the server itself is 192.168.178.51
> > IP of the Virtual Machine is 192.168.178.64 and i pingable
> > Port 5900 on the server is open: 5900/tcp open  vnc
> > remote-viewer --spice-debug spice:=E2=81=84=E2=81=84192.168.178.51:5900=
 does not
> produce a more verbose output :(
> >
>
> In this example you are not using ASCII slashes (//), maybe that's the
> problem.
>
> > Update in the meantime
> > But maybe this is helpful to you:
> >
> > I simply started "remote-viewer --spice-debug"
> > Then i got the GUI (which i wasnt even aware it existed).
> >
> > When I choose the same entry on that list - I AM able to connect.
> >
> > So the error only exists only when I try to connect via command line?!
> (This is when I am able to connect tomorrow via GUI ;) )
> >
> > Shouldn't this be the same ?
> >
> > I mabe I can help - maybe this is indeed a bug?
> >
> > Stefan
> >
>
> Frediano
>
> > Am Mi., 16. Nov. 2022 um 09:37 Uhr schrieb Victor Toso <
> victortoso@redhat.com>:
> >>
> >> On Wed, Nov 16, 2022 at 09:27:21AM +0100, Stefan Silberstein wrote:
> >> > I appreciate the time to answer me.
> >> >
> >> > In the meantime (out of desperation because i needed the
> virtualmachine for
> >> > work) I gave it a go with specifying root as user and not the server=
s
> >> > username "server".
> >> >
> >> > I was able to connect to the virtual Windows10 installation with
> >> >
> >> > remote-viewer spice://root@192.168.178.51:5900
> >>
> >> Cool
> >>
> >> > But again - then I dont unterstand why it worked as user and
> >> > later on with specifying the user later on (which doesn't work
> >> > right now anymore)
> >> >
> >> > So it is a permissions problem on my side and I successfully
> >> > wasted your time. :/
> >> >
> >> > Sorry about that.
> >>
> >> Don't worry about that. Happy to hear it worked.
> >>
> >> >
> >> > This happens when "users" try to play with the big boys toys :D
> >> >
> >> > Have a nice day you all and thanks for your time.
> >>
> >> You too.
> >> Cheers,
> >>
> >> >
> >> > Stefan
> >> >
> >> > Am Mi., 16. Nov. 2022 um 09:21 Uhr schrieb Victor Toso <
> >> > victortoso@redhat.com>:
> >> >
> >> > > Hi Stefan,
> >> > >
> >> > > On Tue, Nov 15, 2022 at 09:53:05PM +0100, Stefan Silberstein wrote=
:
> >> > > > Hello developers,
> >> > > >
> >> > > > I can imagine that this will be an annoying question for you -
> >> > > > so I apologize in advance.
> >> > > >
> >> > > > I am a user - with a longer history with linux BUT i am
> >> > > > completely new to virtualization.
> >> > > > Due to the fact that I got a server donated to me I wanted to
> >> > > > give it a go and it worked like a charm.
> >> > > >
> >> > > > Installed virt-manager, installed Windows10  connected with
> >> > > > virt-manager - absolutely no problem.
> >> > > >
> >> > > > Due to the fact that I need dual monitors I learned that I
> >> > > > could add another display and connect with spice - and it
> >> > > > worked immediately.
> >> > > >
> >> > > > BUT - without me changing anything (consciously) I wasn't able
> >> > > > to connect to the virtual machine the next week.
> >> > > >
> >> > > > It refuses with "Verbindungstyp konnte nicht von URI ermittelt
> werden"
> >> > > > (Connection type could not be determined by URI)
> >> > > >
> >> > > > Then i tried to connect with sudo and specifying the user in
> >> > > > the command line and it once again connected:
> >> > > >
> >> > > > sudo remote-viewer  spice:=E2=81=84=E2=81=84server@192.168.178.5=
1:5900
> >> > >
> >> > > Perhaps the URL is the problem. If the IP is 192.168.178.51 and
> >> > > the port for the VM is 5900, then try
> >> > >
> >> > >     remote-viewer spice://192.168.178.51:5900
> >> > >
> >> > > If server is a dns that can be resolved, should be fine to use it
> >> > > instead of ip address
> >> > >
> >> > >     remote-viewer spice://server:5900
> >> > >
> >> > >
> >> > > > And now - again without changing anything - it doesn't connect
> >> > > > with that command as well.
> >> > > >
> >> > > > I have sadly NO clue whatsoever where to even search for a
> >> > > > solution - the internet didn't help me here...
> >> > > >
> >> > > > Do you have any hint at all what I might do wrong here?
> >> > > >
> >> > > > The machine is available - the port is open and visible
> >> > > > PORT     STATE SERVICE
> >> > > > 22/tcp   open  ssh
> >> > > > 80/tcp   open  http
> >> > > > 3389/tcp open  ms-wbt-server
> >> > > > 5900/tcp open  vnc
> >> > > >
> >> > > > ufw on the server is shut down.
> >> > > >
> >> > > > ANY help would be greatly appreciated.
> >> > >
> >> > > You can get more verbose information of issues with --spice-debug
> >> > > command line option too.
> >> > >
> >> > > Cheers,
> >> > > Victor
> >> > >
>

--000000000000ab856c05eda701a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>no this is the normal fo=
rward-slash with &quot;shift+7&quot; on the german keyboard - googlemail me=
ssed it up translating it to something else. <br></div><div></div><div>The =
URL=C2=A0 is normally typed.</div><div><br></div><div>This is really weird =
and I will try to help you as much as I can to get to the bottom of it. <br=
></div><div><br></div><div>Stefan<br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">Am Do., 17. Nov. 2022 um 10:08=
=C2=A0Uhr schrieb Frediano Ziglio &lt;<a href=3D"mailto:freddy77@gmail.com"=
>freddy77@gmail.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">Il giorno gio 17 nov 2022 alle ore 07:57 Stefan Silberstein<br=
>
&lt;<a href=3D"mailto:linuxstony@gmail.com" target=3D"_blank">linuxstony@gm=
ail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; Hello again,<br>
&gt;<br>
&gt; so - yesterday I worked from home - as I wrote I was able to connect b=
y specifying the user root with &quot;remote-viewer spice://<a href=3D"http=
://root@192.168.178.51:5900" rel=3D"noreferrer" target=3D"_blank">root@192.=
168.178.51:5900</a>&quot;<br>
&gt;<br>
&gt; Today I want to connect the exact same way (yesterday i simply closed =
the remote-viewer window and the server keept on running so the windows-VM =
was running the whole night) - and I can not connect.<br>
&gt;<br>
&gt; Error Message on the console=C2=A0 &quot;** (remote-viewer:6146): CRIT=
ICAL **: 07:55:52.853: virt_viewer_util_extract_host: assertion &#39;uri !=
=3D NULL&#39; failed&quot;<br>
&gt; Error Message on the popup says translated: Connectiontype could not b=
e determined by URI.<br>
&gt;<br>
<br>
Hi,<br>
=C2=A0 =C2=A0That means that the code was not able to parse the URI.<br>
<br>
&gt; IP of the server itself is 192.168.178.51<br>
&gt; IP of the Virtual Machine is 192.168.178.64 and i pingable<br>
&gt; Port 5900 on the server is open: 5900/tcp open=C2=A0 vnc<br>
&gt; remote-viewer --spice-debug spice:=E2=81=84=E2=81=84<a href=3D"http://=
192.168.178.51:5900" rel=3D"noreferrer" target=3D"_blank">192.168.178.51:59=
00</a> does not produce a more verbose output :(<br>
&gt;<br>
<br>
In this example you are not using ASCII slashes (//), maybe that&#39;s the =
problem.<br>
<br>
&gt; Update in the meantime<br>
&gt; But maybe this is helpful to you:<br>
&gt;<br>
&gt; I simply started &quot;remote-viewer --spice-debug&quot;<br>
&gt; Then i got the GUI (which i wasnt even aware it existed).<br>
&gt;<br>
&gt; When I choose the same entry on that list - I AM able to connect.<br>
&gt;<br>
&gt; So the error only exists only when I try to connect via command line?!=
 (This is when I am able to connect tomorrow via GUI ;) )<br>
&gt;<br>
&gt; Shouldn&#39;t this be the same ?<br>
&gt;<br>
&gt; I mabe I can help - maybe this is indeed a bug?<br>
&gt;<br>
&gt; Stefan<br>
&gt;<br>
<br>
Frediano<br>
<br>
&gt; Am Mi., 16. Nov. 2022 um 09:37 Uhr schrieb Victor Toso &lt;<a href=3D"=
mailto:victortoso@redhat.com" target=3D"_blank">victortoso@redhat.com</a>&g=
t;:<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Nov 16, 2022 at 09:27:21AM +0100, Stefan Silberstein wrote=
:<br>
&gt;&gt; &gt; I appreciate the time to answer me.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; In the meantime (out of desperation because i needed the virt=
ualmachine for<br>
&gt;&gt; &gt; work) I gave it a go with specifying root as user and not the=
 servers<br>
&gt;&gt; &gt; username &quot;server&quot;.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I was able to connect to the virtual Windows10 installation w=
ith<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; remote-viewer spice://<a href=3D"http://root@192.168.178.51:5=
900" rel=3D"noreferrer" target=3D"_blank">root@192.168.178.51:5900</a><br>
&gt;&gt;<br>
&gt;&gt; Cool<br>
&gt;&gt;<br>
&gt;&gt; &gt; But again - then I dont unterstand why it worked as user and<=
br>
&gt;&gt; &gt; later on with specifying the user later on (which doesn&#39;t=
 work<br>
&gt;&gt; &gt; right now anymore)<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; So it is a permissions problem on my side and I successfully<=
br>
&gt;&gt; &gt; wasted your time. :/<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Sorry about that.<br>
&gt;&gt;<br>
&gt;&gt; Don&#39;t worry about that. Happy to hear it worked.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; This happens when &quot;users&quot; try to play with the big =
boys toys :D<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Have a nice day you all and thanks for your time.<br>
&gt;&gt;<br>
&gt;&gt; You too.<br>
&gt;&gt; Cheers,<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Stefan<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Am Mi., 16. Nov. 2022 um 09:21 Uhr schrieb Victor Toso &lt;<b=
r>
&gt;&gt; &gt; <a href=3D"mailto:victortoso@redhat.com" target=3D"_blank">vi=
ctortoso@redhat.com</a>&gt;:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; &gt; Hi Stefan,<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; On Tue, Nov 15, 2022 at 09:53:05PM +0100, Stefan Silbers=
tein wrote:<br>
&gt;&gt; &gt; &gt; &gt; Hello developers,<br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; I can imagine that this will be an annoying questio=
n for you -<br>
&gt;&gt; &gt; &gt; &gt; so I apologize in advance.<br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; I am a user - with a longer history with linux BUT =
i am<br>
&gt;&gt; &gt; &gt; &gt; completely new to virtualization.<br>
&gt;&gt; &gt; &gt; &gt; Due to the fact that I got a server donated to me I=
 wanted to<br>
&gt;&gt; &gt; &gt; &gt; give it a go and it worked like a charm.<br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; Installed virt-manager, installed Windows10=C2=A0 c=
onnected with<br>
&gt;&gt; &gt; &gt; &gt; virt-manager - absolutely no problem.<br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; Due to the fact that I need dual monitors I learned=
 that I<br>
&gt;&gt; &gt; &gt; &gt; could add another display and connect with spice - =
and it<br>
&gt;&gt; &gt; &gt; &gt; worked immediately.<br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; BUT - without me changing anything (consciously) I =
wasn&#39;t able<br>
&gt;&gt; &gt; &gt; &gt; to connect to the virtual machine the next week.<br=
>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; It refuses with &quot;Verbindungstyp konnte nicht v=
on URI ermittelt werden&quot;<br>
&gt;&gt; &gt; &gt; &gt; (Connection type could not be determined by URI)<br=
>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; Then i tried to connect with sudo and specifying th=
e user in<br>
&gt;&gt; &gt; &gt; &gt; the command line and it once again connected:<br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; sudo remote-viewer=C2=A0 spice:=E2=81=84=E2=81=84<a=
 href=3D"http://server@192.168.178.51:5900" rel=3D"noreferrer" target=3D"_b=
lank">server@192.168.178.51:5900</a><br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; Perhaps the URL is the problem. If the IP is 192.168.178=
.51 and<br>
&gt;&gt; &gt; &gt; the port for the VM is 5900, then try<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0remote-viewer spice://<a href=3D"http=
://192.168.178.51:5900" rel=3D"noreferrer" target=3D"_blank">192.168.178.51=
:5900</a><br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; If server is a dns that can be resolved, should be fine =
to use it<br>
&gt;&gt; &gt; &gt; instead of ip address<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0remote-viewer spice://server:5900<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; And now - again without changing anything - it does=
n&#39;t connect<br>
&gt;&gt; &gt; &gt; &gt; with that command as well.<br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; I have sadly NO clue whatsoever where to even searc=
h for a<br>
&gt;&gt; &gt; &gt; &gt; solution - the internet didn&#39;t help me here...<=
br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; Do you have any hint at all what I might do wrong h=
ere?<br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; The machine is available - the port is open and vis=
ible<br>
&gt;&gt; &gt; &gt; &gt; PORT=C2=A0 =C2=A0 =C2=A0STATE SERVICE<br>
&gt;&gt; &gt; &gt; &gt; 22/tcp=C2=A0 =C2=A0open=C2=A0 ssh<br>
&gt;&gt; &gt; &gt; &gt; 80/tcp=C2=A0 =C2=A0open=C2=A0 http<br>
&gt;&gt; &gt; &gt; &gt; 3389/tcp open=C2=A0 ms-wbt-server<br>
&gt;&gt; &gt; &gt; &gt; 5900/tcp open=C2=A0 vnc<br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; ufw on the server is shut down.<br>
&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; &gt; ANY help would be greatly appreciated.<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; You can get more verbose information of issues with --sp=
ice-debug<br>
&gt;&gt; &gt; &gt; command line option too.<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; Cheers,<br>
&gt;&gt; &gt; &gt; Victor<br>
&gt;&gt; &gt; &gt;<br>
</blockquote></div>

--000000000000ab856c05eda701a7--
