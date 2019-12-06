Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD7A1155DB
	for <lists+spice-devel@lfdr.de>; Fri,  6 Dec 2019 17:56:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCC126FA68;
	Fri,  6 Dec 2019 16:56:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 125CE6FA62
 for <spice-devel@lists.freedesktop.org>; Fri,  6 Dec 2019 16:45:59 +0000 (UTC)
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-106-LAW-niuNMBqEetMHhSiO4w-1; Fri, 06 Dec 2019 11:45:54 -0500
Received: by mail-lj1-f198.google.com with SMTP id j22so1800683lja.20
 for <spice-devel@lists.freedesktop.org>; Fri, 06 Dec 2019 08:45:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KD4T0GF8u/QI3rgB8NsOzBgaeVYjEA62FbWpy2kto7o=;
 b=TliavkhXiymKKHyZsYESPVkA7P9v0zXiFsysrgCWzd5m+rb3TrRUXTKVAVzK7DXhUW
 YGn/w1GdCtHzLKpQKeMRUg2flvtRRAsZBWZu9y3qso4JcvqxNn9lUOt2KvP1VZ5ke0BD
 j5dueu3L2d6QBgmysZbL/NkyqVAsLHXQ+eRB+hoTBwsme/fmTPyiTvcWppWrSkxH8Ko3
 mheK0QeGvzlI6+et+90fy6xv5s0AbT3WQt5dsvIu6Sh1DmfVFsOWIQYIFx5zuWOa/V8h
 wy40qzE2qwDpanRtMcCi3QrV6o5w/UCY2WvtEo9BiyvuB+qUcyASZx75I2BEu9CB0Nrb
 7QNg==
X-Gm-Message-State: APjAAAVs/hqj4i9MIO0Hoxxuls/iXZ6Mu5yVTwu2R5Si91FX+SOB0WJr
 WmpmV3MF/BV9VcXSy5DMdNySv8eDqRdApmR3onxrNP4oyVGXEjzjzOmF+0lb0nghgUE0ZXygtVp
 +by8WmvYDXN7VGDVNPx89SeJPfiJ8uwrUwm3gNlFgpI7hebA=
X-Received: by 2002:a19:5508:: with SMTP id n8mr2119089lfe.157.1575650752890; 
 Fri, 06 Dec 2019 08:45:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqyZR4UTAT3uwlA2FFlVF8hta1dr1xdQjJtHERlt0aALPypdcrrjxDimTYUcjpd2Mz1VYIwhyTIb7ujQrs1Ldzo=
X-Received: by 2002:a19:5508:: with SMTP id n8mr2119083lfe.157.1575650752753; 
 Fri, 06 Dec 2019 08:45:52 -0800 (PST)
MIME-Version: 1.0
References: <20191205174915.24546-1-anezhins@redhat.com>
 <20191205174915.24546-10-anezhins@redhat.com>
 <1980340793.14474912.1575628376287.JavaMail.zimbra@redhat.com>
In-Reply-To: <1980340793.14474912.1575628376287.JavaMail.zimbra@redhat.com>
From: Alexander Nezhinsky <anezhins@redhat.com>
Date: Fri, 6 Dec 2019 18:51:27 +0200
Message-ID: <CA+H+uewX89H_QXsp+n4WEqVTPkhCybjPL4AdMT23UTWruWhiPw@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-MC-Unique: LAW-niuNMBqEetMHhSiO4w-1
X-Mimecast-Spam-Score: 0
X-Mailman-Approved-At: Fri, 06 Dec 2019 16:56:13 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575650759;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=q1bTEWTqu3WnugM4d/j7Th0frXBCbU9euOrUXQ53rjQ=;
 b=T/SNiC5D1mRL5phk931+6Ah4DrylMkssl1sD84j+p4nPZujdlKEEk/Ja/cnt3b2xPVPAXa
 rjmVX+pmg/EA/qmJq2s3RoAuzrCj1I8HC8XuiAPSWEKd0SG41lE/KZZJDjulxDNKofR6Xv
 HuneKDuyugnXyjynS1lPZMGhyiGyqME=
Subject: Re: [Spice-devel] [PATCH 9/9] remove un-connected shared CD devices
 upon usb-device-widget construction
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
Content-Type: multipart/mixed; boundary="===============1733339817=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1733339817==
Content-Type: multipart/alternative; boundary="0000000000006886b805990bc7a0"

--0000000000006886b805990bc7a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 6, 2019 at 12:32 PM Frediano Ziglio <fziglio@redhat.com> wrote:

> >
> > From: Alexander Nezhinsky <anezhins@redhat.com>
> >
> > Some corner error scenarios may leave dangling not connected shared CD
> > devices.
> > As the current flow precludes maintenance of such devices, it may be
> prudent
> > to identify and remove them.
> >
> > Signed-off-by: Alexander Nezhinsky <anezhins@redhat.com>
>
> This patch and code seems to indicate a workaround for a bug in
> the implementation.
>
It is not about *a bug*. It is a host of corner cases where the CD remained
connected and unremoved.
This is not a concern with the "real" devices, as they can be present on
the system and become unconnected.
It could be the same case for a shared CD if we'd have supported such a
state.
But we decided to disallow it - if the connection is lost, the Cd devices
should be gone.
This creates a potentially problematic state.
Instead of hunting after all such cases and in some cases finding it
difficult to cope with them, it seems to be reasonable to solve it this
way.
We may decide otherwise, but I'd suggest that even then we accept the
patch, leave it as a known issue and dedicate a few separate patches to the
fix, perhaps immediately.

--0000000000006886b805990bc7a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 6, 2019 at 12:32 PM Frediano =
Ziglio &lt;<a href=3D"mailto:fziglio@redhat.com">fziglio@redhat.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt; <br=
>
&gt; From: Alexander Nezhinsky &lt;<a href=3D"mailto:anezhins@redhat.com" t=
arget=3D"_blank">anezhins@redhat.com</a>&gt;<br>
&gt; <br>
&gt; Some corner error scenarios may leave dangling not connected shared CD=
<br>
&gt; devices.<br>
&gt; As the current flow precludes maintenance of such devices, it may be p=
rudent<br>
&gt; to identify and remove them.<br>
&gt; <br>
&gt; Signed-off-by: Alexander Nezhinsky &lt;<a href=3D"mailto:anezhins@redh=
at.com" target=3D"_blank">anezhins@redhat.com</a>&gt;<br>
<br>
This patch and code seems to indicate a workaround for a bug in<br>
the implementation.<br></blockquote><div>It is not about *a bug*. It is a h=
ost of corner cases where the CD remained connected and unremoved.</div><di=
v>This is not a concern with the &quot;real&quot; devices, as they can be p=
resent on the system and become unconnected.</div><div>It could be the same=
 case for a shared CD if we&#39;d have supported such a state.</div><div>Bu=
t we decided to disallow it - if the connection is lost, the Cd devices sho=
uld be gone.</div><div>This creates a potentially=C2=A0problematic state.=
=C2=A0</div><div>Instead of hunting after all such cases and in some cases =
finding it difficult to cope with them, it seems to be reasonable to solve =
it this way.=C2=A0</div><div>We may decide otherwise, but I&#39;d suggest t=
hat even then we accept the patch, leave it as a known issue and dedicate a=
 few separate=C2=A0patches to the fix, perhaps immediately.</div><div><br><=
/div></div></div>

--0000000000006886b805990bc7a0--


--===============1733339817==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1733339817==--

