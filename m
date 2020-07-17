Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE32E225074
	for <lists+spice-devel@lfdr.de>; Sun, 19 Jul 2020 09:34:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2070E6E4CA;
	Sun, 19 Jul 2020 07:34:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com
 [IPv6:2607:f8b0:4864:20::729])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 660D86E225
 for <spice-devel@lists.freedesktop.org>; Fri, 17 Jul 2020 17:18:03 +0000 (UTC)
Received: by mail-qk1-x729.google.com with SMTP id q198so9436649qka.2
 for <spice-devel@lists.freedesktop.org>; Fri, 17 Jul 2020 10:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=h38TQwCBImDBfQsB6PwxurXhJJ3k3kt0HsW6a6idhA4=;
 b=BrcZHnii77JiWAJndNorZt/lU8/B4Q20xuAe8XH7Dl9SuKoJjkVvd60mLuV3oEW1zb
 Ffd2qrOGAJ91K2Hmt3bzbV2HoFvtcnjosiuxyB1XFlXOfo3ZpVGLBnoxezhpcygB1NSQ
 suQ/fMkw2xPu3juH1sciEv/GJTyERkeKWm2Umr3S/OB+Jawg7ShEvrIg/PqWIjZRKuSb
 xpGoaQhjYvPnAw0FI4knrKe6gNbvqSon3wYyi/1UoKK7L5EyiuoBX38EHltWsyzauDAx
 SEz1blKHdIbK2Vi7e+8Dq0aIyIoDCgyixFp8qT+7W6osh/3/8seVuVDE+PZ8ZlhYUH8m
 drvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=h38TQwCBImDBfQsB6PwxurXhJJ3k3kt0HsW6a6idhA4=;
 b=UYBHGZMLnkmlnVagfw6hennk+AW7WttK7e7jDLnlM3dL7tm/wu5K/x6FHh+E8MOSV6
 kKTw2pRXkQNwtNT6KNznwpL4ZIvlh+tcneF6qmdJBskM1izkLC74orbibBr2s47KabWs
 wH+KlyhJ008JGCTOaUVGQZbmoLM0qYDi+weclBEHeYpZeHhOsbn7/A0otns/Ug9IdxBs
 Rt7a6aBjVEcfYXygQrVFiEWbGzjCAkoTQ5Uk6ZJJApidzEapkpzEfNPMLucsYBAji0/w
 LQV6zHbrmldIgnpKZaRlkEjKSz9MFTj2fI5LYdn1J1o0vo/BoBaQ5Rs+7+cjDrLr1oTL
 CzVQ==
X-Gm-Message-State: AOAM533nKKa3JZ933q9UqutSbJphwCteuM2HtfFZ1uAVXu/xMufwhZB4
 N+UVVQuMqEgVfEKLKssnurVTEj7kWk9t20gPs9oks9gt6IY=
X-Google-Smtp-Source: ABdhPJxgx76r5k0MWb/vj63O930IyBCYEIxudo43ttfwPcUiU6D7eoQO3jXvK7vGp+DuWCK1QFaE6VLkX13uVdkl9Q0=
X-Received: by 2002:a37:b987:: with SMTP id
 j129mr10201203qkf.120.1595006282230; 
 Fri, 17 Jul 2020 10:18:02 -0700 (PDT)
MIME-Version: 1.0
From: Koopa Koopa <codingkoopa@gmail.com>
Date: Fri, 17 Jul 2020 13:17:51 -0400
Message-ID: <CAM1wO0mtiMoPAmH89pbCLQPS215fd0Nyq9E79TZDRyHNUHApfQ@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Sun, 19 Jul 2020 07:34:08 +0000
Subject: [Spice-devel] Can't write from guest to host with webdav
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
Content-Type: multipart/mixed; boundary="===============1479439369=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1479439369==
Content-Type: multipart/alternative; boundary="000000000000ddede205aaa65609"

