Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 123DE49043D
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jan 2022 09:46:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6001710E417;
	Mon, 17 Jan 2022 08:46:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82D3810E9D5
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jan 2022 07:30:47 +0000 (UTC)
Received: by mail-pg1-x52c.google.com with SMTP id f8so10107791pgf.8
 for <spice-devel@lists.freedesktop.org>; Sun, 16 Jan 2022 23:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20210112.gappssmtp.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UMw/O06iP+cboeWr3YAy/AbyWdcghN63NDmaZVr2Q8M=;
 b=Y+W0AP/K2nqlYbBR10KPHzr3H2ctYky0ZNKUJtXeofYo24xXoXVUjcNvSJPvwYjlfP
 49+bY/TRlIpCMqJfmRVxQCL97BtEYwOh7xOFcbYmQaRd0ZFTkDcFiK+B/u+Oroi1/Vcr
 YOJOWYz0YF4ZArhQ9LaynyRwilUceRcJKMEyvjfre2mOkLJUqRj5QfH5X0VmLQjruThG
 yWs6TM68aUp3C/nViodB5HeTbXns7fdO+gM+WrNgpYsWyq9xh4lvgJNzn7NCmIR+Be64
 7Gc6G+TbtVQTVyLNwnQ2GYI7xnBLj3VqJTSWYJFzpkLU8deZca76mur5H7Vgilr1vWSM
 +hHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UMw/O06iP+cboeWr3YAy/AbyWdcghN63NDmaZVr2Q8M=;
 b=wnxnQAz1KNb4INrIPnHUC8EMfxYXvjfA0tT+duizCpO0cTQV1+/TIjuvGvnqAlRQxm
 BcAoJBmfX2AtqRB6FItIec5NBVSpn7ih69I6QNTXjC9QAbpphX/oTbwcXdiU2uWTcjPI
 /FdgtHyzHSoReVa/CQTeTn49ZHuiGICXHh7UAA0s/Byx+EYohoWOY6CHB/TMaetQ9UaC
 WaexcIDtoZ4mBMKgosrVu/jKB7MtanOkwn1UGlqtElXJJm/CpzQFg4KSePMGvbMvi0mI
 YP4Grsmco87FOHJREk5xbHTwomcwW4YGdNiDw3BtK5acXXwfdK0uy9Ttn1YwbrGfKPQV
 FRpQ==
X-Gm-Message-State: AOAM5317EWH1ikGxB0n2HmqclzAA8cr5nJU/pHB9NNYXeVRJ7ahyJTtz
 znAwLVZZwvlRNhCVRCzoBKNFxA==
X-Google-Smtp-Source: ABdhPJxOitB0MHxmRcKpjxPZr1yZCo8mZKLjlA5/wD0M5NAVY86f78ZPQipT4GI2v1zQwkK05IUxCA==
X-Received: by 2002:a63:5a51:: with SMTP id k17mr2917925pgm.129.1642404646907; 
 Sun, 16 Jan 2022 23:30:46 -0800 (PST)
Received: from [10.76.15.169] ([153.254.110.109])
 by smtp.gmail.com with ESMTPSA id t6sm11161295pgk.31.2022.01.16.23.30.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Jan 2022 23:30:46 -0800 (PST)
To: Gerd Hoffmann <kraxel@redhat.com>
References: <9cc67242-9c34-6b2a-d200-abf9394305eb@bytedance.com>
 <20220114125155.umjm6mykfnnh6pmr@sirius.home.kraxel.org>
 <93d761a8-5d1e-055f-560b-bd123ba2fdb4@bytedance.com>
 <20220117062949.dz6c5beqxd3m2bq3@sirius.home.kraxel.org>
From: zhenwei pi <pizhenwei@bytedance.com>
Message-ID: <63371ce2-1236-a2a4-022a-629034f2d772@bytedance.com>
Date: Mon, 17 Jan 2022 15:28:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220117062949.dz6c5beqxd3m2bq3@sirius.home.kraxel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 17 Jan 2022 08:46:48 +0000
Subject: Re: [Spice-devel] Discuss about camera redirection in SPICE
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
Cc: cfergeau@redhat.com, lixiang.byte@bytedance.com,
 spice-devel@lists.freedesktop.org, fziglio@redhat.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 1/17/22 2:29 PM, Gerd Hoffmann wrote:
>    Hi,
> 
>> Camera redirection through the USB redirection protocol seems feasible. But
>> I have several concerns:
>> 1, UVC started to support H.264 and VP8 since version 1.5, old version OS
>> has no support(Link https://en.wikipedia.org/wiki/USB_video_device_class).
>>
>> 2, Even guest side supports UVC 1.5, the camera App still has a chance to
>> select which format to use. We can control this from hypervisor side.
> 
> The camera could offer vp8 as only supported codec ...
> 
> But, yes, using usb redirection will loose some flexibility because you
> can't recode the video frames then.
> 
>> 3, I noticed that USB emulation uses a lot of CPU, so I also have a plan to
>> introduce virtio camera to reduce the CPU utilization.
> 
> uhci and ehci are pretty bad indeed.  xhci should behave noticeable better.
> 
>> So from the point of my view, I prefer a common camera redirection
>> protocol(event a hard work to do, but I can support it for a long time).
> 
> I think you can take some ideas from the audio protocol (start/stop
> stream, ...).  Define controls (brighness etc), probably best to follow
> uvc or v4l2 here.  Negotiate video format capabilities, so there is the
> option that server and client agree on some future codec when supported
> on both ends.
> 
> take care,
>    Gerd
>


Hi,

Actually, during I developed the QEMU camera subsystem and UVC 
emulation, I referred to both UVC and v4l2.

Detailed type definition and function declaration in 
include/camera/camera.h of this patch:
https://patchwork.kernel.org/project/qemu-devel/patch/20211227142734.691900-2-pizhenwei@bytedance.com/

I suppose the API may looks like this(of cause, detailed implementation 
  needs take some ideas from audio). Could you please take a look at it?

-- 
zhenwei pi
