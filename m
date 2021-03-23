Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 550FB345938
	for <lists+spice-devel@lfdr.de>; Tue, 23 Mar 2021 09:04:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8541D6E84D;
	Tue, 23 Mar 2021 08:04:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05D846E095
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Mar 2021 08:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616486666;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5HBR8U4tXEn64kr16M5dhLrLeNyOQzn8IfCWDzBTGto=;
 b=H2vmMX+Wrf+dIDnnRne5uG3s3hhRhWhyDOMzDwLuE7f0SS0d/11HW4I0msV+xO32X8rLVu
 pSy88rzTTJsxnB4PZ36bBYCylUsQRPkFz5HSmO3rP3Wj/boYo7Xn/Wh9mTtkP53dynn5c+
 bvgefmW/yOLeYU5fh9iWd4vhGUIVWfU=
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com
 [209.85.219.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-15-AYvaQjJZMpuiAE3s5rLD8A-1; Tue, 23 Mar 2021 04:04:21 -0400
X-MC-Unique: AYvaQjJZMpuiAE3s5rLD8A-1
Received: by mail-yb1-f199.google.com with SMTP id x10so1948506ybr.11
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Mar 2021 01:04:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5HBR8U4tXEn64kr16M5dhLrLeNyOQzn8IfCWDzBTGto=;
 b=VewrJNOiENNY+SD0cnBoh2y//3We5/lf4WibkTga3EGrzHrf2pL9mEFGi4BQwaMa6S
 QxCfY9vhjyJpeAuxCk5DB6T4l3WZWH8UD44lmfoDIEWXezIvafEUwHAnVjTO4z3FQHjt
 8VnSnbou2g8XeFh4u/hk62Ir1uPtB8rvECs81MeUJdnHVeY+73+IaewiM8esGQG6jkNV
 5jOXDGalfN48O+wzwGi/5D9p9DxNBRn3AZ2rAF9tvRyYFYzRhlRMX9TqQzJG0EEeJFQE
 6NNWOswP7coPnCvjGrv6FHIAFX3+Ucj8UUuXGA7J0n89qJKqvPxnklfvNZfVrKKIy0Ke
 6CfA==
X-Gm-Message-State: AOAM530WflLsMt3iksZXw7ecXrjY5pFfs+eVlOh2HWXSr4fneeGnLeyk
 ovZ7g1QxwaUL0iwF3TwBCOSMvsC5g2awRxU53u1FuAFZieFPmscrlW8jFlB6LpiIl+4PZy1VrO3
 hoV9GL9f6upogACnZ4w5ih7BNuSejNoP0mXKWFrtG4aI65E8=
X-Received: by 2002:a25:20d6:: with SMTP id g205mr3626245ybg.485.1616486660327; 
 Tue, 23 Mar 2021 01:04:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzoi86O9D76Cz+jBnFCVeoTz9GuhFxBvum4kGAjlvex+n3nLN7uirU0OdG+cYznYTP9kLVWWOahr8CZDpdoGvI=
X-Received: by 2002:a25:20d6:: with SMTP id g205mr3626218ybg.485.1616486659970; 
 Tue, 23 Mar 2021 01:04:19 -0700 (PDT)
MIME-Version: 1.0
References: <1460907569.2869086.1616420768731.ref@mail.yahoo.com>
 <1460907569.2869086.1616420768731@mail.yahoo.com>
 <20210322145139.kuigwqkyjdkby35r@wingsuit>
 <2044021456.514716.1616426838206@mail.yahoo.com>
 <b734810e-8bba-7afd-b104-5b48a06659f7@redhat.com>
 <749011737.954954.1616435403564@mail.yahoo.com>
In-Reply-To: <749011737.954954.1616435403564@mail.yahoo.com>
From: Julien Rope <jrope@redhat.com>
Date: Tue, 23 Mar 2021 09:04:09 +0100
Message-ID: <CAD5yKqwRzPD5Pp4N1W9V1=weDFLy6mdcg5JoBFARh9o+VxOMUQ@mail.gmail.com>
To: "Dr. Jennifer Nussbaum" <bg271828@yahoo.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jrope@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Multiple monitors at 4K, in virt-manager?
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1532798168=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1532798168==
Content-Type: multipart/alternative; boundary="00000000000026e84805be2fa116"

--00000000000026e84805be2fa116
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> I still am offered only 2952 x 1781 in the guest. With those settings
except 'heads=3D"2"', it is exactly
> the same--that resolution, and only one display, "Virtual-0".
>
> As mentioned in my original message, when I use the Virtio instead of the
QXL device, I do get 4K,
> though again choosing 'heads=3D"2"' doesn't give me an additional display
in the guest. (Curiously
> the one display I get is "Virtual-1" rather than "Virtual-0".) With this
device there's no option for
> changing the video memory in the XML.

The numbering (Virtual-0 vs Virtual-1) is expected - this is not an issue.

Do you actually get the choice of additional displays in virt-viewer (not
in the guest) ?
Under the top menu "View -> Displays" you should have a list of available
displays. Do you see them ? Are they enabled or grayed out ?

Best regards,
Julien


Le mar. 23 mars 2021 =C3=A0 08:24, Dr. Jennifer Nussbaum <bg271828@yahoo.co=
m> a
=C3=A9crit :

> On Monday, March 22, 2021, 01:35:46 PM EDT, Uri Lublin <uril@redhat.com>
> wrote:
>
> >  Hi,
> >
> >  It seems 64MB is not enough.
> >
> >  4096 * 2160 * 4 * 2 > 64MB
> >
> >  Can you try replacing all those 64MB below with 128MB ?
> >  Please try with 1 head first. Possibly 2 heads need
> >  more (but not for all params).
>
> I'm afraid there's no change.
>
> With the settings
>
> <video>
>       <model type=3D"qxl" ram=3D"131072" vram=3D"131072" vgamem=3D"131072=
"
> heads=3D"1" primary=3D"yes"/>
>       <address type=3D"pci" domain=3D"0x0000" bus=3D"0x00" slot=3D"0x09"
> function=3D"0x0"/>
>  </video>
>
> I still am offered only 2952 x 1781 in the guest. With those settings
> except 'heads=3D"2"', it is exactly
> the same--that resolution, and only one display, "Virtual-0".
>
> As mentioned in my original message, when I use the Virtio instead of the
> QXL device, I do get 4K,
> though again choosing 'heads=3D"2"' doesn't give me an additional display=
 in
> the guest. (Curiously
> the one display I get is "Virtual-1" rather than "Virtual-0".) With this
> device there's no option for
> changing the video memory in the XML.
>
> Thank you for sticking with this.
>
> Jen
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>


--=20

Julien ROP=C3=89

Senior Software Engineer - SPICE

jrope@redhat.com
<https://www.redhat.com/>

--00000000000026e84805be2fa116
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr" style=3D"color:rgb(38,40,42);font-family:=
&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:13px">&gt; =
I still am offered only 2952 x 1781 in the guest. With those settings excep=
t &#39;heads=3D&quot;2&quot;&#39;, it is exactly</div><div dir=3D"ltr" styl=
e=3D"color:rgb(38,40,42);font-family:&quot;Helvetica Neue&quot;,Helvetica,A=
rial,sans-serif;font-size:13px">&gt; the same--that resolution, and only on=
e display, &quot;Virtual-0&quot;.</div><div dir=3D"ltr" style=3D"color:rgb(=
38,40,42);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif=
;font-size:13px">&gt;=C2=A0</div><div dir=3D"ltr" style=3D"color:rgb(38,40,=
42);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-=
size:13px">&gt; As mentioned in my original message, when I use the Virtio =
instead of the QXL device, I do get 4K,</div><div dir=3D"ltr" style=3D"colo=
r:rgb(38,40,42);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans=
-serif;font-size:13px">&gt; though again choosing &#39;heads=3D&quot;2&quot=
;&#39; doesn&#39;t give me an additional display in the guest. (Curiously</=
div><div dir=3D"ltr" style=3D"color:rgb(38,40,42);font-family:&quot;Helveti=
ca Neue&quot;,Helvetica,Arial,sans-serif;font-size:13px">&gt; the one displ=
ay I get is &quot;Virtual-1&quot; rather than &quot;Virtual-0&quot;.) With =
this device there&#39;s no option for</div><div dir=3D"ltr" style=3D"color:=
rgb(38,40,42);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-s=
erif;font-size:13px">&gt; changing the video memory in the XML.</div><div d=
ir=3D"ltr" style=3D"color:rgb(38,40,42);font-family:&quot;Helvetica Neue&qu=
ot;,Helvetica,Arial,sans-serif;font-size:13px"><br></div><div style=3D"colo=
r:rgb(38,40,42);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans=
-serif;font-size:13px">The numbering (Virtual-0 vs Virtual-1) is expected -=
 this is not an issue.</div><div style=3D"color:rgb(38,40,42);font-family:&=
quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:13px"><br></=
div><div style=3D"color:rgb(38,40,42);font-family:&quot;Helvetica Neue&quot=
;,Helvetica,Arial,sans-serif;font-size:13px">Do you actually get the choice=
 of additional=C2=A0displays in virt-viewer (not in the guest) ?</div><div =
style=3D"color:rgb(38,40,42);font-family:&quot;Helvetica Neue&quot;,Helveti=
ca,Arial,sans-serif;font-size:13px">Under the top menu &quot;View -&gt; Dis=
plays&quot; you should have a list of available displays. Do you see them ?=
 Are they enabled or grayed out ?</div><div style=3D"color:rgb(38,40,42);fo=
nt-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:1=
3px"><br></div><div style=3D"color:rgb(38,40,42);font-family:&quot;Helvetic=
a Neue&quot;,Helvetica,Arial,sans-serif;font-size:13px">Best regards,</div>=
<div style=3D"color:rgb(38,40,42);font-family:&quot;Helvetica Neue&quot;,He=
lvetica,Arial,sans-serif;font-size:13px">Julien</div><div dir=3D"ltr" style=
=3D"color:rgb(38,40,42);font-family:&quot;Helvetica Neue&quot;,Helvetica,Ar=
ial,sans-serif;font-size:13px"><br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 23 mars 2021 =C3=A0=
=C2=A008:24, Dr. Jennifer Nussbaum &lt;<a href=3D"mailto:bg271828@yahoo.com=
">bg271828@yahoo.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div><div style=3D"font-family:&quot;Helve=
tica Neue&quot;,Helvetica,Arial,sans-serif;font-size:13px"><div></div>
        <div><span style=3D"color:rgb(38,40,42)">On Monday, March 22, 2021,=
 01:35:46 PM EDT, Uri Lublin &lt;<a href=3D"mailto:uril@redhat.com" target=
