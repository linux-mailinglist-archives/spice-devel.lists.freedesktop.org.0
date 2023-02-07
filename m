Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E44C368D7E8
	for <lists+spice-devel@lfdr.de>; Tue,  7 Feb 2023 14:04:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FB5F10E1C7;
	Tue,  7 Feb 2023 13:04:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com
 [IPv6:2607:f8b0:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92F1010E1C7
 for <spice-devel@lists.freedesktop.org>; Tue,  7 Feb 2023 13:04:12 +0000 (UTC)
Received: by mail-ot1-x336.google.com with SMTP id
 p24-20020a056830131800b0068d4b30536aso4142582otq.9
 for <spice-devel@lists.freedesktop.org>; Tue, 07 Feb 2023 05:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HbAkuLUcmz47axVOv5YdLcdHQKBNFdyLUf/RnS/igzo=;
 b=diDwII090dbBURmgRO0jmzySYWXlg1S5urrPEz1W2s9XJICiuqHh3+0FcHvUi+3v0K
 AAFAkSmRMvlgFH+mDqhIvRhjwi6LY19buj75ViJdi+xkkmZpXYaqdCddx0tOeswXkZzp
 vfFnFGKp7McN5MwakGKeFWrF2HsL6PajbZxSOA8fHVX1fpV9/R42sxItQ9fCvuQbUJ4s
 2VnahtALlCJMKhXAfqpjWgsb56WYJIUTMDOQSLUlDjI3GXyu+MoVg1X7C1saOLbJe7Lz
 88wjEwBiqbPqi7eUN4qOFBZ+pP9WRN+7FgKVP3rc1DB8r3XIVOVqRJuCMOb2eh22D3ks
 gEEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HbAkuLUcmz47axVOv5YdLcdHQKBNFdyLUf/RnS/igzo=;
 b=TbrpXSqiZXJ6se97ZtThxo3gi9CgXsPwJzjN5OLRMXMZ0HBP8P4JNsL34k0/fcoJEc
 mDjfUOJ2n0Vh7AQgv7+N6IlQuWPY5n1i+FQiXnem2j2rtk2sg3ZO/5xWgArmLfyIpo6W
 BxOsSDe1JsuBneodlE5jVd9H2aX6xSGUhnBDN+hO9eSboCzo+QlCFlFpGvcnqbyvJDBu
 54KuI4OGNIm6V+U9nddV9Qwu1v0dQPpR0iAABdZsnmGqAigo1IvaakhXwzxABelcBdVQ
 1kTU7Mc5et76uVHCK2phowZurpg1La/BonyUYa4V33pvRkgtYCU2DNYdNcPlnos4ipZr
 CDcQ==
X-Gm-Message-State: AO0yUKXHfb+xQhG9+IecMB53XllWeZQHxmLORppfO8TLjk5hl4zkrz58
 7fKpU0CTZ1iFy5XXF9nZ2QJN0+0Stlj0NzdIuIY=
X-Google-Smtp-Source: AK7set9kdpmwoHpxIn83DHgzE/5wFa5rhu2msradJyLyLvFB2/iyBswEmv8BuZxAvXW0RWg6whVc3DJdcpLsDgXjAsQ=
X-Received: by 2002:a9d:491:0:b0:68b:ce3b:7d48 with SMTP id
 17-20020a9d0491000000b0068bce3b7d48mr309971otm.42.1675775051633; Tue, 07 Feb
 2023 05:04:11 -0800 (PST)
MIME-Version: 1.0
References: <2023020717105307784714@zuler.io>
In-Reply-To: <2023020717105307784714@zuler.io>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 7 Feb 2023 13:04:00 +0000
Message-ID: <CAHt6W4dKPhpPRHg_UZbSkag05khQeG+bVpu5Cy=eO=BYbo+KcA@mail.gmail.com>
To: =?UTF-8?B?546L5q2j5rWp?= <wangzhenghao@zuler.io>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] How to compile spice-vd_agent?
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno mar 7 feb 2023 alle ore 09:17 =E7=8E=8B=E6=AD=A3=E6=B5=A9 <wangzh=
enghao@zuler.io> ha scritto:
>
> Hi Team,
>     I'd like to build my own spice-vd_agent(for windows 10). Is there any=
 guide to build it?  I failed to build it with mingw64 on ubuntu 20.04 and =
vs2019 on win10.
>     On windows it blocked by " LNK1181: cannot open input file zlibwapi.l=
ib", and  on ubuntu it shows "configure: error: Package requirements (libpn=
g) were not met:"
>     If I shouldn't ask this question here, Plz tell me the correct mail l=
ist.
>     Thx a lot.
>

Hi,
  yes, you can follow 2 ways: cross compile on Linux or native build,
is up to you.

For the cross compiled version easier to use Fedora (you can easily
use a container), see .gitlab-ci.yml file or
mingw-spice-vdagent.spec.in for list of required specific packages
(the gitlab script is pretty small and easy to follow).

For the native compiler you can follow the appveyor.yml file, easy to
use vcpkg to get required dependencies. It mainly uses CMake.

Regards,
  Frediano
