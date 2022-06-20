Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F12CD552456
	for <lists+spice-devel@lfdr.de>; Mon, 20 Jun 2022 21:00:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1F6310E20C;
	Mon, 20 Jun 2022 19:00:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 411 seconds by postgrey-1.36 at gabe;
 Mon, 20 Jun 2022 19:00:14 UTC
Received: from mxout1-he-de.apache.org (mxout1-he-de.apache.org
 [95.216.194.37])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E15510E146
 for <spice-devel@lists.freedesktop.org>; Mon, 20 Jun 2022 19:00:14 +0000 (UTC)
Received: from mail.apache.org (mailroute1-lw-us.apache.org [207.244.88.153])
 by mxout1-he-de.apache.org (ASF Mail Server at
 mxout1-he-de.apache.org) with SMTP id C7AF061A31
 for <spice-devel@lists.freedesktop.org>; Mon, 20 Jun 2022 18:53:20 +0000 (UTC)
Received: (qmail 7174 invoked by uid 99); 20 Jun 2022 18:53:20 -0000
Received: from ec2-52-204-25-47.compute-1.amazonaws.com (HELO
 mailrelay1-ec2-va.apache.org) (52.204.25.47)
 by apache.org (qpsmtpd/0.29) with ESMTP; Mon, 20 Jun 2022 18:53:20 +0000
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com
 [209.85.222.44]) by mailrelay1-ec2-va.apache.org (ASF Mail Server at
 mailrelay1-ec2-va.apache.org) with ESMTPSA id 1E1B13E8F1
 for <spice-devel@lists.freedesktop.org>; Mon, 20 Jun 2022 18:53:20 +0000 (UTC)
Received: by mail-ua1-f44.google.com with SMTP id 75so2618419uav.9
 for <spice-devel@lists.freedesktop.org>; Mon, 20 Jun 2022 11:53:20 -0700 (PDT)
X-Gm-Message-State: AJIora8Y06p6fOsfuW4qP6D32VcpwuMZoIPBo5VQXVwegENZ2lEKD7lI
 u861N74uptPefqI1MYx+DifiYhzeSi1cUuUrdvg=
X-Google-Smtp-Source: AGRyM1tV7AlW8wPdpS7pwnqgQ2UsXy8fj+QO2yk9ydCVhL+a9eYCDM5eDkb3YJO/LyPznf5JpYC0R1r6LzYaABbZf1Q=
X-Received: by 2002:ab0:7501:0:b0:368:97ec:fafa with SMTP id
 m1-20020ab07501000000b0036897ecfafamr8426387uap.5.1655751199840; Mon, 20 Jun
 2022 11:53:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAFjj602+NQwJF-QB6V=9ELfc9qgqBdvhSr5_VSAdy6-LZCoPbA@mail.gmail.com>
 <CAJ+F1CLCV3oMTnLf2dDX7uFH0QV481O2csHpdvofj8jo19RrEA@mail.gmail.com>
In-Reply-To: <CAJ+F1CLCV3oMTnLf2dDX7uFH0QV481O2csHpdvofj8jo19RrEA@mail.gmail.com>
From: Nick Couchman <vnick@apache.org>
Date: Mon, 20 Jun 2022 14:53:09 -0400
X-Gmail-Original-Message-ID: <CAFjj601vkEYrPv1NwWduAqDyBpmgw8j6PnDsuJ+pADvECozcnw@mail.gmail.com>
Message-ID: <CAFjj601vkEYrPv1NwWduAqDyBpmgw8j6PnDsuJ+pADvECozcnw@mail.gmail.com>
To: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>, 
 spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="0000000000001a621205e1e59ee3"
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--0000000000001a621205e1e59ee3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 20, 2022 at 2:46 PM Marc-Andr=C3=A9 Lureau <
marcandre.lureau@gmail.com> wrote:

