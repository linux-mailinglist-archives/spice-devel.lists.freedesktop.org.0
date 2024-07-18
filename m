Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E4993767F
	for <lists+spice-devel@lfdr.de>; Fri, 19 Jul 2024 12:10:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72F3F10EBAB;
	Fri, 19 Jul 2024 10:10:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="F6aF3B5m";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBD4610EB07
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2024 20:06:39 +0000 (UTC)
Received: by mail-ed1-f42.google.com with SMTP id
 4fb4d7f45d1cf-5a1fcb611baso206466a12.1
 for <spice-devel@lists.freedesktop.org>; Thu, 18 Jul 2024 13:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1721333198; x=1721937998; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=SmupnGVJ1rHuBoYGNeC38mrWw/+m5ic1JWGIHZBnwCY=;
 b=F6aF3B5mYMWbjizEQfQ8mUeSM6GL7YrTfgotLsf1iMt2rFtJeiLPPqvs6Q+GN8pS3h
 w6xdRc0b/i8SwAWHkJA/gpKOyvoyO4EcgsVqGfuK/3SVY6uKJaUb3cbmOsi/2gpWGqJI
 HVg7h3nhS8AhPs6VCjbnFDoYl9UDoiGjInckPBvxQH5G+F90pwa6wS96seI5tr3G5AwC
 p73pULpLN7IrIhuATndpvN8uj8ueBtTEs8MObKW5LIC9IhZU+4ScAPr9iBkqI/ERWK62
 8UCD10QNXg3NI5ZRJlV2dfsM01Kw2Y1xCyyJprAhj14d7EXs3J6eXAaJnRU6k2gzF0A6
 c0QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721333198; x=1721937998;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=SmupnGVJ1rHuBoYGNeC38mrWw/+m5ic1JWGIHZBnwCY=;
 b=a7/8PIGt9T916mhFI6y8HQ7CKE4GvZHvDRVP6wg4ohT+GIu2fp4FmCYlfuDwvxWNMo
 qalNx5dEwNtepa72Nt02E+NxEVUhoVjEg3P90u9jFYeLWw5WPLHS7tQkiE5VncVOOpMU
 npEKYTtDLDKb09oFWR6tOSeE07CgYvPDUcY4twnFHGKEPT+2TnskpiqluZPvxPYvGUxt
 1/t34KEmXz70zUkwOhoGsahzU4qIWy3KTXvhIiiVEYC8XkrCUm8l5bclgtSnpseXTev4
 /B6rfdrx1QHyb+xgW7ppmoIpehkhhmAUEUufSwfwzRTZvBkihKCnPlFoyT2r298+7vSX
 Uqbw==
X-Gm-Message-State: AOJu0Yw2pjG+Yan2xPImfqSs3MQMQSwEXwD4y7muul84dX72ziKPegPB
 ikeQFi1pOk6t1v7yONJJGMMadi/QI2wv17P/jcKlHIjtfDK9tj5tnAkOF9SmiIU1QS7wdgA2wEh
 +dzR1YqNDQ24OkXvX2wybhgYMFrpgUJAvmz9hhQ==
X-Google-Smtp-Source: AGHT+IHnJRTbXURGJRwV3fVpI5n2AlpHrwCYIhJ10dcDt5D2ARSUxNES1F9pnIli8RrOZ1VGay8DXFpKZXizQ7mwgnU=
X-Received: by 2002:a17:906:b74d:b0:a72:8c15:c73e with SMTP id
 a640c23a62f3a-a7a0130e696mr420690866b.55.1721333197674; Thu, 18 Jul 2024
 13:06:37 -0700 (PDT)
MIME-Version: 1.0
From: Randall Suter <randallsuter@gmail.com>
Date: Thu, 18 Jul 2024 23:06:26 +0300
Message-ID: <CA+mZ-_JE5f7qdNFyS-zKzYwx8e22xyzNG9oU4B7cNOyCUFAENQ@mail.gmail.com>
Subject: Guest Post Request
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000c99ffe061d8b1d14"
X-Mailman-Approved-At: Fri, 19 Jul 2024 10:10:50 +0000
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

--000000000000c99ffe061d8b1d14
Content-Type: text/plain; charset="UTF-8"

Good day! My name is Randall. I would like to contribute to your website (
spice-space.org <http://www.spice-space.org/>) by submitting a guest post.
Are there any specific requirements that I need to follow?

Best Regards,
Randall Suter

--000000000000c99ffe061d8b1d14
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Good day! My name is Ran=
dall. I would like to contribute to your website (<a href=3D"http://www.spi=
ce-space.org/" class=3D"gmail-waffle-rich-text-link" style=3D"font-size:13p=
x;font-family:Arial">spice-space.org</a>)=C2=A0by submitting a guest post. =
Are there any specific requirements that I need to follow?</div><div dir=3D=
"ltr"><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div=
><br></div><div><font face=3D"arial, sans-serif">Best Regards,<br></font></=
div><div><span style=3D"color:rgb(0,0,0);white-space:pre-wrap"><font face=
=3D"arial, sans-serif">Randall Suter</font></span><br></div></div></div></d=
iv></div></div></div>

--000000000000c99ffe061d8b1d14--
