Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B660996CF81
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2024 08:39:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6E0B10E6F8;
	Thu,  5 Sep 2024 06:39:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KNM6rVoo";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com
 [209.85.128.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4FE310E6E8
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Sep 2024 06:39:32 +0000 (UTC)
Received: by mail-yw1-f177.google.com with SMTP id
 00721157ae682-6b8d96aa4c3so3368417b3.1
 for <spice-devel@lists.freedesktop.org>; Wed, 04 Sep 2024 23:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725518372; x=1726123172; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CHlZ/8PmZbAb8Cdixq4uGyLfAtrh/RkHcT/M6p1o8Ac=;
 b=KNM6rVoo9CCdaUP8u4Hy2Hw+fEv9PfMc+VCsfDCoxNIHxmfd1qEROL8dOiBXPAszkb
 1hFrb1RP35UawjN/19p1tcJjFuJHuuJZzqOCe7ysOmPfNetJcBV+oBlIcSaxZG3wJhsR
 isyjAncdaMENgJXgKouWQ7mZHq6vYayxUfM2rOrfUCsAEKR6S40Rs0cQgkBeJ0VnF0H3
 iH2FeDq7CKCt/fBG6iVXSS6VYvj98P4RwRT/Xsbueo8gocXsqp+3TiTRQDNM0sO2lCOn
 fE1C9YrxDdJxg0l8g1wz7VUJw/heQ/0nhQ9P5P5zCkbNRdb0j7BvRXpQiymgxXA/hhFX
 RttQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725518372; x=1726123172;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=CHlZ/8PmZbAb8Cdixq4uGyLfAtrh/RkHcT/M6p1o8Ac=;
 b=gBdmbhgU2QyepJ7tWW/L6PWHDVoqijalc2I376rEWURvqV32/R3IjhuPzS6zTz38di
 fy8Pjf9b9Qg7YH/9hZb09vb1frroj0MPhWtvzKnEt3LaISMcKuKjRF1K12dghb/Wjv7w
 Wx0RLfExOyifzA8qbB6nGlixBOOSpZUlGbuqcpG4ZH9+Of/UOQ7HT9F6ZPYsVPt2I3s6
 Cf1P0L0Ay1B5MvGBIYU/zC4Qyn0PySxHa+/Fthd4dbFjq4Q7jDEIs+0FO3heaMBL3oGA
 3fKpSC9QHeAfSs8HkJUpCF8pNtUhVO1qfz/8w2GTPzPAr1lItjFEcfPit/gvncTdY8mu
 Ki/g==
X-Gm-Message-State: AOJu0YxE20NSjeT6blbdv5AYqoRs45q5a2iortBH1ZvFpPj9uF+xiH1K
 eajz3Q9PQyVVk7K+fGPCOOSh03nQPxHFLeltBcdVTWKA+kFVHVJ6HCWbYTDBtSBmL9hVEeS2Zf4
 1QYdxN8fMpPRRnF0vZLKsuPo2YZ8HRg==
X-Google-Smtp-Source: AGHT+IH8ld9SbYptHv9bcH8pdQklptcVgWFvcuTnY1N1kqWfhf6F216JoNNDoFUuZrDO2Vk882OEUJRzshLdWvRENaM=
X-Received: by 2002:a05:690c:f84:b0:62c:e6c0:e887 with SMTP id
 00721157ae682-6d40d88eabfmr213416787b3.9.1725518371741; Wed, 04 Sep 2024
 23:39:31 -0700 (PDT)
MIME-Version: 1.0
References: <CA+mZ-_JE5f7qdNFyS-zKzYwx8e22xyzNG9oU4B7cNOyCUFAENQ@mail.gmail.com>
 <CAHt6W4eAR8gN6=d9LWH4EOukuWgx76UfBj0QGT0ctdr=UbWF_Q@mail.gmail.com>
 <CA+mZ-_LwGmvUhFDjqgLzfkc0aMy0SsWXH9U_Ekdsg0rLZKZQdA@mail.gmail.com>
In-Reply-To: <CA+mZ-_LwGmvUhFDjqgLzfkc0aMy0SsWXH9U_Ekdsg0rLZKZQdA@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 5 Sep 2024 07:39:20 +0100
Message-ID: <CAHt6W4egOb+jX=LDLmpTnQ4n1ujkCMF=4e2H+hs+mOPufYXUwQ@mail.gmail.com>
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

Hi,
   it's not clear what you are trying to achieve.

Do you want to sponsor our project? Like paying for a developer? Or
donate some money (I don't think we'll have a nice usage at the moment
but I may be wrong) ?

Regards,
   Frediano

Il giorno ven 19 lug 2024 alle ore 23:14 Randall Suter
<randallsuter@gmail.com> ha scritto:
>
> Hi! Thank you for your reply! I'm interested in sponsored posts with a do=
-follow link. I have several projects on different topics. I would like to =
know the terms of publication and prices on your site to begin with. Please=
 give me more details about it if you accept such posts.
>
> Best Regards,
> Randall Suter
>
>
> On Fri, 19 Jul 2024 at 13:47, Frediano Ziglio <freddy77@gmail.com> wrote:
>>
>> Il giorno ven 19 lug 2024 alle ore 11:20 Randall Suter
>> <randallsuter@gmail.com> ha scritto:
>> >
>> > Good day! My name is Randall. I would like to contribute to your websi=
te (spice-space.org) by submitting a guest post. Are there any specific req=
uirements that I need to follow?
>> >
>> > Best Regards,
>> > Randall Suter
>>
>> Hi Randall,
>>    pages are generated from
>> https://gitlab.freedesktop.org/spice/spice-space-pages.
>> What'a a "guest post" ?
>>
>> Frediano
