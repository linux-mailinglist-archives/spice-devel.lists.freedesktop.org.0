Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D53509376BD
	for <lists+spice-devel@lfdr.de>; Fri, 19 Jul 2024 12:47:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80C7710EBCF;
	Fri, 19 Jul 2024 10:47:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SnYBCgYa";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com
 [209.85.219.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB05C10EBCF
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Jul 2024 10:47:08 +0000 (UTC)
Received: by mail-yb1-f178.google.com with SMTP id
 3f1490d57ef6-e05d48cf642so1874179276.2
 for <spice-devel@lists.freedesktop.org>; Fri, 19 Jul 2024 03:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1721386027; x=1721990827; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=2T3DCnOu13xmzYCc6ROemcXarPYGjc2UawJGnCRjr8g=;
 b=SnYBCgYaUURj/UajmeMzq7qJow7ioj+yEoP5z/J+/VNStAdbIOrc7DmNF4S0pi+j0W
 14CMr5XuLl0VEJU3Bv7jRzl9q6svxRSQ/PEgatBzV0VM39rGy9WrOaryDG5YyX+iE8Ui
 OWW44ozkkqbIkZNgV2iEWG3LK/WNZYeHEOpn1RL3R6JuZe2cfZAgD0AYdW0wozd5b/47
 czqoOOoEyDEPnIkobIuIE5rbksrLCaCvcoUTjOaO2AYlEyIMvvmDAqUde0uaSJ8pvImg
 47s7CCvTOglsoxTBtc756j1bHT3uVcoQgpmZs7RiLLDB1IljbMv3/aHLISGx1Z10oYNp
 qoSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721386027; x=1721990827;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2T3DCnOu13xmzYCc6ROemcXarPYGjc2UawJGnCRjr8g=;
 b=WZ0cR0luPrB/sDMHTLd7myL5/hdkexayH+7aScOJo1sGofDCm0Uy1t3FwfuBYUHipD
 mG8LsKI4pGI71IuqdOujIjCQti0J3DPXrojaYHf1ths81dvx+DRSA+GibhD9s15c/jwh
 rFPjlAIs3gZrzY3kD4tHM60ziAmk2Hw5luEi3NGwELwsBvNLh7yNGcPWJQOK8ybbXE3p
 TToq61NSluz8ZFbdcAdbjfF/PGaO4RuQIvtYxhL0/JvZ7FveqSsZi5ViSkEfOI8XWkKk
 jC1gk11TO+wBU4DqBN8luELOArGh7cOBCROihbCHQ4o3GmRoOdZR1iAo6lCoqf/7K8Et
 m2Fw==
X-Gm-Message-State: AOJu0YzKj7hwAlzgsrAyXKRkVAoXG/+JfrHTBLAg2JFtDh9pcDANBlLY
 3JHamT9ccJiHSnRZtUeKlnHPBeSDqPggPvEoCVGrekHMsMicH2iWyPyfzjmKqOYBCvF3eiMFndC
 HZUc930u79d+ZPylY9VrhIldoP1g=
X-Google-Smtp-Source: AGHT+IFZEwinW3FC63VwIfhvSc6clDgUchJ+0AsUAG3wyCgbxYi1ek09yAh5vVaCUZ2/X/y9uo2MJcRc3/q2jqTisss=
X-Received: by 2002:a05:6902:70c:b0:e06:5adc:6c56 with SMTP id
 3f1490d57ef6-e065adc735fmr4148367276.47.1721386027545; Fri, 19 Jul 2024
 03:47:07 -0700 (PDT)
MIME-Version: 1.0
References: <CA+mZ-_JE5f7qdNFyS-zKzYwx8e22xyzNG9oU4B7cNOyCUFAENQ@mail.gmail.com>
In-Reply-To: <CA+mZ-_JE5f7qdNFyS-zKzYwx8e22xyzNG9oU4B7cNOyCUFAENQ@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 19 Jul 2024 11:46:56 +0100
Message-ID: <CAHt6W4eAR8gN6=d9LWH4EOukuWgx76UfBj0QGT0ctdr=UbWF_Q@mail.gmail.com>
Subject: Re: Guest Post Request
To: Randall Suter <randallsuter@gmail.com>
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

Il giorno ven 19 lug 2024 alle ore 11:20 Randall Suter
<randallsuter@gmail.com> ha scritto:
>
> Good day! My name is Randall. I would like to contribute to your website (spice-space.org) by submitting a guest post. Are there any specific requirements that I need to follow?
>
> Best Regards,
> Randall Suter

Hi Randall,
   pages are generated from
https://gitlab.freedesktop.org/spice/spice-space-pages.
What'a a "guest post" ?

Frediano
