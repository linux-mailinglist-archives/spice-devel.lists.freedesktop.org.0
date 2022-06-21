Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B92C35531C0
	for <lists+spice-devel@lfdr.de>; Tue, 21 Jun 2022 14:13:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 224DF10E54A;
	Tue, 21 Jun 2022 12:13:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 961F910E3BE
 for <spice-devel@lists.freedesktop.org>; Tue, 21 Jun 2022 12:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655813310;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=UD4c0ESEX9JXKVd27SpoN4x+V1kxcteDO2UcU5Pg3pE=;
 b=ZuEQ6gii/au3ZeP6cHkvwuDhFseP51fkeTguiVrIbPvawLTLvThXj4UBPrBhN461KQFhXF
 Psu9NXeaoQjSKifJ9evh1Z8FeSZfbsS1vI9NQMKTUSdJlUuuO0iVThDDQN+oSpr8hu8tEF
 3+3DrK2Q7ikO/V5xqrlUci64fAx6bKo=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-294-R_gsZTjNNqCgllethAJIbQ-1; Tue, 21 Jun 2022 08:08:29 -0400
X-MC-Unique: R_gsZTjNNqCgllethAJIbQ-1
Received: by mail-lj1-f199.google.com with SMTP id
 a17-20020a2eb171000000b002556cda407aso1728669ljm.9
 for <spice-devel@lists.freedesktop.org>; Tue, 21 Jun 2022 05:08:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h1rlKHt1yaMmbtolJPx14ADwvjN+8elotSfaLkEqtJY=;
 b=ld8THt0kuozt3xOHFlEh7AMaepwptv+sCGt5tAnMrTXr9zjhoSA8/rR7NwDqINfSUe
 wRD/xtigGED7xXb1xp0PvUtGbKvQ/jwo5oJ1Hs61XdNlb7yB64uD4yHomSAOPV+G+jOM
 3z8G7Z7bv/pGAxUiWbhU6pJvPresoTIRa8Nkreq9k9x10FUbEB++FUP4tU+3WA/Gl9sK
 YyJam/7r2u9jaMSpvxnGRHzZY4HbUX4JeqTlyQ+yXcPSHDhFMVEqiECwXnydkPWqIrDt
 DMMjSsRuTwEdeJ7XN1RdblVkidfycsXs25UFkAlbXQgYWnA4syP3rhwx2bdQlPbkMyr9
 jQJQ==
X-Gm-Message-State: AJIora/CW4fTnaocS6WY2wwpdUVVbjNOfifsEjdKhWHExdQAWp+2+VzX
 d0tDSUOrHY8S9kIXV4JO1ph7o+a7c5Y0YKkY1B9uwZsE3NRFJ5i2Ria+ob5mR9biA0xjVyofjcn
 DkOGjQhb5oPenCRwrj7MBK1Awl77de0ERbhPABeTFgFtUwb8=
X-Received: by 2002:a05:6512:258a:b0:47d:bb62:910f with SMTP id
 bf10-20020a056512258a00b0047dbb62910fmr16022692lfb.447.1655813306306; 
 Tue, 21 Jun 2022 05:08:26 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1t3LtPTSmTlfDHWzitZB9Oe+qBIxGp0R9k6EE7yr2/ySNF/2mxWnvpPy2cHfJHGsN3iUm3lRGPx4c2db0aI2+c=
X-Received: by 2002:a05:6512:258a:b0:47d:bb62:910f with SMTP id
 bf10-20020a056512258a00b0047dbb62910fmr16022673lfb.447.1655813305933; Tue, 21
 Jun 2022 05:08:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAFjj602+NQwJF-QB6V=9ELfc9qgqBdvhSr5_VSAdy6-LZCoPbA@mail.gmail.com>
 <CAJ+F1CLCV3oMTnLf2dDX7uFH0QV481O2csHpdvofj8jo19RrEA@mail.gmail.com>
 <CAFjj601vkEYrPv1NwWduAqDyBpmgw8j6PnDsuJ+pADvECozcnw@mail.gmail.com>
