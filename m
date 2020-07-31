Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D32F233EFB
	for <lists+spice-devel@lfdr.de>; Fri, 31 Jul 2020 08:18:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33AE96E9DB;
	Fri, 31 Jul 2020 06:18:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30A696E9DB
 for <spice-devel@lists.freedesktop.org>; Fri, 31 Jul 2020 06:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596176325;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=D+kTIcvJsg2Mhb9rk/g4X4swhGQSTra9+VL60z7VAb4=;
 b=QfaAn/4iYKT4KSep8doivb3/KFPiKgmz5TeNCZErJux21KLKybiLheALiswiSaG9MBq10E
 Fj/2i8ZKYje798eXL7AH+uBC+nCTMvfmf4thOqX62RzHfdVIx4f1KNWKi++pQojVHBiKZL
 4t0M/ssKdLd7yG3Ns73K+sIhue2koDI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-254-FW0ipoL-M-6Zl2P4OgZUdA-1; Fri, 31 Jul 2020 02:18:40 -0400
X-MC-Unique: FW0ipoL-M-6Zl2P4OgZUdA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E9E1D18839C1;
 Fri, 31 Jul 2020 06:18:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E36E010013C4;
 Fri, 31 Jul 2020 06:18:39 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id DB63D9A0E0;
 Fri, 31 Jul 2020 06:18:39 +0000 (UTC)
Date: Fri, 31 Jul 2020 02:18:37 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Koopa Koopa <codingkoopa@gmail.com>
Message-ID: <1548334429.36780080.1596176317474.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAM1wO0kJHZmOkie7w1ezacKf9aMiY4vcTLuBG=y66twPiycs0w@mail.gmail.com>
References: <CAM1wO0kUjpzX+G-YjaG7JfhnRAvFJ2g-n6ZQByPBMYRng6jvNA@mail.gmail.com>
 <74120881.36683304.1596096615307.JavaMail.zimbra@redhat.com>
 <CAM1wO0kdFZqRVRW4h9i_G6_Pby2_XVwoNRshZUHE-j33JqZ6vQ@mail.gmail.com>
 <20200731053131.6gucj2b3fnt6jzg6@wingsuit>
 <CAM1wO0kJHZmOkie7w1ezacKf9aMiY4vcTLuBG=y66twPiycs0w@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.14]
Thread-Topic: Webdav on Windows XP
Thread-Index: fbXcOWgdIczh0n6uNIf5jcQOWw13og==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

> On 7/31/20, Victor Toso <victortoso@redhat.com> wrote:
> > Hi,
> >
> > On Thu, Jul 30, 2020 at 01:38:54PM -0400, Koopa Koopa wrote:
> >> On 7/30/20, Frediano Ziglio <fziglio@redhat.com> wrote:
> >> >>
> >> >> Hi all,
> >> >>
> >> >> I'm trying to setup a Windows XP SP3 virtual machine with SPICE folder
> >> >> sharing. The latest version, v2.4, fails to install, as the
> >> >> spice-webdavd service fails to start. Running spice-webdavd.exe
> >> >> manually yields the error message "The procedure entry point
> >> >> AcquireSRWLockExclusive could not be located in the dynamic link
> >> >> library KERNEL32.dll", which seems to be a deficiency in using XP [1].
> >> >> After some digging, I've determined that the cause of this is that,
> >> >> when starting the service, spice-webdavd calls g_mutex_lock from Glib
> >> >> [2], which had XP support removed a couple of years ago [3].
> >> >>
> >> >> Version v2.2, which comes from before the Glib change was made,
> >> >> successfully installs and runs. I have been able to map and somewhat
> >> >> use a network drive mapped to the share, but it has broken and I can't
> >> >> seem to get it working again; Windows just says that "The network path
> >> >> http://localhost:9843 could not be found." Strangely enough, when
> >> >> going to that address in Mypal, the share directory is displayed
> >> >> without any issues, and I can browse it.
> >> >>
> >> >
> >> > The purpose of spice-webdavd is to provide the port to be able to use
> >> > webdav from the guest. If another program is able to use it I would
> >> > try to understand why Windows cannot.
> >> >
> >> > Just to confirm, using netstat in the guest can you see the port (9843)
> >> > in listening state?
> >>
> >> Yep, that port is in the listening state.
> >>
> >> > Is the Windows XP service running?
> >>
> >> Yes, it is, and I have tried restarting it.
> >>
> >> In further testing, the share works perfectly fine with the free
> >> BitKinex client, but I still can't get it to work again as a mapped
> >> drive in Windows at all. Since it continues to work without any issues
> >> in the 3rd party programs I have tried, I'm inclined to believe that
> >> the issue is not at all with spice-webdavd. It seems like either an XP
> >> bug or misconfiguration of my (clean) installation. In any case, I'm
> >> exploring other options for host/guest file sharing, as I can't seem
> >> to resolve this.
> >
> > Sorry if I missed in case you have done it before, but I think
> > you have to run the map-drive.bat script
> >
> > 	https://gitlab.gnome.org/GNOME/phodav/-/blob/master/bin/map-drive.bat
> 
> Ah, yeah, I forgot to mention that script. For the short period of
> time in which the share was working, I had gotten it to work by
> manually adding it to File Explorer. That is, I tried running the
> script, got error 67, and then successfully added the share from the
> File Explorer GUI right after. The script - or, rather, the command
> "net use * http://localhost:9843", seems to always give:
> 
>   System error 67 occurred.
> 
>   The network name cannot be found.
> 
> When setting up spice-webdavd with Windows 10, I've had this error
> occur in cases when the service is not running. In this case, though,
> the service definitely is running, and SPICE is responding to
> http://localhost:9843 in browsers in the guest.
> 
> >
> >> >> If this configuration is not supported, I totally understand. Part of
> >> >> why I want to point this out is so that, at the very least, this
> >> >> incompatibility could be added to the Spice User Manual [4]. Thanks!
> >> >>
> >> >
> >> > I would avoid it, Microsoft stopped supporting XP more than 6 years
> >> > ago. Windows XP is abandonware.
> >>
> >> Yeah, I have a Windows 10 VM that I use for most things, it's just
> >> that I have a program which requires Windows XP in order to function.
> >
> > :)
> >
> 
> 

Being abandonware is difficult to find old updates and fixes.
You can try https://download.cnet.com/Software-Update-for-Web-Folders-KB907306/3000-2064_4-10753425.html ?

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
