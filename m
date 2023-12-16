Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA8B81587E
	for <lists+spice-devel@lfdr.de>; Sat, 16 Dec 2023 10:16:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0654410E086;
	Sat, 16 Dec 2023 09:16:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69E1F10EABB
 for <spice-devel@lists.freedesktop.org>; Sat, 16 Dec 2023 00:08:07 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id
 98e67ed59e1d1-286b45c5a8dso1034170a91.1
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Dec 2023 16:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1702685287; x=1703290087; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=C02EbFfQXxJRmn8j+bn8k/EaOaPsQpo8T8DE6pf7180=;
 b=m7Ujd+m8Lf5YSGCpkjRMHoEq9dechnPiVDUJOl+IgwcqmoE/xEhOMslii+xNG7kAaf
 MvIa3b/XI3J+FyRLPREfFnqjtVUD34XIAQ4WaolWesRX7iu4d1S1LD+q/HFPhkcaVCji
 beclxxCVLTRuUcZQmcL//HCzfinXwChD6U1oJhdyS/TBHnySYArKC9+n6qR6nD8YQfng
 Rs+dhWO4hcpUMS1Hrc8tIFDqcobbA25jC1CsQFGxpIHXhY0I+Kivz6Auc/cw8moUbrJA
 /aEhHmYb6dyRftpy9CKtGOye6M+nmrWIZsvWKvv+1V30wNArVOBDf6InSer/yWX+sxdS
 ui5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702685287; x=1703290087;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=C02EbFfQXxJRmn8j+bn8k/EaOaPsQpo8T8DE6pf7180=;
 b=vYPv/NB/QKwNUyU4oNQk2T18xdw33Mib9Iqk7I4bJ4yqBuvWjQSokJYF7jsVpyqF9C
 PeAPo4mxXFqpGrNqt1/04szfvxMhPHNwP0y0PeMIYjGOzuyMR8+4f4MC5fuWURiO1SKR
 IyQrv/ixaD6iS0kjvXH2SbjYvno5sdTraZVGvu3PP2t5LlkSGDltRpKAtkEFB1++Hjwg
 ZAU3W7B6X6Jvx2zm3WQyXx66CpeyLjS/GoPnrojlqG6hIRWwuCwYcofbTNoUivRg0fYf
 HxdZ+GIq3xdr3MkOels8yBHr4LJpeL29lPe/OuOfvuSyagYgmMoXQ0I+Sm6sZ8qwqf9c
 9mkQ==
X-Gm-Message-State: AOJu0YwEUpjNVG65OP3pJM/zBb9yvp4R57KrPG/ilH6t7doZZ8aMPqy7
 OiHwjFKWcJ2nn9FrAI1Y7CrK0gKjPG4WKfsiPq6apasG/wA=
X-Google-Smtp-Source: AGHT+IHM7RMGKMTDjnNYmg7YZ9A50AFIVsGgzZnw9SYF0/e6MMOAspSM3hSEIuhZ7RmQkAdQph4oBcCN/UwFsJoSmbE=
X-Received: by 2002:a17:90a:970b:b0:28b:3322:687 with SMTP id
 x11-20020a17090a970b00b0028b33220687mr1164227pjo.33.1702685286638; Fri, 15
 Dec 2023 16:08:06 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Date: Sat, 16 Dec 2023 00:07:55 +0000
Message-ID: <CAGeBE=yuy8Ho7pQJEXMW03Y8wv+gP3cjC4XgKP6akphKEYeD_Q@mail.gmail.com>
Subject: Is there some problem with latest VirtIO drivers and recent Windows
 11 23H2?
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000acaa61060c954f7c"
X-Mailman-Approved-At: Sat, 16 Dec 2023 09:16:56 +0000
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

--000000000000acaa61060c954f7c
Content-Type: text/plain; charset="UTF-8"

I'm coming directly from this mess:
https://forums.opensuse.org/t/qemu-uefi-firemware-not-recognizing-qcow2-virtual-disk-at-all/171009/14

Summarizing:
QEMU Windows 11 virtual machine; it successfully had updated from 22h2 to
23h2 through Windows update, but after this ANY subsequent cumulative
update breaks the vm into BSOD after rebooting, and in the very best of
cases all changes are just reverted.
Attempting to update via directly running the latest Windows 11 ISO yields
the very same results, except that at the end it shows the BSOD code, which
hints at "faulty drivers and/or outdated BIOS firmware".
Finally, trying to install latest Windows 11 from scratch in a newly
created QEMU vm also results in failure: ISO boots, VirtIO storage driver
is loaded, installer copies files to virtual disk, reboots... NOTHING to
boot. Windows' EFI partition never shows, as if never created; thus I only
get the UEFI shell, and the cycle repeats.

I used latest VirtIO ISO version 240 for all cases.

By chance, any idea of what's happening?
Thanks.

--000000000000acaa61060c954f7c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m coming directly from this mess:</div><div><a =
href=3D"https://forums.opensuse.org/t/qemu-uefi-firemware-not-recognizing-q=
cow2-virtual-disk-at-all/171009/14">https://forums.opensuse.org/t/qemu-uefi=
-firemware-not-recognizing-qcow2-virtual-disk-at-all/171009/14</a></div><di=
v><br></div><div>Summarizing:<br></div><div>QEMU Windows 11 virtual machine=
; it successfully had updated from 22h2 to 23h2 through Windows update, but=
 after this ANY subsequent cumulative update breaks the vm into BSOD after =
rebooting, and in the very best of cases all changes are just reverted.</di=
v><div>Attempting to update via directly running the latest Windows 11 ISO =
yields the very same results, except that at the end it shows the BSOD code=
, which hints at &quot;faulty drivers and/or outdated BIOS firmware&quot;.<=
/div><div>Finally, trying to install latest Windows 11 from scratch in a ne=
wly created QEMU vm also results in failure: ISO boots, VirtIO storage driv=
er is loaded, installer copies files to virtual disk, reboots... NOTHING to=
 boot. Windows&#39; EFI partition never shows, as if never created; thus I =
only get the UEFI shell, and the cycle repeats.</div><div><br></div><div>I =
used latest VirtIO ISO version 240 for all cases.</div><div><br></div><div>=
By chance, any idea of what&#39;s happening?</div><div>Thanks.<br></div></d=
iv>

--000000000000acaa61060c954f7c--
