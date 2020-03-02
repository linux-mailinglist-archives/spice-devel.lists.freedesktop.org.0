Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F41F7175BA9
	for <lists+spice-devel@lfdr.de>; Mon,  2 Mar 2020 14:32:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72A396E28A;
	Mon,  2 Mar 2020 13:32:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A05346E28A
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Mar 2020 13:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583155945;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  in-reply-to:in-reply-to; 
 bh=gQildbgoN/XOKZ7toDWQ2tE00NEgLtalvt5WkxbgVE0=;
 b=bRFdmhBYi9dpNptSHOBHg/V0k/DdD3JfA/eJQnKkT2vUHr7M3I9BzaEyoS3VWE4aGwxfKd
 Yr/haka7YLM7WvC89LeT0NhvJu5VdSjOHHeAfdOVSD/Slep/L9ipOgHNcnLMidU3laskYQ
 n9ys7ptCMk6ryqXZY7Qyc6cvhXARKc4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-261-9XTYCcKMNw6kNcXK8fFsrw-1; Mon, 02 Mar 2020 08:32:20 -0500
X-MC-Unique: 9XTYCcKMNw6kNcXK8fFsrw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8E3DE13752
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Mar 2020 13:32:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 82F9310013A1
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Mar 2020 13:32:19 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 76E7D18089C8
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Mar 2020 13:32:19 +0000 (UTC)
Date: Mon, 2 Mar 2020 08:32:19 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: Spice List <spice-devel@lists.freedesktop.org>
Message-ID: <746707351.14974608.1583155939397.JavaMail.zimbra@redhat.com>
In-Reply-To: <1739731898.14973844.1583155900599.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.4, 10.4.195.7]
Thread-Topic: ANNOUNCE spice-server 0.14.3 release
Thread-Index: tzOxQ63o1TfPoi2AGKwxXfdEPqgKcQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] ANNOUNCE spice-server 0.14.3 release
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

I just cut a new release in the 0.14.x stable series, this has several
regression compared to 0.14.3, so upgrading to it is recommended.
If you find any bugs or regressions, please report them in our issue
tracker: https://gitlab.freedesktop.org/groups/spice/-/issues.
See also https://gitlab.freedesktop.org/spice/spice/-/tags/v0.14.3.

Major Changes in 0.14.3:
========================

Main changes are WebSocket and support for Windows.

* Add support for WebSocket, this will allow to use spice-html5 without proxy
* Support Windows, now Qemu Windows can be build enabling Spice
* Fix some alignment problem
* Converted some documentation to Asciidoc format to make easier to update,
  updated some
* Minor compatibility fix for PPC64EL and ARMHF
* Minor fixes for big endian machines like MIPS
* Avoid some crashes with some buggy guest drivers, simply ignore the invalid
  request
* Fix for old OpenSSL versions
* Minor fix for Windows clients and brushes, fixed an issue with Photoshop
  under Windows 7
* Add ability to query video-codecs
* Small use-after-free fix
* Fix for debugging recording/replaying using QUIC images
* Fix a regression where spice reported no monitors to the client
* Fix DoS in spicevmc if WebDAV used
* Updated and improved test migration script
* Some minor fixes to smartcard support
* Avoid possible disconnection using proxies using a in-flow keepalive
  mechanism


https://www.spice-space.org/download/releases/spice-server/spice-0.14.3.tar.bz2
https://www.spice-space.org/download/releases/spice-server/spice-0.14.3.tar.bz2.sign

These releases are signed with GPG key:

 206D 3B35 2F56 6F3B 0E65  72E9 97D9 123D E37A 484F

Kind Regards,
  Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
