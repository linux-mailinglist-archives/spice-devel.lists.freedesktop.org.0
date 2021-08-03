Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1D43DEB36
	for <lists+spice-devel@lfdr.de>; Tue,  3 Aug 2021 12:47:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C64D89FD1;
	Tue,  3 Aug 2021 10:47:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E63F89FD1
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Aug 2021 10:47:04 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id n2so28346817eda.10
 for <spice-devel@lists.freedesktop.org>; Tue, 03 Aug 2021 03:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=ndF484bT5sDrtvW1248Qc+lDqolOIhX9qNnWbUtvIiE=;
 b=ovhooBNZg/i0KpnRayque0T2AYZAOoNnQQ5sPgBtB7mRIUUBw9H/+q6XPDcvKBlCfQ
 J07kV5qm8Yl/6B8Tef1EBe3BQjh5p+vAKnrCseDtVAxFpwGMcQvIgI8v96tfmi60KNUk
 KnzykbE8YrfIrKDGVV0Aqh9/9qTysHB2zuATogIPc0r4RU7gSZkcD6FXOVJii74QxDTD
 cO4hqmjgEpYN3GtrVtVet1GboPfiAbHqbnsnD191lFSeYTIDNMQkycehUn2ciLfySA2u
 KrF8Jl15N0ZTPx576XPmaC57fMReWiQoU3Cy/PZYpdRcaSJoPl00i7Dz2BEZWOQd5L1k
 DScw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=ndF484bT5sDrtvW1248Qc+lDqolOIhX9qNnWbUtvIiE=;
 b=LleNRLgwoRHnt067aTmuecttA9piM3ii9iUqvJC9CNI1+PanJnIDjTE0ScaKAqk4SQ
 NtfG9X3of0UXioFqlUHkLCjQnR5isDMtfypXYnwGTH7n/RZDO7LPTpkW0K8qr/+p0gFd
 Im+bQBN3ekK3S+r1Q3CMhhEwbjs3jKppENSB05M69wVaewGeW1/IW3Moml6uqbuIEWW+
 15r9dO5FXgekP00Zdc7ZTKz2KA/HjXDvtCBJOY+wDRCopOnG61IL9ygkyc1uGC2bHtmr
 /LUxSS4ypCo35BN6nh95CovbeeRRTDcY6jAvVmB6BoXkMlVGK6OUISFnNIO1L17AxSDG
 toZw==
X-Gm-Message-State: AOAM5330cJqxT5dwBfBs418E6JIPjRXJU+adxqD0Q2BBiq9QoEcQjUmx
 S3TF19DHXWP7ICYc2pSm+sjF3y/3NVQpU/f5VEfLUL6P5414jQ==
X-Google-Smtp-Source: ABdhPJw1nUyKjTlnqjwjbdwRk7cSuerUTJoVPVDHj56lSYN+pyvSUB2YPP/KOi+HctbrCK4ADiYRWKLmVbiaBrR/RHg=
X-Received: by 2002:aa7:d691:: with SMTP id d17mr24919688edr.245.1627987622457; 
 Tue, 03 Aug 2021 03:47:02 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Tue, 3 Aug 2021 14:46:51 +0400
Message-ID: <CAJ+F1CK8nrKw7r82uPr7MZrL7WhDzpAkO_stz8EHg_6Rc__Jog@mail.gmail.com>
To: spice-devel <spice-devel@lists.freedesktop.org>
Cc: Victor Toso <victortoso@redhat.com>
Content-Type: multipart/alternative; boundary="000000000000ef745d05c8a567af"
Subject: [Spice-devel] WIP: usbredir rust bindings
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

--000000000000ef745d05c8a567af
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

Just to let you know that I started a usbredir binding to Rust:
https://gitlab.freedesktop.org/elmarco/usbredir-rs

Atm, it compiles with a custom rusb. I have some MR there (
https://github.com/a1ien/rusb/pull/97 &
https://github.com/a1ien/rusb/pull/101)

See the example:
https://gitlab.freedesktop.org/elmarco/usbredir-rs/-/blob/main/usbredirhost=
/examples/usbredir.rs

Atm, I pass an open fd with bash for testing, ex:
exec 3<>/dev/tcp/localhost/7777
target/debug/examples/usbredir '1050:0407' --fd 3

Next, it could be extended this with [--tcp host:port], [--unix path],
[-l|--listen]. Then I suppose it will be close to
https://gitlab.freedesktop.org/spice/usbredir/-/blob/master/tools/usbredire=
ct.c

(Note that the Rust code doesn't use poll(), since it isn't portable. See
https://libusb.sourceforge.io/api-1.0/group__libusb__poll.html#libusb_pollm=
ain.
The libusb/usbredir APIs don't make it easy to handle events..)

--=20
Marc-Andr=C3=A9 Lureau

--000000000000ef745d05c8a567af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<br clear=3D"all"><div><div><br></div><div>Just to let y=
ou know that I started a usbredir binding to Rust: <a href=3D"https://gitla=
b.freedesktop.org/elmarco/usbredir-rs">https://gitlab.freedesktop.org/elmar=
co/usbredir-rs</a></div><div><br></div><div>Atm, it compiles with a custom =
rusb. I have some MR there (<a href=3D"https://github.com/a1ien/rusb/pull/9=
7">https://github.com/a1ien/rusb/pull/97</a> &amp; <a href=3D"https://githu=
b.com/a1ien/rusb/pull/101">https://github.com/a1ien/rusb/pull/101</a>)</div=
><div><br></div><div>See the example: <a href=3D"https://gitlab.freedesktop=
.org/elmarco/usbredir-rs/-/blob/main/usbredirhost/examples/usbredir.rs">htt=
ps://gitlab.freedesktop.org/elmarco/usbredir-rs/-/blob/main/usbredirhost/ex=
amples/usbredir.rs</a></div><div><br></div><div>Atm, I pass an open fd with=
 bash for testing, ex:</div><div>exec 3&lt;&gt;/dev/tcp/localhost/7777</div=
><div>target/debug/examples/usbredir &#39;1050:0407&#39; --fd 3</div><div><=
br></div><div>Next, it could be extended this with [--tcp host:port], [--un=
ix path], [-l|--listen]. Then I suppose it will be close to <a href=3D"http=
s://gitlab.freedesktop.org/spice/usbredir/-/blob/master/tools/usbredirect.c=
">https://gitlab.freedesktop.org/spice/usbredir/-/blob/master/tools/usbredi=
rect.c</a></div></div><div><br></div><div>(Note that the Rust code doesn&#3=
9;t use poll(), since it isn&#39;t portable. See <a href=3D"https://libusb.=
sourceforge.io/api-1.0/group__libusb__poll.html#libusb_pollmain">https://li=
busb.sourceforge.io/api-1.0/group__libusb__poll.html#libusb_pollmain</a>. T=
he libusb/usbredir APIs don&#39;t make it easy to handle events..)</div><di=
v><br></div><div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-sma=
rtmail=3D"gmail_signature">Marc-Andr=C3=A9 Lureau<br></div></div></div>

--000000000000ef745d05c8a567af--
