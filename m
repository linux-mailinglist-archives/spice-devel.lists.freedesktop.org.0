Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F34722D9699
	for <lists+spice-devel@lfdr.de>; Mon, 14 Dec 2020 11:51:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 274356E141;
	Mon, 14 Dec 2020 10:51:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59C2D6E141
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Dec 2020 10:51:15 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id v29so12201282pgk.12
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Dec 2020 02:51:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oldum-net.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=/jO1ETdUGaeXR6e4/Pe8ST8f37hAfL5a0XrTctcve5Q=;
 b=SK1zayb+qp+b0nCf90mCdkLfo/1pCkgXlpu+1YPyx2bGnjvx2kxZ9RUCRRiK7xeqRd
 2wq87jHDanAFd5NmVGZn94tfZoN9yeXXWHUSDklHe4q3mESK2w2tN0bUBh+zcx7iNnqf
 iit0e+ZFRnD8JeInw14p4d5sGWqt1U2LlE9uXn0mx4gOk17XhITddYfuektzDE9Cn1Fm
 DmpV1FlgrdN1EOmEI2NpIcfzXD1tDDnd8IcGriLxcTGvegjv5RLJ+g+w9pJVBSfB4SqS
 OPAf8d4kpkcpjjGbKYrAiCir05zbJXRpW18/4jOU2freNYnh6P+8b/5VP5GU/avERx1I
 Ywtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=/jO1ETdUGaeXR6e4/Pe8ST8f37hAfL5a0XrTctcve5Q=;
 b=lGxpX0nJMV7TiG+yMyANR69gyXlbyrxgtYeltnZIvWg3PxB4F0O8CeFjEJqR8NhcDH
 c+hRaTWeHtqCb3OugQT58FSFn8wAKXspmnvWQMM5SCtX8PYX1nVOvuXAOMqtSPQXb9TV
 dJKQxiPiV0/jInjrd7na+11hLRgcQjji2fnewZD+dgNUK+Pgl/PmozK5uy7T6Q1FOe/r
 bsprKTMOwk7yZHPxisuHlEJpsdRjL9sg6qMpb5hJ6p0HedpJRZf8/Vw8AMuPAUo0hlml
 +VUEPPk3Op42GA6ss9uDw31ZskaR6zdvhcS444xB+3T9s8TbKIAHXFoNRr9W7TCwPd3L
 c6Ig==
X-Gm-Message-State: AOAM533fQCiG+dkld9HDVc8I5mSIQGWClBLGPjj7ofxnK1ppgqemeXPH
 0zjvcEbsx3VZbbxoXoxM/0azTYxwDfJAToyi
X-Google-Smtp-Source: ABdhPJzUV8pEn6FCOemJ8KYw1xlCtbmQqpNaQDxX0kanr68IPc+2P11Cj4hYs/RNVVkGSLCpQ6AYsQ==
X-Received: by 2002:a63:5023:: with SMTP id e35mr1078863pgb.56.1607943074630; 
 Mon, 14 Dec 2020 02:51:14 -0800 (PST)
Received: from [10.98.7.21] ([149.235.255.6])
 by smtp.googlemail.com with ESMTPSA id o2sm20620735pgq.63.2020.12.14.02.51.13
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Dec 2020 02:51:14 -0800 (PST)
Message-ID: <a410fd79c66ecbd949a51130baa3bbf79791813a.camel@oldum.net>
From: Nikolay Kichukov <hjckr@oldum.net>
To: spice-devel@lists.freedesktop.org
Date: Mon, 14 Dec 2020 11:51:12 +0100
User-Agent: Evolution 3.38.2 
MIME-Version: 1.0
Subject: [Spice-devel] vdagent fix for citrix workspace - new spice release
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi folks,

There is a new fix that allows citrix workspace on windows to not
interfere with vdagent:

https://github.com/virtio-win/kvm-guest-drivers-windows/issues/368#issuecomment-744013662

Do you know when we can have a precompiled release that incorporates it
for windows guests?

Thanks,
-Nikolay



_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
