Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 331E83BF7DE
	for <lists+spice-devel@lfdr.de>; Thu,  8 Jul 2021 11:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1675B6E8AB;
	Thu,  8 Jul 2021 09:59:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com
 [IPv6:2607:f8b0:4864:20::129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A63F6E8A3
 for <spice-devel@lists.freedesktop.org>; Thu,  8 Jul 2021 09:55:51 +0000 (UTC)
Received: by mail-il1-x129.google.com with SMTP id g3so6056703ilj.7
 for <spice-devel@lists.freedesktop.org>; Thu, 08 Jul 2021 02:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ijr79wV8xXw1xxpR/5hlJbg6SDwWl4ysMy9GslbNYe0=;
 b=DUEMOm9K9+D40gpRjJqwpKBMlDep4lxXq3IRp0fplq8PM2myUxoiY4c6P4o4oac0EV
 T2o1Uno2dqwR19BV6BdG/mNt8MlEAkosqTiP4dUFjC6Xu4QWmglAwk/cvGfpK4+6PPRq
 SwrcXINXeTxqdBr+hT7lHzBxf4POWLO6aN4Q7PuWebgPfRP3dVfysux+oHQHqBK95aaG
 Y3gouEBu8P+NRQ1+QxpN2tBwnNIFlpff7y6BCRJ/Zn9pL3XuuwjSLfjnOb0N8j2iVP+6
 Hw8E4uKUIPobWDwD8ucl49xvTdX3ON9znrqjdsqaM8vj40J+lGs87ggVVz534TsSDxT0
 dVbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ijr79wV8xXw1xxpR/5hlJbg6SDwWl4ysMy9GslbNYe0=;
 b=uAxMe4dB9NJDxaq440vZNSRtAVpqXQ/lwjXJlDUrlYXlwzDrSUucPe+3FqqntYYD7p
 pazVOkDNmKsndKautdygRKMwnzRI67B1LLNJV7l6gNPYDqosRofMZd4KDw6dNe0qLmG6
 RWYV/6+ycJzxtGjpwo5br5jPqOfye6BTBWzzjh3Nbc82zyVesqzrWVBfk5eGrLIheSaB
 Sa3laniMyPI26oI6XTM0hBn6bJ7KDWyaZE//JabQw+wyzasa9HUgBjqQxIO2CYjfbHhE
 eaDFlIT3avUSCYCdN/OINXGfUQnd2TGnTW4/kQ6pX9HFDEAkZ0p+a2ZQg4ELjgHoM2lP
 bl0Q==
X-Gm-Message-State: AOAM533Q7kWYwxe/HjMRYFAjPHhBmuzJAfQMXqTXp27kWl6wBhPEssjI
 o/aFGjvcZl5rYJ5sOHff/7S7CDxdH+o9ln1EEhDYcFy7r5SI
X-Google-Smtp-Source: ABdhPJycQahwUU8ieJxw2QNon6KNjMXbVnorxKzBSwsO1jB8fJZkMpZaKFuuEqbbX4yrOsMxOPaKRSl5x8TLkSet/mY=
X-Received: by 2002:a92:c952:: with SMTP id i18mr21558010ilq.218.1625738150274; 
 Thu, 08 Jul 2021 02:55:50 -0700 (PDT)
MIME-Version: 1.0
From: Sofia Son <admjral3@gmail.com>
Date: Thu, 8 Jul 2021 16:55:39 +0700
Message-ID: <CAEZZRpSyMhA9QUq8EnW5CYK0F56VvFgkquqS8318C_AaqV6rNg@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Thu, 08 Jul 2021 09:59:39 +0000
Subject: [Spice-devel] Speed of file transfers
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
Content-Type: multipart/mixed; boundary="===============0600662389=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0600662389==
Content-Type: multipart/alternative; boundary="000000000000f1eaaa05c699a84f"

--000000000000f1eaaa05c699a84f
Content-Type: text/plain; charset="UTF-8"

 hello,i use proxmox host, and remote vms by spice, and why speed file
transfers through drag and drop is slowly,only 150kb -230kb/s ,how can i
improve this speed ?although in LAN but when i drag and drop file i have to
compress file,cant be transfer folder

--000000000000f1eaaa05c699a84f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(51,51,51);font-family:Helvetica,A=
rial,sans-serif;font-size:14px">=C2=A0hello,i use proxmox host, and remote =
vms by spice, and why speed file transfers through drag and drop is slowly,=
only 150kb -230kb/s ,how can i improve this speed ?although in LAN but when=
 i drag and drop file i have to compress file,cant=C2=A0be transfer folder<=
/span><br></div>

--000000000000f1eaaa05c699a84f--

--===============0600662389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0600662389==--
