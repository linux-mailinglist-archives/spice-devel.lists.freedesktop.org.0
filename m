Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6335D14387B
	for <lists+spice-devel@lfdr.de>; Tue, 21 Jan 2020 09:41:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE7866E1FB;
	Tue, 21 Jan 2020 08:41:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C23896EB73
 for <spice-devel@lists.freedesktop.org>; Tue, 21 Jan 2020 02:47:34 +0000 (UTC)
Received: by mail-lf1-x144.google.com with SMTP id 203so886429lfa.12
 for <spice-devel@lists.freedesktop.org>; Mon, 20 Jan 2020 18:47:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u+pn4ui6Ng1mXgrGseSlzDVL23QH8gYAt0SNyPFDv94=;
 b=k5Y/zRI6Wpse+DVtUn6DWcc3oHOaKMJi8rO8oUf0yr3k7vwSfyqGe3o17AVJwHwnWc
 /13egervIl3dHHvuRG6d+X08x0TUflRFlekOxVyke/Br5rQ4bBkqp4ZCHo+urJE2JNKn
 R4QzmJpL8X4FcVQRfuGv/BTc/ZGf9b2JJwzhQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u+pn4ui6Ng1mXgrGseSlzDVL23QH8gYAt0SNyPFDv94=;
 b=DGwH7gY6Ds1RM3A2O573PE5FWvUQ5JSTHd4u1/EiBm6qQT63Otey2XUAVn33fD2124
 FxCKKhSlAzmZeVd6bNC3mpqI34Qds1vES/0vrIKFv9FOeydaMeEwddFmSw54IaKPixEO
 r+FIZrbxZ6iTdo2AUprRIde0R3rexLyOWTHXMAfzrF5temFlyTS1cKNP46C5Q3r8vs/I
 Krs3rCg8PzotNUGGqVaPmg9d4OhG5czj+HkUb3KpHnZI0gOsV2RiWmMtC3PY9gUxPkTo
 5Ij9UDPeChJyg7sXSiRHWQG40+RTe3cb8ziqg1svHiUaEeWgGYAHZBrudbWVHN7YUguv
 D2tA==
X-Gm-Message-State: APjAAAW6ZE1RQljKUf73Y45GStT1KLSd72gqIFag2oNO+979EvK9ZCM/
 BeCrGFKabcvna/7R/pya13DcQo7LdIpIzggf0IvsmQ==
X-Google-Smtp-Source: APXvYqz+Ie2Hk3Qp7MF/iN7GrivJEAQgQCuAnCKG3YCbPWbBc0x+hWlAEllhS5hJQfgoBPtmRrFzQSC78RwYWttwHk4=
X-Received: by 2002:ac2:5a43:: with SMTP id r3mr1297798lfn.150.1579574852798; 
 Mon, 20 Jan 2020 18:47:32 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <7740094.NyiUUSuA9g@os-lin-dmo>
 <20200113095636.blov62o4gbf27om5@sirius.home.kraxel.org>
 <12433898.dW097sEU6C@os-lin-dmo>
 <20200113110521.5ogc3fcy4zq32yzg@sirius.home.kraxel.org>
 <CAAFQd5D16G0E85BCZVx1LXd1TauQH8Lbgs5-0gLv7tNpm4sp_A@mail.gmail.com>
 <20200113132654.r4lhspfx2z7zse2v@sirius.home.kraxel.org>
 <CAAFQd5A3=4JC+3bRf2iw8RwsoB1jJz8p5afi6KaHO6ML2LC0Rg@mail.gmail.com>
 <20200115112640.52kemwg4lncuvvir@sirius.home.kraxel.org>
 <CAD90VcaAaomTnwVESp9RaBwhjx+cKjXAJv4T7wSkFiCEhOUo5Q@mail.gmail.com>
 <20200120104755.3hhxlx6x6o32bagf@sirius.home.kraxel.org>
In-Reply-To: <20200120104755.3hhxlx6x6o32bagf@sirius.home.kraxel.org>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Tue, 21 Jan 2020 11:47:20 +0900
Message-ID: <CAD90Vcak0iohLny9UjkqtBmM0px7Rz1mqQE6jw1wdu66QB4U3Q@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Approved-At: Tue, 21 Jan 2020 08:41:11 +0000
Subject: Re: [Spice-devel] [virtio-dev] Re: [PATCH v2 0/1] VirtIO video
 device specification
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
Cc: virtio-dev@lists.oasis-open.org, Alex Lau <alexlau@chromium.org>,
 Alexandre Courbot <acourbot@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, David Stevens <stevensd@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Dmitry Sepp <dmitry.sepp@opensynergy.com>, spice-devel@lists.freedesktop.org,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi,

On Mon, Jan 20, 2020 at 7:48 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
>
>   Hi,
>
> > > Hmm, using (ii) the API, then check whenever your three plane buffers
> > > happen to have the correct layout for (1) hardware looks somewhat
> > > backwards to me.
> >
> > Can't this problem be solved by adding "offset" field in virtio_video_mem_entry?
> >
> > struct virtio_video_mem_entry {
> >   le64 addr;
> >   le32 length;
> >   le32 offset;
> >   u8 padding[4];
> > };
> >
> > Here, "addr" must be the same in every mem_entry for (1) hardware.
>
> No.  virtio_video_mem_entry is basically a scatter list entry, you use
> an *array* of these entries to describe your buffer (unless you are
> using CMA due to hardware requirements, in this special case you have
> only one entry in your array).

I see. I forgot about scatter list.
However, I'm still not sure about the usage for CMA.
if we're using CMA for a multiplanar format, how can the device know
where the second plane start from?
In my understanding, the number of entries in this case should be the
same with the number of planes and
"entries[0].addr + entries[0].length == entries[1].addr" should hold.

>
> > > I'd suggest to use (i) API and allow the device specify alignment
> > > requirements.  So (1) hardware would say "need_align=0", whereas (3)
> > > hardware would probably say "need_align=PAGE_SIZE" so it can easily
> > > split the single buffer into three per-plane buffers.
> >
> > Just to confirm, is "need_align" a field added in virtio_video_format_desc?
>
> Given that different formats might have different alignment
> requirements this looks like a good place to me.  Maybe rename to
> plane_align to make clear what kind of alignment this is.

"plane_align" sounds better. Thanks.

Best regards,
Keiichi

>
> cheers,
>   Gerd
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
