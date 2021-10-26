Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3463743BCA3
	for <lists+spice-devel@lfdr.de>; Tue, 26 Oct 2021 23:45:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14B646E4A5;
	Tue, 26 Oct 2021 21:45:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB4E36E4A5
 for <spice-devel@lists.freedesktop.org>; Tue, 26 Oct 2021 21:45:36 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 g205-20020a1c20d6000000b0032cc6bbd505so3862826wmg.5
 for <spice-devel@lists.freedesktop.org>; Tue, 26 Oct 2021 14:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bogomips.com; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=k6LBJBvyg1qsIa4FfTS3s27lHsfohJSN/g+1UmJ7Mnk=;
 b=BHCFiW9jw1hYlSNtJ16la3juCJPfS011PcybamTA8+wILb/BB+5FAC6+pHv9QV0li1
 hwwp4+ro+v0ujrN+hXLzVV2qMRVfD3L2n3Rgadzlqh77WjvfEQ0eNeE0PpFsyIld1B3K
 AwwL3ziYZXWedWKpH/aHMG422WXa+n7Obbzk0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=k6LBJBvyg1qsIa4FfTS3s27lHsfohJSN/g+1UmJ7Mnk=;
 b=1CbQns+tZVX2yN67ptyonu60NposcTOq78Jg5fQRSS5LVd1WqevTvP1SRQWWEz/Ws2
 o+w8Abg4Wil+2zH1lFP7tzIAtnTTaANQ5saad6fJPYy+eXG369UTPELT7uZkb3WyCWFP
 vuqIArSs7ebSnEfBk3jI57rWQFaG/YRQHJudCXy2uVCWJ8LD3LePlJtafxRk/mG5jiNs
 BFljG9afyUOacL2Tj89w06MHyL4xkFMYfl2x1qqtlluOOkHT+7iA53ctt/nPvcDo2qlg
 2mL2a+qY9R9Z7HwHZrUiSXRGqs/RbA/dnjosMJfnUADoNuF8qfEnz9OgTEE0JSTX/r71
 at6Q==
X-Gm-Message-State: AOAM532siulvcB4m9CKcX73JSK1dVVyV1hG9RN2+G7b5VRQridJbCAOT
 DWii0BoSH6b/ol52eI99XBrOFOqKfaUXnLLen5rlloA2IcYT3TU/
X-Google-Smtp-Source: ABdhPJx26J3HEWdXMdi28mXESNJyeI48f8Xqzv9swdiI7UgaTAvvOW2Ox1V0XJ4NjTv6Fsfvs5H4clxY/G4hwos44MA=
X-Received: by 2002:a7b:c005:: with SMTP id c5mr1376149wmb.155.1635284735028; 
 Tue, 26 Oct 2021 14:45:35 -0700 (PDT)
MIME-Version: 1.0
From: John Paul Morrison <jmorrison@bogomips.com>
Date: Tue, 26 Oct 2021 14:45:23 -0700
Message-ID: <CAO-kYtH=j7gCQVn0P5-UtZog93v1cxvM+dNW43Yow9Ms51BeBw@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000bd01c405cf48658e"
Subject: [Spice-devel] phodav build/run on OSX
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

--000000000000bd01c405cf48658e
Content-Type: text/plain; charset="UTF-8"

Hi

This change is for building phodav on OSX/Darwin

I am able to build and run spice-webdavd on Catalina/Xcode using brew for
meson, glib etc.

- meson defaults to clang and it builds with a warning. Clang
spice-webdav runs but there are more warnings with G_MESSAGES_DEBUG=all.
After a few file/folder operations my Spice client  (Fedora 34,
remote-viewer 9.0) crashed

- Using CC=gcc-11 (homebrew) for meson builds without warnings.
gcc spice-webdav logs fewer warnings at runtime and also works better.  I
can copy files, extract archives etc.  It seems more robust than the clang
build but I got a timeout trying to clone a repository into the webdav
folder.

John Paul


https://gitlab.gnome.org/jpmorrison/phodav/-/commit/ae9ac98c1b3db26070111661aba02594c62d2cef

--000000000000bd01c405cf48658e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><br><div>Hi</div><div><br></div><div>This change is for building phodav =
on OSX/Darwin</div><div><br></div><div>I am able to build and run spice-web=
davd on Catalina/Xcode using brew for meson, glib etc.</div><div><br></div>=
<div>- meson defaults to clang and it builds with a warning. Clang spice-we=
bdav=C2=A0runs but there are more warnings with G_MESSAGES_DEBUG=3Dall.=C2=
=A0 After a few file/folder operations my Spice client=C2=A0 (Fedora 34, re=
mote-viewer 9.0) crashed=C2=A0</div><div><br></div><div>- Using=C2=A0CC=3Dg=
cc-11 (homebrew) for meson builds without warnings.=C2=A0</div><div>gcc spi=
ce-webdav logs fewer warnings at runtime and also works better.=C2=A0 I can=
 copy files, extract archives etc.=C2=A0 It seems more robust than the clan=
g build but I got a timeout trying to clone a repository=C2=A0into the webd=
av folder.</div><div><br></div><div>John Paul</div><div><br></div><div><br>=
</div><div><a href=3D"https://gitlab.gnome.org/jpmorrison/phodav/-/commit/a=
e9ac98c1b3db26070111661aba02594c62d2cef">https://gitlab.gnome.org/jpmorriso=
n/phodav/-/commit/ae9ac98c1b3db26070111661aba02594c62d2cef</a><br></div></d=
iv></div></div></div></div></div></div></div></div>

--000000000000bd01c405cf48658e--
