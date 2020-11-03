Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 615552A40E8
	for <lists+spice-devel@lfdr.de>; Tue,  3 Nov 2020 10:59:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAFA36E8A1;
	Tue,  3 Nov 2020 09:59:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F6F86E8A1
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Nov 2020 09:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604397548;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CUHv3E7DaDsWYJQn/2itnX+x5TimZMcVNAiMuJRMRf8=;
 b=JkH9Lh/7mFI3/O8jLlJ3r1r4lLfN4FS2/mjDc9YAuZGjgQEXfiK9YlbXzUC5gPA9KSHMCF
 uUMx4AMNPKpZKkYWR79U9FZG5yXfQ1iteN2LS+KrkR3cl+qoB/GpkL3BcnOZfYiM2LyeG6
 vQ+oOTNzOsq+nYS6g0WuSG9iM4oVmtM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-473-nElUQhsANkKUqZnLBYOGAA-1; Tue, 03 Nov 2020 04:59:04 -0500
X-MC-Unique: nElUQhsANkKUqZnLBYOGAA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A32E2802B56;
 Tue,  3 Nov 2020 09:59:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B1F11002C21;
 Tue,  3 Nov 2020 09:59:03 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9472D18095FF;
 Tue,  3 Nov 2020 09:59:03 +0000 (UTC)
Date: Tue, 3 Nov 2020 04:59:03 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <179211112.375178.1604397543568.JavaMail.zimbra@redhat.com>
In-Reply-To: <20201103094834.7691-10-fziglio@redhat.com>
References: <20201103094834.7691-1-fziglio@redhat.com>
 <20201103094834.7691-10-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.5]
Thread-Topic: Add a test for session_info
Thread-Index: L1w2FVD8vPatgAaNrf2Ox9J2GHWgqw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] [PATCH vd_agent_linux 10/10] Add a test for
 session_info
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

Hi,
   this is currently failing on Gitlab CI, I suppose due to the fact
that is run inside a container (potentially not in a user session).

Frediano

> 
> Test from Uri, integrated in test suite.
> 
> Signed-off-by: Uri Lublin <uril@redhat.com>
> Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
> ---
>  Makefile.am               | 30 ++++++++++++++++++++
>  tests/test-session-info.c | 58 +++++++++++++++++++++++++++++++++++++++
>  2 files changed, 88 insertions(+)
>  create mode 100644 tests/test-session-info.c
> 
> diff --git a/Makefile.am b/Makefile.am
> index 575ba52..f4c65b4 100644
> --- a/Makefile.am
> +++ b/Makefile.am
> @@ -109,13 +109,43 @@ src_spice_vdagentd_SOURCES =			\
>  	src/vdagentd/virtio-port.h		\
>  	$(NULL)
>  
> +tests_test_session_info_CFLAGS =		\
> +	$(DBUS_CFLAGS)				\
> +	$(LIBSYSTEMD_DAEMON_CFLAGS)		\
> +	$(LIBSYSTEMD_LOGIN_CFLAGS)		\
> +	$(SPICE_CFLAGS)				\
> +	$(GIO2_CFLAGS)				\
> +	-I$(srcdir)/src				\
> +	-I$(srcdir)/src/vdagentd		\
> +	-DUDSCS_NO_SERVER			\
> +	$(NULL)
> +
> +tests_test_session_info_LDADD =			\
> +	$(DBUS_LIBS)				\
> +	$(LIBSYSTEMD_DAEMON_LIBS)		\
> +	$(LIBSYSTEMD_LOGIN_LIBS)		\
> +	$(SPICE_LIBS)				\
> +	$(GIO2_LIBS)				\
> +	$(NULL)
> +
> +tests_test_session_info_SOURCES =		\
> +	$(common_sources)			\
> +	src/vdagentd/session-info.h		\
> +	tests/test-session-info.c		\
> +	$(NULL)
> +
> +check_PROGRAMS += tests/test-session-info
> +
>  if HAVE_CONSOLE_KIT
>  src_spice_vdagentd_SOURCES += src/vdagentd/console-kit.c
> +tests_test_session_info_SOURCES += src/vdagentd/console-kit.c
>  else
>  if HAVE_LIBSYSTEMD_LOGIN
>  src_spice_vdagentd_SOURCES += src/vdagentd/systemd-login.c
> +tests_test_session_info_SOURCES += src/vdagentd/systemd-login.c
>  else
>  src_spice_vdagentd_SOURCES += src/vdagentd/dummy-session-info.c
> +tests_test_session_info_SOURCES += src/vdagentd/dummy-session-info.c
>  endif
>  endif
>  
> diff --git a/tests/test-session-info.c b/tests/test-session-info.c
> new file mode 100644
> index 0000000..dae3ec6
> --- /dev/null
> +++ b/tests/test-session-info.c
> @@ -0,0 +1,58 @@
> +/*  test-session-info.c  - test session info
> +
> +    Copyright 2020 Red Hat, Inc.
> +
> +    This program is free software: you can redistribute it and/or modify
> +    it under the terms of the GNU General Public License as published by
> +    the Free Software Foundation, either version 3 of the License, or
> +    (at your option) any later version.
> +
> +    This program is distributed in the hope that it will be useful,
> +    but WITHOUT ANY WARRANTY; without even the implied warranty of
> +    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +    GNU General Public License for more details.
> +
> +    You should have received a copy of the GNU General Public License
> +    along with this program.  If not, see <http://www.gnu.org/licenses/>.
> +*/
> +#include <config.h>
> +
> +#undef NDEBUG
> +#include <assert.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <unistd.h>
> +
> +#include "session-info.h"
> +
> +int main(int argc, char *argv[])
> +{
> +    int pid, uid, ck_uid;
> +
> +    pid = (int)getpid();
> +
> +    struct session_info *session_info = session_info_create(1);
> +    if (session_info == NULL) {
> +        return 1;
> +    }
> +
> +    char *session = session_info_session_for_pid(session_info, pid);
> +    if (session == NULL) {
> +        session_info_destroy(session_info);
> +        return 2;
> +    }
> +    ck_uid = session_info_uid_for_session(session_info, session);
> +
> +    free(session);
> +    session_info_destroy(session_info);
> +
> +    uid = getuid();
> +    printf("MAIN: uid is %d, ck_uid is %d\n", uid, ck_uid);
> +
> +    if (uid != ck_uid) {
> +        fprintf(stderr, "MAIN: uid (%d) does not match console-kit uid
> %d\n", uid, ck_uid);
> +        return 3;
> +    }
> +
> +    return 0;
> +}

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