In-Reply-To: <CAFjj601vkEYrPv1NwWduAqDyBpmgw8j6PnDsuJ+pADvECozcnw@mail.gmail.com>
From: Uri Lublin <ulublin@redhat.com>
Date: Tue, 21 Jun 2022 15:08:14 +0300
Message-ID: <CAAg9qJ2NqCamoVUTm8Mv=oO_EP9FtoTk4RUa-MO-kPuM9TjOYA@mail.gmail.com>
To: Nick Couchman <vnick@apache.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ulublin@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000ea44e205e1f4133b"
X-Mailman-Approved-At: Tue, 21 Jun 2022 12:13:34 +0000
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

--000000000000ea44e205e1f4133b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 20, 2022 at 10:00 PM Nick Couchman <vnick@apache.org> wrote:

> On Mon, Jun 20, 2022 at 2:46 PM Marc-Andr=C3=A9 Lureau <
> marcandre.lureau@gmail.com> wrote:
>
>> Hi
>>
>> On Mon, Jun 20, 2022 at 6:09 PM Nick Couchman <vnick@apache.org> wrote:
>>
>>> Hello, everyone,
>>> I've posted here, before, with some questions during my journey of
>>> trying to add support for the SPICE protocol to the Guacamole project. =
The
>>> good news is that I've actually made measurable progress in the
>>> implementation - I can now connect to a SPICE server, and the basics wo=
rk
>>> (mouse and keyboard - mostly anyway), so I'm moving on to the extra stu=
ff -
>>> clipboard, audio, file transfer, etc.
>>>
>>> In working on the clipboard integration, I'm currently running into an
>>> issue with a couple of the callback functions, specifically the clipboa=
rd
>>> grab/release functions, where the number of arguments seems to be
>>> mismatched. According to the documentation, these callbacks should be
>>> called with the following arguments:
>>>
>>> gboolean
>>> user_function (SpiceMainChannel *main,
>>>                guint             selection,
>>>                gpointer          types,
>>>                guint             ntypes,
>>>                gpointer          user_data)
>>>
>>>
>> types is actually guint32*, but that's not the problem here.
>>
>
> Okay, I'll update that.
>
>
>>
>>
>>> void
>>> user_function (SpiceMainChannel *main,
>>>                guint             selection,
>>>                gpointer          user_data)
>>>
>>> I've implemented the callbacks with those arguments, as follows:
>>>
>>> void guac_spice_clipboard_selection_grab_handler(SpiceMainChannel
>>> channel,
>>>         guint selection, gpointer types, guint ntypes, guac_client*
>>> client)
>>>
>>> void guac_spice_clipboard_selection_release_handler(SpiceMainChannel
>>> channel,
>>>         guint selection, guac_client* client)
>>>
>>
>> It looks correct. Can you point to your code connecting the signals with
>> the handlers?
>>
>
> Sure - source code is here:
> https://github.com/necouchman/guacamole-server/tree/working/spice-basic
>
> Here's the section in the src/protocol/spice/client.c file that registers
> the callbacks:
>
>         /* Register clipboard handlers. */
>         g_signal_connect(channel, SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION,
>                 G_CALLBACK(guac_spice_clipboard_selection_handler),
> client);
>         g_signal_connect(channel,
> SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION_GRAB,
>                 G_CALLBACK(guac_spice_clipboard_selection_grab_handler),
> client);
>         g_signal_connect(channel,
> SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION_RELEASE,
>
> G_CALLBACK(guac_spice_clipboard_selection_release_handler), client);
>         g_signal_connect(channel,
> SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTION_REQUEST,
>
> G_CALLBACK(guac_spice_clipboard_selection_request_handler), client);
>
> link to the full function is here:
>
> https://github.com/necouchman/guacamole-server/blob/5e073802a0656e65b1bc8=
e7e6051831bea0d9508/src/protocols/spice/client.c#L236-L375
>

