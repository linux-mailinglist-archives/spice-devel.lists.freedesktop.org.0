Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3092F5C7A
	for <lists+spice-devel@lfdr.de>; Thu, 14 Jan 2021 09:33:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A99BD89FD3;
	Thu, 14 Jan 2021 08:33:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E39E89FD3
 for <spice-devel@lists.freedesktop.org>; Thu, 14 Jan 2021 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1610613232;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=W2WIqKARqnQyzPT0UxGj1oj6YBr6TAgFDibLPIGg82E=;
 b=ZV6DyojOj6MvLXwb66j6R33G2z2wAJxXX/AbqBD+a1CenC4Kq0VTLEBktSrYO1jAnEZfHc
 vTVcriOGUBjk6yEl/5YSdwjMKQGTnAhKH1Spj2MymIFYe042rLcDZi5QARn0eLu9uXEKwX
 2YbPg1gkOTALBrkQW7Wb3LuJGdOuX1o=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-421-O4UcYgHHMbO0ljsrXfSrHw-1; Thu, 14 Jan 2021 03:33:48 -0500
X-MC-Unique: O4UcYgHHMbO0ljsrXfSrHw-1
Received: by mail-qv1-f69.google.com with SMTP id u8so3843695qvm.5
 for <spice-devel@lists.freedesktop.org>; Thu, 14 Jan 2021 00:33:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=W2WIqKARqnQyzPT0UxGj1oj6YBr6TAgFDibLPIGg82E=;
 b=VxuyoyQ+a27zvyp74d9kyO0WoLXYXX6J+wjuEIqB2Ubq17wUEuNhufdtgB3RIGtyoo
 fORlTmsTQ3+mVQsPMa5qUOtUytVlTTeQUvShqDM/7k3Sxp04DvwgUKrdnceQBJhDUktp
 qH+VXBR9UJsBy2w5dW6CkUa/ilqiUKSaZaeLZNOIcENIAhEIfu8zFemlrpd4ZBsQr9HQ
 bZ7CAgnpPlqYjRraXc7/lHSTNwAUFK9aA06Y6lqbJsDSr5/O8iNRIx+D59MLj95vOwMJ
 bvEgHO1vC7M3JXSHPumiMAghwI9qZL7BLpMq8IlZJ2JEBHGmwNlJIZFnV8O2ajlrd99c
 ll3Q==
X-Gm-Message-State: AOAM533MX77N4xguXZfCWyACXV8GjFx/r+mRZCM7PiKZBY7NchrQ2nt/
 OZkpV+lpaMftU5CuY6k85E5sU1NXRO63Kl7/c93Oa7KAqUNNxGhxyeptyY9hNrmv4foFJIAnEJW
 KMx6OtrQwZgh5A2H9v2fWwIr+ALkzYlmYyisql+MNxdA5zHg=
X-Received: by 2002:a5b:410:: with SMTP id m16mr9029798ybp.451.1610613227351; 
 Thu, 14 Jan 2021 00:33:47 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx3uI2GRjxGSfb2wr21wMA5Sp7Av7y/m7eKhI+IYHsdGnGHqkan0KUcEHfxbo4x+mZpkt8NORnFpKjXsk6El8Y=
X-Received: by 2002:a5b:410:: with SMTP id m16mr9029765ybp.451.1610613226978; 
 Thu, 14 Jan 2021 00:33:46 -0800 (PST)
MIME-Version: 1.0
From: Julien Rope <jrope@redhat.com>
Date: Thu, 14 Jan 2021 09:33:36 +0100
Message-ID: <CAD5yKqzjVwvnH+J64cDdgQfqn12s4DHE6_DWANQwwqOBHtN2mA@mail.gmail.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jrope@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] ANNOUNCE spice-vdagent 0.21.0 release
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
Content-Type: multipart/mixed; boundary="===============1791827063=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1791827063==
Content-Type: multipart/alternative; boundary="00000000000043d6dc05b8d81d48"

--00000000000043d6dc05b8d81d48
Content-Type: text/plain; charset="UTF-8"

Hi all,

spice-vdagent 0.21.0 is now available.

In case of bugs or requests, please file them at our issue
tracker:

  https://gitlab.freedesktop.org/groups/spice/-/issues

Release:
   https://www.spice-space.org/download/releases/spice-vdagent-0.21.0.tar.bz2
   https://www.spice-space.org/download/releases/spice-vdagent-0.21.0.tar.bz2.sha256sum
   https://www.spice-space.org/download/releases/spice-vdagent-0.21.0.tar.bz2.sig

