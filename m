Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1C11FC99C
	for <lists+spice-devel@lfdr.de>; Wed, 17 Jun 2020 11:17:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7995C6E544;
	Wed, 17 Jun 2020 09:17:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2978E6E544
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jun 2020 09:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592385418;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3hoxKkV/JzpY4Z+SwawQ/OaRrUZLxZBYffUeoHHmOiU=;
 b=WgTgo0XMd5xwSC0EtaDxT1WTqKELk3oOBhF5IkUmKYHeesgV3envwAYFS0aezlwbX6LtpJ
 x5WaY4PGw/sHuyMfLU4OVTQ75cV4zSMSoFwFfd3/npU0WGnm879tGcDj1AUVaJRhQVTKAW
 DX5yCFVQXuQ8O78rrcpouu4DrXiU/5Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166-R_DO4TaaOoeXleayii46Mw-1; Wed, 17 Jun 2020 05:16:55 -0400
X-MC-Unique: R_DO4TaaOoeXleayii46Mw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0671F873430;
 Wed, 17 Jun 2020 09:16:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 003C35D9D3;
 Wed, 17 Jun 2020 09:16:54 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id EDE7218095FF;
 Wed, 17 Jun 2020 09:16:54 +0000 (UTC)
Date: Wed, 17 Jun 2020 05:16:54 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: David Arledge <wdarledge@yahoo.com>
Message-ID: <1740361965.30895039.1592385414642.JavaMail.zimbra@redhat.com>
In-Reply-To: <410177428.1340580.1592328689772@mail.yahoo.com>
References: <1107345351.1422205.1592328530239.ref@mail.yahoo.com>
 <1107345351.1422205.1592328530239@mail.yahoo.com>
 <410177428.1340580.1592328689772@mail.yahoo.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.17]
Thread-Topic: HELP for install of spice-gtk on Slackware
Thread-Index: uJnOWZOeSZD3CdZmNLNLUA5idmXA8w==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] HELP for install of spice-gtk on Slackware
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

> Sorry, forgot the screenshot.
> Pardon!
> David

> On Tuesday, June 16, 2020, 12:28:56 PM CDT, David Arledge
> <wdarledge@yahoo.com> wrote:

> Sirs;

> I have had a problem installing "spice-gtk". I have installed without problem
> - opus, vala, spice, opus, spice-protocol,
> six & pyparsing. Attached is a screenshot of the error while running -

> ./# installpkg spice-gtk.SlackBuild

> Did the programmer fail to "end the file" properly or did I make a mistake.

> You are my only hope of settling this question. Without your amicable help, I
> will fail to install
> Spice-gtk then fail to install Remmina, then fail at preforming the task
> required of me to "add
> a folder in Windows to the Desktop" on my Linux (Slackware) box for the "IT
> Support Pro"
> Certification by Google/Coursera. This RDP - Remmina is mandated by Coursera
> to accomplish
> this simple task. The part of this that has been a real challenge is the
> installing of .tar.gz on
> Slackware. If you use Slack, then you know how difficult this can be for a
> Novice. I have
> accomplished this - as you can obviously see - but, I am having trouble with
> your package.

> Could you take a look and tell me if this is a fatal error or can I just -
> "Ctrl-C" out and move on to
> the other dependencies for Remmina - vte3 and json-glib and libsodium and
> freerdp without
> any consequences?

> Thank you ever so much for your Reply.

> W David Arledge
> wdarledge@yahoo.com

Hi,
  it looks like the file SpiceClientGLib-2.0.gir was not generate correctly.
Can you post the content?

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
