Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F4849043C
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jan 2022 09:46:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01E1810E414;
	Mon, 17 Jan 2022 08:46:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AA2110E181
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jan 2022 03:32:35 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id c6so11499289plh.6
 for <spice-devel@lists.freedesktop.org>; Sun, 16 Jan 2022 19:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20210112.gappssmtp.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=H/WI+7gMMtijs93mzDb/X9a7u9h8nrjGP4rYmzpyI08=;
 b=vx9OLbzG4hE6duRsjM+Q8+3OF2v+Dh15uRame0kHKrYju98gbTYFyrehxXX3pB8V5y
 v5Ci3Z79IeKDge9SmzbDiybzjv4tW5kTmORr/pNOL16/lN5FOcQdBpclxQpfK+IHT7gC
 3QXOjnZSmKMsXpAUMwq0ntTUVZME7EONYFbo2Azv5sMCCIBWe/ET/xCVerWsPBx2pGI2
 gOAgqy2A78DGqdaxut80P0jhjvZzWFNfTfwG4gmbuWpOrzVdhV2Xx3Ea2WMCAWEbC+KJ
 f7JnNGct38yWWjT623kEiLlHW+pWHISNyzKMgpkG/KM1NynuRAhbZ1b2uhB1xS38UGuN
 ILcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=H/WI+7gMMtijs93mzDb/X9a7u9h8nrjGP4rYmzpyI08=;
 b=TvFr5gQ6XaLBoL96VxkTv6TLguXM6K9iPIuXxLZ3oxjjY5/5dC3PPCow/jPwZn5ETL
 3xjXI0B71tPOxH50QH3195ppGM8HRig4Z3/1xU7MGq7a0Xi6l29uPJQ5V8A20WQ/1517
 OchPYK7Ix6JtIb5W4A5chCf6bnAbPBXATXYMPL4zZCBAkOTq2BlPZ0X+YV/BZewlXp0O
 FDXZzXQvxatmWBoonD6YCvuRkBWHKF+bCawGh3KUosnlDasse7E9ciFnYwRHOgIKo0yb
 eZLd6watx7BRJFFoHzzcHmGKiUJFCvJBdmlETkThKiZxfsInOnuQG9FAjONzc921IOpJ
 qyvg==
X-Gm-Message-State: AOAM531QgGBv82Sk+OCWcz9quPpScIhWMsqmYH0FyIAh9Y/+W6aG4ydV
 RHBvBHO1pcUlwzmgOZsOXhWkbA==
X-Google-Smtp-Source: ABdhPJxT6/IzJ/NaXBpMVxUeYld8zLiuaPrWEMKrzzuT13hkNdbu0yJZH1z1JZEfnp/cSAeysL8Fuw==
X-Received: by 2002:a17:903:24d:b0:14a:677d:843a with SMTP id
 j13-20020a170903024d00b0014a677d843amr21172897plh.129.1642390354844; 
 Sun, 16 Jan 2022 19:32:34 -0800 (PST)
Received: from [10.76.15.169] ([153.254.110.109])
 by smtp.gmail.com with ESMTPSA id c19sm12886250pfl.118.2022.01.16.19.32.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Jan 2022 19:32:34 -0800 (PST)
To: Gerd Hoffmann <kraxel@redhat.com>
References: <9cc67242-9c34-6b2a-d200-abf9394305eb@bytedance.com>
 <20220114125155.umjm6mykfnnh6pmr@sirius.home.kraxel.org>
From: zhenwei pi <pizhenwei@bytedance.com>
Message-ID: <93d761a8-5d1e-055f-560b-bd123ba2fdb4@bytedance.com>
Date: Mon, 17 Jan 2022 11:29:52 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220114125155.umjm6mykfnnh6pmr@sirius.home.kraxel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 17 Jan 2022 08:46:35 +0000
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

On 1/14/22 8:51 PM, Gerd Hoffmann wrote:
>    Hi,
> 
>> Although USB redirection has already provided a solution to use a remote
>> webcam, I notice that it uses a heavy network(1280*720@30FPS in MJPEG uses
>> 5MB/s+). I have tested several webcam, and all of them don't support h264.
>> So I'd like to develop camera redirection in SPICE with h264 support, and
>> expect to reduce the network bandwidth(300K/s may be enough).
> 
> Well, one option would be to add usb webcam emulation to the spice client,
> simliar to cdrom redirection (which emulates an usb cdrom drive under
> the hood).  Advantage: works without spice protocol changes as you can
> simply tunnel everything through the usb redirection protocol.
> 
> I'd also recommend to look for another video codec (if possible, not
> sure what the usb webcam spec allows).  H.264 is a patent minefield,
> which makes it rather difficult to use in open source projects.  You'll
> end up with a lot of legal problems when it comes to software
> distribution.  vp8/9 would be a much better choice.
> 
> take care,
>    Gerd
> 
Hi,

Camera redirection through the USB redirection protocol seems feasible. 
But I have several concerns:
1, UVC started to support H.264 and VP8 since version 1.5, old version 
OS has no support(Link 
https://en.wikipedia.org/wiki/USB_video_device_class).

2, Even guest side supports UVC 1.5, the camera App still has a chance 
to select which format to use. We can control this from hypervisor side.

3, I noticed that USB emulation uses a lot of CPU, so I also have a plan 
to introduce virtio camera to reduce the CPU utilization. If we use this 
solution, it's difficult to do the extension in the future.

So from the point of my view, I prefer a common camera redirection 
protocol(event a hard work to do, but I can support it for a long time).

I will follow your opinion of the video codec to avoid the legal 
problems, thanks!

-- 
zhenwei pi