Try changing the callbacks to accept a pointer, e.g.:
- void guac_spice_clipboard_selection_grab_handler(SpiceMainChannel channel=
,
+void guac_spice_clipboard_selection_grab_handler(SpiceMainChannel* channel=
,

 Regards,
    Uri.


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

>

--000000000000ea44e205e1f4133b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Jun 20, 2022 at 10:00 PM Nick Couchma=
n &lt;<a href=3D"mailto:vnick@apache.org">vnick@apache.org</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div dir=3D"ltr">On Mon, Jun 20, 2022 at 2:46 PM Marc-Andr=C3=A9 Lureau &lt=
;<a href=3D"mailto:marcandre.lureau@gmail.com" target=3D"_blank">marcandre.=
lureau@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr=
">Hi<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Mon, Jun 20, 2022 at 6:09 PM Nick Couchman &lt;<a href=3D"mailto=
:vnick@apache.org" target=3D"_blank">vnick@apache.org</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello=
, everyone,<div>I&#39;ve posted here, before, with some questions during my=
 journey of trying to add support for the SPICE protocol to the Guacamole p=
roject. The good news is that I&#39;ve actually made measurable progress in=
 the implementation - I can now connect to a SPICE server, and the basics w=
ork (mouse and keyboard - mostly anyway), so I&#39;m moving on to the extra=
 stuff - clipboard, audio, file transfer, etc.</div><div><br></div><div>In =
working on the clipboard integration, I&#39;m currently running into an iss=
ue with a couple of the callback=C2=A0functions, specifically the clipboard=
 grab/release functions, where the number of arguments seems to be mismatch=
ed. According to the documentation, these callbacks should be called with t=
he following arguments:</div><div><br></div><div>gboolean<br>user_function =
(SpiceMainChannel *main,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0guint =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 selection,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gpointer =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0types,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0guint =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ntypes,<br>=C2=A0=
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
github.com/necouchman/guacamole-server/tree/working/spice-basic" target=3D"=
_blank">https://github.com/necouchman/guacamole-server/tree/working/spice-b=
asic</a></div><div><br></div><div>Here&#39;s the section in the src/protoco=
l/spice/client.c file that registers the callbacks:</div><div><br></div><di=
v>=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Register clipboard handlers. */<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 g_signal_connect(channel, SPICE_SIGNAL_MAIN_CLIPBOARD_=
SELECTION,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 G_CAL=
LBACK(guac_spice_clipboard_selection_handler), client);<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 g_signal_connect(channel, SPICE_SIGNAL_MAIN_CLIPBOARD_SELECTI=
ON_GRAB,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 G_CALLB=
ACK(guac_spice_clipboard_selection_grab_handler), client);<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 g_signal_connect(channel, SPICE_SIGNAL_MAIN_CLIPBOARD_SELECT=
ION_RELEASE,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 G_C=
ALLBACK(guac_spice_clipboard_selection_release_handler), client);<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 g_signal_connect(channel, SPICE_SIGNAL_MAIN_CLIPBOARD=
_SELECTION_REQUEST,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 G_CALLBACK(guac_spice_clipboard_selection_request_handler), client);<br=
></div><div><br></div><div>link to the full function is here:<br><a href=3D=
"https://github.com/necouchman/guacamole-server/blob/5e073802a0656e65b1bc8e=
7e6051831bea0d9508/src/protocols/spice/client.c#L236-L375" target=3D"_blank=
">https://github.com/necouchman/guacamole-server/blob/5e073802a0656e65b1bc8=
e7e6051831bea0d9508/src/protocols/spice/client.c#L236-L375</a></div></div><=
/div></blockquote><div><br></div><div>Try changing the callbacks to accept =
a pointer, e.g.:</div><div><span class=3D"gmail-blob-code-inner gmail-blob-=
code-marker gmail-js-code-nav-pass"><span class=3D"gmail-pl-k">- void</span=
> <span class=3D"gmail-pl-en">guac_spice_clipboard_selection_grab_handler</=
span>(SpiceMainChannel channel,</span></div><div><span class=3D"gmail-blob-=
code-inner gmail-blob-code-marker gmail-js-code-nav-pass"><span class=3D"gm=
ail-blob-code-inner gmail-blob-code-marker gmail-js-code-nav-pass"><span cl=
ass=3D"gmail-pl-k">+void</span> <span class=3D"gmail-pl-en">guac_spice_clip=
board_selection_grab_handler</span>(SpiceMainChannel* channel,</span></span=
></div><div class=3D"gmail_quote"><br><div>=C2=A0Regards,</div><div>=C2=A0=
=C2=A0=C2=A0 Uri.</div><div><br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div>=C2=A0<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>=
<br></div><div>and registered them appropriately. However, if I use them as=
 implemented above, when the callbacks are triggered, the application segfa=
ults when I try to access the &quot;guac_client* client&quot; data structur=
e. I used GDB to try to help track this down, and I noticed that the value =
of &quot;client&quot; was 0x1, which looks less like a pointer to a memory =
location and more like the number 1.</div><div><br></div><div>So, I decided=
 to add another argument to the callback functions, just before the client =
argument:</div><div><br></div><div>void guac_spice_clipboard_selection_grab=
_handler(SpiceMainChannel channel,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 guint sel=
ection, gpointer types, guint ntypes, guint extra, guac_client* client)<br>=
</div><div><br></div><div>void guac_spice_clipboard_selection_release_handl=
er(SpiceMainChannel channel,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 guint selection=
, guint extra, guac_client* client)<br></div><div><br></div><div>Strangely,=
 this works - the client data structure can be referenced, there are no seg=
faults (yet), etc. So, I decided to print the values that are being passed =
for all of these parameters, and I get the following:</div><div><br></div><=
div>guacd[100252]: DEBUG:=09Notifying client of clipboard grab in the guest=
.<br>guacd[100252]: DEBUG:=09Arg: channel: 0x00000000<br>guacd[100252]: DEB=
UG:=09Arg: selection: 1275303536<br>guacd[100252]: DEBUG:=09Arg: types: 0x0=
0000001<br>guacd[100252]: DEBUG:=09Arg: ntypes: 1276022924<br>guacd[100252]=
: DEBUG:=09Arg: extra: 1<br></div><div><br></div></div></blockquote><div><b=
r></div><div>Weird</div><div>=C2=A0<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div>I printed them in the format I th=
ought they should be in based on what the arguments are supposed to be - I =
probably should have just done all hex. But, it seems like maybe the &quot;=
extra&quot; parameter being passed is in front of the channel, since the ch=
annel is showing up as all zeros?</div><div><br></div><div>I was trying to =
find the code where the callbacks are actually called - I&#39;m guessing, s=
ince this is clipboard integration, it&#39;ll be in the vdagent code somewh=
ere - but I was having trouble tracking that down.</div><div><br></div></di=
v></blockquote><div><br></div><div>The callbacks are not directly called, s=
ince those a GObject signals. The main channel will call g_signal_emit().</=
div><div><br></div></div></div></blockquote><div><br></div><div>Okay.</div>=
<div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"gmail_quote"><div>=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div>If anyone has any ideas, =
I&#39;d appreciate the insight into this - I&#39;m puzzled by this apparent=
 mismatch in the number of arguments. Also, if it matters, I&#39;m running =
CentOS 8 Stream, using Xspice to provide a test SPICE server, and running s=
pice-vdagentd/spice-vdagent within my X session. Yes, I know Xspice is unma=
intained, but I just needed something simple and that I didn&#39;t have to =
spend a bunch of time building in order to give me a spice server to point =
at, and, so far, this has been pretty reliable. Also, at its core, it appea=
rs to use the same spice-qxl X driver that x11spice=C2=A0uses, just with a =
simple Python wrapper script for generating an X config file and starting t=
he X server/display. So, I think it&#39;s still pretty &quot;safe&quot; for=
 attempting to develop this Guacamole integration - if for some reason you =
believe me to be wrong about that, please let me know.</div></div></blockqu=
ote><div><br></div><div>Your testing environment shouldn&#39;t be a problem=
, it&#39;s really your client-side code integration with spice-glib that lo=
oks broken.<br></div></div><br></div></blockquote><div><br></div><div>That&=
#39;s what I was thinking, and maybe I&#39;m just messing up something simp=
le!</div><div><br></div><div>Thanks,</div><div>Nick</div></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
</blockquote></div></div>

--000000000000ea44e205e1f4133b--