=3D"_blank">uril@redhat.com</a>&gt; wrote:</span><br></div></div><div id=3D=
"gmail-m_-7716429795946440748ydp8b18c8c9yahoo_quoted_7094190875"><div style=
=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-=
size:13px;color:rgb(38,40,42)">
                <div><br></div><div><div dir=3D"ltr"><span>&gt;=C2=A0=C2=A0=
</span>Hi,<br clear=3D"none"><span>&gt;=C2=A0=C2=A0</span><br clear=3D"none=
"><span>&gt;=C2=A0=C2=A0</span>It seems 64MB is not enough.<br clear=3D"non=
e"><span>&gt;=C2=A0=C2=A0</span><br clear=3D"none"><span>&gt;=C2=A0=C2=A0</=
span>4096 * 2160 * 4 * 2 &gt; 64MB<br clear=3D"none"><span>&gt;=C2=A0=C2=A0=
</span><br clear=3D"none"><span>&gt;=C2=A0=C2=A0</span>Can you try replacin=
g all those 64MB below with 128MB ?<br clear=3D"none"><span>&gt;=C2=A0=C2=
=A0</span>Please try with 1 head first. Possibly 2 heads need<br clear=3D"n=
one"><span>&gt;=C2=A0=C2=A0</span>more (but not for all params).</div><div =
dir=3D"ltr"><br></div><div dir=3D"ltr">I&#39;m afraid there&#39;s no change=
.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">With the settings=C2=A0<=
/div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><div><div>&lt;video&gt;</d=
iv><div>=C2=A0 =C2=A0 =C2=A0 &lt;model type=3D&quot;qxl&quot; ram=3D&quot;1=
31072&quot; vram=3D&quot;131072&quot; vgamem=3D&quot;131072&quot; heads=3D&=
quot;1&quot; primary=3D&quot;yes&quot;/&gt;</div><div>=C2=A0 =C2=A0 =C2=A0 =
&lt;address type=3D&quot;pci&quot; domain=3D&quot;0x0000&quot; bus=3D&quot;=
0x00&quot; slot=3D&quot;0x09&quot; function=3D&quot;0x0&quot;/&gt;</div><di=
v>=C2=A0&lt;/video&gt;</div></div><div><br></div><div dir=3D"ltr">I still a=
m offered only 2952 x 1781 in the guest. With those settings except &#39;he=
ads=3D&quot;2&quot;&#39;, it is exactly</div><div dir=3D"ltr">the same--tha=
t resolution, and only one display, &quot;Virtual-0&quot;.</div><div dir=3D=
"ltr"><br></div><div dir=3D"ltr">As mentioned in my original message, when =
I use the Virtio instead of the QXL device, I do get 4K,</div><div dir=3D"l=
tr">though again choosing &#39;heads=3D&quot;2&quot;&#39; doesn&#39;t give =
me an additional display in the guest. (Curiously</div><div dir=3D"ltr">the=
 one display I get is &quot;Virtual-1&quot; rather than &quot;Virtual-0&quo=
t;.) With this device there&#39;s no option for</div><div dir=3D"ltr">chang=
ing the video memory in the XML.</div><div dir=3D"ltr"><br></div><div dir=
=3D"ltr">Thank you for sticking with this.</div><div dir=3D"ltr"><br></div>=
<div dir=3D"ltr">Jen</div></div></div>
            </div>
        </div></div>_______________________________________________<br>
