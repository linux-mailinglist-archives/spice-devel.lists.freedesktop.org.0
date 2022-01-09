Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EEC488BA1
	for <lists+spice-devel@lfdr.de>; Sun,  9 Jan 2022 19:30:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E059210E47F;
	Sun,  9 Jan 2022 18:30:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8B8410E47F
 for <spice-devel@lists.freedesktop.org>; Sun,  9 Jan 2022 18:30:33 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id b7so15644010edj.9
 for <spice-devel@lists.freedesktop.org>; Sun, 09 Jan 2022 10:30:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=r2O6mT6xyG2aPk2JExLSh66TEMmXQHikimIrK3Qib1M=;
 b=WfPvlWTaLWq1ikiqDptvOJIjo7A/zSzUUNeMzVXDv+VoISRJShlIEibMhHjbQUg9Rj
 K4XZ0oNaL9pdZKwZpJzW9PRw5i2yjiaGhfuA349gd2gemx9PSZspe6LbNA241fdZIQwc
 Xs608pTeuK75saz2Amfoozb7T8PyZPWzO83tsjS+k3kzLEZ7DpCf7gQsju3TI9Z/XFf/
 0hgZeINuc8UqNBQD8B4orMXefqYBqvzn9rWscSBDB8tMNKYHKwE7u/oTEtFOtUcyb9Za
 Ofj6/uC0WIgXYF12oAQYQlSqbN4B1Y+Mm1SfS9RbbYcepnCCYevVStxr7vaZvXHhCMzK
 Lszw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=r2O6mT6xyG2aPk2JExLSh66TEMmXQHikimIrK3Qib1M=;
 b=TT0fF8a8gpl/RfBNmQL20VIYQOQfgpvOL7INQyvvx8c4KbK1q9q/dQ0rr/2xl4kg+N
 dX93vNg4uiY4pMEmqX5dtA/pWEGlcb5lCWYOlEUrWmqHwSnkAyNNkdnzKCkM67ZZhtkX
 0jZha/eydM8GJPZKOH5jVHTV+mkWWophBHFt8hl7Gjay4kHYI8zfiM4eFGyEuoW5Eq3S
 6BdT5Er/C7d9geL4k9GqHCFpCC1v7lJIQ7EDjsf6fUSmfaPI35eC5KDSb2f7SQSFC7Cb
 pByLzJXgO6bASMV8R3sSAt65dTSSmOeN8DGnWdCU4fgax+VI84YAGEaxb+tyXI28agS3
 M0pQ==
X-Gm-Message-State: AOAM533jJvDMlzuxwTkpIdmMCQOX1ujTHYm6tSRF2CACfU/09hP+Xqx0
 MX+cP4msS0PubBCSJpI8nFYVtxyvyk2TE2udpaQ=
X-Google-Smtp-Source: ABdhPJx33vE1/vtz9jdj8jbaJPCGyV0RnYxED6jAzeQCwCHaZd2HIaHB4n7KWmzBtvjulQ6pdV1f9dk9dMzuJaR34yM=
X-Received: by 2002:a05:6402:2550:: with SMTP id
 l16mr70434589edb.83.1641753032430; 
 Sun, 09 Jan 2022 10:30:32 -0800 (PST)
MIME-Version: 1.0
References: <CAMS0tn14OvBAL3u-0WfnD0DpJFv1HNnq9GVX=oQRgOH0o2678A@mail.gmail.com>
 <CAHt6W4e2_AyX_G6xe=c=_7-gABb9m=yJJsfm5XYs=JbiuYPDiQ@mail.gmail.com>
 <CAMS0tn1OMgQJP92aix6F1QwM+RuyN6=rVRu-WuO9BDy-UuzDvg@mail.gmail.com>
 <CAAg9qJ3L5o=eN0jPcfwdBfaFKMkLo9UAYUzoyay6or91dtKXzQ@mail.gmail.com>
In-Reply-To: <CAAg9qJ3L5o=eN0jPcfwdBfaFKMkLo9UAYUzoyay6or91dtKXzQ@mail.gmail.com>
From: i iordanov <iiordanov@gmail.com>
Date: Sun, 9 Jan 2022 13:29:54 -0500
Message-ID: <CAMS0tn2NHztzBRu1PW=jRNFUHp8Fh6heEN4ufENRZehQhM37_w@mail.gmail.com>
To: Uri Lublin <ulublin@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] error: No free USB channel
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Uri,

