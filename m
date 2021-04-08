Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB27358564
	for <lists+spice-devel@lfdr.de>; Thu,  8 Apr 2021 15:57:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B29B36EB03;
	Thu,  8 Apr 2021 13:57:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEBFD6EB03
 for <spice-devel@lists.freedesktop.org>; Thu,  8 Apr 2021 13:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617890247;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/Q+rnKqWj4oiYkLbq/qURtttLBqPM/bMPpyctc7elWo=;
 b=LXR0wlxTJeLSZC2cZ7k4iCKJXXXgj+TOFHivWYWBcq6KqunJbo94I9WhfdbXo+3HmfaUJa
 ctyPMAnBVaE3R/Nt/zTo/ueV5uu5eDTJ632/n3QGk+Xswt5pLuZbMl3NLdnRZPQ5iXSr6U
 oq+vAVYKuReNssxhlG95Edn06w0cpvc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-577-yWT9ziDzMzCtYSGSvCu7mg-1; Thu, 08 Apr 2021 09:57:25 -0400
X-MC-Unique: yWT9ziDzMzCtYSGSvCu7mg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 44921100A671;
 Thu,  8 Apr 2021 13:57:24 +0000 (UTC)
Received: from [10.35.207.6] (unknown [10.35.207.6])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4FC2B5D6AC;
 Thu,  8 Apr 2021 13:57:23 +0000 (UTC)
To: Bruce Rogers <brogers@suse.com>, spice-devel@lists.freedesktop.org
References: <20210406164947.447488-1-brogers@suse.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <9c6ada42-f970-386a-5c58-1af5ea761626@redhat.com>
Date: Thu, 8 Apr 2021 16:57:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210406164947.447488-1-brogers@suse.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=uril@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH] meson: Fix pkgconfig required library
 name reference
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

Hi,

Thanks for sending this patch.

On 4/6/21 7:49 PM, Bruce Rogers wrote:
> Signed-off-by: Bruce Rogers <brogers@suse.com>

Ack.

Uri.

> ---
>   usbredirhost/meson.build | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/usbredirhost/meson.build b/usbredirhost/meson.build
> index 28dc688..a09188c 100644
> --- a/usbredirhost/meson.build
> +++ b/usbredirhost/meson.build
> @@ -51,5 +51,6 @@ pkgconfig = import('pkgconfig')
>   pkgconfig.generate(usbredir_host_lib,
>                      name : 'libusbredirhost',
>                      description : 'usbredirhost library',
> -                   requires : [libusb_required_version, 'usbredirparser-0.5'],
> +                   requires : [libusb_required_version, 'libusbredirparser-0.5'],
>                      variables : 'exec_prefix=${prefix}')
> +
> 

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
