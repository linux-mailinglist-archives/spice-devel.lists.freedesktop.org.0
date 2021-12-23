Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F7047E9AB
	for <lists+spice-devel@lfdr.de>; Fri, 24 Dec 2021 00:38:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72F4510E136;
	Thu, 23 Dec 2021 23:38:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com
 [IPv6:2607:f8b0:4864:20::236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF19810E136
 for <spice-devel@lists.freedesktop.org>; Thu, 23 Dec 2021 23:38:08 +0000 (UTC)
Received: by mail-oi1-x236.google.com with SMTP id be32so11100163oib.11
 for <spice-devel@lists.freedesktop.org>; Thu, 23 Dec 2021 15:38:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=fKHXzX+o/g8KcV5hJNnEuHVbJc+vciUwCO70us6aAQc=;
 b=h46fCMR084RgmuNlwjz1VKZA79u15X41TbMAj4tKOkmffSmbSoONq6v2nIHlcfJWxA
 NhyrFZJdL4eapaQc9vFFsyXOP5MiwPJ1TTzUGZW7pWiVX2uGCCqf9SlnIkLd1PbiZofT
 FIDfEEmtA0zmiax7kDoI5eOI4nRzKKknOFE/8GyIoITLSf9cgzw/A9tdpVXT02YoMKV5
 vv61XraPqnx1m3f23hnmW0STufr4oClPSrkAqZYqlbcavQjXPFaP+l+6PwT9HiYS6LPz
 bE3GKqRQx5VYYdzUjg/RCR0Z816TgqX7SR9wCQLRcV/IiTEEFje6ky07vOrRxv8Zovms
 vjfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=fKHXzX+o/g8KcV5hJNnEuHVbJc+vciUwCO70us6aAQc=;
 b=GmZnmfX5qMIe/96xbkJEmCv+PERm9rTzkVNEb8m6f3iwnFoqUShYr23giYX2CvJ/RX
 VublDX+BWtWPkx1yunByq/jJg169D/a3WJH1jL5l5VEQ9hTcx3NWIh9YDQh6WD7j1WDz
 4MWTodjgTBoXxnTAX/IcQQNvhPaDokx09JvUDsFH51Pv64Hh/EK0hahCxUV56eRzaeff
 WksAzPZHSKcpE2XqCmOrI7bnVqfiOzDvmXWlDzRiAezDPSRsZf6QMc3q9drIyU/kS6RD
 eiEPo7WVl8/yAbtxbrRGekfpCrqYolaw6QTvuwEe5KceqF1lxJC7nSRWXKhshDqbXSms
 A1iQ==
X-Gm-Message-State: AOAM530vQkjp1egBEj1/hlqGW0+KgaBCvM9pFKuAjCOvWMurzkk34Ha9
 scGc7Plbm/+hHHEJGV8fTpzeDYCMdbQxFy4s6NfPs3mC+UM=
X-Google-Smtp-Source: ABdhPJzNjI0knu3+kSp40dzCStNbGdhnlRQdjVn9/oD5nPxf11uEMYcPJC3yyXjYm3AOAqoRLxse5r0i2ilRIm9u8EU=
X-Received: by 2002:aca:1708:: with SMTP id j8mr3119753oii.62.1640302687926;
 Thu, 23 Dec 2021 15:38:07 -0800 (PST)
MIME-Version: 1.0
From: i iordanov <iiordanov@gmail.com>
Date: Thu, 23 Dec 2021 18:37:32 -0500
Message-ID: <CAMS0tn14OvBAL3u-0WfnD0DpJFv1HNnq9GVX=oQRgOH0o2678A@mail.gmail.com>
To: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: [Spice-devel] error: No free USB channel
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi guys,

During my testing I've been unable to connect more than 2 USB devices
at a time - could you please help me figure out why that's happening?

The backend starts returning error with message "No free USB channel",
but I can't see how to tune the number of USB channels available!

2021-12-23 15:27:52.608 29721-29760/com.iiordanov.aSPICE
D/android-service: connect_cb: start
2021-12-23 15:27:52.608 29721-29760/com.iiordanov.aSPICE
I/android-service: connect_cb: successfully redirected device
2021-12-23 15:28:00.499 29721-29760/com.iiordanov.aSPICE
D/android-service: connect_cb: start
2021-12-23 15:28:00.499 29721-29760/com.iiordanov.aSPICE
I/android-service: connect_cb: successfully redirected device
2021-12-23 15:28:03.582 29721-29760/com.iiordanov.aSPICE
D/android-service: connect_cb: start
2021-12-23 15:28:03.582 29721-29760/com.iiordanov.aSPICE
E/android-service: connect_cb: failed to redirect device, error: No
free USB channel
2021-12-23 15:28:06.385 29721-29760/com.iiordanov.aSPICE
D/android-service: connect_cb: start
2021-12-23 15:28:06.385 29721-29760/com.iiordanov.aSPICE
E/android-service: connect_cb: failed to redirect device, error: No
free USB channel
2021-12-23 15:28:08.634 29721-29760/com.iiordanov.aSPICE
D/android-service: connect_cb: start
2021-12-23 15:28:08.634 29721-29760/com.iiordanov.aSPICE
E/android-service: connect_cb: failed to redirect device, error: No
free USB channel

Your help is very appreciated.

Thanks!
iordan

-- 
The conscious mind has only one thread of execution.
