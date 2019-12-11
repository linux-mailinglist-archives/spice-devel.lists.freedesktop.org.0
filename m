Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFBE11A654
	for <lists+spice-devel@lfdr.de>; Wed, 11 Dec 2019 09:56:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFBCF6EA99;
	Wed, 11 Dec 2019 08:56:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 283F36EA99
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Dec 2019 08:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576054577;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Fq8v08tZCw2wwJpWZDYAvSg9H8FaNGqlnqpL9Qzln/E=;
 b=ZYd+AmzRR/JnDFCynl1LJy5IKzsl60ZJGDx2os0Us1Hr1tObrvcZafriEBKcT9L8pu8I6J
 YDjQpYYtnKXEYeefa0q7Jd6O1QZdRAl/bcQ83z2JDP1iUGkgztQRUAMeeabzFJxvKARp6O
 QIlfgntiBWmOsbBoRG9uAvFV0iTTXZ4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-141-51X538CkPgGlNOZukEN0lg-1; Wed, 11 Dec 2019 03:56:15 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E968A189DF7D;
 Wed, 11 Dec 2019 08:56:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E0F8C19756;
 Wed, 11 Dec 2019 08:56:13 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id DA21D18089CD;
 Wed, 11 Dec 2019 08:56:13 +0000 (UTC)
Date: Wed, 11 Dec 2019 03:56:11 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: Wenxu Zhou <codeit@live.com>
Message-ID: <600699408.15191044.1576054571697.JavaMail.zimbra@redhat.com>
In-Reply-To: <MN2PR06MB59666676236ED0DE91440618B35A0@MN2PR06MB5966.namprd06.prod.outlook.com>
References: <MN2PR06MB59666676236ED0DE91440618B35A0@MN2PR06MB5966.namprd06.prod.outlook.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.24, 10.4.195.26]
Thread-Topic: spice-streaming-agent on windows
Thread-Index: AQHVr/JBWg5+fb0oVEygi3VOIxT91rAVv5Gp
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: 51X538CkPgGlNOZukEN0lg-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Spice-devel] spice-streaming-agent on windows
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

> Is there a plan for spice-streaming-agent to support the windows system?

No, but patches are welcome

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
