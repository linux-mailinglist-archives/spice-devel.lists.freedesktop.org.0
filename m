Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8176362D47A
	for <lists+spice-devel@lfdr.de>; Thu, 17 Nov 2022 08:57:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF72D10E56B;
	Thu, 17 Nov 2022 07:57:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55E2310E008
 for <spice-devel@lists.freedesktop.org>; Thu, 17 Nov 2022 07:12:21 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id h12so1531759ljg.9
 for <spice-devel@lists.freedesktop.org>; Wed, 16 Nov 2022 23:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ceaD5dzmoQ2zWWaDFRwdo8wv7DW2YGLTnAqgNe/ubp0=;
 b=k/uttnaSRo0/T+gqaIxKViH9XBG7u01BJetFVfjquG/b1IYiQkImn3YF00MFaPYEZl
 nrfxKiku5P4wgGRGa1Ukbr5vFp30aLVMCuWkaeOc2qxX6X0NXkPXnz4Lt6oj4zRiSvJl
 xemm4Em7lWUzpyx2p+9d4bdUxdlpmKWNo3Vo9KcQEIZPfUGBWCSSTPWjFzUlB3CyVqnh
 WZNP2ofXPZwleaI0+qs2Byh7S1C4JEtTrSBTrPryZ2doQyyLRUo7pjkL2f6vZngW0ntm
 Ygxq5h43imXr11qzIRE7Swyx7h/UHyZ/TPJ9Mz7V43Zxl+DdHn3FfJ0DGaqPYWfWN0Iv
 lPWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ceaD5dzmoQ2zWWaDFRwdo8wv7DW2YGLTnAqgNe/ubp0=;
 b=YJppPWlOrLLFWivuu3MiTVSwsPC5gVFLfJxRBlC2oRmjsR2WvfLiozG/XCoDlOfH5K
 GCda2EId/1Bnq6YQpF4AG84khjRqOIFwJqVtA/roU2PQZCpeURfbEBTmiJlBXnbYw/Fl
 6rk92VdwVnSaTne+Yyezd7vRj6EZWoR8f1b9e4WPTb312LIdsfNfQJ5i72QWay24aXir
 7OQY+4RZmpQFntMUcAVSAEDIrzezo5KOyU9VPmvqACp5pYLxqauRu3Hht/atJSCvHAxY
 naqzcGIORo4B9sajfxb+hWwlL3JrCcIYFbkA2oqttSQbaQNIdWa5nCAIiLnEocy5hjTv
 7G/g==
X-Gm-Message-State: ANoB5pmzc7IXZSKRHG1ZKfUoPaESlZK8b0ksBHlxcrIGRGB1a59YiyWG
 7Xe+0ctpikovPuxspWp00iyxpGKwv6YHDILouQSC8j/c
X-Google-Smtp-Source: AA0mqf4ZKiS3LHnwu0f4RfO17LZ+7R5Vq/X3ND9I2Yd58Z8FKprYvdgiIB4e8pFcPvMZ1dXDRl1SuwARBOLAcJx0mF0=
X-Received: by 2002:a05:651c:907:b0:26e:9936:6153 with SMTP id
 e7-20020a05651c090700b0026e99366153mr548572ljq.278.1668669139262; Wed, 16 Nov
 2022 23:12:19 -0800 (PST)
MIME-Version: 1.0
References: <CADiWsK9fxPnCdAYUek0nkWgY476-svZ78d=Pqm_RQoV4FfCSKA@mail.gmail.com>
 <20221116082102.uasas3k4whcjcbqv@tapioca>
 <CADiWsK-Mv1rR8yWmaSfYp5d9kU9tfrSqkvC_zor9hKYhA51+CA@mail.gmail.com>
 <20221116083733.yal5hdblbefrewjj@tapioca>
