Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C13B115BCB
	for <lists+spice-devel@lfdr.de>; Sat,  7 Dec 2019 11:15:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 041576E054;
	Sat,  7 Dec 2019 10:15:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D3E46E054
 for <spice-devel@lists.freedesktop.org>; Sat,  7 Dec 2019 10:14:58 +0000 (UTC)
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-101-0gSthgiKNSmzZOUH_7XpnQ-1; Sat, 07 Dec 2019 05:14:50 -0500
Received: by mail-lf1-f72.google.com with SMTP id f22so837128lfh.4
 for <spice-devel@lists.freedesktop.org>; Sat, 07 Dec 2019 02:14:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GEdNXyVYcwyUSdUfEEI2JW2leOjE6F1pBRM2iH6Qglw=;
 b=GXqUfJow9qvwBZyML+VXLJMWEK0lA2RCZQzhywLm9aYgg6pocMoHGzA68sAC6gJ2uF
 urA1V3Icpz2QrEXXC+pnO/vkyc/nOR3Xwk3yagLiiRbKFmOEDwWc7FQhVyWo5Gqh66P8
 khCn8YgSmh37BdlzZxCMSRXhaGKPJu1QXW4DazJBnfbOTnuDcfdUtu+bZDTYvatRNcIT
 C06gaNuGCOjMqgjxYJOzYJIO8pin77u1ZgVLlW0NH68SGEUAewSm0ESo4dvUrUUD1Bq3
 FchjkZ/qQWQe9c+oIO0eIoN2nCGEE4L6EPab1KzzeJ+y4w4DdBe56Nf36zA3lNxEo+1e
 s62g==
X-Gm-Message-State: APjAAAWtB9HchwIMlTzwKpPTEh61UYisNN425WK0Pbh9/k+151K04Llt
 JqBT3zAYznrRX7Xffsx5PRWm4qSAKypd8zIOi3iRmC4AtOLeoxt4Rie5D6shAXG6COJjEVM5CqB
 lO+RMHyDhDnFYZP2FUkuS54lgjBlLRh4BkXKvOrAqNzx8RH8=
X-Received: by 2002:a19:a408:: with SMTP id q8mr1411227lfc.174.1575713689107; 
 Sat, 07 Dec 2019 02:14:49 -0800 (PST)
X-Google-Smtp-Source: APXvYqxBeMVR0rZ8kreHsR0CzYGhut0QQQSyKHfcUApUGlqXx8H7u0FKXksiOQOBnd3Gen65Nb1xf63kXiAlugXEbT4=
X-Received: by 2002:a19:a408:: with SMTP id q8mr1411224lfc.174.1575713688919; 
 Sat, 07 Dec 2019 02:14:48 -0800 (PST)
MIME-Version: 1.0
References: <20191205174915.24546-1-anezhins@redhat.com>
 <20191205174915.24546-3-anezhins@redhat.com>
 <1860140170.14473019.1575626680942.JavaMail.zimbra@redhat.com>
In-Reply-To: <1860140170.14473019.1575626680942.JavaMail.zimbra@redhat.com>
From: Alexander Nezhinsky <anezhins@redhat.com>
Date: Sat, 7 Dec 2019 12:20:23 +0200
Message-ID: <CA+H+uew4aWet5WbJXEJ8p=A46r3nUQ1oKN+KanJ9BgAv12FCHQ@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-MC-Unique: 0gSthgiKNSmzZOUH_7XpnQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575713697;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=9QlGAxCqobpIh8KGQAX7ZjHrWzvols4J+3mZVHCvGuQ=;
 b=HkUNaiWRwh/B7TgHksdPhWMdvKd1tkHQjt+x8rT5lvUUaVlo0BGkDL8apOgUAW9/SNNrK4
 SSqOxIvjaG6un7ImqYM1v+xQKxBZ7DH+gSQIkl7273bbjVdttQOpTW7HgzilM8K47M2pkA
 JPm1woAW/LdswvOVA9WgZG1KU3PjLnE=
