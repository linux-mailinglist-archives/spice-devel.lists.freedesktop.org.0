Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 374772E841B
	for <lists+spice-devel@lfdr.de>; Fri,  1 Jan 2021 16:49:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4352895E1;
	Fri,  1 Jan 2021 15:49:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from w1.tutanota.de (w1.tutanota.de [81.3.6.162])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6868B895E1
 for <spice-devel@lists.freedesktop.org>; Fri,  1 Jan 2021 15:49:56 +0000 (UTC)
Received: from w3.tutanota.de (unknown [192.168.1.164])
 by w1.tutanota.de (Postfix) with ESMTP id 1AFDEFA061E;
 Fri,  1 Jan 2021 15:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1609516193; 
 s=s1; d=tuta.io;
 h=From:From:To:To:Subject:Subject:Content-Description:Content-ID:Content-Type:Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:In-Reply-To:In-Reply-To:MIME-Version:MIME-Version:Message-ID:Message-ID:Reply-To:References:References:Sender;
 bh=IB9YEf4wW9IAblBRTeng+vd0qm+zjU9++/d/cM4gFJA=;
 b=0bpm18DCnhVyRfj1Co9rSS7jQV1pAIJQJlEd9sxVhgsNvEEZjeLNflHOgT27YViD
 EuNvQ9bDwdAdtXr/IZKHuX3ZefRKqaMN3mho04nxOs96Q9VE1Jlt2TgfLbIdvAmXBup
 MhWta+emCFrpden/yM6yCq7ceN1SkFJ8vZMujjhI0SQ4bmNgLZPOiBK1NBEZPmTpsJU
 JCEbsgmccZi5y1wl+5IGSqHJb11/orSLd/n02e5eOrZdsrLRPbfXY5johIOkOk8PmyF
 MV++rB60/vv0tlpRsztVCtFZmMkZ0LYFTPqJj2PT1KV6Mb4OvbQNFQrPjsACvEzjvz4
 0KCvC+GOYw==
Date: Fri, 1 Jan 2021 16:49:53 +0100 (CET)
From: giters@tuta.io
To: Frediano Ziglio <freddy77@gmail.com>
Message-ID: <MPyd-xG--3-2@tuta.io>
In-Reply-To: <CAHt6W4eN5WepDc3g0NL1_PjimcNxxR_zTk9j-TjkLbNdngEYaw@mail.gmail.com>
References: <MPV7hSS--3-2@tuta.io>
 <CAHt6W4eN5WepDc3g0NL1_PjimcNxxR_zTk9j-TjkLbNdngEYaw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Spice-devel] remote-viewer disconnected when unplugging laptop
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0777745367=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0777745367==
Content-Type: multipart/alternative; 
	boundary="----=_Part_292517_1530722119.1609516194101"

------=_Part_292517_1530722119.1609516194101
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Frediano. Thank you for the reply. Yes it's good to have a way to distin=
guish the 2 cases. This is the log when I change the laptop's network from =
lan to wifi. Can we=C2=A0distinguish the case from the log? Or could I subm=
it a feature request to distinguish the two cases?

```C:\Windows\system32>"C:\Program Files\VirtViewer v9.0-256\bin\remote-vie=
wer.exe" "C:\Users\XXX\Downloads\download.vv"=20

C:\Windows\system32>
(remote-viewer.exe:11576): GLib-GObject-WARNING **: 23:23:24.702: g_object_=
get_is_valid_property: object class 'GstAutoAudioSink' has no property name=
d 'volume'

(remote-viewer.exe:11576): GLib-GObject-WARNING **: 23:23:24.711: g_object_=
get_is_valid_property: object class 'GstAutoAudioSrc' has no property named=
 'volume'

(remote-viewer.exe:11576): GSpice-WARNING **: 23:23:25.261: Warning no auto=
mount-inhibiting implementation available

(remote-viewer.exe:11576): GSpice-WARNING **: 23:23:33.246: Error receiving=
 data: An existing connection was forcibly closed by the remote host.

(remote-viewer.exe:11576): GSpice-WARNING **: 23:23:33.247: Error receiving=
 data: An existing connection was forcibly closed by the remote host.

(remote-viewer.exe:11576): GSpice-WARNING **: 23:23:33.247: Error receiving=
 data: An existing connection was forcibly closed by the remote host.

(remote-viewer.exe:11576): GSpice-WARNING **: 23:23:33.248: Error receiving=
 data: An existing connection was forcibly closed by the remote host.


C:\Windows\system32>
```

Dec 28, 2020, 18:22 by freddy77@gmail.com:

> Il giorno sab 26 dic 2020 alle ore 17:50 <giters@tuta.io> ha scritto:
>
>>
>> I have installed virt-viewer 9.0 on a Windows laptop and use it to conne=
ct to virtual machines in a remote Proxmox VE server. I noticed when I unpl=
ugging the laptop from docking station (where it is connected through a net=
work cable), and switching to WIFI network, the virt-viewer window will dis=
appear. I assume the virt-viewer is not making attempts to reconnect when n=
etwork get lost.
>>
>> I noticed when I clicked the console button on the Proxmox VE server, it=
 actually download a download.vv file. When I click the download.vv file it=
 actually uses the remote-viewer.exe to open it. There seems no option in t=
