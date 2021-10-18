Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E69432724
	for <lists+spice-devel@lfdr.de>; Mon, 18 Oct 2021 21:10:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B429C6E0FB;
	Mon, 18 Oct 2021 19:10:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D2446E114
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Oct 2021 18:41:11 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id o24so2168552wms.0
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Oct 2021 11:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bogomips.com; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=8Y8DT67zsEKYkAfvH+Zjh4a9g3bjtZGkkkhjdr6fPk0=;
 b=N6xI50orA4kqyrRLaLwtQmrhOi3W2rmpGMAotl3UAYYskHzXerXPygmA1zxy9ZnY1g
 cLb+dXi2f++0Xl4ijlmPJFh+Q++RgEi71YnxK4rIagh0EQhi5eesK1VGEJoym0TCnLXJ
 P/Oqe3RiQrakaLb1A0h5CAOeWDS5VbkYu3bEY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=8Y8DT67zsEKYkAfvH+Zjh4a9g3bjtZGkkkhjdr6fPk0=;
 b=MDLRwI3i5aOJKL/fpDIpv6k3IQyCjwS24SHzglSwcxPbopCWSpTsYkXnuuSFt/Z1go
 cf67Levi6SnwO516uerExDxV+dwd9/vkKpmH97w7kqWtdGURz295wlyek6WWO7r5Y5m0
 v5KWEBLS0XrEsMj1iybLh7IVZG66n1/Ye1WRt0ELA+FH50AN8nzh5boY7ydiWemOZ3dT
 KlePfJkGbsodjez3uTFO7Id2s2i415//jX+rez9BG7AOj+2UV2jj2H9Ml6YRn7OnijDu
 iQB6SaFOCJNbSbt3wW95K+C+EYScsShf5agQ+DXq2ybAOzurNz3LmsdC+dadRe2yurjx
 VfgA==
X-Gm-Message-State: AOAM533fCeUQPkN8ANN0fw98JnN9CZXKmTj4ZiWwxHAkq6dWwzOF8box
 6+gMxQ5WIPDJwGviVV3/TKkLC5Z+Qyk3cWvDeUijrO8FnJDbgfTH
X-Google-Smtp-Source: ABdhPJxIT/npTa/BczOTbmDfmPhYrrtcSslmpY43Ui3jsZ51FNTkEqrjb2J7vv3/V6Rnxj6VFPw2A9rMMs5Pmb5N5O4=
X-Received: by 2002:a7b:c005:: with SMTP id c5mr609958wmb.155.1634582469487;
 Mon, 18 Oct 2021 11:41:09 -0700 (PDT)
MIME-Version: 1.0
From: John Paul Morrison <jmorrison@bogomips.com>
Date: Mon, 18 Oct 2021 11:40:49 -0700
Message-ID: <CAO-kYtFhG-cNWAUvTh-r48wAhvXBZoKQPa3SQTS=3S+VnEB8OA@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000733fd305cea4e3dc"
X-Mailman-Approved-At: Mon, 18 Oct 2021 19:10:05 +0000
Subject: [Spice-devel] vdagent, pho-dav for Darwin/OSX?
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000733fd305cea4e3dc
Content-Type: text/plain; charset="UTF-8"

Hi

I'm looking into vdagent and pho-dave for OSX and was wondering if anyone
had started anything.

I have virtio serial interfaces passed through to the qemu OSX guest:

crw-rw-rw-  1 root  wheel   18,   4 Oct 18 04:10 /dev/tty.com.redhat.spice.0
crw-rw-rw-  1 root  wheel   18,   2 Oct 18 04:10
/dev/tty.org.qemu.guest_agent.0
crw-rw-rw-  1 root  wheel   18,   0 Oct 18 04:10
/dev/tty.org.spice-space.webdav.0

/usr/libexec/AppleQEMUGuestAgent opens /dev/tty.org.qemu.guest_agent.0 by
default.

There's activity on the other ttys. When tty.com.redhat.spice.0 is opened,
remote-viewer releases the mouse and sends data with mouse activity.

I'm not sure where to get started - I thought maybe I could test some
things in XQuartz first.  Hoping this can be done in user space.

thanks

John Paul

--000000000000733fd305cea4e3dc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr">Hi<div><br></div><div>I&#39;m looking=C2=A0into =
vdagent and pho-dave for OSX and was wondering if anyone had started anythi=
ng.</div><div><br></div><div>I have virtio serial interfaces passed through=
 to the qemu OSX guest:</div><div><br></div><div><div>crw-rw-rw-=C2=A0 1 ro=
ot=C2=A0 wheel=C2=A0 =C2=A018,=C2=A0 =C2=A04 Oct 18 04:10 /dev/tty.com.redh=
at.spice.0</div><div>crw-rw-rw-=C2=A0 1 root=C2=A0 wheel=C2=A0 =C2=A018,=C2=
=A0 =C2=A02 Oct 18 04:10 /dev/tty.org.qemu.guest_agent.0</div><div>crw-rw-r=
w-=C2=A0 1 root=C2=A0 wheel=C2=A0 =C2=A018,=C2=A0 =C2=A00 Oct 18 04:10 /dev=
/tty.org.spice-space.webdav.0</div></div><div><br></div><div>/usr/libexec/A=
ppleQEMUGuestAgent opens=C2=A0/dev/tty.org.qemu.guest_agent.0 by default.</=
div><div><br></div><div>There&#39;s activity on the other ttys. When tty.co=
m.redhat.spice.0 is opened, remote-viewer releases the mouse and sends data=
 with mouse activity.</div><div><br></div><div>I&#39;m not sure where to ge=
t started - I thought maybe I could test some things in XQuartz first.=C2=
=A0 Hoping this can be done in user space.</div><div><br></div><div>thanks<=
/div><div><br></div><div>John Paul</div><div><br></div><div><br></div><div>=
<br></div><div><br></div></div></div></div></div></div></div>

--000000000000733fd305cea4e3dc--
