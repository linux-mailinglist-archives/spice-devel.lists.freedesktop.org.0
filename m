Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CBE754D92
	for <lists+spice-devel@lfdr.de>; Sun, 16 Jul 2023 08:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 534D710E16D;
	Sun, 16 Jul 2023 06:58:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D7B110E132
 for <spice-devel@lists.freedesktop.org>; Sat, 15 Jul 2023 16:01:54 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-3fbc5d5746cso29292865e9.2
 for <spice-devel@lists.freedesktop.org>; Sat, 15 Jul 2023 09:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1689436912; x=1692028912;
 h=content-transfer-encoding:subject:from:to:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=P3tzWRNIW2niCjq7kCWA9a7YIc7XiMQJhqBbVf/Z0ps=;
 b=sGHH+3FFK8dRjqoApSEFueXochCMDYQay9ttz7By1qu1ogklw/ceGBC/zmxGIcUUHA
 4hTpi80EubWbuIQpJ/XqQvc214wnkTfznuaJXtJcxIUCCoOr4LX0UIYs7bU15yucL3r9
 o0kc2Ebt4DS+YfYINfSH5OqVoE+BgSok7Ya02xZJLaGeZYxLBok7Zukeq9a0u2lwvcb0
 qzZCzki5BgdxeUm3MXVZ81pqi7PfbjSKl0CA3eprv0jEJcadgsubOF6l0Js/w8T5/q1S
 JmLXs+tchLarKsS8cpqAONRQ/MwaPWld1iGgAcDZXGMizUT5EWDldThcjw9fealDXTwu
 ok4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689436912; x=1692028912;
 h=content-transfer-encoding:subject:from:to:content-language
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=P3tzWRNIW2niCjq7kCWA9a7YIc7XiMQJhqBbVf/Z0ps=;
 b=jV/2nLsEA2BMh5SyXxOVMm7hlqvMYriGaTxpvnLuwXHQc1iLkRjYjdOy+M26aHjOyS
 Qpbl4niIp9ffQlWtbShTVwRh1IkD2zKAhEQKg+r0LBkxxILlN+uSX4ebpkHYMMp1yplR
 kIb8eQ+BV65vlRfws3C4+jnumon90j/LnRKHR6b6vsTG7ijGrJQuOrcQIzBqNMtV3HYy
 50hQzRRZ0Wgwm9iMSbYWnOUnXMvFekSTVoyYubPM7Z9LVOREp/II5BrjPV8B8xKATRNh
 tnKQARU7GKuZ5GPZZMdIAFukYrTelwjq4p8SCLb7Rmgk/sbLG+owP9n352O15aEO9OtM
 //oA==
X-Gm-Message-State: ABy/qLZuLbCYY/Akm6WzHpZwVR0hyyGq/4gF09lW8ZvBZF4vKbOyeymK
 5q2XekD6XHj7dBVcpX9t+AkxHdpZ5rI=
X-Google-Smtp-Source: APBJJlEo/2T/73bqpH9mQXD9K8zL2m8/cMJ8YSainOkp8AvohhAxlhp2YVD+0Dx1ElXa4EntNQg8/g==
X-Received: by 2002:a05:600c:280b:b0:3fa:98f8:225f with SMTP id
 m11-20020a05600c280b00b003fa98f8225fmr6474687wmb.26.1689436912033; 
 Sat, 15 Jul 2023 09:01:52 -0700 (PDT)
Received: from [192.168.1.138] ([93.176.141.144])
 by smtp.gmail.com with ESMTPSA id
 c17-20020a056000105100b0031433d8af0dsm14106754wrx.18.2023.07.15.09.01.51
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 15 Jul 2023 09:01:51 -0700 (PDT)
Message-ID: <99e6b141-6aa0-fc47-2ffa-7a94e1a3c079@gmail.com>
Date: Sat, 15 Jul 2023 18:01:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: spice-devel@lists.freedesktop.org
From: =?UTF-8?Q?N=c3=a9fix_Estrada?= <nefixestrada@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sun, 16 Jul 2023 06:58:28 +0000
Subject: [Spice-devel] Help with image encoding
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

Hello! I'm currently writting a Spice client in Typescript that makes 
use of modern browser features (such as WebGPU, WebUSB, Web workers, etc).


However, I'm struggling with the Image image encoding. I've checked the 
whole documentation site, but I wasn't able to find how each one of the 
encoding works. My knowledge in both audio and video encoding is very 
limited. Specifically:

- QUIC

- LZ (and all its variants)


I've been trying to understand them from the spice-common project, but 
it's just the implementation without any type of docs :(

Another question I had is if there's another way of comunication or a 
place where I can shoot questions about the implementation


Also, I'm planning on gifting the client to the spice project, if you 
would be interested in! (given that you already have a JS project)


Thanks in advance!


Néfix Estrada