Spice-devel mailing list<br>
<a href=3D"mailto:Spice-devel@lists.freedesktop.org" target=3D"_blank">Spic=
e-devel@lists.freedesktop.org</a><br>
<a href=3D"https://lists.freedesktop.org/mailman/listinfo/spice-devel" rel=
=3D"noreferrer" target=3D"_blank">https://lists.freedesktop.org/mailman/lis=
tinfo/spice-devel</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><p style=3D"font-weight:bold;margin:0px;padding:0px;font-size:=
14px;text-transform:capitalize;font-family:RedHatText,sans-serif"><span>Jul=
ien ROP=C3=89</span><span style=3D"color:rgb(170,170,170);margin:0px"></spa=
n></p><p style=3D"font-size:12px;margin:0px;text-transform:capitalize;font-=
family:RedHatText,sans-serif"><span>Senior Software Engineer - SPICE</span>=
</p><p style=3D"margin:0px;font-size:12px;font-family:RedHatText,sans-serif=
"><span style=3D"margin:0px;padding:0px"><a href=3D"mailto:jrope@redhat.com=
" target=3D"_blank">jrope@redhat.com</a><br></span></p><a href=3D"https://w=
ww.redhat.com/" style=3D"color:rgb(17,85,204)" target=3D"_blank"><img src=
=3D"https://marketing-outfit-prod-images.s3-us-west-2.amazonaws.com/f5445ae=
0c9ddafd5b2f1836854d7416a/Logo-RedHat-Email.png" width=3D"90" height=3D"aut=
o"></a></div></div></div></div></div></div>

--00000000000026e84805be2fa116--


--===============1532798168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1532798168==--