In-Reply-To: <20221116083733.yal5hdblbefrewjj@tapioca>
From: Stefan Silberstein <linuxstony@gmail.com>
Date: Thu, 17 Nov 2022 08:12:08 +0100
Message-ID: <CADiWsK8NizZeSeQCrbZ-PU1Vjufmnt0exTOhJ5jFaRfnWo+aVA@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
Content-Type: multipart/alternative; boundary="0000000000004b200205eda54f96"
X-Mailman-Approved-At: Thu, 17 Nov 2022 07:57:20 +0000
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

--0000000000004b200205eda54f96
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello again,

so - yesterday I worked from home - as I wrote I was able to connect by
specifying the user root with "remote-viewer spice://
root@192.168.178.51:5900"

Today I want to connect the exact same way (yesterday i simply closed the
remote-viewer window and the server keept on running so the windows-VM was
running the whole night) - and I can not connect.

Error Message on the console  "** (remote-viewer:6146): CRITICAL **:
07:55:52.853: virt_viewer_util_extract_host: assertion 'uri !=3D NULL' fail=
ed"
Error Message on the popup says translated: Connectiontype could not be
determined by URI.

IP of the server itself is 192.168.178.51
IP of the Virtual Machine is 192.168.178.64 and i pingable
Port 5900 on the server is open: 5900/tcp open  vnc
remote-viewer --spice-debug spice:=E2=81=84=E2=81=84192.168.178.51:5900 doe=
s not produce a
more verbose output :(

Update in the meantime
But maybe this is helpful to you:

I simply started "remote-viewer --spice-debug"
Then i got the GUI (which i wasnt even aware it existed).

When I choose the same entry on that list - I AM able to connect.

So the error only exists only when I try to connect via command line?!
(This is when I am able to connect tomorrow via GUI ;) )

Shouldn't this be the same ?

I mabe I can help - maybe this is indeed a bug?

Stefan

Am Mi., 16. Nov. 2022 um 09:37 Uhr schrieb Victor Toso <
victortoso@redhat.com>:

> On Wed, Nov 16, 2022 at 09:27:21AM +0100, Stefan Silberstein wrote:
> > I appreciate the time to answer me.
> >
> > In the meantime (out of desperation because i needed the virtualmachine
> for
> > work) I gave it a go with specifying root as user and not the servers
> > username "server".
> >
> > I was able to connect to the virtual Windows10 installation with
> >
> > remote-viewer spice://root@192.168.178.51:5900
>
> Cool
>
> > But again - then I dont unterstand why it worked as user and
> > later on with specifying the user later on (which doesn't work
> > right now anymore)
> >
> > So it is a permissions problem on my side and I successfully
> > wasted your time. :/
> >
> > Sorry about that.
>
> Don't worry about that. Happy to hear it worked.
>
> >
> > This happens when "users" try to play with the big boys toys :D
> >
> > Have a nice day you all and thanks for your time.
>
> You too.
> Cheers,
>
> >
> > Stefan
> >
> > Am Mi., 16. Nov. 2022 um 09:21 Uhr schrieb Victor Toso <
> > victortoso@redhat.com>:
> >
> > > Hi Stefan,
> > >
> > > On Tue, Nov 15, 2022 at 09:53:05PM +0100, Stefan Silberstein wrote:
> > > > Hello developers,
> > > >
> > > > I can imagine that this will be an annoying question for you -
> > > > so I apologize in advance.
> > > >
> > > > I am a user - with a longer history with linux BUT i am
> > > > completely new to virtualization.
> > > > Due to the fact that I got a server donated to me I wanted to
> > > > give it a go and it worked like a charm.
> > > >
> > > > Installed virt-manager, installed Windows10  connected with
> > > > virt-manager - absolutely no problem.
> > > >
> > > > Due to the fact that I need dual monitors I learned that I
> > > > could add another display and connect with spice - and it
> > > > worked immediately.
> > > >
> > > > BUT - without me changing anything (consciously) I wasn't able
> > > > to connect to the virtual machine the next week.
> > > >
> > > > It refuses with "Verbindungstyp konnte nicht von URI ermittelt
> werden"
> > > > (Connection type could not be determined by URI)
> > > >
> > > > Then i tried to connect with sudo and specifying the user in
> > > > the command line and it once again connected:
> > > >
> > > > sudo remote-viewer  spice:=E2=81=84=E2=81=84server@192.168.178.51:5=
900
> > >
> > > Perhaps the URL is the problem. If the IP is 192.168.178.51 and
> > > the port for the VM is 5900, then try
> > >
> > >     remote-viewer spice://192.168.178.51:5900
> > >
> > > If server is a dns that can be resolved, should be fine to use it
> > > instead of ip address
> > >
> > >     remote-viewer spice://server:5900
> > >
> > >
> > > > And now - again without changing anything - it doesn't connect
> > > > with that command as well.
> > > >
> > > > I have sadly NO clue whatsoever where to even search for a
> > > > solution - the internet didn't help me here...
> > > >
> > > > Do you have any hint at all what I might do wrong here?
> > > >
> > > > The machine is available - the port is open and visible
> > > > PORT     STATE SERVICE
> > > > 22/tcp   open  ssh
> > > > 80/tcp   open  http
> > > > 3389/tcp open  ms-wbt-server
> > > > 5900/tcp open  vnc
> > > >
> > > > ufw on the server is shut down.
> > > >
> > > > ANY help would be greatly appreciated.
> > >
> > > You can get more verbose information of issues with --spice-debug
> > > command line option too.
> > >
> > > Cheers,
> > > Victor
> > >
>

