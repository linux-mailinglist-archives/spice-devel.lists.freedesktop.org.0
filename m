Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9904334A9
	for <lists+spice-devel@lfdr.de>; Tue, 19 Oct 2021 13:27:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75DE96E14F;
	Tue, 19 Oct 2021 11:27:43 +0000 (UTC)
X-Original-To: spice-devel@freedesktop.org
Delivered-To: spice-devel@freedesktop.org
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A7FC6E10C
 for <spice-devel@freedesktop.org>; Tue, 19 Oct 2021 11:27:42 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id f11so13456812pfc.12
 for <spice-devel@freedesktop.org>; Tue, 19 Oct 2021 04:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qVgQgBI0EJZg1NGUAFvm5WFgqM56OV2cKP561KP5r/s=;
 b=QY7mICaScwVvQL9HaFrheQ+WRAnBGblFDpA0EDraPw/xJb1DVn23QP9b1j1JJR9wen
 A79CGI/8Nz9bnnocCkYpCMzjSDopcYiSNPbyPavnw3/DoiRBlsbY1+nDUgvvD//RYlrk
 dqxsUy14w1cEU6rIXF7miKUJll1GltPOEaYVEV1RNWulp3ekKDCdCgjojn2gPWomHxiI
 tm6xu30lhUutZhoeIMY3JiLYfBqcUSQLBYmCpAH7+bhjQL9pZsKg4C2fcu/EnLnMi3IT
 gz38pnyJhcpZfX515B1KSH/X++OP3OImEkyxo3Fmo4yNwIIXgAOEQ1GbV7zuiS9C7bNC
 kgow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qVgQgBI0EJZg1NGUAFvm5WFgqM56OV2cKP561KP5r/s=;
 b=ih5EZvOiriZAY/75SFjRohSiDWMNIQUwlhJeYpw5scV4Dvv00KTl9OU4JImstddomq
 oEctsUhcNUS/M5x17yYjtkxPi3YNtS98jf4kCxbxKdFRtI/Ol8vVMtnzVGqTmQo77ET/
 +vUHapMRR+6Q3utxfKRzMlWhJkGnKRT1zpbuhOWnHLmyxCEAf65I9wBV6CEmJ9KhWX+R
 8LeoEivzKhScj3DNWZx8Miu30w8/AFpVg9kx4pOYZsyQs0dBkhTTNg2ZtcTdMDLG+XWQ
 mR1CNd6g+kcJ9nrjRGP3h4jL5CfEAyeATHMCft6bEPmfEJie03Syz74Ystcyy19UxLLh
 YGWg==
X-Gm-Message-State: AOAM532vsZ6x7jiB709JSOku/6If3ZgE4gYgYdWRR27niS5qzIGNCglK
 eRnifRHnt4qSi4U4yJiuHSafSo0pZLvt+PaLAW/+M2Xz
X-Google-Smtp-Source: ABdhPJxMIFziBGCE4j7kblzbJsHqudW3EXVDs/LLKtaUncaGFuObSoI08zAPY2IGM2vhZQ6wimggRVck217fcYo98ig=
X-Received: by 2002:a62:6203:0:b0:44c:7649:90b0 with SMTP id
 w3-20020a626203000000b0044c764990b0mr35649257pfb.21.1634642862233; Tue, 19
 Oct 2021 04:27:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAHggAUJYcGVuoBqsGnB6ci_d2373E2-LdVMtOFzfDNYQnJoj9g@mail.gmail.com>
In-Reply-To: <CAHggAUJYcGVuoBqsGnB6ci_d2373E2-LdVMtOFzfDNYQnJoj9g@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 19 Oct 2021 12:27:30 +0100
Message-ID: <CAHt6W4fjT8=dTH8X562RwfV1zVd8DBdxyrkn6HBtQwmZZ8Ki3w@mail.gmail.com>
To: Wolf <wolf@techy.cc>
Cc: spice-devel <spice-devel@freedesktop.org>
Content-Type: multipart/alternative; boundary="000000000000235c3605ceb2f3e4"
Subject: Re: [Spice-devel] Github "spice"
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

--000000000000235c3605ceb2f3e4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
  "spice" project is maintained by different people, some independent, some
working for different companies.
70$ won't change the life of most people, much less a project supported by
multiple international companies.
It would be more the effort trying to split the money.

Regards,
  Frediano


Il giorno mar 19 ott 2021 alle ore 09:33 Wolf =E2=80=8E <wolf@techy.cc> ha =
scritto:

> Hello!
>
>   I'm Twilak. I'm interested in purchasing the github account "/spice," i=
f
> you'd be interested in selling, for $70 or so. I found your email from th=
e
> old commit history of one of your public repos, and the account doesn't
> seem to be super active, so I thought I'd ask.
>
> Please let me know,
> Best Twilak.
>

--000000000000235c3605ceb2f3e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>=C2=A0 &quot;spice&quot; project is mai=
ntained by different people, some independent, some working for different c=
ompanies.</div><div>70$ won&#39;t change the life of most people, much less=
 a project supported by multiple international companies.<br></div><div>It =
would be more the effort trying to split the money.<br></div><div><br></div=
><div>Regards,<br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature=
" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=C2=A0 Frediano</div>=
</div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">Il giorno mar 19 ott 2021 alle ore 09:33 Wolf =E2=80=
=8E &lt;<a href=3D"mailto:wolf@techy.cc">wolf@techy.cc</a>&gt; ha scritto:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>Hello!=C2=A0<div><br><div>=C2=A0 I&#39;m Twilak. I&#39;m interested in pur=
chasing the github account &quot;/spice,&quot; if you&#39;d be interested i=
n selling, for $70 or so. I found your email from the old commit history of=
 one of your public repos, and the account doesn&#39;t seem to be super act=
ive, so I thought I&#39;d ask.=C2=A0</div><div><br></div><div>Please let me=
 know,</div><div>Best Twilak.</div></div></div>
</blockquote></div>

--000000000000235c3605ceb2f3e4--
