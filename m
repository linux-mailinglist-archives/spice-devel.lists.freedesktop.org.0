Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A46695E7E
	for <lists+spice-devel@lfdr.de>; Tue, 14 Feb 2023 10:11:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B5EC10E820;
	Tue, 14 Feb 2023 09:11:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com
 [IPv6:2001:4860:4864:20::36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7A8710E820
 for <spice-devel@lists.freedesktop.org>; Tue, 14 Feb 2023 09:11:42 +0000 (UTC)
Received: by mail-oa1-x36.google.com with SMTP id
 586e51a60fabf-169ba826189so18269698fac.2
 for <spice-devel@lists.freedesktop.org>; Tue, 14 Feb 2023 01:11:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ZeE9cNgy255HLIMUCht8VBWkLKCsum8Xi0lvkJWbF4Q=;
 b=arGMsaiqqyLqxTWKDxNi+2msCAKZv0nuaKaxxFYQTKzDCqRnB0hKD6JmNy2y9VXOUr
 /iAZi17XB/GYrMS6VQ41rvlHdx9RgFnedXNcQKEj98vr7HrnljRGZkJx9gSdu36sRyQw
 im1o5Kg1mMaTfHqagHxJIF4o2Qa9cesJdH/vn3bkrIYY1pSvFgPw+rcTcA29SntMu5kk
 DF+XWys3gdhcqKFyto4ls8ZD3JYL2V+b/L8FoHnAhY7w8R3rsIFDvu+XbdyCW7n6ZE12
 eCIZtVoNHHK6+uJYoomsRTw9iBNusKv5yBh0FoJCA2D9OEQqC+6FQYz1t2E1pIcS/Eo0
 tCdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ZeE9cNgy255HLIMUCht8VBWkLKCsum8Xi0lvkJWbF4Q=;
 b=g/XwuM10BPULs5W/UI8zcbeukmXhvzQltAl8MFtjbdMZ6ZesQO+gl7B4Y80RHXMr0v
 L9Alq+2XbOrSM4ap438rdKC3mVntt2pcyF6oyyt2dUDZI87BadFRNjYJRlmyyYOa6Zp2
 vBvZUaU6VRibVgN1Wp/3jztBPQlrtc+/SyZoUrbSs4vFG4Xx9RCkWZaaYAC9zwpt5tEr
 mbddM3MK55sKuw+Vs1ZolrvPuh++j9Cw8D59mrukHOVlyP/qulCpz+Mae8u+IpWpUwbF
 8qGrvs3PAXhw25+q3HqBKvVwTw3Y42Tjo+CZ2OavnvtP9telPzVK5IcjE7z47nYpLyET
 Y/Aw==
X-Gm-Message-State: AO0yUKXJsLlkmZb+aVmohsS/1NpEDnItvrUonuKGMjhGsikB01XOgIaU
 nwMtX0uS03XEka89m0g+u/6HiHrHD5Xa2YiDozs=
X-Google-Smtp-Source: AK7set9JU5I28MHdiX1Goza4Jl9Hx6Kw1ApLXvuIjEPxQm34NfGmTsZ3PGdUdpTAZfmW6GAuW+WhUzZHxHwRAbo0iCc=
X-Received: by 2002:a05:6870:e0c6:b0:16d:e8ac:8424 with SMTP id
 a6-20020a056870e0c600b0016de8ac8424mr145468oab.179.1676365902066; Tue, 14 Feb
 2023 01:11:42 -0800 (PST)
MIME-Version: 1.0
References: <SYZP282MB3252532513FAB75D92C10DC8C9A29@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
In-Reply-To: <SYZP282MB3252532513FAB75D92C10DC8C9A29@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 14 Feb 2023 09:11:30 +0000
Message-ID: <CAHt6W4fwa1r7f4gm5=_p2Q4cYHPdE5Dsk2484=O-9sNC1Wq2sA@mail.gmail.com>
To: qi zhou <atmgnd@outlook.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH] reset qxl to vga mode
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 admin <admin@atmgnd.cn>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno mar 14 feb 2023 alle ore 04:19 qi zhou <atmgnd@outlook.com>
ha scritto:
>
> from https://github.com/qemu/qemu/commit/ed71c09ffd6fbd01c2a487d47291ae57b08671ea
> QXL device rev 5+ requires explicit reset to switch to VGA mode.
> in windows, if bsod happens, windows cannot switch qxl gpu from qxl mode to vga mode. It is important to reset to vga mode after windows system bsod, so the blue screen can show
>
> below is the patch:
>
>
> From 9c4ba40a02d4fa517b069e8a795c5b570091c928 Mon Sep 17 00:00:00 2001
> From: Qi Zhou <atmgnd@outlook.com>
> Date: Tue, 14 Feb 2023 11:31:08 +0800
> Subject: [PATCH] reset qxl to vga mode
>
> in windows guest, if we trigger a bluescreen, windows will reset gpu to vga
> mode, otherwise the bluescreen will not shown
>
> Signed-off-by: Qi Zhou <atmgnd@outlook.com>
> ---
>  qxldod/QxlDod.cpp | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/qxldod/QxlDod.cpp b/qxldod/QxlDod.cpp
> index f498115..25b9af6 100755
> --- a/qxldod/QxlDod.cpp
> +++ b/qxldod/QxlDod.cpp
> @@ -3869,7 +3869,7 @@ void QxlDevice::ResetDevice(void)
>  {
>      DbgPrint(TRACE_LEVEL_VERBOSE, ("---> %s\n", __FUNCTION__));
>      m_RamHdr->int_mask = ~0;
> -    WRITE_PORT_UCHAR(m_IoBase + QXL_IO_MEMSLOT_ADD, 0);
> +    WRITE_PORT_UCHAR(m_IoBase + QXL_IO_RESET, 0);
>      DbgPrint(TRACE_LEVEL_VERBOSE, ("<--- %s\n", __FUNCTION__));
>  }
>
> --
> 2.30.0.windows.1
>

Hi,
  It looks good to me. Why it was QXL_IO_MEMSLOT_ADD I don't know. On
Linux is QXL_IO_RESET too.

Frediano
