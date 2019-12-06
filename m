Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C1B1153BB
	for <lists+spice-devel@lfdr.de>; Fri,  6 Dec 2019 15:59:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E1B86FA35;
	Fri,  6 Dec 2019 14:59:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 201BC6FA29
 for <spice-devel@lists.freedesktop.org>; Fri,  6 Dec 2019 14:22:18 +0000 (UTC)
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-135-9jKb4WjeOKmcsjvJ1QAgJA-1; Fri, 06 Dec 2019 09:22:13 -0500
Received: by mail-lf1-f70.google.com with SMTP id i29so1111972lfc.18
 for <spice-devel@lists.freedesktop.org>; Fri, 06 Dec 2019 06:22:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BtY9s5IQoG0NonNb/5kAk0RU6Kl3381Hun7p3/AMNNs=;
 b=X5LpxTWP7vxPW5lU17NKBO2TsLxv2BfGQ5CI3t98YVCE0VgJ2Ss4Pc5Un+v6CXxao+
 ETbLe854pbLoVuhl/JTfu0UeWw04YDiC3nI2suuobOdwOe0sx994Z22e09DRXqPMunEX
 n/lizW/9G/ywsl3pOAFwrY0OAVNg10cAKjCo9kcGA72hMIepO63IND6/0qy0mdAVBNtw
 JYFnGyZ6KGX2lvcVkSR1EugsLj+zuR//ANve/PG7faistRVn7M00R1jVOXID13BljFB/
 DUOBtWnx43cI9K67PlCpRj4VbYcs/fDpX1WL669ocOTmhOFPJnrtVIIuYYekkJ0qbojQ
 aN3A==
X-Gm-Message-State: APjAAAVXDR8FF/2iV1RVoxeJwtSvuzQCYin62smy1MLZF2xQbTCkVOm8
 aiGN01SH708d+o1NoTCyREMJz0NvtYnyZkXKHfNOFaTOWzwOvS1HxiJEKHsXZXJX2UTe3I+i3wF
 P0jqjL/D6eOrkR8mAgdxsUmoHFGoGgUtd7W/NWQ/sm0EqHVQ=
X-Received: by 2002:a2e:5843:: with SMTP id x3mr8807247ljd.64.1575642131761;
 Fri, 06 Dec 2019 06:22:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqwmvMoT1JhL7zgU2l2rWPWJKldsO/GzS9Y2hZOziN8MerHGDAa5kjbVcbImps8+4YKdhsdvqSdkb/p473AcO00=
X-Received: by 2002:a2e:5843:: with SMTP id x3mr8807236ljd.64.1575642131559;
 Fri, 06 Dec 2019 06:22:11 -0800 (PST)
MIME-Version: 1.0
References: <20191205174915.24546-1-anezhins@redhat.com>
 <20191205174915.24546-5-anezhins@redhat.com>
 <581898881.14473564.1575627123442.JavaMail.zimbra@redhat.com>
In-Reply-To: <581898881.14473564.1575627123442.JavaMail.zimbra@redhat.com>
From: Alexander Nezhinsky <anezhins@redhat.com>
Date: Fri, 6 Dec 2019 16:27:46 +0200
Message-ID: <CA+H+uex7a9X4e5=MCDsc+RJoHR+B1jd2N8211axuN=p+E51N9Q@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-MC-Unique: 9jKb4WjeOKmcsjvJ1QAgJA-1
X-Mimecast-Spam-Score: 0
X-Mailman-Approved-At: Fri, 06 Dec 2019 14:59:23 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575642136;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SJPbzhBm1NobjF4J4PgIrOVS+RV0g17W5PkoiWXJl68=;
 b=Dt0d3cevOlY/6GkmSSDcNyibJnsB3qZdmWQnZW/NbWrGyNQudfF3Cd/m7rPsAGn0JiqL2r
 vAYVuFKV7fShAUNSgxB87r+k7mDw90fzz4OZWCcbrhwRjBfZRbR/b8xK845zdZNfzXCAel
 I3UZUqtSZmF7lJdRPEkR9LWxQTrxj7M=
Subject: Re: [Spice-devel] [PATCH 4/9] Implement
 spice_usb_device_widget_add_err_msg() in usb-device-widget
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
Content-Type: multipart/mixed; boundary="===============0237898031=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0237898031==
Content-Type: multipart/alternative; boundary="0000000000008b9a70059909c58b"

--0000000000008b9a70059909c58b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 6, 2019 at 12:12 PM Frediano Ziglio <fziglio@redhat.com> wrote:

>
> In the title I would say "Factor out" instead of "Implement

 OK

> +static void spice_usb_device_widget_add_err_msg(SpiceUsbDeviceWidget
> *self,
> > +                                                gchar *new_err_msg)
>
> Why not spice_usb_device_widget_append_err_msg ?
> "add" seems to suggest a list of errors.
>
> But it is (or can be) a list of error messages.
See below, it even puts a newline after the old text.
As far as I understand, it prepares to handle multiple errors occurring one
after another while handling the same event.

> +    if (priv->err_msg) {
> > +        /* Append the new error message to err_msg,
> > +           but only if it's *not* already there! */
> > +        if (!strstr(priv->err_msg, new_err_msg)) {
> > +            gchar *old_err_msg =3D priv->err_msg;
> > +            priv->err_msg =3D g_strdup_printf("%s\n%s", old_err_msg,
> > new_err_msg);
>

--0000000000008b9a70059909c58b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Dec 6, 2019 at 12:12 PM Frediano =
Ziglio &lt;<a href=3D"mailto:fziglio@redhat.com">fziglio@redhat.com</a>&gt;=
 wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><br>
In the title I would say &quot;Factor out&quot; instead of &quot;Implement=
=C2=A0</blockquote><div>=C2=A0OK</div><div><br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">&gt; +static void spice_usb_device_widget_add_e=
rr_msg(SpiceUsbDeviceWidget *self,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 gchar *new_err_msg)<br>
<br>
Why not spice_usb_device_widget_append_err_msg ?<br>
&quot;add&quot; seems to suggest a list of errors.<br><br></blockquote><div=
>But it is (or can be) a list of error messages.</div><div>See below, it ev=
en puts a newline after the old text.</div><div>As far as I understand, it =
prepares to handle multiple errors occurring=C2=A0one after another while h=
andling the same event.</div><div><br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">&gt; +=C2=A0 =C2=A0 if (priv-&gt;err_msg) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Append the new error message to err_ms=
g,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0but only if it&#39;s *not* a=
lready there! */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!strstr(priv-&gt;err_msg, new_err_msg=
)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gchar *old_err_msg =3D priv=
-&gt;err_msg;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;err_msg =3D g_strd=
up_printf(&quot;%s\n%s&quot;, old_err_msg,<br>
&gt; new_err_msg);<br></blockquote><div><br></div></div></div>

--0000000000008b9a70059909c58b--


--===============0237898031==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0237898031==--