Subject: Re: [Spice-devel] [PATCH 2/9] add spice_usb_device_manager shared
 CD related api functions
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
Cc: Yan Vugenfirer <yan@daynix.com>, spice-devel@lists.freedesktop.org,
 alexander@daynix.com
Content-Type: multipart/mixed; boundary="===============1049567706=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1049567706==
Content-Type: multipart/alternative; boundary="000000000000b23aca05991a6e3b"

--000000000000b23aca05991a6e3b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 6, 2019 at 12:04 PM Frediano Ziglio <fziglio@redhat.com> wrote:

>
> > +gboolean
> > +spice_usb_device_manager_create_shared_cd_device(
> > +                                         SpiceUsbDeviceManager *self,
> > +                                         gchar
>  *filename,
> > +                                         GError               **err)
>
> style, see
> https://www.spice-space.org/spice-project-coding-style-and-coding-convent=
ions.html
> ,
> here in a lot of declarations
>
Do you mean argument alignment? Sure, to be fixed.


> Also for consistency in the other file "manager" is used, not "self".
>
There is already no consistency. Some functions have been using 'self',
some - 'manager'.
I suggest leaving it as is and producing a separate patch dedicated to this
style issue so that we don't mix CD stuff with the global style fixes.


> It's weird that the create does not return the device so you cannot
> easily use spice_usb_device_manager_remove_shared_cd_device to remove it.
>
Again, Yuri addressed this issue already in his mail.
It is a kind of design issue, as this is the way things are done right now.
I guess that it was implemented this way due to the asynchronous nature of
the connecting process.
Anyway, it's a question of the flow management more than of a pure API
definition.
Of course, I can imagine other types of design, but if necessary at all,
such change should be done
across the board.

> +    bdev =3D spice_usb_device_manager_device_to_bdev(self, device);
>
> see below
>
> > +#ifdef USE_USBREDIR
> > +    SpiceUsbBackendDevice *bdev;
> > +    gboolean is_cd;
> > +
> > +    bdev =3D spice_usb_device_manager_device_to_bdev(self, device);
>
> Note that SpiceUsbBackendDevice is defined as
>
>     typedef struct _SpiceUsbDevice SpiceUsbBackendDevice;
>
> no need to call this function.
>
> I agree with Yuri. This is the current practice in all API functions.
We can rework it everywhere, or leave it as is.


> > +    is_cd =3D (spice_usb_backend_device_get_libdev(bdev) =3D=3D NULL) =
? TRUE :
> > FALSE;
>
> just
>
>     is_cd =3D (spice_usb_backend_device_get_libdev(bdev) =3D=3D NULL);
>
OK


> Also the name of the function is wrong, you are not checking if the devic=
e
> is a shared cd but if is a emulated device.
>
> Well, I don't think the name spice_usb_device_manager_is_device_shared_cd
is wrong.
It is an API function exposed to the external modules, and, just as the
name suggests,
it promises to return True iff the device is a shared CD.
The implementation is based on the (currently true) fact, that only CDs
have libdev=3D=3DNULL.
It may seem awkward, but the alternative is to maintain an "is_cd" flag.
It is possible of course, but I opted for a minimal amount of changes in
structures
and preferred to use existing functions even if their semantics may seem
irrelevant :)


> > @@ -1499,6 +1587,7 @@ gboolean spice_usb_device_is_isochronous(const
> > SpiceUsbDevice *info)
> >      return spice_usb_backend_device_isoch((SpiceUsbBackendDevice*)
> info);
> >  }
> >
> > +
>
> spurious hunk, remove
>
Of course!

--000000000000b23aca05991a6e3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 6, 2019 at 12:04 PM Frediano =
Ziglio &lt;<a href=3D"mailto:fziglio@redhat.com">fziglio@redhat.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>&gt;=
 +gboolean<br>