> Hi
>
> On Mon, Jun 20, 2022 at 6:09 PM Nick Couchman <vnick@apache.org> wrote:
>
>> Hello, everyone,
>> I've posted here, before, with some questions during my journey of tryin=
g
>> to add support for the SPICE protocol to the Guacamole project. The good
>> news is that I've actually made measurable progress in the implementatio=
n -
>> I can now connect to a SPICE server, and the basics work (mouse and
>> keyboard - mostly anyway), so I'm moving on to the extra stuff - clipboa=
rd,
>> audio, file transfer, etc.
>>
>> In working on the clipboard integration, I'm currently running into an
>> issue with a couple of the callback functions, specifically the clipboar=
d
>> grab/release functions, where the number of arguments seems to be
>> mismatched. According to the documentation, these callbacks should be
>> called with the following arguments:
>>
>> gboolean
>> user_function (SpiceMainChannel *main,
>>                guint             selection,
>>                gpointer          types,
>>                guint             ntypes,
>>                gpointer          user_data)
>>
>>
> types is actually guint32*, but that's not the problem here.
>

Okay, I'll update that.


>
>
>> void
>> user_function (SpiceMainChannel *main,
>>                guint             selection,
>>                gpointer          user_data)
>>
>> I've implemented the callbacks with those arguments, as follows:
>>
>> void guac_spice_clipboard_selection_grab_handler(SpiceMainChannel channe=
l,
>>         guint selection, gpointer types, guint ntypes, guac_client*
>> client)
>>
>> void guac_spice_clipboard_selection_release_handler(SpiceMainChannel
>> channel,
>>         guint selection, guac_client* client)
>>
>
> It looks correct. Can you point to your code connecting the signals with
> the handlers?
>

Sure - source code is here:
https://github.com/necouchman/guacamole-server/tree/working/spice-basic

Here's the section in the src/protocol/spice/client.c file that registers
the callbacks:

        /* Register clipboard handlers. */
        g_signal_connect(channel, SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION,
                G_CALLBACK(guac_spice_clipboard_selection_handler), client)=
;
        g_signal_connect(channel,
SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION_GRAB,
                G_CALLBACK(guac_spice_clipboard_selection_grab_handler),
client);
        g_signal_connect(channel,
SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION_RELEASE,
                G_CALLBACK(guac_spice_clipboard_selection_release_handler),
client);
        g_signal_connect(channel,
SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION_REQUEST,
                G_CALLBACK(guac_spice_clipboard_selection_request_handler),
client);

link to the full function is here:
https://github.com/necouchman/guacamole-server/blob/5e073802a0656e65b1bc8e7=
e6051831bea0d9508/src/protocols/spice/client.c#L236-L375


>
>
>>
>> and registered them appropriately. However, if I use them as implemented
>> above, when the callbacks are triggered, the application segfaults when =
I
>> try to access the "guac_client* client" data structure. I used GDB to tr=
y
>> to help track this down, and I noticed that the value of "client" was 0x=
1,
>> which looks less like a pointer to a memory location and more like the
>> number 1.
>>
>> So, I decided to add another argument to the callback functions, just
>> before the client argument:
>>
>> void guac_spice_clipboard_selection_grab_handler(SpiceMainChannel channe=
l,
>>         guint selection, gpointer types, guint ntypes, guint extra,
>> guac_client* client)
>>
>> void guac_spice_clipboard_selection_release_handler(SpiceMainChannel
>> channel,
>>         guint selection, guint extra, guac_client* client)
>>
>> Strangely, this works - the client data structure can be referenced,
>> there are no segfaults (yet), etc. So, I decided to print the values tha=
t
>> are being passed for all of these parameters, and I get the following:
>>
>> guacd[100252]: DEBUG: Notifying client of clipboard grab in the guest.
>> guacd[100252]: DEBUG: Arg: channel: 0x00000000
>> guacd[100252]: DEBUG: Arg: selection: 1275303536
>> guacd[100252]: DEBUG: Arg: types: 0x00000001
>> guacd[100252]: DEBUG: Arg: ntypes: 1276022924
>> guacd[100252]: DEBUG: Arg: extra: 1
>>
>>
> Weird
>
>
>> I printed them in the format I thought they should be in based on what
>> the arguments are supposed to be - I probably should have just done all
>> hex. But, it seems like maybe the "extra" parameter being passed is in
>> front of the channel, since the channel is showing up as all zeros?
>>
>> I was trying to find the code where the callbacks are actually called -
>> I'm guessing, since this is clipboard integration, it'll be in the vdage=
nt
>> code somewhere - but I was having trouble tracking that down.
>>
>>
> The callbacks are not directly called, since those a GObject signals. The
> main channel will call g_signal_emit().
>
>
Okay.


