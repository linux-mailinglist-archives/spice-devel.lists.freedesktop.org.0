Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1888861E0E4
	for <lists+spice-devel@lfdr.de>; Sun,  6 Nov 2022 09:38:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71D5A10E16F;
	Sun,  6 Nov 2022 08:38:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9076E10E16F
 for <spice-devel@lists.freedesktop.org>; Sun,  6 Nov 2022 08:38:06 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id n12so22967920eja.11
 for <spice-devel@lists.freedesktop.org>; Sun, 06 Nov 2022 01:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=C3Ii6RFwpk+RLuSIB4EUzQ0LyaW3m0ELwrkYh2hu4ek=;
 b=Odzxyo+3onYKXNjc+T0m8CGHiXbrSblFwzIklT6pw1CPVMBv0wY1ig3ITHccr1+sEy
 uWosSXGOPF0el0WFB1wPRzB1lkeflHrIihdBH5MSL+9OWlncsd0+G0lKFA3e06Fu6G5G
 RQKofY3CZd1UpItfJ3oKrjA4zcwYTGtOgbrQGQCEzNNgrLSSDoJDoNpQHFfQVSb9wK7Q
 pHlwrzJNftWlKthjGuIcHlgr6NMGP+U/P7YvOWqjLWIsszshiMxUtdmj2Dc3/PcXq40I
 acQcQYWHJLB1rEQBrOteVm6TAS94u1+Zt8OKzRJKCiADUtJO4xfKrb/5N3H8w3LwDkck
 +GHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=C3Ii6RFwpk+RLuSIB4EUzQ0LyaW3m0ELwrkYh2hu4ek=;
 b=VM6lw27S8IEF4tyS1qabrLapoYEB3+YeX1mxGB/jE1lQ3e2GtDy6omYkZLjYuGxPzs
 pbnoSrYCJxxdNkqPqDlny3POdkf+d0jvwqZjWsnogQp6hLjp9XqIer8JS5D27tCcexvu
 CvWK1gBs7vokN7Iqpoke7HcVoXEEjnjOqEoXt/BIXp5z66kQjnxrR0gl9EI0W7twMFuB
 wJFoZ6YfStfIOcdDhL4mMpb5G7H3hr41PMDEaci1qda05u3dZmSc055NBjcDpZtuqd0a
 lIkCcwk1vTaV0qKE1qCJNigYzpBS2GzPkg9VCATjZrGmpeiore+epKJ4wATnlOakjohO
 2iKw==
X-Gm-Message-State: ACrzQf2fmDgS5ZeEvBELn1COMiSPaYjhclwyRJncNuEs2sui36odf6qW
 c9MODBo5ImjVMjvR3hsZkFBEq7uswlgayPIXnlXZ35En
X-Google-Smtp-Source: AMsMyM5jC0mxOKCoQyEN+/KRYw8vGqAl6a1BrdF/ZJrSXDHs+J2cARbHgQMAorWX3aAGRu8QtiSESHxJAt09KIukkxg=
X-Received: by 2002:a17:906:847c:b0:7ad:d6c8:35d7 with SMTP id
 hx28-20020a170906847c00b007add6c835d7mr32863983ejc.170.1667723884954; Sun, 06
 Nov 2022 01:38:04 -0700 (PDT)
MIME-Version: 1.0
References: <CANVMif+rXZBMvZ3Ww+mWC7TpViGwJSzvmn7VvU08hMf=G4ENsQ@mail.gmail.com>
 <CAHt6W4etN1Br9-mseZnV+T2BSj4Hrq=d92mFxNbx2WpNNwNhwg@mail.gmail.com>
In-Reply-To: <CAHt6W4etN1Br9-mseZnV+T2BSj4Hrq=d92mFxNbx2WpNNwNhwg@mail.gmail.com>
From: Dirk Eibach <dirk.eibach@googlemail.com>
Date: Sun, 6 Nov 2022 09:37:54 +0100
Message-ID: <CANVMifKK4Xd7QKW0yWAxx80tUJLDJC9MuBiDnvbeL=FSWFLfgQ@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] Standalone (non-virtual) windows server
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

Hi Frediano,

> More or less is a project to use SPICE on a bare metal machine,
> something like x11spice or winspice (see
> https://gitlab.freedesktop.org/spice/win32/winspice).

By the way, do you know of any spice server implementation for wayland?

Regards
Dirk
