Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15852115C0F
	for <lists+spice-devel@lfdr.de>; Sat,  7 Dec 2019 12:42:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08AC16E108;
	Sat,  7 Dec 2019 11:42:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B0EF6E108
 for <spice-devel@lists.freedesktop.org>; Sat,  7 Dec 2019 11:42:02 +0000 (UTC)
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-159-6CF1-h3wMUeytDC4t19mjw-1; Sat, 07 Dec 2019 06:41:55 -0500
Received: by mail-lf1-f72.google.com with SMTP id q16so1741096lfa.13
 for <spice-devel@lists.freedesktop.org>; Sat, 07 Dec 2019 03:41:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ahtG+ecLJ4rC/WppvvxBMb3AmGyysUUZ9QvL2EENqRs=;
 b=MFtW71Df8vysbgZ2m/dy0DAqFrfINiSMXam3hlV5mgPe/pAnbxM+YPIzL1WAJsDcit
 sOwuvDkZbp0Wu4PlNJ8BtMeVDFV1FTzfPPGlayQgUDHsTLiXkr/Dt4LRZ5i3QnQU08hv
 FY0vMAiNXEHQZV1ks4hKz5w8zbRYlGz+u+phM8vx9eVzMAY4xjpC525QmtOWQnEv2gum
 qaBKqR6t6BRauoyebS7wUuM0fwavVKAb8it5vwMVaIF7xFfeX7FZ9+DrpUQAc+uhjcb/
 j3vfxSdaEO9VpqFAISjTjCXGOahhqc6RYZjkI6DSdEiVhQjVhtxmD+WvPVasYDt6I34K
 7gfg==
X-Gm-Message-State: APjAAAWvg52JjXZQjxFzGIHHF8dopcVI+d2IiXLoFT+zMXHuyjBVuiqW
 5+9KUJ8ToiJXFep60gDR1Laz8qFm0FRoXrxOtaXQvCIu1/E9O03Zp/jGFF9H1gUEOTsNNLGFxLK
 EtXCDR0LDMO1wYpxpct+CwtHWZ7oav3WFgcd+C62OCqrJslU=
X-Received: by 2002:a19:4351:: with SMTP id m17mr11062093lfj.61.1575718913700; 
 Sat, 07 Dec 2019 03:41:53 -0800 (PST)
X-Google-Smtp-Source: APXvYqxs9uLXVbmyIFDNsSXunBbeZ3aKkoh52WPBH3a9uN6Fzr5zkpyJPYmJiexsgaggxpZF152467AZBYfV5dnqWeY=
X-Received: by 2002:a19:4351:: with SMTP id m17mr11062085lfj.61.1575718913550; 
 Sat, 07 Dec 2019 03:41:53 -0800 (PST)
MIME-Version: 1.0
References: <20191205174915.24546-1-anezhins@redhat.com>
 <20191205174915.24546-9-anezhins@redhat.com>
 <235344538.14474760.1575628252178.JavaMail.zimbra@redhat.com>
 <CAOEp5OcLfwyUMHhCn6HQRA9GV7Czz=QobVUkC4tsAbVpPjSrdg@mail.gmail.com>
In-Reply-To: <CAOEp5OcLfwyUMHhCn6HQRA9GV7Czz=QobVUkC4tsAbVpPjSrdg@mail.gmail.com>
From: Alexander Nezhinsky <anezhins@redhat.com>
Date: Sat, 7 Dec 2019 13:47:28 +0200
Message-ID: <CA+H+ueym1Pf6p_8eEzc1=2o=GfoRb73Q9ER+ikccw6AoXXfUNQ@mail.gmail.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
X-MC-Unique: 6CF1-h3wMUeytDC4t19mjw-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575718921;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=XS636o2q9hOXFM6Ty0cVgcOCrFSoqQUgvr8e23sIp60=;
 b=Y4Ig57Tlc8Lt1jBo0w9VUwpJb9OclyaLnK6sMKh6egsddw577vpOzt1A6kCG0QjvXPHrWD
 47kZF/zam3qu4T3sMd92SoHpoyr2F75egEotYQil8tlbk0AN0xRmot5wieDsqxuZcv7rTm
 YFtYI9yKdgqloH6lPg5QBr6HeC0WDXU=
Subject: Re: [Spice-devel] [PATCH 8/9] auto-connect shared CD devices added
 using command line
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>,
 Alexander Nezhinsky <alexander@daynix.com>
Content-Type: multipart/mixed; boundary="===============2015266613=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============2015266613==
Content-Type: multipart/alternative; boundary="0000000000001bcd1505991ba6d8"

--0000000000001bcd1505991ba6d8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 6, 2019 at 12:30 PM Frediano Ziglio <fziglio@redhat.com> wrote:
>
> > > By default command line devices are added using 'redirect-on-connect'
> filter,
> > > which do not fit the shard CD connecting requirements.
>
> > Can you describe the requirements here?
>


> On Fri, Dec 6, 2019 at 1:57 PM Yuri Benditovich <
> yuri.benditovich@daynix.com> wrote:
> My 2 cents:
> I think the goal here is to make something that the user _expects_.
> When he creates shared CD via command-line it does not expect it to
> behave exactly as already present disk-on-key - because for
> disk-on-key there are 2 posi sibilities: use it locally or redirect it
> immediately on connect to VM.
> With shared CD there is no option to use it locally so we try to
> redirect it automatically if this does not violate existing rules.
>

Sure, I will add a few lines on requirements to the commit message.
In general, I agree with Yuri's comments above,  with some minor additions.


