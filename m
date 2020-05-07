Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9001C868E
	for <lists+spice-devel@lfdr.de>; Thu,  7 May 2020 12:23:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A340A6E0CE;
	Thu,  7 May 2020 10:23:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75B566E96B
 for <spice-devel@lists.freedesktop.org>; Thu,  7 May 2020 10:18:10 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id t11so3985967lfe.4
 for <spice-devel@lists.freedesktop.org>; Thu, 07 May 2020 03:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=vjp0cxnp7cLG8tn7XRl2RDmJQzBwj+chS3lBtf++lLo=;
 b=dCK+6JH/BLX3QLbMH3iMzs+/2Oz/tRuE/d5ufoHd7/LYRJRxCY6w4KT6SJ3FrFUAOs
 EjTBFPkr6Y5SLOgoQv3XBFQkNPugPG5TUO8QgF3QmAkCT/rGScocOuA5ya4yX3Sn0lXC
 PwVaJEtvyVZ+LW1fjS1K4lQhFGfYs1L662TbmBpn9Zfdm5Ep+kGAFklYXMX2UY9F6bQl
 dYg6f6TEWMPDXX8cFdYLBaofO63byH2B1uw9JkjJmaU4Iv5hRa1yTX1jqhkYgttv2vdG
 5RojmNM9DtOEiuvJZFDE5wnm8+1QFHPT1qdbrJMORz/qOWRyZCpZV2ecLoVeitE2lRv5
 M//g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=vjp0cxnp7cLG8tn7XRl2RDmJQzBwj+chS3lBtf++lLo=;
 b=c6oGsQgAVVhFALsgkhE/QGb5Km9sqkg4ZoDvgEZpg/4hH/+vWe9laPqowY+hEaQe/2
 KfUpQPJbvSc61Q6HT2HMI0hgDet7RnxAEWcVu+VG1z6Qj1Z3jPUZ5pHwhNsmxv/R2h/+
 T+pkXl5x6VnuHmNdFPv5IeagNKYk7nRaOzOE44XNAolaJqHN7jp5ww0t7dPdUP99mbJs
 2mOKPiTGAWiW9sy7aa68U4DMXwo8nR7ufocANgBR3iAtHes73Yhlk8LvHFEO8Ywla4iC
 NG9IKL8cIV3l0P5EL5CEXu6KO8g8qk2woFXNMp8lDGwu4HIYPU4IEZSmQI2DzE2iVlFm
 AcpA==
X-Gm-Message-State: AGi0PubKpmaqQhuMMTcJ0xqkc2P29TFuQhK4p3Tk/ZlFOtdFEZFd2Ptj
 B55vROHZfz0T6BYOZYM95TaZXPUO/aPN+zYTqmxQOvAlwKo=
X-Google-Smtp-Source: APiQypKrRWOMK3Tz3JV8n7WTP44OJiBDI0RT2scYmRCxRUdgqiJUMQaBgr8BrUpXaCVc1s8Una8OnVo9K0fUVq9/BW0=
X-Received: by 2002:ac2:504c:: with SMTP id a12mr8401194lfm.110.1588846688314; 
 Thu, 07 May 2020 03:18:08 -0700 (PDT)
MIME-Version: 1.0
From: ucontacti ss <ucontacti2012@gmail.com>
Date: Thu, 7 May 2020 12:17:57 +0200
Message-ID: <CAORX2YfB5x-jart4tqEPHM1wdWF26FqCTvsT73usudkb88Ocvw@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Thu, 07 May 2020 10:23:44 +0000
Subject: [Spice-devel] Spice Seamless Migration Sequence
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
Content-Type: multipart/mixed; boundary="===============0367228250=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0367228250==
Content-Type: multipart/alternative; boundary="00000000000075b2d305a50c3255"

--00000000000075b2d305a50c3255
Content-Type: text/plain; charset="UTF-8"

Dear Developers,

I am trying to reproduce the seamless migration capability of the Spice
Protocol. But I get this error from Inputs and Display Channel when I tried
to send back the migration data (server closes those sockets).
"
2020-05-07T10:09:48.746002Z qemu-system-x86_64: warning: Spice: inputs:0
(0x558ddee468a0): unexpected
2020-05-07T10:09:48.853621Z qemu-system-x86_64: warning: Spice: display:0
(0x558ddee45940): unexpected
"
Is there any prerequisite before sending migration data to the new server?
Thank in advance.

Best wishes,
Saleh Daghigh

--00000000000075b2d305a50c3255
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Developers,<div><br></div><div>I am trying to reprodu=
ce the seamless migration capability of the Spice Protocol. But I get this =
error from Inputs and Display Channel when I tried to send back the migrati=
on data (server closes those sockets).</div><div>&quot;</div><div>2020-05-0=
7T10:09:48.746002Z qemu-system-x86_64: warning: Spice: inputs:0 (0x558ddee4=
68a0): unexpected<br>2020-05-07T10:09:48.853621Z qemu-system-x86_64: warnin=
g: Spice: display:0 (0x558ddee45940): unexpected</div><div>&quot;</div><div=
>Is there any prerequisite=C2=A0before sending migration data to the new=C2=
=A0server?</div><div>Thank in advance.<br></div><div><br></div><div><div><d=
iv dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"=
><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div><span style=
=3D"font-size:12.8px">Best wishes,</span><br></div>Saleh Daghigh</div></div=
></div></div></div></div></div></div>

--00000000000075b2d305a50c3255--

--===============0367228250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0367228250==--
