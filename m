Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7413FAF02F
	for <lists+spice-devel@lfdr.de>; Tue, 10 Sep 2019 19:12:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 029FD6E944;
	Tue, 10 Sep 2019 17:12:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB3E06E943
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 17:10:50 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id v38so17828462edm.7
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 10:10:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=4o8eC73L6U3UN90ZxoG5S4qvbULZUP+HCUn8CESrm8o=;
 b=eJMk7TkMB+pGnmxhziY5n3jjRWG2j2tcfGLAcpnpS/1dFbd/pD4cUxEbAHFM3Cnsku
 WYPH2s4seHXaerPRU7k36eqMkocJz7RUmbIE1Y8aXoeOgOCaptxSTc1ba4eeTxmb2Oxe
 cBaQ8nSzbPETNFuyWeyhBJX955hDjNJQ65OvUTR99lnt7APBYS8QE0bXJ8oUu27JqV/m
 oHp+I0Kvedk4Jlbi83B4vIfJjt3VKxmBGygKmu4Y7EjGEcI0R6gTOjEIJd0kSxRVUt5F
 EgCX5tkuV4mWY992oVwJnhi8aq6wIOf3gdnSJl9rI7sh3IdWsw9q11x9IAGk1xTCFsT4
 yw4Q==
X-Gm-Message-State: APjAAAUHU9QY+mq9SsQpFr/DQUPD4FqSrzUDUzElwM2IkXdmyODbZ/3F
 /AIA6UFP8xzfe9XACACX79bWKRWfmVLwJG8aoijlrl9U
X-Google-Smtp-Source: APXvYqwOLvtmQQU2q+JrRR1eSJSpTLLli6bhDZSQB5vMGGFoyhT+qDvAf3j5ToMdRacph0IYSq4fG360lbc0NbhKhaA=
X-Received: by 2002:aa7:db43:: with SMTP id n3mr31084873edt.136.1568135448840; 
 Tue, 10 Sep 2019 10:10:48 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Aleix_Arag=C3=B3n?= <aaragon@elpuig.xeill.net>
Date: Tue, 10 Sep 2019 19:10:37 +0200
Message-ID: <CAKd2-H+aFEfqAwNje-9qwKT27EzALriUbsi9X0YifKviP2JYxA@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Tue, 10 Sep 2019 17:12:10 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=elpuig-xeill-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=4o8eC73L6U3UN90ZxoG5S4qvbULZUP+HCUn8CESrm8o=;
 b=heoqZtbpeoia5kXiZqtkh8RicI8PU8iGA8TowXPbDv1mHSx9w+006UICpYQO8lfGu/
 nNGqBRWuBPZZ/Bz0YHrbNM7vHDzVwpZgq+G+g2uDCUo4zR0PPwKbBfE11r1D24rzv/ik
 K+cbZ4+L+vMZNN6sX+9HLSUxGuCMDfC5kRORNgwM62Yf/59OsFDnS6gAhx31fpU7ZbJx
 hfR8P7M450WgyBDp0+k6ZFZznpKTU5QX7M4Xk48SBelXFBaUOlNokNT3kENIRy2llAtl
 MdAZSTIAM6vj4mcXgEtNYbU0z5YqJdMe9+IcouR+2aDW9zqBmCk4Hojx3+I3Xf6qIwSO
 1FSQ==
Subject: [Spice-devel] spice client using virt-viewer alternative?
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0850518873=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0850518873==
Content-Type: multipart/alternative; boundary="000000000000635fc0059235fc80"

--000000000000635fc0059235fc80
Content-Type: text/plain; charset="UTF-8"

Sorry if these message is not for this department, don't know what mail use
for doubts like this.

Always for the client is required to download something like "virt-viewer"
to connect and watch the machine on the server?
I mean, I can't make the client to just connect to my page and don't
download nothing? just connect and click a button.

My case: I have several users that connects to my page and they do they
job, and they are always dynamically, always different people.
They must download virt-viewer to watch the machine on the server or are an
alternative that doesn't need to download something?

--000000000000635fc0059235fc80
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sorry if these message is not for this department, do=
n&#39;t know what mail use for doubts like this.</div><div><br></div>Always=
 for the client is required to download something like &quot;virt-viewer&qu=
ot; to connect and watch the machine on the server?<br>I mean, I can&#39;t =
make the client to just connect to my page and don&#39;t download nothing? =
just connect and click a button.<div><br></div><div>My case: I have several=
 users that connects to my page and they do they job, and they are always d=
ynamically, always different=C2=A0people.</div><div>They must download virt=
-viewer to watch the machine on the server or are an alternative that doesn=
&#39;t need to download something?</div></div>

--000000000000635fc0059235fc80--

--===============0850518873==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0850518873==--
