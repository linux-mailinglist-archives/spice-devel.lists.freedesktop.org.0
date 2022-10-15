Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB9B5FF973
	for <lists+spice-devel@lfdr.de>; Sat, 15 Oct 2022 11:25:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA20310E435;
	Sat, 15 Oct 2022 09:25:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com
 [IPv6:2001:4860:4864:20::32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 055D810E435
 for <spice-devel@lists.freedesktop.org>; Sat, 15 Oct 2022 09:25:39 +0000 (UTC)
Received: by mail-oa1-x32.google.com with SMTP id
 586e51a60fabf-134072c15c1so8529339fac.2
 for <spice-devel@lists.freedesktop.org>; Sat, 15 Oct 2022 02:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KCA3oQREx159utREYQl6HxTBVI8jz0TDVGLX022KPVg=;
 b=IHEDCTGGKNfA8iclstZfspD0PotEwDDZW91b5zEOySukwgifyAVJIbOZ8f8kaL2lMR
 ft3M0TvvXeQl+V8AvBsC3BP23eAP5A8c+/fmgk/g23TXVF5auGwLeO2edL008ZEYeRLZ
 ueTmR/KnNWPfUgXq0j/33JlO3alwPETDknnXyDdYNv4V3YbCMdlY8kSsfT0iEhRJ+djH
 vkKvlH1oaaiNNFKBp3GhFkcWgmw7UoCgHJGERHyZVRFdpP8DxkAzPf7klP+oJ5MgOXOM
 CTGtuydLbvwGmc4lpt/XIeW8fW9N7Z68y/N50+tpSccA5SupUeYMKn4Ag377nA5Dh3G5
 h9JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KCA3oQREx159utREYQl6HxTBVI8jz0TDVGLX022KPVg=;
 b=S0wz8Hs5gJBY01uTjww3IQGqaamPABX0Q4DAPuTvOb5kyM61C653cOPpAP0sjetnt2
 Xs2s/ASTuGC6LQhshs06tpgWE2oJp3V3SE9yJWVcsbmb/Pvo2iFKCirmC5HMz64eBaD+
 O4GGh9i19BQlBmLFKd/BOwfpx5WyIWQ4QTuwxJXY1kkp9APgoZHSTtXLd4S8ebCNSNJP
 bOVKx3DiSrfcPxCVhXjtNFaBihTo/vGil1ade8Ak/To+BocDmhK6b2ko8YOVItDJNjs0
 /oWlQ7GoMmP06zbUKHRBBKiZcFgD8owq0adklMxaqlP+henV39nPxNYCboqTOxNnPEsJ
 3+7A==
X-Gm-Message-State: ACrzQf1+qQ3RXL2ITjbR/B75JxBVy0lvhQO8w3UL2q9YnctOcHTxdivF
 qr2UvSzEp94FCAyTHQYdaRy7FAH6WRFRzlP8tiIz4jk68zw=
X-Google-Smtp-Source: AMsMyM5UT6922MKDGhOjJcDECzlGUBGmnY8qVq89/mOYXA6f4YF9RZ7qVbZIz7RVkjYWgp6wwDh8tqTT8u5mhfXhFhg=
X-Received: by 2002:a05:6870:e982:b0:136:78c2:e19a with SMTP id
 r2-20020a056870e98200b0013678c2e19amr10639570oao.1.1665825938243; Sat, 15 Oct
 2022 02:25:38 -0700 (PDT)
MIME-Version: 1.0
References: <feda950daa6d43c9bd709fa86b6f9a67@MAIL.cloos.locl>
In-Reply-To: <feda950daa6d43c9bd709fa86b6f9a67@MAIL.cloos.locl>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sat, 15 Oct 2022 10:25:26 +0100
Message-ID: <CAHt6W4caeUasBsXfAwkhX7oohQum9pV5zzJn+PmkXmdZYam2qw@mail.gmail.com>
To: "Eibach, Dirk" <Dirk.Eibach@cloos.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] Running without qemu
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

Il giorno ven 14 ott 2022 alle ore 14:58 Eibach, Dirk
<Dirk.Eibach@cloos.de> ha scritto:
>
> Hi,
>
> I am considering spice as a generic remote desktop, meaning on a real mac=
hine, not on a virtual one. It has some features that I am missing on VNC a=
nd RDP. Do you think that is a viable approach? As far as I can see I need =
a replacement for the part in Qemu that is setting up libspice. Is there al=
ready a tool for that? Where can I find a description of the VDI API?
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards
> Dirk Eibach

Hi Dirk,
   Did you mean something like https://gitlab.freedesktop.org/spice/x11spic=
e ?

Which OS and why not VNC and RDP if you are not using Qemu?

Regards,
   Frediano
