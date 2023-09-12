Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D9979C9F9
	for <lists+spice-devel@lfdr.de>; Tue, 12 Sep 2023 10:31:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 444A210E3BA;
	Tue, 12 Sep 2023 08:31:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com
 [IPv6:2001:4860:4864:20::2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E813410E3BA
 for <spice-devel@lists.freedesktop.org>; Tue, 12 Sep 2023 08:31:02 +0000 (UTC)
Received: by mail-oa1-x2d.google.com with SMTP id
 586e51a60fabf-1c8d895a602so3132682fac.2
 for <spice-devel@lists.freedesktop.org>; Tue, 12 Sep 2023 01:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1694507462; x=1695112262; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=oCEqeBT4ndWDUOTeVcHYu0anwfjNWV+BF2v/6Ocp/C0=;
 b=qxDXZTCLeKmTtG+ktrfg3VqE+jhylTFIMgDq2dX/LO9pZ1JSWp0SpY5MHkq3rhaqBP
 YCyccD/jMZjDl0W0pLiA7DAGrJ110SOFwO3eof0dc4sRJkockq2BNbdnkpqPGUPoUyoH
 a4YMM9ZszONBoOABlWKHcmQ3US6yuuqNCaU7fH1L3EIc7wxxXelplYq2N1lmW7C90axV
 1ZDwZDryURoE/M20GHg2b/LEEWjF2atoBPaMdi7q4FA/5V1hYy2Ge02mSZZJr1ZvF6Yh
 NQUaYh7e3xE81LtUD+qekuoRTNZPdSbvBpx22lj8B8nej3up1zHVImFLmzaZnrn4RqCE
 OKDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694507462; x=1695112262;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=oCEqeBT4ndWDUOTeVcHYu0anwfjNWV+BF2v/6Ocp/C0=;
 b=EIJIKkZhqX8y7YrPyDOMAtqrfMMbWJk9pD3VNC2tgyeU8Z5ZZuGdPjUh5VBIBb1zNr
 mZu8QyKI8OIY88sMRCNY3JFJd4GOdx85zV1ELK/Xgjbf8vvjXfciZOb326cZOh9BescK
 hAM3qdIMrXqeCdRIzvqThsqM6P1aMpnwoe1SXrXjZiX6ks25lmAyteYix4O3j65rfkTD
 fAmFDSjiw2ZgFMM6gdsxI+lEXfb5pM4jcD0v9P/sIeQnryolzfNwh+8wZVOk9SdAb6KT
 Db5IgfspItlK1UXdCcMBd1TUi9ZLpy/Trfr+X5l+Z1rxKcQwq2aI2rSUZluHp/yk1ysG
 bzNA==
X-Gm-Message-State: AOJu0YzVPpbxQfxdb5q/u+E7mWwtf37f2Wy2QapSPci81c6+ALZJiReb
 EUPXS8JJV/WXlV3BKZORFCMhOopDJLocJX9Jfsw=
X-Google-Smtp-Source: AGHT+IEmIk6QcPpiKh1TSmKTZ4DZ+J7RqYt4yHyHFYhDRev/aKv1F2bKPcdMTFF6dJNdSYZfZHGgFdkQ7CjQzEfBXcE=
X-Received: by 2002:a05:6871:528a:b0:1d5:aab3:ecd3 with SMTP id
 hu10-20020a056871528a00b001d5aab3ecd3mr6732169oac.6.1694507462079; Tue, 12
 Sep 2023 01:31:02 -0700 (PDT)
MIME-Version: 1.0
References: <99cd1b18-a4ce-5d93-62a0-726a64297b4f@gmail.com>
In-Reply-To: <99cd1b18-a4ce-5d93-62a0-726a64297b4f@gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 12 Sep 2023 09:30:50 +0100
Message-ID: <CAHt6W4crgN9ShzgJQiUeYBVjHkx0AGmS0joyqE_ZdOoekPQFbw@mail.gmail.com>
To: daerlnaxe@gmail.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] A little help to start to develop.
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

Il giorno dom 10 set 2023 alle ore 14:56 Daerlnaxe (GMail)
<daerlnaxe@gmail.com> ha scritto:
>
> Hi,
>

Hi

>
> I'm sorry to disturb, i want to try to develop a spice client with some
> features like adding visual effects. I try to see all possibilities for
> a projet about retrogaming this is the last part. I found Spice
> interesting, i have a good render, it's quick, i just want to customize.
>

I'm not really sure how Spice fits in retrogaming or rendering.
Why not change an already existing client? Which visual effects would
you like to see?

>
> I don't have really habit to work on c/c++ i worked on ihm with visual
> c++ there is a lot of time, but the most of time i work with java or
> c#.  I know it will not be easy but i want to try, i want to make my
> projet compatible for linux and windows.
>
>
> I need some advices to quick begin, like a basic client sample, i can't
> find anything on the web. I saw documentation but it's pretty difficult
> without a basic example, furthermore i'm french and for me english is an
> additionnal difficulty.
>

There are some client implementations, our client is based on
spice-gtk, see https://gitlab.freedesktop.org/spice/spice-gtk/, in
spice-gtk there's a small client called spicy in the tools directory
(https://gitlab.freedesktop.org/spice/spice-gtk/-/tree/master/tools?ref_type=heads).
Remmina project also implements a Spice client, I don't know how easy it is.

About the language you could write both in English and French in the
emails (don't use an automatic translator or at least review the
translation manually).

>
>
> Thank a lot.
>
>
> Best regards.
>
>
>

Frediano
