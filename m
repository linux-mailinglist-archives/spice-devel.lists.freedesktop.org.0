Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC938FD70E
	for <lists+spice-devel@lfdr.de>; Wed,  5 Jun 2024 22:06:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D85F10E0A4;
	Wed,  5 Jun 2024 20:06:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Y1NjfrkD";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com
 [209.85.219.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E246D10E0A4
 for <spice-devel@lists.freedesktop.org>; Wed,  5 Jun 2024 20:06:20 +0000 (UTC)
Received: by mail-yb1-f180.google.com with SMTP id
 3f1490d57ef6-dfa71ded97bso152705276.1
 for <spice-devel@lists.freedesktop.org>; Wed, 05 Jun 2024 13:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1717617979; x=1718222779; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=vBEBrOwYR8A4fhQ2pt35VPv8rPNuq32rlkcjuYDhFPk=;
 b=Y1NjfrkDNnX49A5DF6yr9tYa3+3eomV7/IpSbCwZ62wZsHnjV4oV4BkdqLnRf6jSSQ
 rQpprVxb4XD2VktWws8hUyfvbTLiWW9CKiNnedQfrZJbMOq2d2WAa5d2SKuFxIoELA3X
 9v391OCJDMbNql+cpBmZDGM2vRpPT3eZx0ITSR+HPRdZyKRuyNq0Y3bncgqN8fL2L0pR
 Fgc/fzrAFeViqeEilH+JT0ldpoOEG2oCSSWApZmZSFU1j6JOZKmwNnqy7uarHZVUUuBI
 EfXBrt3qaWtk4UHBgSALtrx2NFDfuKItm/9E76hY4o+3poQeX1VkXr0FxNN4nYHHVmiX
 qk/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717617979; x=1718222779;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=vBEBrOwYR8A4fhQ2pt35VPv8rPNuq32rlkcjuYDhFPk=;
 b=P1NYJSJ+QFsGxUlJs/lq8MPBSOwEKe0x09/w6D2lAVqzryboGhE7XDpUVDSj2kyuPQ
 BqF3VDSXHY4IlOrZL6ONmiKMHhE+xXgivfmLzrGt8NeZfi4olS8g02QntWxXYQzz9Eaf
 3hAJR8g1qCbsVFSLdChIRgvFJzNgpfDkLA/OIAqbifrHTSN6wXfpEkVtGf48s8ztoktQ
 c2Xi0+S9T463WW+IJ3Ab0ymickrinYutUID9LrD2Llxk0CfLe6AqNEO2Uj59rCJnVUQz
 oDJBPjhzALuGpv/H72RQm2vaKUsYtRJmlmbt30lEjTudtSnEqvjDXKcOHYVfmBONJqTj
 4qyQ==
X-Gm-Message-State: AOJu0YzTFA/Yu11eWSXLJmie4WZfDm+dsdtimGfA//KMiXuNKAiA5t0c
 o8clUYgWQbkIlW37f5nVmAzdHCWqf08dmu3RJin3Z6ImBPpURlq6Bqy/i2Zk+CelqsK09XEr8kg
 bieUW6HHxD1+f1iPQTkQtFLcYJrg0ww==
X-Google-Smtp-Source: AGHT+IEuhCcNnWIlqO30HarH+a/81MS3Qp32Lpzae7j9mD703hUtcAoenqlH6PbTXmApXIe1vrit2XFDg2SmDesZRNI=
X-Received: by 2002:a25:aa87:0:b0:df4:e1f0:eeda with SMTP id
 3f1490d57ef6-dfadeb165eamr625212276.9.1717617979396; Wed, 05 Jun 2024
 13:06:19 -0700 (PDT)
MIME-Version: 1.0
References: <b4f3a6c8-4fdd-da49-d56e-1590cc6c1766@srr.ro>
In-Reply-To: <b4f3a6c8-4fdd-da49-d56e-1590cc6c1766@srr.ro>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Wed, 5 Jun 2024 21:06:08 +0100
Message-ID: <CAHt6W4c3hXnSUe67HgvKDdGhPo_8ubqh_J7_i0qXSMkCKa7y9w@mail.gmail.com>
Subject: Re: Website error
To: Andrei Boros <andrei@srr.ro>
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
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

Il giorno mer 5 giu 2024 alle ore 20:47 Andrei Boros <andrei@srr.ro> ha scritto:
>
> Hi,
>
> On your website, on the page https://www.spice-space.org/download.html there is a link under windows binaries to https://gitlab.freedesktop.org/spice/win32/spice-nsis
> This yields a 404 not found error.
>

Hi,
   weird... for me the page opens. But I won't be surprised if it's
something related to permissions.

Frediano

> Thank you.
> --
>
> ing. Andrei Boros
>
> Serviciul IT&C
> Radio Romania
> Tel:   +40-21-303-1870
>        +40-745-115721
> Email: andrei@srr.ro
