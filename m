Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EACE0584DF5
	for <lists+spice-devel@lfdr.de>; Fri, 29 Jul 2022 11:16:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA8A310E48E;
	Fri, 29 Jul 2022 09:16:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com
 [IPv6:2001:4860:4864:20::2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8972C10E48E
 for <spice-devel@lists.freedesktop.org>; Fri, 29 Jul 2022 09:16:28 +0000 (UTC)
Received: by mail-oa1-x2f.google.com with SMTP id
 586e51a60fabf-10cf9f5b500so5330379fac.2
 for <spice-devel@lists.freedesktop.org>; Fri, 29 Jul 2022 02:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+cmX0cpx7xR/lIzeGxX+bj+Yf/OaxhQpPT8WplPdr5U=;
 b=YgnRaLZoVFxPeYBrz1Vz8XZ2GxAvH/8r+actDQuNoq5ZKszcd2SYrRRFwTTpp58hiw
 iA4QBRdiz2eHFCjuc43yZ/fes9ZQSOxwIflMIpmNhmpXBDCh7PTRxOrfoqBGl1EqTcTo
 G19A+p/Fq+iPjc7uhllAF+N1ahUr2hMKFMwCVX3gCu22CyEBgYbekZjktigBeojAftv4
 IFST2Q78OeAqAlmsRVaAlHH+aCZLvvZHPCIRWTY4O+42mJaSGHRgdGDyqGU7MZyFPVRR
 RpVDLSEyPVZC6Cj7KED4/Taq846M+1DK3M6Xxqs7rxyuAWvMON+J/Q920Ll3sgDnHttb
 8gsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+cmX0cpx7xR/lIzeGxX+bj+Yf/OaxhQpPT8WplPdr5U=;
 b=U7OgEtxBpauoFp/JEF10etvNpLkuRatqdfmeJ8azfGLTsu8xx1kaNMZ5ox1Ghw7280
 lSkS9I4eCUu6k2wkYtPA4u96f/Jhck5PRFPg31/lCexuD1RHaTtlskyP861udgOfOqUU
 KNzkQUTZx1gcATpLgD7PRgq0XtTMsTFY24AN7JHrONX4CQAyKnFbogTMzITMqk2mg17i
 afqIUjCRwcW40/TenFiyUQwnhfhF4KWRMyLtOjdlQWL2gmvBT7mHCHmyIgEcitXVXxUk
 azhz3fTaw4pGR+IKEdlEqMHvl0dWSFrNDTqYuiAESDCy+9p4DITjH9VeKurPSozLYNqa
 crvA==
X-Gm-Message-State: AJIora+IrAovoaz8ouvBes17nf5IA3ptJve6qrqAJCx0BMhiejUqjtYy
 wWvnZQuX3oSS2H90cwiAk6DMQ+HhDp7ILWGF/Ao=
X-Google-Smtp-Source: AGRyM1uLGAb06SiwdZfN6DjvJQvY5u/CCSyeKSVf1LNmnnehsMg0sY385+mHg0YZirP5Tet8bFs4vGx6aFyTG7OQLJU=
X-Received: by 2002:a05:6870:c598:b0:108:b7e2:ac8 with SMTP id
 ba24-20020a056870c59800b00108b7e20ac8mr1678319oab.1.1659086187679; Fri, 29
 Jul 2022 02:16:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAKJvYZHs-ZZHq0py8BT5ae=EMUdghywz5WzNvuZzTYKvc5cJWA@mail.gmail.com>
In-Reply-To: <CAKJvYZHs-ZZHq0py8BT5ae=EMUdghywz5WzNvuZzTYKvc5cJWA@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 29 Jul 2022 10:16:16 +0100
Message-ID: <CAHt6W4e0gqME1wHsdQWC+-xXx58vg_Kam_5A-w29NxbwV0X-mw@mail.gmail.com>
To: James Miller <jamesstewartmiller@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] irc
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno ven 29 lug 2022 alle ore 10:14 James Miller
<jamesstewartmiller@gmail.com> ha scritto:
>
> Hi,  I wonder if the irc address on the website contact page (https://www=
.spice-space.org/contact.html) needs updating?
>
> I can't find irc.gnome.org - I think they now use matrix.
>
> I want to know if there is anyway to manage usb-redirection to a libvirt =
kvm vm from the command line.  In particular, I want to redirect a usb key =
(yubikey) to the virt-manager managed vm, from the command line, as I need =
to deauthorise the key (echoing 0 to a file under a path below sys) before =
redirecting it.
>
> Many thanks in advance for any help you can offer.
>
> Cheers
>
> James

Hi James,
   yes, you are right, it's on GIMPnet.

Frediano
