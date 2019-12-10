Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2BB1185B3
	for <lists+spice-devel@lfdr.de>; Tue, 10 Dec 2019 12:00:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE7996E8B8;
	Tue, 10 Dec 2019 11:00:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 367 seconds by postgrey-1.36 at gabe;
 Tue, 10 Dec 2019 11:00:38 UTC
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB1F6E8B8
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Dec 2019 11:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575975637;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lXYWwkRfxO/xsXY7HiqOWo3p8Lpb04l8Ur5auYBTqRA=;
 b=BB5GQqhYhROMyOX3r8SB08rbFBHob9npk4gjUEWRBIsxAwAjUOWgA1n9buPjudFWvq/yPb
 SjIx0fScAgARxxLZk/Mb85XCBt1uohIMnufeTJdA2zHrFamBeWV7GlA0MjQ3P0/MRxTWM4
 8Q+HDhGtAMCrynfV2W9FcbE/D+J6VeQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-223-W4Yc4Xc2NFKPsyxtUinKUg-1; Tue, 10 Dec 2019 05:54:28 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A2A941005513;
 Tue, 10 Dec 2019 10:54:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9798819C7F;
 Tue, 10 Dec 2019 10:54:27 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8A6E518095FF;
 Tue, 10 Dec 2019 10:54:27 +0000 (UTC)
Date: Tue, 10 Dec 2019 05:54:26 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: Alexander Nezhinsky <anezhins@redhat.com>
Message-ID: <1451899795.15011842.1575975266122.JavaMail.zimbra@redhat.com>
In-Reply-To: <CA+H+uewtm0G0rHgEa84hxDXBoOvtwu+cyXgyb08hc2gVQ4cOJQ@mail.gmail.com>
References: <20191205174915.24546-1-anezhins@redhat.com>
 <20191205174915.24546-3-anezhins@redhat.com>
 <1860140170.14473019.1575626680942.JavaMail.zimbra@redhat.com>
 <CA+H+uew4aWet5WbJXEJ8p=A46r3nUQ1oKN+KanJ9BgAv12FCHQ@mail.gmail.com>
 <CA+H+uewtm0G0rHgEa84hxDXBoOvtwu+cyXgyb08hc2gVQ4cOJQ@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.15]
Thread-Topic: add spice_usb_device_manager shared CD related api functions
Thread-Index: nqNGZWWML52MWxKHY5SSu8qczenxpA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: W4Yc4Xc2NFKPsyxtUinKUg-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Spice-devel] [PATCH 2/9] add spice_usb_device_manager shared
 CD related api functions
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>,
 Alexander Nezhinsky <alexander@daynix.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

> On Sat, Dec 7, 2019 at 12:20 PM Alexander Nezhinsky < anezhins@redhat.com >
> wrote:

> > On Fri, Dec 6, 2019 at 12:04 PM Frediano Ziglio < fziglio@redhat.com >
> > wrote:
> 

> > > > + bdev = spice_usb_device_manager_device_to_bdev(self, device);
> > 
> 

> > > see below
> > 
> 

> > > > +#ifdef USE_USBREDIR
> > 
> 
> > > > + SpiceUsbBackendDevice *bdev;
> > 
> 
> > > > + gboolean is_cd;
> > 
> 
> > > > +
> > 
> 
> > > > + bdev = spice_usb_device_manager_device_to_bdev(self, device);
> > 
> 

> > > Note that SpiceUsbBackendDevice is defined as
> > 
> 

> > > typedef struct _SpiceUsbDevice SpiceUsbBackendDevice;
> > 
> 

> > > no need to call this function.
> > 
> 

> > I agree with Yuri. This is the current practice in all API functions.
> 
> > We can rework it everywhere, or leave it as is.
> 

> I looked at it just an inch deeper and saw that the function
> spice_usb_device_manager_device_to_bdev actually increments the reference of
> the device object.
> So it seems to be necessary and the change would require rework of some
> further logic, i guess.
> In view of the fact that the struct is the same, we could change the name of
> the functions to reflect the refcounting, like:
> spice_usb_device_manager_get_bdev_device() or just
> spice_usb_device_manager_get_device()
> What do you think?

I was thinking something more "strong", like removing it entirely,
see https://gitlab.freedesktop.org/fziglio/spice-gtk/commits/no_bdev
(last 3 commits).

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
