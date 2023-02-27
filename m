Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6CD6A5E78
	for <lists+spice-devel@lfdr.de>; Tue, 28 Feb 2023 18:59:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22B2E10E069;
	Tue, 28 Feb 2023 17:59:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com
 [IPv6:2607:f8b0:4864:20::1130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3364710E582
 for <spice-devel@lists.freedesktop.org>; Mon, 27 Feb 2023 20:28:39 +0000 (UTC)
Received: by mail-yw1-x1130.google.com with SMTP id
 00721157ae682-536bbe5f888so210112937b3.8
 for <spice-devel@lists.freedesktop.org>; Mon, 27 Feb 2023 12:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=iCaWFiANkObFoyRqn7pQ/wG/j7HBYnal57CbQqroRVU=;
 b=omuAKVO7j4QXenAfYK6159Kr4+HmYb3c12QZrwSdwbDeYaSQvb7n2uen2INZ85/We2
 p1+gOJ26SYRqAyG04OuW74Ue+ztp6V8+KhFrlET1xjKFT+1+5aSbvJQ7nO5snRAolyhk
 53BZvX7r53qzMOVo1B6l6qkefJ3OT0p1lljzZax/o4H8Pb4VsAZEjWfp7NtSsnoh+uuH
 PGJ1EsiqDszGgMwfbO1ue15JnMAww9dDWi3PtJGn8KLKu1G7MLdjHsXOpMAVX1PuXr+v
 pKN2l3QOUx1dO5SA5bs1gjyCgsvi+ewuRW1TFOeJF+qfuBuM5oiRXvKW21aXbzOMNJSC
 pCyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=iCaWFiANkObFoyRqn7pQ/wG/j7HBYnal57CbQqroRVU=;
 b=fu1SaKlUBQdGymh97aVF/72PGICw29ixxnRQ3Y5UZGs87+k68S8cLmo/B9SaNIUe8E
 k5C8Qf8Qd36GcuJam8fas+VS3h71MWRV8L55jiIjOyf3DRRnEFp02DSflO0qZIZIdeNI
 RHXPTHWFtp4G5fZxrrN9I3an+DE8HK/m+nxo3SfZmeghm2g6D7RGN/kElaL5d/SSlp6x
 TkvETO5tLK04CeGOsMaswSKMSZVuF6IpySR7bYM3imSdC1LNnWN6jlw/vJgHnZOur9L7
 unq0VNkoApzg3RR4cX5JHOelvFyWIscJKf5vaPm4O3nviRI7z3/GapNgFaAvcH3PO6Vq
 gTXg==
X-Gm-Message-State: AO0yUKUMy3COES9euSE2k+jGLCPrb8ut6F3iymvh9iM0O5ZoXFEfj9Ic
 qqyEWNzKJosF+cmqH7mDpTFGX4aaykbfcxHYt5S3wy8l/ng=
X-Google-Smtp-Source: AK7set/+eBrZDloPwPiROLDWP0ygiEu4QDcso29Q+bId6c+OCnh9neLcWgPuXtsLIabJs+OlruSbBUssD7Nm6xN37DU=
X-Received: by 2002:a25:900d:0:b0:a4d:7b9b:415f with SMTP id
 s13-20020a25900d000000b00a4d7b9b415fmr32292ybl.4.1677529718207; Mon, 27 Feb
 2023 12:28:38 -0800 (PST)
MIME-Version: 1.0
From: kap tam <kaptam90@gmail.com>
Date: Mon, 27 Feb 2023 22:28:27 +0200
Message-ID: <CA+vXRVhOirGb_f64YekJPWJNrYEHaEqPVVYzJwgHvJut4aPryw@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000f4371b05f5b452f0"
X-Mailman-Approved-At: Tue, 28 Feb 2023 17:59:05 +0000
Subject: [Spice-devel] Compiling SPICE in /usr/local
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

--000000000000f4371b05f5b452f0
Content-Type: text/plain; charset="UTF-8"

Hello, I've tried getting this to work for about a day but I can not get
past spice ./configure step assuming spice-protocol header files are
installed in /usr/local/include/spice-1/spice. I tried setting the
SPICE_PROTOCOL_CFLAGS
to "-I/usr/local/include/spice-1/spice -I/usr/local/include/spice-1
-I/usr/local/include" (capital I not lowercase L by the way). although I
think the 2nd and 3rd should work, I'm desperate so I tried everything.
Could I get some help please?

Thank you.

--000000000000f4371b05f5b452f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello, I&#39;ve tried getting this to work for about =
a day but I can not get past spice ./configure step assuming spice-protocol=
 header files are installed in /usr/local/include/spice-1/spice. I tried se=
tting the <span class=3D"gmail-message"><span class=3D"gmail-content">SPICE=
_PROTOCOL_CFLAGS to &quot;-I/usr/local/include/spice-1/spice -I/usr/local/i=
nclude/spice-1 -I/usr/local/include&quot; (capital I not lowercase L by the=
 way). although I think the 2nd and 3rd should work, I&#39;m desperate so I=
 tried everything. Could I get some help please?</span></span></div><div><s=
pan class=3D"gmail-message"><span class=3D"gmail-content"><br></span></span=
></div><div><span class=3D"gmail-message"><span class=3D"gmail-content">Tha=
nk you.<br></span></span></div><div><span class=3D"gmail-message"><span cla=
ss=3D"gmail-content"></span></span></div></div>

--000000000000f4371b05f5b452f0--
