Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B18DF758FC3
	for <lists+spice-devel@lfdr.de>; Wed, 19 Jul 2023 09:59:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 546BF10E414;
	Wed, 19 Jul 2023 07:59:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com
 [IPv6:2001:4860:4864:20::2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E15E910E419
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jul 2023 07:59:13 +0000 (UTC)
Received: by mail-oa1-x2a.google.com with SMTP id
 586e51a60fabf-1b00b0ab0daso5464127fac.0
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jul 2023 00:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1689753552; x=1692345552;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hmT75C4NeaodlYNxivFtP5DzvntrF7/Qt2DMKfiTxag=;
 b=rkDc7PkL3av+ah/lfgG/rZTosz4OvQ2y9TVaG2kZmpUSgTKAVDqY6UH2WoWgHkoxb3
 biDcgAnRNxixjFUUcklpVG5Oip8rUx7Hzio+K5ktQyrKDm2NtE/me7DGcFHenrIb31xU
 5NlLAVh59O5wfAuMEHgYZY4ydIGkG09CrlwcmwmLWO/jFtrlgwjgfaYGZ5omFsRGK/v0
 rw5EQfI8x4TDq43+1fgsCOVpcYUTZsw0YytY0WYRftqNjeiiR3Iee+VGPSO8kOhx5N27
 hvAKAml5lUh491VLegejDzbByTCyATQd8zaEAT9S0Sw47Nyqqdr5URZBRoe+M5CS0QpR
 aTBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689753552; x=1692345552;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hmT75C4NeaodlYNxivFtP5DzvntrF7/Qt2DMKfiTxag=;
 b=EKGX1vs6AWt0KPtI9f4zl2AEHE2u1jnT+YJIuXtbSuP2w4WkGSRI46sHWSXo0+ovL3
 1pqGQrh40Ew6tOSJuXMOaf/LFzWyb63nI/wJLZ3XCYCPtPf7i6gKra5PmlUbQunUrIE3
 TVNtD56pjvdHI0bUEsq82IfU7wNWQZXXaVhKdAtSLJ4pnV3M+M3k5bvOiL9c/oidH8Yz
 4IfOqxsJs7ojSpaBf+6OWhwdWuP+kY2bZdApXfxh+vahtlZvPg8VPBsdautBgUKhO2kA
 rGJosN9UKjQQXaf/ozALTw3xCIBwjFXt5CzNrDHyIPJSJb5um25VfAhmIs7PRJJo2lWV
 XogA==
X-Gm-Message-State: ABy/qLab5eBHNMvBwsX8o3VJcop3905F6pZp5AN0rXuXOD3mWIpeXMeR
 EiHWDyWv9yKHeDkDGf2Hh3P9xekc4Ld1ZopiMmg9du41
X-Google-Smtp-Source: APBJJlFaEBa5D7wQiYg4xgxgyYZFC7BvoOMYDGg5FkgLWZvGv3t3XdaarvTgCzumBO+X6+S637UwdMm3DsvBsaEEN3g=
X-Received: by 2002:a05:6870:a110:b0:1b0:c99:fd1e with SMTP id
 m16-20020a056870a11000b001b00c99fd1emr19792508oae.4.1689753551874; Wed, 19
 Jul 2023 00:59:11 -0700 (PDT)
MIME-Version: 1.0
References: <tencent_B6679654B7F9B858ACDD19AF01982938DB0A@qq.com>
 <CAHt6W4esuZwZ6o+CdT2_jo2q+W3P38vrp0ooGA3gY3UUhNkORw@mail.gmail.com>
 <tencent_0D2D92EE12D6C0CDFE9C9D32A3AABB7D5809@qq.com>
 <CAHt6W4f6ND+RN6rKTs5JZuERgi1RCK2gz2UTf-Cts2fQs+hn3A@mail.gmail.com>
 <tencent_AD58C0DC85ACCD98353863670256EBF9A80A@qq.com>
 <CAHt6W4fAEJvtVWXczBDMBYvS=PkOP54+7_2M8b9UOD4WnCer9w@mail.gmail.com>
 <tencent_267D99E5D57A3EB616DE77666B7E66D2CE08@qq.com>
In-Reply-To: <tencent_267D99E5D57A3EB616DE77666B7E66D2CE08@qq.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Wed, 19 Jul 2023 08:59:00 +0100
Message-ID: <CAHt6W4cciFxqCG4Ht6F=3eO1TbynUAt__9X8q3yiPwabLNwpVA@mail.gmail.com>
To: =?UTF-8?B?5Lq65a6X6YGT6aaW?= <928003896@qq.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] How does SPICE display the desktop data processed
 by Nvidia vGPU?
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

Il giorno lun 17 lug 2023 alle ore 03:34 =E4=BA=BA=E5=AE=97=E9=81=93=E9=A6=
=96 <928003896@qq.com> ha scritto:
>
> Hello,
> The attachment shows the effect of installing spice-streaming-agent on th=
e spice official website. There are two screens, one displaying normal and =
the other displaying black.
> =EF=BC=881=EF=BC=89Should the black screen be caused by spice-streaming-a=
gent? What is the reason for the black screen? Is there a solution?
> =EF=BC=882=EF=BC=89Is there a way to only display the desktop generated b=
y spice streaming agent and run it normally like a remote desktop, allowing=
 for keyboard and mouse interaction?
>
> I hope you can help me, thank you!
>

I cannot see the attachment. Was it stripped?
Can you explain your configuration? What's the VM setup?

Frediano
