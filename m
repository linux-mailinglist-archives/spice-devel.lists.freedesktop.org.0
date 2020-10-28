Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8D429D0F0
	for <lists+spice-devel@lfdr.de>; Wed, 28 Oct 2020 17:08:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92FCF6E4AB;
	Wed, 28 Oct 2020 16:08:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75C436E4AB
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Oct 2020 16:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603901322;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  in-reply-to:in-reply-to; 
 bh=fbpsPHzVcDKE55qw0sHfPimpdaxhFmTWMEI08al7grY=;
 b=GfXrsU2T46xrxyv40eS+Ej1NG9ToeZ/h85hAjaJrTh7GQNEci+2JerEKYBmwDD0CFx6BCv
 Yy+pHBDVzh4C4GtzhvFTgog6Wdafyv29B1IMoRtbZQoxcMWQc7gTL6L97ufKG6hN3Oc4FV
 OUAIiW5FoMxUDcdOPUQ3zGsu07gTtHE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-582--tnZ8nO4Mr-bV7oHRwO9yA-1; Wed, 28 Oct 2020 12:08:36 -0400
X-MC-Unique: -tnZ8nO4Mr-bV7oHRwO9yA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 25D39936CA9
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Oct 2020 16:08:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1FA8760C04
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Oct 2020 16:08:35 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1955358103
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Oct 2020 16:08:35 +0000 (UTC)
Date: Wed, 28 Oct 2020 12:08:35 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel <spice-devel@lists.freedesktop.org>
Message-ID: <176547150.5721914.1603901315064.JavaMail.zimbra@redhat.com>
In-Reply-To: <1798225862.5721507.1603901176982.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.192.4, 10.4.195.5]
Thread-Topic: ANNOUNCE spice-server 0.14.91 release candidate
Thread-Index: Yo4LtJgYGsEUHFLUjFx4jZh7PIZiOQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] ANNOUNCE spice-server 0.14.91 release candidate
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hey everyone,

I just cut a new release candidate in the 0.14.x stable series.
If you find any bugs or regressions, please report them in our issue
tracker: https://gitlab.freedesktop.org/groups/spice/-/issues.
See also https://gitlab.freedesktop.org/spice/spice/-/tags/v0.14.91.

Major Changes in 0.14.91:
=========================

**IMPORTANT**
0.14.91 is the first release candidate for the stable 0.15.x series. While some
bugs might still be present, it should be reasonably stable. If you are looking
for stability for daily use, please keep using the latest 0.14.x release.

* Support UNIX abstract sockets
* Fix some potential thread race condition in RedClient
* Many cleanups in the code
* Improve migration test script
* Update in protocol documentation
* Improve Meson build
* Removed CELT support
* Update CI 
* Removed QXLWorker definition, it was deprecated 6 years ago
* Fix some compatibility with MacOS
* Fix some compatibility with Windows
* Move the project to C++
* Some fixes for SASL dealing with WebDAV
* Fix minor Coverity reports
* Add Doxygen support, manually built with "make doxy"
* Support more mouse buttons (up to 16 buttons)
* CVE-2020-14355 multiple buffer overflow vulnerabilities in QUIC decoding
  code


https://www.spice-space.org/download/releases/spice-0.14.91.tar.bz2

Kind Regards,
  Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