> > This patch looks like an workaround to me.
>
> Emulated device created via command line is indeed a special kind of thin=
g.
> From one point of view it is a device that "exists" before connection.
> From another point of view it is a device that was created especially
> to redirect it.
> Which solution you'd suggest?
>

I don't see any simple and elegant solution which suits the scope of this
patch set.
Please propose, I will be happy to implement it, in place of this patch, or
afterward as an improvement.


> > > diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c
>


> > > @@ -901,10 +899,23 @@ static void
> > > spice_usb_device_manager_check_redir_on_connect(
> > >              continue;
> > >
> > >          bdev =3D spice_usb_device_manager_device_to_bdev(self, devic=
e);
> > > -        if (spice_usb_backend_device_check_filter(
> > > -                            bdev,
> > > -                            priv->redirect_on_connect_rules,
> > > -                            priv->redirect_on_connect_rules_count) =
=3D=3D
> 0) {
> > > +        is_cd =3D spice_usb_backend_device_get_libdev(bdev) =3D=3D N=
ULL;
> >
> > This is checking if emulated, not if is a CD.
>

I am changing this to call spice_usb_device_manager_is_device_shared_cd(),
which logically correct
while its internal implementation may be subject to change, as discussed in
other mail.


> >
> > > +
> > > +        if (priv->redirect_on_connect) {
> > > +            shall_redirect =3D !spice_usb_backend_device_check_filte=
r(
> > > +                                bdev,
> > > +                                priv->redirect_on_connect_rules,
> > > +
> priv->redirect_on_connect_rules_count);
> >
> > Why not setting some "rules" and "rules_count" variable instead
> > and call spice_usb_backend_device_check_filter once?
> >
>
Which problem this is supposed to solve?

--0000000000001bcd1505991ba6d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">On Fri, Dec 6, 2019 at 12=
:30 PM Frediano Ziglio &lt;<a href=3D"mailto:fziglio@redhat.com" target=3D"=
_blank">fziglio@redhat.com</a>&gt; wrote:<br><br>
&gt; &gt; By default command line devices are added using &#39;redirect-on-=
connect&#39; filter,<br>
&gt; &gt; which do not fit the shard CD connecting requirements.<br><br>
&gt; Can you describe the requirements here?<br></blockquote><div>=C2=A0</d=
iv><div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"></blockquote></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">On Fri, Dec 6, 2019 at =
1:57 PM Yuri Benditovich &lt;<a href=3D"mailto:yuri.benditovich@daynix.com"=
>yuri.benditovich@daynix.com</a>&gt; wrote:<br>
My 2 cents:<br>
I think the goal here is to make something that the user _expects_.<br>
When he creates shared CD via command-line it does not expect it to<br>
behave exactly as already present disk-on-key - because for<br>
disk-on-key there are 2 posi sibilities: use it locally or redirect it<br>
immediately on connect to VM.<br>
With shared CD there is no option to use it locally so we try to<br>
redirect it automatically if this does not violate existing rules.<br></blo=
ckquote><div>=C2=A0</div><div><div>Sure, I will add a few=C2=A0lines on req=
uirements to the commit message.</div><div>In general, I agree with Yuri&#3=
9;s comments above,=C2=A0 with some minor additions.</div></div><div><br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
&gt; This patch looks like an workaround to me.<br>
<br>
Emulated device created via command line is indeed a special kind of thing.=
<br>
From one point of view it is a device that &quot;exists&quot; before connec=
tion.<br>
From another point of view it is a device that was created especially<br>
to redirect it.<br>
Which solution you&#39;d suggest?<br></blockquote><div>=C2=A0</div><div>I d=
on&#39;t see any simple and elegant solution which suits the scope of this =
patch set.=C2=A0</div><div>Please propose, I will be happy to implement it,=
 in place of this patch, or afterward as an improvement.</div><div>=C2=A0<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
&gt; &gt; diff --git a/src/usb-device-manager.c b/src/usb-device-manager.c<=
br></blockquote><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">&gt; &gt; @@ -901,10 +899,23 @@ static void<br>
&gt; &gt; spice_usb_device_manager_check_redir_on_connect(<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 continue;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bdev =3D spice_usb_device_manag=
er_device_to_bdev(self, device);<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (spice_usb_backend_device_check_f=
ilter(<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bdev,<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;redirect_on_connect_rules,<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;redirect_on_connect_rules_count=
) =3D=3D 0) {<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 is_cd =3D spice_usb_backend_device_g=
et_libdev(bdev) =3D=3D NULL;<br>
&gt;<br>
&gt; This is checking if emulated, not if is a CD.<br></blockquote><div>=C2=
=A0</div><div>I am changing this to call=C2=A0spice_usb_device_manager_is_d=
evice_shared_cd(), which logically correct</div><div>while its internal imp=
lementation may be subject to change,=C2=A0as discussed in other mail.</div=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
&gt;<br>
&gt; &gt; +<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (priv-&gt;redirect_on_connect) {<=
br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 shall_redirect =3D !sp=
ice_usb_backend_device_check_filter(<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bdev,<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;redirect_on_conne=
ct_rules,<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;redirect_on_conne=
ct_rules_count);<br>
&gt;<br>
&gt; Why not setting some &quot;rules&quot; and &quot;rules_count&quot; var=
iable instead<br>
&gt; and call spice_usb_backend_device_check_filter once?<br>
&gt;<br></blockquote><div>Which problem this is supposed to solve?</div><di=
v>=C2=A0</div></div></div>

--0000000000001bcd1505991ba6d8--


--===============2015266613==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2015266613==--

