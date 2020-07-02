Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 107C7211FE0
	for <lists+spice-devel@lfdr.de>; Thu,  2 Jul 2020 11:26:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94CC96E22B;
	Thu,  2 Jul 2020 09:26:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com
 [IPv6:2607:f8b0:4864:20::836])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D12B6E203
 for <spice-devel@lists.freedesktop.org>; Thu,  2 Jul 2020 05:57:29 +0000 (UTC)
Received: by mail-qt1-x836.google.com with SMTP id v19so20358851qtq.10
 for <spice-devel@lists.freedesktop.org>; Wed, 01 Jul 2020 22:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=gqoyXrgvJopM45Z4dkc+7ttzCBpeDbszpEB5C7c0pWQ=;
 b=UIXsx/8vn1+419HFhP75JXbEf8fzSy1Coj9e0K84lxZiIibmGCCnLFvEktr9fZV/Qi
 t64Eegnfi6md1P3HTNO+JA4VtQjNAkFoZNVx5peq58sR0wvVW/+7+PgG58Ipf4uxjwPm
 1rnndSD+2dm143Jtcoxm8ETLk6RQbjXyQcW3Q/EwlTcKnCEIN/uU7pHzJely/JLjYEtV
 MhF6SqeHSei9Gy6Gv2J43kWHAkEwomOLQNqxfCMPD8lwALXw//2QkpNNwPrA1vUmchxR
 qa1sitbim7h3SRhgYUw27NC44YYrsS6jeft3Uo84hSHGsDL1kTX2N3t0fn1DJhvSyk0v
 ko4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=gqoyXrgvJopM45Z4dkc+7ttzCBpeDbszpEB5C7c0pWQ=;
 b=nd/U2p91JYEeRofVdwqb0X6lLbixcb/NqqswimTdjr03abY/63iI4M9lrlLd57nPfl
 P71yc5515wGpCfm3IYoIYXQHcl7fBlUKr3PG9HP+syjjbFspI0mHr8Yv8s5Sth1uwL1Z
 qCeovJBKEVGSoH7mXd5J5ad4mekuomzmPn8ASH3IOmHPBWA0RiWAE1QhoKYFHYaaakkY
 U4gbl6zhZDErm4XYt9PSaVglV8mUGIhSsigrLJ4raYIIguBJzx/mp/mUh5d2fngvoQft
 DWd2exkoF4u8dUS8QQhfiH8MucoXLeqqq2aeFg0f2Uc730J2dQYj9pL/D0PWRimFAkIJ
 qpJw==
X-Gm-Message-State: AOAM532SU0pRv/3XDgWT3Zz19nQp9f1wr/MCTPKTed8KZVFc6W240Eeg
 p48P7IWfQ602eE8Z6RPpsZ2SSYaNXmdAeFjJgxWyv4we
X-Google-Smtp-Source: ABdhPJw3Wr8kita0JuMgMNA9Lia/U5aCCne8BCfP8x+93/yR6GBWX9nffeGMjWLkjsTX6+PfdxarqcNxFRzV3XiUs60=
X-Received: by 2002:ac8:7586:: with SMTP id s6mr30499540qtq.386.1593669448167; 
 Wed, 01 Jul 2020 22:57:28 -0700 (PDT)
MIME-Version: 1.0
From: Peter Kecho <peterkecho@gmail.com>
Date: Wed, 1 Jul 2020 22:57:58 -0700
Message-ID: <CAH2czN4u-BCHHGsA9eGo5m3LgF0xUXhZWzxJ-xOBtgUJDH8bxQ@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Thu, 02 Jul 2020 09:26:11 +0000
Subject: [Spice-devel] drag and drop
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
Content-Type: multipart/mixed; boundary="===============1985667813=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1985667813==
Content-Type: multipart/alternative; boundary="00000000000058f5d005a96f1579"

--00000000000058f5d005a96f1579
Content-Type: text/plain; charset="UTF-8"

Hello.

I'm using a Manjaro host with XFCE and running a windows 10 vm on KVM. I
have downloaded and ran the spice guest tools latest on the windows client
and can now copy and paste from host to vm and from vm to host, but can
only drag and drop from host to vm. I cannot drag and drop from vm to host.
Please advise.

Thank you

-Peter

--00000000000058f5d005a96f1579
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello.</div><div><br></div><div> I&#39;m using a Manj=
aro host with XFCE and running a windows 10 vm on KVM. I have downloaded an=
d ran the spice guest tools latest on the windows client and can now copy a=
nd paste from host to vm and from vm to host, but can only drag and drop fr=
om host to vm. I cannot drag and drop from vm to host. Please advise. <br><=
/div><div><br></div><div>Thank you</div><div>=C2=A0</div><div>-Peter <br></=
div></div>

--00000000000058f5d005a96f1579--

--===============1985667813==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1985667813==--
