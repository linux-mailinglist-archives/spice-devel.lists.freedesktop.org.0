Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EFB11DF3E
	for <lists+spice-devel@lfdr.de>; Fri, 13 Dec 2019 09:17:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 625D96E28A;
	Fri, 13 Dec 2019 08:17:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 370 seconds by postgrey-1.36 at gabe;
 Fri, 13 Dec 2019 08:17:05 UTC
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E4A76E28A
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Dec 2019 08:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576225024;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KYgdPh+na5V+vaeENA2vIjMyEJwKmE0tRmLZ8fwPMzA=;
 b=BrQzKmZ81ssOzjsB2hj727KbrUyp/DMlKELYvn4PyEJe3ea8Z+eV+W8zx3H845fA+r+OXF
 +hNLa+GT9thEJasyJM4Phj+hO6x9k4IbOtUL1RdXJVd6eNzk0n9YEkPddbwy0H/S2awMIr
 m2YA29HXDWLw7oFJHWoo4Z7QdchZ3r0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-20-jdhyLwnMN4GhXLVFShLgpA-1; Fri, 13 Dec 2019 03:10:52 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E1CEC800053;
 Fri, 13 Dec 2019 08:10:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D74B910016E8;
 Fri, 13 Dec 2019 08:10:50 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9FCD75B41F;
 Fri, 13 Dec 2019 08:10:50 +0000 (UTC)
Date: Fri, 13 Dec 2019 03:10:49 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: franklin zhou <codeit@live.com>
Message-ID: <2057776774.15999309.1576224649304.JavaMail.zimbra@redhat.com>
In-Reply-To: <MN2PR06MB5966B0FE96C8C383F432BF75B3540@MN2PR06MB5966.namprd06.prod.outlook.com>
References: <MN2PR06MB5966B0FE96C8C383F432BF75B3540@MN2PR06MB5966.namprd06.prod.outlook.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.27]
Thread-Topic: spice-streaming-agent build with cmake
Thread-Index: AQHVsV2kwpPh3cBbY0C5AD4nZRbBZcAgBr8F
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: jdhyLwnMN4GhXLVFShLgpA-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Spice-devel] spice-streaming-agent build with cmake
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

> Is there a patch that supports cmake build?

No.
Why are you asking?

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
