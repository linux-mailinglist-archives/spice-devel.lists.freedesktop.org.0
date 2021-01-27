Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6877A30600A
	for <lists+spice-devel@lfdr.de>; Wed, 27 Jan 2021 16:47:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D18256E84C;
	Wed, 27 Jan 2021 15:47:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F4D46E84C
 for <spice-devel@lists.freedesktop.org>; Wed, 27 Jan 2021 15:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611762447;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UvmKDr+GhCCPJyCWVIoN4Q/DJoTw8AZn9aT4Y3fbda4=;
 b=OUa3ZqN5aPERgjYwRgMZrDfykMsiP2OWGb4npj4fe/7oezZWzfp9LHM1P1eF0s+YtsTtM4
 24szH3OpuvSG5y6N8HOFxm6DP+l9BKavSyG6CKBDEA9JGQaU9dnNa3LafJ2MOrBJP0d6nE
 PyJL52hFn2SEphndUNjgYK8lnSVxdaA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-574-wxNXARx9OR6LDGpm80cpgQ-1; Wed, 27 Jan 2021 10:47:23 -0500
X-MC-Unique: wxNXARx9OR6LDGpm80cpgQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 99EBF1927806;
 Wed, 27 Jan 2021 15:47:21 +0000 (UTC)
Received: from [10.35.206.241] (unknown [10.35.206.241])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D78431007612;
 Wed, 27 Jan 2021 15:47:20 +0000 (UTC)
To: lx <lxlenovostar@gmail.com>, spice-devel@lists.freedesktop.org
References: <CA+5jrfnjJnAi+FSCcHxNsyX=fnRF4RGFBOsH-+CHUbdNxeT-Fg@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <16e2b237-ffad-6bf0-d714-0c00fb658030@redhat.com>
Date: Wed, 27 Jan 2021 17:47:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <CA+5jrfnjJnAi+FSCcHxNsyX=fnRF4RGFBOsH-+CHUbdNxeT-Fg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=uril@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Spice-devel] Is the data after USB camera redirection
 compressed?
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 1/27/21 4:22 AM, lx wrote:
> Hi all:
>         If I redirect USB camera to virtual machine, I think we send
> original URB to virtual machine by USB channel.
> Is this understanding correct? If we want to improve the user experience,
> we need to compress URB data?

Hi,

If you build with lz4 enabled (both client and server),
then it should use lz4 to compress the data.

There is no functionality to create
a video stream out of raw data.

Can the USB camera be configured to send a compress stream?

Uri.

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
