Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 147C6714EAA
	for <lists+spice-devel@lfdr.de>; Mon, 29 May 2023 18:47:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89F2410E2E2;
	Mon, 29 May 2023 16:47:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com
 [IPv6:2607:f8b0:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 781BE10E068
 for <spice-devel@lists.freedesktop.org>; Mon, 29 May 2023 16:47:29 +0000 (UTC)
Received: by mail-oi1-x235.google.com with SMTP id
 5614622812f47-39855d57240so2168429b6e.2
 for <spice-devel@lists.freedesktop.org>; Mon, 29 May 2023 09:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685378848; x=1687970848;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=gO0B838Q2rx/5/Cb6LNHWjh1EWjI8/UEZf3dAOoZRBw=;
 b=aE3e+93mPfyyBUZlsHSM5hCcOsM8O+zHXWjl5FX07IwKh55DUNsX7vKA+uPTBKYSsB
 OWhqDl24WZVjdgInh74jnNnoEDWQ4o46xsDBE1CkwXjS9h5NCGa9kih2WmIRi09Nyt1w
 G73sb5oIrDlkfU8Juro535IpT5gW7G9uf+Uz5Cy/TmQsDknZE5ztHKzKH+o495e1k4o5
 hfbRXJJOb+mu3OvQFaqqOfVErJwm4MOda+Vh5iP7mAyrqkogrRfdC6ggspzWTB5nuOgz
 pvCVytcpICE8OrDtBWbF7ClODRTK/4+X24i+nS0VHStgeN25T4w11lrWGe0Lkd6ciijW
 6JKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685378848; x=1687970848;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=gO0B838Q2rx/5/Cb6LNHWjh1EWjI8/UEZf3dAOoZRBw=;
 b=js6Ez5jRdRUJun1HhGhgSjmKagqCg6LQmR+O48PvNVzh8duixFwlLErCBm8FuHXsgn
 7Ql8EEZAeZQDBtmjaCREFq425xRqZuPa34MZEfmpQrJHj4VscD2Iei/1Q7wQlCIpITEe
 +Sv3piAE1u9v+j5Wcvt1ZOR7MWH5BQ3ixd8g2za2MFJcoILdwZAJqHq+FjZkFIgl2Cjg
 XUSpD0v1zDTtpBiycg/LdfHXpRDek4hyGflCA6bFJ3TUmsJFXfrz60ZDHSPcbyeEpInc
 knBdVclFudK1nCbf3chzUC9D5S4CS8EI8kyjsf03S27GDFrG3p27BbD8FKR1aFNqVXxv
 KIOQ==
X-Gm-Message-State: AC+VfDzWx1yG4DY9W2hAqBJeFq2pPazBkUGDncD7TMGJaG13hz93tyTm
 RTa7vYnAnbcfEgNQ1QPlVmhV+xqC+NT6dSgJj6jhOqGdxc4=
X-Google-Smtp-Source: ACHHUZ4WqzOdrxhVHdKkQlGgXfyoJQbK+7HMMigDIVB3XcIhLHpPdIqJ/yiRj4AZSxDoXsa216VcDeP1W18zGfpR9vo=
X-Received: by 2002:a05:6808:1526:b0:398:2b33:b666 with SMTP id
 u38-20020a056808152600b003982b33b666mr6619282oiw.22.1685378848297; Mon, 29
 May 2023 09:47:28 -0700 (PDT)
MIME-Version: 1.0
References: <tencent_D5878955D45FD159A97AED741F2635A8D50A@qq.com>
 <CAHt6W4cTwoFMvkVYs-VmJp05FXoOTQ=HZM7WvxgN9ks1PfE2WQ@mail.gmail.com>
 <CAHt6W4d1nF_ceWGqVOR-Nmt+kS44jqJaHGTggdUWqQbm+_WqAg@mail.gmail.com>
 <cw6btodzv2qdseyupheevxmspytiatv2d2mzyfjj3asnysjnn4@zl3bnes6pclt>
 <CAHt6W4efRjKatr5TaXareKt16N7Swiufcjdpd88Cx8CmohkEuw@mail.gmail.com>
 <dbaospexta5gz2i2rvvl6q62bc5nz4tntjyv6quwoesv4dcdjq@a7itrvwlcnsu>
In-Reply-To: <dbaospexta5gz2i2rvvl6q62bc5nz4tntjyv6quwoesv4dcdjq@a7itrvwlcnsu>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Mon, 29 May 2023 17:47:17 +0100
Message-ID: <CAHt6W4cOWGs1YzqciY-qMYY1MCun5c+9Z56_PsTnXceBzhj3Ag@mail.gmail.com>
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

Il giorno lun 29 mag 2023 alle ore 17:05 Victor Toso
<victortoso@redhat.com> ha scritto:
>
> Hi,
>
> On Mon, May 29, 2023 at 04:40:38PM +0100, Frediano Ziglio wrote:
> > Il giorno lun 29 mag 2023 alle ore 14:13 Victor Toso
> > <victortoso@redhat.com> ha scritto:
> > >
> > > Hi,
> > >
> > > On Sun, May 28, 2023 at 08:15:43AM +0100, Frediano Ziglio wrote:
> > > > Il giorno dom 28 mag 2023 alle ore 07:38 Frediano Ziglio
> > > > <freddy77@gmail.com> ha scritto:
> > > > >
> > > > > Hi,
> > > > >    as a workaround click on the link with the right mouse button and click on download.
> > > > >
> > > > > It's just a server configuration that sends back the file as something to display instead of something to save.
> > > > >
> > > > > But strangely it worked correctly for me. Which browser and version are you using?
> > > > >
> > > > > Regards,
> > > > >    Frediano
> > > > >
> > > > >
> > > >
> > > > This is the results trying to download the file
> > > >
> > > > HTTP/1.1 200 OK
> > > > Date: Sun, 28 May 2023 07:08:45 GMT
> > > > Server: Apache
> > > > X-Content-Type-Options: nosniff
> > > > X-Frame-Options: SAMEORIGIN
> > > > Referrer-Policy: same-origin
> > > > Permissions-Policy: camera=(), fullscreen=(), geolocation=(),
> > > > microphone=(), payment=(), usb=()
> > > > Strict-Transport-Security: max-age=2592000; includeSubDomains
> > > > Last-Modified: Wed, 03 Aug 2022 09:06:09 GMT
> > > > ETag: "c7c200-5e5528b37f99a"
> > > > Accept-Ranges: bytes
> > > > Content-Length: 13091328
> > > > Keep-Alive: timeout=5, max=100
> > > > Connection: Keep-Alive
> > > >
> > > > It seems the mime type is missing. Now if we want to fix that we need
> > > > to change mime type configuration on the server. I found this link
> > > > https://mediatemple.net/community/products/dv/204403964/mime-types
> > >
> > > It works here as well. It is not like the browser should try to
> > > open a content as text if it doesn't know what it is.  Another
> > > alternative is to use download attribute.
> > >
> > >     https://www.w3schools.com/tags/att_a_download.asp
> > >
> > > Cheers,
> > > Victor
> >
> > Hi,
> >   I got it reproduced. I should have tried a Windows browser (Edge,
> > Windows 10), I should have known that on Windows resource extensions
> > are taken much more into consideration.
> > I tried with https://releases.pagure.org/virt-viewer/virt-viewer-x86-11.0-1.0.msi
> > which is downloaded correctly and the reply is (wget -v -nv -d XXX)
> >
> > HTTP/1.1 200 OK
> > Date: Mon, 29 May 2023 15:33:19 GMT
> > Server: Apache/2.4.37 (Red Hat Enterprise Linux) OpenSSL/1.1.1k
> > mod_wsgi/4.6.4 Python/3.6
> > X-Xss-Protection: 1; mode=block
> > X-Content-Type-Options: nosniff
> > Referrer-Policy: same-origin
> > X-Frame-Options: ALLOW-FROM https://pagure.io/
> > Upgrade: h2,h2c
> > Connection: Upgrade, Keep-Alive
> > Last-Modified: Tue, 23 Nov 2021 16:05:18 GMT
> > ETag: "50e1a00-5d176e85cad62"
> > Accept-Ranges: bytes
> > Content-Length: 84810240
> > Keep-Alive: timeout=5, max=100
> > Content-Type: application/octet-stream
> >
> > I would personally add configuration to the server, MSI files are
> > probably used by Windows users.
>
> Could you try adding the download attribute (by changing the html
> first and then trying to download the file), just to see if that
> as a workaround works?
>

I could try to reproduce the issue using another server but our HTML
pages are generated so we would need to change the generator, so we
will also need to change the system. It would take me some time, I
don't use Apache every day. Do you think it's worth doing?

> This project is the one running the infrastructure:
>     https://gitlab.com/osci/community-cage-infra-ansible
>
> I only have sftp access to folder related to SPICE. I'll follow
> up with someone to see if we can update the mime-types.
>

I saw the other email, thanks

> Cheers,
> Victor

Frediano
