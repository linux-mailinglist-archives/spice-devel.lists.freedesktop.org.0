Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CA7565D05
	for <lists+spice-devel@lfdr.de>; Mon,  4 Jul 2022 19:35:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6A10A22E6;
	Mon,  4 Jul 2022 17:33:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9847A10E02E
 for <spice-devel@lists.freedesktop.org>; Mon,  4 Jul 2022 09:02:29 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id x3so14682259lfd.2
 for <spice-devel@lists.freedesktop.org>; Mon, 04 Jul 2022 02:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=9uNTYY/vUVfWPbJMUxD0teBF95GHLOzuxtB1/hU2Hqs=;
 b=OBYlR8cBw2L1k5IEPSw8kWWW7Wo9OxBVfvHMShkXnKnB5UOBAcUbwKreN/IGVKIdZw
 niY7k16RSkjoY/4o9a9E4x4IOPmlV7sJFwsOHwP/0nSZS9nU1dEo54XJnumzTmETfEm7
 SGZVbPKfOEl4qeGwAHjKgDSI/xfDc1RhgDITCg2NRbMK2H/pSoMkFCdFQOYYSAC2bdFq
 GWtzeui5vwRCVLtDubBIbjX5azwwnFm8tWRCcvLyWMtDOV9iwVk4Y0QDW1zJeoOWM8cx
 9USFFl4BMCyy3laJQzVS4OlmIC9Yq4a+5Er7U+jn/jV5mLn5Tj8bSF0jJxMssbc6ZxSP
 vLeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9uNTYY/vUVfWPbJMUxD0teBF95GHLOzuxtB1/hU2Hqs=;
 b=LfWrI3h5qCoJPcpgkox5V0A5SYlYKFk2WvYXak9pEHGupmmHhE9MkRw/vroB6iN9YE
 P+a0kRnyBq5LGPpbXhWp/WlUiO7v81GH9pn5CFajvOixLz3Lah7f/Le8T0ZIA43v35FB
 64lBU0hgls46YbWrTwS359uTvVPoK9NNhBesGG7AmHRcKUffrnjdaOPO5x0lAF5/nZKY
 YQQRasA+5QwLsgM4ODVBtUGXuu0VmwLK4c4C72iQzh5eo6iqMXwVpWtKBYV/Xh2dEnCS
 G7CcWsDSH0WMyWWhDyJsnijt+pD+ueRcys7CNy/rkSECFE3s6TlWHBkKnXm1NXI9qt/K
 z/Uw==
X-Gm-Message-State: AJIora9Qg3vO4ulP10YutFmtJ+97CILMdayCaHeOGJVoKd2Wf9TEOAVL
 lNsYeIARQWgOj7NUyGv7GlB6+fG4B+2Gf4xQI86wTblPf2s=
X-Google-Smtp-Source: AGRyM1tRhwU0uljnY04cQepGswb8E7srWV2x/kCFxyoBDU0IL05290QJkvmfpBq1kZfNpgvl2jE2CY5vaI7YUuUODB0=
X-Received: by 2002:a05:6512:3ca0:b0:47f:a9f3:f26 with SMTP id
 h32-20020a0565123ca000b0047fa9f30f26mr19322055lfv.297.1656925347321; Mon, 04
 Jul 2022 02:02:27 -0700 (PDT)
MIME-Version: 1.0
From: Walter Mitty <waltermitty121906@gmail.com>
Date: Mon, 4 Jul 2022 17:02:15 +0800
Message-ID: <CAOgZG1yOB2CZbMRRO+c05eC2zG5M9YiuZv6WF7unw88uUSvf-Q@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000bf1d7505e2f6fe6b"
X-Mailman-Approved-At: Mon, 04 Jul 2022 17:33:31 +0000
Subject: [Spice-devel] How to make QXL capture the whole desktop area?
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

--000000000000bf1d7505e2f6fe6b
Content-Type: text/plain; charset="UTF-8"

Hi guys,

QXL generates bitmap data which is the *updated* area. If I wanna  make it
capture the whole desktop area, is it possible?

Yours,
Walter

--000000000000bf1d7505e2f6fe6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<div><br><div>QXL generates bitmap data which is t=
he <b>updated</b> area. If I wanna=C2=A0 make it capture the whole desktop =
area, is it possible?</div><div><br></div><div>Yours,</div><div>Walter</div=
></div></div>

--000000000000bf1d7505e2f6fe6b--
