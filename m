Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7C43CBA62
	for <lists+spice-devel@lfdr.de>; Fri, 16 Jul 2021 18:11:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 254946E9BF;
	Fri, 16 Jul 2021 16:11:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E620F6E9BF
 for <spice-devel@lists.freedesktop.org>; Fri, 16 Jul 2021 16:11:17 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id a12so16806728lfb.7
 for <spice-devel@lists.freedesktop.org>; Fri, 16 Jul 2021 09:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N8CIf0pzInlP2zZgmPN0nQl351za4tLOplU+2A6Bxgo=;
 b=Kk6Yq0THnoIcummACeWLCiA+/J8EY4G5Wk8vDKRIw834aoe8/CPt/B9h6SYpzhqXPL
 fJc1JkXSgwyp9JKWxQnj/QIy6B8jRPcrclab4rfB+1bO/ZLAU9k7OTYbEP9XOSOVxTM4
 APaK21QCxvIk3zuaHecjBguBZA696tD7Je9tbAIH5vv6H5JWZx6tdxSVauogHViDZru9
 tG9SGrfx8vWWaPWgDzo44L1HBNv61mOnRq4wtLbckZMy6XG+uRg55P2/KcyWiSN+3wSr
 MWLQmmCESmze+QtcP63OxOwLDGrNjkRPnfTwheLu8WrNQkkto4qPAPaLXNrm2Hu8x4NU
 pHbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N8CIf0pzInlP2zZgmPN0nQl351za4tLOplU+2A6Bxgo=;
 b=DMm9dkN7XIlQGGQBGeAQZHYU/omrdSILN7YxyUn4MqsN0Viz822lw2ITk49zdAeqRo
 BIEsQSNv0/hHL1mOtnkTSiU9dOsOe8mhI88ifbmrV3SKbXNjZbrQTkdRUxK8TpOWWIAN
 W7pLQzOE9M8U6NgjGbP+rFsQwcjyWV3Wh98TpdMDrXz8cDDDmOQyG0ss894WLm7K+TQq
 mgoAvPA2gozeUC4GgsWGJcz0W2e6NT9NeA5w3aKhYm7+2rwTFvjNtestC+OHCT1PPdzd
 XHX5a9JsKEYT80ottMWLK6PxF3GyheL1WoNTuYOfQbSGlLvVDyn++WNUehvGLFEQ+4s3
 0YKw==
X-Gm-Message-State: AOAM533pqDeNSngCTKZUlgP8NCSK0Hi2bSE6CFJCJxG4O86WjJkgmYmH
 ppxMEn0LZzRIJqiVdLAyMch7UvdwCOK2yatKfOU=
X-Google-Smtp-Source: ABdhPJz380UHWFjLcpMZVUVxYyKtZzZChgklWnLmDN4XmBg67HK3EV1AkBMd4Y5Iq7Aydu6hSgMctnAn29gvRTBb7Jk=
X-Received: by 2002:a19:8642:: with SMTP id i63mr8509565lfd.156.1626451876304; 
 Fri, 16 Jul 2021 09:11:16 -0700 (PDT)
MIME-Version: 1.0
References: <CANFsObc3nd6AbmeSYr0fhErhB9J+GRKe2QwqdGRWzeyiFa0LnA@mail.gmail.com>
 <CAJ+F1C+o8x4OwM86iYKDew6YeBn-5b50yAHnPCfWJ4cPppUGqA@mail.gmail.com>
In-Reply-To: <CAJ+F1C+o8x4OwM86iYKDew6YeBn-5b50yAHnPCfWJ4cPppUGqA@mail.gmail.com>
From: Rex Dieter <rdieter@gmail.com>
Date: Fri, 16 Jul 2021 11:11:04 -0500
Message-ID: <CANFsObdqc8GUrofQu5r7f4YTKZp9VAzNFZNkLSjX53xvOPKPdA@mail.gmail.com>
To: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Subject: Re: [Spice-devel] spice-vdagent user systemd unit
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0590438571=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0590438571==
Content-Type: multipart/alternative; boundary="00000000000054dc7305c73fd635"

--00000000000054dc7305c73fd635
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 16, 2021 at 10:46 AM Marc-Andr=C3=A9 Lureau <
marcandre.lureau@gmail.com> wrote:

