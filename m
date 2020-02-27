Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7167017246A
	for <lists+spice-devel@lfdr.de>; Thu, 27 Feb 2020 18:04:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3B3789FFD;
	Thu, 27 Feb 2020 17:04:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD1FC89F61
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Feb 2020 09:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582795752;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=j+kCcwtDAxdD2vCfnYq3uxMPUbnctwYKgJYdD2ZedHw=;
 b=TdkDNl0HozWygl6nQ95jg6J+eF0LvusMhjO5K4GgzyFYc12riA1MVKXXUwFth79RKYyBTE
 KY/HUFKB7HQ9Cr/uK5FXapB9cLbSVTN+qYQ/XXTqMQUA+q1uzIp4hdRyjxlfseqxUYKIFV
 4mwg6SWEspE/q6ET3xeAc7BVBQ0aRm0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-5-aRYIqYMIP9-myfts9cDj6Q-1; Thu, 27 Feb 2020 04:29:04 -0500
X-MC-Unique: aRYIqYMIP9-myfts9cDj6Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 33BD8107BA98;
 Thu, 27 Feb 2020 09:29:01 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-150.ams2.redhat.com
 [10.36.116.150])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D85DE5DA76;
 Thu, 27 Feb 2020 09:28:57 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id D69CA1744A; Thu, 27 Feb 2020 10:28:56 +0100 (CET)
Date: Thu, 27 Feb 2020 10:28:56 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Keiichi Watanabe <keiichiw@chromium.org>
Message-ID: <20200227092856.p4kuh5dhh2tk3nnf@sirius.home.kraxel.org>
References: <20200206102058.247258-1-keiichiw@chromium.org>
 <20200206102058.247258-2-keiichiw@chromium.org>
 <20200225095956.7rtwugfru4dbjj7q@sirius.home.kraxel.org>
 <CAD90VcaTJh5MTRggpOmCK2LAryMHha2+7nPkFVTT8N8S06tf-A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD90VcaTJh5MTRggpOmCK2LAryMHha2+7nPkFVTT8N8S06tf-A@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mailman-Approved-At: Thu, 27 Feb 2020 17:04:19 +0000
Subject: Re: [Spice-devel] [PATCH v3 1/2] virtio-video: Add virtio video
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
Cc: Samiullah Khawaja <samiullah.khawaja@opensynergy.com>,
 virtio-dev@lists.oasis-open.org, Alex Lau <alexlau@chromium.org>,
 Kiran Pawar <kiran.pawar@opensynergy.com>,
 Alexandre Courbot <acourbot@chromium.org>,
 David Staessens <dstaessens@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, David Stevens <stevensd@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 Dmitry Sepp <dmitry.sepp@opensynergy.com>,
 =?utf-8?B?U3TDqXBoYW5l?= Marchesin <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

  Hi,

> Dmitry's virtio-video driver
> https://patchwork.linuxtv.org/patch/61717/.
> Once it becomes fully functional, I'll post a list of possible
> improvements of protocol.

Cool.  Actually implementing things can find design problems
in the protocol you didn't notice earlier.

> > > +\begin{description}
> > > +\item[\field{version}] is the protocol version that the device talks.
> > > +  The device MUST set this to 0.
> >
> > What is the intended use case for this?
> >
> > Given that virtio has feature flags to negotiate support for optional
> > features and protocol extensions between driver and device, why do you
> > think this is needed?
> 
> While feature flags work well when we "extend" the protocol with an
> optional feature, they don't when we want to "drop" or "modify"
> features.
> For example, I guess it'd be useful when we want:
> * to abandon a non-optional command,
> * to change a non-optional struct's layout,or
> * to change the order of commands in which the device expects to be sent.
> 
> Though it might be possible to handle these changes by feature flags,
> I suspect the version number allow us to transition protocols more
> smoothly.

Feature flags can be mandatory, both device and driver can fail
initialization when a specific feature is not supported by the other
end.  So in case we did screw up things so badly that we have to
effectively start over (which I hope wouldn't be the case) we can add a
VERSION_2 feature flag for a new set of commands with new structs and
new semantics.

With a feature flag both driver and device can choose whenever they want
support v1 or v2 or both.  With a version config field this is more
limited, the device can't decide to support both.  So the bonus points
for a smooth transition go to the feature flags not the version field ;)

cheers,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