>
>
>> If anyone has any ideas, I'd appreciate the insight into this - I'm
>> puzzled by this apparent mismatch in the number of arguments. Also, if i=
t
>> matters, I'm running CentOS 8 Stream, using Xspice to provide a test SPI=
CE
>> server, and running spice-vdagentd/spice-vdagent within my X session. Ye=
s,
>> I know Xspice is unmaintained, but I just needed something simple and th=
at
>> I didn't have to spend a bunch of time building in order to give me a sp=
ice
>> server to point at, and, so far, this has been pretty reliable. Also, at
>> its core, it appears to use the same spice-qxl X driver that x11spice us=
es,
>> just with a simple Python wrapper script for generating an X config file
>> and starting the X server/display. So, I think it's still pretty "safe" =
for
>> attempting to develop this Guacamole integration - if for some reason yo=
u
>> believe me to be wrong about that, please let me know.
>>
>
> Your testing environment shouldn't be a problem, it's really your
> client-side code integration with spice-glib that looks broken.
>
>
That's what I was thinking, and maybe I'm just messing up something simple!

Thanks,
Nick

--0000000000001a621205e1e59ee3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Jun 20, 2022 at 2:46 PM Marc-Andr=
=C3=A9 Lureau &lt;<a href=3D"mailto:marcandre.lureau@gmail.com">marcandre.l=
ureau@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"=
>Hi<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, Jun 20, 2022 at 6:09 PM Nick Couchman &lt;<a href=3D"mailto:=
vnick@apache.org" target=3D"_blank">vnick@apache.org</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello,=
 everyone,<div>I&#39;ve posted here, before, with some questions during my =
journey of trying to add support for the SPICE protocol to the Guacamole pr=
oject. The good news is that I&#39;ve actually made measurable progress in =
the implementation - I can now connect to a SPICE server, and the basics wo=
rk (mouse and keyboard - mostly anyway), so I&#39;m moving on to the extra =
stuff - clipboard, audio, file transfer, etc.</div><div><br></div><div>In w=
orking on the clipboard integration, I&#39;m currently running into an issu=
e with a couple of the callback=C2=A0functions, specifically the clipboard =
grab/release functions, where the number of arguments seems to be mismatche=
d. According to the documentation, these callbacks should be called with th=
e following arguments:</div><div><br></div><div>gboolean<br>user_function (=
SpiceMainChannel *main,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0guint =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 selection,<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gpointer =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0types,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0guint =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ntypes,<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gpointer =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0user_data)<br></div><div><br></div></div></blockquote><div=
><br></div><div>types is actually guint32*, but that&#39;s not the problem =
here.</div></div></div></blockquote><div><br></div><div>Okay, I&#39;ll upda=
te that.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div>=C2=A0<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div></div><=
div>void<br>user_function (SpiceMainChannel *main,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0guint =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 selection,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0gpointer =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0user_data)<br></div><div><br>=
</div><div>I&#39;ve implemented the callbacks with those arguments, as foll=
ows:<br><br>void guac_spice_clipboard_selection_grab_handler(SpiceMainChann=
el channel,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 guint selection, gpointer types,=
 guint ntypes, guac_client* client)<br></div><div><br></div><div>void guac_=
spice_clipboard_selection_release_handler(SpiceMainChannel channel,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 guint selection, guac_client* client)<br></div></d=
iv></blockquote><div><br></div><div>It looks correct. Can you point to your=
 code connecting the signals with the handlers?</div></div></div></blockquo=
te><div><br></div><div>Sure - source code is here:=C2=A0<a href=3D"https://=
github.com/necouchman/guacamole-server/tree/working/spice-basic">https://gi=
thub.com/necouchman/guacamole-server/tree/working/spice-basic</a></div><div=
><br></div><div>Here&#39;s the section in the src/protocol/spice/client.c f=
ile that registers the callbacks:</div><div><br></div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 /* Register clipboard handlers. */<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 g_signal_connect(channel, SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 G_CALLBACK(guac_spi=
ce_clipboard_selection_handler), client);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 g_=
signal_connect(channel, SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION_GRAB,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 G_CALLBACK(guac_spice_=
clipboard_selection_grab_handler), client);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
g_signal_connect(channel, SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION_RELEASE,<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 G_CALLBACK(guac_sp=
ice_clipboard_selection_release_handler), client);<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 g_signal_connect(channel, SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION_REQU=
EST,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 G_CALLBACK(=
guac_spice_clipboard_selection_request_handler), client);<br></div><div><br=
></div><div>link to the full function is here:<br><a href=3D"https://github=
.com/necouchman/guacamole-server/blob/5e073802a0656e65b1bc8e7e6051831bea0d9=
508/src/protocols/spice/client.c#L236-L375">https://github.com/necouchman/g=
uacamole-server/blob/5e073802a0656e65b1bc8e7e6051831bea0d9508/src/protocols=
/spice/client.c#L236-L375</a><br></div><div>=C2=A0<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quo=
te"><div>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div></div><div><br></div><div>and registered them appropr=
iately. However, if I use them as implemented above, when the callbacks are=
 triggered, the application segfaults when I try to access the &quot;guac_c=
