Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8086B304F27
	for <lists+spice-devel@lfdr.de>; Wed, 27 Jan 2021 03:22:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 978B06E04A;
	Wed, 27 Jan 2021 02:22:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com
 [IPv6:2607:f8b0:4864:20::d2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E805F6E04A
 for <spice-devel@lists.freedesktop.org>; Wed, 27 Jan 2021 02:22:46 +0000 (UTC)
Received: by mail-io1-xd2d.google.com with SMTP id u8so329522ior.13
 for <spice-devel@lists.freedesktop.org>; Tue, 26 Jan 2021 18:22:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=WmK8+Ut50gyFWnJT+U+RTU6eABfKSuIU2YacC+ik3N8=;
 b=qka4t/qhT4wX1JIXc38d732SIhl0dh9GTbMVRruOBz0YAc1ed7SmfHXpyr8DLO5KVL
 UmUbivVpG4fAxIhFAMOKYRr95fzpqi8belkJWtzVMjueX9U2lseDY+gipq0nWnz7T7QQ
 OwmV1MQTeictTuKF40/2Pd/mr5cc+wwlvS+WwpsuOlLwpDFfXIjBi9xFEb0hHYw1q8Rg
 5wKjJnA+w/dyN1ZXNndGTpUkHaCjv6GRE6OgfWZJm1kuEIS/xIBQ9HBDY9u6/mSaZF7F
 EJj2S9axzeLkdXISrI5anfx9ZLkWkO5+crkG0AiDDOuifjt2xfUgtuIEaWJ4xZpZ7AUW
 epbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=WmK8+Ut50gyFWnJT+U+RTU6eABfKSuIU2YacC+ik3N8=;
 b=WhA36gzWqKG7kxzs9stfSjd0gQlNPNqRFTutXkTy2Aq6IxDxplfcR/sQnx1GKX4HKe
 o5gOB8juojLP4C54nlRG9D9ttTxtVfmvojDaBvzLaFfIMNTi8jqAjAH0/J6jbsn3J2uf
 bPOZneHCresOFKQAV+7vkDuY/B9p8xhpH2Kv6awFUWtWNAaIMFt9nKPwenjqgPQrOE2N
 mbNzWEt5/rQwRAbzcQh0U1pk0oTXmv21egOVo3QCBZryVa2vuvvHuHlOon+d/HDmPOGt
 ksRU0wGsltCWRzyzKforD2181Gun/7WfRTIbKpRPvu7HfQQDgV+RBnP69ecwNkrq/XEP
 ZXfg==
X-Gm-Message-State: AOAM532Uk8evd9hZGQ35nEslqMJ22dtOJTgYVuPlIrt5mtLN4DCseaBh
 rznWGVPvcnoPZ4CT0lJyxQxJMhC0dApX5C5emtmFNov/rRI=
X-Google-Smtp-Source: ABdhPJwMhGjYWU2sSpQDIiWxXus7XaxumADKcNrXdAoyGGxzdYEernhwb+I1/n9nFCQWs0EqdQyhCOLL9xM/elADX/k=
X-Received: by 2002:a05:6602:2f89:: with SMTP id
 u9mr6045665iow.99.1611714166154; 
 Tue, 26 Jan 2021 18:22:46 -0800 (PST)
MIME-Version: 1.0
From: lx <lxlenovostar@gmail.com>
Date: Wed, 27 Jan 2021 10:22:35 +0800
Message-ID: <CA+5jrfnjJnAi+FSCcHxNsyX=fnRF4RGFBOsH-+CHUbdNxeT-Fg@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Subject: [Spice-devel] [spice-devel]Is the data after USB camera redirection
 compressed?
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
Content-Type: multipart/mixed; boundary="===============0033039325=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0033039325==
Content-Type: multipart/alternative; boundary="0000000000005a6bb005b9d87275"

--0000000000005a6bb005b9d87275
Content-Type: text/plain; charset="UTF-8"

Hi all:
       If I redirect USB camera to virtual machine, I think we send
original URB to virtual machine by USB channel.
Is this understanding correct? If we want to improve the user experience,
we need to compress URB data?


Thank you

--0000000000005a6bb005b9d87275
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all:<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0If I redirect USB c=
amera to virtual machine, I think we send original URB to virtual machine b=
y USB channel.=C2=A0</div><div>Is this understanding correct? If we want to=
 improve the user experience, we need to compress URB data?</div><div><br><=
/div><div><br></div><div>Thank you</div></div>

--0000000000005a6bb005b9d87275--

--===============0033039325==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0033039325==--
