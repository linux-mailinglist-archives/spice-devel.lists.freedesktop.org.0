Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F85C36579F
	for <lists+spice-devel@lfdr.de>; Tue, 20 Apr 2021 13:35:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBF276E7EF;
	Tue, 20 Apr 2021 11:35:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 090CE6E7EF
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Apr 2021 11:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1618918539;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:in-reply-to:in-reply-to:  references:references;
 bh=dAUTPz8ZEWizYxcNJA1fs2ausdiGpHf1vKhT0HbxWZg=;
 b=L7nahFkMvac62bJ3X6M+ESygnZQAbU6flhWzNOV/aKFq3jfaasuZyL5iM8yTQlxug2Gxtk
 7ampHyvxpEAggTcv+Zh8V5Es3Ae1NOuTPUo0Kor7M0+IF4Qxl9zi5EdsUEpg6jIjPHecAb
 zwaNHUugzCXB7PXJK6Jxa8Eo9AWQZ/s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-228-YlQGGZm4OxSjx4z5lPiO4w-1; Tue, 20 Apr 2021 07:35:35 -0400
X-MC-Unique: YlQGGZm4OxSjx4z5lPiO4w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D7EB61923791;
 Tue, 20 Apr 2021 11:35:34 +0000 (UTC)
Received: from redhat.com (ovpn-114-178.ams2.redhat.com [10.36.114.178])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 338011B5C0;
 Tue, 20 Apr 2021 11:35:34 +0000 (UTC)
Date: Tue, 20 Apr 2021 12:35:30 +0100
From: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
To: Germano Massullo <germano.massullo@gmail.com>
Message-ID: <YH68grWhEqF4lINL@redhat.com>
References: <5861b1c3-a4f5-2faf-4dc7-dd8167ec3ea5@gmail.com>
MIME-Version: 1.0
In-Reply-To: <5861b1c3-a4f5-2faf-4dc7-dd8167ec3ea5@gmail.com>
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=berrange@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Spice-devel] Fedora 34 guests can no longer paste from host
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
Reply-To: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Tue, Apr 20, 2021 at 11:56:23AM +0200, Germano Massullo wrote:
> Good day, I always used with success a Fedora 33 KDE host (qemu/kvm/libvirt+virt-manager) and a F33 KDE guest, and I have always been to copy paste from host to guest and viceversa
> 
> Now I tested two Fedora 34 Beta guests:
> - KDE spin
> - Workstation (GNOME)
> and both of them fail to paste text and files from the host. spice-vdagent version is the same on both F33 and F34 guests: 0.21.0. Host machine has spice-gtk3-0.39-1.fc33.x86_64
> All machines mentioned in this bugreport are Xorg based.
> 
> Hereunder I attach output of
> $ SPICE_DEBUG=1 virt-viewer --connect qemu:///system
> https://germano.fedorapeople.org/bugreport/spice/spice_debug.txt
> 
> # virsh dumpxml fedora34gnome
> https://germano.fedorapeople.org/bugreport/spice/virsh_dumpxml.txt

That seems to be the inactive guest XML.

If you provide the active XML (ie virsh dump when the guest is running),
then the <channel> should confirm whether or not the agent is connected.

Given what Marc-Andre pointed out from the spice debug, I presume it
is going to be marked as not connected


Regards,
Daniel
-- 
|: https://berrange.com      -o-    https://www.flickr.com/photos/dberrange :|
|: https://libvirt.org         -o-            https://fstop138.berrange.com :|
|: https://entangle-photo.org    -o-    https://www.instagram.com/dberrange :|

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
