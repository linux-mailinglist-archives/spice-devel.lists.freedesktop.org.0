Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B095F48E7C3
	for <lists+spice-devel@lfdr.de>; Fri, 14 Jan 2022 10:46:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAF1210E177;
	Fri, 14 Jan 2022 09:46:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26D2710E2E0
 for <spice-devel@lists.freedesktop.org>; Fri, 14 Jan 2022 09:35:25 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id
 a1-20020a17090a688100b001b3fd52338eso12505231pjd.1
 for <spice-devel@lists.freedesktop.org>; Fri, 14 Jan 2022 01:35:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20210112.gappssmtp.com; s=20210112;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=6raSPnkgc2IM0IXaiABD9jvDSDngxT0MwxKNrIspSE8=;
 b=LdfuA90zsKyD1fZVYRgYK0ZybOCSevV+NzdDzpQ/jL06Ta3z+zAWp229L8Hf6COly6
 LuUxmd1Y5WxfQyv4J2TE8EEk7qsj3WO5K5mSZvvWR7SSk5BXeAheunevA4u8AsWdTxad
 XFt/io9hxA42m1KFq5V+W2an+r7ekWgBa3WhuRvUnX+jn+GHcCqjPlObEpquOdVeJmhE
 rmkg5yZEJznej04/8IFflhNRgiegJfX3zCxjN0Duv2E7/59FIIznCDrPWHoIzhgbQiWW
 l6UYUFnnw3PtgZvwoutmXAFxlm4S4K2EWXJhtKrzi7nhr9rReQR6+tckNMBT22/dWZFO
 sLPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=6raSPnkgc2IM0IXaiABD9jvDSDngxT0MwxKNrIspSE8=;
 b=WmJPWsXE3nYjw8qiIVWYDCPApMr/FVKKLkVoHWc62qVS3o8E14s9RxwjgYc3rIGRvD
 bE2nuvqOeGMGKuvkO+BCgEFRV7Oe+1KR4sjIqd60pylT+8J4xn3B1hcj+n7y3dYCfBxl
 oXL8zSa99KT08jys+7J1K23+j2vIIFn2I7K+adwqoMz0XfIb1JpuxF9RpHrmz6NI66PO
 qUIR+sbAQfvft5HBNCM1YY+RPhKkrm2+JlWdDXbxQT3q0VHC9ejUClqOWdiRGoKIibxy
 T1PtY8P24ZJdVtHMUBORHoKmnFkAyjB9e40XT2+B12CTJVmoWWLiT14gNFyVIp6hTIYy
 EhlA==
X-Gm-Message-State: AOAM532uPWzs5CpZl3XFcYvOJo32WUc88hixsStaQ6OyZaHsR8N1d7ot
 /II6AIhhu4AfSg0MHdOEITQRIg==
X-Google-Smtp-Source: ABdhPJw2XxRIG+CbZSchLAEUG0Gjlc3/skiWDA3ORFTUdIJ+ftzt9q5gFAbldtBMOCMaVYuLWXTOaQ==
X-Received: by 2002:a17:903:124b:b0:149:b7bf:a2ad with SMTP id
 u11-20020a170903124b00b00149b7bfa2admr8624678plh.53.1642152925628; 
 Fri, 14 Jan 2022 01:35:25 -0800 (PST)
Received: from [10.76.15.169] ([61.120.150.76])
 by smtp.gmail.com with ESMTPSA id m13sm4151888pga.38.2022.01.14.01.35.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Jan 2022 01:35:25 -0800 (PST)
From: zhenwei pi <pizhenwei@bytedance.com>
To: cfergeau@redhat.com, fziglio@redhat.com, jjongsma@redhat.com,
 uril@redhat.com
Message-ID: <9cc67242-9c34-6b2a-d200-abf9394305eb@bytedance.com>
Date: Fri, 14 Jan 2022 17:32:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 14 Jan 2022 09:46:10 +0000
Subject: [Spice-devel] Discuss about camera redirection in SPICE
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
Cc: lixiang.byte@bytedance.com, spice-devel@lists.freedesktop.org,
 kraxel@redhat.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi,

Recently I sent patch set(still in pending state) to QEMU community to 
introduce camera subsystem and USB video class emulation. The framework 
looks like following:

    +---------+       +------------+     +---------------+
    |UVC(done)|       |virtio(TODO)|     |other HW device|
    +---------+       +------------+     +---------------+
          |                 |                     |
          |            +------------+             |
	 +------------+camera(done)+-------------+
                       +----+-------+
                            |
          +-----------------+---------------------+
          |                 |                     |
   +------+------+     +----+-----+        +------+------+
   |builtin(done)|     |v4l2(done)|        |other drivers|
   +-------------+     +----------+        +-------------+

With these changes, we can emulate a UVC webcam for guest, it works 
without additional guest driver. And use local v4l2 video capture device 
or draw something into UVC device on host side.

And I have a plan to develop a new channel and relevant API for camera 
redirection in SPICE, then a desktop instance could use remote webcam.

Although USB redirection has already provided a solution to use a remote 
webcam, I notice that it uses a heavy network(1280*720@30FPS in MJPEG 
uses 5MB/s+). I have tested several webcam, and all of them don't 
support h264. So I'd like to develop camera redirection in SPICE with 
h264 support, and expect to reduce the network bandwidth(300K/s may be 
enough).

Could you please give me any suggestion about this?

Patch link:
https://patchwork.kernel.org/project/qemu-devel/cover/20211227142734.691900-1-pizhenwei@bytedance.com/

-- 
zhenwei pi
