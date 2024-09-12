Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D963F976C42
	for <lists+spice-devel@lfdr.de>; Thu, 12 Sep 2024 16:36:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A6E310EBAB;
	Thu, 12 Sep 2024 14:36:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="dn0EaYqX";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C00510EBAB
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Sep 2024 14:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1726151774;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FTJ/50RZdVsViZZOc+9a/Fm7hNOSQx2R4wsMsyip8TA=;
 b=dn0EaYqXdQf5WZiemHShleLwr/JLyk2c/6tFXwgx9DGQqqqhZZ2g9l4iswXgHqKpfDf4tz
 MBP7uauPj9AvDzIPxJGY9bW0qBGQGj3nUFa+4eELvLFO4VCOMITduXXc43Us4m3bM3E9Xg
 592MlVQg9DTcVPjrhq8Az7AEj2o4ic0=
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com
 [209.85.167.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-583-KZyFL-OBPpaY8rooZG04OQ-1; Thu, 12 Sep 2024 10:36:13 -0400
X-MC-Unique: KZyFL-OBPpaY8rooZG04OQ-1
Received: by mail-oi1-f197.google.com with SMTP id
 5614622812f47-3e04ec0155dso927137b6e.0
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Sep 2024 07:36:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726151772; x=1726756572;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FTJ/50RZdVsViZZOc+9a/Fm7hNOSQx2R4wsMsyip8TA=;
 b=HdJ3m/Pr1MMdXqZR/qscYeGCZ7/koJOA1wPMGmi8+OF6H/hJqO2doM8mdbFHaiA54a
 bOw8knTiu5gjc4sHGaK17IfM/D4WNUXTpZ0WqZUk1bAZRFi3QpkDe53Dju0/QG93Smc4
 Jh1CdG/oAJZwQKG/mnIJxNWFL/nsTbSwPr7EueT9TEqGNPdJPoJ8JTbUhDMeAuEmb8ZO
 NR/hMqU0oSztoPFEIqEvqF7m4kmBL/7XWXD0sURQSVoCfu98+S7bUWTFmEyPtuZjZDq8
 4tnoa9AIbvKMNAedfjZgRj5mfP0E6KnF7sM/umKziR0NF4S15oDlRtssWcdGEEHuvsQ/
 1T9w==
X-Forwarded-Encrypted: i=1;
 AJvYcCXrTwcFmqzFQBREnL0nOVNseg5rC+6yhyz4Dl2vl6gDtvnvxnlA1WpHBXmGTaghworHWk3OP1FYBXa/Ww==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxFYisVZjxTpnYY50Jpp3ZelVZwXWnrDiSm1qCsoMAprsq1DfXg
 JEOz7o6RzJKDoKWVU3vzWA7mcLjLd/cKYzH4CtYVICqaqZ/gvBiSEw1z9KOITMPv+Mn1sqnWZav
 d6L38CmF2KoS3XviSHhtHsS1BdU/CujDaOXUzClvhyW+xdMLpLd5izskBOZu6utg5r/TkcRQhvu
 QaRjOW7RzNl2NORLNeQEa1kv4LwCUsbsDt487j2HL6gEg=
X-Received: by 2002:a05:6808:1b06:b0:3e0:4db9:8c42 with SMTP id
 5614622812f47-3e071aab095mr3370025b6e.23.1726151772253; 
 Thu, 12 Sep 2024 07:36:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETNyjXoyo1wlZZMDpP9B5pO2cgdVadlWSDX1IFMz0td2brvydYHi7+OVp7hYUsOsV6pNA6vXkCCNdHq6Qrbqw=
X-Received: by 2002:a05:6808:1b06:b0:3e0:4db9:8c42 with SMTP id
 5614622812f47-3e071aab095mr3369937b6e.23.1726151770868; Thu, 12 Sep 2024
 07:36:10 -0700 (PDT)
MIME-Version: 1.0
References: <CA+mZ-_JE5f7qdNFyS-zKzYwx8e22xyzNG9oU4B7cNOyCUFAENQ@mail.gmail.com>
 <CAHt6W4eAR8gN6=d9LWH4EOukuWgx76UfBj0QGT0ctdr=UbWF_Q@mail.gmail.com>
 <CA+mZ-_LwGmvUhFDjqgLzfkc0aMy0SsWXH9U_Ekdsg0rLZKZQdA@mail.gmail.com>
 <CAHt6W4egOb+jX=LDLmpTnQ4n1ujkCMF=4e2H+hs+mOPufYXUwQ@mail.gmail.com>
 <CA+mZ-_+Q7W3zJoyuSX49uxOWq2rpJ81FYndYDeiQG=EfhOPisQ@mail.gmail.com>
 <CAHt6W4dQT1M-rbtq=Ku8O=1rVjBWToHnww5MyfM-pHA5PTPOWA@mail.gmail.com>
 <CA+mZ-_Jd8i6u346W=Ymh47ELoqHhEBuDUz++GUOL9ht4Fc8mFg@mail.gmail.com>
In-Reply-To: <CA+mZ-_Jd8i6u346W=Ymh47ELoqHhEBuDUz++GUOL9ht4Fc8mFg@mail.gmail.com>
From: Uri Lublin <ulublin@redhat.com>
Date: Thu, 12 Sep 2024 17:35:59 +0300
Message-ID: <CAAg9qJ0sOSuL5emMa8mZmYqXuYit2d1vVzxQATmqUkAKWYd5Pg@mail.gmail.com>
Subject: Re: Guest Post Request
To: Randall Suter <randallsuter@gmail.com>
Cc: Frediano Ziglio <freddy77@gmail.com>, spice-devel@lists.freedesktop.org
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000021aa850621ed07c8"
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

--00000000000021aa850621ed07c8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Randall,

We do not publish advertising articles on our site.

Regards,
    Uri

On Thu, Sep 12, 2024 at 5:31=E2=80=AFPM Randall Suter <randallsuter@gmail.c=
om>
wrote:

> I didn't understand your answer.
>
> Best Regards,
> Randall Suter
>
>
> On Sun, 8 Sept 2024 at 13:41, Frediano Ziglio <freddy77@gmail.com> wrote:
>
>> Il giorno gio 5 set 2024 alle ore 18:56 Randall Suter
>> <randallsuter@gmail.com> ha scritto:
>> >
>> > Hello,
>> >
>> > My clients are willing to pay you to place an advertising article on
>> your site. That's what I'm asking you. Do you accept this or not?
>> >
>> > Best Regards,
>> > Randall Suter
>> >
>> >
>> > On Thu, 5 Sept 2024 at 09:39, Frediano Ziglio <freddy77@gmail.com>
>> wrote:
>> >>
>> >> Hi,
>> >>    it's not clear what you are trying to achieve.
>> >>
>> >> Do you want to sponsor our project? Like paying for a developer? Or
>> >> donate some money (I don't think we'll have a nice usage at the momen=
t
>> >> but I may be wrong) ?
>> >>
>> >> Regards,
>> >>    Frediano
>> >>
>> >> Il giorno ven 19 lug 2024 alle ore 23:14 Randall Suter
>> >> <randallsuter@gmail.com> ha scritto:
>> >> >
>> >> > Hi! Thank you for your reply! I'm interested in sponsored posts wit=
h
>> a do-follow link. I have several projects on different topics. I would l=
ike
>> to know the terms of publication and prices on your site to begin with.
>> Please give me more details about it if you accept such posts.
>> >> >
>> >> > Best Regards,
>> >> > Randall Suter
>> >> >
>> >> >
>> >> > On Fri, 19 Jul 2024 at 13:47, Frediano Ziglio <freddy77@gmail.com>
>> wrote:
>> >> >>
>> >> >> Il giorno ven 19 lug 2024 alle ore 11:20 Randall Suter
>> >> >> <randallsuter@gmail.com> ha scritto:
>> >> >> >
>> >> >> > Good day! My name is Randall. I would like to contribute to your
>> website (spice-space.org) by submitting a guest post. Are there any
>> specific requirements that I need to follow?
>> >> >> >
>> >> >> > Best Regards,
>> >> >> > Randall Suter
>> >> >>
>> >> >> Hi Randall,
>> >> >>    pages are generated from
>> >> >> https://gitlab.freedesktop.org/spice/spice-space-pages.
>> >> >> What'a a "guest post" ?
>> >> >>
>> >> >> Frediano
>>
>> Hi,
>>    I don't own the website but I think the reply is no.
>> It's an Open Source project webpage.
>>
>> Regards,
>>    Frediano
>>
>

--00000000000021aa850621ed07c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Randall,</div><div><br></div><div>We do not publis=
h advertising articles on our site.<br></div><div><br></div><div>Regards,</=
div><div>=C2=A0=C2=A0=C2=A0 Uri<br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 12, 2024 at 5:31=E2=80=
=AFPM Randall Suter &lt;<a href=3D"mailto:randallsuter@gmail.com">randallsu=
ter@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">I didn&#39;t understand your=
 answer.<br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature"><=
div dir=3D"ltr"><div><br></div><div><font face=3D"arial, sans-serif">Best R=
egards,<br></font></div><div><span style=3D"color:rgb(0,0,0);white-space:pr=
e-wrap"><font face=3D"arial, sans-serif">Randall Suter</font></span><br></d=
iv></div></div></div><br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Sun, 8 Sept 2024 at 13:41, Frediano Zigli=
o &lt;<a href=3D"mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Il giorno gio 5 set 2024 alle ore 18:56 Randall Suter<br>
&lt;<a href=3D"mailto:randallsuter@gmail.com" target=3D"_blank">randallsute=
r@gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; My clients are willing to pay you to place an advertising article on y=
our site. That&#39;s what I&#39;m asking you. Do you accept this or not?<br=
>
&gt;<br>
&gt; Best Regards,<br>
&gt; Randall Suter<br>
&gt;<br>
&gt;<br>
&gt; On Thu, 5 Sept 2024 at 09:39, Frediano Ziglio &lt;<a href=3D"mailto:fr=
eddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;=C2=A0 =C2=A0 it&#39;s not clear what you are trying to achieve.<br=
>
&gt;&gt;<br>
&gt;&gt; Do you want to sponsor our project? Like paying for a developer? O=
r<br>
&gt;&gt; donate some money (I don&#39;t think we&#39;ll have a nice usage a=
t the moment<br>
&gt;&gt; but I may be wrong) ?<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt;=C2=A0 =C2=A0 Frediano<br>
&gt;&gt;<br>
&gt;&gt; Il giorno ven 19 lug 2024 alle ore 23:14 Randall Suter<br>
&gt;&gt; &lt;<a href=3D"mailto:randallsuter@gmail.com" target=3D"_blank">ra=
ndallsuter@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi! Thank you for your reply! I&#39;m interested in sponsored=
 posts with a do-follow link. I have several projects on different topics. =
I would like to know the terms of publication and prices on your site to be=
gin with. Please give me more details about it if you accept such posts.<br=
>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Best Regards,<br>
&gt;&gt; &gt; Randall Suter<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Fri, 19 Jul 2024 at 13:47, Frediano Ziglio &lt;<a href=3D"=
mailto:freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>&gt; wro=
te:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Il giorno ven 19 lug 2024 alle ore 11:20 Randall Suter<br=
>
&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:randallsuter@gmail.com" target=3D"_=
blank">randallsuter@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Good day! My name is Randall. I would like to contri=
bute to your website (<a href=3D"http://spice-space.org" rel=3D"noreferrer"=
 target=3D"_blank">spice-space.org</a>) by submitting a guest post. Are the=
re any specific requirements that I need to follow?<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Best Regards,<br>
&gt;&gt; &gt;&gt; &gt; Randall Suter<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Hi Randall,<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 pages are generated from<br>
&gt;&gt; &gt;&gt; <a href=3D"https://gitlab.freedesktop.org/spice/spice-spa=
ce-pages" rel=3D"noreferrer" target=3D"_blank">https://gitlab.freedesktop.o=
rg/spice/spice-space-pages</a>.<br>
&gt;&gt; &gt;&gt; What&#39;a a &quot;guest post&quot; ?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Frediano<br>
<br>
Hi,<br>
=C2=A0 =C2=A0I don&#39;t own the website but I think the reply is no.<br>
It&#39;s an Open Source project webpage.<br>
<br>
Regards,<br>
=C2=A0 =C2=A0Frediano<br>
</blockquote></div>
</blockquote></div>

--00000000000021aa850621ed07c8--

