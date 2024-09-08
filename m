Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 758579706A8
	for <lists+spice-devel@lfdr.de>; Sun,  8 Sep 2024 12:41:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27F9310E216;
	Sun,  8 Sep 2024 10:41:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QmnjFc/9";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com
 [209.85.219.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A87B210E216
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Sep 2024 10:41:48 +0000 (UTC)
Received: by mail-yb1-f178.google.com with SMTP id
 3f1490d57ef6-e02b79c6f21so3961840276.2
 for <spice-devel@lists.freedesktop.org>; Sun, 08 Sep 2024 03:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725792108; x=1726396908; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5Sk0si7PzMyv33rbGX6boxL1dYJjKg3ydcM84PxFdfA=;
 b=QmnjFc/9lCw9P7WRzEOyHqbHzThweZoum/8aCt0PtyfKIyjbK/Gb57uz1fLNGwoPoQ
 4xbfOttq0/j4mhYe1pGNm4CZbA++Fv/TXdmpwoIosh9nuZthbMRMC58Ng3B53DwMqEZc
 G51dP9H4GZ+3o6nAZ5jZeiKdSn2dEKwLQTZ1esVh4D+hIVUYd0cVFKN9IYjiGINU+aDe
 aTFJ3Tn/c+MI33yJIfWtGBp1VS+xGUVgWsSiMbr7erK6dhnd5tiNSSTBsF7lu2I57Ufn
 y453C9hUUDSRUUH9qCZ332lR5k+ZImPhXKO/kMomroReSCbhSzqb0sEU8gjPFQTH1Z6A
 UdKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725792108; x=1726396908;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5Sk0si7PzMyv33rbGX6boxL1dYJjKg3ydcM84PxFdfA=;
 b=Rnc+fg1AAfshiVdL0myyifNimx8UtNiJkVJWIGY7H9ntda1DRpa/dL+HSWiItBPuyP
 QJkbR+qEo5SCEsPFbuFUVR8GL4voGm/IgAv7J0UTliqWss6hrIqJj7fZuSgdJ453CZv7
 iHvwNG9AqBC1TWVCzwUI327rHe8GQxMDuohdLZqxXFVvgKN8fJ678FMQ+XhAEU/a4gE4
 iGCZI/XMey1nAaBR88VjE5daXlE3g7iC4tRJ6WHpVPKfRRBB9EMcWCN3SzqUmE8qiT3t
 o4PTAlu/5WTpaETiZ+/GXLH2x/3un52SzkYZr7Os75mCTTUsptN2/M96hiLi7pMhUQmf
 90DA==
X-Gm-Message-State: AOJu0YzsSNzLwpTAJW/by3+VubsV7BInmDt5omble7Nr3XmpC/936LPR
 2qkZydZcZ9rLQgckPXBiIIecWPEsr/ol/5IZGoqVovNJ/k1plyoGYixYsyN0PyLbjgKK5bIEMk1
 4HrXSwTwx8dLjJ1H+shQuiecXOSU=
X-Google-Smtp-Source: AGHT+IFVDVfNRGu/FBVMGTFVIL4UkuwKXLuHB1e8DADlKRSPJXzFly/kCLmEwQFOOVWxNcgZiY9PFxMf2mPNUROQd0s=
X-Received: by 2002:a05:690c:6b8a:b0:6d6:88a1:2e40 with SMTP id
 00721157ae682-6db44dcfaaamr98924137b3.15.1725792107610; Sun, 08 Sep 2024
 03:41:47 -0700 (PDT)
MIME-Version: 1.0
References: <CA+mZ-_JE5f7qdNFyS-zKzYwx8e22xyzNG9oU4B7cNOyCUFAENQ@mail.gmail.com>
 <CAHt6W4eAR8gN6=d9LWH4EOukuWgx76UfBj0QGT0ctdr=UbWF_Q@mail.gmail.com>
 <CA+mZ-_LwGmvUhFDjqgLzfkc0aMy0SsWXH9U_Ekdsg0rLZKZQdA@mail.gmail.com>
 <CAHt6W4egOb+jX=LDLmpTnQ4n1ujkCMF=4e2H+hs+mOPufYXUwQ@mail.gmail.com>
 <CA+mZ-_+Q7W3zJoyuSX49uxOWq2rpJ81FYndYDeiQG=EfhOPisQ@mail.gmail.com>
In-Reply-To: <CA+mZ-_+Q7W3zJoyuSX49uxOWq2rpJ81FYndYDeiQG=EfhOPisQ@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 8 Sep 2024 11:41:36 +0100
Message-ID: <CAHt6W4dQT1M-rbtq=Ku8O=1rVjBWToHnww5MyfM-pHA5PTPOWA@mail.gmail.com>
Subject: Re: Guest Post Request
To: Randall Suter <randallsuter@gmail.com>
Cc: spice-devel@lists.freedesktop.org
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

Il giorno gio 5 set 2024 alle ore 18:56 Randall Suter
<randallsuter@gmail.com> ha scritto:
>
> Hello,
>
> My clients are willing to pay you to place an advertising article on your=
 site. That's what I'm asking you. Do you accept this or not?
>
> Best Regards,
> Randall Suter
>
>
> On Thu, 5 Sept 2024 at 09:39, Frediano Ziglio <freddy77@gmail.com> wrote:
>>
>> Hi,
>>    it's not clear what you are trying to achieve.
>>
>> Do you want to sponsor our project? Like paying for a developer? Or
>> donate some money (I don't think we'll have a nice usage at the moment
>> but I may be wrong) ?
>>
>> Regards,
>>    Frediano
>>
>> Il giorno ven 19 lug 2024 alle ore 23:14 Randall Suter
>> <randallsuter@gmail.com> ha scritto:
>> >
>> > Hi! Thank you for your reply! I'm interested in sponsored posts with a=
 do-follow link. I have several projects on different topics. I would like =
to know the terms of publication and prices on your site to begin with. Ple=
ase give me more details about it if you accept such posts.
>> >
>> > Best Regards,
>> > Randall Suter
>> >
>> >
>> > On Fri, 19 Jul 2024 at 13:47, Frediano Ziglio <freddy77@gmail.com> wro=
te:
>> >>
>> >> Il giorno ven 19 lug 2024 alle ore 11:20 Randall Suter
>> >> <randallsuter@gmail.com> ha scritto:
>> >> >
>> >> > Good day! My name is Randall. I would like to contribute to your we=
bsite (spice-space.org) by submitting a guest post. Are there any specific =
requirements that I need to follow?
>> >> >
>> >> > Best Regards,
>> >> > Randall Suter
>> >>
>> >> Hi Randall,
>> >>    pages are generated from
>> >> https://gitlab.freedesktop.org/spice/spice-space-pages.
>> >> What'a a "guest post" ?
>> >>
>> >> Frediano

Hi,
   I don't own the website but I think the reply is no.
It's an Open Source project webpage.

Regards,
   Frediano
