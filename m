Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 596DF713849
	for <lists+spice-devel@lfdr.de>; Sun, 28 May 2023 09:16:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B556010E0B5;
	Sun, 28 May 2023 07:15:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com
 [IPv6:2001:4860:4864:20::31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 101D310E0B5
 for <spice-devel@lists.freedesktop.org>; Sun, 28 May 2023 07:15:57 +0000 (UTC)
Received: by mail-oa1-x31.google.com with SMTP id
 586e51a60fabf-19a308a045aso1054060fac.0
 for <spice-devel@lists.freedesktop.org>; Sun, 28 May 2023 00:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685258154; x=1687850154;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=8fkNF3AT+xVsNt93gH8S2s53rBGMDCtIMsnVThaIfmQ=;
 b=gpJAPG4XV5/V6FCIFTL8fxbsuSQmXKTPucRNNgJjppE3uhT6QHRo2Kb+6c8DWVvH2N
 aT+69enwLhXSQ7T966WWwPjRPTF+6tIQKs7h0TkTfmJWN+p03KqI63oK2Sg2Aj0yLf1c
 mTb1Ny0T7x5o8VNEz68d0ec9YLVxqqGOvRbHmvRQEJ43fLF7pCaJ4Z9pqYuWpMVzKi8w
 Yn9u6LKWAFMuQfTr9SrXcJ2smz/DHAWi5cJ5xFdJqBp+RQ9+xNHVS24+JYQMnrF1SZGd
 EIi1nyo/IygqOZEcqSLsia0LosnL3a+oRJTNz9P15dKOmb1SbiOb9XI3eUCOY77u9qfn
 mkjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685258154; x=1687850154;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=8fkNF3AT+xVsNt93gH8S2s53rBGMDCtIMsnVThaIfmQ=;
 b=Aul3wrJbQMomKfJP/XxHwixBeCNxeertj84TiTRO1Jpf6JR87ButYxtgeZ241ghmOG
 cGDQhI8+5R3ZMsCQRkRf7PcIIGCNtIeI+Sz7bpyvx6hTh7WeJF0Blvl3FXVVPXTFaHfh
 KwnZFff2Ni2+Q+ndo/PrZ+sYrN0iVDfmTbjr4IxCvAo1mDVXAK1tekJSZVHdC87gkKwh
 qSO683zgfnpqK9M29vMm1SyYun1+b0IumWIyoqya3+omJ7ln3DlvgIzLzSe2FQB7crj4
 /i3smaE+3YqOgcQjeoGf0E7rj0CIPO1pIqbxA4H7bHKWgcFx/TckvDqBq9BrHEAM9NHt
 XLbg==
X-Gm-Message-State: AC+VfDwmKubgKaeMUkZYxGI3JsPqXST/ZMcrmFy2D+WTwnq+ayCb/Z9y
 uhbfOS192WsYbb6jzFhe1jMN4xbs2LLGUK6vH0c=
X-Google-Smtp-Source: ACHHUZ77hI0W6nkHyUWj4Zt7upTgMmZn9tlaLL/6lMIaQtroR+gdzVk2r5tjq+8LlFIph59bk0l32iJHkyDRta5zhcY=
X-Received: by 2002:a4a:584e:0:b0:555:5ab5:a0e0 with SMTP id
 f75-20020a4a584e000000b005555ab5a0e0mr2032676oob.8.1685258154256; Sun, 28 May
 2023 00:15:54 -0700 (PDT)
MIME-Version: 1.0
References: <tencent_D5878955D45FD159A97AED741F2635A8D50A@qq.com>
 <CAHt6W4cTwoFMvkVYs-VmJp05FXoOTQ=HZM7WvxgN9ks1PfE2WQ@mail.gmail.com>
In-Reply-To: <CAHt6W4cTwoFMvkVYs-VmJp05FXoOTQ=HZM7WvxgN9ks1PfE2WQ@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 28 May 2023 08:15:43 +0100
Message-ID: <CAHt6W4d1nF_ceWGqVOR-Nmt+kS44jqJaHGTggdUWqQbm+_WqAg@mail.gmail.com>
To: 2656017036 <2656017036@qq.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] About the website download error
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno dom 28 mag 2023 alle ore 07:38 Frediano Ziglio
<freddy77@gmail.com> ha scritto:
>
> Hi,
>    as a workaround click on the link with the right mouse button and click on download.
>
> It's just a server configuration that sends back the file as something to display instead of something to save.
>
> But strangely it worked correctly for me. Which browser and version are you using?
>
> Regards,
>    Frediano
>
>

This is the results trying to download the file

HTTP/1.1 200 OK
Date: Sun, 28 May 2023 07:08:45 GMT
Server: Apache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
Referrer-Policy: same-origin
Permissions-Policy: camera=(), fullscreen=(), geolocation=(),
microphone=(), payment=(), usb=()
Strict-Transport-Security: max-age=2592000; includeSubDomains
Last-Modified: Wed, 03 Aug 2022 09:06:09 GMT
ETag: "c7c200-5e5528b37f99a"
Accept-Ranges: bytes
Content-Length: 13091328
Keep-Alive: timeout=5, max=100
Connection: Keep-Alive

It seems the mime type is missing. Now if we want to fix that we need
to change mime type configuration on the server. I found this link
https://mediatemple.net/community/products/dv/204403964/mime-types

Frediano

>
> Il giorno dom 28 mag 2023 alle ore 07:32 2656017036 <2656017036@qq.com> ha scritto:
>>
>> hello:
>>         when I download the software,I found the following interface popped up directly after clicking the link.Thanks!
>>
>>
>>
>>
>>
