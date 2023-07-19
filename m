Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 103BC758FB3
	for <lists+spice-devel@lfdr.de>; Wed, 19 Jul 2023 09:55:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B61B810E40D;
	Wed, 19 Jul 2023 07:55:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com
 [IPv6:2607:f8b0:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D5510E40D
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jul 2023 07:55:08 +0000 (UTC)
Received: by mail-ot1-x335.google.com with SMTP id
 46e09a7af769-6b9defb36a2so1808051a34.2
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jul 2023 00:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1689753306; x=1692345306;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RR1vOt2RdsejitDle0LEUJ7RVTuEn59kuo6uVsMl6U4=;
 b=Puti9fFK9BPpUfBzMMdWGCmOakFoDcC9wEeQ5ajn6Not7sBCVrigbY9dqwJuQN1vCU
 0e8FyDdnJb2NTAtRch1g6KUC6GYvZur8ZU6wIZnr7DFFcykLnEu8nixDagGZ6rOO0A27
 Qqayau5WktwIIvZq+u+TmEEAF66+IljHkVAuM7h1eHSOu+vkReMfyQdGKKD0pWrJbgRH
 /S3WNW54V/RFNqYHOIu7uqsHL5rLZLvqvL2MyKP7Q++c+i2byDbiSeXV9pPHKmez2ASa
 SYjjPRIl0A+7WenVYkXY4wuW8WUZJVmK30OKIAkDOgutbj9nyW6NARCVR2RrIyG2X/+b
 8h/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689753306; x=1692345306;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=RR1vOt2RdsejitDle0LEUJ7RVTuEn59kuo6uVsMl6U4=;
 b=bYqB902yo9iQw44wQVcRlVmvuy6KBttcK68L1IgpCOfXtI82cMSnezJL768OvZUkDv
 soE/dXyqk5dcjzm35UjNktFKPqlaGz76Sa9o9uJ7C72d+B+LxMXAEq53nb+6YJw3k2l1
 tutW+pS59ghkykp1+1XJKdiVikeIhUvEfP4IJer6Wi8X2KwxQTz8Nrc+4B5nRqfB3gKP
 GM9O7JUjGOQegC13Wcl2XocxShPPo3igUyVcDvgY9fQpWF4rEIrgKRdtHcQwIOMFc5Qx
 hzZ1lhmjWYapa9Iu+uuP44lFTeyX3Cd1GW8SiXre6S2mmHr3oOBJEXafaVnT+1QlVbgW
 Y56g==
X-Gm-Message-State: ABy/qLY9c4+0SQUkDh5ladLTtGKQakqOnU/s6+CoF6V98ayqUIECcLfd
 lRvVzHVwB4NnqUKEXjdnPaYLSB2he374r8Q+Zko=
X-Google-Smtp-Source: APBJJlFyACZeKhBiIhJR8mBMK5h7iR2PviQceECZ1u0RbgVpCvlBMM3ljm5R21qDHr/h87HXixInotHRAhDxHMQAeII=
X-Received: by 2002:a05:6870:65a7:b0:19a:34ed:db04 with SMTP id
 fp39-20020a05687065a700b0019a34eddb04mr18193652oab.32.1689753306509; Wed, 19
 Jul 2023 00:55:06 -0700 (PDT)
MIME-Version: 1.0
References: <99e6b141-6aa0-fc47-2ffa-7a94e1a3c079@gmail.com>
In-Reply-To: <99e6b141-6aa0-fc47-2ffa-7a94e1a3c079@gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Wed, 19 Jul 2023 08:54:55 +0100
Message-ID: <CAHt6W4cAL9N1yoigxgbqHAnoCU1ZzZUiH3KcW52qaXigCK25ng@mail.gmail.com>
To: =?UTF-8?Q?N=C3=A9fix_Estrada?= <nefixestrada@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] Help with image encoding
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

Il giorno dom 16 lug 2023 alle ore 07:58 N=C3=A9fix Estrada
<nefixestrada@gmail.com> ha scritto:
>
> Hello! I'm currently writting a Spice client in Typescript that makes
> use of modern browser features (such as WebGPU, WebUSB, Web workers, etc)=
.
>
>
> However, I'm struggling with the Image image encoding. I've checked the
> whole documentation site, but I wasn't able to find how each one of the
> encoding works. My knowledge in both audio and video encoding is very
> limited. Specifically:
>
> - QUIC
>
> - LZ (and all its variants)
>
>
> I've been trying to understand them from the spice-common project, but
> it's just the implementation without any type of docs :(
>
> Another question I had is if there's another way of comunication or a
> place where I can shoot questions about the implementation
>
>
> Also, I'm planning on gifting the client to the spice project, if you
> would be interested in! (given that you already have a JS project)
>
>
> Thanks in advance!
>
>
> N=C3=A9fix Estrada
>

Hi,
   why not look at SPICE html client instead? It's already JS code so
it  shouldn't be that different.
For QUIC you can see Uri's link if you need some notes, LZ is more or
less standard on decoding, you have uncompressed sections and
references to previous chunks, so it's just a matter of understanding
these encodings.

Regards,
   Frediano
