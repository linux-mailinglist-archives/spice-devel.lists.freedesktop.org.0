Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A49232D6A
	for <lists+spice-devel@lfdr.de>; Thu, 30 Jul 2020 10:10:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F8396E893;
	Thu, 30 Jul 2020 08:10:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B88706E893
 for <spice-devel@lists.freedesktop.org>; Thu, 30 Jul 2020 08:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596096625;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Uj0kNaDJA4krf0WKlYa/XflPTtH9h2/zMUhxxdL1zgc=;
 b=fsEWUQClM38kNkSNjGZDqyB9hr7X4rdeW5a+VF1zReXbkY1CGTlqBJjZA0Jlh8xG27wlla
 mA2xLuQDmPjyaEPDlRP6gt7ALcwsQ94kv77ZgxcDvZDsg4ByBjCmSWtn57pfX+xI1AD6eO
 ZNE/VMqHw6dHwkTaPhF+njFVW5pUMi8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-90-80DuNB8NM429V6tgUSp0QQ-1; Thu, 30 Jul 2020 04:10:19 -0400
X-MC-Unique: 80DuNB8NM429V6tgUSp0QQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 15A0D1800D4A;
 Thu, 30 Jul 2020 08:10:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E9611002388;
 Thu, 30 Jul 2020 08:10:18 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 06C07180954D;
 Thu, 30 Jul 2020 08:10:18 +0000 (UTC)
Date: Thu, 30 Jul 2020 04:10:15 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Koopa Koopa <codingkoopa@gmail.com>
Message-ID: <74120881.36683304.1596096615307.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAM1wO0kUjpzX+G-YjaG7JfhnRAvFJ2g-n6ZQByPBMYRng6jvNA@mail.gmail.com>
References: <CAM1wO0kUjpzX+G-YjaG7JfhnRAvFJ2g-n6ZQByPBMYRng6jvNA@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.7]
Thread-Topic: Webdav on Windows XP
Thread-Index: rwOYNKcGExmnldyeUOx4ShEhqXeYiA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Webdav on Windows XP
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

> 
> Hi all,
> 
> I'm trying to setup a Windows XP SP3 virtual machine with SPICE folder
> sharing. The latest version, v2.4, fails to install, as the
> spice-webdavd service fails to start. Running spice-webdavd.exe
> manually yields the error message "The procedure entry point
> AcquireSRWLockExclusive could not be located in the dynamic link
> library KERNEL32.dll", which seems to be a deficiency in using XP [1].
> After some digging, I've determined that the cause of this is that,
> when starting the service, spice-webdavd calls g_mutex_lock from Glib
> [2], which had XP support removed a couple of years ago [3].
> 
> Version v2.2, which comes from before the Glib change was made,
> successfully installs and runs. I have been able to map and somewhat
> use a network drive mapped to the share, but it has broken and I can't
> seem to get it working again; Windows just says that "The network path
> http://localhost:9843 could not be found." Strangely enough, when
> going to that address in Mypal, the share directory is displayed
> without any issues, and I can browse it.
> 

The purpose of spice-webdavd is to provide the port to be able to use
webdav from the guest. If another program is able to use it I would
try to understand why Windows cannot.

Just to confirm, using netstat in the guest can you see the port (9843)
in listening state?
Is the Windows XP service running?

> If this configuration is not supported, I totally understand. Part of
> why I want to point this out is so that, at the very least, this
> incompatibility could be added to the Spice User Manual [4]. Thanks!
> 

I would avoid it, Microsoft stopped supporting XP more than 6 years
ago. Windows XP is abandonware.

> [1] https://github.com/rclone/rclone/issues/1481
> [2]
> https://gitlab.gnome.org/GNOME/phodav/-/blob/2fe6090823b251c7accfd1f9706d2577e06fe189/spice/spice-webdavd.c#L636
> [3]
> https://gitlab.gnome.org/GNOME/glib/-/commit/cce29579389e892eb263d8507a71b3b3ca7433bb
> [4] https://www.spice-space.org/spice-user-manual.html

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
