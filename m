Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FA47A227D
	for <lists+spice-devel@lfdr.de>; Fri, 15 Sep 2023 17:35:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B386710E648;
	Fri, 15 Sep 2023 15:35:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com
 [IPv6:2607:f8b0:4864:20::236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13FDF10E648
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 15:35:54 +0000 (UTC)
Received: by mail-oi1-x236.google.com with SMTP id
 5614622812f47-3a76d882080so1367584b6e.2
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 08:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1694792153; x=1695396953; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=f5dKnj4j+u/+LkggZqLLG6dozshbFPUh/mLQxKEeomQ=;
 b=jS7yx2Df6O2LY3ZwCTrhfjUzfssN4zCcrnYl871bUxPsaVIoVhUdwhmFmGxtOCqA3m
 +2Os9kB3EqqGCX33zO+P4ti3G8jyonLeqFxdXdrv3BCbthGF3HH5TwBf2wQjLiTaEU0R
 Bsiu+G8wc2IwGxilFl4MuJQQb8ms6af1XVpqeib9AT1OU3myvzAlCSYFcpxoaRSmqpHA
 h+/KWcu/Z20b9cMdxAP0QBeSFTuRm8I1CfQQ/kXFRoO4etvNfka7OYZN0Nx1lAPUxj6z
 YWLvx7D7sgOWjm0lrQXziYfzLQZZ8jrmoONgDV6szK5T/HUzxPxpjJdvkd0taR9gLeLp
 P46Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694792153; x=1695396953;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=f5dKnj4j+u/+LkggZqLLG6dozshbFPUh/mLQxKEeomQ=;
 b=uWdCUm5GYx+wCQX2Wye28n4r8sv6Xg4Oq3mRBWC7xgxDksA4st8F9YlQBRIKf5vf4v
 KDEpDm6Gij6MZfO4NHdnxfXQ+zzfSo2B6HS49XQ/Dg+fH7vT47KmzSEGI/vWyOm8kIeU
 NGP5RGf4YIqO+krgo5M5Wl8xnUeNZm5Px6ryHF31sN9d/LFWAt8vrfpcRUVHUl/Nhk41
 nHQ7k8TaSpLGwovj0HMTeniJ/Enk1/BJCG5pmda8S716fhLAe+uqJQdAZI/XGi/AgxaQ
 2lM1h8y6SZTRilvDsUzB3wfgOhrZPXexGSWqcuSs2vbxFhhYe2HZDWUwaYaYiXkv2npi
 LpWw==
X-Gm-Message-State: AOJu0YzGiTMdSCGIuQNnBGrUjx6KqobtV8q2XYWFW9i1N1mFDrC1qAmH
 ryEQMWd+Cji6OwAwI0jfSJBqaRx9H4iAlWXIBA6b5etmehWS9w==
X-Google-Smtp-Source: AGHT+IGnTvZEFXn04Nxi5gGVsNpy308l6Fmu/GXXekkYCwPJsUXML4VxXc8GHPYCC7YZ8QeNJZqbdm9FRcy/XwDprYQ=
X-Received: by 2002:a05:6870:9721:b0:1d0:f0a9:b3f2 with SMTP id
 n33-20020a056870972100b001d0f0a9b3f2mr2351457oaq.48.1694792153263; Fri, 15
 Sep 2023 08:35:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-2-vivek.kasireddy@intel.com>
In-Reply-To: <20230915001215.531746-2-vivek.kasireddy@intel.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 15 Sep 2023 16:35:42 +0100
Message-ID: <CAHt6W4eykzdRk6Fr0Bic0_2scBLa4a6qjczfNgsTmi2dkqax8A@mail.gmail.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH 1/4] channel-display-gst: Prefer playbin3
 to playbin
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
Cc: spice-devel@lists.freedesktop.org,
 Jin Chung Teng <jin.chung.teng@intel.com>, Dongwon Kim <dongwon.kim@intel.com>,
 Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno ven 15 set 2023 alle ore 01:33 Vivek Kasireddy
<vivek.kasireddy@intel.com> ha scritto:
>
> From: Jin Chung Teng <jin.chung.teng@intel.com>
>
> If playbin3 is available (checked in Gstreamer registry), it
> makes sense to prefer it given the major improvements and
> features it offers including the capability to handle higher
> bitrates.
>
> Cc: Frediano Ziglio <freddy77@gmail.com>
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> Signed-off-by: Jin Chung Teng <jin.chung.teng@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  src/channel-display-gst.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> index 36db3a3..3f46a65 100644
> --- a/src/channel-display-gst.c
> +++ b/src/channel-display-gst.c
> @@ -496,10 +496,13 @@ static gboolean create_pipeline(SpiceGstDecoder *decoder)
>      SpiceGstPlayFlags flags;
>      GstCaps *caps;
>
> -    playbin = gst_element_factory_make("playbin", "playbin");
> +    playbin = gst_element_factory_make("playbin3", "playbin3");
>      if (playbin == NULL) {
> -        spice_warning("error upon creation of 'playbin' element");
> -        return FALSE;
> +        playbin = gst_element_factory_make("playbin", "playbin");
> +        if (playbin == NULL) {
> +            spice_warning("error upon creation of 'playbin' element");
> +            return FALSE;
> +        }
>      }
>
>      /* Passing the pipeline to widget, try to get window handle and

Why not cache the check, something like

     SpiceGstPlayFlags flags;
     GstCaps *caps;
     static bool playbin3_supported = true;

-    playbin = gst_element_factory_make("play
bin", "playbin");
+    playbin = playbin3_supported ?
gst_element_factory_make("playbin3", "playbin3") : NULL;
     if (playbin == NULL) {
-        spice_warning("error upon creation of 'playbin' element");
-        return FALSE;
+        playbin3_supported = false;
+        playbin = gst_element_factory_make("playbin", "playbin");
+        if (playbin == NULL) {
+            spice_warning("error upon creation of 'playbin' element");
+            return FALSE;
+        }
     }

     /* Passing the pipeline to widget, try to get window handle and

Frediano
