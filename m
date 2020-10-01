Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AFD27FBBD
	for <lists+spice-devel@lfdr.de>; Thu,  1 Oct 2020 10:44:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68F646E88D;
	Thu,  1 Oct 2020 08:44:24 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86CBC6E88D
 for <spice-devel@freedesktop.org>; Thu,  1 Oct 2020 08:44:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A302780ED8E
 for <spice-devel@freedesktop.org>; Thu,  1 Oct 2020 08:44:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B2C9702E7
 for <spice-devel@freedesktop.org>; Thu,  1 Oct 2020 08:44:21 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 845BD44A41
 for <spice-devel@freedesktop.org>; Thu,  1 Oct 2020 08:44:21 +0000 (UTC)
Date: Thu, 1 Oct 2020 04:44:21 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel <spice-devel@freedesktop.org>
Message-ID: <1371827209.2741725.1601541861379.JavaMail.zimbra@redhat.com>
In-Reply-To: <1326575912.2741201.1601541831030.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.25]
Thread-Topic: ANNOUNCE spice-protocol 0.14.3 release
Thread-Index: ndQK9XIfmaxiyPHBV8o5FzyTxstMlw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Subject: [Spice-devel] ANNOUNCE spice-protocol 0.14.3 release
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

I just cut a new small release.
If you find any bugs or regressions, please report them in our issue
tracker: https://gitlab.freedesktop.org/spice/spice-protocol/-/issues.
See also https://gitlab.freedesktop.org/spice/spice-protocol/-/tags/v0.14.3.

Major changes in 0.14.3
=======================

* Add VD_AGENT_CLIPBOARD_FILE_LIST to support copy/paste of files with
  WebDAV support
* Add support for side mouse buttons
* Add a MonitorsMM field to VDAgentMonitorsConfig allowing to pass
  physical monitor dimension


https://gitlab.freedesktop.org/spice/spice-protocol/-/releases/v0.14.3

Kind Regards,
  Frediano
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
