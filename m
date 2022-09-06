Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EEB5AE140
	for <lists+spice-devel@lfdr.de>; Tue,  6 Sep 2022 09:37:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD4B310E592;
	Tue,  6 Sep 2022 07:37:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com
 [IPv6:2001:4860:4864:20::34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F09E110E592
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Sep 2022 07:37:27 +0000 (UTC)
Received: by mail-oa1-x34.google.com with SMTP id
 586e51a60fabf-1225219ee46so26306525fac.2
 for <spice-devel@lists.freedesktop.org>; Tue, 06 Sep 2022 00:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=ARDxohYcJqinW6GHzqM3L6vSiZhkXVioIy60IFj73is=;
 b=pr+FM6SrOtLqymWgKTjFNJ620Y3RxcJQO04i447/o5WnYPtNErQO6AnAKJ8KvL6lVX
 ugGnRHB2Dy/kZ0QpcXlR+CHCZMqu60GVkE7JvEiseNREOHSf7d5+aC1YcVTOYFH2h6bT
 TgH5Ydbm/po0ONG2JdjTbgJjTdiwO78bdZptwaHDjBfwwsp8uDPUSmPDLbA0VTqycrvW
 b2cIi48WUms9CcpUnM50mc1H7z+hHgBDpWOlSTCEHqBJ3Sq4LAUSXJYK3GIURMtm3hqP
 fBFrzeTwq7JemcqSPtDgUHYcmdQe7SSZTV2AyYICwq8weexJllR+EpUA7PZ6rpozJEvg
 +HzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=ARDxohYcJqinW6GHzqM3L6vSiZhkXVioIy60IFj73is=;
 b=LE+0ubFgCg9Ox+xxCyUhHCSu++ciLncnRnhQ+jb4lblxQKq2zizCc4N0MKHvB7hECB
 19zkHzpNQ/OhsSuLel7mCflYJKoEiJbY3EX+5r0mxoswiU8fd4T6xfrmAjQs+cujWODm
 MQG1boRjnfT87NjxYxqY1m7w5KF3PkgqVuLguoD1/tkYCrtEWTP7Xa5PaFNLnyFXtrEN
 vX2YarsuvnMc3RHmF8NYpioENk5QZWbGNdnN0sghkdXZ0qjJp5yWNjiWE8BVmQP47KN+
 eTiQpzxffJkugag2bZPnve/LvqYrwML2dJzI3BncoTGz10YPLuZy+a+5CfWcSCre/rfV
 uFOQ==
X-Gm-Message-State: ACgBeo2YUE/gmgiZfu8gAFCHIyJS+GXT6Vq4Tf/sySjJXCleGndwNxmp
 d8LOqTImnDzVrP+t9C3bWnJwp11J3J1eg1Xr//M=
X-Google-Smtp-Source: AA6agR6sV/rwOp2W6qjaOAogGg7fBq1AtWle067TroJ/F6G97E0bMdlgVDDM313oD9yrdyrXU0WfN6iTb4yFbS/nDlU=
X-Received: by 2002:a05:6808:df1:b0:344:5db2:e25a with SMTP id
 g49-20020a0568080df100b003445db2e25amr9546860oic.1.1662449847161; Tue, 06 Sep
 2022 00:37:27 -0700 (PDT)
MIME-Version: 1.0
References: <SYZP282MB3252EF544B06AD8AAF2E7746C97E9@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
In-Reply-To: <SYZP282MB3252EF544B06AD8AAF2E7746C97E9@SYZP282MB3252.AUSP282.PROD.OUTLOOK.COM>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 6 Sep 2022 08:37:15 +0100
Message-ID: <CAHt6W4epn7RK3-etaz+BKR5w+svWLhQKeLSkjE4XODQ0a3OiRg@mail.gmail.com>
To: qi zhou <atmgnd@outlook.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH] unhide cursor if pos_x is negative
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
 "Lublin, Uri" <ulublin@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno mar 6 set 2022 alle ore 06:03 qi zhou <atmgnd@outlook.com> ha scritto:
>
> From e1cb184f71e698509c5ae50c20c687130325da52 Mon Sep 17 00:00:00 2001
> From: Qi Zhou <atmgnd@outlook.com>
> Date: Tue, 6 Sep 2022 12:14:49 +0800
> Subject: [PATCH] unhide cursor if pos_x is negative
>
> It is valid if position of cursor is negative(not hotspot coordinates). for
> example: precision section, resize, move, north east arrow...
>
> Signed-off-by: Qi Zhou <atmgnd@outlook.com>
> ---
>  qxldod/QxlDod.cpp | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/qxldod/QxlDod.cpp b/qxldod/QxlDod.cpp
> index 341518e..f498115 100755
> --- a/qxldod/QxlDod.cpp
> +++ b/qxldod/QxlDod.cpp
> @@ -4920,7 +4920,7 @@ NTSTATUS QxlDevice::SetPointerPosition(_In_ CONST DXGKARG_SETPOINTERPOSITION* pS
>          return STATUS_INSUFFICIENT_RESOURCES;
>      }
>
> -    if (pSetPointerPosition->X < 0 || !pSetPointerPosition->Flags.Visible) {
> +    if (!pSetPointerPosition->Flags.Visible) {
>          cursor_cmd->type = QXL_CURSOR_HIDE;
>      } else {
>          cursor_cmd->type = QXL_CURSOR_MOVE;
> --
> 2.32.0.windows.2
>
Hi,
   merged.

Now the issue is getting it compiled and signed. Uri, Victor, can
somebody do it?

Frediano
