Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A0F21D28E
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jul 2020 11:12:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E90A189BFE;
	Mon, 13 Jul 2020 09:12:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16B6289BFE
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Jul 2020 09:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594631545;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XcL/88+hHA7Q9PQEzMc4gndaSTH1BdqotuwyysoY8Y0=;
 b=D744zTabvs+8nwMR+SZt1WT5YZM0Kkjp1n1xMTbiWJvOinYWEqtWTa6kq8l2T6QMXFjzuX
 3ypjT4ylgA88vyWMuOEk/+jv07rS7yPNff8CQKNkYCQql+9sORUZUrEwXo9x1xFNJ6JzkH
 8sr6kkbkxjNib8aClsu8SexodNUeeoQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-371-1TBsQEqmMOy3ueqqcGBf9g-1; Mon, 13 Jul 2020 05:12:19 -0400
X-MC-Unique: 1TBsQEqmMOy3ueqqcGBf9g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C34A78027E4;
 Mon, 13 Jul 2020 09:12:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BBBA35D9DC;
 Mon, 13 Jul 2020 09:12:18 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id A816E94EEB;
 Mon, 13 Jul 2020 09:12:18 +0000 (UTC)
Date: Mon, 13 Jul 2020 05:12:16 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Gerd Hoffmann <kraxel@redhat.com>
Message-ID: <319372330.34271280.1594631536029.JavaMail.zimbra@redhat.com>
In-Reply-To: <20200713073148.3w63nucg5z23kzlm@sirius.home.kraxel.org>
References: <20200712080107.175-1-yuri.benditovich@daynix.com>
 <20200713073148.3w63nucg5z23kzlm@sirius.home.kraxel.org>
MIME-Version: 1.0
X-Originating-IP: [10.40.195.138, 10.4.195.28]
Thread-Topic: qxl-wddm-dod: fix behavior on v5 device
Thread-Index: e0z4gMe2/LVLPVPRDMLl/81DuQ5OMg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] [PATCH 1/2] qxl-wddm-dod: fix behavior on v5
 device
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

> 
> Hi,
> 
> > @@ -4795,7 +4796,8 @@ NTSTATUS QxlDevice::HWClose(void)
> >  {
> >      PAGED_CODE();
> >      QxlClose();
> > -    if (m_bUefiMode)
> > +    /* QXL device rev 5+ requires explicit reset to switch to VGA mode */
> > +    if (m_bUefiMode || m_pQxlDod->Revision() > 4)
> >      {
> >          DbgPrint(TRACE_LEVEL_INFORMATION, ("%s: Resetting the device\n",
> >          __FUNCTION__));
> >          WRITE_PORT_UCHAR((PUCHAR)(m_IoBase + QXL_IO_RESET), 0);
> 
> I'm wondering why this is conditional in the first place?
> Isn't it a good idea to reset the device on close no matter what?
> 
> take care,
>   Gerd
> 

Surely it's less willing to cause possible regressions.

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