--0000000000004b200205eda54f96
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello again,</div><div><br></div><div>so - yesterday =
I worked from home - as I wrote I was able to connect by specifying the use=
r root with &quot;remote-viewer spice://<a href=3D"http://root@192.168.178.=
51:5900">root@192.168.178.51:5900</a>&quot;</div><div><br></div><div>Today =
I want to connect the exact same way (yesterday i simply closed the remote-=
viewer window and the server keept on running so the windows-VM was running=
 the whole night) - and I can not connect.</div><div><br></div><div><span s=
tyle=3D"font-family:arial,sans-serif"></span></div><div><span style=3D"font=
-family:arial,sans-serif">Error Message on the console=C2=A0 &quot;<span st=
yle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">** (remote-viewe=
r:6146): </span><span style=3D"font-weight:bold;color:rgb(255,84,255);backg=
round-color:rgb(255,255,255)">CRITICAL</span><span style=3D"color:rgb(0,0,0=
);background-color:rgb(255,255,255)"> **: </span><span style=3D"color:rgb(2=
4,24,178);background-color:rgb(255,255,255)">07:55:52.853</span><span style=
=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">: virt_viewer_util_=
extract_host: assertion &#39;uri !=3D NULL&#39; failed&quot;</span></span><=
/div><div><span style=3D"font-family:arial,sans-serif"><span style=3D"color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Error Message on the popup s=
ays translated: Connectiontype could not be determined by URI.</span></span=
></div><div><span style=3D"font-family:arial,sans-serif"><span style=3D"col=
or:rgb(0,0,0);background-color:rgb(255,255,255)"><br></span></span></div><d=
iv><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,=
0,0);background-color:rgb(255,255,255)">IP of the server itself is 192.168.=
178.51<br></span></span></div><div><span style=3D"font-family:arial,sans-se=
rif"><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">IP =
of the Virtual Machine is 192.168.178.64 and i pingable<br></span></span></=
div><div><span style=3D"font-family:arial,sans-serif"><span style=3D"color:=
rgb(0,0,0);background-color:rgb(255,255,255)">Port 5900 on the server is op=
en: <span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">5900=
/tcp open =C2=A0vnc</span><br>
</span></span></div><div><span style=3D"font-family:arial,sans-serif"><span=
 style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"><span style=
