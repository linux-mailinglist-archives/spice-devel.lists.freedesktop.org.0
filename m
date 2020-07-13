Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4FC21D719
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jul 2020 15:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28FAF6E4EC;
	Mon, 13 Jul 2020 13:29:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com
 [IPv6:2607:f8b0:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AEE36E4EC
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Jul 2020 13:29:28 +0000 (UTC)
Received: by mail-oi1-x243.google.com with SMTP id y22so10934542oie.8
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Jul 2020 06:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YeYRwoV32u0NkhmSpSB9LeL4dGrZ3zz+MY+9TPJQJ0w=;
 b=FJsJ27GszwO3YfT9/rIPcKbvDC43eEC/RBf0P90uLaCdXy8ns2rWBlj5ndElb46IyO
 HwnoSNgPny/dVu9W1Kf0RYwlDjP0qsSAeH7cvHV9ziJ+6qqOgBlOTeK7wqN2/TdN8UK7
 dn3z+HZJLP2MteGNj8heeeCu9CrxR0wP6xWhAaQkni0qt8SMnR0hQ+7NphuDhcHM2Vqk
 g+8n5bI8llBuhLtPpsxYr1ty4/tdO8z2eZ14pMFe5JUjbEahu/R5YH02m2oHGtgsFgVy
 lo2lZU+VeSG22i7He27FxTWu4+zNbDXJR1c+GFB83K6yVUDwmUc4LWS5d+B2MNYQjv13
 +wJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YeYRwoV32u0NkhmSpSB9LeL4dGrZ3zz+MY+9TPJQJ0w=;
 b=DoV6ic0hO9sRzGFq9Cf7Gyl1F9ZZSAqkUwu5OnHpAnBxktxGljZJST0ZQIeR7/Ajlt
 PB5IjcaU2xqppDsQNt1z911jk1eq/sFtH1K6rSIwM7azdKTSrgwg3lnbV55H1A15wxOJ
 G/bQ4Hm5SPOt8Flb3mi1Q1OMQ3XzLF+B3TD6EZa3+Mr6qS8eW33lzNSj3oD5/Iswam/o
 DQruu2/6HgK7fyb1rD8w+rLU1Tk6dfmQpdEHyjiuZZrEj2dxINITR2hQjgsvVtqVp+6I
 MKPFN0Z31g2WJUwklIDp8jNRcLlV2FHoNe7QZwjLNzXg7kw3pLKrs0Zab9pz8d5kf/rD
 REVA==
X-Gm-Message-State: AOAM530hmwX7QhmliggruB30y/Ktt9sBjdPT8fjiZJqbARSkj3Nl/+O7
 HMYt9WCOnTISjTT3sme9maxa5k04UwKboo+2PSGG+A==
X-Google-Smtp-Source: ABdhPJyjb/F1FESmmWOqx3gyyTfr2QkLn9IT6Y9HWQgqoU0KIS9neaU4u06YlQcWlq5JG2VOBaESp6zA7TxJZgO8XOA=
X-Received: by 2002:aca:cf81:: with SMTP id
 f123mr14277505oig.137.1594646967922; 
 Mon, 13 Jul 2020 06:29:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200712080107.175-1-yuri.benditovich@daynix.com>
 <20200713073148.3w63nucg5z23kzlm@sirius.home.kraxel.org>
 <319372330.34271280.1594631536029.JavaMail.zimbra@redhat.com>
In-Reply-To: <319372330.34271280.1594631536029.JavaMail.zimbra@redhat.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Mon, 13 Jul 2020 16:29:15 +0300
Message-ID: <CAOEp5OcRXP_ULCSJvwHLh7LqArVQV6OM1abVkC82YP3ksYmVFQ@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
Subject: Re: [Spice-devel] [PATCH 1/2] qxl-wddm-dod: fix behavior on v5
 device
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: multipart/mixed; boundary="===============1223522291=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1223522291==
Content-Type: multipart/alternative; boundary="00000000000010c05f05aa52ae6d"

--00000000000010c05f05aa52ae6d
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 13, 2020 at 12:12 PM Frediano Ziglio <fziglio@redhat.com> wrote:

> >
> > Hi,
> >
> > > @@ -4795,7 +4796,8 @@ NTSTATUS QxlDevice::HWClose(void)
> > >  {
> > >      PAGED_CODE();
> > >      QxlClose();
> > > -    if (m_bUefiMode)
> > > +    /* QXL device rev 5+ requires explicit reset to switch to VGA
> mode */
> > > +    if (m_bUefiMode || m_pQxlDod->Revision() > 4)
> > >      {
> > >          DbgPrint(TRACE_LEVEL_INFORMATION, ("%s: Resetting the
> device\n",
> > >          __FUNCTION__));
> > >          WRITE_PORT_UCHAR((PUCHAR)(m_IoBase + QXL_IO_RESET), 0);
> >
> > I'm wondering why this is conditional in the first place?
> > Isn't it a good idea to reset the device on close no matter what?
>

The intention was to leave the entire procedure as is where possible.
For example, when we do not use the reset, user screen resize does not
happen until the BDD starts programming the VGA.

>
> > take care,
> >   Gerd
> >
>
> Surely it's less willing to cause possible regressions.
>
> Frediano
>
>

--00000000000010c05f05aa52ae6d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 13, 2020 at 12:12 PM Fred=
iano Ziglio &lt;<a href=3D"mailto:fziglio@redhat.com">fziglio@redhat.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt=
; <br>
&gt; Hi,<br>
&gt; <br>
&gt; &gt; @@ -4795,7 +4796,8 @@ NTSTATUS QxlDevice::HWClose(void)<br>
&gt; &gt;=C2=A0 {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 PAGED_CODE();<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 QxlClose();<br>
&gt; &gt; -=C2=A0 =C2=A0 if (m_bUefiMode)<br>
&gt; &gt; +=C2=A0 =C2=A0 /* QXL device rev 5+ requires explicit reset to sw=
itch to VGA mode */<br>
&gt; &gt; +=C2=A0 =C2=A0 if (m_bUefiMode || m_pQxlDod-&gt;Revision() &gt; 4=
)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DbgPrint(TRACE_LEVEL_INFORMATIO=
N, (&quot;%s: Resetting the device\n&quot;,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 __FUNCTION__));<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 WRITE_PORT_UCHAR((PUCHAR)(m_IoB=
ase + QXL_IO_RESET), 0);<br>
&gt; <br>
&gt; I&#39;m wondering why this is conditional in the first place?<br>
&gt; Isn&#39;t it a good idea to reset the device on close no matter what?<=
br></blockquote><div><br></div><div>The intention was to leave the entire p=
rocedure as is where possible.</div><div>For example, when we do not use th=
e reset, user screen resize does not happen until the BDD starts programmin=
g the VGA.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
&gt; <br>
&gt; take care,<br>
&gt;=C2=A0 =C2=A0Gerd<br>
&gt; <br>
<br>
Surely it&#39;s less willing to cause possible regressions.<br>
<br>
Frediano<br>
<br>
</blockquote></div></div>

--00000000000010c05f05aa52ae6d--

--===============1223522291==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1223522291==--
