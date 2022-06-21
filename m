Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 376F1552B13
	for <lists+spice-devel@lfdr.de>; Tue, 21 Jun 2022 08:39:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FD6110E834;
	Tue, 21 Jun 2022 06:38:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 293A910F7A9
 for <spice-devel@lists.freedesktop.org>; Tue, 21 Jun 2022 06:37:46 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id g12so8193961ljk.11
 for <spice-devel@lists.freedesktop.org>; Mon, 20 Jun 2022 23:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=BDqocBAaBLsanLZa8PYAivv0tJq2Fp8tnd+dQKZFSgo=;
 b=F6DlhamGJHv/P5T9JOuFW1It0lQhzkse46HwDfZ5PnXVPPR7SV9bhejkJFaZQc2IHk
 W75SKadf4zStkTU1NsURWY1d0O+y6iMamN9qo+HMQual9xvctm+fYwKKe7inafyO/lxE
 hPpYG/0Xs+3ZYACkZoTwk95fIr2h1Q7My/+Sc8bvo6aTb6Cxeopy4C59pmlDlK2O9HV9
 g55MkWveXMxGK9oIeYD+t/GleVCUhNiWvAMyeNkCldhwCFU+oPZ0n16g4qWbrojhLVJx
 2wlNP6c5ARYoZ330Bo+NALdoD4LkSLeDbr//VU8NV3nQRonVMt/3vq4mJIKlGBqQ1Bc/
 zRXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=BDqocBAaBLsanLZa8PYAivv0tJq2Fp8tnd+dQKZFSgo=;
 b=jZQf5dpVet8CKnXoRP4KUN+l5ikNOcgpq9SxkdQuG7ae00BzNEJmrm58VE6Gu/vfeP
 JJF5/XCQsN0h564oLF/HJHOC5eYmUQqda1mlmaXyGx39cHaq1gfBfgSmk1/5GjOYvihR
 CjwJ90ngnndzAM0PsWSg077/ASteiBshESVoEnsf6kDfyX/hZB8cXcZF4rLhkUT+ZY/e
 jMK9oVn0YB6MMM9WRg1ujfALdOKP1IzLFNbwxD8ikgr4ecTKSZswn4V5HzJQmyizgPLI
 5j8j6QIIjJYS9pGT54MVlPNSLNK2qd0m76j03SGnzYTLj9yXf2F/y1azY9OHyKTpNalB
 hF6w==
X-Gm-Message-State: AJIora9t3sLk0DY1tZQ0LrLJtbke26J1kSxB0FIgd6RS6c27CwCLsj/7
 S83pW3MqrpZLy1cElNtdIg2uWUj5Qpi1A+C6rXHG17IcryRxWYvC
X-Google-Smtp-Source: AGRyM1t5XWPeUvi5hK+9FKShNyhfJmqvtJqhfEvRI6mK/D9/xmO2c8HwGRbUlY66OVBWSzNthHJ1N8Ksp0BnDs9aXMA=
X-Received: by 2002:a2e:96c9:0:b0:258:ac98:5304 with SMTP id
 d9-20020a2e96c9000000b00258ac985304mr13838776ljj.382.1655793464078; Mon, 20
 Jun 2022 23:37:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAOgZG1y8zz4hkw-FPO4rcccveG8NUx4D73_A3Y9j3sW30NYBjw@mail.gmail.com>
In-Reply-To: <CAOgZG1y8zz4hkw-FPO4rcccveG8NUx4D73_A3Y9j3sW30NYBjw@mail.gmail.com>
From: Walter Mitty <waltermitty121906@gmail.com>
Date: Tue, 21 Jun 2022 14:37:32 +0800
Message-ID: <CAOgZG1xSPMaGh-ttfviyzBo9zqia2qUgupfkA2-nmXT_i1OV1w@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000003f74ba05e1ef7560"
X-Mailman-Approved-At: Tue, 21 Jun 2022 06:38:57 +0000
Subject: Re: [Spice-devel] MOUSE rate down to 1/4 compare with bare metal PC,
 how to explain?
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

--0000000000003f74ba05e1ef7560
Content-Type: text/plain; charset="UTF-8"

Hello guys,

I found if I turn off *agent-mouse* by the param: *agent-mouse=off*, the
mouse report rate can improve to 50% ~ 80% of the bare metal.
I'm still trying to make it as better as possible. If you have any
suggestions, please let me know.

Yours sincerely,
Walter

On Tue, Jun 7, 2022 at 6:39 PM Walter Mitty <waltermitty121906@gmail.com>
wrote:

> Hello guys,
>
> I'm using SPICE + QEMU as a solution for remote desktop. My guest OS is
> running on the server side, not locally. And there is a thin-client to
> access the guest OS. What makes me confused is, the mouse report rate is
> down to *32hz , *which is *125hz* on a bare metal PC.
>
> I looked up the source code and I found that SPICE will call some API of
> QEMU to replay the mouse events. But I haven't found the reason for this
> issue. By the way, if I redirect the mouse device to the guest OS, the
> mouse rate will be *125hz* , which is identical with a bare metal PC.
>
> Could anyone please give some advice? Thanks in advance.
>
> Regards,
> Walter
>

--0000000000003f74ba05e1ef7560
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello guys,<div><br><div>I found if I turn off=C2=A0<span =
style=3D"color:rgb(0,0,0);font-family:Times;font-size:medium"><b>agent-mous=
e</b> by the param:=C2=A0</span><span style=3D"color:rgb(0,0,0);font-family=
:Times;font-size:medium"><b>agent-mouse=3Doff</b>, the mouse report rate ca=
n improve to 50% ~ 80% of the bare metal.=C2=A0</span></div><div><span styl=
e=3D"color:rgb(0,0,0);font-family:Times;font-size:medium">I&#39;m=C2=A0stil=
l trying to make it as better as possible. If you have any suggestions, ple=
ase let me know.</span></div><div><span style=3D"color:rgb(0,0,0);font-fami=
ly:Times;font-size:medium"><br></span></div><div><span style=3D"color:rgb(0=
,0,0);font-family:Times;font-size:medium">Yours sincerely,</span></div><div=
><span style=3D"color:rgb(0,0,0);font-family:Times;font-size:medium">Walter=
</span></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Tue, Jun 7, 2022 at 6:39 PM Walter Mitty &lt;<a href=
=3D"mailto:waltermitty121906@gmail.com">waltermitty121906@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hello guys,<div><br><div>I&#39;m using SPICE=C2=A0+ QEMU as a solu=
tion for remote desktop. My guest OS is running on the server side, not loc=
ally. And there is a thin-client to access the guest OS. What makes me conf=
used is, the mouse report rate is down to <b>32hz , </b>which is <b>125hz</=
b> on a bare metal PC.=C2=A0</div><div><br></div><div>I looked up the sourc=
e code and I found that SPICE will call some API of QEMU to replay the mous=
e events. But I haven&#39;t found the reason for this issue. By=C2=A0the wa=
y, if I redirect the mouse device to the guest OS, the mouse rate will be <=
b>125hz</b>=C2=A0, which is identical with a bare metal PC.</div><div><br><=
/div><div>Could anyone please give some advice? Thanks in advance.</div><di=
v><br></div><div>Regards,</div><div>Walter</div></div></div>
</blockquote></div>

--0000000000003f74ba05e1ef7560--
