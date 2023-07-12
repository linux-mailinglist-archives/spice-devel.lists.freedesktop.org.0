Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C137505F2
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jul 2023 13:26:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECB0210E4D0;
	Wed, 12 Jul 2023 11:26:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com
 [IPv6:2607:f8b0:4864:20::c2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 033CA10E4D0
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jul 2023 11:26:25 +0000 (UTC)
Received: by mail-oo1-xc2a.google.com with SMTP id
 006d021491bc7-5634fbf0cf4so4630445eaf.3
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jul 2023 04:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1689161185; x=1691753185;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ugWh3SkjWoD4pwd6sVTMX3bcSEyT4Lmm6x/9AVEzgxI=;
 b=aa5vCfizIKP6NMLscuGL5KGtbBCmFi+oQ1IT5LZUyh8U5xCoZk8mbMiCusfLgG7x+W
 oQMAv3X307bgiMFdAvAsv21YhI7tbaqbttG0u+5TEjtaZ8rbh0Ae1QhZB57C+tCae72L
 9Aj7PnXLQL23P6ef0Tr+3jLPn/JjPCwoclCICWoUkPDCyuoy/XwkeyzlwXuFFOxwQoam
 P+RHCZOFtd/wnFB+dLKvdY8tqjjGB/uDOXhn+GTRGlQGWOvj2c4HrTox/jbBP8O86+yA
 gjiBuXfzS0f4FAEFKKDKReuPOP9h4jVt0vsorUUZvzu51Aep4uYhpYNsXHtx+hrLSMnR
 I/sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689161185; x=1691753185;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ugWh3SkjWoD4pwd6sVTMX3bcSEyT4Lmm6x/9AVEzgxI=;
 b=GIyX/AharNUL10o0Dr2Zjw8/sqfD8rvZhtOuZC47iMoABYgCj/dHkhJSZyZeDoLX0U
 QB10esJG9gPKXz7FEN3b1aEkpbdR2x9v63exsEKDZeWCFtBEgmPGemFJ3+fHCzsh5fxC
 m9rlfpVpeDhbaf6OunHhTKZw6GTRM4aKCF0YLRRpINxJ8ofwpkJeRBsLfgdViDBQaM5H
 NEDR3gBjD+Ajm8LgBMD57ulPS9b+70gHuGowqr3rC10ktWYOUPb60tjfSuuoBWWR+NFn
 1+lCHMsXGI4GJ8kN8m17oRVD66mIunnwULHZM0EeXBwTWu3eLNh7PrxAzZzcRc7klx0d
 OlGQ==
X-Gm-Message-State: ABy/qLb9Iq3yVRv40NBzi33AxYMp2zu7LCA7JaxpAyys/oxv9J8JTnAD
 DgWFGADXwRZ2vW+U3Stl5JfLEImkwHTMUk50oqU=
X-Google-Smtp-Source: APBJJlHlRX/EDhb7jjiLj/pPOy9hnc8iN2pcfL9b0UvGJEyf98fJzfYXLdXuM4Ep7UfZ7qNWoXrcrs7yrVR/c/rNjt8=
X-Received: by 2002:a4a:2c52:0:b0:565:8b16:4042 with SMTP id
 o79-20020a4a2c52000000b005658b164042mr11520222ooo.2.1689161184870; Wed, 12
 Jul 2023 04:26:24 -0700 (PDT)
MIME-Version: 1.0
References: <tencent_B6679654B7F9B858ACDD19AF01982938DB0A@qq.com>
 <CAHt6W4esuZwZ6o+CdT2_jo2q+W3P38vrp0ooGA3gY3UUhNkORw@mail.gmail.com>
 <tencent_0D2D92EE12D6C0CDFE9C9D32A3AABB7D5809@qq.com>
 <CAHt6W4f6ND+RN6rKTs5JZuERgi1RCK2gz2UTf-Cts2fQs+hn3A@mail.gmail.com>
 <tencent_AD58C0DC85ACCD98353863670256EBF9A80A@qq.com>
In-Reply-To: <tencent_AD58C0DC85ACCD98353863670256EBF9A80A@qq.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Wed, 12 Jul 2023 12:26:13 +0100
Message-ID: <CAHt6W4fAEJvtVWXczBDMBYvS=PkOP54+7_2M8b9UOD4WnCer9w@mail.gmail.com>
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

Il giorno mer 12 lug 2023 alle ore 09:37 =E4=BA=BA=E5=AE=97=E9=81=93=E9=A6=
=96 <928003896@qq.com> ha scritto:
>
> Hello,
> The link you provided is also available on the official website, and I ha=
ve also found it. However, there are few comments and it is still difficult=
 to understand. Is there any technical manual or document other than those =
provided on the official website that can help me make coding modifications=
 to SPICE?
>

Not much updated but you can find some base overall at
https://www.spice-space.org/developers.html, probably you have already
seen them.

Frediano
