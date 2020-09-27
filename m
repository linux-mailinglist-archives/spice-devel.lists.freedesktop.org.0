Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3618827A74B
	for <lists+spice-devel@lfdr.de>; Mon, 28 Sep 2020 08:17:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D0F46E0B8;
	Mon, 28 Sep 2020 06:17:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 906 seconds by postgrey-1.36 at gabe;
 Sun, 27 Sep 2020 15:58:43 UTC
Received: from sender4-of-o53.zoho.com (sender4-of-o53.zoho.com
 [136.143.188.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92DA46E121
 for <spice-devel@lists.freedesktop.org>; Sun, 27 Sep 2020 15:58:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1601221411; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=dEjGkNUz7qN+YQTXLx1x7Vtpj9EXn16YmGoiemyQk3CSPSOSXKDN1xHeW1UU9kZZDzSpri424mCP+DG6KTPN2A3RYbZ9VVjrfRoyXAaCNp85+xO8FKvUyObG/7OyZBL6eq/o0fB/tXRD1eibyG9zPnckQeXKUPHNuWjviYuP3Q8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1601221411;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:Reply-To:Subject:To;
 bh=rRlAu1EvvZnYs3DcK3Mm1y5ILu3xSj8tcdshUFc9oIA=; 
 b=cr13K8WgMr7n/8MA4jlqUMeYjInKqmX/UQBdr7sFPFUCIUJ/rRwUd2ynIHnZ4EBSC0C0VfiLTy6BuH6ZFnRG9RUu7Q0J+jNzRQcmFvRHelLVP73DxT2lFgJ6qISAL/coDvkZzKZvTuDbWC6R3Ca3snIrtmrm0G9Kpu/eE/dbJCU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 spf=pass  smtp.mailfrom=no-reply@patchew.org;
 dmarc=pass header.from=<no-reply@patchew.org>
 header.from=<no-reply@patchew.org>
Received: from [172.17.0.3] (23.253.156.214 [23.253.156.214]) by
 mx.zohomail.com with SMTPS id 1601221410121647.6309528357335;
 Sun, 27 Sep 2020 08:43:30 -0700 (PDT)
Message-ID: <160122140872.10465.15028305606546079004@66eaa9a8a123>
In-Reply-To: <20200927145751.365446-1-marcandre.lureau@redhat.com>
MIME-Version: 1.0
Resent-From: 
From: no-reply@patchew.org
To: marcandre.lureau@redhat.com
Date: Sun, 27 Sep 2020 08:43:30 -0700 (PDT)
X-ZohoMailClient: External
X-Mailman-Approved-At: Mon, 28 Sep 2020 06:16:59 +0000
Subject: Re: [Spice-devel] [PATCH v3 0/6] Add physical display dimensions to
 spice/virtio-gpu
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
Reply-To: qemu-devel@nongnu.org
Cc: spice-devel@lists.freedesktop.org, mst@redhat.com, qemu-devel@nongnu.org,
 kraxel@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>
Resent-Message-Id: <20200928061700.7D0F46E0B8@gabe.freedesktop.org>
Resent-Date: Mon, 28 Sep 2020 06:17:00 +0000 (UTC)

Patchew URL: https://patchew.org/QEMU/20200927145751.365446-1-marcandre.lureau@redhat.com/



Hi,

This series failed the docker-quick@centos7 build test. Please find the testing commands and
their output below. If you have Docker installed, you can probably reproduce it
locally.

=== TEST SCRIPT BEGIN ===
#!/bin/bash
make docker-image-centos7 V=1 NETWORK=1
time make docker-test-quick@centos7 SHOW_ENV=1 J=14 NETWORK=1
=== TEST SCRIPT END ===

C linker for the host machine: cc ld.bfd 2.27-43
Host machine cpu family: x86_64
Host machine cpu: x86_64
../src/meson.build:10: WARNING: Module unstable-keyval has no backwards or forwards compatibility and might not exist in future releases.
Program sh found: YES
Program python3 found: YES (/usr/bin/python3)
Configuring ninjatool using configuration
---
  TEST    iotest-qcow2: 018
socket_accept failed: Resource temporarily unavailable
**
ERROR:../src/tests/qtest/libqtest.c:301:qtest_init_without_qmp_handshake: assertion failed: (s->fd >= 0 && s->qmp_fd >= 0)
../src/tests/qtest/libqtest.c:166: kill_qemu() tried to terminate QEMU process but encountered exit status 1 (expected 0)
ERROR qtest-x86_64: bios-tables-test - Bail out! ERROR:../src/tests/qtest/libqtest.c:301:qtest_init_without_qmp_handshake: assertion failed: (s->fd >= 0 && s->qmp_fd >= 0)
make: *** [run-test-138] Error 1
make: *** Waiting for unfinished jobs....
  TEST    iotest-qcow2: 019
  TEST    iotest-qcow2: 020
---
    raise CalledProcessError(retcode, cmd)
subprocess.CalledProcessError: Command '['sudo', '-n', 'docker', 'run', '--rm', '--label', 'com.qemu.instance.uuid=f6fe68779d704fd8a68205e395ce304f', '-u', '1001', '--security-opt', 'seccomp=unconfined', '-e', 'TARGET_LIST=', '-e', 'EXTRA_CONFIGURE_OPTS=', '-e', 'V=', '-e', 'J=14', '-e', 'DEBUG=', '-e', 'SHOW_ENV=1', '-e', 'CCACHE_DIR=/var/tmp/ccache', '-v', '/home/patchew/.cache/qemu-docker-ccache:/var/tmp/ccache:z', '-v', '/var/tmp/patchew-tester-tmp-znj025fh/src/docker-src.2020-09-27-11.26.18.9424:/var/tmp/qemu:z,ro', 'qemu/centos7', '/var/tmp/qemu/run', 'test-quick']' returned non-zero exit status 2.
filter=--filter=label=com.qemu.instance.uuid=f6fe68779d704fd8a68205e395ce304f
make[1]: *** [docker-run] Error 1
make[1]: Leaving directory `/var/tmp/patchew-tester-tmp-znj025fh/src'
make: *** [docker-run-test-quick@centos7] Error 2

real    17m9.398s
user    0m20.015s


The full log is available at
http://patchew.org/logs/20200927145751.365446-1-marcandre.lureau@redhat.com/testing.docker-quick@centos7/?type=message.
---
Email generated automatically by Patchew [https://patchew.org/].
Please send your feedback to patchew-devel@redhat.com
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
