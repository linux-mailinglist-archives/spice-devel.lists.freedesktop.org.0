Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A030B721576
	for <lists+spice-devel@lfdr.de>; Sun,  4 Jun 2023 10:00:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4092F10E127;
	Sun,  4 Jun 2023 08:00:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com
 [IPv6:2607:f8b0:4864:20::72d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A8C510E113
 for <spice-devel@lists.freedesktop.org>; Sun,  4 Jun 2023 06:05:07 +0000 (UTC)
Received: by mail-qk1-x72d.google.com with SMTP id
 af79cd13be357-75d509d425eso71399085a.1
 for <spice-devel@lists.freedesktop.org>; Sat, 03 Jun 2023 23:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685858706; x=1688450706;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=AYs+sgeLq3M/JLIax85CEyUtlnN4wWd38a8CwXQQhpQ=;
 b=VM+IdRsq8i+pEz7Is6dFQaIjAD6xnp8ZBQ3HTJCdU0xqtr/kUbqhiCx3zYqznC6OGK
 XzcRjOCSlyuKpYHh4q/2OJCxH9bagluuWLTLRYIdqxlwdTZnmzA+VKujgBRBcVtZMuru
 2wVQduMMukb5aC0HYwTsD+hig/tZ3zERUTsqvgXKaAdHFH55GuOnf6NeNggszlqh9oH3
 BF4l4HqE0nNxUj3EC1KopjZVz8Y6ZxQinKe75/2VwBtpFOTwgz+GstrdbMApJnfvQoA3
 LfChOmyV5VwK99fS0jsdCYfnOt23rWVHOIlVzVwFANOnebUB7cLWCUHO4s7lwQ7nAFvL
 F4Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685858706; x=1688450706;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=AYs+sgeLq3M/JLIax85CEyUtlnN4wWd38a8CwXQQhpQ=;
 b=jGuxTrfsZNsBo1iVQNX8XP2EsvxP95k7yQRiNH7ZK++OmPQbH6gg2ZDSLTyTZP3Iwv
 yjuwZM0/mGYnQhZLvAd/dJS+ltm4Wlb4wGF/NlCkGtuXEpd4nMvbSUH1ATqATH7kHT7h
 /72YJ1PY8UW3SXuR6X1eD8YGwKR0tFx8Bl52GS9MSVXH9QJnYhDy+T/FGrtV5ATOvL6E
 w8nQ+Dd/fKfmIWQepeVbm/HYq0udXO0A1cC8f5d2DwmeJSHtdfy6tiV5/R/4rlNm1A7G
 pmHWpgQN15wji3OP0ARUiBjHZEkls9I+weVHSzbS0wzcLB3tPTRkuO8Yygh6f18a1vyp
 5TGA==
X-Gm-Message-State: AC+VfDzJ088vc8R4SHPcUEXayEZgpxEnj2WmrRDZBIstC9GKNj3Xcddk
 AzPIXffhLnbhQD1QFrtr3gLy6nFbANTjAjwcTlS/YN4fo+c=
X-Google-Smtp-Source: ACHHUZ5DTeVpyJ7GvwqeapgVSChU2fuUn9rCbWHuaUWBtkVmddZvzKxJaNuLruvtr7ySoV1aqfrg1KyP+T6/7AFxUuM=
X-Received: by 2002:a05:622a:255:b0:3f3:90a8:6906 with SMTP id
 c21-20020a05622a025500b003f390a86906mr4486620qtx.17.1685858705871; Sat, 03
 Jun 2023 23:05:05 -0700 (PDT)
MIME-Version: 1.0
From: Serle Shuman <serle.shuman@gmail.com>
Date: Sun, 4 Jun 2023 07:04:54 +0100
Message-ID: <CAPuHtzRHg1C3yjm-rSDOn-bGOQfUvuu3OS3OhkARb-Pxw46Q0g@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000004e15e305fd4791a9"
X-Mailman-Approved-At: Sun, 04 Jun 2023 08:00:38 +0000
Subject: [Spice-devel] Need simple spice copy and past device (for terminal
 use)
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--0000000000004e15e305fd4791a9
Content-Type: text/plain; charset="UTF-8"

Assuming that the host is a windows based environment and the guest is s
qemu based linux terminal only environment e.g ubuntu server without x11,
then there are currently no features targeted specifically at exposing a
character device in the terminal that one can redirect text to and from the
host's clipboard. e.g.

1. from host -> guest (via spice clipboard)
host: copy from cheetsheet to clipboard
guest shell: dev/cb > <command>         # redirect from clipboard device to
standard out

2. from guest -> host (via spice clipboard)
guest: <command> > dev/cb                  # redirect standard out to the
clipboard device
host:
  a. graphical paste menu item in some application
  b. dev/cb > command                          # redirect from spice cb
device on host to another command

--0000000000004e15e305fd4791a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Assuming that the host is a windows=C2=A0based environment=
=C2=A0and the guest is s qemu based linux terminal only environment=C2=A0e.=
g ubuntu server without x11, then there are currently no features=C2=A0targ=
eted specifically at exposing a character device in the terminal that one c=
an redirect text to and from the host&#39;s clipboard. e.g.<div><br></div><=
div>1. from host -&gt; guest (via spice clipboard)</div><div>host: copy fro=
m cheetsheet=C2=A0to clipboard</div><div>guest shell: dev/cb &gt; &lt;comma=
nd&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# redirect from clipboard device to=
 standard out</div><div><br></div><div>2. from guest -&gt; host (via spice =
clipboard)</div><div>guest: &lt;command&gt; &gt; dev/cb=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # redirect standard out to the c=
lipboard device</div><div>host:=C2=A0</div><div>=C2=A0 a. graphical paste m=
enu item in some application</div><div>=C2=A0 b. dev/cb &gt; command=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # redirect from spice cb device on host to another command</div>=
</div>

--0000000000004e15e305fd4791a9--
