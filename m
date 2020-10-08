Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF13E286F56
	for <lists+spice-devel@lfdr.de>; Thu,  8 Oct 2020 09:25:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33ACB6E09C;
	Thu,  8 Oct 2020 07:25:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC4866EA34
 for <spice-devel@lists.freedesktop.org>; Thu,  8 Oct 2020 07:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602141931;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ta5UTRpEGOlbYZjTDYea8Q5ZUH78IJCUC8JJLAPhqLU=;
 b=QyIRyW7YMYvP1Zb5NxY136qnEd2jXEhJ0rsqlUBjcnOoHexywJj0uOI0FdxdhTzLdv2KyN
 Yxl3VcPAu+8vYAzSPCF/BA7rFR9MxP10Hm2k5pqKRm+ImYptQ5JrxV1raZxeFIbY9t5tMn
 e2VXKqQC8YmLlRHu4xEvSt1B+FXRzf0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-145-10Fp9SqQNxiAke7NmsQ-Gw-1; Thu, 08 Oct 2020 03:25:28 -0400
X-MC-Unique: 10Fp9SqQNxiAke7NmsQ-Gw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 615C310199B2;
 Thu,  8 Oct 2020 07:25:27 +0000 (UTC)
Received: from t490s.jjelen.redhat.com (unknown [10.40.193.132])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C2E856EF5A;
 Thu,  8 Oct 2020 07:25:26 +0000 (UTC)
To: spice-devel@lists.freedesktop.org, spice-announce@lists.freedesktop.org
From: Jakub Jelen <jjelen@redhat.com>
Message-ID: <6ec31253-256e-8894-31bf-47cd42c00516@redhat.com>
Date: Thu, 8 Oct 2020 09:25:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jjelen@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: [Spice-devel] libcacard 2.8.0 release
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hello,

We released libcacard 2.8.0 earlier this week. It is mostly bugfix 
release, but it contains these notable changes:

  * Improve project documentation
  * Bump minimal glib version to 2.32 and remove old compatibility functions
  * Switch to meson build system, replacing existing autotools
  * Create and run fuzzer drivers to improve stability
  * Introduce a new API vcard_emul_finalize() to clean up allocated 
resources
  * Remove key caching to avoid issues with some PKCS #11 modules

This release can be found at the following locations:
https://www.spice-space.org/download/libcacard/
https://gitlab.freedesktop.org/spice/libcacard/-/releases

It is signed with Viktor Toso's GPG key:
206D 3B35 2F56 6F3B 0E65  72E9 97D9 123D E37A 484F

Regards,
Jakub Jelen

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
