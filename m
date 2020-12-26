Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 178772E2ECC
	for <lists+spice-devel@lfdr.de>; Sat, 26 Dec 2020 18:50:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF7D5891AF;
	Sat, 26 Dec 2020 17:50:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 588 seconds by postgrey-1.36 at gabe;
 Sat, 26 Dec 2020 17:49:59 UTC
Received: from w1.tutanota.de (w1.tutanota.de [81.3.6.162])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58EE2891AF
 for <spice-devel@lists.freedesktop.org>; Sat, 26 Dec 2020 17:49:59 +0000 (UTC)
Received: from w3.tutanota.de (unknown [192.168.1.164])
 by w1.tutanota.de (Postfix) with ESMTP id BC22AFBF4D5
 for <spice-devel@lists.freedesktop.org>; Sat, 26 Dec 2020 17:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1609004408; 
 s=s1; d=tuta.io;
 h=From:From:To:To:Subject:Subject:Content-Description:Content-ID:Content-Type:Content-Type:Content-Transfer-Encoding:Cc:Date:Date:In-Reply-To:MIME-Version:MIME-Version:Message-ID:Message-ID:Reply-To:References:Sender;
 bh=ZmD34BVYo0RkdDhnWF7VSfn7ET9VkphkhRUoUyFk13c=;
 b=DvSFjNqsIRNSsW0hLyLFQPpoXizpCE2ohzWUd8E9vbKGHjQiEMDj+Miswy1FlInR
 T75dD3B5gUqeD5B7X9wPTQBIwlu7OFBW9W1I7kT0WWp276HnOuR4qMHm8IxH2FO6nCn
 uKurkJAOnsNCsUNecISAamVpW6BU6BmKS4ZpAVvUJeq5vmeuxmYHvT6Fil5waCY51i/
 vSMsK66Puc/kclYyRuBIHQhYkR4zZ9RmIQfxqDMgmn5IJ2uDpFJqjAZnILMkn96ehu4
 x8PTbhXL/HVfyiPuEIC1qtDf1maCpXtd+TydDLBfpUWu7PjjybAW5+g9Knu8ZBdyaxK
 vKgYBQ+kvg==
Date: Sat, 26 Dec 2020 18:40:08 +0100 (CET)
From: giters@tuta.io
To: spice-devel@lists.freedesktop.org
Message-ID: <MPV7hSS--3-2@tuta.io>
MIME-Version: 1.0
Subject: [Spice-devel] remote-viewer disconnected when unplugging laptop
 from dock and switching to WIFI network.
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
Content-Type: multipart/mixed; boundary="===============0256265731=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0256265731==
Content-Type: multipart/alternative; 
	boundary="----=_Part_88020_1946811451.1609004408755"

------=_Part_88020_1946811451.1609004408755
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have installed virt-viewer 9.0 on a Windows laptop and use it to connect =
to virtual machines in a remote Proxmox VE server. I noticed when I unplugg=
ing the laptop from docking station (where it is connected through a networ=
k cable), and switching to WIFI network, the virt-viewer window will disapp=
ear. I assume the virt-viewer is not making attempts to reconnect when netw=
ork get lost.=20

I noticed when I clicked the console button on the Proxmox VE server, it ac=
tually download a download.vv file. When I click the download.vv file it ac=
tually uses the remote-viewer.exe to open it. There seems no option in the =
download.vv file or remote-viewer.exe that can configure the retry attempts=
.

So can we add a feature to the remote-viewer.exe to make it retry for some =
attempts? Just like the Windows RDP when disconnected, it will show "The co=
nnection has been lost. Attempting to reconnect to your session, Connection=
 attempt: 1 of 20". (Example picture here:=C2=A0https://social.technet.micr=
osoft.com/Forums/azure/en-US/7c0cc2f3-0378-4f98-a2e7-d23a3925df2c/configure=
-unlimited-number-of-attempts-on-the-client-to-reconnect-the-host-via-remot=
e-desktop=C2=A0)

------=_Part_88020_1946811451.1609004408755
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
<div>I have installed virt-viewer 9.0 on a Windows laptop and use it to con=
nect to virtual machines in a remote Proxmox VE server. I noticed when I un=
plugging the laptop from docking station (where it is connected through a n=
etwork cable), and switching to WIFI network, the virt-viewer window will d=
isappear. I assume the virt-viewer is not making attempts to reconnect when=
 network get lost. <br></div><div><br></div><div>I noticed when I clicked t=
he console button on the Proxmox VE server, it actually download a download=
.vv file. When I click the download.vv file it actually uses the remote-vie=
wer.exe to open it. There seems no option in the download.vv file or remote=
-viewer.exe that can configure the retry attempts.<br></div><div><br></div>=
<div>So can we add a feature to the remote-viewer.exe to make it retry for =
some attempts? Just like the Windows RDP when disconnected, it will show "T=
he connection has been lost. Attempting to reconnect to your session, Conne=
ction attempt: 1 of 20". (Example picture here:&nbsp;<a href=3D"https://soc=
ial.technet.microsoft.com/Forums/azure/en-US/7c0cc2f3-0378-4f98-a2e7-d23a39=
25df2c/configure-unlimited-number-of-attempts-on-the-client-to-reconnect-th=
e-host-via-remote-desktop">https://social.technet.microsoft.com/Forums/azur=
e/en-US/7c0cc2f3-0378-4f98-a2e7-d23a3925df2c/configure-unlimited-number-of-=
attempts-on-the-client-to-reconnect-the-host-via-remote-desktop</a>&nbsp;)<=
br></div>  </body>
</html>

------=_Part_88020_1946811451.1609004408755--

--===============0256265731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0256265731==--
