Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AD3714D3C
	for <lists+spice-devel@lfdr.de>; Mon, 29 May 2023 17:40:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A53F110E119;
	Mon, 29 May 2023 15:40:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com
 [IPv6:2607:f8b0:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2198710E119
 for <spice-devel@lists.freedesktop.org>; Mon, 29 May 2023 15:40:52 +0000 (UTC)
Received: by mail-ot1-x32e.google.com with SMTP id
 46e09a7af769-6af6de9fb74so2550580a34.2
 for <spice-devel@lists.freedesktop.org>; Mon, 29 May 2023 08:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685374850; x=1687966850;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=33BHg4DinuIfhYnReVSeeDzdcIKwzh1nf8BfPqovImQ=;
 b=BDc++fhRBrBsL3qV0PD8Du9Mf3hjIWqCQ39KiDCVOcf3SLbQTW1jjtCenGPiC0p6aM
 oF2c1BifL5fUp1BLjdo2YSY6e6YM62h8uA/rSEiXlDcKVymoO5Ddyw6jSvAJictsiI37
 dyeAuvR+sAQITPQ6bYFXayOVSSluGu2el2gCxdrY54QUE47o07eFBp8t8wG997jSHkeN
 3OAr2PpsND8exum55nh7vspYRRXfNkCPKz2DmR4Tt1+9pe7o4QWqKplt12JAXZ78t21T
 ykuRROqn+vINZDC+6NnXVuFiKzGbg1SLvAxxdO3vOSn7dCk6YsA5W+uC/355c+iVmtKo
 vi/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685374850; x=1687966850;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=33BHg4DinuIfhYnReVSeeDzdcIKwzh1nf8BfPqovImQ=;
 b=CSu9eFd0WFCrDnY9XRDOjT8c6F8DSVO7G1ug3/04npK8jxFM9LEHRvt8KSGE/fZAsv
 yAyt5ZMK4p7rufpuvYWI56Ohu8YMb+1NSF4zPBwHdTPz9gvSeXekYLo8K3wGWPjbYoHF
 fBB43+j7xCbZIgMS5cTdEujGUDZHFvqTQVmKHCW2tbVF6GdqYHGombUJeZhU0pmvAtV4
 uyN2q7zEey2UtZJIvms7yXsBmG7Qoz3S2Fux02FfhkLeMR38pmmJMT9xicTz070kHYTw
 AfBEJ4BPnHnNbG5EQRVITh7zOEQKKnxr5H3z5FTcFza0Ltb1UvKekQ0TcsxnotMhxAAH
 8Qhg==
X-Gm-Message-State: AC+VfDxP87fdcy3HnxyoY1WtYNAvyj9JJvOIiYy0WSWXx4UqvyimSf6O
 VMr8B+jKHUr9G2IlnLNWIO5PUXYrb2Nucj9nJTWdpBMiXokLYRLv
X-Google-Smtp-Source: ACHHUZ4BKJwfPphEoBZeIwkGJWn55xoc/7Q+qUWILV0R0hHNATuTF18qeMVid8hCwkIMVb9AQIgL7l0cerk0eyvthXU=
X-Received: by 2002:a05:6808:bc2:b0:398:103d:fc61 with SMTP id
 o2-20020a0568080bc200b00398103dfc61mr7579219oik.38.1685374850556; Mon, 29 May
 2023 08:40:50 -0700 (PDT)
MIME-Version: 1.0
References: <tencent_D5878955D45FD159A97AED741F2635A8D50A@qq.com>
 <CAHt6W4cTwoFMvkVYs-VmJp05FXoOTQ=HZM7WvxgN9ks1PfE2WQ@mail.gmail.com>
 <CAHt6W4d1nF_ceWGqVOR-Nmt+kS44jqJaHGTggdUWqQbm+_WqAg@mail.gmail.com>
 <cw6btodzv2qdseyupheevxmspytiatv2d2mzyfjj3asnysjnn4@zl3bnes6pclt>
In-Reply-To: <cw6btodzv2qdseyupheevxmspytiatv2d2mzyfjj3asnysjnn4@zl3bnes6pclt>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 29 May 2023 16:40:38 +0100
Message-ID: <CAHt6W4efRjKatr5TaXareKt16N7Swiufcjdpd88Cx8CmohkEuw@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] About the website download error
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
Cc: 2656017036 <2656017036@qq.com>,
 spice-devel <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno lun 29 mag 2023 alle ore 14:13 Victor Toso
<victortoso@redhat.com> ha scritto:
>
> Hi,
>
> On Sun, May 28, 2023 at 08:15:43AM +0100, Frediano Ziglio wrote:
> > Il giorno dom 28 mag 2023 alle ore 07:38 Frediano Ziglio
> > <freddy77@gmail.com> ha scritto:
> > >
> > > Hi,
> > >    as a workaround click on the link with the right mouse button and click on download.
> > >
> > > It's just a server configuration that sends back the file as something to display instead of something to save.
> > >
> > > But strangely it worked correctly for me. Which browser and version are you using?
> > >
> > > Regards,
> > >    Frediano
> > >
> > >
> >
> > This is the results trying to download the file
> >
> > HTTP/1.1 200 OK
> > Date: Sun, 28 May 2023 07:08:45 GMT
> > Server: Apache
> > X-Content-Type-Options: nosniff
> > X-Frame-Options: SAMEORIGIN
> > Referrer-Policy: same-origin
> > Permissions-Policy: camera=(), fullscreen=(), geolocation=(),
> > microphone=(), payment=(), usb=()
> > Strict-Transport-Security: max-age=2592000; includeSubDomains
> > Last-Modified: Wed, 03 Aug 2022 09:06:09 GMT
> > ETag: "c7c200-5e5528b37f99a"
> > Accept-Ranges: bytes
> > Content-Length: 13091328
> > Keep-Alive: timeout=5, max=100
> > Connection: Keep-Alive
> >
> > It seems the mime type is missing. Now if we want to fix that we need
> > to change mime type configuration on the server. I found this link
> > https://mediatemple.net/community/products/dv/204403964/mime-types
>
> It works here as well. It is not like the browser should try to
> open a content as text if it doesn't know what it is.  Another
> alternative is to use download attribute.
>
>     https://www.w3schools.com/tags/att_a_download.asp
>
> Cheers,
> Victor

Hi,
  I got it reproduced. I should have tried a Windows browser (Edge,
Windows 10), I should have known that on Windows resource extensions
are taken much more into consideration.
I tried with https://releases.pagure.org/virt-viewer/virt-viewer-x86-11.0-1.0.msi
which is downloaded correctly and the reply is (wget -v -nv -d XXX)

HTTP/1.1 200 OK
Date: Mon, 29 May 2023 15:33:19 GMT
Server: Apache/2.4.37 (Red Hat Enterprise Linux) OpenSSL/1.1.1k
mod_wsgi/4.6.4 Python/3.6
X-Xss-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Referrer-Policy: same-origin
X-Frame-Options: ALLOW-FROM https://pagure.io/
Upgrade: h2,h2c
Connection: Upgrade, Keep-Alive
Last-Modified: Tue, 23 Nov 2021 16:05:18 GMT
ETag: "50e1a00-5d176e85cad62"
Accept-Ranges: bytes
Content-Length: 84810240
Keep-Alive: timeout=5, max=100
Content-Type: application/octet-stream

I would personally add configuration to the server, MSI files are
probably used by Windows users.

Frediano
