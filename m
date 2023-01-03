Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B146D65C0F7
	for <lists+spice-devel@lfdr.de>; Tue,  3 Jan 2023 14:39:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA24F10E0C7;
	Tue,  3 Jan 2023 13:39:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84F1910E0C7
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Jan 2023 13:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1672753143;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1vJob57B+//emxWtxyYuMSybVmhGc2/mb3s2MuhQZTw=;
 b=NLUYnPbUKi/cM5mxVft3M//m010Go+euiYhapYlVxmNLPx4XfLseQcqrxEl1G/utsm+Pvt
 xaqA2bjmItKhH0iAEzRCjJfq/DpubT2E8PaoOoPxDSieNT2YqjF4Avh94d/jmswFHN7cSk
 7V655pbGHcOnCxZCdpaMjOofzNr1iPc=
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com
 [209.85.128.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-177-320t-2bQO8CXBTn2mUollw-1; Tue, 03 Jan 2023 08:39:02 -0500
X-MC-Unique: 320t-2bQO8CXBTn2mUollw-1
Received: by mail-yw1-f197.google.com with SMTP id
 00721157ae682-46a518991cfso284204507b3.18
 for <spice-devel@lists.freedesktop.org>; Tue, 03 Jan 2023 05:39:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=1vJob57B+//emxWtxyYuMSybVmhGc2/mb3s2MuhQZTw=;
 b=Rik1z/+n9iH9HQT//M1NM6KEL0hQYTKgsOdTfs/Dva6ee8McEQPKOs+Gh0k0MPODNI
 s//mayg2H8fYtN2BvfuRbaeanT5Jrq9y9kAWhZQLZPofWi1HbwvYIAwStQ1A+DzAWRlZ
 4grAP68bDTVJ4Iir211qluMpvtmk8eaPfr5Df+EXkiW/Yk26rTZDNUakoTNKQ9uqVCXP
 Qg42QaZ6lEfSzabgDXi7Y/aI9kIHjf7x3FMqS8i4Bag0V82XWGt61lT6Gag6IL0GyQC0
 MeHuSSa1NiIBjYkADfPyDEOLduLBEgAovu19dHqFmjjAua+c928ZPlRpYoqoVpXAZrmI
 eThw==
X-Gm-Message-State: AFqh2kqjesGZ1MN6VYQFAuGSaAUT9/xCnuXAw3eQ9xYUb7J1JluRrH/+
 KJ6P3ek9d7AlCQgy5eFYV5BIqOffKNbDekfChn3rhhZqpYgGGM83YSUGfYvViJa2MjHEfgkSzCn
 5Jjk7nXPiGd0e590vldf15CCp2umi/rolTay/d1gWRKswJw8=
X-Received: by 2002:a81:7cd6:0:b0:38c:e247:da55 with SMTP id
 x205-20020a817cd6000000b0038ce247da55mr4779937ywc.348.1672753141610; 
 Tue, 03 Jan 2023 05:39:01 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvYRpHf78ELUsP/EkBQdpVV94cr4yhxZNt41OQVsJgB8Zzper+V4w/l3yABCdYVdLYVlPDbSzLYmdahkDRVgFs=
X-Received: by 2002:a81:7cd6:0:b0:38c:e247:da55 with SMTP id
 x205-20020a817cd6000000b0038ce247da55mr4779935ywc.348.1672753141385; Tue, 03
 Jan 2023 05:39:01 -0800 (PST)
MIME-Version: 1.0
References: <a95fc8c4-6384-4b9a-7e09-878dab49c164@couderc.eu>
In-Reply-To: <a95fc8c4-6384-4b9a-7e09-878dab49c164@couderc.eu>
From: Uri Lublin <ulublin@redhat.com>
Date: Tue, 3 Jan 2023 15:38:50 +0200
Message-ID: <CAAg9qJ0MRKu8RnONLAEum1asJaYerTcCWjPQLt05fk4qbW9JHQ@mail.gmail.com>
To: Pierre Couderc <pierre@couderc.eu>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000ca251705f15c3092"
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

--000000000000ca251705f15c3092
Content-Type: text/plain; charset="UTF-8"

Hi,

Happy new year everybody.

On Wed, Dec 28, 2022 at 11:11 AM Pierre Couderc <pierre@couderc.eu> wrote:

> Is is possible ? how ?
>

You can try adding the following to spicy configuration file
(e.g. in $HOME/.config/spicy/settings on my Fedora), under [general]:
grab-sequence=Alt_L+Control_L

Hope that helps,
    Uri.


> Thanks for any help.
>
> PC
>
>

--000000000000ca251705f15c3092
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div><div><br><=
/div><div>Happy new year everybody.</div></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 28, 2022 at 11:1=
1 AM Pierre Couderc &lt;<a href=3D"mailto:pierre@couderc.eu">pierre@couderc=
.eu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Is is possible ? how ?<br></blockquote><div><br></div><div>You can try a=
dding the following to spicy configuration file</div><div>(e.g. in $HOME/.c=
onfig/spicy/settings on my Fedora), under [general]:</div><div>grab-sequenc=
e=3DAlt_L+Control_L</div><div><br></div><div>Hope that helps,</div><div>=C2=
=A0=C2=A0=C2=A0 Uri.<br></div><div><br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">
<br>
Thanks for any help.<br>
<br>
PC<br>
<br>
</blockquote></div></div>

--000000000000ca251705f15c3092--

