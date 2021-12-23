Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F2F47E8AE
	for <lists+spice-devel@lfdr.de>; Thu, 23 Dec 2021 21:19:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D085910E257;
	Thu, 23 Dec 2021 20:19:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com
 [IPv6:2607:f8b0:4864:20::22a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E00B410E257
 for <spice-devel@lists.freedesktop.org>; Thu, 23 Dec 2021 20:19:46 +0000 (UTC)
Received: by mail-oi1-x22a.google.com with SMTP id be32so10484580oib.11
 for <spice-devel@lists.freedesktop.org>; Thu, 23 Dec 2021 12:19:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=wPoh23aRSCBUsU+9lqWqRkqkDva9Fwn8ax6M4RF4RgQ=;
 b=R30waxxWo4Wd9/E/oWqdJDNy3ZWeZ/glpkqcMaUY3/59eBx6nW/PkaChaqn4/d6+Q7
 XJiOy5IVOXdsvRFfa1w1Fk0h93I5QZ0/HrbiO0eD1Hx0C9PW4R0xctD/LVby1LL0LlcE
 UJ58YTGDDXYBrJS3WSSBHKDUY/eB8Oc0yQHXkeMT2xRbdOun7H0f+UccztHKfySFksOS
 0EKtaARSgE0bunpwGxJ16fDimgaMStsAxRacpnPR2Q7m9c8sgvS3bXTZVJ0F1yXCzVyM
 iBMGsqSW/Qxy6Vh5SgXk49fxc4Hjq9G2y+N5ddqZ/7UlWg6/Pu6BevveWdVx3mOaM+Nt
 RdeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wPoh23aRSCBUsU+9lqWqRkqkDva9Fwn8ax6M4RF4RgQ=;
 b=whSczuWSr86DhH8Ds1Xh1SC3/s5VycEYqtx4V7uBlasHSMM9u9fLNiSvf1mT+JDnHu
 3QjCULFs7SHY5D86F4Ag0e03EPFBrdYkEATr/yyVCBlm8O5Ex3dNx8x7y8nRZkgc+c/n
 yA8SS/ll1n7HviTQ+sRTDhbkF3KkzwM3lSbeK4HhKJD/oMZvILDLXTk9/j5nE9o8VdjA
 TxLTBb3r4xo74bS1/zlFnHh2ex62foa8awH50jSwvikfJx1DI1JZWzHVWmnPw1J1c6g3
 9qHUmVzq0bEa00IO6iNRGgChUIY6qCNdR47rKBsI0pLDjyDxnqch7D2BduTqb9lo8LeD
 Y1mA==
X-Gm-Message-State: AOAM532Z3HM6myFeGcpRLt1b2fMrl9O9vRUada4+8ai3NbsfT3aOL26U
 Hr16RKJVNdf7dKFmMClwcZIgYCrzwzQXPzE6BDo=
X-Google-Smtp-Source: ABdhPJzZDRV6QO4AWvLbzAolaEU2ao68V6yEE0xzpH2MQoiiDJI824UmjhWUKW2B+YRqY1mYXC+dPsDP82wMhH5Ikaw=
X-Received: by 2002:a05:6808:1647:: with SMTP id
 az7mr2904374oib.179.1640290786129; 
 Thu, 23 Dec 2021 12:19:46 -0800 (PST)
MIME-Version: 1.0
References: <CAMS0tn2RYzqoFQhYXaGRSnOXe9t_Lnz9t2kBah7VL+2H0R57hQ@mail.gmail.com>
 <CAAg9qJ0DKP8Ki7352yp9-iXuRvY13fHfVi4bUuyy-3pGi4xEUg@mail.gmail.com>
 <CAMS0tn2BosyXYQjR9zLvZF+DNCHB2TWR0Zuzw8hMQHc7o_X1Fw@mail.gmail.com>
 <CAAg9qJ3CnPLNedyh+uy4Lk1rLK=bosft70GD7NDx-eAVDODz8w@mail.gmail.com>
 <CAMS0tn1cSZPaDCjzpXh6xnU2yk=PDshOVM8z-Tasc33crg=boQ@mail.gmail.com>
 <CAHt6W4cKt-LkBwueG1yWL3_F8jUw_rfirOFDRXSR23FQJQm6Zw@mail.gmail.com>
In-Reply-To: <CAHt6W4cKt-LkBwueG1yWL3_F8jUw_rfirOFDRXSR23FQJQm6Zw@mail.gmail.com>
From: i iordanov <iiordanov@gmail.com>
Date: Thu, 23 Dec 2021 15:19:09 -0500
Message-ID: <CAMS0tn3FF_xwTNzqXxouN6f6GOHmD5k-rU6QyZYBozo-n81Gfg@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] attaching a USB device by libusb_device or
 libusb_device_handle on Android
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>, support@morpheusly.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Frediano,

Thanks for your feedback, that's exactly what I was looking for ahead
of opening a MR.

On Thu, Dec 23, 2021 at 4:21 AM Frediano Ziglio <freddy77@gmail.com> wrote:
>   could you open a MR?

Is this the right copy of the repo to make an MR against?
https://gitlab.freedesktop.org/spice/spice-gtk

> I suppose you are speaking about allocate_device_for_file_descriptor. It'=
s not called anywhere in the code so I suppose it is a public API. In this =
case it should start with something like spice_. Also it should have a bit =
more documentation and be listed in src/spice-glib-sym-file. But src/usb-ba=
ckend.h is not a public header and we don't want it to be so it does not se=
em a good idea to declare there.

That makes sense. However, if in a new implementation it would make
sense for UsbDeviceManager to use some functionality from UsbBackend,
I'd still need to declare it in usb-backend.h, right? Just as an
aside, is there a way to make a method available to UsbDeviceManager
but unavailable publicly?

> This seems like a bad idea. It exposes something internal. Why not having=
 just one additional function in device manager like
>
> gboolean
> spice_usb_device_manager_add_device_from_fd(SpiceUsbDeviceManager *manage=
r, GError **err);

This is a good suggestion. You're essentially proposing for
UsbDeviceManager (which is public) to be the one exposing the
functionality and for it to potentially use some functionality left in
UsbBackend (which is private) internally. I'll refactor.

> The device could be communicated using device_added signal (if results if=
 not FALSE), error can be returned, no additional interface to expose.
> Or returning directory a SpiceUsbDevice* instead of a gboolean (but in th=
is case interface will have to be blocking).

Any pros / cons with either one? Any preference? If I return
SpiceUsbDevice * directly, there is no need for the err, parameter and
I could just return NULL device if something went wrong. Is there any
preference or rule of thumb that the project generally follows?

Thanks!
iordan
