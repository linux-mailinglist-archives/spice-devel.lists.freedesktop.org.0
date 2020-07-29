Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E70FB232B83
	for <lists+spice-devel@lfdr.de>; Thu, 30 Jul 2020 07:46:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9CE26E854;
	Thu, 30 Jul 2020 05:46:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com
 [IPv6:2607:f8b0:4864:20::72c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F3696E171
 for <spice-devel@lists.freedesktop.org>; Wed, 29 Jul 2020 22:13:36 +0000 (UTC)
Received: by mail-qk1-x72c.google.com with SMTP id j187so23811542qke.11
 for <spice-devel@lists.freedesktop.org>; Wed, 29 Jul 2020 15:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=OoY2bEFpvKAZd4H2+DpP/H+9pN5VSyimrTqEvwpNzLU=;
 b=JdEUKf13fa6XUREL0D8Ws+z7Kn1hoPkk1rTHfv2etwpeo0+LMvMrr4UgjXOPctQMv+
 kyiF5DOnqzyLV+g3Q+UMPwpin//Wt1mvfmqoqV8nAfd0soJbEeji8HyqQksGRAJH1/AI
 3GhAiA7O5l4udzFfrRQXSn61Sq5f7IUjT8hQVIs2F2w5LZTJQS6zW5PnHI5Rs9i5jH2P
 HcYb7rQHDXuUf+0VcA0rtdBuHPxgdU0puQtCPCucVnJxG5ELtcysrIX41qlyWSCcay+W
 Wgb5dVAqzOqd4EQutn8zoYaEy7Oojhv4KiflkPG/woej3+D2uco+OUYOknJf4lmGcT3P
 nzIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=OoY2bEFpvKAZd4H2+DpP/H+9pN5VSyimrTqEvwpNzLU=;
 b=HzMrTms+3/wXus/x2tfKmVMnt7TxfsHw86MHJQyhWUPB5quZQF/RSGl/gKtAAbivk3
 qCecT/uNrn0N/XwtmUBB7Hx4GrySNx8KpiSOU8GgMddKCch51fP4jpWaxfyXpQdVe6qh
 k8JvUp0us6bwwKuSroiV04hmGrSnTreY156VF8qyaWBNwmvb648Vn43gN7TAoBTg8Zn+
 4VJqXhMySAMapBcrfyU9HhsnOMgIzVDIiFtLFBuXeVqWWkVer87GCl/hB/tqK5CVb7Jv
 lmXit2WP6Y9WTe66Sq78IWvketnIRdzCL+ajLBXw7jlYqZGA7xIFDBSR2Cth+oSn51/h
 d/Kg==
X-Gm-Message-State: AOAM5312RFTZUut9YEbCDlhNS8vJVTYLzVi/J6cwqNTkIqK4nM6KkC9K
 QKcvIQaQeZH3gCWQqeKE41QtrBQwkQHQUozkFsMaGHQF
X-Google-Smtp-Source: ABdhPJzSVLs6bAfnazJrcsdZLwlJMndsXJ2Y1HZefTpK912CqKI/kF/xeOuJzp1+QoLofqaua0Vlj57mnlD0zeMBfhM=
X-Received: by 2002:a37:b907:: with SMTP id j7mr7348907qkf.120.1596060815325; 
 Wed, 29 Jul 2020 15:13:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad4:4494:0:0:0:0:0 with HTTP; Wed, 29 Jul 2020 15:13:34
 -0700 (PDT)
From: Koopa Koopa <codingkoopa@gmail.com>
Date: Wed, 29 Jul 2020 18:13:34 -0400
Message-ID: <CAM1wO0kUjpzX+G-YjaG7JfhnRAvFJ2g-n6ZQByPBMYRng6jvNA@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Thu, 30 Jul 2020 05:46:25 +0000
Subject: [Spice-devel] Webdav on Windows XP
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

Hi all,

I'm trying to setup a Windows XP SP3 virtual machine with SPICE folder
sharing. The latest version, v2.4, fails to install, as the
spice-webdavd service fails to start. Running spice-webdavd.exe
manually yields the error message "The procedure entry point
AcquireSRWLockExclusive could not be located in the dynamic link
library KERNEL32.dll", which seems to be a deficiency in using XP [1].
After some digging, I've determined that the cause of this is that,
when starting the service, spice-webdavd calls g_mutex_lock from Glib
[2], which had XP support removed a couple of years ago [3].

Version v2.2, which comes from before the Glib change was made,
successfully installs and runs. I have been able to map and somewhat
use a network drive mapped to the share, but it has broken and I can't
seem to get it working again; Windows just says that "The network path
http://localhost:9843 could not be found." Strangely enough, when
going to that address in Mypal, the share directory is displayed
without any issues, and I can browse it.

If this configuration is not supported, I totally understand. Part of
why I want to point this out is so that, at the very least, this
incompatibility could be added to the Spice User Manual [4]. Thanks!

[1] https://github.com/rclone/rclone/issues/1481
[2] https://gitlab.gnome.org/GNOME/phodav/-/blob/2fe6090823b251c7accfd1f9706d2577e06fe189/spice/spice-webdavd.c#L636
[3] https://gitlab.gnome.org/GNOME/glib/-/commit/cce29579389e892eb263d8507a71b3b3ca7433bb
[4] https://www.spice-space.org/spice-user-manual.html
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
