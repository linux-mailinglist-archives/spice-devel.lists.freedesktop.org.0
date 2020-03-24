Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCD4190621
	for <lists+spice-devel@lfdr.de>; Tue, 24 Mar 2020 08:16:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 652626E07D;
	Tue, 24 Mar 2020 07:16:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [63.128.21.74])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 494F36E07D
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Mar 2020 07:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585034160;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KWCkTsx/OEj2Wq48W4MBeZrybA5MhXuJ2Rv7MadOXdo=;
 b=LlCse8vo8M9S1XmtG1stQWVdA9kEje9UqXVDjFExleraD8p1kd36IHTknO6aLZlmDkY6bN
 Nauw1U4dzwF7MFCtoqrRf7GwUUbWoXiOQNgDLN+GAce9KqUi7EKlo8NOt9t3IWHc6oC2OD
 Uc9cTBAyb7B8yoF8K3WARy4GepkQ4us=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-228-5I88Ad1nM8Gylu7spD0dmg-1; Tue, 24 Mar 2020 03:15:54 -0400
X-MC-Unique: 5I88Ad1nM8Gylu7spD0dmg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3DBF48017DF;
 Tue, 24 Mar 2020 07:15:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3490A6266C;
 Tue, 24 Mar 2020 07:15:53 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0176418089C8;
 Tue, 24 Mar 2020 07:15:52 +0000 (UTC)
Date: Tue, 24 Mar 2020 03:15:52 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: yanzeng wang <yanzeng.wang@std.uestc.edu.cn>
Message-ID: <1059295903.19426820.1585034152395.JavaMail.zimbra@redhat.com>
In-Reply-To: <202003201700374079587@std.uestc.edu.cn>
References: <202003201700374079587@std.uestc.edu.cn>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.27]
Thread-Topic: [is there Android's SPICE vdagent?]
Thread-Index: CtX13ioG6+1FLcbs3/uGrhjQKq5cRQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] [is there Android's SPICE vdagent?]
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

> Dear sirs,
> I would like to know if there is Android's SPICE vdagent?
> Because we are developping android VMs and the spice vadgent may be needed.
> If not,can you offer how to build one?
> Cheers!
> yanzeng.wang

> yanzeng.wang@std.uestc.edu.cn

As far as I know no vd_agent for Android.
But it's C, should not too hard to port.

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
