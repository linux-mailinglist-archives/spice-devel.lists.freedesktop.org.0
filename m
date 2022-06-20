Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3689355242E
	for <lists+spice-devel@lfdr.de>; Mon, 20 Jun 2022 20:46:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4053410E0CF;
	Mon, 20 Jun 2022 18:46:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A45F10E0CF
 for <spice-devel@lists.freedesktop.org>; Mon, 20 Jun 2022 18:46:19 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id g4so6274047lfv.9
 for <spice-devel@lists.freedesktop.org>; Mon, 20 Jun 2022 11:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tygC9b9w7nCvLma1qJIJmt6dAg0BrNNYpvO2KFX9IUM=;
 b=dfP51kOThjG6BMBWTl9luPNyP9s9LRzY+330cncPZsKcm0FV1nIvNir3gSwZPlrzbM
 VGzxrk70e6/+rKWJnkH17OgsyAez0qB9QvrXNxOh1hDBT5fuuE2KzJ2b6K7ZhtmVPowM
 BXSVgDJvEo6nhdasDV/vR/Z9IwIgnZmlyBzbAD3ikqCb67Y7AM9FqVdhvtNG7gKqQH2o
 NyZvSwfKwe2kGYsiDUCXDZGdGQdE7rtAODdAkr3EgkxB62J+J2IPXPaC8Zm5lGTioEFj
 cWybgVLBY9QqGjHh9VoGxvAsXjZr+Bphoh61LTIlTUXcnFRB7O9XLLluae5e9JXveT0D
 6lBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tygC9b9w7nCvLma1qJIJmt6dAg0BrNNYpvO2KFX9IUM=;
 b=2ZJpLzgCM5oMzc7LkqsYycKnOO2egtfjdJZJJ6yeGbQ1nL/scaZRkgVsKHkaTrxDqe
 /wnfjzpfLJlU8CzKwidRroFmaGMkNNHkTDNm8pfPhoKWB+Po+AHjyVSZjWBSX2BxbACQ
 RrPA0pI8Ghs+GXEK3hJPhi3jlc6IKxbATF1PRiICpmG5m2ie8laQH+Y3pOaMbdPFNz1m
 i+GV6x2nM2dBAFfFEAjDp1+o6mF5HTCZ0jJRzFzzKD+BRFBVh7SYF8So7A0qoGz7oyR7
 e5YKkpkOHtYfF0P1u/Tlin0QeXkksBufwLAFr850d8hDPiB26w2QFliBv1tcUGzfATIj
 YehQ==
X-Gm-Message-State: AJIora86Nd2c1kq6575MPWTpTk5mKvi5FwcOL9o1fXu8+EvLT5D1Qf3n
 lqDA0Dc/IVpRMDzgBn49i2eQfwivyMkydo8pkTMc6KDDpto=
X-Google-Smtp-Source: AGRyM1uaYwGcx/SQGEiV+YjjBStWeMHCtugsnVaX49+RR/lSH9fbLcnq5TMNpHZPbwO/he6/PMqqlwaveysk1Wbo2/A=
X-Received: by 2002:ac2:52b7:0:b0:47f:616d:e54c with SMTP id
 r23-20020ac252b7000000b0047f616de54cmr6750292lfm.218.1655750777133; Mon, 20
 Jun 2022 11:46:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAFjj602+NQwJF-QB6V=9ELfc9qgqBdvhSr5_VSAdy6-LZCoPbA@mail.gmail.com>
In-Reply-To: <CAFjj602+NQwJF-QB6V=9ELfc9qgqBdvhSr5_VSAdy6-LZCoPbA@mail.gmail.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Mon, 20 Jun 2022 22:46:05 +0400
Message-ID: <CAJ+F1CLCV3oMTnLf2dDX7uFH0QV481O2csHpdvofj8jo19RrEA@mail.gmail.com>
To: Nick Couchman <vnick@apache.org>
Content-Type: multipart/alternative; boundary="000000000000e862be05e1e584f3"
Subject: Re: [Spice-devel] Issues with Clipboard Grab/Release Callbacks
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000e862be05e1e584f3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

On Mon, Jun 20, 2022 at 6:09 PM Nick Couchman <vnick@apache.org> wrote:

> Hello, everyone,
> I've posted here, before, with some questions during my journey of trying
> to add support for the SPICE protocol to the Guacamole project. The good
> news is that I've actually made measurable progress in the implementation=
 -
