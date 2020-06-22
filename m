Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A6220367C
	for <lists+spice-devel@lfdr.de>; Mon, 22 Jun 2020 14:11:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A36489CF7;
	Mon, 22 Jun 2020 12:11:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AE7A89CF7
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jun 2020 12:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592827876;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8NoPGfH8Bvprt4B4J23Ujiq7yrU12tpQ5/7gz3G0usY=;
 b=fG2TAazIDPqnDQg8yeRrx/6wHizsIeChtT6fnAWiySkoHliNcKhxJ9BTcyTA2zZv9YPkYS
 CiHPWZgxwO92zLlak2Jq9/8FDTwqRhiMXZuLlKIE0RR/9IDwNUAn3vpjXUkCD1s4vMxBbh
 aGv9qaMiVdCg0UJg7ip2TfnjbBQGizM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-183-mYq3no6mM6eTVzp_yV2H4g-1; Mon, 22 Jun 2020 08:11:09 -0400
X-MC-Unique: mYq3no6mM6eTVzp_yV2H4g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D648419200C1
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jun 2020 12:11:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CF4011A888
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jun 2020 12:11:08 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 653131809543;
 Mon, 22 Jun 2020 12:11:07 +0000 (UTC)
Date: Mon, 22 Jun 2020 08:11:05 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francesco Giudici <fgiudici@redhat.com>
Message-ID: <876026297.31731838.1592827865728.JavaMail.zimbra@redhat.com>
In-Reply-To: <596e9d0f-a8d2-ff4e-a34b-92bacfc52cfe@redhat.com>
References: <596e9d0f-a8d2-ff4e-a34b-92bacfc52cfe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.5, 10.4.195.3]
Thread-Topic: SPICE: contributor guidelines
Thread-Index: MfLgX7I+N7F1899VJIYPEVfrxLSUaA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] SPICE: contributor guidelines
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

> 
> Hi SPICE community!
>     After thinking a while on the discussion in the thread:
> "SPICE: changing the merge rules - a proposal"
> I would like to come back on the topic and make explicit the way merge
> requests, changes and reviews are expected to be managed in our
> community. The core points that seems to me all of us want and agree
> upon are:
> 
> * Each merge request / patch should get a review (trivial patches may be
> an exception and be merged without review).
> 
> * Each merge request / patch should get a review in a timely manner.
> 
> Note that the meaning of "timely" and what a "trivial" patch is are not
> defined: I think this is exactly the point for an open source community.
> We don't want strict rules that force people to contribute in a specific
> way or under a strict time-frame and I (we) trust each other to do the
> right thing in respect of the project and the community. This is enough
> once there are clear guidelines.
> There could be errors from time to time, sure... but as long as we stay
> together and collaborate as a community, they can be easily fixed.
> 
> Unfortunately enforcing some strict rules was exactly what I tried to do
> in my previous mail. It may have brought tension to our community and
> that was not my intention, sorry for that.
> 
> So, for the sake of clarity for actual and future contributors, if we
> want to write down a short and simple list of "rules" (guidelines) for
> contributing to the SPICE project, I would say they could be:
> 
> 1) Get a review before merging a non-trivial patch
> 2) Keep asking reviews more and more if not getting one
> 3) Ensure each one asking a review gets one in a timely manner
> 
> I would love to read your comments, opinions and ideas.
> 
> Francesco
> 

Hi,
  I think these guidelines are fair and good.

Probably they are a bit "essentials" and many questions (like you said
for instance various definitions) could arise.

I noted that the page on https://www.spice-space.org/developers.html
is pretty outdated.

Regards,
  Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
