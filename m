Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BCA5069BC
	for <lists+spice-devel@lfdr.de>; Tue, 19 Apr 2022 13:21:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3976E10F0F1;
	Tue, 19 Apr 2022 11:21:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93E1B10F0F1
 for <spice-devel@lists.freedesktop.org>; Tue, 19 Apr 2022 11:21:02 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id o2so28735529lfu.13
 for <spice-devel@lists.freedesktop.org>; Tue, 19 Apr 2022 04:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZxTOQX5N9gdqd476pLCaOVX5l+NjOwqS0x+/3DpKm4M=;
 b=CEgW6jUqOdhGkmy/SSggq78pEdZFgJAXWhbT5FkdlxDTeCIclX4fFlMeKPe58z6S0m
 XutOrzXwAjz0UJnhKU8ww8ZPJeM1ruaYDfYGJy2/RhRMNyhT7B0aYu6zIw/uFSqZeq+q
 s0ce5konvc/rtrFLKVXnH7PrG/xHKdy9QBKYdSxNcYry2V8NYUB3MRl77hePhIwkThPx
 5lJx1jG0wjHi2XxHSa7utR9R17lytWirIE7HBw98cCWYfgX5ndRCZrQAem4+Q6u9HKlE
 TEerkIyLO6Ae8oQVpXMZA6nRge8NrcJVDlyV5+P3xhbNmKLVuFp0npPH6pKZMzMV2CJ1
 0BMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZxTOQX5N9gdqd476pLCaOVX5l+NjOwqS0x+/3DpKm4M=;
 b=HVmSgWDpW7U3jy5+cvLDWwNmiUk30qmfyVGEsIVV7bwQJMOp7bTI+PqDvkFExLTUqN
 9uasrmjongw/AuyPGnfqkRqSF3b8epaZ3Mr4CVqOGJJxrLQaDUW1+D8gScUy35IoMre1
 eMG7sgTAqM1sn9X1VfzDzk+Nu3NhryZcxp+QoZAr5vEmHe4b17gSFNMR0xj8CdFeplEM
 p308is/524xRbJOSO6ENmZNp4sCL0Y0jF+GO8QRj8gWIPfUrHSkTlXdNRNSSo46fXRah
 pMNVh9Dt9BFOqhMbbBiCd99dju9D/MuCK0cs6gRYwRv2YhFzQi+iC9FOjVrEtqkZNUQe
 wgjQ==
X-Gm-Message-State: AOAM530sYqSdluQGfZs5Ck0DqL4KQt2c6JXqeBUOLMJT7pMLD9GR1GzG
 cQIUalsiEz8W1bN8rytB4kB9l7ilyuYNvlBlyos=
X-Google-Smtp-Source: ABdhPJzqHuelMekehqd1X+TdmoDgNc3snumzdRnL9dxwEe4H7vrR0746DVytXZtrv36HpTQuSlxpvyqhbO/ftTFKXhA=
X-Received: by 2002:a05:6512:c21:b0:471:9935:f8f2 with SMTP id
 z33-20020a0565120c2100b004719935f8f2mr5128221lfu.650.1650367260637; Tue, 19
 Apr 2022 04:21:00 -0700 (PDT)
MIME-Version: 1.0
References: <BE152BD8-547B-497C-AB2C-CCF553D3AEA5@gmail.com>
 <20220419102949.wjainq7icd3fhpnj@tapioca>
In-Reply-To: <20220419102949.wjainq7icd3fhpnj@tapioca>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Tue, 19 Apr 2022 12:20:49 +0100
Message-ID: <CAHt6W4ctGReKD4m2pMm2AVrbnghAa628CiLMW=iqAbp0=yV+FQ@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
Content-Type: multipart/alternative; boundary="00000000000051bfb905dd0012f5"
Subject: Re: [Spice-devel] Does SPICE support long time single touch to
 trigger right click action?
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
Cc: Walter Mitty <waltermitty121906@gmail.com>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--00000000000051bfb905dd0012f5
Content-Type: text/plain; charset="UTF-8"

Il giorno mar 19 apr 2022 alle ore 11:29 Victor Toso <victortoso@redhat.com>
ha scritto:

> Hi,
>
> On Mon, Apr 18, 2022 at 11:32:26AM +0800, Walter Mitty wrote:
> > As we all know, on windows 10 touch device, user can long touch
> > to trigger right click. I found that it does not work on SPICE.
> > My question is: Is this a SPICE BUG or some hidden features
> > that enabled by some params?
> > Thanks in advance.
>
> Spice client sends the events to Spice sever which handles it out
> to QEMU to do the emulation part on the guest. That is, client
> sends mouse_press and eventually mouse_release.
>
> If this is not working, you can consider it a bug. Needs to track
> it down in which component it'd be.
>
> > Regards,
> > Walter.
>
> Sorry long delays on replying here.
>
> Cheers,
> Victor
>

Hi,
  I would test if this is only the behaviour of the touch or also of the
mouse.
Technically a long tap on the touch is not the same as a long click of the
mouse.
I would test with a physical Windows machine with the mouse. Does it
present the same behaviour of the touch? In this case SPICE should work too.
If not, the issue is that we support the mouse and not a touch device.

Frediano

--00000000000051bfb905dd0012f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">Il giorno mar 19 apr 2022 alle ore 11:29 Victor Toso &lt;<a href=3D"=
mailto:victortoso@redhat.com">victortoso@redhat.com</a>&gt; ha scritto:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
On Mon, Apr 18, 2022 at 11:32:26AM +0800, Walter Mitty wrote:<br>
&gt; As we all know, on windows 10 touch device, user can long touch<br>
&gt; to trigger right click. I found that it does not work on SPICE.<br>
&gt; My question is: Is this a SPICE BUG or some hidden features<br>
&gt; that enabled by some params? <br>
&gt; Thanks in advance.<br>
<br>
Spice client sends the events to Spice sever which handles it out<br>
to QEMU to do the emulation part on the guest. That is, client<br>
sends mouse_press and eventually mouse_release.<br>
<br>
If this is not working, you can consider it a bug. Needs to track<br>
it down in which component it&#39;d be.<br>
<br>
&gt; Regards,<br>
&gt; Walter.<br>
<br>
Sorry long delays on replying here.<br>
<br>
Cheers,<br>
Victor<br></blockquote><div><br></div><div>Hi,</div><div>=C2=A0 I would tes=
t if this is only the behaviour of the touch or also of the mouse.</div><di=
v>Technically a long tap on the touch is not the same as a long click of th=
e mouse.</div><div>I would test with a physical Windows machine with the mo=
use. Does it present the same behaviour of the touch? In this case SPICE sh=
ould work too.</div><div>If not, the issue is that we support the mouse and=
 not a touch device.<br></div><div><br></div><div>Frediano<br></div></div><=
/div>

--00000000000051bfb905dd0012f5--
