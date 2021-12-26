Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B3247F8C2
	for <lists+spice-devel@lfdr.de>; Sun, 26 Dec 2021 21:07:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2447210E230;
	Sun, 26 Dec 2021 20:07:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D368310E907
 for <spice-devel@lists.freedesktop.org>; Sun, 26 Dec 2021 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640517632;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ktUayppMQ1bq30gLqn0FsnhQpXo/EGeX82uPobltGA0=;
 b=OGg1mT/kH+bK1wFQFZjsPzLJcfe73q5UXxpqYeUls0iyPGkajECqTUshGvGfBrH+dlb497
 yi1fn4e4+VLGhnGQYu+uZ9krm3SM3YmLgVujWcBONoo3aVvcR1ZqD/OjJUqfxFF+ZKSio1
 HvkRCLt+yYeOsaQH0ufgVSTjpuKmexA=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-194-TNVJcCjEPmCDh2CMpTJnxw-1; Sun, 26 Dec 2021 06:20:29 -0500
X-MC-Unique: TNVJcCjEPmCDh2CMpTJnxw-1
Received: by mail-lj1-f197.google.com with SMTP id
 w17-20020a05651c119100b0022dcdb204b9so379684ljo.5
 for <spice-devel@lists.freedesktop.org>; Sun, 26 Dec 2021 03:20:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ktUayppMQ1bq30gLqn0FsnhQpXo/EGeX82uPobltGA0=;
 b=XZPXctq5+9GlV3aAJqOW6utG/d+XdmsHz0KYka9DQVoAHYfo4eKdIw1jYQNRBh5o01
 AF4MrNwXgVG6oIoEze1lYfJzKgQ5Z9UL0wFuSvbmWH8o8kVNOcEFHu6O9PoAiIRBS0Hf
 lIpJvjAH/4oyxJw5ewN1hu60PP+1pr8FWmUYk10pcVfBKLygxzwwWDybCG4jpWJwUifI
 jFA2kwWp+MSB2zgrAtdmFfv1ah2XL5YZM9gZSZun5v+rUS/hccBt/8d/n496MGpW4tqg
 43tyHLQQVS/iLngJaNPFROR8Jr5bCmLZ3wueAxhjcmCHfIFbiIkcyrmzJFHq8EYBSrxl
 T3bA==
X-Gm-Message-State: AOAM533ZWOESo8r8XMZJ+/JmiWLj785rNLrEAYb+KEeVfee0yGlwzcZo
 qnBapFiYbANLiL1wlJdsGRidSDDDGQxUH+N34a4zg9f68bsArHXNj2gi6K9Oe7nmVeLeCWqpWV3
 cdSeF0f5SSHZURiKAmcerbILbgAtE/fOlaNGhkD+jYwgJ91Q=
X-Received: by 2002:a05:6512:260c:: with SMTP id
 bt12mr11329593lfb.506.1640517627374; 
 Sun, 26 Dec 2021 03:20:27 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyOyXydnvtj2fm1L2XTFuVDga/0zoOpOfuYsimAU8ewTFOxneSBH3zXaypkrjsGHIXoa/C/YVJJuabhwAIKrPc=
X-Received: by 2002:a05:6512:260c:: with SMTP id
 bt12mr11329572lfb.506.1640517627087; 
 Sun, 26 Dec 2021 03:20:27 -0800 (PST)
MIME-Version: 1.0
References: <CAMS0tn14OvBAL3u-0WfnD0DpJFv1HNnq9GVX=oQRgOH0o2678A@mail.gmail.com>
 <CAHt6W4e2_AyX_G6xe=c=_7-gABb9m=yJJsfm5XYs=JbiuYPDiQ@mail.gmail.com>
 <CAMS0tn1OMgQJP92aix6F1QwM+RuyN6=rVRu-WuO9BDy-UuzDvg@mail.gmail.com>
