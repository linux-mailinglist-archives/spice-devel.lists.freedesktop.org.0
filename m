Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 237E770AB11
	for <lists+spice-devel@lfdr.de>; Sat, 20 May 2023 23:21:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A92AE10E070;
	Sat, 20 May 2023 21:21:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com
 [IPv6:2607:f8b0:4864:20::234])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20AA310E070
 for <spice-devel@lists.freedesktop.org>; Sat, 20 May 2023 21:21:31 +0000 (UTC)
Received: by mail-oi1-x234.google.com with SMTP id
 5614622812f47-397f10f861eso244062b6e.0
 for <spice-devel@lists.freedesktop.org>; Sat, 20 May 2023 14:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684617690; x=1687209690;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lmmrz3vYZ1tICioaEK5rhFAr90Q3MbapKbZFneiFRjg=;
 b=BuQ5L7O0l88vdRW8vXVSBZOXyMcyVxPzy7lKCnViJqyklYDkFMdZH+03UEDhpdOse5
 6eY33IU4XJgbKnLYdo4TuhemrHFKHAscmeAwr3ayp59CQrMMPy6FdlN/FWF4FjiJERsg
 QbM8fZNORD06Kx1y5tAhSH3cznhCMj7UuW3Q7OWO9ezGdcseTN4DjblF3m7zXtXXjz5z
 kDfsqeuJ2qX2UchRidKSMPr1DYhFo9syQGCZLIlN8heZ7dOqYMyEG+uaAWbZxG45v73D
 zeIuMxQpUPJjnDsRLDRAQCNArtICgWEhHH6VXrFbWlQC2KH+rObu5pAyHlZ0ZFKqtsXU
 iuQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684617690; x=1687209690;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lmmrz3vYZ1tICioaEK5rhFAr90Q3MbapKbZFneiFRjg=;
 b=l/JXk8P3oFKni7L1+D1iz5LJdFSyrE02kAe2uOhrzHzitRDe7PlVt91BF8nIhbGwme
 /ZGzcmaAgnHnyFglUA0abUIRDk4VYlqOi0BdoIvSX9KcsQHjUstZjt2gWO9bmNHCoC7F
 HA0LQYDnPYVBMWLGDLtsTf229f3Ll5w/CsmojqAB5wpmkSD/0Sv/ZMWcbHlsFf1fzftQ
 IRqZlDn5vUpp/xRrkYmkkOSuYTvuPlFJtglHju7rjVjIuALyl1Y9afkGG2NKggptFhbY
 tV9sKkCDuXESQDd6hbsEN+Ovc1Wl0bM8sYCirg/B67GBmdbooA4EYlE5fa4hTi+tn+X4
 K3rg==
X-Gm-Message-State: AC+VfDyIkRYxI1kPubhFCnNfFf3mW+5K/3+cZSUypy7EBc8gtbMhTEfn
 sj2iSgczJkrzfGgpRiVbfafVaDtc712ejitzlbY=
X-Google-Smtp-Source: ACHHUZ6khB29b7pQrBsYcg38mK0xQ+on4JV14AJ5kdTsgymyoHfkDxFFsyGAOCb0taDGCRn4kYEJkkMeAONdyIKkLE8=
X-Received: by 2002:aca:e043:0:b0:38c:1b9f:4dda with SMTP id
 x64-20020acae043000000b0038c1b9f4ddamr4557544oig.16.1684617689808; Sat, 20
 May 2023 14:21:29 -0700 (PDT)
MIME-Version: 1.0
References: <B6iK_fWf6k29gy_UxX4eCdTzgV8_uEuTAVi-mDEji_rn_MFAYNMoK1VJpnpGLnTMKrtxhl96Gp3JmVKygNqW3b1cwqREhiIWn89QEvTw7HM=@protonmail.com>
In-Reply-To: <B6iK_fWf6k29gy_UxX4eCdTzgV8_uEuTAVi-mDEji_rn_MFAYNMoK1VJpnpGLnTMKrtxhl96Gp3JmVKygNqW3b1cwqREhiIWn89QEvTw7HM=@protonmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 20 May 2023 22:21:19 +0100
Message-ID: <CAHt6W4ey_9aMb7FK+MkyzBfLj2sAxTddud016014hbpQ4PbnGg@mail.gmail.com>
To: J <schnrl@protonmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [Spice on QEMU] password-secret
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Il giorno sab 20 mag 2023 alle ore 21:31 J <schnrl@protonmail.com> ha scrit=
to:
>
> Hi there,
> I have got a question concerning the spice ticketing feature in QEMU virt=
ual machines. The user manual only lists the option of passing the password=
 directly with the "password=3D..." option. This seems to be insecure and q=
emu gives me the warning "password is deprecated. use password-secret inste=
ad". When I searched the man page for spice ticketing I got the following r=
esult: "password-secret=3D<secret-id>: Set the ID of the secret object cont=
aining the password you need to authenticate.". Now I wonder what this ID i=
s. Where can I find it? And what do I need to do in order to create such a =
secret password?
> Cheers,
> Johannes

Hi Johannes,
  From the SPICE library nothing changed, the change is about Qemu
command line options. See
https://www.qemu.org/docs/master/system/secrets.html.

Regards,
  Frediano
