Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B77284B5C
	for <lists+spice-devel@lfdr.de>; Tue,  6 Oct 2020 14:09:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1145388843;
	Tue,  6 Oct 2020 12:09:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C46F96E138
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Oct 2020 12:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601986152;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=fyS3mxpDZgXHYCPfbx4EIKKXgB+FodDrdresWRZW0CU=;
 b=Haf156RRlztNom8afRLuy02pjqqhtKYdSfno9r5dXtGLIg3K8xjaMCi3pPjWIXg1oTNL5+
 qnwiPUeyuatzWSddYiVNSSbARotq6kAFJ0di2kgLyku+YRjBTY0w7UAPHhpTDz7q0iwSFD
 zKlciMXKexaKiPmFj1kTopmjR7o2Ghw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-586-vLzx_b5tMJK3r5UNSaN74g-1; Tue, 06 Oct 2020 08:09:10 -0400
X-MC-Unique: vLzx_b5tMJK3r5UNSaN74g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 73295425D1;
 Tue,  6 Oct 2020 12:09:09 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.194.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id F05D45C1BD;
 Tue,  6 Oct 2020 12:09:07 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  6 Oct 2020 13:08:55 +0100
Message-Id: <20201006120901.17027-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] [PATCH spice-common 0/6] Multiple buffer overflow
 vulnerabilities in QUIC decoding code
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
Cc: Frediano Ziglio <freddy77@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

From: Frediano Ziglio <freddy77@gmail.com>

The patches on this series are addressing CVE-2020-14355.

Multiple buffer overflow vulnerabilities were found in the QUIC image decoding
process of the SPICE remote display system. More specifically, these flaws
reside in the spice-common shared code between the client and server of SPICE.
In other words, both the client (spice-gtk) and server are affected by these
flaws. A malicious client or server could send specially crafted messages
which could result in a process crash or potential code execution scenario.

* One issue leading to controlled writing overflow is due to the 'width *
   height' integer overflow. Using this overflow an attacker could cause small
   allocation and control the data using compressed data. Note that using the
   check for input data the attacker can avoid the crash filling the whole
   needed buffer.  ("quic: Check image size in quic_decode_begin" patch).

* Another controlled write could be achieved using the RLE decode which is
   done line by line, in theory with former lines writing more bytes in order
   to build the desired buffer content after the allocated buffer. ("quic:
   Check RLE lengths" patch).

* The "quic: Avoid possible buffer overflow in find_bucket" is a read buffer
   overflow which will dereference an invalid pointer mainly causing a crash.


* Embargo date+time: Tue, 06 Oct 2020, 12:00 hrs. UTC.

Frediano Ziglio (6):
  quic: Check we have some data to start decoding quic image
  quic: Check image size in quic_decode_begin
  quic: Check RLE lengths
  quic: Avoid possible buffer overflow in find_bucket
  test-quic: Add fuzzer capabilities to the test
  test-quic: Add test cases for quic fuzzer

 common/quic.c                          |  15 +++++++-
 common/quic_family_tmpl.c              |   7 +++-
 common/quic_tmpl.c                     |   6 ++-
 tests/fuzzer-quic-testcases/test1.quic | Bin 0 -> 4292 bytes
 tests/fuzzer-quic-testcases/test2.quic | Bin 0 -> 2808 bytes
 tests/fuzzer-quic-testcases/test3.quic | Bin 0 -> 2556 bytes
 tests/fuzzer-quic-testcases/test4.quic | Bin 0 -> 30892 bytes
 tests/test-quic.c                      |  51 ++++++++++++++++++++++++-
 8 files changed, 75 insertions(+), 4 deletions(-)
 create mode 100644 tests/fuzzer-quic-testcases/test1.quic
 create mode 100644 tests/fuzzer-quic-testcases/test2.quic
 create mode 100644 tests/fuzzer-quic-testcases/test3.quic
 create mode 100644 tests/fuzzer-quic-testcases/test4.quic

-- 
2.26.2

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
