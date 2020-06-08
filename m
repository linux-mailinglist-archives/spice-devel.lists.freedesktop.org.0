Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D311F1BB8
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jun 2020 17:10:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 007686E8C9;
	Mon,  8 Jun 2020 15:10:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8325B6E8C9
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jun 2020 15:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591629015;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=I6qeo4GOl8Voh0jQ/kkFfOi5d36jUH1DYzWIYTmZtI4=;
 b=OAJgA+0sSFIrtmmrYDRyeCf7zNCoJMR2HZsQlMZmp5ZGbdl6W6H8pelBsRGdhMBLe18mE+
 WsKOat7NzK2bWOASNQnWci7fq05tSxOH93aHTPth//hdo47z/WPJoFWoTOPkOhNtiyePvH
 t6op9WBCR0VeB8vg525ImZcCBooRSGk=
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-268-ys3RQf8-PSK7yBJmt2P4ig-1; Mon, 08 Jun 2020 11:10:12 -0400
X-MC-Unique: ys3RQf8-PSK7yBJmt2P4ig-1
Received: by mail-oi1-f200.google.com with SMTP id l4so9036769oif.5
 for <spice-devel@lists.freedesktop.org>; Mon, 08 Jun 2020 08:10:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=I6qeo4GOl8Voh0jQ/kkFfOi5d36jUH1DYzWIYTmZtI4=;
 b=KGXQOE/DVwhNAHa16sT0vxwhdgDaCank13QkYd49lFyj33zue5z4pT5cRDwFc+q335
 6aCV+062f734F5z5o0G11gV3H2iUnBgG1SVeZkS2UXjGwXzByeDCPMotbBYu4iOZUA6+
 /XkCjH2bv0AWNS7WrR2hh5BNF4udBdSOI9RjAyFZTSL7pc97QM3ckOitbpsv28++rDyl
 hsE71Lv/gRfUe4dFHUEWuLV2kZItDEzN3e6bDzNAisEKMSHj2HyNPSGiLwT7pYTqXA92
 WOO3ke9N8iCatsLZczaPwZgQjLNavolNPfKu9eFLISGuKDjSiqHiLoWhqzysrEteScUt
 IaAw==
X-Gm-Message-State: AOAM532+wo0RIxqI3FJXi5o3VjtMcpKrUIJfGQm5u8koNPYaBql1SRxG
 gRtH3tOhXza+FxAfglwUmZQrxKjLsUgHNdftQDJ1lMwqoDBjHROUAzY35GaBdZaCOuSd5zOcu3/
 S1BnOJGsV+ebOOc7/+NGfGyt4fGzwn4oe72Str6gjOUayc0I=
X-Received: by 2002:aca:62c6:: with SMTP id w189mr4823718oib.169.1591629011618; 
 Mon, 08 Jun 2020 08:10:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwE3ucYoVmAaK+SN9Bv9abYbTxbWOslMG79BskghXvWpg+eiAySlFvREx5YY5vQZzs9ecuBCrIzYaNiLQRxEZM=
X-Received: by 2002:aca:62c6:: with SMTP id w189mr4823700oib.169.1591629011339; 
 Mon, 08 Jun 2020 08:10:11 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Pouget <kpouget@redhat.com>
Date: Mon, 8 Jun 2020 17:10:00 +0200
Message-ID: <CADJ1XR3kFo__t5DsGf3xVJCxF=QSrYge1RWG9qN4kW48eBYpLQ@mail.gmail.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] Review of the C++ patches
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
Content-Type: multipart/mixed; boundary="===============1739990453=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1739990453==
Content-Type: multipart/alternative; boundary="000000000000d5dcf405a7940156"

--000000000000d5dcf405a7940156
Content-Type: text/plain; charset="UTF-8"

Hello spice-devel

I worked on the review of Frediano's C++ patches during the last weeks,
I tried to understand the gist of the commits and summarize it in the
review message.
It's not an in-depth review, and I only spotted minor details.

A few patches are not acked, mostly because they were too big for me to
study carefully enough.

Overall, I really appreciate the effort made to adapt the code to C++, from
my point of view it is greatly beneficial for the code as it reduces a lot
the amount of code duplication (boilerplate code) by leveraging C++
inheritance, polymorphism, virtual methods, etc.
Likewise, the ref-counting is made simpler and safer with custom classes
(share_ptr). These custom classes mimic existing ones AFAICT, but they are
more "C-safe" as they cannot throw exceptions.

3 mails will follow with the reviews.

Best regards,

Kevin

--000000000000d5dcf405a7940156
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello spice-devel</div><div><br></div><div>I worked o=
n the review of Frediano&#39;s  C++ patches during the last weeks, <br></di=
v><div>I tried to understand the gist of the commits and summarize it in th=
e review message.</div><div>It&#39;s not an in-depth review, and I only spo=
tted minor details.</div><div><br></div><div>A few patches are not acked, m=
ostly because they were too big for me to study carefully enough.<br></div>=
<div><br></div><div>Overall,
 I really appreciate the effort made to adapt the code to C++, from my=20
point of view it is greatly beneficial for the code as it reduces a lot=20
the amount of code duplication (boilerplate code) by leveraging C++=20
inheritance, polymorphism, virtual methods, etc. <br></div><div>Likewise,
 the ref-counting is made simpler and safer with custom classes=20
(share_ptr). These custom classes mimic existing ones AFAICT, but they=20
are more &quot;C-safe&quot; as they cannot throw exceptions.</div><div><br>=
</div><div>3 mails will follow with the reviews.<br></div><div><br></div><d=
iv>Best regards,<br></div><font color=3D"#888888"><div><br></div><div>Kevin=
</div></font></div>

--000000000000d5dcf405a7940156--


--===============1739990453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1739990453==--

