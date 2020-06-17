Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B43891FD1BA
	for <lists+spice-devel@lfdr.de>; Wed, 17 Jun 2020 18:15:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A01A6E101;
	Wed, 17 Jun 2020 16:15:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F63C6E101
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jun 2020 16:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592410513;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=W28ueWO32wVmWg4gU8BbdLkl3oHO12LYXEEH/H5Mlvc=;
 b=aZr8O8xl0eBfVyBwJIRzRvZnX8oHTcAlQFke4APMusvC1vzFeNiLFU4Hgq7yi2fW1Ds0MR
 gDMLyGeF1c98qD3lrvpBLlDhofAMNYhlG+OEXeE0Zhd0JCIKB0Vr+9PXL8LYUW6OfuNKtg
 SP3c1c02h2HYr0gaQs/ZVHR+sFiH8wk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-261-QaKiFlQ0MqaAsFKNagV-ww-1; Wed, 17 Jun 2020 12:15:11 -0400
X-MC-Unique: QaKiFlQ0MqaAsFKNagV-ww-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4C7261800D42;
 Wed, 17 Jun 2020 16:15:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 454BE7CAA0;
 Wed, 17 Jun 2020 16:15:10 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3E330833C6;
 Wed, 17 Jun 2020 16:15:10 +0000 (UTC)
Date: Wed, 17 Jun 2020 12:15:09 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jordan Byrne <JLByrne@hotmail.co.uk>
Message-ID: <903932274.30951193.1592410509966.JavaMail.zimbra@redhat.com>
In-Reply-To: <LO2P265MB1310375D181A1F088E05F1ACF69D0@LO2P265MB1310.GBRP265.PROD.OUTLOOK.COM>
References: <LO2P265MB1310375D181A1F088E05F1ACF69D0@LO2P265MB1310.GBRP265.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.26]
Thread-Topic: Display not working well with Android x86
Thread-Index: AQHWRDfSlfnQjA8xPUOOj24jmpmA1bMWCkOU
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Display not working well with Android x86
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

> Hi,

> I am using SPICE Display on a QEMU/KVM nested LineageOS vm with 6 cores and
> 6gb ram, the host is a Google Compute Platform N1 virtual machine with 8
> cores, 30gb memory. Taking this into account I was expecting a high latency
> from the deployment, however, when swiping or doing any animated movement it
> looks as if the display is updating in rows from the top left to the bottom
> right of the display. The image I have attached was taken just after swiping
> from right to left, it shows an example of mis-matched areas where the
> display has updated faster than its surroundings. I just wanted to know if
> there is any solution or improvement that I can implement to fix this?

> Kind regards
> Jordan

Hi,
  I never saw such behaviour!

Is it temporary and it fixes after a bit of the screen then stays with these
weird glitches?
What are the settings about streaming and wan optimisations?

Regards,
  Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
