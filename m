Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9FF731999
	for <lists+spice-devel@lfdr.de>; Thu, 15 Jun 2023 15:11:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8E2D10E4E3;
	Thu, 15 Jun 2023 13:10:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com
 [IPv6:2607:f8b0:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A78510E4EC
 for <spice-devel@lists.freedesktop.org>; Thu, 15 Jun 2023 13:10:57 +0000 (UTC)
Received: by mail-ot1-x334.google.com with SMTP id
 46e09a7af769-6b2e9c015d3so488259a34.1
 for <spice-devel@lists.freedesktop.org>; Thu, 15 Jun 2023 06:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1686834656; x=1689426656;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NrmYCqywtlsmfimd7NRFbHQaHSk7+h6rDf+wTG7HfqQ=;
 b=hoiSIO/NBEeIBh3RywBHUv0LDl8DluMeiDzNKMQbJnzzZJ/ju9PWQA0kx9BFJCMedi
 ne572dQMUYRoaUZl/xgmCHT4syeZwa1OUthcYb7/JxFrbS7e9XW2L9iw8hFnv6qyBcJb
 5qTCX/uzjDVn6P/tJ981bDmt0V1S/OqKc0+d+/Vj/TbeoslwBpixMFbKK5krwnrgQhu/
 cHMw39fBoez86O6wpX4oCrBO8jwaOzl+53Qs6BFZ6vABvcHmy18rUPH5wDJeBl26nQ+p
 mp8HmajrDsyovwf0JwpKkRew+YAqO7xVjLqs+8qWjtnqE8wywK2022dEzvjwgQWa5FdR
 Dc/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686834656; x=1689426656;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NrmYCqywtlsmfimd7NRFbHQaHSk7+h6rDf+wTG7HfqQ=;
 b=AW7LonKhXyBEj67uhr4ZjUW6qORdtcWylQby7PrdhME5MpMMNU4yn9UZsvFEqnQmOx
 x9vKGFeZH/TVPPxN6otHwQs1ZVuu8s4dW09HgYDCJm9U7d8nbuosVUjF/RsyyyQEMO35
 vKJCh4TvUKg9T2kTXYGOqewzzPFlTtOaWeZzwWRaIhCXi0zT077p12UuIFLArdo2BBvq
 UK3N+tcwcBwaJm8BPZRjMUegiiyFa0ViUsQg0xh8bBz1KiyQGUjz8SdQr9ZoSteiO+0t
 57upbKEVaBsL5pDnR2tz/1XHuLGVYdxDqFn+H/PKdMybPS95x+o9/xJsEHp3wQvy5oCI
 t6CQ==
X-Gm-Message-State: AC+VfDzsbXcwxban3vkzl9kFmizN29vdPflaGOPsQjQXCZtm2PaBjcLV
 MUMI7vsfyW9YdUM51V/9zzTmbKtj3xgNC3B5pPQmOQyY81M=
X-Google-Smtp-Source: ACHHUZ7n7xsDE65N2wnu8zIypua6yjguIiVjr604am/W3XzkzJ8UK9sXSXC/pd77HyPFIheta61ee3RB3a02ampvhGk=
X-Received: by 2002:a05:6830:4519:b0:6b2:960f:b33a with SMTP id
 i25-20020a056830451900b006b2960fb33amr2270411otv.15.1686834656231; Thu, 15
 Jun 2023 06:10:56 -0700 (PDT)
MIME-Version: 1.0
References: <D2D390CA-8127-49DE-97D8-73496408EEA6@zenmen.com>
In-Reply-To: <D2D390CA-8127-49DE-97D8-73496408EEA6@zenmen.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 15 Jun 2023 14:10:45 +0100
Message-ID: <CAHt6W4f6+9Jc04fH2GeL8=v+ndRykuhyaT_1WWahA_VpY8LT4w@mail.gmail.com>
To: =?UTF-8?B?6IKW5LmD5YWoKHhpYW9ucSk=?= <xiaonq@zenmen.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] report bugs
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

Il giorno gio 15 giu 2023 alle ore 10:37 =E8=82=96=E4=B9=83=E5=85=A8(xiaonq=
)
<xiaonq@zenmen.com> ha scritto:
>
> Hello:
>
>        I compile spice-gtk under MocOs, and when I run spicy.
>
>       I right-click copy in the guest machine, and the spicy program cras=
hes and exits.
>
> Here's what happens when spicy crashes=E3=80=82
>
> =E2=80=9CGdk:ERROR:../gdk/quartz/gdkeventloop-quartz.c:585:select_thread_=
collect_poll: assertion failed: (ufds[i].fd =3D=3D current_pollfds[i].fd)
>
> Bail out! Gdk:ERROR:../gdk/quartz/gdkeventloop-quartz.c:585:select_thread=
_collect_poll: assertion failed: (ufds[i].fd =3D=3D current_pollfds[i].fd)=
=E2=80=9D
>
>
>
> If you receive a replyPlease reply if you receive.
>
>
>
Hi,
   it seems a know issue, see https://gitlab.gnome.org/GNOME/gtk/-/issues/2=
961.

Regards,
   Frediano
