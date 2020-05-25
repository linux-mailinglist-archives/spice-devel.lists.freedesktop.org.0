Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7DD1E07A8
	for <lists+spice-devel@lfdr.de>; Mon, 25 May 2020 09:19:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8B7B89C16;
	Mon, 25 May 2020 07:19:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E97C89C16
 for <spice-devel@lists.freedesktop.org>; Mon, 25 May 2020 07:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590391171;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SWipd8uJolrow48rIBOQ2JEkV1zBKjc8jlB7z6uRsj8=;
 b=TykxWPDM6IykADPu9iHXG+26vLXumAdsCXnKdZfNgPDh1xM8eZdPhqluGaeLBOHKq1jr+K
 JHG3xDXOqR0k/cXCAnCPX3PTagq2MFoYpZkHZR4T0gbc7rRVhA+zeoZFRVzaaSx+HOWRi2
 Yr9XQ1hK4uFq5VmQXQUL1n+yJbfKx/g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-108-T4faX0e1OAK9Mid5vxWnNA-1; Mon, 25 May 2020 03:19:30 -0400
X-MC-Unique: T4faX0e1OAK9Mid5vxWnNA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 222EB80183C;
 Mon, 25 May 2020 07:19:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C1876EDAF;
 Mon, 25 May 2020 07:19:27 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4756354D1E;
 Mon, 25 May 2020 07:19:26 +0000 (UTC)
Date: Mon, 25 May 2020 03:19:24 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: =?utf-8?B?0JjQu9GM0Y8=?= <iliya@i-terezie.ru>
Message-ID: <1317899397.28040740.1590391164979.JavaMail.zimbra@redhat.com>
In-Reply-To: <5f8d4665157ae5fc7b8e2c27f5d81b14@i-terezie.ru>
References: <5f8d4665157ae5fc7b8e2c27f5d81b14@i-terezie.ru>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.1]
Thread-Topic: Work via slow networks
Thread-Index: 1dWp0xBtPko8Oh8XPmLSQ2HYSu6zKA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Work via slow networks
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
> I have a problem with slow rendering of a changing desktop via a slow
> network. SPICE tries to render all the states of the screen
> sequentially, instead of immediately drawing the final state.
> 
> What settings can you remove this behavior?

Hi,
  I'm not sure, unfortunately, there's a way to entirely remove this behavior,
at least with current optimizations.
Can you describe better your case?
What's slow mean, I mean, speed? 10Mbit? Less? More?
Do you know the latency of the connection?
What type (mobile/wifi/cabled/lan/wan) ?
Which kind of guest (OS/configuration/use case) are you using?
In the subject you state a "slow network" in the message you speak
about "slow rendering", that's quite different from the way I see it,
what specific issues are you noting?

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
