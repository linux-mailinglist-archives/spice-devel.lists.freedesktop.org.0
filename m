Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E77FFF4B6
	for <lists+spice-devel@lfdr.de>; Sat, 16 Nov 2019 19:22:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B64116E108;
	Sat, 16 Nov 2019 18:22:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E312C6E108
 for <spice-devel@lists.freedesktop.org>; Sat, 16 Nov 2019 18:22:41 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id v8so14194764ljh.5
 for <spice-devel@lists.freedesktop.org>; Sat, 16 Nov 2019 10:22:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=R40mmE3HizFhzQtKxHXjOlOl9FpgHAQ7bT1GUirGn0o=;
 b=ne0YfwC+3rD4/uYi+0dpTuqxdQ4oSkOKdbDikFakEps3Uh1otccH/6Y0qmzjk1mQIv
 c5cyPfVY5zn8ZvCj/aAZ8hqXQLrHxywGRbSDXywWepUnhPjEBTXaNlgiBQ0S0IuMY/W5
 qyxTeP40ZHLewyvjugcLJWOv7+XYu0Nr9UlQbycB+o6D7Mjn7gY3LIGGOlYIe0UPO/oO
 o9jsX5AC7XiQOMnH5Q9wyQHI6cGkDj7sz6YsGWeiDzOZlrQyc6OVuKzfCr7BIAjbYmUB
 3R//GulHeatiDdjScSPUlLC6opr3/GSSBO38Jw4OEhseYkhwPZKFlvPtZAlAOBywtSfm
 n4tQ==
X-Gm-Message-State: APjAAAVnEX7YxRty9oozC4YGdQd+yk67WXrZcXtAT7aT8ujtwz8l5BNY
 URVhs5L/d64MosYoSoSdeUJ43vi+vDxnuj2MoA4T4w==
X-Google-Smtp-Source: APXvYqzMc8f/oa1gKTejxxlPZ2kBH7hJ3nNpQLmZhnfkKecvK1Nkc6BkhItY99//iRD8Zu/ZuIArK86vFmYq9uO5sU8=
X-Received: by 2002:a2e:b4da:: with SMTP id r26mr3295949ljm.153.1573928560063; 
 Sat, 16 Nov 2019 10:22:40 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Date: Sat, 16 Nov 2019 12:22:28 -0600
Message-ID: <CAGeBE=zw4FUJg5Trej1C6A=HXTits7=L6OzZy-PwiEG2pF8ZrA@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=R40mmE3HizFhzQtKxHXjOlOl9FpgHAQ7bT1GUirGn0o=;
 b=pwNk3wtslAILYS5vXPLEA4W3d/xsqqcEfqqQW6ePkbZtDulUW7TqHQFOSHOO2R1+bq
 HT/xIrJNulTrdmggkZK07htNdxzs9ALzgtfBbjLUXhFsURq2eUa+osDcKRw/yIlt124a
 WnxEFshhq8p0VKp3wSwx/fZA7TV8p5SXV69/+h3MxCDbVW2p37WL+t5qNhYbuHnfmXsv
 LyYfmnJ0/kvWhKQqI2AUWLoI4FkyO9lHP3KhYl4dN3FGx54M/IOSQFoiEzONKL5J6vuB
 2qDSMrjJ6DVKj5i+5P5zWusIPnQZ+o2t8ExO5PCLR+XtILwGDhTeBi2ezX9Yu7FzJITD
 TuGQ==
Subject: [Spice-devel] Spice thin clients
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
Content-Type: multipart/mixed; boundary="===============0685950639=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0685950639==
Content-Type: multipart/alternative; boundary="000000000000b97a0905977acce8"

--000000000000b97a0905977acce8
Content-Type: text/plain; charset="UTF-8"

We're thinking in mounting a PC lab with circa 20 PCs, but by using thin
clients.

What we'd like to do is, one big KVM server with the Windows VMs, and each
PC client to access them as a thin client, using either cheap small PCs or
Raspberry Pi. Preferably the later.

But I'm lost as to how to even begin. Should I just mount a minimalistic
command-line-only Linux distribution in each client, then somehow make it
automatically start the corresponding VM via virt-viewer?

Or are there ways for the PC client to be OS-less and somehow directly boot
a VM via PXE or something?

Thanks.

--000000000000b97a0905977acce8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>We&#39;re thinking in mounting a PC lab with circa 20=
 PCs, but by using thin clients.</div><div><br></div><div>What we&#39;d lik=
e to do is, one big KVM server with the Windows VMs, and each PC client to =
access them as a thin client, using either cheap small PCs or Raspberry Pi.=
 Preferably the later.</div><div><br></div><div>But I&#39;m lost as to how =
to even begin. Should I just mount a minimalistic command-line-only Linux d=
istribution in each client, then somehow make it automatically start the co=
rresponding VM via virt-viewer?</div><div><br></div><div>Or are there ways =
for the PC client to be OS-less and somehow directly boot a VM via PXE or s=
omething?</div><div><br></div><div>Thanks.<br></div></div>

--000000000000b97a0905977acce8--

--===============0685950639==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0685950639==--
