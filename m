Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC0D500A66
	for <lists+spice-devel@lfdr.de>; Thu, 14 Apr 2022 11:48:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA21310FDE3;
	Thu, 14 Apr 2022 09:48:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEE1310E1B6
 for <spice-devel@lists.freedesktop.org>; Thu, 14 Apr 2022 09:09:00 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id t11so8750218eju.13
 for <spice-devel@lists.freedesktop.org>; Thu, 14 Apr 2022 02:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=QjhkFTP82IpDF4y3+tM3JTQTSCwijtztmT+mxAgWsvU=;
 b=clxZM9SJ5JYJVdLCem0DWQ5orYh4hHBxpvhEUIPNfYSRabCcdYKJPNU8g7u0Gh5qvE
 UDVwK72fk5goK8trIONxVfhuDLWMxX6GEi0nnd25k/P1TQk5Bx0NjGj4yfcNJO37EgXM
 yhFjR+5zBFmRFVvaK6y5+S2S+oIEB7eSTCFXTSy46+sFv0iOaBVqX1+WONoZdVOqfZVz
 Gg6xLwsJnkSVvofBNfNmqN3BqVOvvuFOTbciYfayUmGpRgegCce4XVuG8lfp8ySvbkHu
 o8l6L2+8XMb0YcTQN6W1fQvbdNFN1kpS1dWHZ64NnI7oOz+wNq2JCOL0852ams4roY85
 4HqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=QjhkFTP82IpDF4y3+tM3JTQTSCwijtztmT+mxAgWsvU=;
 b=IiNJOZl49gws95QajHfdwDalgWZOJXyJkKx2afzxTSNvPPAfgXbRxc9NKuix+PFr4p
 SEAPx+nWSkHrqK4rsNUjls46JujLJlrBwxyGH0lWTRNa9X2J+udg3M0jHYOtbCnn5A7T
 uJjEk/ufjEaZHiNaFoFwQBnloWpyipXjQJr0KeDuETlYE/JYGOA/yU9esSRmBZLXuYVB
 CoO9T6JY1xNwABZHwMP2tYNouXwSBdiyZK1IEj2bAMaJt4M2bVCoa9tOMjU6ojlVhTpZ
 vN2RH7rPsQP80lUkTkwlClTXEfmaj6G7CsHgXLXvEvhpaRIgM4U2nGp2ABXNTE0ZVMPr
 eqQQ==
X-Gm-Message-State: AOAM531TUYPXaZQpXFIaCuj+wdVe+24bHg6pGZGjQG5kmkRh7ZprIi5X
 SrFuZSLovxLQ26vgif0Hak+H0HTXkogoVtnlrr60HgB0QNQnJ6GT
X-Google-Smtp-Source: ABdhPJwvnmP6hi6tK6rfsJi/xeBOOAm86y+6EIuZKM2p6KFWtYQMlaG4CaDEZ8U90zRnq01FaFQTLcr4fPy8rCBTfsk=
X-Received: by 2002:a17:907:3e0c:b0:6e8:be59:9901 with SMTP id
 hp12-20020a1709073e0c00b006e8be599901mr1501492ejc.358.1649927339008; Thu, 14
 Apr 2022 02:08:59 -0700 (PDT)
MIME-Version: 1.0
From: Walter Mitty <waltermitty121906@gmail.com>
Date: Thu, 14 Apr 2022 17:08:47 +0800
Message-ID: <CAOgZG1wmkfd29NL_dk4uugz=BgCeG2HCvT1vV-u8iKM=K=0goQ@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000f2661205dc99a4f5"
X-Mailman-Approved-At: Thu, 14 Apr 2022 09:48:17 +0000
Subject: [Spice-devel] Is there a good way to estimate the latency of spice?
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

--000000000000f2661205dc99a4f5
Content-Type: text/plain; charset="UTF-8"

Hello everyone,
During my experience of SPICE, I feel it is not fluent. So I wanna know the
latency about interactivity and rendering. From my understanding, It may be
the time from the moment draging an app-window to the moment that client
rendering changes.
Any suggestions will be appreciated.
Regards,
Walter.

--000000000000f2661205dc99a4f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everyone,<div>During my experience of SPICE, I feel =
it is not fluent. So I wanna know the latency about interactivity and rende=
ring. From my understanding, It may be the time from the moment draging=C2=
=A0an app-window to the moment that client rendering changes.</div><div>Any=
 suggestions will be=C2=A0appreciated.</div><div>Regards,</div><div>Walter.=
</div></div>

--000000000000f2661205dc99a4f5--
