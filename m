Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4FF1EA5C1
	for <lists+spice-devel@lfdr.de>; Mon,  1 Jun 2020 16:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 222AD8985A;
	Mon,  1 Jun 2020 14:27:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07E4B8985A
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jun 2020 14:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591021623;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Qn92cC2dRI8ysp36qdKvc1/CqUWi7L9/P0yJWhaE0bc=;
 b=eXtBTXpUCMtSRoJtDqo7XRJoygGk5J2DFavC5tUwYmJO3+LmPSLgqQ12Bxj3PTrrCPwgqZ
 6a89cbhD45gm4+lbWemq4R7UnA3ObC52iwYvfx9IMmQS9PAyJ9Hsk0gsSO3oYZjbsHE5Ka
 h1C0vapqyInFmptmve+PRANWg7xbtso=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-228-EsF74F5ZMy6QbP28DgYN4g-1; Mon, 01 Jun 2020 10:27:00 -0400
X-MC-Unique: EsF74F5ZMy6QbP28DgYN4g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 61942107ACCA;
 Mon,  1 Jun 2020 14:26:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2FA5519631;
 Mon,  1 Jun 2020 14:26:59 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0842F1809541;
 Mon,  1 Jun 2020 14:26:58 +0000 (UTC)
Date: Mon, 1 Jun 2020 10:26:58 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: ole-krutov@yandex.ru
Message-ID: <191822355.28679337.1591021618597.JavaMail.zimbra@redhat.com>
In-Reply-To: <2062121591020278@mail.yandex.ru>
References: <2062121591020278@mail.yandex.ru>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.4]
Thread-Topic: No mouse under Win 10 when Nvidia drivers are active
Thread-Index: TcdBVsrHxBjfTsARkpSxq6t/t5KheA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] No mouse under Win 10 when Nvidia drivers are
 active
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
> when just qxl adapter is attached to VM all works well. But when Nvidia GRID
> instance is attached and its drivers are running, mouse cursor is never
> shown on its display window. Sometimes it's just invisible but active and
> reacting to mouse movements, clicks and wheel scrolling, sometimes it's
> totally missing. This behaviour is a bit dependent of is Nvidia adapter
> alone or together with qxl. Just sometimes mouse cursor is visible on qxl
> display but it's very unstable and totally unusable. Similar behaviour is
> under linux VM too. Is it normal "won't fix" state, or can I provide some
> additional info? Windows has latest vd-agent and spice-agent installed.

Hi,
  recently we got similar reports. Can you try to see what's happen if
you disable the agent?

It seems that in these conditions the agent is not able to handle the mouse
so mouse events are "lost".

Another test would you could do is to use the "spicy" utility. This utility
has an option to switch manually the mouse mode (server/client). It would be
helpful to understand different behaviour using the 2 modes.

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
