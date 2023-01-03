Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E71065BB95
	for <lists+spice-devel@lfdr.de>; Tue,  3 Jan 2023 09:06:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99DEF10E39E;
	Tue,  3 Jan 2023 08:06:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13A0E10E39E
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Jan 2023 08:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1672733176;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5R1RAY9wt4YIPwTJDyhTJuyNNqQu8dIBIGmbJ8x/LZU=;
 b=Yo1AuKs0uFIVtGHOLz6DpHJ7CIWLmDSB1CTJEmOl27wzHqlluSh+eMq1lwWu3dOngiJObK
 wz3XBBrUAfGJNGxandJ6W4d4pYEQEiHU+XFdW9FLyoaTBuhC0YScfDfKN7YgB4w5WqsZD1
 8Q3MQKX/lUjnBK/sXX2WfcTYSUkDAN0=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-19-1E7IhsI_OJuKiLhf_IgoSA-1; Tue, 03 Jan 2023 03:06:14 -0500
X-MC-Unique: 1E7IhsI_OJuKiLhf_IgoSA-1
Received: by mail-wm1-f70.google.com with SMTP id
 fm17-20020a05600c0c1100b003d96f0a7f2eso16692800wmb.6
 for <spice-devel@lists.freedesktop.org>; Tue, 03 Jan 2023 00:06:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5R1RAY9wt4YIPwTJDyhTJuyNNqQu8dIBIGmbJ8x/LZU=;
 b=Xfwiro1KIy9qPgdVFHuvD1rGD6h2tvMiPlHFGATkc2y97uvfK0V/6nJPWs43+M24ES
 T4IEqjRDKI6d/7UhEqkt9j4q1k3P1TJAvG0apbEufQbEn7tePdZ2nvHpl9HTbQsIA/eH
 S8mJwVFS74QOSh7w3dQD4PKLW+67rQCtWsjyaYujmpe2t2yd5CmBDIpYqViPcXw8EIda
 duiAwjlrQWBPsZcBsdd1vb6lzYHuopHMuQh+fDIUvpPEZDtOiwEH0TYaPX6/6xgqHpLl
 L5euPA3GfwHe4pUYBBVqS5ZSCobX/a/1WWP465ze5keWKwV5OqbYel0CGParGMJMxgDL
 NkLA==
X-Gm-Message-State: AFqh2kpQVSDWVtyvgN8dy9KkQAmAXYJZC+Hp48yER/ZKAkiDqmwxz3lk
 F2SLrIsLefnAe1L7YRA2XKEJ+dRqb9Q/z1UsshVqqdDBFqWznhiSaigZ+7lDQULVXGANd68ZUdh
 4D99qGZvR4XUqq9hwH5Trq8kaWlpvZk+9K9VAAj0KHepxBu0=
X-Received: by 2002:adf:9d86:0:b0:242:17c7:d98d with SMTP id
 p6-20020adf9d86000000b0024217c7d98dmr1188602wre.87.1672733173168; 
 Tue, 03 Jan 2023 00:06:13 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtXXgOIm7NNA39tBwmOdDHtLhkMEw1XJK5vKM+BV5aIAHIJsOrVmHy6Cpz3/lWNWVTBH5uMsxO8598vFIfW8IQ=
X-Received: by 2002:adf:9d86:0:b0:242:17c7:d98d with SMTP id
 p6-20020adf9d86000000b0024217c7d98dmr1188600wre.87.1672733172948; Tue, 03 Jan
 2023 00:06:12 -0800 (PST)
MIME-Version: 1.0
References: <a95fc8c4-6384-4b9a-7e09-878dab49c164@couderc.eu>
In-Reply-To: <a95fc8c4-6384-4b9a-7e09-878dab49c164@couderc.eu>
From: Xiaodai Wang <xiaodwan@redhat.com>
Date: Tue, 3 Jan 2023 16:06:59 +0800
Message-ID: <CAMVti-_3iqZqpu=qbq=z+pfSZAEQPmAStFFUMRRseqJn_=UFWg@mail.gmail.com>
To: Pierre Couderc <pierre@couderc.eu>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000093f48a05f1578aac"
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

--00000000000093f48a05f1578aac
Content-Type: text/plain; charset="UTF-8"

'--hotkeys' could do that. You may see the man page for the usage.

e.g.
--hotkeys=release-cursor=ctrl+alt

On Wed, Dec 28, 2022 at 5:11 PM Pierre Couderc <pierre@couderc.eu> wrote:

> Is is possible ? how ?
>
> Thanks for any help.
>
> PC
>
>

--00000000000093f48a05f1578aac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">&#3=
9;--hotkeys&#39; could do that. You may see the man page for the usage.</di=
v><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div cla=
ss=3D"gmail_default" style=3D"font-size:small">e.g.</div><div class=3D"gmai=
l_default" style=3D"font-size:small">--hotkeys=3Drelease-cursor=3Dctrl+alt<=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Wed, Dec 28, 2022 at 5:11 PM Pierre Couderc &lt;<a href=3D"mail=
to:pierre@couderc.eu">pierre@couderc.eu</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">Is is possible ? how ?<br>
<br>
Thanks for any help.<br>
<br>
PC<br>
<br>
</blockquote></div>

--00000000000093f48a05f1578aac--