In-Reply-To: <CAMS0tn1OMgQJP92aix6F1QwM+RuyN6=rVRu-WuO9BDy-UuzDvg@mail.gmail.com>
From: Uri Lublin <ulublin@redhat.com>
Date: Sun, 26 Dec 2021 13:20:16 +0200
Message-ID: <CAAg9qJ3L5o=eN0jPcfwdBfaFKMkLo9UAYUzoyay6or91dtKXzQ@mail.gmail.com>
To: i iordanov <iiordanov@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ulublin@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Sun, 26 Dec 2021 20:07:38 +0000
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

Hi iordan,

On Sat, Dec 25, 2021 at 11:49 PM i iordanov <iiordanov@gmail.com> wrote:
>
> Hey Frediano,
>
> Thanks for responding - so I take it this is a server-side setting
> (how many channels are attached to the VM)?

Yes, the USB (usbredir) devices are defined in the VM configuration
(likely via a libvirt domxml file).
If you need more than 2 USB devices connected to the guest at the same
time, add more
such devices to your VM.

>
> Also, is there a spice-gtk API that may be used to obtain the number
> of available USB channels at any given time? I.e. the UI of any client
> application should have a way to inform the user how many "ports" are
> still available at any point, right?

Both remote-viewer (virt-viewer) and the spicy test tool use
spice-gtk's usb device widget
which has this information.

Alternatively, you can get "free-channels" from spice-gtk's usb device mana=
ger

Uri.

>
> Thanks!
> iordan
>
> On Fri, Dec 24, 2021 at 4:05 AM Frediano Ziglio <freddy77@gmail.com> wrot=
e:
> >
> > Il giorno gio 23 dic 2021 alle ore 23:38 i iordanov <iiordanov@gmail.co=
m> ha scritto:
> >>
> >> Hi guys,
> >>
> >> During my testing I've been unable to connect more than 2 USB devices
> >> at a time - could you please help me figure out why that's happening?
> >>
> >> The backend starts returning error with message "No free USB channel",
> >> but I can't see how to tune the number of USB channels available!
> >>
> >> 2021-12-23 15:27:52.608 29721-29760/com.iiordanov.aSPICE
> >> D/android-service: connect_cb: start
> >> 2021-12-23 15:27:52.608 29721-29760/com.iiordanov.aSPICE
> >> I/android-service: connect_cb: successfully redirected device
> >> 2021-12-23 15:28:00.499 29721-29760/com.iiordanov.aSPICE
> >> D/android-service: connect_cb: start
> >> 2021-12-23 15:28:00.499 29721-29760/com.iiordanov.aSPICE
> >> I/android-service: connect_cb: successfully redirected device
> >> 2021-12-23 15:28:03.582 29721-29760/com.iiordanov.aSPICE
> >> D/android-service: connect_cb: start
> >> 2021-12-23 15:28:03.582 29721-29760/com.iiordanov.aSPICE
> >> E/android-service: connect_cb: failed to redirect device, error: No
> >> free USB channel
> >> 2021-12-23 15:28:06.385 29721-29760/com.iiordanov.aSPICE
> >> D/android-service: connect_cb: start
> >> 2021-12-23 15:28:06.385 29721-29760/com.iiordanov.aSPICE
> >> E/android-service: connect_cb: failed to redirect device, error: No
> >> free USB channel
> >> 2021-12-23 15:28:08.634 29721-29760/com.iiordanov.aSPICE
> >> D/android-service: connect_cb: start
> >> 2021-12-23 15:28:08.634 29721-29760/com.iiordanov.aSPICE
> >> E/android-service: connect_cb: failed to redirect device, error: No
> >> free USB channel
> >>
> >> Your help is very appreciated.
> >>
> >> Thanks!
> >> iordan
> >>
> >
> > Hi,
> >   this is expected. Every USB channel allow to attach one USB device. I=
s like having 2 physical USB ports on your computer. If you don't use an HU=
B you can attach only 2 USB physical devices. Currently there's no software=
 USB hub so one USB device takes one USB channel and by default only 2 USB =
channels are attached to the VM.
> >
> > Frediano
>
>
>
> --
> The conscious mind has only one thread of execution.
>