And also:
    https://gitlab.freedesktop.org/spice/linux/vd_agent/-/tags/spice-vdagent-0.21.0

These releases are signed with GPG key:

 3D01 51CD 86CB 514B A776  7EDA 72A9 CCB6 7FDA B9AF

Major changes in 0.20.0
=======================

* Security fixes:  CVE-2020-25650, CVE-2020-25651, CVE-2020-25652,
CVE-2020-25653* Fix shutdown issue due to incompatible thread/fork
uses with GLib* Fix mouse pointer issues under Wayland* Fix a crash
when running without dbus (e.g: within containers)* !9  - Introduce
optional GTK4 support for monitor management* !13 - Enable copying
files from client using webdav* Bump spice-protocol dependency to
v0.14.3

Best regards,

Julien

--00000000000043d6dc05b8d81d48
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br clear=3D"all"><div><pre style=3D"white-space:pre-wrap;=
color:rgb(0,0,0)">Hi all,

spice-vdagent 0.21.0 is now available.</pre><pre style=3D"white-space:pre-w=
rap;color:rgb(0,0,0)">In case of bugs or requests, please file them at our =
issue
tracker:

  <a href=3D"https://gitlab.freedesktop.org/groups/spice/-/issues">https://=
gitlab.freedesktop.org/groups/spice/-/issues</a>

Release:
   <a href=3D"https://www.spice-space.org/download/releases/spice-vdagent-0=
.21.0.tar.bz2">https://www.spice-space.org/download/releases/spice-vdagent-=
0.21.0.tar.bz2</a>
   <a href=3D"https://www.spice-space.org/download/releases/spice-vdagent-0=
.21.0.tar.bz2.sha256sum">https://www.spice-space.org/download/releases/spic=
e-vdagent-0.21.0.tar.bz2.sha256sum</a>
   <a href=3D"https://www.spice-space.org/download/releases/spice-vdagent-0=
.21.0.tar.bz2.sig">https://www.spice-space.org/download/releases/spice-vdag=
ent-0.21.0.tar.bz2.sig</a>

And also:
    <a href=3D"https://gitlab.freedesktop.org/spice/linux/vd_agent/-/tags/s=
pice-vdagent-0.21.0">https://gitlab.freedesktop.org/spice/linux/vd_agent/-/=
tags/spice-vdagent-0.21.0</a>=20

These releases are signed with GPG key:

 3D01 51CD 86CB 514B A776  7EDA 72A9 CCB6 7FDA B9AF<br>
Major changes in 0.20.0
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<pre class=3D"gmail-code gmail-highlight" lang=3D"markdown"><span id=3D"gma=
il-LC7" class=3D"gmail-line" lang=3D"markdown"><span class=3D"gmail-p">*</s=
pan> Security fixes:</span>
<span id=3D"gmail-LC8" class=3D"gmail-line" lang=3D"markdown">  CVE-2020-25=
650, CVE-2020-25651, CVE-2020-25652, CVE-2020-25653</span>
<span id=3D"gmail-LC9" class=3D"gmail-line" lang=3D"markdown"><span class=
=3D"gmail-p">*</span> Fix shutdown issue due to incompatible thread/fork us=
es with GLib</span>
<span id=3D"gmail-LC10" class=3D"gmail-line" lang=3D"markdown"><span class=
=3D"gmail-p">*</span> Fix mouse pointer issues under Wayland</span>
<span id=3D"gmail-LC11" class=3D"gmail-line" lang=3D"markdown"><span class=
=3D"gmail-p">*</span> Fix a crash when running without dbus (e.g: within co=
ntainers)</span>
<span id=3D"gmail-LC12" class=3D"gmail-line" lang=3D"markdown"><span class=
=3D"gmail-p">*</span> !9  - Introduce optional GTK4 support for monitor man=
agement</span>
<span id=3D"gmail-LC13" class=3D"gmail-line" lang=3D"markdown"><span class=
=3D"gmail-p">*</span> !13 - Enable copying files from client using webdav</=
span>
<span id=3D"gmail-LC14" class=3D"gmail-line" lang=3D"markdown"><span class=
=3D"gmail-p">*</span> Bump spice-protocol dependency to v0.14.3</span>
</pre>
Best regards,</pre><pre style=3D"white-space:pre-wrap;color:rgb(0,0,0)">Jul=
ien</pre><pre style=3D"white-space:pre-wrap;color:rgb(0,0,0)"><br></pre></d=
iv><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signa=
ture"><div dir=3D"ltr"><div><div dir=3D"ltr"><div></div></div></div></div><=
/div></div>

--00000000000043d6dc05b8d81d48--


--===============1791827063==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1791827063==--

