Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D53F21438EA
	for <lists+spice-devel@lfdr.de>; Tue, 21 Jan 2020 10:02:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3C9E89471;
	Tue, 21 Jan 2020 09:02:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA6886EBF5
 for <spice-devel@lists.freedesktop.org>; Tue, 21 Jan 2020 08:56:20 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id h23so1870657ljc.8
 for <spice-devel@lists.freedesktop.org>; Tue, 21 Jan 2020 00:56:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rLC7ArNDoCfPVLbHMJdB77/IsrZfFpX+7NPUfBcooDk=;
 b=mAWueqewBiPUSSaIIPKOJiYP0bTMehG82/cqa6OzdF1uSC8MUVyCPomPzLbipabg8l
 2UrFjf39kz3gGzgEa8d7cwSV36oHAN3idctNho8K+ONw56lxlUiXmBZpOYyuEA6wiHRq
 Vi9l/tqiQyVOblMWldOYUWbNSLhAdg3blv6qE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rLC7ArNDoCfPVLbHMJdB77/IsrZfFpX+7NPUfBcooDk=;
 b=Ot7bslbUUx0hBUx5fecSHRkBXGAFVj6NO6fv4F33NA9QGoeOLL03rtxIM3wnMdXH+4
 xZX+6uJ6XP7XNH115YqwdcKEYWdEg2haQlB89U+3Nm8kO6Tox6Q+tKPnls2SUXHD5Zfj
 YyufIubbfGfVNv/iC+1OdNrSeHKUjH6k8iYVmaS23a4TQgDA39FM51kWLDu5fz0bOOSq
 kj/dwYToYItoO/OHA7hLq+FNlkDnzZekYjGfDm5KWWwmfRHD11Ib+lA2rAh7OIyuKbge
 UbKqT0qceUKb2Ta/1JfJAFrjQFYlMNlR35M8WNnsgMYvEexuslzZXCcQQVs9wpi8caFH
 fj6Q==
X-Gm-Message-State: APjAAAUgXeFY4mPYyQ0qDrOKqxUlkfXmuhj4fiQ+IdDD880Vpb1Ke/wb
 RLleu5sKI3ek71eonBNXnzPpR2i0h4VcmD8WhyNlLQV1Goc=
X-Google-Smtp-Source: APXvYqzfEmjmPOJHeDKP2Z9y+ERe2+MqVoF0+eDb8f075+fruHdB5RlXLG3x5T65ItaKNqNN9NRA2hru2z1xXZontcY=
X-Received: by 2002:a2e:9692:: with SMTP id q18mr1894304lji.177.1579596978386; 
 Tue, 21 Jan 2020 00:56:18 -0800 (PST)
MIME-Version: 1.0
References: <20200113095636.blov62o4gbf27om5@sirius.home.kraxel.org>
 <12433898.dW097sEU6C@os-lin-dmo>
 <20200113110521.5ogc3fcy4zq32yzg@sirius.home.kraxel.org>
 <CAAFQd5D16G0E85BCZVx1LXd1TauQH8Lbgs5-0gLv7tNpm4sp_A@mail.gmail.com>
 <20200113132654.r4lhspfx2z7zse2v@sirius.home.kraxel.org>
 <CAAFQd5A3=4JC+3bRf2iw8RwsoB1jJz8p5afi6KaHO6ML2LC0Rg@mail.gmail.com>
 <20200115112640.52kemwg4lncuvvir@sirius.home.kraxel.org>
 <CAD90VcaAaomTnwVESp9RaBwhjx+cKjXAJv4T7wSkFiCEhOUo5Q@mail.gmail.com>
 <20200120104755.3hhxlx6x6o32bagf@sirius.home.kraxel.org>
 <CAD90Vcak0iohLny9UjkqtBmM0px7Rz1mqQE6jw1wdu66QB4U3Q@mail.gmail.com>
 <20200121064437.jryf3lq72bucs6rr@sirius.home.kraxel.org>
In-Reply-To: <20200121064437.jryf3lq72bucs6rr@sirius.home.kraxel.org>
From: Keiichi Watanabe <keiichiw@chromium.org>
Date: Tue, 21 Jan 2020 17:56:05 +0900
Message-ID: <CAD90VcaTtCdrhnPhhDWrheF2xrgF-LXL94MPZy9BfHB-Wh9FwQ@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Approved-At: Tue, 21 Jan 2020 09:02:00 +0000
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

On Tue, Jan 21, 2020 at 3:44 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
>
> > > > Can't this problem be solved by adding "offset" field in virtio_video_mem_entry?
> > > >
> > > > struct virtio_video_mem_entry {
> > > >   le64 addr;
> > > >   le32 length;
> > > >   le32 offset;
> > > >   u8 padding[4];
> > > > };
> > > >
> > > > Here, "addr" must be the same in every mem_entry for (1) hardware.
> > >
> > > No.  virtio_video_mem_entry is basically a scatter list entry, you use
> > > an *array* of these entries to describe your buffer (unless you are
> > > using CMA due to hardware requirements, in this special case you have
> > > only one entry in your array).
> >
> > I see. I forgot about scatter list.
> > However, I'm still not sure about the usage for CMA.
> > if we're using CMA for a multiplanar format, how can the device know
> > where the second plane start from?
> > In my understanding, the number of entries in this case should be the
> > same with the number of planes and
> > "entries[0].addr + entries[0].length == entries[1].addr" should hold.
>
> With the one-buffer-per-frame model you could add a plane_offsets[4]
> field to virtio_video_resource_create.
>
> The virtio_video_mem_entry array describes the whole buffer for all
> planes, the plane_offsets array says where the individual planes start
> inside the buffer.

Got it. It makes sense to have plane_offsets[] separately.
Thanks!

Best regards,
Keiichi

>
> cheers,
>   Gerd
>
>
> ---------------------------------------------------------------------
> To unsubscribe, e-mail: virtio-dev-unsubscribe@lists.oasis-open.org
> For additional commands, e-mail: virtio-dev-help@lists.oasis-open.org
>
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
