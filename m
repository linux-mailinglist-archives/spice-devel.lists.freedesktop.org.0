Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F8613BAFF
	for <lists+spice-devel@lfdr.de>; Wed, 15 Jan 2020 09:29:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C77656E882;
	Wed, 15 Jan 2020 08:29:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 157516E882
 for <spice-devel@lists.freedesktop.org>; Wed, 15 Jan 2020 08:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579076947;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CaMmKkU7TvUQ6ocJaQjHTM5+z2HIQe8S7zxfQWnjohQ=;
 b=Pmr2+qoEyVxh9Sf6GzNT4nWj7DqFyk/TAKHIIgkvbhmWRX4L8kG4V4nNRGPCQPb9Qn1coA
 QLpJgLA6Dxh5Ibi+OGWYa5EPpdaqd3piaLUoHxffDJSvm1cModH5HmL+024RKm9eqGYcoU
 pVq6hn1K2l1gcVC871DTMmVxa4ucKFo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-350-tkyNHHMCN0WziOBuXOkrhw-1; Wed, 15 Jan 2020 03:29:04 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 08C1F801A1C;
 Wed, 15 Jan 2020 08:29:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AAD6B10843EB;
 Wed, 15 Jan 2020 08:29:02 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 81501824EA;
 Wed, 15 Jan 2020 08:29:02 +0000 (UTC)
Date: Wed, 15 Jan 2020 03:29:01 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: =?utf-8?B?0JDQvdC00YDQtdC5INCk0L7QutC40L0=?= <a.fokin@tionix.ru>
Message-ID: <1540136162.5935186.1579076941990.JavaMail.zimbra@redhat.com>
In-Reply-To: <1579001136.388600368@f153.i.mail.ru>
References: <1579001136.388600368@f153.i.mail.ru>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.14, 10.4.195.19]
Thread-Topic: Spice-protocol pre-compialtion configuration error
Thread-Index: zurTEyWqtAaTqI4KbSuXZVh+vl6xXw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: tkyNHHMCN0WziOBuXOkrhw-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Spice-devel] Spice-protocol pre-compialtion configuration error
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


> Gents , could you please advise - in case of precompiling meson activation
> warning - Build targets in project: 0 is a normal situation?

Unusual but correct, the project consists of headers to be installed,
so nothing to build.

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
