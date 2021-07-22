Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAEB3D1FBC
	for <lists+spice-devel@lfdr.de>; Thu, 22 Jul 2021 10:16:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9E146ECDA;
	Thu, 22 Jul 2021 08:16:43 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80A556ECDA
 for <spice-devel@freedesktop.org>; Thu, 22 Jul 2021 08:16:42 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id go30so7131722ejc.8
 for <spice-devel@freedesktop.org>; Thu, 22 Jul 2021 01:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5cat+vtWZDlgUDqgyBGnn2av0hlARAw8w4OELgB278s=;
 b=tNcQoUhe9B8EOGGu0r+Y4kGQ6c1TU9qscMxRKn8nyhgP/mNdX59iDQMLDo9pEfZWFV
 mepNxCxTq84mbgJUG53WkbXpVapiM3mawmtqeoI9azBb8tSc6wGYRsjKvYn7jycybKEe
 XfxGsqwAAT7GSVZQKtvNCfE3TkZE7gJS5VUF9U3LoSPtJh++qCRtpB7Eh/juN6/ptopy
 i7NsRMoS2/j6hq17P5SB1Vqu0tAaiM9A5DXYhdMeMd13A8e9DmaghiYORAvAKJFVbXck
 HL2FGgfL3QqZD5gvK2msSDBE9vsPEDZH2UZ/yHKnKQwmyyTHn+/ApwAWv+B+YuUoO3Ot
 HRUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5cat+vtWZDlgUDqgyBGnn2av0hlARAw8w4OELgB278s=;
 b=m+US9Wb3RlgYN/4IjUR+Bps2Gzfug+oO1LshH75mFHO+I53vre08zIRZmQpantQ5Qz
 PV+0L9biVu98fgJufm8sx9bcPsvElwd1S3wfZ6/n6LzX6kv/nPfHQeWHcwPnzM5BdFmf
 Q1pT1YNwL7FYa3E1NbMHA+t5h/2mOiPPkqc9Csfyw4wkOzl69RcUPZDz45cmnhZkpQB1
 m0y1CnFAEgwtrLpIAVEe06SmhQmDWQ0cNgnIkZHLDbulp/2MIT5+UTlZ4mwkbMM7zOH5
 3+clI4NpRi9RwK+aFPB5eiyunZWfKrk7cHjO7nBFBloabPu6WRKpxjBpzMH9wmAn7YhF
 Khrw==
X-Gm-Message-State: AOAM532K5CQTVL1JRkaRJ71OcBwfUrYdVg3FWSBubuH9D6rMucwrPU+5
 pc/o8HJ3uKh6A8u2qGz2gQA3guhQy7AqDtoD6V8=
X-Google-Smtp-Source: ABdhPJw36df01lrqNRxLomcK/CNnHRnHhShDjkodAjqoAqexY1zvB0f+7y/wiKycCFZMffcH2YtETxGB4dmidJZpuNU=
X-Received: by 2002:a17:906:c013:: with SMTP id
 e19mr35154591ejz.389.1626941801173; 
 Thu, 22 Jul 2021 01:16:41 -0700 (PDT)
MIME-Version: 1.0
References: <CH2PR10MB42314D13E3A8200852898192A1E49@CH2PR10MB4231.namprd10.prod.outlook.com>
In-Reply-To: <CH2PR10MB42314D13E3A8200852898192A1E49@CH2PR10MB4231.namprd10.prod.outlook.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 22 Jul 2021 12:16:28 +0400
Message-ID: <CAJ+F1CLRP6gypvAdjOoz_CcgCQXn6uJxR2LrV25=c0Mi169X=A@mail.gmail.com>
To: Luke Kim <luke@spiceai.io>
Subject: Re: [Spice-devel] github.com/spice
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
Cc: "spice-devel@freedesktop.org" <spice-devel@freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1588729201=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1588729201==
Content-Type: multipart/alternative; boundary="000000000000211ad005c7b1e82d"

--000000000000211ad005c7b1e82d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Luke

On Thu, Jul 22, 2021 at 11:11 AM Luke Kim <luke@spiceai.io> wrote:

> Hi!
>
>
>
> I=E2=80=99m the founder of a new AI startup called Spice AI.
>
>
>
> We noticed that the SPICE project at github.com/spice looks like it might
> not be in use anymore, and that you might be using GitLab.
>
>
>
> If that=E2=80=99s the case, would you consider a conversation on transfer=
ring the
> GitHub org over to us?
>
>
>

We reserved the name on github a long time ago. There are already several
projects called Spice. It would be better if you named your organization on
github "spiceai" instead. It would avoid the confusion.

Ideally github.com/spice should redirect to the various "spice" projects,
in a wiki-index fashion, but I don't think we can do that yet.


--=20
Marc-Andr=C3=A9 Lureau

--000000000000211ad005c7b1e82d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Luke<br></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 22, 2021 at 11:11 =
AM Luke Kim &lt;<a href=3D"mailto:luke@spiceai.io">luke@spiceai.io</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div style=3D"overflow-wrap: break-word;" lang=3D"EN-US">
<div class=3D"gmail-m_-38452296334923255WordSection1">
<p class=3D"MsoNormal">Hi!<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99m the founder of a new AI startup called S=
pice AI.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">We noticed that the SPICE project at <a href=3D"http=
://github.com/spice" target=3D"_blank">github.com/spice</a> looks like it m=
ight not be in use anymore, and that you might be using GitLab.<u></u><u></=
u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">If that=E2=80=99s the case, would you consider a con=
versation on transferring the GitHub org over to us?<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<br></p></div></div></blockquote><div><br></di=
v><div>We reserved the name on github a long time ago. There are already se=
veral projects called Spice. It would be better if you named your organizat=
ion on github &quot;spiceai&quot; instead. It would avoid the confusion.</d=
iv><div><br></div><div>Ideally <a href=3D"http://github.com/spice">github.c=
om/spice</a> should redirect to the various &quot;spice&quot; projects, in =
a wiki-index fashion, but I don&#39;t think we can do that yet.<br></div></=
div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature"=
>Marc-Andr=C3=A9 Lureau<br></div></div>

--000000000000211ad005c7b1e82d--

--===============1588729201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1588729201==--
