Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 975822781B6
	for <lists+spice-devel@lfdr.de>; Fri, 25 Sep 2020 09:34:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EB966EC3C;
	Fri, 25 Sep 2020 07:34:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB546EC3C
 for <spice-devel@lists.freedesktop.org>; Fri, 25 Sep 2020 07:34:34 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601019273;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1hCDh0TEz0WVmsmEhIjxZnAoBjaXpFAvxUk4gQceuKU=;
 b=OUbd7FtHywR2pMCB618m+Ln6q1xMi66TGyhn+rGvjF6XYi0nF4UH+hBzFmHuPJpM/XX5RH
 PGVQLr09ILyJqWr4vFZ+oE4xxmYtwqYhVBUfTAyyaLMb5kZpLl0YCLLSYDLTU7A3nVBj+T
 fmB4liN5a8oaTHeTQL2YAXmzDWe/+wk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-85-GUtWnisBOeScHzaRavlVNw-1; Fri, 25 Sep 2020 03:34:30 -0400
X-MC-Unique: GUtWnisBOeScHzaRavlVNw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DEB8687A831;
 Fri, 25 Sep 2020 07:34:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D43E955772;
 Fri, 25 Sep 2020 07:34:29 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id CA0D6181A050;
 Fri, 25 Sep 2020 07:34:29 +0000 (UTC)
Date: Fri, 25 Sep 2020 03:34:29 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Ian Pilcher <arequipeno@gmail.com>
Message-ID: <797216314.2109588.1601019269472.JavaMail.zimbra@redhat.com>
In-Reply-To: <rkg5ci$shh$1@ciao.gmane.io>
References: <rkg5ci$shh$1@ciao.gmane.io>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.4]
Thread-Topic: Windows 10 VDAgent incompatible with "hidden" KVM?
Thread-Index: 561WMQoIUmYOvix5bDhaqNdtMnuAlw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Windows 10 VDAgent incompatible with "hidden" KVM?
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
> I'm in the process of setting up a Windows 10 (x64) VM with an NVIDIA
> Quadro P1000 GPU (using PCI passthrough).  The GPU will be used only for
> video processing, so it has no displays connected, and access to the
> VM's user interface is via RDP or (preferably) SPICE.
> 
> I have everything working, right up to the point at which I install the
> SPICE Guest Tools, specifically the guest agent.  As soon as the agent
> is installed, the VM stops responding to any mouse actions; the pointer
> is still visible, but it has no effect.
> 
> I am able to connect to the guest with RDP and stop the SPICE VDAgent
> service.  As soon as the service is stopped, the mouse begins working
> again in the SPICE console (and restarting the agent again causes the
> mouse to stop working, etc.).
> 
> This seems to be related to the "hidden KVM" feature that is required
> by the NVIDIA drivers.
> 
>    <kvm>
>      <hidden state='on'/>
>    </kvm>
> 
> Without this flag, the NVIDIA drivers refuse to load in a virtual
> machine, giving a "Code 43" error.
> 

Do you know what this flag is doing?
Can you post the agent logs when it's not working?

> If I remove these lines from my guest's domain XML, I an able to enable
> the SPICE agent in my Windows 10 guest without breaking my mouse, but of
> course the NVIDIA GPU doesn't work.
> 
> Is there any way that this combination can be made to work?
> 


Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