Thanks for the clarifications!

iordan

On Sun, Dec 26, 2021 at 6:20 AM Uri Lublin <ulublin@redhat.com> wrote:
>
> Hi iordan,
>
> On Sat, Dec 25, 2021 at 11:49 PM i iordanov <iiordanov@gmail.com> wrote:
> >
> > Hey Frediano,
> >
> > Thanks for responding - so I take it this is a server-side setting
> > (how many channels are attached to the VM)?
>
> Yes, the USB (usbredir) devices are defined in the VM configuration
> (likely via a libvirt domxml file).
> If you need more than 2 USB devices connected to the guest at the same
> time, add more
> such devices to your VM.
>
> >
> > Also, is there a spice-gtk API that may be used to obtain the number
> > of available USB channels at any given time? I.e. the UI of any client
> > application should have a way to inform the user how many "ports" are
> > still available at any point, right?
>
> Both remote-viewer (virt-viewer) and the spicy test tool use
> spice-gtk's usb device widget
> which has this information.
>
> Alternatively, you can get "free-channels" from spice-gtk's usb device ma=
nager
>
> Uri.
>
> >
> > Thanks!
> > iordan
> >
> > On Fri, Dec 24, 2021 at 4:05 AM Frediano Ziglio <freddy77@gmail.com> wr=
ote:
> > >
> > > Il giorno gio 23 dic 2021 alle ore 23:38 i iordanov <iiordanov@gmail.=
com> ha scritto:
> > >>
> > >> Hi guys,
> > >>
> > >> During my testing I've been unable to connect more than 2 USB device=
s
> > >> at a time - could you please help me figure out why that's happening=
?
> > >>
> > >> The backend starts returning error with message "No free USB channel=
",
> > >> but I can't see how to tune the number of USB channels available!
> > >>
> > >> 2021-12-23 15:27:52.608 29721-29760/com.iiordanov.aSPICE
> > >> D/android-service: connect_cb: start
> > >> 2021-12-23 15:27:52.608 29721-29760/com.iiordanov.aSPICE
> > >> I/android-service: connect_cb: successfully redirected device
> > >> 2021-12-23 15:28:00.499 29721-29760/com.iiordanov.aSPICE
> > >> D/android-service: connect_cb: start
> > >> 2021-12-23 15:28:00.499 29721-29760/com.iiordanov.aSPICE
> > >> I/android-service: connect_cb: successfully redirected device
> > >> 2021-12-23 15:28:03.582 29721-29760/com.iiordanov.aSPICE
> > >> D/android-service: connect_cb: start
> > >> 2021-12-23 15:28:03.582 29721-29760/com.iiordanov.aSPICE
> > >> E/android-service: connect_cb: failed to redirect device, error: No
> > >> free USB channel
> > >> 2021-12-23 15:28:06.385 29721-29760/com.iiordanov.aSPICE
> > >> D/android-service: connect_cb: start
> > >> 2021-12-23 15:28:06.385 29721-29760/com.iiordanov.aSPICE
> > >> E/android-service: connect_cb: failed to redirect device, error: No
> > >> free USB channel
> > >> 2021-12-23 15:28:08.634 29721-29760/com.iiordanov.aSPICE
> > >> D/android-service: connect_cb: start
> > >> 2021-12-23 15:28:08.634 29721-29760/com.iiordanov.aSPICE
> > >> E/android-service: connect_cb: failed to redirect device, error: No
> > >> free USB channel
> > >>
> > >> Your help is very appreciated.
> > >>
> > >> Thanks!
> > >> iordan
> > >>
> > >
> > > Hi,
> > >   this is expected. Every USB channel allow to attach one USB device.=
 Is like having 2 physical USB ports on your computer. If you don't use an =
HUB you can attach only 2 USB physical devices. Currently there's no softwa=
re USB hub so one USB device takes one USB channel and by default only 2 US=
B channels are attached to the VM.
> > >
> > > Frediano
> >
> >
> >
> > --
> > The conscious mind has only one thread of execution.
> >
>


--=20
The conscious mind has only one thread of execution.
