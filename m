Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84897323BA3
	for <lists+spice-devel@lfdr.de>; Wed, 24 Feb 2021 12:56:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A78776EA84;
	Wed, 24 Feb 2021 11:56:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A14B6EA84
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Feb 2021 11:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614167765;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kyVCdf+1fTbvrQHVoRsBuDvArXaCmPOXL4WXdM8oMpc=;
 b=W1opmNwkaPxFs/w8//rbCgt37ukOSBs1yE955iPBK3eAiQljzd2RSXX5d+xDMHZBSia5Ut
 TUDVyAOuluGtuDZ1UHu0BfjA5bPs3oNGEVV91g+LseTXdj0thkx54Fw9s1RTzkt1RO5uhl
 /hVMC80Sa2C1c9614Lhqf31gL/utptw=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-587-mVoS8djwOP-PD1hsFMphNw-1; Wed, 24 Feb 2021 06:56:04 -0500
X-MC-Unique: mVoS8djwOP-PD1hsFMphNw-1
Received: by mail-qv1-f69.google.com with SMTP id j3so495577qvo.1
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Feb 2021 03:56:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=kyVCdf+1fTbvrQHVoRsBuDvArXaCmPOXL4WXdM8oMpc=;
 b=jVMfxfKhQo+JvSZqBZ7/R/Tk7GSAbS5AcskGvmnqZoiqETpaMKeK7Ni4IZ4gY48Sul
 aLwf69MwgCGkTs2bBljdTGPKekOe/bB3rt8hZnCD2GXNWlHsyMQse7pzK1msc7sDK4Is
 tfVjY20Z2NWvOfwJgFn2d97eyNgkpE7GO8nd7JfIRfmSDw5QoNkQKr2IkaZfgKImyuBM
 hK5BipxYyJJ3omyah5/6+rWwXZAwDd2CpZMWgT15qO4x3UvAvGcWfSIZTHijxMZjts5/
 mBx2KAALH7e2h+J9ILg+jmzE+V39NGnhefB7WTyK4ZNyW8KYYkT34IwfFtrKJptYAQuM
 emAg==
X-Gm-Message-State: AOAM532KiImt6dbWAjvsiOWmW7zMAuPDl+xVSLp74uWuSN+DpNd9Q5/f
 Xd45q1wQXBKPFG/fDvcdDWBYz7f25ACN2numWYdY9niWT4EbyZ9magyQ7xgVVWGL4E72uYaO+0x
 DOsVu01QJW0wS7ED1VnaMGuEQDj9uv8+InHWlNZzXu7Kw+DI=
X-Received: by 2002:ac8:6d38:: with SMTP id r24mr27670879qtu.285.1614167763896; 
 Wed, 24 Feb 2021 03:56:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwH5YV5WWJOADkYj/hJqNeJ4MixjI76miF9oDwsNRjt+QREr/TRZAJiqcGihQob2nVX3thaaCGtJiB3NmJvhWQ=
X-Received: by 2002:ac8:6d38:: with SMTP id r24mr27670863qtu.285.1614167763703; 
 Wed, 24 Feb 2021 03:56:03 -0800 (PST)
MIME-Version: 1.0
References: <924666743.685487.1613867448052.ref@mail.yahoo.com>
 <924666743.685487.1613867448052@mail.yahoo.com>
 <CAH=CeiBFYoYVjiEjBKF1D1NgZ7o3RrakLS_HXP-5QeCrTp9vDQ@mail.gmail.com>
 <624986406.1802527.1614120363577@mail.yahoo.com>
 <CAH=CeiBbqa9LwO9m5q+mzxM-nDKshxQ7P2H7NvEZwnr=StRPyA@mail.gmail.com>
In-Reply-To: <CAH=CeiBbqa9LwO9m5q+mzxM-nDKshxQ7P2H7NvEZwnr=StRPyA@mail.gmail.com>
From: Jakub Janku <jjanku@redhat.com>
Date: Wed, 24 Feb 2021 12:55:52 +0100
Message-ID: <CAH=CeiC+-QR9LYEjH-PhdgN0BSyG0dgczhw7hvPeUw4CwjOe8A@mail.gmail.com>
To: Matthew Sienko <matt_sienko@yahoo.com>,
 spice-devel <spice-devel@lists.freedesktop.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jjanku@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] No Sound with RemoteViewer on OSX Client
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Forgot to include the mailing list, so I'm replying again, sorry.
Jakub

On Wed, Feb 24, 2021 at 12:49 PM Jakub Janku <jjanku@redhat.com> wrote:
>
> On Tue, Feb 23, 2021 at 11:47 PM Matthew Sienko <matt_sienko@yahoo.com> wrote:
> >
> > Thanks for the reply. I installed gst-plugins-good using brew and I still can't get the sound to work. I attached the output of remote viewer with the --spice-debug flag. I connected to a running windows guest, tried to play a sound, then disconnected.
>
> Thanks for the log. I thought there might be a problem with the plugin
> installation, but appsrc should be one of the base plugins and that's
> already in the bundle.
>
> The remote-viewer in brew is pretty outdated, I see. So I'd suggest
> you install the spice-gtk package instead, [0], it should contain all
> the necessary gstreamer dependencies. The package should include a
> tool called spicy which you can use instead of remote viewer, although
> it is meant primarily for testing.
>
> There's also a formula for a newer version of virt-viewer, [1]. Not
> sure why it's not in brew though.
>
> [0] https://formulae.brew.sh/formula/spice-gtk
> [1] https://github.com/jeffreywildman/homebrew-virt-manager
>
> Cheers,
> Jakub
>
> >
> > Thanks,
> >  -Matt
> >
> > On Sunday, February 21, 2021, 8:52:10 AM PST, Jakub Janku <jjanku@redhat.com> wrote:
> >
> >
> > Hi,
> >
> > On Sun, Feb 21, 2021 at 9:37 AM Matthew Sienko <matt_sienko@yahoo.com> wrote:
> > >
> > > Hello,
> > >
> > > When connecting to a VM running on a Linux server from a client on OSX, the connection works but without sound. I am using the RemoteViewer bundle version 0.5.7 on OS X 11.2.1. When the guest OS sends audio, I get the following errors in verbose mode:
> > >
> > >
> > > (RemoteViewer-bin:6323): GStreamer-CRITICAL **: gst_element_query: assertion `GST_IS_ELEMENT (element)' failed
> > >
> > > ** (RemoteViewer-bin:6323): CRITICAL **: gst_app_src_push_buffer_full: assertion `GST_IS_APP_SRC (appsrc)' failed
> > >
> > > ** (RemoteViewer-bin:6323): CRITICAL **: gst_app_src_push_buffer_full: assertion `GST_IS_APP_SRC (appsrc)' failed
> >
> >
> > This looks very similar to the following issue:
> > https://gitlab.freedesktop.org/spice/spice-gtk/-/merge_requests/7
> > So I'd guess that you don't have the gst-plugins-good package installed.
> >
> > Apart from these errors, I think that you should also see a warning
> > starting with "Failed to create a pipeline...", correct?
> >
> > If installing the mentioned package doesn't help, please run remote
> > viewer with the --spice-debug option and send the log here.
> >
> > Thanks,
> > Jakub
> >
> > >
> > >
> > > Does anybody have any tips as to what could be going wrong and how to fix it?
> > >
> > > Thanks,
> > >  -Matt
> >
> > >
> > >
> > > _______________________________________________
> > > Spice-devel mailing list
> > > Spice-devel@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/spice-devel
> >
> >

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
