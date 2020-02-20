Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF80166470
	for <lists+spice-devel@lfdr.de>; Thu, 20 Feb 2020 18:23:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E90BE6EE12;
	Thu, 20 Feb 2020 17:23:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 930 seconds by postgrey-1.36 at gabe;
 Thu, 20 Feb 2020 17:23:11 UTC
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2920C6EE12
 for <spice-devel@lists.freedesktop.org>; Thu, 20 Feb 2020 17:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9swa799AUMlCZ0Xi+vEeyLRj3J/oascKny0m0kc//n4=; b=eifbRw/DcslqpjuNumNJdE9Hd/
 6kFM20qKywcTgoDO5rxn6BuxN8dtxP3q7u9LoIAXwxzjTVyPbEnYN9QCzThJKJIiDTpB4upk34+ry
 suSILFAZ22QzAlpJgpg+8T+OVu6xurdHZMHnXNcyGCXzZE7sV5PqksCN67DF1qyXXTGE=;
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1j4pIb-0004tn-BD
 for spice-devel@lists.freedesktop.org; Thu, 20 Feb 2020 11:07:41 -0600
To: spice-devel@lists.freedesktop.org
References: <20200218195337.4080-1-hverbeet@codeweavers.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <b2c08409-fbcd-a678-6069-55028d6e04ca@codeweavers.com>
Date: Thu, 20 Feb 2020 11:07:41 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200218195337.4080-1-hverbeet@codeweavers.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH x11spice 1/8] Style: tweak a few spaces to
 match Spice style.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Series acked and pushed.

Cheers,

Jeremy

On 2/18/20 1:53 PM, Henri Verbeet wrote:
> From: Jeremy White <jwhite@codeweavers.com>
> 
> Signed-off-by: Jeremy White <jwhite@codeweavers.com>
> Signed-off-by: Henri Verbeet <hverbeet@codeweavers.com>
> ---
>   spice-video-dummy/src/dummy.h             | 2 +-
>   spice-video-dummy/src/spicedummy_driver.c | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/spice-video-dummy/src/dummy.h b/spice-video-dummy/src/dummy.h
> index cb8afc3..d287a59 100644
> --- a/spice-video-dummy/src/dummy.h
> +++ b/spice-video-dummy/src/dummy.h
> @@ -56,7 +56,7 @@ typedef struct dummyRec {
>       int cursorFG, cursorBG;
>   
>       dummy_colors colors[1024];
> -    Bool (*CreateWindow)();    /* wrapped CreateWindow */
> +    Bool (*CreateWindow)();     /* wrapped CreateWindow */
>       Bool prop;
>   
>       Bool glamor;
> diff --git a/spice-video-dummy/src/spicedummy_driver.c b/spice-video-dummy/src/spicedummy_driver.c
> index 1dbe87b..1efae47 100644
> --- a/spice-video-dummy/src/spicedummy_driver.c
> +++ b/spice-video-dummy/src/spicedummy_driver.c
> @@ -292,7 +292,7 @@ dummy_enable_glamor(ScrnInfoRec * scrn)
>       const char *accel_method;
>   
>       if (((accel_method = xf86GetOptValString(dummy->Options, OPTION_ACCEL_METHOD))
> -        && strcmp(accel_method, "glamor")) || dummy->fd == -1) {
> +         && strcmp(accel_method, "glamor")) || dummy->fd == -1) {
>           xf86DrvMsg(scrn->scrnIndex, X_CONFIG, "Glamor disabled.\n");
>           return FALSE;
>       }
> 

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