=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">remote-viewer --spi=
ce-debug spice:=E2=81=84=E2=81=84<a href=3D"http://192.168.178.51:5900">192=
.168.178.51:5900</a></span> does not produce a more verbose output :(<br>
<br></span></span></div><div><span style=3D"font-family:arial,sans-serif"><=
span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">Update in=
 the meantime<br></span></span></div><div><span style=3D"font-family:arial,=
sans-serif"><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,25=
5)">But maybe this is helpful to you:</span></span></div><div><span style=
=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0);backgroun=
d-color:rgb(255,255,255)"><br></span></span></div><div><span style=3D"font-=
family:arial,sans-serif"><span style=3D"color:rgb(0,0,0);background-color:r=
gb(255,255,255)">I simply started &quot;remote-viewer --spice-debug&quot;<b=
r></span></span></div><div><span style=3D"font-family:arial,sans-serif"><sp=
an style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">Then i got =
the GUI (which i wasnt even aware it existed).</span></span></div><div><spa=
n style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0);ba=
ckground-color:rgb(255,255,255)"><br></span></span></div><div><span style=
=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0);backgroun=
d-color:rgb(255,255,255)">When I choose the same entry on that list - I AM =
able to connect. <br></span></span></div><div><span style=3D"font-family:ar=
ial,sans-serif"><span style=3D"color:rgb(0,0,0);background-color:rgb(255,25=
5,255)"><br></span></span></div><div><span style=3D"font-family:arial,sans-=
serif"><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">S=
o the error only exists only when I try to connect via command line?! (This=
 is when I am able to connect tomorrow via GUI ;) )<br></span></span></div>=
<div><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(=
0,0,0);background-color:rgb(255,255,255)"><br></span></span></div><div><spa=
n style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb(0,0,0);ba=
ckground-color:rgb(255,255,255)">Shouldn&#39;t this be the same ?</span></s=
pan></div><div><span style=3D"font-family:arial,sans-serif"><span style=3D"=
color:rgb(0,0,0);background-color:rgb(255,255,255)"><br></span></span></div=
><div><span style=3D"font-family:arial,sans-serif"><span style=3D"color:rgb=
(0,0,0);background-color:rgb(255,255,255)">I mabe I can help - maybe this i=
s indeed a bug?</span></span></div><div><span style=3D"font-family:arial,sa=
ns-serif"><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)=
"><br></span></span></div><div><span style=3D"font-family:monospace"><span =
style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"><span style=3D=
"font-family:monospace"><span style=3D"font-family:monospace"><span style=
=3D"font-family:arial,sans-serif">Stefan</span><br></span></span></span></s=
pan></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">Am Mi., 16. Nov. 2022 um 09:37=C2=A0Uhr schrieb Victor Toso &lt;<=
a href=3D"mailto:victortoso@redhat.com">victortoso@redhat.com</a>&gt;:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed, Nov 16, 2022=
 at 09:27:21AM +0100, Stefan Silberstein wrote:<br>
&gt; I appreciate the time to answer me.<br>
&gt;<br>
&gt; In the meantime (out of desperation because i needed the virtualmachin=
e for<br>
&gt; work) I gave it a go with specifying root as user and not the servers<=
br>
&gt; username &quot;server&quot;.<br>
&gt;<br>
&gt; I was able to connect to the virtual Windows10 installation with<br>
&gt;<br>
&gt; remote-viewer spice://<a href=3D"http://root@192.168.178.51:5900" rel=
=3D"noreferrer" target=3D"_blank">root@192.168.178.51:5900</a><br>
<br>
Cool<br>
<br>
&gt; But again - then I dont unterstand why it worked as user and<br>
&gt; later on with specifying the user later on (which doesn&#39;t work<br>
&gt; right now anymore)<br>
&gt;<br>
&gt; So it is a permissions problem on my side and I successfully<br>
&gt; wasted your time. :/<br>
&gt;<br>
&gt; Sorry about that.<br>
<br>
Don&#39;t worry about that. Happy to hear it worked.<br>
<br>
&gt;<br>
&gt; This happens when &quot;users&quot; try to play with the big boys toys=
 :D<br>
