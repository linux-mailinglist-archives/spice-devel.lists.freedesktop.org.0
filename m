Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F08FE1F1B4C
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jun 2020 16:48:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A48E6E8E0;
	Mon,  8 Jun 2020 14:48:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07C706E8E0
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jun 2020 14:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591627714;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UiL9s3wzBsgXqFK3sTa8JVgqMymiCvW6qHAuLVMxlTs=;
 b=Lex46pMLiMoHOuIh13ijJx4Bx/S4tE0wQszkbO/ofUVNtWqrAY4nLha/qKwWe3cAj+Yge+
 skUipFwVKwY3UTby9l6azR/inLqst/y/7Lp6Khlf3e1y2KgGqy3vJTIMKzpT2Qs0PpLn2M
 BdFR/G9AFMmaavunPKFJPbaoBQqQvoo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-314-r5jMIIQaNV6CXe2KI-kDPw-1; Mon, 08 Jun 2020 10:48:33 -0400
X-MC-Unique: r5jMIIQaNV6CXe2KI-kDPw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE220884DDF;
 Mon,  8 Jun 2020 14:48:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BC37080E98;
 Mon,  8 Jun 2020 14:48:05 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B42EDB348A;
 Mon,  8 Jun 2020 14:48:05 +0000 (UTC)
Date: Mon, 8 Jun 2020 10:48:05 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: laurens nikolaisen <laurens.nikolaisen@posteo.de>
Message-ID: <1464713635.29902616.1591627685308.JavaMail.zimbra@redhat.com>
In-Reply-To: <9fe938f74ff5b7e5a198464811947eff@posteo.de>
References: <9fe938f74ff5b7e5a198464811947eff@posteo.de>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.10, 10.4.195.21]
Thread-Topic: Using QXL & Spice with Windows Host & QEMU
Thread-Index: sPudvcE23FFoarzPb3UbWTveQXd0Lw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Using QXL & Spice with Windows Host & QEMU
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

> 
> Hello everyone,
> 
> when using Qemu 4.2.0 with a Windows host, qemu-system-x86_64 reports:
> "QXL VGA not available"
> 
> I used the following Qemu args for testing:
> qemu-system-x86-x64.exe -accel hax -machine q35 -m 4GB -cdrom
> xubuntu-20.04-desktop-amd64.iso
> 
> Using either "-vga stdt" or "-vga vmware" works. The performance is just
> not that good.
> 
> Do I have a chance to get that up and running with a Windows 10 host and
> Qemu?
> 
> Thanks,
> Laurens

Hi,
  I suppose from the .exe extension you are using on Windows.
Probably that executable has no SPICE compiled in, not all package it on
Windows, it was added officially in last version (0.14.3).

Regards,
  Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