> I can now connect to a SPICE server, and the basics work (mouse and
> keyboard - mostly anyway), so I'm moving on to the extra stuff - clipboar=
d,
> audio, file transfer, etc.
>
> In working on the clipboard integration, I'm currently running into an
> issue with a couple of the callback functions, specifically the clipboard
> grab/release functions, where the number of arguments seems to be
> mismatched. According to the documentation, these callbacks should be
> called with the following arguments:
>
> gboolean
> user_function (SpiceMainChannel *main,
>                guint             selection,
>                gpointer          types,
>                guint             ntypes,
>                gpointer          user_data)
>
>
types is actually guint32*, but that's not the problem here.


> void
> user_function (SpiceMainChannel *main,
>                guint             selection,
>                gpointer          user_data)
>
> I've implemented the callbacks with those arguments, as follows:
>
> void guac_spice_clipboard_selection_grab_handler(SpiceMainChannel channel=
,
>         guint selection, gpointer types, guint ntypes, guac_client* clien=
t)
>
> void guac_spice_clipboard_selection_release_handler(SpiceMainChannel
> channel,
>         guint selection, guac_client* client)
>

It looks correct. Can you point to your code connecting the signals with
the handlers?


>
> and registered them appropriately. However, if I use them as implemented
> above, when the callbacks are triggered, the application segfaults when I
> try to access the "guac_client* client" data structure. I used GDB to try
> to help track this down, and I noticed that the value of "client" was 0x1=
,
> which looks less like a pointer to a memory location and more like the
> number 1.
>
> So, I decided to add another argument to the callback functions, just
> before the client argument:
>
> void guac_spice_clipboard_selection_grab_handler(SpiceMainChannel channel=
,
>         guint selection, gpointer types, guint ntypes, guint extra,
> guac_client* client)
>
> void guac_spice_clipboard_selection_release_handler(SpiceMainChannel
> channel,
>         guint selection, guint extra, guac_client* client)
>
> Strangely, this works - the client data structure can be referenced, ther=
e
> are no segfaults (yet), etc. So, I decided to print the values that are
> being passed for all of these parameters, and I get the following:
>
> guacd[100252]: DEBUG: Notifying client of clipboard grab in the guest.
> guacd[100252]: DEBUG: Arg: channel: 0x00000000
> guacd[100252]: DEBUG: Arg: selection: 1275303536
> guacd[100252]: DEBUG: Arg: types: 0x00000001
> guacd[100252]: DEBUG: Arg: ntypes: 1276022924
> guacd[100252]: DEBUG: Arg: extra: 1
>
>
Weird


> I printed them in the format I thought they should be in based on what th=
e
> arguments are supposed to be - I probably should have just done all hex.
> But, it seems like maybe the "extra" parameter being passed is in front o=
f
> the channel, since the channel is showing up as all zeros?
>
> I was trying to find the code where the callbacks are actually called -
> I'm guessing, since this is clipboard integration, it'll be in the vdagen=
t
> code somewhere - but I was having trouble tracking that down.
>
>
The callbacks are not directly called, since those a GObject signals. The
main channel will call g_signal_emit().



> If anyone has any ideas, I'd appreciate the insight into this - I'm
> puzzled by this apparent mismatch in the number of arguments. Also, if it
> matters, I'm running CentOS 8 Stream, using Xspice to provide a test SPIC=
E
> server, and running spice-vdagentd/spice-vdagent within my X session. Yes=
,
> I know Xspice is unmaintained, but I just needed something simple and tha=
t
> I didn't have to spend a bunch of time building in order to give me a spi=
ce
> server to point at, and, so far, this has been pretty reliable. Also, at
> its core, it appears to use the same spice-qxl X driver that x11spice use=
s,
> just with a simple Python wrapper script for generating an X config file
> and starting the X server/display. So, I think it's still pretty "safe" f=
or
> attempting to develop this Guacamole integration - if for some reason you
> believe me to be wrong about that, please let me know.
>

Your testing environment shouldn't be a problem, it's really your
client-side code integration with spice-glib that looks broken.

--=20
Marc-Andr=C3=A9 Lureau

--000000000000e862be05e1e584f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi<br></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 20, 2022 at 6:09 PM Nic=
k Couchman &lt;<a href=3D"mailto:vnick@apache.org">vnick@apache.org</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hello, everyone,<div>I&#39;ve posted here, before, with some quest=
ions during my journey of trying to add support for the SPICE protocol to t=
he Guacamole project. The good news is that I&#39;ve actually made measurab=
le progress in the implementation - I can now connect to a SPICE server, an=
d the basics work (mouse and keyboard - mostly anyway), so I&#39;m moving o=
n to the extra stuff - clipboard, audio, file transfer, etc.</div><div><br>=
</div><div>In working on the clipboard integration, I&#39;m currently runni=
ng into an issue with a couple of the callback=C2=A0functions, specifically=
 the clipboard grab/release functions, where the number of arguments seems =
to be mismatched. According to the documentation, these callbacks should be=
 called with the following arguments:</div><div><br></div><div>gboolean<br>=