lient* client&quot; data structure. I used GDB to try to help track this do=
wn, and I noticed that the value of &quot;client&quot; was 0x1, which looks=
 less like a pointer to a memory location and more like the number 1.</div>=
<div><br></div><div>So, I decided to add another argument to the callback f=
unctions, just before the client argument:</div><div><br></div><div>void gu=
ac_spice_clipboard_selection_grab_handler(SpiceMainChannel channel,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 guint selection, gpointer types, guint ntypes, gui=
nt extra, guac_client* client)<br></div><div><br></div><div>void guac_spice=
_clipboard_selection_release_handler(SpiceMainChannel channel,<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 guint selection, guint extra, guac_client* client)<br>=
</div><div><br></div><div>Strangely, this works - the client data structure=
 can be referenced, there are no segfaults (yet), etc. So, I decided to pri=
nt the values that are being passed for all of these parameters, and I get =
the following:</div><div><br></div><div>guacd[100252]: DEBUG:	Notifying cli=
ent of clipboard grab in the guest.<br>guacd[100252]: DEBUG:	Arg: channel: =
0x00000000<br>guacd[100252]: DEBUG:	Arg: selection: 1275303536<br>guacd[100=
252]: DEBUG:	Arg: types: 0x00000001<br>guacd[100252]: DEBUG:	Arg: ntypes: 1=
276022924<br>guacd[100252]: DEBUG:	Arg: extra: 1<br></div><div><br></div></=
div></blockquote><div><br></div><div>Weird</div><div>=C2=A0<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div></div><di=
v>I printed them in the format I thought they should be in based on what th=
e arguments are supposed to be - I probably should have just done all hex. =
But, it seems like maybe the &quot;extra&quot; parameter being passed is in=
 front of the channel, since the channel is showing up as all zeros?</div><=
div><br></div><div>I was trying to find the code where the callbacks are ac=
tually called - I&#39;m guessing, since this is clipboard integration, it&#=
39;ll be in the vdagent code somewhere - but I was having trouble tracking =
that down.</div><div><br></div></div></blockquote><div><br></div><div>The c=
allbacks are not directly called, since those a GObject signals. The main c=
hannel will call g_signal_emit().</div><div><br></div></div></div></blockqu=
ote><div><br></div><div>Okay.</div><div>=C2=A0</div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div=
></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div></div><div>If anyone has any ideas, I&#39;d appreciate=
 the insight into this - I&#39;m puzzled by this apparent mismatch in the n=
umber of arguments. Also, if it matters, I&#39;m running CentOS 8 Stream, u=
sing Xspice to provide a test SPICE server, and running spice-vdagentd/spic=
e-vdagent within my X session. Yes, I know Xspice is unmaintained, but I ju=
st needed something simple and that I didn&#39;t have to spend a bunch of t=
ime building in order to give me a spice server to point at, and, so far, t=
his has been pretty reliable. Also, at its core, it appears to use the same=
 spice-qxl X driver that x11spice=C2=A0uses, just with a simple Python wrap=
per script for generating an X config file and starting the X server/displa=
y. So, I think it&#39;s still pretty &quot;safe&quot; for attempting to dev=
elop this Guacamole integration - if for some reason you believe me to be w=
rong about that, please let me know.</div></div></blockquote><div><br></div=
><div>Your testing environment shouldn&#39;t be a problem, it&#39;s really =
your client-side code integration with spice-glib that looks broken.<br></d=
iv></div><br></div></blockquote><div><br></div><div>That&#39;s what I was t=
hinking, and maybe I&#39;m just messing up something simple!</div><div><br>=
</div><div>Thanks,</div><div>Nick</div></div></div>

--0000000000001a621205e1e59ee3--