>
> On Fri, Jul 16, 2021 at 7:25 PM Rex Dieter <rdieter@gmail.com> wrote:
>
>> Just a quick followup to old thread
>> "Fedora 34 guests can no longer paste from host"
>> https://lists.freedesktop.org/archives/spice-devel/2021-April/052351.htm=
l
>>
>> The problem is purely relying on autostart which can be buggy in this
>> case, see downstream bug:
>> https://bugzilla.redhat.com/show_bug.cgi?id=3D1951580
>> and relevant upstream bug,
>> https://github.com/systemd/systemd/issues/18791
>>
>> One workaround is to provide a systemd user unit to run spice-vdagent
>> also/instead.  Here's the first iteration I came up with:
>>
>> https://src.fedoraproject.org/rpms/spice-vdagent/blob/rawhide/f/spice-vd=
agent.service
>> (pretty simple)
>>
>> Feedback is welcome, and I'd encourage you to adopt this upstream too.
>> Thanks.
>>
>>
> That looks reasonable to me. X-GNOME-Autostart-Phase=3DWindowManager was =
not
> meant to be a generic solution anyway. It seems reasonable to have a
> systemd session solution nowadays. Even if both compete at startup, only
> one should stay.
>
> Can you make a merge request on gitlab?
>
>
Here you go,
https://gitlab.freedesktop.org/spice/linux/vd_agent/-/merge_requests/37

-- Rex

--00000000000054dc7305c73fd635
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 16, 2021 at 10:46 AM Marc=
-Andr=C3=A9 Lureau &lt;<a href=3D"mailto:marcandre.lureau@gmail.com">marcan=
dre.lureau@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 16, 2021=
 at 7:25 PM Rex Dieter &lt;<a href=3D"mailto:rdieter@gmail.com" target=3D"_=
blank">rdieter@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">=
Just a quick followup to old thread<br>&quot;Fedora 34 guests can no longer=
 paste from host&quot;</div><div dir=3D"ltr"><a href=3D"https://lists.freed=
esktop.org/archives/spice-devel/2021-April/052351.html" target=3D"_blank">h=
ttps://lists.freedesktop.org/archives/spice-devel/2021-April/052351.html</a=
><br></div><div dir=3D"ltr"><br></div><div>The problem is purely relying on=
 autostart which can be buggy in this case, see downstream bug:</div><div><=
a href=3D"https://bugzilla.redhat.com/show_bug.cgi?id=3D1951580" target=3D"=
_blank">https://bugzilla.redhat.com/show_bug.cgi?id=3D1951580</a><br>and re=
levant=C2=A0upstream bug,<br><a href=3D"https://github.com/systemd/systemd/=
issues/18791" target=3D"_blank">https://github.com/systemd/systemd/issues/1=
8791</a><br></div><div dir=3D"ltr"><br></div><div>One workaround is to prov=
ide a systemd user unit to run spice-vdagent also/instead.=C2=A0 Here&#39;s=
 the first iteration=C2=A0I came up with:</div><div><a href=3D"https://src.=
fedoraproject.org/rpms/spice-vdagent/blob/rawhide/f/spice-vdagent.service" =
target=3D"_blank">https://src.fedoraproject.org/rpms/spice-vdagent/blob/raw=
hide/f/spice-vdagent.service</a><br>(pretty simple)</div><div><br></div><di=
v>Feedback is welcome, and I&#39;d encourage you to adopt this upstream too=
.=C2=A0 Thanks.</div><br clear=3D"all"></div></div></blockquote><div><br></=
div><div>That looks reasonable to me. X-GNOME-Autostart-Phase=3DWindowManag=
er was not meant to be a generic solution anyway. It seems reasonable to ha=
ve a systemd session solution nowadays. Even if both compete at startup, on=
ly one should stay.</div><div><br></div><div>Can you make a merge request o=
n gitlab?<br></div></div><div dir=3D"ltr"><br></div></div></blockquote><div=
><br></div><div>Here you go,<br><a href=3D"https://gitlab.freedesktop.org/s=
pice/linux/vd_agent/-/merge_requests/37">https://gitlab.freedesktop.org/spi=
ce/linux/vd_agent/-/merge_requests/37</a>=C2=A0</div><div><br></div><div>--=
 Rex</div></div></div>

--00000000000054dc7305c73fd635--

--===============0590438571==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0590438571==--
