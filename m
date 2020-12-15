Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D89772DB158
	for <lists+spice-devel@lfdr.de>; Tue, 15 Dec 2020 17:27:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F846E40C;
	Tue, 15 Dec 2020 16:27:58 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A76E06E40C
 for <spice-devel@freedesktop.org>; Tue, 15 Dec 2020 16:27:57 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id d2so14811244pfq.5
 for <spice-devel@freedesktop.org>; Tue, 15 Dec 2020 08:27:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zoup-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZnHH2jLaHTr/B7jhMl9n1BIT7O14nBD7xAHjePbC/3Q=;
 b=iGQ1CQek11pRmb5lr8OkVYa29quK1D9vGZ8wsRjC90aAyBEnFgqu9Y2HSUNca/7QQM
 kg6loZcgizyxvwrgtJw7lnrlgzW2HT52hXH1XnvUtEi554+LExwqO/1UXrNRZvtHD7dt
 H6dwTiUmRQMuRYybsgnGUs5j/2yZemCg9ujr0Q4tXTUraRyB2kQtoSDOItlb1uPf+h/a
 dx5hjbtM5dHnLd9YLeClQXkVHg6loqxB/nbefuDnl1JgWbH7KQhMteYaM0TnMH4+sWMn
 un5mSzqemiYBbYYWY3yq+/Qs7FXXW1vUEFB9XM4PpIBP6EjubEQDsw/gfe5xil7NKrfC
 z2Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZnHH2jLaHTr/B7jhMl9n1BIT7O14nBD7xAHjePbC/3Q=;
 b=YQ85KFwB2R6rAqqZLfwKMnDsISZDpveWph8nQX8VOf72xXiMxOz1rANxKxH/ZhZEyC
 ZdGuPX+vGnV9XJ+jF/SFP1+BWUEQKuUuOE2VMOVr/NCdif6y1JH/2JGxi/W18iotGxgM
 lsoqjBHda472zrrpuGJ/LNaszaJwmN5Kb09XBkDLx245hR0X3fKRMV4zZR5NMLXuk0jl
 qs+iwksYLjinR50rVt1ZBt1gvzJnqYAHWEXdfpbu2AG7IxDcm26ypeI36VL+Ac2aaB86
 AzjALaQt8YxHi4lr0TDxS0zWfav7LE5D9aLkGrVrBH22YFaoSTjnrNxjC3nD/HiEp12E
 1Ntg==
X-Gm-Message-State: AOAM533lyLcOEPtZH8tXqTy3atD9wxiF7NPMpumco7EzAzia/vTLtsdm
 5uD8IVypuJOvozHKvttl0DflFNrpePXdNY/Y9dHGIg==
X-Google-Smtp-Source: ABdhPJxKV6nhdvCtHm+w9rkpep5CQO8uMwKjHFAheutJjw1LGNNO0rLU6MFTxiSlYcXVZRGWkJ2LLSnjJN/K86dBiEE=
X-Received: by 2002:aa7:8b59:0:b029:1a5:a6da:e149 with SMTP id
 i25-20020aa78b590000b02901a5a6dae149mr43866pfd.20.1608049677109; Tue, 15 Dec
 2020 08:27:57 -0800 (PST)
MIME-Version: 1.0
References: <CAOvx4-3g+wSy6Qepf=37nUUhrhHd_hj9YJ5An3FuZLm16Sk-Dw@mail.gmail.com>
 <CAHt6W4fuV3t7h6U888MT9baXYmOG1fDvesFVrSELwnfMLH1hOA@mail.gmail.com>
In-Reply-To: <CAHt6W4fuV3t7h6U888MT9baXYmOG1fDvesFVrSELwnfMLH1hOA@mail.gmail.com>
From: Armin Ranjbar <zoup@zoup.org>
Date: Tue, 15 Dec 2020 19:57:45 +0330
Message-ID: <CAOvx4-2ia=vBK1A6aArrJRPDY4XL_jWo5ewStfpnF47n6pHOrg@mail.gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
Subject: Re: [Spice-devel] TLS + Letsencrypt doesn't work on Windows
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
Cc: spice-devel <spice-devel@freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1716992056=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1716992056==
Content-Type: multipart/alternative; boundary="000000000000c921d205b6833d88"

--000000000000c921d205b6833d88
Content-Type: text/plain; charset="UTF-8"

On Tue, Dec 15, 2020 at 6:30 PM Frediano Ziglio <freddy77@gmail.com> wrote:

>
> Sure the C:\ca-file.pem contains the CA certificate for Let's Encrypt ?
>
>
Dear Frediano,
Yes definitely, it verifies with openssl -verify .

--000000000000c921d205b6833d88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Dec 15, 2020 at 6:30 PM Frediano =
Ziglio &lt;<a href=3D"mailto:freddy77@gmail.com">freddy77@gmail.com</a>&gt;=
 wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><br>
Sure the C:\ca-file.pem contains the CA certificate for Let&#39;s Encrypt ?=
<br>
<br>
</blockquote><div><br></div><div>Dear Frediano,</div><div>Yes definitely, i=
t verifies with openssl -verify .</div><div><br></div><div>=C2=A0</div></di=
v></div>

--000000000000c921d205b6833d88--

--===============1716992056==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1716992056==--
