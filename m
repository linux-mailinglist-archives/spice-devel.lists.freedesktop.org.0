Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE86C22C7F3
	for <lists+spice-devel@lfdr.de>; Fri, 24 Jul 2020 16:29:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FAFB6E97E;
	Fri, 24 Jul 2020 14:29:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB0626E97E
 for <spice-devel@lists.freedesktop.org>; Fri, 24 Jul 2020 14:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1595600958;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BzF5yJbu84Ukl8lLgNh2S+DrO8yGgoMQGtQNhVQ0OwQ=;
 b=PzropQIO4DT7IwlZJjyuHQ1pMVGHbkqA5VV7Dd1Oxa6mYuhv0NwlT1nOvjM/AQCZwMZNO7
 kc3m918r9ufNMflD0kcrggyOYrKzPSRV6Nj8YK0C3w6MDL7jvHpYvUBGtplXczeWKFLXYI
 pHKLJGFGr2e7zvm8k8Hy5JqEbrb/BcA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-477-tilTc2sxNEav_3Z9xTYzdQ-1; Fri, 24 Jul 2020 10:29:11 -0400
X-MC-Unique: tilTc2sxNEav_3Z9xTYzdQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 482F3107ACCA;
 Fri, 24 Jul 2020 14:29:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 415D71B46C;
 Fri, 24 Jul 2020 14:29:10 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3AF47A358C;
 Fri, 24 Jul 2020 14:29:10 +0000 (UTC)
Date: Fri, 24 Jul 2020 10:29:07 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Wesley Parish <wobblygong@gmail.com>
Message-ID: <877219483.36194899.1595600947229.JavaMail.zimbra@redhat.com>
In-Reply-To: <CACNPpeY4NtOOo7d9AvB0PZ0MoE12H0_C+M5-7E4wRKZzkV3edg@mail.gmail.com>
References: <CACNPpeY4NtOOo7d9AvB0PZ0MoE12H0_C+M5-7E4wRKZzkV3edg@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.20, 10.4.195.28]
Thread-Topic: last known good spice guest tools for WinXP guest?
Thread-Index: k1azXdRO3Uzn5qWgo0qj24NEiMoguw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] last known good spice guest tools for WinXP guest?
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
> Hi
> 
> I've got a Windows XP guest in a Gnome Box and I'm wondering which of
> the earlier releases of the spice guest tools is known to work well
> with Windows XP. It's a 64-bit, though I'm also intending to install
> 32-bit as well. (I've tried installing spice-guest-tools-latest but it
> refuses to install.)
> 
> My OS is Fedora 31, x86_64, and the Gnome Boxes release is 3.36.
> 
> Thanks
> 
> Wesley Parish

Hi,
  not sure but it appears last version from https://www.spice-space.org/download.html
has still XP support. But it looks like not all drivers are compiled
for Windows XP 64-bit

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
