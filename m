Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1343181207A
	for <lists+spice-devel@lfdr.de>; Wed, 13 Dec 2023 22:14:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C74810E84F;
	Wed, 13 Dec 2023 21:14:25 +0000 (UTC)
X-Original-To: Spice-devel@lists.freedesktop.org
Delivered-To: Spice-devel@lists.freedesktop.org
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16D9C10E84F
 for <Spice-devel@lists.freedesktop.org>; Wed, 13 Dec 2023 21:14:24 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id
 41be03b00d2f7-5c68b5cf14bso4182708a12.0
 for <Spice-devel@lists.freedesktop.org>; Wed, 13 Dec 2023 13:14:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bogomips.com; s=google; t=1702502063; x=1703106863;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=5bW2IavVsAJ58B1lLvZLnfre6bielnyWlvcAWMmvMjk=;
 b=RLRvvzi9KFuP2/JU6RJFwyXkJwOWbITkawaZyVceW33+qiS3nO4XhvTDfZ1RgYTSF+
 PF+jg09L4nTfEN/XUW8wYOdPCPG4ZfqqQl4i2IbttK7KpUNZ4CwkAcTi9ebXh5XecFOT
 Mx0O10UmY3oqhBv+A2a9P2/3x2leqqJ7lxDYc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702502063; x=1703106863;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5bW2IavVsAJ58B1lLvZLnfre6bielnyWlvcAWMmvMjk=;
 b=YKtfxZP5lVjrMTUceSCRkcBHMRddzRAQzZG5ZT55+6ORkIPvMa5gLoOuZgjmIFym0c
 j6WvsoFcZ51UtB+4Exkk2uuYZ7Ma9YaG94oaaIOyIuTer5rKzrHAu6sG3U+dwTNNMTN9
 uftpLpmwxTZZnNefiJplL7zNFKnzxUSwmvodbTLduLvcZthJey+JHNWjrpzPxsQqls1e
 Gbew13xfXnIPGZyV77roNArcKsnW75iiv34C41zesvk3NmcikfoH5H9ACR3NAmlnVT5U
 z3nQrL6fEL7yRJ3pnrOo0SrsUqFgtnSWcPjXCZPX8U7j4fELvCH4vHrEBwbqu3O9tfaN
 mkWA==
X-Gm-Message-State: AOJu0YyH3U0TppXOAl6r7HX0aD3LG8n7v3HMqzvGI+Bf9yHVdxfGT+CQ
 i8Clz0E3GenfeNJc76uTsESsTremewwaiMcwP/wRprrs5R6GfW03
X-Google-Smtp-Source: AGHT+IFiQf9Vs3gT/E6XGh6aZi7ugd1n9HEBA2bhcedeCzUYwPmw/pL6g8e+qprT5waK8ZcmkEI72D83iSvKN9sav5w=
X-Received: by 2002:a05:6a20:9492:b0:18f:b988:5aa1 with SMTP id
 hs18-20020a056a20949200b0018fb9885aa1mr4560325pzb.37.1702502063538; Wed, 13
 Dec 2023 13:14:23 -0800 (PST)
MIME-Version: 1.0
References: <CAMUN1STk3fxA129c-C3mBFMAL=7_jCaT_EfZ8XazhrdS1DTzpQ@mail.gmail.com>
In-Reply-To: <CAMUN1STk3fxA129c-C3mBFMAL=7_jCaT_EfZ8XazhrdS1DTzpQ@mail.gmail.com>
From: John Paul Morrison <jmorrison@bogomips.com>
Date: Wed, 13 Dec 2023 13:14:12 -0800
Message-ID: <CAO-kYtHARUgu1jm7qdP2ehQ1mNXZ6L2+G5QRKnAfwq-uE2HYmw@mail.gmail.com>
Subject: Re: usb passtrough
To: Fabio <cellulare3@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000ba1a6e060c6aa62e"
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
Cc: Spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000ba1a6e060c6aa62e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Which spice client?

The windows spice client has separate usb drivers that need to installed

It's been a while since I used it but not all features are enabled in the
Windows builds and downgrading may help.


On Wed, Dec 13, 2023 at 8:47=E2=80=AFAM Fabio <cellulare3@gmail.com> wrote:

> Ciao, scusa se ti disturbo ma la tua guida non mi =C3=A8 chiara.
> Io devo fare collegare una penna USB al client ed usarlo come se fosse
> collegato alla mia macchina virtuale di windows in RDP.
> il tuo software  per=C3=B2 non funziona....
>

--000000000000ba1a6e060c6aa62e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Which spice client?<div><br></div><div>The windows spice c=
lient has separate usb drivers that need to installed</div><div><br>It&#39;=
s been a while since I used=C2=A0it but not all features are enabled in the=
 Windows builds and downgrading may help.</div><div><br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 1=
3, 2023 at 8:47=E2=80=AFAM Fabio &lt;<a href=3D"mailto:cellulare3@gmail.com=
">cellulare3@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">Ciao, scusa se ti disturbo ma la tua=
 guida non mi =C3=A8 chiara. <br>Io devo fare collegare una penna USB al cl=
ient ed usarlo come se fosse collegato alla mia macchina virtuale di window=
s in RDP.<br>il tuo software=C2=A0 per=C3=B2 non funziona....</div>
</blockquote></div>

--000000000000ba1a6e060c6aa62e--
