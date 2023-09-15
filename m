Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B01857A2455
	for <lists+spice-devel@lfdr.de>; Fri, 15 Sep 2023 19:11:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7225510E653;
	Fri, 15 Sep 2023 17:11:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com
 [IPv6:2607:f8b0:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDCBC10E653
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 17:11:27 +0000 (UTC)
Received: by mail-ot1-x336.google.com with SMTP id
 46e09a7af769-6c0d6fef60cso1389137a34.1
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 10:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1694797887; x=1695402687; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=3ufzi6cBKLp/Mti7BxeA+qWxKK1RRUrNBWrmKPs6u0I=;
 b=gbTOGxPNt/lKX5A9cGQVyDQBEsdSNg7pYF5XrZER5hHui7fY1ZuA5VhjidLh9DKNRc
 7iBRt6bU2E+qOjQsppMIa7dUiv1CPkYUMAmJIqwghNOWp/ECXpTeEKRvJGVdUqWmPjqx
 JAUOwByJVTGSrb9ehYrZst7OvLCfbSDzKQMwWCgIiVv6cLxUavQCWqrEtIplP91i2Q15
 +W/Z3/izjK4ttaMpF4IAvJ9H+dnxvACIeQsbE4TRA/QaFEIUkeyOoXGMCQ9bqgKWa3Ri
 qflo4cnoE3kbUy2dXefriG7N9JEuOxxCCgEqodDKuVSVseHQzpPwIKYlb4maoc7jR+AG
 2TVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694797887; x=1695402687;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=3ufzi6cBKLp/Mti7BxeA+qWxKK1RRUrNBWrmKPs6u0I=;
 b=VHPB7g1lbs2G0/Fst6FWSNcmwEQJhG2T/+QkU8XIeNLUzouzPPOJ2395KvoB77vuWU
 +XihNyD7HIPjWF+37N/1elQE0FUdUsMCZxOajMqNdxPWYYrKbtmRnc4/cU9zwAZrOCNJ
 i0BgWXvMPeuCQpH0lfjSiQJgvL2M9W/D0x7Mh6AlMF1tE3HQURznRecoc6CDKEbOu33X
 YKEH2xisdq2A0wx4e8ahLy/0h6JpfaswRQcq1Zj2eMcb/6+sdqNGcTj+pR4/XhprXn51
 YdSEpAtE7mj7aJhMqEjX9mS9u19JDBr6kJCAGTCKAHdLYNfONJOoozoBZYhbZWsR61Ji
 ONBw==
X-Gm-Message-State: AOJu0YzVpcyg+7mKRWnSs46BlY77fTJmUY/hEblTErQRYoOGIaEGxGFs
 OsPHJXsYSsGCQQ1I01kNVG073cySYVxH1Gk5XN6PRFuvi9mILg==
X-Google-Smtp-Source: AGHT+IED5D0Z1MGZdtY8lEvAkILirgwOQzXbCNgYOrAkZi/Y1pbqefkNtWwWfVj9KtcKHBs/YzCkoG9+hWFIyyRsZjE=
X-Received: by 2002:a05:6830:18e7:b0:6b9:b1a7:1f92 with SMTP id
 d7-20020a05683018e700b006b9b1a71f92mr2266102otf.8.1694797887137; Fri, 15 Sep
 2023 10:11:27 -0700 (PDT)
MIME-Version: 1.0
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-7-vivek.kasireddy@intel.com>
In-Reply-To: <20230915001215.531746-7-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 15 Sep 2023 18:11:15 +0100
Message-ID: <CAHt6W4d073Psf8b3uRZ0xgM1o6k1uk9Q1Z3iRrR4hjbY4W1Pkg@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH 3/4] channel-display-gst: Don't unref
 appsink and pipeline objects
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
Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>,
 spice-devel@lists.freedesktop.org, Dongwon Kim <dongwon.kim@intel.com>,
 Jin Chung Teng <jin.chung.teng@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno ven 15 set 2023 alle ore 01:33 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> It looks like setting the Gst pipeline state to GST_STATE_NULL
> would cause all the references on most of the objects associated
> with the pipeline to be dropped; therefore, there is no need
> to explicitly unref them while freeing the pipeline. This patch
> prevents the following errors from showing up when remote-viewer
> is closed:
>
> (remote-viewer:64344): GStreamer-CRITICAL **: 00:31:04.278:
> Trying to dispose object "appsink0", but it still has a parent
> "pipeline0".
> You need to let the parent manage the object instead of unreffing the
> object directly.
>
> [MOS]:  CRITICAL - mos_bo_unreference:166: Input null ptr
>
> [MOS]:  CRITICAL - mos_bo_unreference:166: Input null ptr
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Cc: Jin Chung Teng <jin.chung.teng@intel.com>
> Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  src/channel-display-gst.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> index 3f46a65..ad0ac99 100644
> --- a/src/channel-display-gst.c
> +++ b/src/channel-display-gst.c
> @@ -353,10 +353,6 @@ static void free_pipeline(SpiceGstDecoder *decoder)
>
>      gst_element_set_state(decoder->pipeline, GST_STATE_NULL);
>      gst_object_unref(decoder->appsrc);
> -    if (decoder->appsink) {
> -        gst_object_unref(decoder->appsink);
> -    }
> -    gst_object_unref(decoder->pipeline);

That's pretty odd. It looks like we are inserting a leak. Usually if
you call gst_object_unref once more it causes an error like either a
double free in glibc or an assert error in gstreamer. I'm sure we used
this path so this should have happened.
And to be honest reading the error it seems to suggest a different
issue, like the appsink is still attached to the pipeline.
Maybe unrefing pipeline before appsink fix the issue?
I personally didn't see this error before.

>      gst_object_unref(decoder->clock);
>      decoder->pipeline = NULL;
>  }

Frediano
