Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B752D8AA1
	for <lists+spice-devel@lfdr.de>; Sun, 13 Dec 2020 00:29:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EE0089263;
	Sat, 12 Dec 2020 23:29:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 159FA6E871
 for <spice-devel@lists.freedesktop.org>; Sat, 12 Dec 2020 21:08:16 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id 131so9434885pfb.9
 for <spice-devel@lists.freedesktop.org>; Sat, 12 Dec 2020 13:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shells-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=Y+zd256IWKlb1h1csvcwiSvmIUMfhhdtzRWQGZSbJuk=;
 b=joNkZla80wT9OsCDe+cZSwhENXERZdYIlGSx7oivlXiUdAtB3/T2JwoG8RWUITHxik
 8tg89WKRco0QuYLGmtiqWoeJuD7StqNT1l6WK6aQJvhs6/dgvtSxbRxW4n6JqN4ENeif
 eibfeBvvRlAps34JllTw+LDeckEros/5VZwbCKzffk9mp4IuBe8N+6yPLuayCXjbi/T1
 uhNQHmvt7wtXvDMjhF2kL21jlT7dXkRyiYmhoMrW8Hw7DmZUNObeQE9NqDty+W2Vk3WU
 9GeJvhPQ5MBzOQg3japRfUF1lLIdFynn/ALEhuKEfvtW0fDLEuAIrIF0R4an6AqOIfJu
 i+BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Y+zd256IWKlb1h1csvcwiSvmIUMfhhdtzRWQGZSbJuk=;
 b=QD1ALxeXgN131NbxHce6l9Dx2JM5ZvkOQCtfKtb83bkcBtHqwn1rfoGjWcbSiuOWw1
 dY7KSJKabFtt/yTDMJX7iS2ynp9n+SJ+gbHxwBFqZRyqMa1VyombQO2suazsOF60nTqP
 tKRS3T4HWiP3YnTMk5aqtosHtZZIQY5c3+8rA6Z1DfH3nf1RaLRsraN59QlXubNeeIZg
 wjIb0D0U6b+dBITFqSQMf9WvzZ+VWd701wC2QY/mstcNsv9RStx1+dCu+cMllTA/NT7l
 qwzeIrK7IdXOoB3ZRubmGGu0xFcz2l9cyVHAPPL8kEvXyBxq5rX3NSQqFeInrWaMcnJr
 Xfvw==
X-Gm-Message-State: AOAM532IDr6PN5vLijLo1YziddoAR2/ipOWU60c71g8kPcaV8B0OUq9J
 +RwCO84kUBveXRs/6T/CXClL7jcoBKRryNHTeXIf6jHi6NItsg==
X-Google-Smtp-Source: ABdhPJzb0fZ9XixY3AQrM8aATPihz80B9kxL4B4hCiQpzNSH1N7PkVrPaCU0HxmyROMqDENT7lb1lovsX1r6MEyB5j0=
X-Received: by 2002:a63:591c:: with SMTP id n28mr17648663pgb.230.1607807296190; 
 Sat, 12 Dec 2020 13:08:16 -0800 (PST)
MIME-Version: 1.0
From: Mark Karpeles <mark@shells.com>
Date: Sun, 13 Dec 2020 06:08:05 +0900
Message-ID: <CABCrBR1CBK4nHobqi-w_YTzw_yehDDK=7irZ6qp1ZB7faEGc4w@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Sat, 12 Dec 2020 23:29:53 +0000
Subject: [Spice-devel] Spice features and status
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
Content-Type: multipart/mixed; boundary="===============0548657873=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0548657873==
Content-Type: multipart/alternative; boundary="000000000000c1d2d305b64ace8d"

--000000000000c1d2d305b64ace8d
Content-Type: text/plain; charset="UTF-8"

Hello

I've been working on software related to spice for a few months now and
have been wondering about a number of things I was hoping could get
clarified

The website seems to be quite outdated. It points to Bugzilla, the
documentation has a lot of missing parts, etc. Is there any source for up
to date documentation on Spice?

Specifically I've been trying to understand the QUIC image format, however
the source code makes heavy use of defines used in a way similar to C++'s
templates, I was hoping there'd be some documentation somewhere.

The site also lists a number of upcoming features on
https://www.spice-space.org/features.html - is this an authoritative
source? Where are features tracked for Spice?

For example this is two years old and would be nice to see:
https://gitlab.freedesktop.org/spice/spice-protocol/-/issues/4

It seems there's still updates done to spice seeing all the PATCH mails,
but where is this coordinated?

Thanks
M.

--000000000000c1d2d305b64ace8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello<div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;ve been working on=
 software related to spice for a few months now and have been wondering abo=
ut a number of things I was hoping could get clarified</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">The website seems to be quite outdated. It p=
oints to Bugzilla, the documentation has a lot of missing parts, etc. Is th=
ere any source for up to date documentation on Spice?</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">Specifically I&#39;ve been trying to understa=
nd the QUIC image format, however the source code makes heavy use of define=
s used in a way similar to C++&#39;s templates, I was hoping there&#39;d be=
 some documentation somewhere.=C2=A0</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">The site also lists a number of upcoming features on=C2=A0<div=
 dir=3D"auto"><a href=3D"https://www.spice-space.org/features.html">https:/=
/www.spice-space.org/features.html</a> - is this an authoritative source? W=
here are features tracked for Spice?</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">For example this is two years old and would be nice to see:</d=
iv><div dir=3D"auto"><div><a href=3D"https://gitlab.freedesktop.org/spice/s=
pice-protocol/-/issues/4">https://gitlab.freedesktop.org/spice/spice-protoc=
ol/-/issues/4</a></div><div dir=3D"auto"><br></div><div dir=3D"auto">It see=
ms there&#39;s still updates done to spice seeing all the PATCH mails, but =
where is this coordinated?</div><br></div><div dir=3D"auto">Thanks</div><di=
v dir=3D"auto">M.</div><div dir=3D"auto"><br></div></div>

--000000000000c1d2d305b64ace8d--

--===============0548657873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0548657873==--
