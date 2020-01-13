Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93056138D56
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jan 2020 09:59:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BD8089F63;
	Mon, 13 Jan 2020 08:59:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05FD889F63
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Jan 2020 08:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578905960;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cnCvyL+vVa/LsZIzdaLOzziIo/J60UQ8kpdQv9REpLo=;
 b=VaysPl0esm9Eqx+cSccV4I4UHktmh3LImKV30LJdU7h+SEc0GL2eC7lURVrkcPwQpKbIMe
 bQPuwr9LXIEhagoI246jUAePGQoqctXuSCNqIIfAo+L1W6+YSnHJkpfXM3osbCreeU7RQ+
 B8uzOr69X14OD4xwyU4ro5XXDaC1r1s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-57-YZP9nR0aNJupnUS1wRNjOg-1; Mon, 13 Jan 2020 03:59:15 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E8CB5477;
 Mon, 13 Jan 2020 08:59:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E074782474;
 Mon, 13 Jan 2020 08:59:13 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D51961809565;
 Mon, 13 Jan 2020 08:59:13 +0000 (UTC)
Date: Mon, 13 Jan 2020 03:59:11 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: Valeri Aronov <valerka@gmail.com>
Message-ID: <919043526.5551655.1578905951749.JavaMail.zimbra@redhat.com>
In-Reply-To: <CALTE0RYrP2qQM0abXvF1TkVAK7DO1tqd3T+y_UUocyqgnxa2Sg@mail.gmail.com>
References: <CALTE0RYrP2qQM0abXvF1TkVAK7DO1tqd3T+y_UUocyqgnxa2Sg@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.20, 10.4.195.19]
Thread-Topic: fast symbolic transfer function derivatives
Thread-Index: 7MXFKvn79JliscRZyEeI2BqjVEJh3Q==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: YZP9nR0aNJupnUS1wRNjOg-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Spice-devel] fast symbolic transfer function derivatives
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

> Dear all,

> I trust that I have an excellent proposition for the theme in the subject of
> this post. Using my algorithm for the evaluation of all the first and second
> derivatives (by circuit parameters) of the symbolic transfer function
> asymptotically approaches the time of the evaluation of transfer function
> itself.

> Using these derivatives allows substantially reduce the time of circuit
> parameter optimization because of much better precision of the derivatives
> evaluation (in comparison with non-symbolic derivatives evaluation) and an
> opportunity to apply optimization methods using the second derivatives.

> I am looking for discussing with or presenting this to ppl who implemented
> symbolic transfer function generation or interested in using the symbolic
> functions for parameter optimization or sensitivity evaluation.

> Cheers,

> Valeri A .

Hi,
  I have the impression you posted to the wrong Spice project,
we are Spice as www.spice-space.org, not https://en.wikipedia.org/wiki/SPICE.

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
