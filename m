Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5463325E9B2
	for <lists+spice-devel@lfdr.de>; Sat,  5 Sep 2020 20:32:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C788D6E183;
	Sat,  5 Sep 2020 18:32:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 169E06E183
 for <spice-devel@lists.freedesktop.org>; Sat,  5 Sep 2020 18:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599330752;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sc+lapmZrUh+C6pBYt8Lh9VhKRguXma8IYKsmca4JBM=;
 b=NjynEpdkf6F6SSFxwDo2dEWwUgq1NTuUfwWNJ/1O6ALGbOijZ7LmVLa3iqDvNoXR4dcGF7
 LWfBNzE+a26NLIWz/EFXcUBD5ugEcgl7+RCiH6fMPjiM5olEx7ESNlKE2+CpFrSt/Hc05a
 TXBvwzgUYVSJ6pXjuQT7PZOSa7gdCw8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-455-UiYHiVzJOkqB0Zv2UhlF5A-1; Sat, 05 Sep 2020 14:32:28 -0400
X-MC-Unique: UiYHiVzJOkqB0Zv2UhlF5A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A9605801AC4;
 Sat,  5 Sep 2020 18:32:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B1347E188;
 Sat,  5 Sep 2020 18:32:27 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 794CB79A25;
 Sat,  5 Sep 2020 18:32:27 +0000 (UTC)
Date: Sat, 5 Sep 2020 14:32:26 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: "Kevin I. Thayer" <kit10290@vtc.vsc.edu>
Message-ID: <1496214542.361463.1599330746892.JavaMail.zimbra@redhat.com>
In-Reply-To: <BL0PR0102MB34922D74D1058DC6BD08D669C52A0@BL0PR0102MB3492.prod.exchangelabs.com>
References: <BL0PR0102MB34922D74D1058DC6BD08D669C52A0@BL0PR0102MB3492.prod.exchangelabs.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.29]
Thread-Topic: Shared Playback with simultaneous clients connection
Thread-Index: AQHWgz1yN2vCoLhg7keaNEU+Bgi/iMffADcu
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Shared Playback with simultaneous clients
 connection
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

> Hello,
> I am a college student working on my senior project for Vermont Technical
> College. My little team hoped to use, the kimchi/wok environment to create a
> collaborative web browsing service. I have used the proper settings to allow
> for multiple users to use the same VM. But I have noticed both in practice
> and in the documentation; that you cannot have audio for any subsequent
> connections after the first one. I was curious if that feature has been
> added to later versions, or if it was still being worked out along the
> pipeline.
> Would you be able to give me any more information?

> Thank you for your time,
> Kevin Thayer
> B.S. CIT

Hi,
   short answer:

Not possible and there's no plan to support it.

Long answer:

Multi client support was started many years ago but then abandoned although still
in the code. Nobody remove it but also nobody improved and tested since long time.
On the other hand however nobody wanted to break the existing multi client support
and the channel added was even tested a bit to see if multi client worked.
I don't think that currently, maybe with some limitations, it would be crazily
hard to support multi client for playback channel. At the time multi client was
written (time before I knew SPICE even existed) sound channels had an entirely
different implementation which was written not supporting multi client. More
recently sound channels inherit from RedChannel which allows to support multiple
channels. I think that removing the support for time sync if you have more
than a client and not sending audio frames if client does not support the encoding
of the first client (which is very probable) it shouldn't be hard to implement it.
Not saying that I personally have time to try.

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