--000000000000ddede205aaa65609
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm looking to share a folder between my Arch Linux host and a Windows 10
guest, and SPICE's folder sharing with webdav seems to be the best option
for me. I've set up the QEMU devices that webdav needs, and installed the
Windows service. I have the drive mapped, and am able to navigate the host
folder (apart from the occasional "Windows cannot access
\\localhost@9843\DavWWWRoot\"
that doesn't occur again), and copy files from the host to the guest. When
trying to copy a new file (with data) or write to an existing file from the
guest, though, the application (e.g. File Explorer, or other programs which
save files) hangs for a little bit, before the transaction fails. For File
Explorer, it displays "Error 0x80070021: The process cannot access the file
because another process has locked a portion of the file."

This is the output of remote-viewer:
  (remote-viewer:16120): GSpice-WARNING **: 12:58:46.205: Warning no
automount-inhibiting implementation available

  (remote-viewer:16120): phodav-WARNING **: 12:58:57.910:
(../phodav-2.4/libphodav/phodav-method-propfind.c:70):prop_resourcetype:
code should not be reached

  (remote-viewer:16120): phodav-WARNING **: 12:59:04.714:
(../phodav-2.4/libphodav/phodav-method-propfind.c:70):prop_resourcetype:
code should not be reached

  (remote-viewer:16120): GSpice-WARNING **: 12:59:04.793:
(../spice-gtk-0.38/src/channel-webdav.c:330):demux_to_client_cb: runtime
check failed: (size == c->demux.size)
  phodav-Message: 13:00:06.047: missing lock: /testfile
urn:uuid:ceb212f1-f8af-4dd3-b36c-a7e627b6c08a
  phodav-Message: 13:00:06.062: missing lock: /testfile
urn:uuid:ceb212f1-f8af-4dd3-b36c-a7e627b6c08a
  phodav-Message: 13:00:06.076: missing lock: /testfile
urn:uuid:ceb212f1-f8af-4dd3-b36c-a7e627b6c08a

I read that the first GSpice error always occurs on non-GNOME host
environments. The phodav error occurs whenever I view the root directory of
the share, or try copying/writing to a file anywhere in the share. The
second GSpice and other phodav messages occur when copying/writing a file
in the share.

This occurs both with remote-viewer, and spicy. The same result occurs
whether or not I have the "Read only" checkbox in remote-viewer checked.

Thanks!

--000000000000ddede205aaa65609
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I&#39;m looking to s=
hare a folder between my Arch Linux host and a Windows 10 guest, and SPICE&=
#39;s folder sharing with webdav seems to be the best option for me. I&#39;=
ve set up the QEMU devices that webdav needs, and installed the Windows ser=
vice. I have the drive mapped, and am able to navigate the host folder (apa=
rt from the occasional &quot;Windows cannot access \\localhost@9843\DavWWWR=
oot\&quot; that doesn&#39;t occur again), and copy files from the host to t=
he guest. When trying to copy a new file (with data) or write to an existin=
g file from the guest, though, the application (e.g. File Explorer, or othe=
r programs which save files) hangs for a little bit, before the transaction=
 fails. For File Explorer, it displays &quot;Error 0x80070021: The process =
cannot access the file because another process has locked a portion of the =
file.&quot;<br></div><div><br></div><div>This is the output of remote-viewe=
r:<br></div><div>=C2=A0 (remote-viewer:16120): GSpice-WARNING **: 12:58:46.=
205: Warning no automount-inhibiting implementation available<br>=C2=A0 <br=
>=C2=A0 (remote-viewer:16120): phodav-WARNING **: 12:58:57.910: (../phodav-=
2.4/libphodav/phodav-method-propfind.c:70):prop_resourcetype: code should n=
ot be reached<br>=C2=A0 <br>=C2=A0 (remote-viewer:16120): phodav-WARNING **=
: 12:59:04.714: (../phodav-2.4/libphodav/phodav-method-propfind.c:70):prop_=
resourcetype: code should not be reached<br>=C2=A0 <br>=C2=A0 (remote-viewe=
r:16120): GSpice-WARNING **: 12:59:04.793: (../spice-gtk-0.38/src/channel-w=
ebdav.c:330):demux_to_client_cb: runtime check failed: (size =3D=3D c-&gt;d=
emux.size)<br>=C2=A0 phodav-Message: 13:00:06.047: missing lock: /testfile =
urn:uuid:ceb212f1-f8af-4dd3-b36c-a7e627b6c08a<br>=C2=A0 phodav-Message: 13:=
00:06.062: missing lock: /testfile urn:uuid:ceb212f1-f8af-4dd3-b36c-a7e627b=
6c08a<br>=C2=A0 phodav-Message: 13:00:06.076: missing lock: /testfile urn:u=
uid:ceb212f1-f8af-4dd3-b36c-a7e627b6c08a</div><div><br></div><div>I read th=
at the first GSpice error always occurs on non-GNOME host environments. The=
 phodav error occurs whenever I view the root directory of the share, or tr=
y copying/writing to a file anywhere in the share. The second GSpice and ot=
her phodav messages occur when copying/writing a file in the share.</div><d=
iv><br></div><div>This occurs both with remote-viewer, and spicy. The same =
result occurs whether or not I have the &quot;Read only&quot; checkbox in r=
emote-viewer checked.<br></div><div><br></div><div>Thanks!<br></div></div>

--000000000000ddede205aaa65609--

--===============1479439369==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1479439369==--