he download.vv file or remote-viewer.exe that can configure the retry attem=
pts.
>>
>> So can we add a feature to the remote-viewer.exe to make it retry for so=
me attempts? Just like the Windows RDP when disconnected, it will show "The=
 connection has been lost. Attempting to reconnect to your session, Connect=
ion attempt: 1 of 20". (Example picture here: https://social.technet.micros=
oft.com/Forums/azure/en-US/7c0cc2f3-0378-4f98-a2e7-d23a3925df2c/configure-u=
nlimited-number-of-attempts-on-the-client-to-reconnect-the-host-via-remote-=
desktop )
>>
>
> Hi,
>  one of the issues I see here is that usually Spice uses a token and
> not a password.
> The difference is that the password expires, so the reconnection would
> fail as the password is expired.
> If is not the case it would be doable however better to have a way to
> distinguish the 2 cases otherwise
> the client will attempt again and again.
>
> Frediano
>


------=_Part_292517_1530722119.1609516194101
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
<div>Hi Frediano. Thank you for the reply. Yes it's good to have a way to d=
istinguish the 2 cases. This is the log when I change the laptop's network =
from lan to wifi. Can we&nbsp;distinguish the case from the log? Or could I=
 submit a feature request to distinguish the two cases?<br></div><div><br><=
/div><div>```</div><div>C:\Windows\system32&gt;"C:\Program Files\VirtViewer=
 v9.0-256\bin\remote-viewer.exe" "C:\Users\XXX\Downloads\download.vv" <br><=
/div><div><br></div><div>C:\Windows\system32&gt;<br></div><div>(remote-view=
er.exe:11576): GLib-GObject-WARNING **: 23:23:24.702: g_object_get_is_valid=
_property: object class 'GstAutoAudioSink' has no property named 'volume'<b=
r></div><div><br></div><div>(remote-viewer.exe:11576): GLib-GObject-WARNING=
 **: 23:23:24.711: g_object_get_is_valid_property: object class 'GstAutoAud=
ioSrc' has no property named 'volume'<br></div><div><br></div><div>(remote-=
viewer.exe:11576): GSpice-WARNING **: 23:23:25.261: Warning no automount-in=
hibiting implementation available<br></div><div><br></div><div>(remote-view=
er.exe:11576): GSpice-WARNING **: 23:23:33.246: Error receiving data: An ex=
isting connection was forcibly closed by the remote host.<br></div><div><br=
></div><div>(remote-viewer.exe:11576): GSpice-WARNING **: 23:23:33.247: Err=
or receiving data: An existing connection was forcibly closed by the remote=
 host.<br></div><div><br></div><div>(remote-viewer.exe:11576): GSpice-WARNI=
NG **: 23:23:33.247: Error receiving data: An existing connection was forci=
bly closed by the remote host.<br></div><div><br></div><div>(remote-viewer.=
exe:11576): GSpice-WARNING **: 23:23:33.248: Error receiving data: An exist=
ing connection was forcibly closed by the remote host.<br></div><div><br></=
div><div><br></div><div>C:\Windows\system32&gt;<br></div><div>```</div><div=
><br></div><div><br></div><div>Dec 28, 2020, 18:22 by freddy77@gmail.com:<b=
r></div><blockquote class=3D"tutanota_quote" style=3D"border-left: 1px soli=
d #93A3B8; padding-left: 10px; margin-left: 5px;"><div>Il giorno sab 26 dic=
 2020 alle ore 17:50 &lt;giters@tuta.io&gt; ha scritto:<br></div><blockquot=
e><div><br></div><div>I have installed virt-viewer 9.0 on a Windows laptop =
and use it to connect to virtual machines in a remote Proxmox VE server. I =
noticed when I unplugging the laptop from docking station (where it is conn=
ected through a network cable), and switching to WIFI network, the virt-vie=
wer window will disappear. I assume the virt-viewer is not making attempts =
to reconnect when network get lost.<br></div><div><br></div><div>I noticed =
when I clicked the console button on the Proxmox VE server, it actually dow=
nload a download.vv file. When I click the download.vv file it actually use=
s the remote-viewer.exe to open it. There seems no option in the download.v=
v file or remote-viewer.exe that can configure the retry attempts.<br></div=
><div><br></div><div>So can we add a feature to the remote-viewer.exe to ma=
ke it retry for some attempts? Just like the Windows RDP when disconnected,=
 it will show "The connection has been lost. Attempting to reconnect to you=
r session, Connection attempt: 1 of 20". (Example picture here: https://soc=
ial.technet.microsoft.com/Forums/azure/en-US/7c0cc2f3-0378-4f98-a2e7-d23a39=
25df2c/configure-unlimited-number-of-attempts-on-the-client-to-reconnect-th=
e-host-via-remote-desktop )<br></div></blockquote><div><br></div><div>Hi,<b=
r></div><div> one of the issues I see here is that usually Spice uses a tok=
en and<br></div><div>not a password.<br></div><div>The difference is that t=
he password expires, so the reconnection would<br></div><div>fail as the pa=
ssword is expired.<br></div><div>If is not the case it would be doable howe=
ver better to have a way to<br></div><div>distinguish the 2 cases otherwise=
<br></div><div>the client will attempt again and again.<br></div><div><br><=
/div><div>Frediano<br></div></blockquote><div><br></div>  </body>
</html>

------=_Part_292517_1530722119.1609516194101--

--===============0777745367==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0777745367==--
