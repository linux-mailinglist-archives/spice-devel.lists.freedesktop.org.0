Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F9429E5D3
	for <lists+spice-devel@lfdr.de>; Thu, 29 Oct 2020 09:10:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2242A6E851;
	Thu, 29 Oct 2020 08:10:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21F136E851
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Oct 2020 08:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603959012;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Iit0qKxwW7iHyYiZn6xUXxMcVBvHyRChEEi1AQiUQUo=;
 b=T6quCfRKZp76YqxVeD2dHf3DCMcwX6LWiSY3z/vFPrjHVa76Fy2J72lbAjd2JeEAB3ls7D
 GAxZwTu9lIJO5JaViKAdp4vIk483KG9G9RXkCaG2x1KKljRtXL47h51XlOg0HV0a9WWfZG
 +HJ8i69ndM2bOVywZ8d/nNtMoDRZPWQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-348-k9ecfdr2NfSu3mxW4JD31A-1; Thu, 29 Oct 2020 04:10:10 -0400
X-MC-Unique: k9ecfdr2NfSu3mxW4JD31A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1EB448015A4;
 Thu, 29 Oct 2020 08:10:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 17976619C4;
 Thu, 29 Oct 2020 08:10:09 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0F98B58103;
 Thu, 29 Oct 2020 08:10:09 +0000 (UTC)
Date: Thu, 29 Oct 2020 04:10:08 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Ian Pilcher <arequipeno@gmail.com>
Message-ID: <1165128467.5786858.1603959008695.JavaMail.zimbra@redhat.com>
In-Reply-To: <rncrhu$16el$1@ciao.gmane.io>
References: <rncrhu$16el$1@ciao.gmane.io>
MIME-Version: 1.0
X-Originating-IP: [10.40.193.244, 10.4.195.23]
Thread-Topic: How to build Windows vdagent?
Thread-Index: MWUl5BrnzTDLHdSolWHSt4jhBkXwxQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] How to build Windows vdagent?
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
> Following up on my earlier thread re the agent's incompatibility with
> "mixed" (QXL + passthrough) configurations.  I'd like to take a crack
> at this issue, but I've been unable to find any instructions for
> building the Windows vdagent.
> 
> Can anyone point me to the instructions?
> 
> Thanks!
> 

It depends on the environment you want to use.
Either you can use MingW + classic Autoconf (configure) and compile as many Unix
projects (better to have a Linux machine) or you can use CMake, better suited
for use with Visual Studio (for instance).

There's currently a minor issue using Visual Studio (just define G_DEPRECATED
preprocessor macro as empty as a workaround).

Regards,
  Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
