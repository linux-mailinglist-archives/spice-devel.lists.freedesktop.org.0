Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE0E24C2A6
	for <lists+spice-devel@lfdr.de>; Thu, 20 Aug 2020 17:56:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF31E6E3A4;
	Thu, 20 Aug 2020 15:56:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 733466E3A4
 for <spice-devel@lists.freedesktop.org>; Thu, 20 Aug 2020 15:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1597938992;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LGWbKgaJGd0RnUSjh4VW43MCuTrvhPJj+ciZ2fWGf/M=;
 b=di9uUnmJPfvxDpbo2Suc/OhBPxFLHi3NFMYm11F735NaN17wnfwiAP2IHYYk8hM6I6VzRa
 vb/4I1fnBkhoXQYoguT0fpU/pjMruzCqN0hpvCK/tmlmTEBqQr1mCig1eltWtv4d/SSVEJ
 QfV0aTaICW7dCZU6RSymuhD5r+rSqdA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-24-Buw5XWKONdOpzHWm00MNkg-1; Thu, 20 Aug 2020 11:56:28 -0400
X-MC-Unique: Buw5XWKONdOpzHWm00MNkg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CED5D8030C3;
 Thu, 20 Aug 2020 15:56:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C79E5100238E;
 Thu, 20 Aug 2020 15:56:27 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id BEEC218095FF;
 Thu, 20 Aug 2020 15:56:27 +0000 (UTC)
Date: Thu, 20 Aug 2020 11:56:25 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Mario Marietto <marietto2008@gmail.com>
Message-ID: <424998896.38226851.1597938985480.JavaMail.zimbra@redhat.com>
In-Reply-To: <CA+1FSiicEUDT8jhNCnzPmwo0JwzH27F2uSCinwE36CFtrSg2pg@mail.gmail.com>
References: <CA+1FSiicEUDT8jhNCnzPmwo0JwzH27F2uSCinwE36CFtrSg2pg@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.195.108, 10.4.195.26]
Thread-Topic: xen and the support for spice GL
Thread-Index: R/R5CCmivbyivntjnnTSsjAvKzeSOg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] xen and the support for spice GL
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

> Hello.

> To make a long story short,I tried to pass through my two kinect 2 devices
> from ubuntu 20.04 to a two qemu / kvm virtual machines,where on the first
> one I have also passed through my RTX 2080 ti and on the second one,I have
> passed through also the IGPU (Intel UHD Graphics 630). This is the tutorial
> that I have followed :
> https://blog.tmm.cx/2020/05/15/passing-an-intel-gpu-to-a-linux-kvm-virtual-machine/

> It worked great,except for a "little" problem. When I attach the second
> kinect to the vm,as soon as I try to use it,its connection drops. For this
> reason,I've got an idea. Maybe what I want to do works better using the
> xen-hypervisor. So,I have created a new connection and a new vm with xen and
> virt manager and I tried to assign the Intel UHD Graphics 630 GPU to the vm
> following the tutorial above.
> It's a shame that it didn't work because the error that u see below :
> "hypervisor / libvirt does not support spice GL". So my question is if xen
> supports the spice GL or not. thanks.

Hi,
  I really didn't understand what you are trying to do.
I'm confused between KVM/Xen (I think they are quite different).
What's a "kinect" ?

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
