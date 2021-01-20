Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7D42FC7BA
	for <lists+spice-devel@lfdr.de>; Wed, 20 Jan 2021 03:24:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECF506E045;
	Wed, 20 Jan 2021 02:24:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com
 [IPv6:2607:f8b0:4864:20::d29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D646E045
 for <spice-devel@lists.freedesktop.org>; Wed, 20 Jan 2021 02:24:40 +0000 (UTC)
Received: by mail-io1-xd29.google.com with SMTP id z22so17294365ioh.9
 for <spice-devel@lists.freedesktop.org>; Tue, 19 Jan 2021 18:24:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=6vrJ5kzCd6dN+4Gtft2CkAxCcCwqBpOzD8/B+3/7ZoM=;
 b=f93+cxKdqWrFkhGo+2H4yoYDW99D8AjA2JD8jE5euKEvLcIMahChwe2o5WLBGXjgFZ
 Y0Ncqr6Vf2ZxlHfpveadzQAZLm9UhaQGaEkYxoj/g036oaFsArt67pqmD13wsXXAgSV9
 iw401hzJcOsBGJQnD0HoYzY7jQCzPKRC8mIhQIg1zbJVNiMmMxdaGWTHB4JGQDgbjId6
 mlghkijIhLxBnpyzpBhSAKS9HlbuGgNutOkcPlt9dFxvLA26KcVLT0QJ8eIvDPgLlUty
 KPx9WEPij9uHIYbINKNaeTGO6voMVQa0XIItHYzf05DKb49R8Ed8opDiXY4CoWIeBJpi
 iOnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=6vrJ5kzCd6dN+4Gtft2CkAxCcCwqBpOzD8/B+3/7ZoM=;
 b=JDAEc/FuamJRzfFPGW5khSTr/xc/N8dKi3J4FvLP+P7qNEanURJ4W+EBJJDYTa3dNN
 Xy7ZG/HPwVgR0z3pWQdkw03KhG/s/lochxbC/D9cwYTpcjIn9g1W4xjUWa+8rvJIKVcS
 k+8U9l6N0fib6YN8q0l7/yNyUZVjEwX/7OL5OxPba3kBnncwo1iBE/ZEuUmHaE6H8IOQ
 GHHAdIsznV/ig4e/+HcNKrOHUh8G9EpmQr7JRBSPKYKx1lXfQQQ0eiPuQ5U3JEBKB8g4
 RUvstV0NMvWEdms8PbQecKX4nhTxylQOqfoLPneB/CjjDRsbMTUOZ5vTCHsje/Ae4Dbg
 aUkQ==
X-Gm-Message-State: AOAM531Zy58z6OQlv5PF9FAW3gn/aabV2RHACdgBUsgN0IS/BF92qbi2
 5R7KM5hw+TlWTkrcVLd1Ypb/YhYPjlw30oP785egSy1TA/E=
X-Google-Smtp-Source: ABdhPJxCEHX0pqdH2fe4w9+rXQMRNSbB1YISxSGhIDLKmHv5GNup+Rb1B4WaPaezMwS4Qby7vPxTH59L7BC2487DHdQ=
X-Received: by 2002:a05:6638:25d4:: with SMTP id
 u20mr4659424jat.76.1611109479735; 
 Tue, 19 Jan 2021 18:24:39 -0800 (PST)
MIME-Version: 1.0
From: lx <lxlenovostar@gmail.com>
Date: Wed, 20 Jan 2021 10:24:29 +0800
Message-ID: <CA+5jrfmzOEm6Ue4-tROG6_peoAWvuG0hFD4wD=7me+n4Y1Uigw@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Subject: [Spice-devel] [spice-devel]Clipboard can't work
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
Content-Type: multipart/mixed; boundary="===============0676079850=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0676079850==
Content-Type: multipart/alternative; boundary="0000000000003be6e205b94ba8e8"

--0000000000003be6e205b94ba8e8
Content-Type: text/plain; charset="UTF-8"

Hi all:
    I  test SPICE. I use Remote viewer on Windows10. And I install
qemu-kvm/libvirt on Centos7, which run Windows10 in a virtual machine. I
find I can't
use Clipboard between my local Windows10 and Windows10 which in a virtual
machine.   I'm a newbie in SPICE, How to debug this problem? Which log I
should
read?
     Thank you


Additionally info:
libvirt-5.2.0, qemu-3.1.0, spice-0.14.0, spice-protocol-0.12.15,
usbredir-0.8.0,spice-guest-tools-latest.exe
virtual Machine Viewer 9.0-256

--0000000000003be6e205b94ba8e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all:<div>=C2=A0 =C2=A0 I=C2=A0 test SPICE. I use Remote=
 viewer on Windows10. And I install qemu-kvm/libvirt on Centos7, which run =
Windows10 in a virtual machine. I find I can&#39;t=C2=A0<span style=3D"back=
ground-color:rgb(210,227,252);color:rgb(0,0,0);font-family:Roboto,RobotoDra=
ft,Helvetica,Arial,sans-serif;font-size:24px;white-space:pre-wrap"></span><=
/div><div>use Clipboard between=C2=A0my local Windows10 and Windows10 which=
 in a virtual machine.=C2=A0 =C2=A0I&#39;m a newbie in SPICE, How to debug =
this problem? Which log I should=C2=A0</div><div>read?=C2=A0</div><div>=C2=
=A0 =C2=A0 =C2=A0Thank you</div><div><br></div><div><br></div><div>Addition=
ally info:</div><div>libvirt-5.2.0, qemu-3.1.0, spice-0.14.0, spice-protoco=
l-0.12.15, usbredir-0.8.0,spice-guest-tools-latest.exe</div><div>virtual Ma=
chine Viewer 9.0-256</div></div>

--0000000000003be6e205b94ba8e8--

--===============0676079850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0676079850==--
