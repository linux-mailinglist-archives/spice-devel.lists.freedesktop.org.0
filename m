Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C19488BA5
	for <lists+spice-devel@lfdr.de>; Sun,  9 Jan 2022 19:32:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1866A10E4AA;
	Sun,  9 Jan 2022 18:32:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEA7010E4AA
 for <spice-devel@lists.freedesktop.org>; Sun,  9 Jan 2022 18:32:44 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id u21so22206041edd.5
 for <spice-devel@lists.freedesktop.org>; Sun, 09 Jan 2022 10:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iNcG1Cpw8yF/XUQZ9Jrc8vYbOSNO5bq1B/uIwF9xMgo=;
 b=qDIEU6AkYUMVjoZDvZUnaknFIGb3XodIXwSc3DXgtgkJ7RGLLxhQscB6wWoeYpxfPi
 +piiXnXEUAtr3yW9SPG7lYbPV3rCQXzyHoMku0zaSZ6/aCixcX+anPocTQ/WlGf7hEF/
 y5lBTXCygQ6TD35l0PTebf1f26L9cyx3rDTnnG3FIfyj7Sz/A7zn+x92xM2pRb/3H2+1
 zfDucG1Av3m9LUHZhpYpW7W7oXhlRm5Pd4pF9c7to0ljG8i0ANeD6LazwIzcniYen7/9
 R2IUbdH2ma6p3P46m2Tnru+/DCRbKWo5TFwBua4aocyAP9ulTMFhHlpy6wOJ1gDVd6jL
 MsIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iNcG1Cpw8yF/XUQZ9Jrc8vYbOSNO5bq1B/uIwF9xMgo=;
 b=Hnqc3VBOOA2CxYzWwpDY4eEZ+HnHeGKDljucv3IvE93gndP7TqkUfpgW+WR59j3vwB
 GNb4XIOsE7yLdpxOzAXVUHH/FWvFw51vdZ5BvKnswR7QgQuPpvkallw+VCwyLdo4etSC
 ud1RUXDFKde9lp+k9FI/kqJy6/lEOI2L/xlPI6vFuoWpLOjo8ZgzNS5Ss20CnT0k3/nC
 89JAcR7rh1cHiud5K6GbgeaokY9UfJsZh9jQ84Zgu0rtgMFZ1c0rge/+/RW8AcLPRqEl
 bE0lnOX/eBF7mfE9m1MH2VzPFSrWEKn87musU7XD9BRzkMq9wBG1Rlt5kS+Aj6gVvlb5
 lbkw==
X-Gm-Message-State: AOAM532jkTMHtvLj4HMcfwa1XaasLw/XiTAuRY0+g3aEragH+TmkGzuq
 /4lVQ9xE3ULZkIBfPjgcioj3xKI4CYxqtmDV/ho=
X-Google-Smtp-Source: ABdhPJyywq8gSIRagX0oqT3YYOPLZtWkVlvpBquURRdxE6eB913gtHzDctoGhE9YDtphIFhzSFQELTTBvwzT/r5i/uw=
X-Received: by 2002:a50:eb90:: with SMTP id y16mr6148062edr.161.1641753163476; 
 Sun, 09 Jan 2022 10:32:43 -0800 (PST)
MIME-Version: 1.0
References: <CAMS0tn2RYzqoFQhYXaGRSnOXe9t_Lnz9t2kBah7VL+2H0R57hQ@mail.gmail.com>
 <CAAg9qJ0DKP8Ki7352yp9-iXuRvY13fHfVi4bUuyy-3pGi4xEUg@mail.gmail.com>
 <CAMS0tn2BosyXYQjR9zLvZF+DNCHB2TWR0Zuzw8hMQHc7o_X1Fw@mail.gmail.com>
 <CAAg9qJ3CnPLNedyh+uy4Lk1rLK=bosft70GD7NDx-eAVDODz8w@mail.gmail.com>
 <CAMS0tn1cSZPaDCjzpXh6xnU2yk=PDshOVM8z-Tasc33crg=boQ@mail.gmail.com>
 <CAHt6W4cKt-LkBwueG1yWL3_F8jUw_rfirOFDRXSR23FQJQm6Zw@mail.gmail.com>
 <CAMS0tn3FF_xwTNzqXxouN6f6GOHmD5k-rU6QyZYBozo-n81Gfg@mail.gmail.com>
In-Reply-To: <CAMS0tn3FF_xwTNzqXxouN6f6GOHmD5k-rU6QyZYBozo-n81Gfg@mail.gmail.com>
From: i iordanov <iiordanov@gmail.com>
Date: Sun, 9 Jan 2022 13:32:06 -0500
Message-ID: <CAMS0tn3cE2g7LTiqnAQonjth928O4ifwuP+NoSu405G_93q+cw@mail.gmail.com>
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

Hi Frediano, Uri, and Marc-Andre,

Just wanted to revive the discussion on this topic and see whether you
need anything more for this merge request:

https://gitlab.freedesktop.org/spice/spice-gtk/-/merge_requests/95

Thanks!
iordan

On Thu, Dec 23, 2021 at 3:19 PM i iordanov <iiordanov@gmail.com> wrote:
>
> Hi Frediano,
>
> Thanks for your feedback, that's exactly what I was looking for ahead
> of opening a MR.
>
> On Thu, Dec 23, 2021 at 4:21 AM Frediano Ziglio <freddy77@gmail.com> wrot=
e:
> >   could you open a MR?
>
> Is this the right copy of the repo to make an MR against?
> https://gitlab.freedesktop.org/spice/spice-gtk
>
> > I suppose you are speaking about allocate_device_for_file_descriptor. I=
t's not called anywhere in the code so I suppose it is a public API. In thi=
s case it should start with something like spice_. Also it should have a bi=
t more documentation and be listed in src/spice-glib-sym-file. But src/usb-=
backend.h is not a public header and we don't want it to be so it does not =
seem a good idea to declare there.
>
> That makes sense. However, if in a new implementation it would make
> sense for UsbDeviceManager to use some functionality from UsbBackend,
> I'd still need to declare it in usb-backend.h, right? Just as an
> aside, is there a way to make a method available to UsbDeviceManager
> but unavailable publicly?
>
> > This seems like a bad idea. It exposes something internal. Why not havi=
ng just one additional function in device manager like
> >
> > gboolean
> > spice_usb_device_manager_add_device_from_fd(SpiceUsbDeviceManager *mana=
ger, GError **err);
>
> This is a good suggestion. You're essentially proposing for
> UsbDeviceManager (which is public) to be the one exposing the
> functionality and for it to potentially use some functionality left in
> UsbBackend (which is private) internally. I'll refactor.
>
> > The device could be communicated using device_added signal (if results =
if not FALSE), error can be returned, no additional interface to expose.
> > Or returning directory a SpiceUsbDevice* instead of a gboolean (but in =
this case interface will have to be blocking).
>
> Any pros / cons with either one? Any preference? If I return
> SpiceUsbDevice * directly, there is no need for the err, parameter and
> I could just return NULL device if something went wrong. Is there any
> preference or rule of thumb that the project generally follows?
>
> Thanks!
> iordan



--=20
The conscious mind has only one thread of execution.
