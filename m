Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA1E87DF2F
	for <lists+spice-devel@lfdr.de>; Sun, 17 Mar 2024 19:16:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A24A10EB5C;
	Sun, 17 Mar 2024 18:16:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LNyVbuuP";
	dkim-atps=neutral
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com
 [209.85.128.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 663C710EB5C
 for <spice-devel@freedesktop.org>; Sun, 17 Mar 2024 18:16:05 +0000 (UTC)
Received: by mail-yw1-f169.google.com with SMTP id
 00721157ae682-60a0599f647so32432547b3.1
 for <spice-devel@freedesktop.org>; Sun, 17 Mar 2024 11:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1710699364; x=1711304164; darn=freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=zb70z7OwFE12+RT5bnYvgAbtdLjYdV3dmx+bl50cvrY=;
 b=LNyVbuuPQl7vNPtsHKedDCOzGSLDId+y+JzOywtGebrdtWJJTkrF9b9JEqp5mw7fT7
 FD3JUrOVdBvL/ebZa8FnaGmghctELy1KuVq/pQXtyJFHieIRrPei5de1rGLY4+3XMB23
 QIKLG+tlAEPflV/B0mz2304ZTpGOyKwi98V/t3qPr1Hji4T+qGa4tkQ0zUkHZ17CWnGD
 +zEp1h1O2GknoG/v2i0tZim9MgqhG5OlfZZPdn6mNNc+i4rXRcXDNXsaMPQhIVOQ69sl
 dRnAs+vxkx9WU+09TwxI9smbQ3fiaIHpsm7YT8Zjm0gAjiMl16TT57VU7UNNCsH3WLo0
 rfuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710699364; x=1711304164;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=zb70z7OwFE12+RT5bnYvgAbtdLjYdV3dmx+bl50cvrY=;
 b=tDpMXYKTEbLfl9v90lSxS71m+8IbtkA/PR3JXebhk/NnSTQE8Uldc2ux/8zHM0DOda
 DBi/CAt+k4DOi+9BQGRqCnsvScUUP5EbgKud+re9N5dzESMtU1yH4uiaoxFW/4akJaaZ
 U4B4WdgzD2Dz8J3DdYKplzCgi7wdqqLwz6T+pAiP+UMrGwEA3nAutcJHHzVVt5tsLw+F
 FHQE8a1Bj666eMy2XYfVC/1BWbqNRG75rBr7TFwKh68B1BHKVqegksce9YIbdE09aumk
 4/HaqlP9qVG6M4Ldgb0TNvV0ChXXxOProi1oGhZonO0pjqZT7ZFKX1HM377c1YBLnbQF
 LSdA==
X-Gm-Message-State: AOJu0YzWS7pHNUaX5v8B7lrdsLftrb8sOCYSbe+p4n7DiFp55LDktTkI
 Jly14L5kJO+LF3wvBTZ0Z/U94fi5c64e+na4bFmNnCDgo5gSGNUW/iHAdjzsqjlIl5jjb/dVtUb
 tkref7wgOOBEjQacNj+SETvq7leM=
X-Google-Smtp-Source: AGHT+IFeZ9Tgz3BCiuzsOglxX0wCk1P0zc2GoZPYSQ9/ajl8uIK4eQCHxdSlFs1O/HPw9SqpXl917PVRKAOYaw26Suo=
X-Received: by 2002:a81:48d2:0:b0:609:ddad:e3df with SMTP id
 v201-20020a8148d2000000b00609ddade3dfmr10777721ywa.12.1710699364037; Sun, 17
 Mar 2024 11:16:04 -0700 (PDT)
MIME-Version: 1.0
References: <CABqkP4gxR3CV-0400rBbzGonT1HFQb7kNK0712k=sdByQLczFg@mail.gmail.com>
In-Reply-To: <CABqkP4gxR3CV-0400rBbzGonT1HFQb7kNK0712k=sdByQLczFg@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 17 Mar 2024 18:15:52 +0000
Message-ID: <CAHt6W4dmHyoKSv1j8c5Nq-0HV2NFLis2LHE60RsQzxfaOaq=gg@mail.gmail.com>
Subject: Re: Inquiry about @spice Github Username
To: Santiago Paiva <paiva.santiago@gmail.com>
Cc: spice-devel@freedesktop.org
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

Il giorno lun 11 mar 2024 alle ore 18:02 Santiago Paiva
<paiva.santiago@gmail.com> ha scritto:
>
> Hello from Canada,
>
> I was wondering if there is any chance we could use the username @spice on Github for some FOSS?
>
> Thanks for your time and consideration. All the best
>
> Santiago.
>

Hi,
  I would suggest finding another name.
But I'm not the owner of that name.
As a project member I can say that probably we entirely moved to
gitlab.freedesktop.org a while ago.

Regards,
   Frediano
