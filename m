Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8B8365A76
	for <lists+spice-devel@lfdr.de>; Tue, 20 Apr 2021 15:48:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B78046E827;
	Tue, 20 Apr 2021 13:48:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FC5C6E827
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Apr 2021 13:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1618926479;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:in-reply-to:in-reply-to:  references:references;
 bh=9dwm6TTQU6wCkc/KTbx3FjRdNagrWOkz8YXdwCBQNlQ=;
 b=LtROI7gFho8/uqXD8N4i6nTu8c4D6pzoRpm87UWwCsqSk3b+jfH74gKm2vOyaxSLKttHJe
 AevjY5APIiZ+Ey4iMMYZR4wJvHKt9T4UTRalofH0ceTtnSWTQwTbEEsQvervXTWBoSIbkM
 Ls9ExWBq1gmyGVGazwDoy+hPATBTfLw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-442-jOdOYWnQOuWSbJKSUgiMoQ-1; Tue, 20 Apr 2021 09:47:55 -0400
X-MC-Unique: jOdOYWnQOuWSbJKSUgiMoQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3376618982A0;
 Tue, 20 Apr 2021 13:47:54 +0000 (UTC)
Received: from redhat.com (ovpn-114-178.ams2.redhat.com [10.36.114.178])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6614D60CDE;
 Tue, 20 Apr 2021 13:47:53 +0000 (UTC)
Date: Tue, 20 Apr 2021 14:47:50 +0100
From: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
To: Germano Massullo <germano.massullo@gmail.com>
Message-ID: <YH7bhgSp1+wZWX5e@redhat.com>
References: <5861b1c3-a4f5-2faf-4dc7-dd8167ec3ea5@gmail.com>
 <YH68grWhEqF4lINL@redhat.com>
 <ec4c7b10-28dd-cfc8-3f68-96248352ae00@gmail.com>
 <YH7PBECpLUGLiOFN@redhat.com>
 <c1961ee5-6177-4358-f790-b05fcc12e299@gmail.com>
MIME-Version: 1.0
In-Reply-To: <c1961ee5-6177-4358-f790-b05fcc12e299@gmail.com>
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

On Tue, Apr 20, 2021 at 03:08:48PM +0200, Germano Massullo wrote:
> https://germano.fedorapeople.org/bugreport/spice/spice_vda_fedora34kde.txt
> https://germano.fedorapeople.org/bugreport/spice/spice_vda_fedora34gnome.txt

In one case the service is not running at all, and in the other
case it appears to have deactivated itself:

apr 20 15:01:13 fedora spice-vdagentd[1422]: opening vdagent virtio channel
apr 20 15:01:14 fedora spice-vdagentd[1422]: Set max clipboard: 104857600
apr 20 15:01:17 fedora spice-vdagentd[1422]: multiple agents in one session, disabling agent to avoid potential information leak
apr 20 15:01:17 fedora spice-vdagentd[1422]: closed vdagent virtio channel
apr 20 15:01:17 fedora spice-vdagentd[1422]: No active session, can't forward message (type 13)

I'd suggest filing a BZ against  spice-vdagent package

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
