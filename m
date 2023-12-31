Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B77FB820DAC
	for <lists+spice-devel@lfdr.de>; Sun, 31 Dec 2023 21:29:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2A1510E05B;
	Sun, 31 Dec 2023 20:29:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com
 [IPv6:2607:f8b0:4864:20::b29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6D3F10E05B
 for <spice-devel@lists.freedesktop.org>; Sun, 31 Dec 2023 20:29:00 +0000 (UTC)
Received: by mail-yb1-xb29.google.com with SMTP id
 3f1490d57ef6-dbdd013c68bso5223326276.2
 for <spice-devel@lists.freedesktop.org>; Sun, 31 Dec 2023 12:29:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1704054539; x=1704659339; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=5cyL1KrOKSBG6pVDnoHcIvLSOrbj2BpRJ8PilmjjqgE=;
 b=Pa8DGedz/9KEfkDF0Hdac2pFXqHebWLUAggQSwXcIAHPEv+CtxTiuArlP6+yFm/DD/
 sJtaTjm9ix+LAjea7Ev2xWH96LiSkAShrbZHKNHYQd+hPO5akxwtOZwKXEWa3CG30znw
 wd/Cf+6aYmcg0Q1t7ZDDEprgd7VfFng246TZtzKqIrFypKaqofzP4dkvaRDWSsGNhFo9
 C6ouSfdc8LSfgN1qM5nJ7xUNhJ0RRetb4NcA/FTinDS6EOiumvyByGlYQN3hwJn4nA0G
 ZZFXUkWw1d9kd1KyjhH3Qjj5y59wporHG7IeIFUwj7OyMh9y73e9bDpcfOtsIcz1jHuM
 Kr/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704054539; x=1704659339;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=5cyL1KrOKSBG6pVDnoHcIvLSOrbj2BpRJ8PilmjjqgE=;
 b=W2/18FFNSuqv7Hb26mGgO+uZlU/4WvMOn3lUXeVKTj17mu5ugYxLGsdQbHT1OuH0NW
 Mra7f7FdkJkT3l2OZ1arDT8qvNYjk9ZSWnJlytuppZHoqd9R9x2toC+ukYtr8aNfLk+/
 i0eIEXk1rdzS/VBPOe5PJpT/7WjwE9hyKc2umSktRt9Q8aYB0G9m6rwFu2hABFGA+v8v
 d6OZ4Hp1xI4mLLXNd7TvYHkaArE8ZSjFInSiYj5MdxaSapIOJdJzSQfMEKB7ejcremfl
 OLbgx0ay9cn1jUUaub7MBBLL6pLIsEziTeK7ayr1sMvV9UVJ/EFwsG85oAoPsv1yfYw9
 9HoQ==
X-Gm-Message-State: AOJu0YzGhCqzMvHrNgeFh39eeRO4Tl/UxhwEgpkcKSLODNgRwX90dZV9
 OyMJHuSmW3MB14czgnKVksJ7TsK9j/BG80Ykrd95srbgfQc=
X-Google-Smtp-Source: AGHT+IFDRik9Hbhlll2sgiTdr3xWVyOpAWJPcQKZ4LBbPdg7xLz/Y9Bovm8a36XZQ9L4UdL+T72cyWfyy+OR1DuDKqQ=
X-Received: by 2002:a25:d303:0:b0:db4:355c:e78 with SMTP id
 e3-20020a25d303000000b00db4355c0e78mr7749220ybf.55.1704054539509; Sun, 31 Dec
 2023 12:28:59 -0800 (PST)
MIME-Version: 1.0
From: Anston Sorensen <ansorensen1118@gmail.com>
Date: Sun, 31 Dec 2023 14:28:23 -0600
Message-ID: <CAJ0YB0aWh2nB5dRok49k4C5QXXWwo3di4bPv5+Y0FwDfXREzpA@mail.gmail.com>
Subject: Does a Java SPICE client library exist?
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000008166d2060dd41d6b"
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

--0000000000008166d2060dd41d6b
Content-Type: text/plain; charset="UTF-8"

Not sure if this is the right place to be asking this, but I was wondering
if there is a Java library that acts as a SPICE client, so I can
receive graphics output in Java as Java Images and also input
mouse/keyboard data. I know such a library exists for VNC (called
Vernacular VNC), but I'm not sure if one exists for SPICE.

If anyone is familiar with something I can use or can point me to a better
place, please let me know.

Anston

--0000000000008166d2060dd41d6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Not sure if this is the right place to be asking this, but=
 I was wondering if there is a Java library that acts as a SPICE client, so=
 I can receive=C2=A0graphics output in Java as Java Images and also input m=
ouse/keyboard data. I know such a library exists for VNC (called Vernacular=
 VNC), but I&#39;m not sure if one exists for SPICE.<div><br></div><div>If =
anyone is familiar with something I can use or can point me to a better pla=
ce, please=C2=A0let me know.</div><div><br></div><div>Anston</div></div>

--0000000000008166d2060dd41d6b--
