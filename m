Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EFA3CBA10
	for <lists+spice-devel@lfdr.de>; Fri, 16 Jul 2021 17:46:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8FDC6E9B6;
	Fri, 16 Jul 2021 15:46:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B980F6E9B6
 for <spice-devel@lists.freedesktop.org>; Fri, 16 Jul 2021 15:46:46 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id oz7so12007980ejc.2
 for <spice-devel@lists.freedesktop.org>; Fri, 16 Jul 2021 08:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PTtYGXginsNHQxvvYL2pIiZKLZ0aSFb7A5nkoJYH1g4=;
 b=L8VZMfkM/eIsYa2Cu3nYUzUj7JRB4XO3psMNwwfxt1Oh+ruHke2uUn1JfEvwqklGWW
 R86/XfYDIz0NuZHc9bEPbaykM1Z9B3mL1dUjzhjAMYDl/RE5og56y/+G706BAbOG235c
 +RPtVqyqYfqAtq7Jj0AsMli5MTE1xjADQwUjTP4d1ywxgwKkvKr6RIz1rdguH99XSGL7
 IY+UyxOtV7DNzSxFtY617ToYvhCIC7teGLzdG002PiIsRymO1BB5/oJqDSHg4ik3AxQ9
 CgwMux82dD1jcN/kbO6h/dotRcRdRJgHSj+bMbv3HwYk0K3iozOB7sXCQavqkzV3s786
 xtcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PTtYGXginsNHQxvvYL2pIiZKLZ0aSFb7A5nkoJYH1g4=;
 b=Jps0kmpVY7JaIkUMKTfGbio8pbGg2zRY4F0Wm4j9+0L4XYXukjQ56Geff2dNGRgnl7
 Zw9DoE2zw9ZVNO0/4MwLqTugj037E47v5+CsISnwz85YniLIgwom1VEDWhcYAt/eZWG5
 tt18nuc+CBR27taW48jf/0K8gMb/+zyvNQzSmezEJNLSzdLcnBCPu003gwulc8Eh9Gx8
 uKFAutUIV23DL/uYpWCOXks9hN4zk+Yb3T6b6NH8nk47MQ4cASLXnFra5kmhqrRUhZ97
 GMOAXwvPm3crs5VsgqbAadUsXk8t4gkCSNmqSmGNfZudX7ufBfURnBbZurY4ZPmKi1v1
 ZIyw==
X-Gm-Message-State: AOAM530Lu8XlVy8MGE2mHCWINDrAccmhZyYnjzXV/PReQgqDNDJkRrDp
 aSnhM1ukY97wG8cKWco4/D9Mg+bgJImMSVnEh6o=
X-Google-Smtp-Source: ABdhPJwMtiiw2wu8Nt8EtcoaHTK2gokzyZOgcpdqaEarHOGeNzQeT9b9dhemvfHwyQFUBY6NhIL3b7ZOyw8Ac8/Y6Ho=
X-Received: by 2002:a17:906:6814:: with SMTP id
 k20mr12384807ejr.381.1626450405420; 
 Fri, 16 Jul 2021 08:46:45 -0700 (PDT)
MIME-Version: 1.0
References: <CANFsObc3nd6AbmeSYr0fhErhB9J+GRKe2QwqdGRWzeyiFa0LnA@mail.gmail.com>
In-Reply-To: <CANFsObc3nd6AbmeSYr0fhErhB9J+GRKe2QwqdGRWzeyiFa0LnA@mail.gmail.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Fri, 16 Jul 2021 19:46:33 +0400
Message-ID: <CAJ+F1C+o8x4OwM86iYKDew6YeBn-5b50yAHnPCfWJ4cPppUGqA@mail.gmail.com>
To: Rex Dieter <rdieter@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1034167039=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1034167039==
Content-Type: multipart/alternative; boundary="000000000000a8f17705c73f7e7f"

--000000000000a8f17705c73f7e7f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

On Fri, Jul 16, 2021 at 7:25 PM Rex Dieter <rdieter@gmail.com> wrote:

> Just a quick followup to old thread
> "Fedora 34 guests can no longer paste from host"
> https://lists.freedesktop.org/archives/spice-devel/2021-April/052351.html
>
> The problem is purely relying on autostart which can be buggy in this
> case, see downstream bug:
> https://bugzilla.redhat.com/show_bug.cgi?id=3D1951580
> and relevant upstream bug,
> https://github.com/systemd/systemd/issues/18791
>
> One workaround is to provide a systemd user unit to run spice-vdagent
> also/instead.  Here's the first iteration I came up with:
>
> https://src.fedoraproject.org/rpms/spice-vdagent/blob/rawhide/f/spice-vda=
gent.service
> (pretty simple)
>
> Feedback is welcome, and I'd encourage you to adopt this upstream too.
> Thanks.
>
>
That looks reasonable to me. X-GNOME-Autostart-Phase=3DWindowManager was no=
t
meant to be a generic solution anyway. It seems reasonable to have a
systemd session solution nowadays. Even if both compete at startup, only
one should stay.

Can you make a merge request on gitlab?

--=20
Marc-Andr=C3=A9 Lureau

--000000000000a8f17705c73f7e7f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi<br></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 16, 2021 at 7:25 PM Rex=
 Dieter &lt;<a href=3D"mailto:rdieter@gmail.com">rdieter@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Just a quick followup to old thr=
ead<br>&quot;Fedora 34 guests can no longer paste from host&quot;</div><div=
 dir=3D"ltr"><a href=3D"https://lists.freedesktop.org/archives/spice-devel/=
2021-April/052351.html" target=3D"_blank">https://lists.freedesktop.org/arc=
hives/spice-devel/2021-April/052351.html</a><br></div><div dir=3D"ltr"><br>=
</div><div>The problem is purely relying on autostart which can be buggy in=
 this case, see downstream bug:</div><div><a href=3D"https://bugzilla.redha=
t.com/show_bug.cgi?id=3D1951580" target=3D"_blank">https://bugzilla.redhat.=
com/show_bug.cgi?id=3D1951580</a><br>and relevant=C2=A0upstream bug,<br><a =
href=3D"https://github.com/systemd/systemd/issues/18791" target=3D"_blank">=
https://github.com/systemd/systemd/issues/18791</a><br></div><div dir=3D"lt=
r"><br></div><div>One workaround is to provide a systemd user unit to run s=
pice-vdagent also/instead.=C2=A0 Here&#39;s the first iteration=C2=A0I came=
 up with:</div><div><a href=3D"https://src.fedoraproject.org/rpms/spice-vda=
gent/blob/rawhide/f/spice-vdagent.service" target=3D"_blank">https://src.fe=
doraproject.org/rpms/spice-vdagent/blob/rawhide/f/spice-vdagent.service</a>=
<br>(pretty simple)</div><div><br></div><div>Feedback is welcome, and I&#39=
;d encourage you to adopt this upstream too.=C2=A0 Thanks.</div><br clear=
=3D"all"></div></div></blockquote><div><br></div><div>That looks reasonable=
 to me. X-GNOME-Autostart-Phase=3DWindowManager was not meant to be a gener=
ic solution anyway. It seems reasonable to have a systemd session solution =
nowadays. Even if both compete at startup, only one should stay.</div><div>=
<br></div><div>Can you make a merge request on gitlab?<br></div></div><br>-=
- <br><div dir=3D"ltr" class=3D"gmail_signature">Marc-Andr=C3=A9 Lureau<br>=
</div></div>

--000000000000a8f17705c73f7e7f--

--===============1034167039==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1034167039==--
