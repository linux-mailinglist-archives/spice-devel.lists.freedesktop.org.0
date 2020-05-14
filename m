Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D55411D2BA4
	for <lists+spice-devel@lfdr.de>; Thu, 14 May 2020 11:42:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C6386E2EC;
	Thu, 14 May 2020 09:42:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89CD86E2EC
 for <spice-devel@lists.freedesktop.org>; Thu, 14 May 2020 09:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589449325;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ShXXjYI33BsZuRxZrKIv8HwKSV61UEuPGKA9cyefloY=;
 b=MeoNMj9CVZPQFm+KtgyQrSVh/REicsGf/2sCBTVpWGPxqXZJ5RgBaVueMl68ZV6A8SpMsM
 yuRPKPO2UTxJzz9ZUwPct6hGRq+U9B5vTYJVOLK3FdNxhHl0EqTeVsa1Yq+CKOEd+Qa7T6
 BaFQPb/CtY46KDZr/a5eaz8nbSaVy/U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-300-FPJ9191JN5qN0d0W2L-iCQ-1; Thu, 14 May 2020 05:42:03 -0400
X-MC-Unique: FPJ9191JN5qN0d0W2L-iCQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 27D4B8735C0;
 Thu, 14 May 2020 09:42:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E38739E;
 Thu, 14 May 2020 09:42:01 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id EA0154E982;
 Thu, 14 May 2020 09:41:57 +0000 (UTC)
Date: Thu, 14 May 2020 05:41:57 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: sassen@thinsia.com
Message-ID: <1390359796.26946078.1589449317740.JavaMail.zimbra@redhat.com>
In-Reply-To: <4ca6628d-7930-d01e-8001-0d0640b4f6ea@thinsia.com>
References: <4ca6628d-7930-d01e-8001-0d0640b4f6ea@thinsia.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.5, 10.4.195.13]
Thread-Topic: virtual gl
Thread-Index: y0Kt3lbKV2e3RnmPmMaMhm88bzB2yA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] virtual gl
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


> Hello, is it possible to use spice together with virtual GL?

> Thanks, Roland

Hi,
  currently only the local case through unix sockets is supported

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
