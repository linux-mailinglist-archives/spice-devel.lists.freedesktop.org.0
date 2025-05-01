Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F8CAA5BC6
	for <lists+spice-devel@lfdr.de>; Thu,  1 May 2025 09:59:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 776C310E1E2;
	Thu,  1 May 2025 07:59:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EkgrJO2b";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11CB610E1E2
 for <spice-devel@lists.freedesktop.org>; Thu,  1 May 2025 07:59:20 +0000 (UTC)
Received: by mail-qt1-f172.google.com with SMTP id
 d75a77b69052e-476ae781d21so9144311cf.3
 for <spice-devel@lists.freedesktop.org>; Thu, 01 May 2025 00:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1746086359; x=1746691159; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=saaEzU7DP2x4OFkGOW2hz47XIB2IGYc4MZ1HKKhrEDY=;
 b=EkgrJO2bGwWMZNvFsZRYqXMjsrM+F9yUyQD7RSB6HwFeVwt9sSi4w5DEmcoIgiT/He
 P5cl8FnLtI94OIme/HdBihsZFnyZ5TI1FBy3b8uGfJZmWB5ujLvvriSHAPbWJnKjV0tC
 DMoCx1bLWWj1K2jgI/yIev1/gF2PgRhcJofXApfhdHiL3d9O5cLClDDE9rMtqnHt60PQ
 imV4dfYy3Xj7ZwvqzOuICb7W1PQQuwueArm3oPFPvO0u9tOr1Qd2f9RJJPtI95Bnln7h
 Q/ZcYiVnMKbhZh3lAymYpLLuMZMHGM2O5IP+d0Tk3iy4TAVvHd7NKTofZA8MrhqM0gRy
 we0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746086359; x=1746691159;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=saaEzU7DP2x4OFkGOW2hz47XIB2IGYc4MZ1HKKhrEDY=;
 b=JVSfHqV0ZHlkJfq6mKCj2CIE9v7ee7STpZ2ZBa5XB0EXg/M/ls9o/bMddajB/5fkhZ
 lvyVYMg8TXKlQKL81A5j6hrYS1o4xJqX4dkXeXeeTHDKDsUUqEBLOR2r/pbY9tIr8ref
 3YaBGELD0V8D5sKKdTcXreue0BAX1gcK7KTx1GUbsSb37bLg4rgSsaEoTBW60LoELdqG
 IK1Jn8pjZs9iPnl0hkrtkms8H5kJRoCxP4xeef37TQPiwdKcCqbN9I83BIoQqKlPV5Dy
 zhSBAZHZsulC1OK+LMLV468XsmglFYcKwshD311K1oxMEaA1iF9nyFv0BWV3t5JR9fHy
 1e9Q==
X-Gm-Message-State: AOJu0YxQHbq5JhGw1JJRIUCTdYUWQAsRylglGm3fPyc7fU+vbWQ6qgTe
 6YOkjmQHgvgVlXJycojk9zXJOmhQ5zcJRx5isa7iEq1OzDQSoZ40tItSuK4UyHOwtzs0oUDFWVw
 qQQaLG7h+++PuUIbgs8+6Q0pZm9I=
X-Gm-Gg: ASbGncsrkIDto034WPX8uhdN09zsz7VWVqJojLLCAFkXVMMFsFkBINCqYart/FAlopS
 V3OvPRJKsPu7sxzt3UIcOXpxwoTDGLa/Q9/psmC29yiq0roc+//vc0kUKT5UvwAgH3xkxHFhsA3
 axmPiDZO8dexlkeTKB2Vpf95M=
X-Google-Smtp-Source: AGHT+IH6C6vsAz9cvbwh2NpJwqx9+xzThEj2BUpZe0Zj9d93BjLUkun5BA9xGFzaRysJf/J9MxNzUw8eso6OXXbp06g=
X-Received: by 2002:a05:622a:4c1a:b0:47a:e70c:e1ad with SMTP id
 d75a77b69052e-489e44b5ec1mr96568961cf.1.1746086359198; Thu, 01 May 2025
 00:59:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAHt6W4fBLhMT6vjquN7POXwauiAKZgKtBxysOn+5S2pekS094w@mail.gmail.com>
In-Reply-To: <CAHt6W4fBLhMT6vjquN7POXwauiAKZgKtBxysOn+5S2pekS094w@mail.gmail.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 1 May 2025 11:59:05 +0400
X-Gm-Features: ATxdqUFcX1WIkikTBmnbfqDSsu0meqbPoMnLzQiBPbnMMZpdAns-SpPsXkgXHhM
Message-ID: <CAJ+F1CKD_2A5T9UeyE+NQqtffeOXAPLebaK+Xk8XUBfdTziK2Q@mail.gmail.com>
Subject: Re: Unexpected spice-protocol release
To: Frediano Ziglio <freddy77@gmail.com>
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 Uri Lublin <uril@redhat.com>, Victor Toso <victortoso@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Hi


On Wed, Apr 30, 2025 at 12:43=E2=80=AFPM Frediano Ziglio <freddy77@gmail.co=
m> wrote:
>
> Hi,
>    I saw a new 0.14.5 release was posted on Gitlab without much review, a=
 merge request was opened and merged in 5 minutes. I understand it was not =
that complicated but usually you want to give some time for the reviewers.
> Can you finish the steps mentioned at https://gitlab.freedesktop.org/spic=
e/spice-protocol/-/blob/master/docs/how_to_release.md?ref_type=3Dheads?
> Can you add some notes to https://gitlab.freedesktop.org/spice/spice-prot=
ocol/-/releases?
>

Done, thanks Victor for the help!


--
Marc-Andr=C3=A9 Lureau
