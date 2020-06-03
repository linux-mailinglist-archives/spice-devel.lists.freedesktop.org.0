Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A32271ECF89
	for <lists+spice-devel@lfdr.de>; Wed,  3 Jun 2020 14:12:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38ACA899A3;
	Wed,  3 Jun 2020 12:12:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6F62899A3
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Jun 2020 12:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591186353;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fBg3+WQjHkUzgyRFppevqn09FyFieAydcV+ULXl/Dj4=;
 b=EHhC9jI7vfOU8rhsmvyTlMffm1calOIqxLkl6H/CraMHcuCgzIAsZuKKk5z6DYosE6XbHd
 2FNBHaRjcHnqdeiZ3oVjbh81dvcV4ARy9gQ/OMlPZ76mTmxbGg1OkYiR3nZpVFhf3O/PO8
 Dit1UaFaFbMqHX3FXe0Yr0SN/ZB3Ob8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-259-EjUeDrFrPGWzgoGHH5UU2A-1; Wed, 03 Jun 2020 08:12:31 -0400
X-MC-Unique: EjUeDrFrPGWzgoGHH5UU2A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B9C5E805731;
 Wed,  3 Jun 2020 12:12:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 843DE61470;
 Wed,  3 Jun 2020 12:12:30 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7C3D265D10;
 Wed,  3 Jun 2020 12:12:30 +0000 (UTC)
Date: Wed, 3 Jun 2020 08:12:30 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: ole-krutov@yandex.ru
Message-ID: <1526329713.28934691.1591186350304.JavaMail.zimbra@redhat.com>
In-Reply-To: <1173961590757190@mail.yandex.ru>
References: <1173961590757190@mail.yandex.ru>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.4]
Thread-Topic: spice-streaming-agent and Wayland?
Thread-Index: AaMz+rGp2ILjyoif2CeowbMCXB/7qg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] spice-streaming-agent and Wayland?
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

> Hi all,
> with "standard" X session there's no problem to run spice-streaming-agent,
> just set up DISPLAY and XAUTHORITY env vars and we ready to go. But what to
> do in case, for example, ubuntu 20.04 in its default flavour? There's no
> such variables and I suspect that there's much differencies under the
> hood...

Hi,
  there's no current plan, we are working on some issues with Wayland
(fixed cursor grab, some are working on clipboard).
Can you open an issue? Capturing on Wayland is a bit more complicated
compared to X11.

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
