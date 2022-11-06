Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E20C61E1B4
	for <lists+spice-devel@lfdr.de>; Sun,  6 Nov 2022 11:43:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C64D10E084;
	Sun,  6 Nov 2022 10:43:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com
 [IPv6:2001:4860:4864:20::2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3667F10E084
 for <spice-devel@lists.freedesktop.org>; Sun,  6 Nov 2022 10:43:17 +0000 (UTC)
Received: by mail-oa1-x2b.google.com with SMTP id
 586e51a60fabf-13bd19c3b68so9921249fac.7
 for <spice-devel@lists.freedesktop.org>; Sun, 06 Nov 2022 02:43:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=gyBIHrxg0MvrO/N3OFLx7bDtHJqQY5hCgqp6UJcd1pc=;
 b=lXc3YpdQ1bCxQp7xUlJuk+mmcEpu+1zpYAEs3H+7MmZyzCcBrHCKPv7HMLd90kg8Q2
 BGIhnshM/szB3CJuqvfKgvjMxMmaWSqu8tv7II45Eps2zcNHHSAGXN++rpKYl9w9cJQi
 OVsVtot+Pm0PCEjaLtdHHak74pglym8QuUdW1i4HdSMB+RN/f+pgxHOMYQnw/zktFLud
 0elreAiJlH9ozEEYXZWf0hJLKH1mObT4yGlWLmuQnedftFMrk2HLQH1kLtxeBO0ar5+v
 6g8D6cdhARtvagfsV0/xLKnjznH6PWdR+GIH6pv2B2xuBlt4gAnB1EQAW7pdC0JxSR33
 D8vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=gyBIHrxg0MvrO/N3OFLx7bDtHJqQY5hCgqp6UJcd1pc=;
 b=YyLKwquKHefy9eNPtZZHGHUZsbXQYNTMW5g8Eg8UNUJL5laJCLKFRx9lAvVjePW7nm
 5WO/0I4tytK23eIRAsrv3Q5u3hZ1GikXEqWrY7OUHYj/i1UNLyPc0zj/dpRKx7jnMq3+
 XrcNj2kPqmYHz9Ipuh1s9+5SloB5RUxVyshhtWpj7NaCiyA//QfjuXck4iz73Kd2+CFI
 C/tJNA1tLuXvbrSPjjUKbWKDi48iDpRU6Oo7+0+5xiE1Zt9A6C4hOF4KF2XP+ZREKKLw
 bjwsVhTBgPyCL4F407nQGeHt18IF0TcXHCpmiiv4DeDG/dZbR7rME0QRrZ6d5O1KnTnm
 jEsw==
X-Gm-Message-State: ACrzQf0B2ecNSLwSAvYiWVTTfnnys92qHOPuRIDashFZPpfa/mdaIth6
 TB/hUgk9+X13EKWOM+kaGx52ln6CmykdFD2R22w=
X-Google-Smtp-Source: AMsMyM6S3E2G41agcV1CU72Hkm978I0Z5tofNw1Pimr1whyh6NBcMJi3rm+jEdx6xVIC8/Wwo2HHVsnxVLfdCdqoZbE=
X-Received: by 2002:a05:6870:e6d3:b0:13d:7209:a3d7 with SMTP id
 s19-20020a056870e6d300b0013d7209a3d7mr13647960oak.1.1667731397158; Sun, 06
 Nov 2022 02:43:17 -0800 (PST)
MIME-Version: 1.0
References: <CANVMif+rXZBMvZ3Ww+mWC7TpViGwJSzvmn7VvU08hMf=G4ENsQ@mail.gmail.com>
 <CAHt6W4etN1Br9-mseZnV+T2BSj4Hrq=d92mFxNbx2WpNNwNhwg@mail.gmail.com>
 <CANVMifKK4Xd7QKW0yWAxx80tUJLDJC9MuBiDnvbeL=FSWFLfgQ@mail.gmail.com>
In-Reply-To: <CANVMifKK4Xd7QKW0yWAxx80tUJLDJC9MuBiDnvbeL=FSWFLfgQ@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 6 Nov 2022 10:43:05 +0000
Message-ID: <CAHt6W4eBKEp7u+xTWaFaA14zojqD4E5-81ac=80v0SbgqMsBMg@mail.gmail.com>
To: Dirk Eibach <dirk.eibach@googlemail.com>
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

Il giorno dom 6 nov 2022 alle ore 08:38 Dirk Eibach
<dirk.eibach@googlemail.com> ha scritto:
>
> Hi Frediano,
>
> > More or less is a project to use SPICE on a bare metal machine,
> > something like x11spice or winspice (see
> > https://gitlab.freedesktop.org/spice/win32/winspice).
>
> By the way, do you know of any spice server implementation for wayland?

I suppose you mean something like x11spice or winspice (or your
project) for wayland. As far as I know, no. Not that it would be hard
I suppose.

Frediano
