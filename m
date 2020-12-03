Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6C52CD54D
	for <lists+spice-devel@lfdr.de>; Thu,  3 Dec 2020 13:19:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F1A06E9BF;
	Thu,  3 Dec 2020 12:19:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 547B36EB6B
 for <spice-devel@lists.freedesktop.org>; Thu,  3 Dec 2020 12:19:52 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id x4so1049629pln.8
 for <spice-devel@lists.freedesktop.org>; Thu, 03 Dec 2020 04:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zUpm+bIbJh2gLopoZaIsjk5aJ1XcQB6Q1PrXNKjxRf0=;
 b=Gd/Y3a87ayyVw/u8gFrODh4mdvoyBMmLj4X3ro6eMm3bIDLsav1kSQmj21aYu6+Kuc
 JFMjEup9skoqPaIZ+TfX9m90KJeV2UUKeln4UuvoNGEPwKzFNek4LPUAJyDYWlNBTBKq
 VktQmyiFgq0zRJ3fubNLXlR3k4pxFyQirFp5jKq1UTszzW1bS4RkBnb8pGfyO4bzS6af
 QAjVr3xG2Pt3diJ+rGRa9rA9eCZTTQL+P4QAiK+MBXyk9wjbdZrhmSDbnjcVcod14sN0
 QtHr8KlmH3NUSHzV4q9oSEWtQr3rn4ouFZGecm3fC7RpHCwECNdq6f6JT7/dFGKR53j/
 Ncaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zUpm+bIbJh2gLopoZaIsjk5aJ1XcQB6Q1PrXNKjxRf0=;
 b=mnEBBQhFpZB4jI2MGAf0QiMjWVQvCFayEFVaF4W+sRB1LunGBvomAgxLoZMCKHI6kp
 WeS4w0dVW0Ndq5q07l/9e2AWhKfy9CmFhNDYCO+rZFfh0ldZ/da8Riy+nXZkVbLCvBpS
 /7ESxOT/sZ5shNMtOZGK2p7zcfuhiG3zZjwx/pJnd1/0K7fRagTvqYGRJXM5rNHJ9CfK
 FNIgGPJEay2Dz4pFcQa3V0sT6cOnHtXwMITj7Tbt4S8+172jAqVE/AUbJMLaP1z2hmxz
 OFs9muv7zIV1fl2U2ACRHupjIxLd/1c+6DsP62CyisgR5bZOPY1ArH3amo3cGsDDfrkA
 cdDg==
X-Gm-Message-State: AOAM533h55VV/KEmBMa2BfgsMGa7ajUAi1MbSzqW/vyeUGSN24jtv2+U
 jkEYMn5b1dlP3s7rtyn0N0GdwvlcGbGQiJam95IXeNYaPgU=
X-Google-Smtp-Source: ABdhPJzjqVj3aglTIg9JNqBkoW1OsgEBpUAp25e8vhll7R/uzUH3h1RnA8P9o0rldvSM44DUXBFU9LbrIW9wZBpmqaA=
X-Received: by 2002:a17:90a:a608:: with SMTP id
 c8mr2860402pjq.161.1606997991980; 
 Thu, 03 Dec 2020 04:19:51 -0800 (PST)
MIME-Version: 1.0
References: <002201d6c8ae$01052f30$030f8d90$@nurudinov.ru>
In-Reply-To: <002201d6c8ae$01052f30$030f8d90$@nurudinov.ru>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 3 Dec 2020 12:19:40 +0000
Message-ID: <CAHt6W4d7k1ox=Ro3YYwECPw=5wuFLYP4TAmJrNu=dqZXP7pR8w@mail.gmail.com>
To: islam@nurudinov.ru
Subject: Re: [Spice-devel] about printer and scanner redirection
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno mer 2 dic 2020 alle ore 15:20 <islam@nurudinov.ru> ha scritto:
>
> Hello.
>
> we are planning to use ovirt in our company using spice protocol.
>
> successfully tested usb forwarding to virtual desktop.
>
> we have a question, how can we forward a printer and a scanner to a virtual desktop, which are connected via LAN to a physical computer.
>
> Thank you.
>
> Best regards,
> Islam Nurudinov.
> +79258098889

Hi,
  it's not directly supported by SPICE.
I suppose it depends on the LAN configuration. Is there a VPN to
access from the virtual machine? Can you connect to
the physical computer directly?
Which OSes are the virtual and physical computer?

Regards,
   Frediano
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
