Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FECA13D95C
	for <lists+spice-devel@lfdr.de>; Thu, 16 Jan 2020 12:55:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2D776ECC3;
	Thu, 16 Jan 2020 11:55:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DDFF6ECC3
 for <spice-devel@lists.freedesktop.org>; Thu, 16 Jan 2020 11:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579175746;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wtKgb47A3ze/0SDNDrpxdf/J8bLJFgst8J9wVssc0aU=;
 b=ebIu2dQfe7n0z8polvwlra3o8ZqyaoQtRPUDKF0GLx03xP7zocF02+Ncgz5WJ3WjQMTww8
 TI259c6VjeVatHU6kdpYMrj7SiQo7xxlUb343adkDyMMwKWP0Tyld77bP8vUYMO/nC/YVo
 iUnUBmazzilukwaNfQubc0cj9knfwCQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-293-I7zv7ewYP-aMnvhVxB2vaw-1; Thu, 16 Jan 2020 06:55:43 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0B75218C35A1;
 Thu, 16 Jan 2020 11:55:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0257F10013A1;
 Thu, 16 Jan 2020 11:55:41 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B581F87081;
 Thu, 16 Jan 2020 11:55:41 +0000 (UTC)
Date: Thu, 16 Jan 2020 06:55:41 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: smcanoglu@dojop.com
Message-ID: <1790337285.6101494.1579175741490.JavaMail.zimbra@redhat.com>
In-Reply-To: <!&!AAAAAAAAAAAYAAAAAAAAAD+0IgOJRMRIqd1Q4p8eKsoizAAAEAAAADGXtGEQ23xNlwXs98poZW8BAAAAAA==@dojop.com>
References: <!&!AAAAAAAAAAAYAAAAAAAAAD+0IgOJRMRIqd1Q4p8eKsoizAAAEAAAADGXtGEQ23xNlwXs98poZW8BAAAAAA==@dojop.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.24, 10.4.195.24]
Thread-Topic: project
Thread-Index: AdXCJiiIX8aZ4sw/SX2QKQkY5Q7zZP8NgeIP
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: I7zv7ewYP-aMnvhVxB2vaw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] project
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

> I am looking for developers to work on Spice based VDI and
> Application/Desktop Virtualization solutions.

> Best regards,

> S.Mustafa Canoglu
> Founder
> 

Could you be a bit more specific?
What are you looking for?
Consultancy for a specific issue?
You would like to have a new private feature developed?

Regards,
  Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