&gt; +spice_usb_device_manager_create_shared_cd_device(<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0SpiceUsbDeviceManager *self,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0gchar=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*file=
name,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0GError=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0**err)<br>
<br>
style, see <a href=3D"https://www.spice-space.org/spice-project-coding-styl=
e-and-coding-conventions.html" rel=3D"noreferrer" target=3D"_blank">https:/=
/www.spice-space.org/spice-project-coding-style-and-coding-conventions.html=
</a>,<br>
here in a lot of declarations<br></blockquote><div>Do you mean argument ali=
gnment? Sure, to be fixed.=C2=A0</div><div>=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">
Also for consistency in the other file &quot;manager&quot; is used, not &qu=
ot;self&quot;.<br></blockquote><div>There is already no consistency. Some f=
unctions have been using &#39;self&#39;, some - &#39;manager&#39;.</div><di=
v>I suggest leaving it as is and producing a separate patch dedicated to th=
is style issue so that we=C2=A0don&#39;t mix CD stuff with the global style=
 fixes.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">
<br>
It&#39;s weird that the create does not return the device so you cannot<br>
easily use spice_usb_device_manager_remove_shared_cd_device to remove it.<b=
r></blockquote><div>Again, Yuri addressed this issue already in his mail.</=
div><div>It is a kind of design issue, as this is the way things are done r=
ight now.</div><div>I guess that it was implemented this way due to the asy=
nchronous nature of the connecting process.</div><div>Anyway, it&#39;s a qu=
estion=C2=A0of the flow management more than of a pure API definition.</div=
><div>Of course, I can imagine=C2=A0other types of design, but if necessary=
 at all, such change should be done=C2=A0</div><div>across the board.</div>=
<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt; +=C2=
=A0 =C2=A0 bdev =3D spice_usb_device_manager_device_to_bdev(self, device);<=
br>
<br>
see below<br>
<br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt; +#i=
fdef USE_USBREDIR<br>
&gt; +=C2=A0 =C2=A0 SpiceUsbBackendDevice *bdev;<br>
&gt; +=C2=A0 =C2=A0 gboolean is_cd;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 bdev =3D spice_usb_device_manager_device_to_bdev(self, =
device);<br>
<br>
Note that SpiceUsbBackendDevice is defined as<br>
<br>
=C2=A0 =C2=A0 typedef struct _SpiceUsbDevice SpiceUsbBackendDevice;<br>
<br>
no need to call this function.<br>
<br></blockquote><div>I agree with Yuri. This is the current practice in al=
l API functions.</div><div>We can rework it everywhere, or leave it as is.<=
/div><div>=C2=A0<br class=3D"gmail-Apple-interchange-newline"></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
&gt; +=C2=A0 =C2=A0 is_cd =3D (spice_usb_backend_device_get_libdev(bdev) =
=3D=3D NULL) ? TRUE :<br>
&gt; FALSE;<br>
<br>
just<br>
<br>
=C2=A0 =C2=A0 is_cd =3D (spice_usb_backend_device_get_libdev(bdev) =3D=3D N=
ULL);<br></blockquote><div>OK=C2=A0</div><div><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<br>
Also the name of the function is wrong, you are not checking if the device<=
br>
is a shared cd but if is a emulated device.<br>
<br></blockquote><div>Well, I don&#39;t think the name=C2=A0spice_usb_devic=
e_manager_is_device_shared_cd is wrong.=C2=A0</div><div>It is an API functi=
on exposed to the external modules, and, just as the name suggests,=C2=A0</=
div><div>it promises to return True iff=C2=A0the device is a shared CD.</di=
v><div>The implementation is based on the (currently true) fact, that only =
CDs have libdev=3D=3DNULL.</div><div>It may seem awkward, but the alternati=
ve is to maintain an &quot;is_cd&quot; flag.</div><div>It is possible of co=
urse, but I opted for a minimal amount of changes in structures</div><div>a=
nd preferred to use existing functions even if their semantics may seem irr=
elevant :)=C2=A0</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">&gt; @@ -1499,6 +1587,7 @@ gboolean spice_usb_device_is_isoch=
ronous(const<br>
&gt; SpiceUsbDevice *info)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 return spice_usb_backend_device_isoch((SpiceUsbBac=
kendDevice*) info);<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt; +<br>
<br>
spurious hunk, remove<br></blockquote><div>Of course!</div><div><br></div><=
/div></div>

--000000000000b23aca05991a6e3b--


--===============1049567706==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1049567706==--

