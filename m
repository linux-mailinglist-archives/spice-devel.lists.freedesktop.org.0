Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D537456D6F
	for <lists+spice-devel@lfdr.de>; Fri, 19 Nov 2021 11:39:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DD066E9A5;
	Fri, 19 Nov 2021 10:39:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 620BD6F456
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Nov 2021 06:51:42 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id r5so7844462pgi.6
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Nov 2021 22:51:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=guzman.io; s=google;
 h=message-id:date:mime-version:user-agent:to:content-language:from
 :subject:content-transfer-encoding;
 bh=ssP/kABXVTZPUSxTmsREdO8CmEvBfe5fgLLPxxqK+n0=;
 b=YhLcQL5MIpzuBlyMQte0uuaPtETXvnYtcuzLX4Swojdgzem9CqxohocN/4UXf4prtb
 SNnaMO+yPIvOg62x+G0kEjml1DwsFJT0OOzNEbrZH3s+dwUi80ZHH1CfRQTY1LlGRT44
 cG1Z31dY1TvH83P0SyRYdpSeOHEniB1ATA2Zo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:to
 :content-language:from:subject:content-transfer-encoding;
 bh=ssP/kABXVTZPUSxTmsREdO8CmEvBfe5fgLLPxxqK+n0=;
 b=w7ae4tUja3CgtwjTbicw4vLrS2th4Xyw2tQikAaoWUvbFBD7CUiMnfBK5QOrDtL6Wd
 qu4GiEu6HA/D61/tfU8JuW/gTlF7vy0q//z5Cn9a15KpG66LbY+hoqBXvGhP8tL+iHev
 73mbzd965Khu/c6I34/JkpMuSxEnk0+zgylDU3yzBGD5B4h/X7B8gdEWi7LAE+ltVXl4
 Ln14tlZCBL7QuStbpsY3TCOSes7U5PS6whfYeihTg3lNYdCcGTDY+OEBraZ3e5e64vNy
 a0CHvVSp6FWtJyWrurfPTjnE+gW1BlucamGOOr1jGHaj5LwI5rW0CUrUEGeYjaepn22i
 9tOA==
X-Gm-Message-State: AOAM530qAP3HJV88paeDHNzloknR/DaTLj1F1Yzdw7G18bGvCFbFpWDA
 4FYM761UwkS1r4iOwetyQmQCgKXbjg4uxA==
X-Google-Smtp-Source: ABdhPJyjYVz1bpS8e/H2jIlL4RU4XOhzsdEpg03EKwMjsZ76UEP/NDzY9YillYGKdxouIFLRschnsw==
X-Received: by 2002:a05:6a00:188a:b0:49f:c31f:b2c3 with SMTP id
 x10-20020a056a00188a00b0049fc31fb2c3mr62515093pfh.9.1637304701211; 
 Thu, 18 Nov 2021 22:51:41 -0800 (PST)
Received: from ?IPV6:2600:1700:2f70:793f:da09:f9ae:7ece:4931?
 ([2600:1700:2f70:793f:da09:f9ae:7ece:4931])
 by smtp.gmail.com with ESMTPSA id y10sm1582614pfg.21.2021.11.18.22.51.40
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Nov 2021 22:51:40 -0800 (PST)
Message-ID: <4b2857bd-3081-9706-72b1-87452bda0e67@guzman.io>
Date: Thu, 18 Nov 2021 22:51:38 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
To: spice-devel@lists.freedesktop.org
Content-Language: en-US
From: Alex Guzman <alex@guzman.io>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 19 Nov 2021 10:39:36 +0000
Subject: [Spice-devel] Fractional scaling with spice-client-gtk
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

I've been seeing some weird behavior with fractional scaling on my 
laptop with both remmina and virt-manager when connecting to VMs, which 
makes me think it's something to do with the library they both use 
(spice-client-gtk). They both exhibit similar behavior where rendering 
is incorrect; when maximized with dynamic resolution, there's a border 
around the VM's display [0]. When you disable dynamic resolution at that 
point, it seems the buffer grows even larger (twice the size of the 
screen?) and the borders push the content past the viewpoint, requiring 
scrolling [1].

I'm guessing something about the way GNOME does fractional scaling 
interferes with the rendering of the SPICE widget. As a workaround, I 
can launch it as an X11 client (using environment overrides), but this 
means the app is unnecessarily blurry and has occasional pain points as 
an XWayland app. I'm happy to provide additional testing or feedback.

For reference, I'm running Arch Linux with spice-gtk 0.39-3, remmina 
1.4.21-1, and virt-manager 3.2.0-2.

[0] https://i.imgur.com/v80GokM.jpeg

[1] https://i.imgur.com/NFqFVVy.png

- Alex

