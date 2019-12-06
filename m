Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4745C1151CA
	for <lists+spice-devel@lfdr.de>; Fri,  6 Dec 2019 15:03:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC34C6FA27;
	Fri,  6 Dec 2019 14:02:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3EF16FA29
 for <spice-devel@lists.freedesktop.org>; Fri,  6 Dec 2019 13:59:52 +0000 (UTC)
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-321-2tvTrqw5MBOlrD4GuDvVLQ-1; Fri, 06 Dec 2019 08:59:49 -0500
Received: by mail-lf1-f70.google.com with SMTP id x23so1095289lfc.5
 for <spice-devel@lists.freedesktop.org>; Fri, 06 Dec 2019 05:59:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Chza0uBYKxS6iDGhUn/74tBOokMq3KyHVhXGXNjRnes=;
 b=lkct9LH4jyolbnaq1tDmdxqn+7fD8kcXAXAuE8AS8ROfLgpdOOYCXDPj58C+6R3yue
 JS+ynKZVcAG7AoaUKbJdCFXxH00+fYUzdnSlZGyzyjQ9/zb0a2hJJbgSztoAWTfoVBUz
 Y13prXPp1gcLREPg0auqwMme4USdm7S/PKKwhTYicNyjFvcchF95J1WiSozzXxyez04K
 o8MO2E9btUzpQAvj4tQdg66LbG+CWjx4MFq61/vbBEQoapNLc6n7WCFuvpDb3xd9itJd
 LFW1yK1Z0TMMTF3TugrEG2qjMCIvqADdG5xVRbViGza/Rpwgu96kFFhY7rkFgsEsPDgR
 nR2Q==
X-Gm-Message-State: APjAAAVIZJRiZUsaAoeC3AfJiqO5UMEFwNRphQL8K3o/E2ouHbwPfclP
 vawZM+C0hDZxzvgcBsXAmY/hWjIgr+bfeZCVbATO38ocHbYQOeEQkkppXw9gfDmTPudnrommdOC
 Nkq2yRtODOQMgcYwCB3qiGHqoNa3DkSlmuqPPs6cYdz24EJk=
X-Received: by 2002:a2e:9a93:: with SMTP id p19mr8972435lji.158.1575640788583; 
 Fri, 06 Dec 2019 05:59:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqz1gXQ9R43gsQHElmSrSfuwcOvmBLB+xFPUoeutSNGoh0/oT7o/VnO7XMVzcnpeBafjqf4zEbIbe5ZRp9IHWXM=
X-Received: by 2002:a2e:9a93:: with SMTP id p19mr8972428lji.158.1575640788488; 
 Fri, 06 Dec 2019 05:59:48 -0800 (PST)
MIME-Version: 1.0
References: <20191205174915.24546-1-anezhins@redhat.com>
 <20191205174915.24546-4-anezhins@redhat.com>
 <2027160826.14473184.1575626800688.JavaMail.zimbra@redhat.com>
In-Reply-To: <2027160826.14473184.1575626800688.JavaMail.zimbra@redhat.com>
From: Alexander Nezhinsky <anezhins@redhat.com>
Date: Fri, 6 Dec 2019 16:05:23 +0200
Message-ID: <CA+H+uez0WjgR-KOLucqiXqr+mmrtMcoVYvNh7yF9vkM8u0FEaw@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-MC-Unique: 2tvTrqw5MBOlrD4GuDvVLQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Approved-At: Fri, 06 Dec 2019 14:02:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575640791;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LxMHgPse5zoGxWKqV4EAboa+owFl6Uwn5OeuqukRhZA=;
 b=LV0y5FQkDrxEdaAcqpdgI5CUrC3Pn/xk9Y4GU/LEggwsCP779245jhKjF/jTH0W9BAvdY4
 KUw22oFicbcEILmxFY+OPuRHIOICNoixM6zkSRaXdAesvXXlRFSxXNIllx+N8TiWQlx7JW
 jRwecYYXjVONacW3pRecyR8ITGMgqMs=
Subject: Re: [Spice-devel] [PATCH 3/9] Add --spice-share-cd command line
 option
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
Content-Type: multipart/mixed; boundary="===============1867472585=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1867472585==
Content-Type: multipart/alternative; boundary="0000000000007de189059909756f"

--0000000000007de189059909756f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 6, 2019 at 12:06 PM Frediano Ziglio <fziglio@redhat.com> wrote:

> >
> > From: Alexander Nezhinsky <anezhins@redhat.com>
> > +                rc =3D spice_usb_device_manager_create_shared_cd_devic=
e(m,
> > *name, &err);
> > +                if (!rc) {
> > +                    if (!err)
>
> minor: err =3D=3D NULL
>
OK


>
> > +                        g_warning("Failed to create shared CD device
> %s",
> > +                    else
> > +                        g_warning("Failed to create shared CD device %=
s:
>
> style: always brackets
>
Sure


>
> as you check for err above you can include in the else.
>
OK

--0000000000007de189059909756f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 6, 2019 at 12:06 PM Fredi=
ano Ziglio &lt;<a href=3D"mailto:fziglio@redhat.com">fziglio@redhat.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt;=
 <br>
&gt; From: Alexander Nezhinsky &lt;<a href=3D"mailto:anezhins@redhat.com" t=
arget=3D"_blank">anezhins@redhat.com</a>&gt;<br>&gt; +=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D spice_usb_device_manager_create_s=
hared_cd_device(m,<br>
&gt; *name, &amp;err);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!rc) {<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 if (!err)<br>
<br>
minor: err =3D=3D NULL<br></blockquote><div>OK</div><div>=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 g_warning(&quot;Failed to create shared CD device %s&quot;,<=
br>&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 else<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 g_warning(&quot;Failed to create shared CD device %s:<br><br=
>
style: always brackets<br></blockquote><div>Sure=C2=A0</div><div>=C2=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
as you check for err above you can include in the else.<br></blockquote><di=
v>OK=C2=A0</div></div></div>

--0000000000007de189059909756f--


--===============1867472585==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1867472585==--

