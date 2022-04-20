Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F9C508AA8
	for <lists+spice-devel@lfdr.de>; Wed, 20 Apr 2022 16:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFA7110F064;
	Wed, 20 Apr 2022 14:21:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com
 [IPv6:2607:f8b0:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 208C410F064
 for <spice-devel@lists.freedesktop.org>; Wed, 20 Apr 2022 14:21:19 +0000 (UTC)
Received: by mail-ot1-x32d.google.com with SMTP id
 w23-20020a056830111700b00603c6d1ce73so1184796otq.9
 for <spice-devel@lists.freedesktop.org>; Wed, 20 Apr 2022 07:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WQ7iTtkJapj3kpIDUgqUbPSls0Cmik4bFCcrhNWTddc=;
 b=PKIl2+y+hZDI9HocMqUJ5RADTGnsHXmwT2iXZ2qi1X3EOAre+13NlZzuZK7D0CucZE
 rbLIrzCPTtAUA6WP1YXq/TOlRXrw6YfawYAYj10vXiLCVceKPWn8BzAgKgppLw7Fs+Gs
 NfIduZu1NK7Op7z4XrcpJ1BOvC8/Vw3uNG79lzlTCGuqigTb4H9qRWr0Si4deLxq4t1J
 2i6IcnoomH2wfpdUJynuYsvCG08UoPDzF3ovSvV2b2gWPII8djpYMhwCWT7Gga83NFjw
 G8TLu1+oet2GOHLtHOIPgoVlkUDaq3Ththqdg0Lp07gsqAf/ABYDYX6rWH4d8hRkis5D
 BWZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WQ7iTtkJapj3kpIDUgqUbPSls0Cmik4bFCcrhNWTddc=;
 b=XZPgBNaQ4dXIzu2toEcPdl4fgcQd8h81+wMob3Y80hQPIsmmaeA4t0fsa0Eg10UwkD
 8R90vEV0QPDpsJ0K3D07oaEhtaCi/HCyomXUgx2H+3Ia5k09MKCkCcTSyIG/3DM9BC1j
 SzumAW08k4293XJ02BEnb28ffZXbzw2m7l5/t1JOX7nIbaRU8G06JISacmLq1H8kwQZn
 iJ0h914Hhb3O56UCm96tVGdf2A2jYtdcslVzkxGR08wgtMKnP67ZXCoJV8NZLG3WrgJ9
 iDCXrPFWUxrxJFDG6cBGjPBGiIL2bOB/7yzBHUEXfUhhZpWa+oTbStFsxv8m6uEpe90n
 eVSw==
X-Gm-Message-State: AOAM5302mZAwDDCMMmpSjuE4ogu0WQ8wwG4Aa0jFs1nhI8QnDKjhuoi3
 sqPrGzAzaSBWc0PgWwDnLy3gfHCcvxw5JtKgtiK4uuU7
X-Google-Smtp-Source: ABdhPJwP4LMcXuz9IsoDQVpu1TgkvzoOcFUMK/dbo80SuzuzP522hj3OYTvKTbm3IYJqyFWYF2FsvCuVonr5VdVjbyI=
X-Received: by 2002:a05:6830:2705:b0:5e6:da2e:71a3 with SMTP id
 j5-20020a056830270500b005e6da2e71a3mr7658237otu.229.1650464478230; Wed, 20
 Apr 2022 07:21:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAMS0tn0O3=trQ=cGHDQgKYrvXs3v5RS-v0KQkDk=c-tR=9jQqg@mail.gmail.com>
 <CACaajQvqVoO+QynpnoBAbMA=LSjXyUVxcy49WkjjtjJeX9DTpA@mail.gmail.com>
In-Reply-To: <CACaajQvqVoO+QynpnoBAbMA=LSjXyUVxcy49WkjjtjJeX9DTpA@mail.gmail.com>
From: i iordanov <iiordanov@gmail.com>
Date: Wed, 20 Apr 2022 10:20:42 -0400
Message-ID: <CAMS0tn1XVjcUXC3mQPnqmtqZ+pSi-QNrhJoNOLZsU4gnRXjk1g@mail.gmail.com>
To: Vasiliy Tolstov <v.tolstov@selfip.ru>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] New native SPICE and VNC Clients for iOS and Mac
 OS X
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Not yet, but we will look into it!

iordan

On Wed, Apr 20, 2022 at 4:59 AM Vasiliy Tolstov <v.tolstov@selfip.ru> wrote=
:
>
> Hi! Very good news. Do you have free version available via homebrew?
> --
> Vasiliy Tolstov,
> e-mail: v.tolstov@selfip.ru
>
>
> =D0=9D=D0=B0 20 =D0=B0=D0=BF=D1=80. 2022 =D0=B3., 02:52:29, i iordanov <i=
iordanov@gmail.com> =D0=BD=D0=B0=D0=BF=D0=B8=D1=81=D0=B0=D0=BB=D0=B8:
>>
>> Hello,
>>
>> I wanted to let you all know that I've released a new native SPICE
>> (and VNC) Clients for iOS and Mac OS X written in Swift. aSPICE comes
>> with console.vv and audio support. I've open-sourced them under the
>> GPLv3 license and put up the source code here:
>>
>> https://gitlab.com/iiordanov/remote-desktop-clients-ios
>>
>> From the above-mentioned iOS code repository are built bVNC and aSPICE
>> for iOS/Mac OS X. An RDP client for iOS called aRDP is also in the
>> works.
>>
>> This approach to build out multiple apps from a single repository is
>> similar to my Android clients bVNC and aSPICE, aRDP, and Opaque which
>> you may be familiar with (code at
>> https://github.com/iiordanov/remote-desktop-clients).
>>
>> The new apps are available at the following links if you want to try the=
m out:
>> aSPICE: https://apps.apple.com/ca/app/aspice-pro/id1560593107
>> bVNC: https://apps.apple.com/ca/app/bvnc-pro/id1506461202
>>
>> I hope you find them useful!
>>
>> Sincerely,
>> iordan
>>
>> --
>> The conscious mind has only one thread of execution.



--=20
The conscious mind has only one thread of execution.
