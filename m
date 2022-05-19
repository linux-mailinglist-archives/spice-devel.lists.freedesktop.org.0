Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E99552CEEF
	for <lists+spice-devel@lfdr.de>; Thu, 19 May 2022 11:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9FFC11B0EC;
	Thu, 19 May 2022 09:07:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4597C11B0ED
 for <spice-devel@lists.freedesktop.org>; Thu, 19 May 2022 09:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1652951233;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HYyGryXlvr+rgtwpJn/lPk6GTZlkSVWMn8Cq0fFZQ8o=;
 b=JSn3BpD4Osk1+EZyJ46IT3t+GdaSHfHTMMZmql4syFxQVaOzydyYctrlG0q4hqMY8Yhg5H
 Fq9NMFwGd68dZN6ANjLASn6TJZbji6mZhKykinEyv/x07TQXMQ5ilTSaBQCni2Kg0OPlcB
 ge5i2DKgfGPkgDRlQ5pgaFuzesCg8MA=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-34-DtfEEj8FNV-XKn2LwUe5AQ-1; Thu, 19 May 2022 05:07:12 -0400
X-MC-Unique: DtfEEj8FNV-XKn2LwUe5AQ-1
Received: by mail-lj1-f200.google.com with SMTP id
 z11-20020a05651c022b00b00253d40c090dso238269ljn.4
 for <spice-devel@lists.freedesktop.org>; Thu, 19 May 2022 02:07:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HYyGryXlvr+rgtwpJn/lPk6GTZlkSVWMn8Cq0fFZQ8o=;
 b=MNrFfFII9sHA22iFg3ORkEJPcvqiJiRXHkgnaFwvXw45fr+zT6qL2toe1g36S/cxfF
 E/zZwR8PvZW1kONLcGdP5S2R9BYu/w1Mugukr1vi7cmS4sBqTKDJV9HSB7EY2wS1AKOC
 9ES9A402zV2zNahm7Lchc3MV1mm7eCgR/OxJoaAI1meoMGhifrCno9SBnP6GutHmWQOs
 4e7T9ic3sFkT0h2Iro8DeFq9YoXxhBh66bEKFeiV3uVslD1zx4GyOinWq5piJ13kSiL0
 bWQV6NN3u4fuR8UkSGuWBdpgvbcQlObHGlRFkwTPZNFis79g73Vrn4FrKnMq0Q5gDEIY
 RKLw==
X-Gm-Message-State: AOAM530g285XB3eCe9Gs53HX4kS2qa3S6MEcBeOdFOCPLShtj7s5eYrS
 6HHqP+oCgP35fCl6K2hA/5wuZ3s9Vj+MJJIXIlzTlcw4CYcACKDUxzUQ1wiJEH5Pol09T1AJOjx
 gRfzivEMCjXX6DVKoHV/tJrpnyYJRb+eG6SJsqLqwJHW6Bys=
X-Received: by 2002:a19:6449:0:b0:473:de34:7596 with SMTP id
 b9-20020a196449000000b00473de347596mr2659549lfj.304.1652951230784; 
 Thu, 19 May 2022 02:07:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz6ho2hZb1NPr5F714cpl+5PHDxHFOVPPhJbMB5kY9qp6yE7Q9f78NGnysYFR1Oyc8YAf6eQe8T+tOfPZMdc8E=
X-Received: by 2002:a19:6449:0:b0:473:de34:7596 with SMTP id
 b9-20020a196449000000b00473de347596mr2659529lfj.304.1652951230533; Thu, 19
 May 2022 02:07:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAOgZG1xrwEv8T0Lq=z1id4FOKKrNdmP0_fXbEcr92i41546HbQ@mail.gmail.com>
In-Reply-To: <CAOgZG1xrwEv8T0Lq=z1id4FOKKrNdmP0_fXbEcr92i41546HbQ@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Date: Thu, 19 May 2022 12:06:59 +0300
Message-ID: <CAAg9qJ1ttp3B4gXFAeHKkcn+ntS_2a23-1sP89cE71ZvU9RhOg@mail.gmail.com>
To: Walter Mitty <waltermitty121906@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ulublin@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000ed69b605df59b277"
Subject: Re: [Spice-devel] [USB redirection] position offset for touch-screen
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000ed69b605df59b277
Content-Type: text/plain; charset="UTF-8"

Hi Walter,

On Wed, May 18, 2022 at 10:52 AM Walter Mitty <waltermitty121906@gmail.com>
wrote:

> GuestOS: Win10
> Host OS: Ubuntu 20.04
> Client OS: Ubuntu 20.04
>
> I enabled usb redirection on a touch screen. The position VM actually
> rendered has offset from the touching point on screen. I wanna fix it. But
> I don't know where to start. Could anyone give me some advice please?
>

Things to try:
1. Make sure your guest resolution is the same as expected/supported
by the touch-screen device
2. Does it work on the Ubuntu client (before being redirected to the guest)
?
    Does it work with a Ubuntu guest ?
    Does it work with a physical Windows 10  ?

Hope that helps,
    Uri.

--000000000000ed69b605df59b277
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Walter,<br></div><div><br></div><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 18, 2022 at 10:5=
2 AM Walter Mitty &lt;<a href=3D"mailto:waltermitty121906@gmail.com">walter=
mitty121906@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div>GuestOS: Win10</div><div>Host OS=
: Ubuntu 20.04</div><div>Client OS: Ubuntu 20.04</div><div><br></div>I enab=
led usb redirection on a touch screen. The position VM actually rendered ha=
s offset from the touching point on screen. I wanna fix it. But I don&#39;t=
 know where to start. Could anyone give me some advice please?</div></block=
quote><div><br></div><div><div>Things to try:</div><div>1. Make sure your g=
uest resolution is the same as expected/supported</div><div>by the touch-sc=
reen device</div><div>2. Does it work on the Ubuntu client (before being re=
directed to the guest) ?</div><div>=C2=A0=C2=A0=C2=A0 Does it work with a U=
buntu guest ?</div><div>=C2=A0=C2=A0=C2=A0 Does it work with a physical Win=
dows 10=C2=A0 ?</div><div><br></div><div>Hope that helps,</div><div>=C2=A0=
=C2=A0=C2=A0 Uri.</div>=C2=A0</div></div></div>

--000000000000ed69b605df59b277--

