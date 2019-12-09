Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11893117258
	for <lists+spice-devel@lfdr.de>; Mon,  9 Dec 2019 18:02:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A58E899B5;
	Mon,  9 Dec 2019 17:02:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40C80891AD
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Dec 2019 17:02:38 +0000 (UTC)
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-359-G2nHpTRjO2idFNpd5b5OkA-1; Mon, 09 Dec 2019 12:02:33 -0500
Received: by mail-lf1-f72.google.com with SMTP id x79so3039287lff.19
 for <spice-devel@lists.freedesktop.org>; Mon, 09 Dec 2019 09:02:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XBwJT1FoJe628jesdXhA9AndzbGJS168OnS8qUpmhyU=;
 b=B7N/bw0NAmnYfs12x4FpOHbTP/Ll6qI36IBhb86PNciVFNtMdH6Z2/IhYmJfDXMdFj
 l7gYGGpaBjZkOlLX1V377v21Qwc0DYngnRwa9k4fArn/aLLg98Vn6W9bZNUjUTuozI87
 CH8du4VN0ozJhOXpz97MN3PY5JsvtXsrXLLifiIA6dcqI2CBSdfjytpxWmiPHHjG1BZk
 dyZQe5J32B1INwLeBBRLGGbYE+cpdWVm4atAOqR+Ys3/gRyKN1Vr9O/4m2z3wFinpJEg
 HZ0zKAhopcK1O39un7ZeUqmDuzWNCgMjUACrJkgtKuOC5aVWs0sI007so2sr5L6MCuCQ
 zg0A==
X-Gm-Message-State: APjAAAWmcDQdUA1qVv28Csnuf+0rNkGboZCmS0z5uzl2bEm8OD+qP5wD
 J3Ij+URuceoniZpArNAfl5Z7S46eyqyqSVnNkM23vA3mP8q4Tt20OaUVbaSSzvCLWRBrir3HTit
 WvIsrD5wlWy89EPJognlr/JbHruzcX0f2H3G6UB19VzD2XIk=
X-Received: by 2002:a05:651c:1a2:: with SMTP id
 c2mr17483566ljn.121.1575910951347; 
 Mon, 09 Dec 2019 09:02:31 -0800 (PST)
X-Google-Smtp-Source: APXvYqw3niEZrmmNiWyBSqYHEekiOL/hQ6uABQqUhy2MewFqCOEATNns8ANy+EsB3euIAkBS7saWcrOBl0agKtjrV4c=
X-Received: by 2002:a05:651c:1a2:: with SMTP id
 c2mr17483549ljn.121.1575910951175; 
 Mon, 09 Dec 2019 09:02:31 -0800 (PST)
MIME-Version: 1.0
References: <20191205174915.24546-1-anezhins@redhat.com>
 <20191205174915.24546-3-anezhins@redhat.com>
 <1860140170.14473019.1575626680942.JavaMail.zimbra@redhat.com>
 <CA+H+uew4aWet5WbJXEJ8p=A46r3nUQ1oKN+KanJ9BgAv12FCHQ@mail.gmail.com>
In-Reply-To: <CA+H+uew4aWet5WbJXEJ8p=A46r3nUQ1oKN+KanJ9BgAv12FCHQ@mail.gmail.com>
From: Alexander Nezhinsky <anezhins@redhat.com>
Date: Mon, 9 Dec 2019 19:02:40 +0200
Message-ID: <CA+H+uewtm0G0rHgEa84hxDXBoOvtwu+cyXgyb08hc2gVQ4cOJQ@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-MC-Unique: G2nHpTRjO2idFNpd5b5OkA-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575910957;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fgNCgJ9W7gTKswj8+MERpIouwtar7R7dWK/qA1q4qYU=;
 b=YL6ByEtfsTVD8gfESIc6vS0tt6toI2qsm6XkWituSVvwyy0wP2on9nGIPuLwL276yqxJuE
 7Gx8k7LhjtHktMrrroHvMfHBSOcXTqf8EU2Uu3ieD09Gj7Jgj7ThAQhotacOpU6b7Rxf8H
 IfA3ZkH48XjLDvAbh6VaxmOg5fr++DU=
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>,
 Alexander Nezhinsky <alexander@daynix.com>
Content-Type: multipart/mixed; boundary="===============0157420448=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0157420448==
Content-Type: multipart/alternative; boundary="000000000000715e320599485cd3"

--000000000000715e320599485cd3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 7, 2019 at 12:20 PM Alexander Nezhinsky <anezhins@redhat.com>
wrote:

>
> On Fri, Dec 6, 2019 at 12:04 PM Frediano Ziglio <fziglio@redhat.com>
> wrote:
>
> > +    bdev =3D spice_usb_device_manager_device_to_bdev(self, device);
>>
>> see below
>>
>> > +#ifdef USE_USBREDIR
>> > +    SpiceUsbBackendDevice *bdev;
>> > +    gboolean is_cd;
>> > +
>> > +    bdev =3D spice_usb_device_manager_device_to_bdev(self, device);
>>
>> Note that SpiceUsbBackendDevice is defined as
>>
>>     typedef struct _SpiceUsbDevice SpiceUsbBackendDevice;
>>
>> no need to call this function.
>>
>> I agree with Yuri. This is the current practice in all API functions.
> We can rework it everywhere, or leave it as is.
>
>
I looked at it just an inch deeper and saw that the function
spice_usb_device_manager_device_to_bdev actually increments the reference
of the device object.
So it seems to be necessary and the change would require rework of some
further logic, i guess.
In view of the fact that the struct is the same, we could change the name
of the functions to reflect the refcounting, like:
spice_usb_device_manager_get_bdev_device() or just
spice_usb_device_manager_get_device()
What do you think?

--000000000000715e320599485cd3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, Dec 7, 2019 at 12:20 PM Alexa=
nder Nezhinsky &lt;<a href=3D"mailto:anezhins@redhat.com">anezhins@redhat.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 6, 2019 at 12:04 PM Fredian=
o Ziglio &lt;<a href=3D"mailto:fziglio@redhat.com" target=3D"_blank">fzigli=
o@redhat.com</a>&gt; wrote:<br></div><br><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">&gt; +=C2=A0 =C2=A0 bdev =3D spice_usb_device_manager_devic=
e_to_bdev(self, device);<br>
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
/div><br></div></div></blockquote><div><br></div><div>I looked at it just a=
n inch deeper and saw that the function spice_usb_device_manager_device_to_=
bdev actually increments the reference of the device object.</div><div>So i=
t seems to be necessary and the change would require rework of some further=
 logic, i guess.</div><div>In view of the fact that the struct is the same,=
 we could change the name of the functions to reflect the refcounting, like=
:</div><div>spice_usb_device_manager_get_bdev_device() or just spice_usb_de=
vice_manager_get_device()</div><div>What do you think?</div><div><br></div>=
<div><br></div></div></div>

--000000000000715e320599485cd3--


--===============0157420448==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0157420448==--

