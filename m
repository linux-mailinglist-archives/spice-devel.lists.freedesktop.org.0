Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FB465D131
	for <lists+spice-devel@lfdr.de>; Wed,  4 Jan 2023 12:07:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0023F10E097;
	Wed,  4 Jan 2023 11:07:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4216C10E097
 for <spice-devel@lists.freedesktop.org>; Wed,  4 Jan 2023 11:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1672830420;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CD3H3xS1p37eDDeBZ6CZcj5aQj5FLd2jX1DvbNwuOvY=;
 b=HxX0nY8jnNGXl1esUS5F9/SAq+rcmrUdKVVACoLlE8fDBAxWPKaKBoihE6E2pYm4s7OVje
 j5CeqWH6cohxTBxj4mP5XZ25Ha4XzXI+vnHWjF4yNI4K0u7uGxqgQSyJkWroDc7mrKZnIj
 SQ/2F651+4e6YSPHuVMEzD34yLmVju0=
Received: from mail-yb1-f197.google.com (mail-yb1-f197.google.com
 [209.85.219.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-610-isl2xzibM6ybp9QSck8XDg-1; Wed, 04 Jan 2023 06:06:58 -0500
X-MC-Unique: isl2xzibM6ybp9QSck8XDg-1
Received: by mail-yb1-f197.google.com with SMTP id
 z17-20020a25e311000000b00719e04e59e1so33534924ybd.10
 for <spice-devel@lists.freedesktop.org>; Wed, 04 Jan 2023 03:06:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CD3H3xS1p37eDDeBZ6CZcj5aQj5FLd2jX1DvbNwuOvY=;
 b=x+RrRj4j/4hqGaoU2NTYSsSLmX4ZcIdXaPg9cH/HTPb5FI7/RLALhGkVY2MOTLi4TJ
 rapeKhDxvpHTHu3H+K7Q/fMNcUjJ1c+tgKmS9e0k/emdQsd2rwxVAUoLUu5EnaNjTCtx
 pPUU2+DqCj6WOi2OYXLeB3axqXwbDgcX3yHT8Np9b5jf4XRwbdfSdKup3jPLCQpxCFG2
 WW7CyQOe4h1po+IoKF1QLaPsrY1o1zd23PiLrXZZGwj4F0vACOD72BKXrY53RgXoEtSt
 xRWscMywkvvZhWvWKsuq85WtsKlT4h/letz75GVQT1lz4lOW4JZURg1Wlur11q5iaeNx
 fQBg==
X-Gm-Message-State: AFqh2kqnvYz+z1vFk4hNnAO/lL8h8SDse2AtUqqS+vlENx9zyADWx/r7
 oURHwF+sQvd/bdrEZBvJlmeTkWyOZFZ6k02MtViGwRQwyl3d8aSWTHnu1bT43cpUnYuWYhW2sLL
 kFgmSkhd54QDiJBqY8zkqGDdMDNzHWD3FHXvLhaAbM+ilLRw=
X-Received: by 2002:a25:34c6:0:b0:6cf:e761:41ed with SMTP id
 b189-20020a2534c6000000b006cfe76141edmr5112548yba.82.1672830417678; 
 Wed, 04 Jan 2023 03:06:57 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsquE6jX6u+kSeXsyC7x9ikGorHIML9vZ3cJs6sJAdc1jfFtajlgetVz8GBRrLcbknYbcKWgaA4KdobBH18oPs=
X-Received: by 2002:a25:34c6:0:b0:6cf:e761:41ed with SMTP id
 b189-20020a2534c6000000b006cfe76141edmr5112546yba.82.1672830417406; Wed, 04
 Jan 2023 03:06:57 -0800 (PST)
MIME-Version: 1.0
References: <a95fc8c4-6384-4b9a-7e09-878dab49c164@couderc.eu>
 <CAAg9qJ0MRKu8RnONLAEum1asJaYerTcCWjPQLt05fk4qbW9JHQ@mail.gmail.com>
 <accf4220-d9ec-e752-9ee3-1c97c232775d@couderc.eu>
In-Reply-To: <accf4220-d9ec-e752-9ee3-1c97c232775d@couderc.eu>
From: Uri Lublin <ulublin@redhat.com>
Date: Wed, 4 Jan 2023 13:06:46 +0200
Message-ID: <CAAg9qJ0cusgrS77APGyiiFb=cYhObfK3Kz9r+7hT=bbsTdPX3g@mail.gmail.com>
To: Pierre Couderc <pierre@couderc.eu>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000cca3b405f16e2e16"
Subject: Re: [Spice-devel] In spicy,
 how to change shft-F12 to ungrab the mouse ?
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000cca3b405f16e2e16
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Pierre,

On Tue, Jan 3, 2023 at 8:30 PM Pierre Couderc <pierre@couderc.eu> wrote:

>
> Le 1/3/23 =C3=A0 14:38, Uri Lublin a =C3=A9crit :
>
> Hi,
>
> Happy new year everybody.
>
> On Wed, Dec 28, 2022 at 11:11 AM Pierre Couderc <pierre@couderc.eu> wrote=
:
>
>> Is is possible ? how ?
>>
>
> You can try adding the following to spicy configuration file
> (e.g. in $HOME/.config/spicy/settings on my Fedora), under [general]:
> grab-sequence=3DAlt_L+Control_L
>
> Hope that helps,
>     Uri.
>
> Thnk you, it helps very much...
>
> It works. But I amsurprised that if I try to change Alt_L+Control_L for
> exmple Alt_G+Control_G it does not work...
>
> Aniway, Alt_L+Control_L is enogh for my needs...
>

Alt_L is the left Alt key and Alt_R is the right one.
If you want you can try with Alt_L+Control_L+g or even just ALT_L+g

I agree with Victor, spicy is a testing tool.

Cheers,
    Uri.

--000000000000cca3b405f16e2e16
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Pierre,<br></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 3, 2023 at 8:30=
 PM Pierre Couderc &lt;<a href=3D"mailto:pierre@couderc.eu">pierre@couderc.=
eu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
 =20
   =20
 =20
  <div>
    <p><br>
    </p>
    <div>Le 1/3/23 =C3=A0 14:38, Uri Lublin a =C3=A9crit=C2=A0:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div>Hi,</div>
            <div><br>
            </div>
            <div>Happy new year everybody.</div>
          </div>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 28, 2022 at
            11:11 AM Pierre Couderc &lt;<a href=3D"mailto:pierre@couderc.eu=
" target=3D"_blank">pierre@couderc.eu</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Is is possible =
? how ?<br>
          </blockquote>
          <div><br>
          </div>
          <div>You can try adding the following to spicy configuration
            file</div>
          <div>(e.g. in $HOME/.config/spicy/settings on my Fedora),
            under [general]:</div>
          <div>grab-sequence=3DAlt_L+Control_L</div>
          <div><br>
          </div>
          <div>Hope that helps,</div>
          <div>=C2=A0=C2=A0=C2=A0 Uri.<br>
          </div>
          <br>
        </div>
      </div>
    </blockquote>
    <p>Thnk you, it helps very much...</p>
    <p>It works. But I amsurprised that if I try to change
      Alt_L+Control_L for exmple Alt_G+Control_G it does not work...</p>
    <p>Aniway, Alt_L+Control_L is enogh for my needs...<br></p></div></bloc=
kquote><div><br></div><div>Alt_L is the left Alt key and Alt_R is the right=
 one.</div><div>If you want you can try with Alt_L+Control_L+g or even just=
 ALT_L+g</div><div><br></div><div>I agree with Victor, spicy is a testing t=
ool.</div><div><br></div><div>Cheers,</div><div>=C2=A0=C2=A0=C2=A0 Uri.<br>=
</div></div></div>

--000000000000cca3b405f16e2e16--

