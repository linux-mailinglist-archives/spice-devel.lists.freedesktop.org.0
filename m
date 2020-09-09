Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA0A262ED4
	for <lists+spice-devel@lfdr.de>; Wed,  9 Sep 2020 14:59:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01C696EB51;
	Wed,  9 Sep 2020 12:59:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 219836EB51
 for <spice-devel@lists.freedesktop.org>; Wed,  9 Sep 2020 12:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599656373;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bITBJ52J7QEfYaA66k2jAikKjkyBsU+BuFGq0JK9cy8=;
 b=GN0sYkuX5DuG0X8UohjKnXASpVaeytmJyJ8IVVEXFPfhFhGGg6EFZSXfPMgzWxzAmE9+/h
 HiGwNYwVPJOpEBo+JHyxbfxOsTYUQz5FPwc/iiLg3BGtOA80dMsRgEiR8iq8qHEPitccSm
 6b/oaARRjjTSEejdK5kL9eR4JWIilz8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-473-y7H50EOgMlaoneSbd1JIWQ-1; Wed, 09 Sep 2020 08:59:31 -0400
X-MC-Unique: y7H50EOgMlaoneSbd1JIWQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7FBD710BBED3;
 Wed,  9 Sep 2020 12:59:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7783C7D4FA;
 Wed,  9 Sep 2020 12:59:30 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 710A779A16;
 Wed,  9 Sep 2020 12:59:30 +0000 (UTC)
Date: Wed, 9 Sep 2020 08:59:30 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Ding Fei <danix800@gmail.com>
Message-ID: <223927406.647809.1599656370088.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAPVVTEDBiN0KzDBZFBUNhKc3MydLUoOKiz0bS2-MtkdkenNqYg@mail.gmail.com>
References: <CAPVVTEDBiN0KzDBZFBUNhKc3MydLUoOKiz0bS2-MtkdkenNqYg@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.4, 10.4.195.30]
Thread-Topic: Is it a possible memory leak (spice-gtk/src/channel-display.c)?
Thread-Index: BABtioF/+rCdwq4jJ3CjNhcoD0euLg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Is it a possible memory leak
 (spice-gtk/src/channel-display.c)?
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

> Hi all, for the latest commit in 'spice-gtk/src/channel-display.c', in the
> static function
> 'create_canvas', the first returning point (line 997) and the 'if
> (surface->primary)' (line 1036)
> is not taken then the second returning point, the allocated memory for
> surface would be lost.

> All the calling site store surface on the stack.

> Can anyone confirm this?

> --
> Best Regards

> Ding Fei
> E-mail: danix800@gmail.com

Indeed, you should g_free(surface).

OT: And apparently format is not used any more.

Frediano 

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
