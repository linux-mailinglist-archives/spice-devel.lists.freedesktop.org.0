Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B219DB582
	for <lists+spice-devel@lfdr.de>; Thu, 28 Nov 2024 11:24:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CCE310E071;
	Thu, 28 Nov 2024 10:24:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 340 seconds by postgrey-1.36 at gabe;
 Thu, 28 Nov 2024 10:24:01 UTC
Received: from mail-gw02.astralinux.ru (mail-gw02.astralinux.ru
 [195.16.41.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1F9610E071
 for <spice-devel@lists.freedesktop.org>; Thu, 28 Nov 2024 10:24:01 +0000 (UTC)
Received: from gca-msk-a-srv-ksmg01.astralinux.ru (localhost [127.0.0.1])
 by mail-gw02.astralinux.ru (Postfix) with ESMTP id 6FF5D1F465;
 Thu, 28 Nov 2024 13:18:18 +0300 (MSK)
Received: from new-mail.astralinux.ru (gca-yc-ruca-srv-mail05.astralinux.ru
 [10.177.185.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mail-gw02.astralinux.ru (Postfix) with ESMTPS;
 Thu, 28 Nov 2024 13:18:17 +0300 (MSK)
Received: from [10.198.18.73] (unknown [10.198.18.73])
 by new-mail.astralinux.ru (Postfix) with ESMTPA id 4XzXMD0jHTz1c0sD;
 Thu, 28 Nov 2024 13:18:14 +0300 (MSK)
Message-ID: <066aed6d-c66b-4b2c-9e56-86d7e585edb2@astralinux.ru>
Date: Thu, 28 Nov 2024 13:18:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] usbredirtestclient: fix memory leak
Content-Language: ru
To: spice-devel@lists.freedesktop.org
References: <20241112135900.29365-1-abelova@astralinux.ru>
Cc: sdl.qemu@linuxtesting.org
From: Anastasia Belova <abelova@astralinux.ru>
In-Reply-To: <20241112135900.29365-1-abelova@astralinux.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-KSMG-AntiPhishing: NotDetected
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Envelope-From: abelova@astralinux.ru
X-KSMG-AntiSpam-Info: LuaCore: 42 0.3.42
 bec10d90a7a48fa5da8c590feab6ebd7732fec6b,
 {Tracking_from_domain_doesnt_match_to},
 d41d8cd98f00b204e9800998ecf8427e.com:7.1.1; 127.0.0.199:7.1.2;
 astralinux.ru:7.1.1; new-mail.astralinux.ru:7.1.1, FromAlignment: s
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiSpam-Lua-Profiles: 189476 [Nov 28 2024]
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Version: 6.1.1.7
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.1.0.7854,
 bases: 2024/11/28 08:54:00 #26904895
X-KSMG-AntiVirus-Status: NotDetected, skipped
X-KSMG-LinksScanning: NotDetected
X-KSMG-Message-Action: skipped
X-KSMG-Rule-ID: 1
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

Just a friendly reminder.

12.11.2024 16:59, Anastasia Belova пишет:
> free dynamic memory pointed by data before returning
> from function.
>
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
>
> Signed-off-by: Anastasia Belova <abelova@astralinux.ru>
> ---
>   usbredirtestclient/usbredirtestclient.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/usbredirtestclient/usbredirtestclient.c b/usbredirtestclient/usbredirtestclient.c
> index 62b72e8..6da87ec 100644
> --- a/usbredirtestclient/usbredirtestclient.c
> +++ b/usbredirtestclient/usbredirtestclient.c
> @@ -409,6 +409,7 @@ static int usbredirtestclient_cmdline_ctrl(void)
>               }
>               if (!arg || *endptr != '\0') {
>                   printf("Missing or invalid data byte(s)\n");
> +                free(data);
>                   return 0;
>               }
>           }