user_function (SpiceMainChannel *main,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0guint =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sel=
ection,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gpointer =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0types,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0guint =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 nty=
pes,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gpointer =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0user_data)<br></div><div><br></div></div></b=
lockquote><div><br></div><div>types is actually guint32*, but that&#39;s no=
t the problem here.</div><div>=C2=A0<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div></div><div>void<br>user_function=
 (SpiceMainChannel *main,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0guint =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 selection,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gpointer =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0user_data)<br></div><div><br></div><div>I&#39;ve implem=
ented the callbacks with those arguments, as follows:<br><br>void guac_spic=
e_clipboard_selection_grab_handler(SpiceMainChannel channel,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 guint selection, gpointer types, guint ntypes, guac_clien=
t* client)<br></div><div><br></div><div>void guac_spice_clipboard_selection=
_release_handler(SpiceMainChannel channel,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 g=
uint selection, guac_client* client)<br></div></div></blockquote><div><br><=
/div><div>It looks correct. Can you point to your code connecting the signa=
ls with the handlers?</div><div>=C2=A0<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div></div><div><br></div><div>and =
registered them appropriately. However, if I use them as implemented above,=
 when the callbacks are triggered, the application segfaults when I try to =
access the &quot;guac_client* client&quot; data structure. I used GDB to tr=
y to help track this down, and I noticed that the value of &quot;client&quo=
t; was 0x1, which looks less like a pointer to a memory location and more l=
ike the number 1.</div><div><br></div><div>So, I decided to add another arg=
ument to the callback functions, just before the client argument:</div><div=
><br></div><div>void guac_spice_clipboard_selection_grab_handler(SpiceMainC=
hannel channel,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 guint selection, gpointer ty=
pes, guint ntypes, guint extra, guac_client* client)<br></div><div><br></di=
v><div>void guac_spice_clipboard_selection_release_handler(SpiceMainChannel=
 channel,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 guint selection, guint extra, guac=
_client* client)<br></div><div><br></div><div>Strangely, this works - the c=
lient data structure can be referenced, there are no segfaults (yet), etc. =
So, I decided to print the values that are being passed for all of these pa=
rameters, and I get the following:</div><div><br></div><div>guacd[100252]: =
DEBUG:	Notifying client of clipboard grab in the guest.<br>guacd[100252]: D=
EBUG:	Arg: channel: 0x00000000<br>guacd[100252]: DEBUG:	Arg: selection: 127=
5303536<br>guacd[100252]: DEBUG:	Arg: types: 0x00000001<br>guacd[100252]: D=
EBUG:	Arg: ntypes: 1276022924<br>guacd[100252]: DEBUG:	Arg: extra: 1<br></d=
iv><div><br></div></div></blockquote><div><br></div><div>Weird</div><div>=
=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div></div><div>I printed them in the format I thought they should=
 be in based on what the arguments are supposed to be - I probably should h=
ave just done all hex. But, it seems like maybe the &quot;extra&quot; param=
eter being passed is in front of the channel, since the channel is showing =
up as all zeros?</div><div><br></div><div>I was trying to find the code whe=
re the callbacks are actually called - I&#39;m guessing, since this is clip=
board integration, it&#39;ll be in the vdagent code somewhere - but I was h=
aving trouble tracking that down.</div><div><br></div></div></blockquote><d=
iv><br></div><div>The callbacks are not directly called, since those a GObj=
ect signals. The main channel will call g_signal_emit().</div><div><br></di=
v><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div></div><div>If anyone has any ideas, I&#39;d appreciate the =
insight into this - I&#39;m puzzled by this apparent mismatch in the number=
 of arguments. Also, if it matters, I&#39;m running CentOS 8 Stream, using =
Xspice to provide a test SPICE server, and running spice-vdagentd/spice-vda=
gent within my X session. Yes, I know Xspice is unmaintained, but I just ne=
eded something simple and that I didn&#39;t have to spend a bunch of time b=
uilding in order to give me a spice server to point at, and, so far, this h=
as been pretty reliable. Also, at its core, it appears to use the same spic=
e-qxl X driver that x11spice=C2=A0uses, just with a simple Python wrapper s=
cript for generating an X config file and starting the X server/display. So=
, I think it&#39;s still pretty &quot;safe&quot; for attempting to develop =
this Guacamole integration - if for some reason you believe me to be wrong =
about that, please let me know.</div></div></blockquote><div><br></div><div=
>Your testing environment shouldn&#39;t be a problem, it&#39;s really your =
client-side code integration with spice-glib that looks broken.<br></div></=
div><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature">Marc-Andr=C3=A9 L=
ureau<br></div></div>

--000000000000e862be05e1e584f3--
