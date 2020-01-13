Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 930A7139260
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jan 2020 14:43:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B815F6E0B9;
	Mon, 13 Jan 2020 13:43:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F7C8895C1
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Jan 2020 11:59:57 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id bx28so8189077edb.11
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Jan 2020 03:59:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=thjqlNkvwtIDUnt8FnThirW43Q0B9qt8eiRUT807FXM=;
 b=N8rHDPN27UPJg5z8G8CCz9WL9rr3g1XgmKdsIKbYH0RSF7ux0mOCHAWcWt+a0S6MRq
 gZAcZK4RFDOzV85u/kqzJjTDmTe4Qs1UR4ndJH08rQbMV2wHhqupfaJjQx+avlNtpFOm
 bdDHMBbBiXOqsWxgG7ta5rVnyvO04HDyYQnIE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=thjqlNkvwtIDUnt8FnThirW43Q0B9qt8eiRUT807FXM=;
 b=H+oAasqMoHGPrXVWJTtDPXS/gRvw2UEIPqZ/Crh5l5EzwcFdQOz9i2vScsBQhnxCti
 FpKz6eBq4U9FZWLezIT+e7E7VEHGVDrA1wZ+3YRVuQVvCl2G37fb1PTIKLajyBbWHAgi
 6oSaTYiZpzd/Rq5CFIiB1jY4Evupf7Kx0BCUHabwgFeOITii01mZ5hf2r6Q9nzcSl26R
 TeE4UkHhYUBfL0f1s+xsu0IGsO24ELNFmzQZ4WPvuo0kJJWjzyKT4jPrL+AVRxK/l+DY
 gmn7qsvApvxtxgKo2n1z+x4NIQo6egbs2YHX4ku3gP4lRYTd3jerJdiTSaJ2yoDTzYK6
 yeXg==
X-Gm-Message-State: APjAAAWWOYcsnhje3NGIoL5gntMTulpFrdYynZPvnvapiz7vvmH402wz
 AQmetPjc1jaErDlAXlTmxkR/cUdU/Oo=
X-Google-Smtp-Source: APXvYqwqlM+TlmModSF+FKfkblA7VMz/RTc2emipwvozSzu2tjABBmj9OkDj+p1B1SqIQaWvuGQ3EA==
X-Received: by 2002:a17:906:a3d3:: with SMTP id
 ca19mr16261297ejb.136.1578916795842; 
 Mon, 13 Jan 2020 03:59:55 -0800 (PST)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com.
 [209.85.221.44])
 by smtp.gmail.com with ESMTPSA id be18sm419146edb.19.2020.01.13.03.59.55
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Jan 2020 03:59:55 -0800 (PST)
Received: by mail-wr1-f44.google.com with SMTP id d16so8250868wre.10
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Jan 2020 03:59:55 -0800 (PST)
X-Received: by 2002:a5d:49c3:: with SMTP id t3mr18142495wrs.113.1578916794914; 
 Mon, 13 Jan 2020 03:59:54 -0800 (PST)
MIME-Version: 1.0
References: <20191218130214.170703-1-keiichiw@chromium.org>
 <7740094.NyiUUSuA9g@os-lin-dmo>
 <20200113095636.blov62o4gbf27om5@sirius.home.kraxel.org>
 <12433898.dW097sEU6C@os-lin-dmo>
 <20200113110521.5ogc3fcy4zq32yzg@sirius.home.kraxel.org>
In-Reply-To: <20200113110521.5ogc3fcy4zq32yzg@sirius.home.kraxel.org>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 13 Jan 2020 20:59:42 +0900
X-Gmail-Original-Message-ID: <CAAFQd5D16G0E85BCZVx1LXd1TauQH8Lbgs5-0gLv7tNpm4sp_A@mail.gmail.com>
Message-ID: <CAAFQd5D16G0E85BCZVx1LXd1TauQH8Lbgs5-0gLv7tNpm4sp_A@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Approved-At: Mon, 13 Jan 2020 13:43:08 +0000
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
 Alexandre Courbot <acourbot@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Dmitry Sepp <dmitry.sepp@opensynergy.com>, spice-devel@lists.freedesktop.org,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Mon, Jan 13, 2020 at 8:05 PM Gerd Hoffmann <kraxel@redhat.com> wrote:
>
> On Mon, Jan 13, 2020 at 11:41:45AM +0100, Dmitry Sepp wrote:
> > Hi Gerd,
> >
> > Thanks for reviewing!
> >
> > On Montag, 13. Januar 2020 10:56:36 CET Gerd Hoffmann wrote:
> > >   Hi,
> > >
> > > > This also means that we cannot have unspec for planes layout. Device
> > > > either
> > > > expects planes in separate buffers or in one buffer with some offsets,
> > > > there cannot be mixed cases.
> > >
> > > Hmm.  Is it useful to support both?  Or maybe support the "one buffer +
> > > offsets" case only?  Splitting one buffer into multiple smaller ones
> > > internally if needed shouldn't be a problem, and it would simplify the
> > > interface a bit ...
> > >
> >
> > Ok, let's consider the following case:
> >  - the device expects planes in separate buffers.
> >  - say, Android on the guest side also imports planes in separate buffers into the driver.
> >  - but he driver only supports one buffer + offsets.
> >
> > Do you mean the driver then can join the underlying page lists and set offsets then? Yes,
> > this would probably make sense.
>
> Well, no.  Tomasz Figa had splitted the devices into three groups:
>
>   (1) requires single buffer.
>   (2) allows any layout (including the one (1) devices want).
>   (3) requires per-plane buffers.
>
> Category (3) devices are apparently rare and old.  Both category (1)+(2)
> devices can handle single buffers just fine.  So maybe support only
> that?

From the guest implementation point of view, Linux V4L2 currently
supports 2 cases, if used in allocation-mode (i.e. the buffers are
allocated locally by V4L2):

i) single buffer with plane offsets predetermined by the format, (can
be handled by devices from category 1) and 2))
ii) per-plane buffers with planes at the beginning of their own
buffers. (can be handled by devices from category 2) and 3))

Support for ii) is required if one wants to be able to import buffers
with arbitrary plane offsets, so I'd consider it unavoidable.

Given that, I'd suggest going with per-plane buffer specifiers. I feel
like it doesn't have much cost associated, but gives the most
flexibility.

Best regards,
Tomasz
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
