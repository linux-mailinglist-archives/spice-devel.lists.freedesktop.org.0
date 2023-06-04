Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E39272192E
	for <lists+spice-devel@lfdr.de>; Sun,  4 Jun 2023 20:20:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD56710E0BD;
	Sun,  4 Jun 2023 18:20:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com
 [IPv6:2607:f8b0:4864:20::22b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3602410E0BD
 for <spice-devel@lists.freedesktop.org>; Sun,  4 Jun 2023 18:20:06 +0000 (UTC)
Received: by mail-oi1-x22b.google.com with SMTP id
 5614622812f47-38dec65ab50so3479010b6e.2
 for <spice-devel@lists.freedesktop.org>; Sun, 04 Jun 2023 11:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685902805; x=1688494805;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LoviYBuENhXhr+0sooKI4Rs7/TmdILThUlKMJLSH3yw=;
 b=Qvci0YCAwurIqz9zU5HNKOx4qbo8NLkH38VQ5SEhmkzOVHP8MGlyB3dsrS9TXsoW9M
 RalkuoSFtQK91V91q/cQxnb2nBNNSZ41fibhQijhVjWg7iSKZmHC7tnkOGomPFqVMk2+
 5UM/bnEhnNzGfP0/34K+oe0xjO2LkDdYRgBKFb/vScTFqOLzd4aZqkH2FrnSfVMwRbKp
 fU9PP+y/ecU//WbX13O2nNbbqocHXKAjlKyDCrHHyDepkGvVfRmU6n2by4Sm5ATwoYYi
 WMKCeFUSEN2c7D5DMPeDIJtshapiphxqMvr7MlqVKR2aHMCFCJ+vwn/FXAabTlkYGBR6
 Klwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685902805; x=1688494805;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=LoviYBuENhXhr+0sooKI4Rs7/TmdILThUlKMJLSH3yw=;
 b=C+xPqMgaWq4iJbbXzmvJ+sZMtZEYHVMqDg1/X5jUcj4+LvGfGv3zM9oU8VSGJ8EDDs
 WWskbU4COfPyULeMHyvIE7x1YwtLInBFXDH5Qa0ElggA1WORz11JxNoNpPuXrch8NZDC
 c7NQ/mr5A9ZiHu9N84kHyr8nsxrDeUve1VzLZnbo/C5rPTux3IJ3drvrQhFwFzPmHP2c
 I14JMSBfKijSiX0PKp+S5D2MewB9I8N+qUDCX3wQy775fJuPw7dOF3QpnvaUoQNVbvzd
 kcHhElubfE/yNnE18gEK/2+QmuA4nLJmFGz3+YUwTo/Ha555grkizPlLHak0MnnvdgN4
 FeRw==
X-Gm-Message-State: AC+VfDyV7MjPSpcc23U42S0KtyGFpUdqYNLyB7R0Vh6vW0cIpZBrl+89
 142+e5Bg5PidFor2GqKUtVpJQQrPJcfNrDn+UVE=
X-Google-Smtp-Source: ACHHUZ4YBEnMzkb9EZy/g/UWKOfNccBnIoUjlsH1hAudC4g1a6HObtj+JRiXscdYv2MJkk+y8ETkp2CCXEUlsRZrBFk=
X-Received: by 2002:a05:6808:2348:b0:39a:26e4:f455 with SMTP id
 ef8-20020a056808234800b0039a26e4f455mr5848503oib.0.1685902805038; Sun, 04 Jun
 2023 11:20:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAPuHtzRHg1C3yjm-rSDOn-bGOQfUvuu3OS3OhkARb-Pxw46Q0g@mail.gmail.com>
In-Reply-To: <CAPuHtzRHg1C3yjm-rSDOn-bGOQfUvuu3OS3OhkARb-Pxw46Q0g@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 4 Jun 2023 19:19:54 +0100
Message-ID: <CAHt6W4fbTQic-yGR3Mstmg9u=LcdeLQ-TEM9K-5PM1j=ZDscYQ@mail.gmail.com>
To: Serle Shuman <serle.shuman@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] Need simple spice copy and past device (for
 terminal use)
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno dom 4 giu 2023 alle ore 09:00 Serle Shuman
<serle.shuman@gmail.com> ha scritto:
>
> Assuming that the host is a windows based environment and the guest is s =
qemu based linux terminal only environment e.g ubuntu server without x11, t=
hen there are currently no features targeted specifically at exposing a cha=
racter device in the terminal that one can redirect text to and from the ho=
st's clipboard. e.g.
>
> 1. from host -> guest (via spice clipboard)
> host: copy from cheetsheet to clipboard
> guest shell: dev/cb > <command>         # redirect from clipboard device =
to standard out
>
> 2. from guest -> host (via spice clipboard)
> guest: <command> > dev/cb                  # redirect standard out to the=
 clipboard device
> host:
>   a. graphical paste menu item in some application
>   b. dev/cb > command                          # redirect from spice cb d=
evice on host to another command

Hi,
   I think you are confusing the client with the host. With SPICE you
use a client (either same as host or different) and you connect to the
host to access the guest.

Besides that, won't it be easier to enable SSH and use it instead? You
would have clipboard support and more integration with Windows. You
could use Tmux or a different terminal manager to have more terminals.

Regards,
  Frediano
