Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2922E22D87E
	for <lists+spice-devel@lfdr.de>; Sat, 25 Jul 2020 17:43:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 053476E03B;
	Sat, 25 Jul 2020 15:43:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDC006E03B
 for <spice-devel@lists.freedesktop.org>; Sat, 25 Jul 2020 15:43:36 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id m16so6035817pls.5
 for <spice-devel@lists.freedesktop.org>; Sat, 25 Jul 2020 08:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zoup-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=SnmVc1H24thIcc+ZQzMdOUXyaGM81RZDvHrS9zpXg10=;
 b=UvZgwOXdcuW4KxrQJVWzM42sd3uLa09fNLgCcWOZmTB6aA5r6kQn78N5XPSozsRabj
 iOZMuUMY6lY2yrfpR4J84wAkXB6gfAMHaq6T/zB/ZsdERfKe337+58h6bkKas+G0KLBL
 DOhwb91axecxFVE2fPZaNxKnWkAF/3ftYhymG9uD5GQJeQgo3ScOVBR+1zaaRZKGlei6
 VnEntrt9ZfQbyg9mxu4aGHPVXpTPF6h1Ass0r8az5LBGfhJpJa32wy3fChXmC8FCjD5f
 /3OZ/cv+up4X6uUvF8xGUqr8NhOgimYYIFJvVnxX39mv+Fr6+pKd8PofyvAGdM2qGmdK
 jGyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=SnmVc1H24thIcc+ZQzMdOUXyaGM81RZDvHrS9zpXg10=;
 b=bT9d2u/mfI6vGOGeqVMLlBDo79Rkg/9Qm2dPpnstLuwivFE6EHG3CGz6FR3IyS0eJH
 Xa7HTR1shfq9eeOK5PrlMFzhN/p5XQna0iI0xCtfU7vfjn0VPk+EUvniECC4CKjuzd0l
 gu8xeMsBGMSthMlNn/9pP2qslZAi9cF3QudndDYdkrGq4k4RXOrnxrb1oaIdhfIBax3l
 NanzKvkT2/N877lfsiJCf7FsqsQ9UaGqc/VaWVn5nDTFxQda+a+B40jfc9KEHcDPoGVp
 C+gO3uqPwG1zPkerFZ+g8CKFKEIU5YsAEzf6rFfF5iaKgjOYkWVyDlYnvhoWouKZdHSR
 aB9w==
X-Gm-Message-State: AOAM532cURn5tu8cSAzoRwz1mi96AZ8u3T7xHFI57qXBtEcqAbyPr/r8
 QxeO8G5Ex99HwiJVZ7ygvYIQr4t6EPowaqXh5Kaq4flXk5w=
X-Google-Smtp-Source: ABdhPJw1T7nTDshb3OSTP315rlaSjGefLytB7P5uQ/332N5ghaAXP7UJa8r0uzWnjUwroZUuOfHMEIZ9pOIsSvfZ3Sg=
X-Received: by 2002:a17:90b:94f:: with SMTP id
 dw15mr10777672pjb.199.1595691815892; 
 Sat, 25 Jul 2020 08:43:35 -0700 (PDT)
MIME-Version: 1.0
From: Armin Ranjbar <zoup@zoup.org>
Date: Sat, 25 Jul 2020 20:13:23 +0430
Message-ID: <CAOvx4-3XCxvmZCa+77Zt4eJAV0qMbuZtu0ZSYYYLfmp5jhmkpA@mail.gmail.com>
To: Spice List <spice-devel@lists.freedesktop.org>
Subject: [Spice-devel] spice-streaming-agent, the motivation and drive
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
Content-Type: multipart/mixed; boundary="===============1802295600=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1802295600==
Content-Type: multipart/alternative; boundary="000000000000db937d05ab45f38e"

--000000000000db937d05ab45f38e
Content-Type: text/plain; charset="UTF-8"

Dear All,

First of all, let me thank you again for your efforts!

I was reading on spice-streaming-agent, which is in experimental stage, and
I was wondering what is the driver behind the idea?
Will that lead to less bandwidth consumption? less latency? or is it just a
refactoring to make the codebase cleaner?

---
Armin ranjbar

--000000000000db937d05ab45f38e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear All,<div><br></div><div>First of all, let me thank yo=
u again for your efforts!</div><div><br></div><div>I was reading on spice-s=
treaming-agent, which is in experimental stage, and I was wondering what is=
 the driver behind the idea?</div><div>Will that lead to less bandwidth con=
sumption? less latency? or is it just a refactoring to make the codebase cl=
eaner?</div><div><br></div><div><div><div dir=3D"ltr" data-smartmail=3D"gma=
il_signature"><div dir=3D"ltr">---<br>Armin ranjbar<br><div><br></div></div=
></div></div></div></div>

--000000000000db937d05ab45f38e--

--===============1802295600==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1802295600==--