&gt;<br>
&gt; Have a nice day you all and thanks for your time.<br>
<br>
You too.<br>
Cheers,<br>
<br>
&gt;<br>
&gt; Stefan<br>
&gt; <br>
&gt; Am Mi., 16. Nov. 2022 um 09:21 Uhr schrieb Victor Toso &lt;<br>
&gt; <a href=3D"mailto:victortoso@redhat.com" target=3D"_blank">victortoso@=
redhat.com</a>&gt;:<br>
&gt; <br>
&gt; &gt; Hi Stefan,<br>
&gt; &gt;<br>
&gt; &gt; On Tue, Nov 15, 2022 at 09:53:05PM +0100, Stefan Silberstein wrot=
e:<br>
&gt; &gt; &gt; Hello developers,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I can imagine that this will be an annoying question for you=
 -<br>
&gt; &gt; &gt; so I apologize in advance.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I am a user - with a longer history with linux BUT i am<br>
&gt; &gt; &gt; completely new to virtualization.<br>
&gt; &gt; &gt; Due to the fact that I got a server donated to me I wanted t=
o<br>
&gt; &gt; &gt; give it a go and it worked like a charm.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Installed virt-manager, installed Windows10=C2=A0 connected =
with<br>
&gt; &gt; &gt; virt-manager - absolutely no problem.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Due to the fact that I need dual monitors I learned that I<b=
r>
&gt; &gt; &gt; could add another display and connect with spice - and it<br=
>
&gt; &gt; &gt; worked immediately.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; BUT - without me changing anything (consciously) I wasn&#39;=
t able<br>
&gt; &gt; &gt; to connect to the virtual machine the next week.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; It refuses with &quot;Verbindungstyp konnte nicht von URI er=
mittelt werden&quot;<br>
&gt; &gt; &gt; (Connection type could not be determined by URI)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Then i tried to connect with sudo and specifying the user in=
<br>
&gt; &gt; &gt; the command line and it once again connected:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; sudo remote-viewer=C2=A0 spice:=E2=81=84=E2=81=84<a href=3D"=
http://server@192.168.178.51:5900" rel=3D"noreferrer" target=3D"_blank">ser=
ver@192.168.178.51:5900</a><br>
&gt; &gt;<br>
&gt; &gt; Perhaps the URL is the problem. If the IP is 192.168.178.51 and<b=
r>
&gt; &gt; the port for the VM is 5900, then try<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0remote-viewer spice://<a href=3D"http://192.16=
8.178.51:5900" rel=3D"noreferrer" target=3D"_blank">192.168.178.51:5900</a>=
<br>
&gt; &gt;<br>
&gt; &gt; If server is a dns that can be resolved, should be fine to use it=
<br>
&gt; &gt; instead of ip address<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0remote-viewer spice://server:5900<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; &gt; And now - again without changing anything - it doesn&#39;t c=
onnect<br>
&gt; &gt; &gt; with that command as well.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I have sadly NO clue whatsoever where to even search for a<b=
r>
&gt; &gt; &gt; solution - the internet didn&#39;t help me here...<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Do you have any hint at all what I might do wrong here?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; The machine is available - the port is open and visible<br>
&gt; &gt; &gt; PORT=C2=A0 =C2=A0 =C2=A0STATE SERVICE<br>
&gt; &gt; &gt; 22/tcp=C2=A0 =C2=A0open=C2=A0 ssh<br>
&gt; &gt; &gt; 80/tcp=C2=A0 =C2=A0open=C2=A0 http<br>
&gt; &gt; &gt; 3389/tcp open=C2=A0 ms-wbt-server<br>
&gt; &gt; &gt; 5900/tcp open=C2=A0 vnc<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; ufw on the server is shut down.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; ANY help would be greatly appreciated.<br>
&gt; &gt;<br>
&gt; &gt; You can get more verbose information of issues with --spice-debug=
<br>
&gt; &gt; command line option too.<br>
&gt; &gt;<br>
&gt; &gt; Cheers,<br>
&gt; &gt; Victor<br>
&gt; &gt;<br>
</blockquote></div>

--0000000000004b200205eda54f96--
