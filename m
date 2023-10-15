Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A84F27C9912
	for <lists+spice-devel@lfdr.de>; Sun, 15 Oct 2023 15:09:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3B410E055;
	Sun, 15 Oct 2023 13:09:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C11D10E055
 for <spice-devel@lists.freedesktop.org>; Sun, 15 Oct 2023 13:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1697375369;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=phdCP8bKfYs2WijL4REcCO3opWo9IAev/D3fbVlMsp8=;
 b=iZFAXo5avt+dQCDmF9lEaNDVisZSiT3/2QiC1hiLKPmt0x3TS7z3iRyk5eZhEVoSjOGcSj
 h+YcBZIirznZUvMop/5jnzRjUa4v91MICao1+16WREbEYaKsgm8EUEPwDrrkVWfVru1+8o
 DwHjIkI/yiagVGriY8r+J4AFKkmJ51s=
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com
 [209.85.160.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-318-nCMJSlcQOZq3lOFupSphGw-1; Sun, 15 Oct 2023 09:09:27 -0400
X-MC-Unique: nCMJSlcQOZq3lOFupSphGw-1
Received: by mail-oa1-f71.google.com with SMTP id
 586e51a60fabf-1dd8e6a7a86so4935937fac.1
 for <spice-devel@lists.freedesktop.org>; Sun, 15 Oct 2023 06:09:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697375367; x=1697980167;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=phdCP8bKfYs2WijL4REcCO3opWo9IAev/D3fbVlMsp8=;
 b=YRrbxnMjGG15KGX16wWJLT9Cxpvuz9QDJ7WisTB4GPRc/s8ViAlzX8OxMfEwBfleEQ
 XG6b2vdJ43e8fdUpD+9y5yGjfQrL0Jn/FvKxArpOt+Yzm9Ir7QNxgXNlfzPE7YDfJnIi
 Gis68lKdFTtvuScmxnw2d68DUSeRhVBBgD/yASCufWnuklCXBqRZATrjcVSSZ4I6MAbk
 /z3Pd9Z4FSY/sPoRe0NaTTkvvA1pSWbmAyyyxN1T6IK9DLgEc0M6G5odgH4CdYCy1GhX
 ig0GQFY9WxjfvNx3bDJ4QOrkMLpfbl2NvkWm8OrYeoXU4BI/CqoLq0j2pypdgatVLzas
 6Smg==
X-Gm-Message-State: AOJu0Yw/k3t9BZyIwuaaVmy7cBRHxZFifw4fdHH4DS4Lj89t+zwvhn2D
 V+dwcvlqK6E2DT3PoyezdWEriFqYe7TQKXLu+DKruQuSD4x55ZhP2DOXisLpLDzM8xrDOdQRQ5u
 aC1HAUx54DaajXJZhJtzq9+syoxQF+132nMSvN9Z1Zyvm1ZM=
X-Received: by 2002:a05:6870:8926:b0:1ba:8307:9a13 with SMTP id
 i38-20020a056870892600b001ba83079a13mr37110715oao.11.1697375366967; 
 Sun, 15 Oct 2023 06:09:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHf56mExpd5gwTmXc96SwlLzQhbAeaKKRqS8G0gYUbWdmrReBs1z+jEzfyIt7emylzJZKKFg8Z3YjUITUaCDc8=
X-Received: by 2002:a05:6870:8926:b0:1ba:8307:9a13 with SMTP id
 i38-20020a056870892600b001ba83079a13mr37110699oao.11.1697375366540; Sun, 15
 Oct 2023 06:09:26 -0700 (PDT)
MIME-Version: 1.0
References: <7330fd29.4eeb.18b1ddd2d02.Coremail.wangxuesonger@163.com>
 <r5blmx6qzxdu42zsl7ks7qargwulhaqqajahamd5jq7f4bmlmi@woczmwr5oyir>
In-Reply-To: <r5blmx6qzxdu42zsl7ks7qargwulhaqqajahamd5jq7f4bmlmi@woczmwr5oyir>
From: Uri Lublin <uril@redhat.com>
Date: Sun, 15 Oct 2023 16:09:15 +0300
Message-ID: <CAAg9qJ0PBPoVqb3p_KN09Rf49+Ndsf-0P-8MF70hC_HveWf9pA@mail.gmail.com>
To: =?UTF-8?B?546L6Zuq5p2+?= <wangxuesonger@163.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000c60ad80607c0ff36"
Subject: Re: [Spice-devel] spice protocal connection issue
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

--000000000000c60ad80607c0ff36
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Oct 12, 2023 at 9:43=E2=80=AFPM Victor Toso <victortoso@redhat.com>=
 wrote:

> On Wed, Oct 11, 2023 at 04:31:56PM +0800, =E7=8E=8B=E9=9B=AA=E6=9D=BE wro=
te:
> > Hi:
> > I have a question. Within the same local area network, I can
> > freely access the virtual machine using Spice, but other
> > machines often fail to connect.
>
> This should be a matter of can or cannot. You either have access
> to the host:port from where spice server is running, or you
> don't.
>
> > It takes dozens of attempts sometimes to successfully establish
> > a connection. I'd like to know the reason behind this.
>
> Me too. Do you run behind a proxy? Any other devices in between
> that might be doing something with the network?
>

Additionally, the network may be too slow and timeouts occur.


>
> > Could it be due to a caching mechanism or some restrictions
> > that limit other people's login access? Thank you.
> Regards
> Not really. If a user is logged in and a second one tries to log,
> the second one gets access while the first one is disconnected.
>
> I don't remember any settings that would change that behavior.
>

Probably does not count as "settings", but the monitor-command
set_password has an option to fail if a client is already connected.

Regards,
    Uri

--000000000000c60ad80607c0ff36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div>Hi,</div><div><br></div><d=
iv><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu,=
 Oct 12, 2023 at 9:43=E2=80=AFPM Victor Toso &lt;<a href=3D"mailto:victorto=
so@redhat.com">victortoso@redhat.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">On Wed, Oct 11, 2023 at 04:31:56PM +080=
0, =E7=8E=8B=E9=9B=AA=E6=9D=BE wrote:<br>
&gt; Hi:<br>
&gt; I have a question. Within the same local area network, I can<br>
&gt; freely access the virtual machine using Spice, but other<br>
&gt; machines often fail to connect.<br>
<br>
This should be a matter of can or cannot. You either have access<br>
to the host:port from where spice server is running, or you<br>
don&#39;t.<br>
<br>
&gt; It takes dozens of attempts sometimes to successfully establish<br>
&gt; a connection. I&#39;d like to know the reason behind this.<br>
<br>
Me too. Do you run behind a proxy? Any other devices in between<br>
that might be doing something with the network?<br></blockquote><div><br></=
div><div>Additionally, the network may be too slow and timeouts occur.<br><=
/div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt; Could it be due to a caching mechanism or some restrictions<br>
&gt; that limit other people&#39;s login access? Thank you.<br>
Regards<br>
Not really. If a user is logged in and a second one tries to log,<br>
the second one gets access while the first one is disconnected.<br>
<br>
I don&#39;t remember any settings that would change that behavior.<br></blo=
ckquote><div><br></div><div>Probably does not count as &quot;settings&quot;=
, but the monitor-command</div><div>set_password has an option to fail if a=
 client is already connected.</div><div><br></div><div>Regards,</div><div>=
=C2=A0=C2=A0=C2=A0 Uri<br></div></div></div></div>

--000000000000c60ad80607c0ff36--

