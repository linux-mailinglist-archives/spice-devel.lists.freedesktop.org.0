Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E67F5344B73
	for <lists+spice-devel@lfdr.de>; Mon, 22 Mar 2021 17:35:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A24096E45C;
	Mon, 22 Mar 2021 16:35:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from sonic306-20.consmr.mail.gq1.yahoo.com
 (sonic306-20.consmr.mail.gq1.yahoo.com [98.137.68.83])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 608FA6E12D
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Mar 2021 15:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1616426842; bh=8dicj9ALekNmnfqbfS93wBh9MkK9LsbT9B7K60+mZeo=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To;
 b=cwnDLFiiR5Xqx7NVmXgbN6rV/lC1J4rFiRXrGpxWNzpKwJ5XrHAgC1OARhEIwNrxEAAbz2Ga2FJUF2XNiKSGgsPf/CQWriZTtumIvvhBiusVJyIdjQ+3hpp/WDnFyuYZtYPQx9czeIvIJXYnJLdl0pYmcNz+wlew+WcYGZVccW0cxyNZI83nUIaVtfJS6swN2wKsXVRijD+QjOI8lrI9Aw2IjpckmXlv/dLlBrwBkXAaDht2yEhnfUveKLi8e0YimBhQZCX9OOgMJ+bKsncWS9nbk9J17ImqtnHAxXCye5w8y+cytABbevlmnAxEhoEub/ehyE9XpAFXVKInW7DRiA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1616426842; bh=O0CKbdUO4mMOygQ6xfabHad3HVCLHMC2nhNDujXnzb+=;
 h=X-Sonic-MF:Date:From:To:Subject:From:Subject;
 b=L4IuJNP3iqt7Jo7DENidNO3ZmaPe3hzL+BRBgR8JLYfXkV6zGMkI//zIPXF0b27Ixgp/Vj+Ww/srgDB26I7to/lpVwUxSHJNVZNqqxClw7wC5RTyyiLFJphFlS9P+J0v06SzTuioDX2X95uQ8hWKUURQ7QEVzvMmJ9lLvqumR+43NqCIU1VxS0AmRoQkhqQ028Tn2zkXyPzlyWSBFDC2JKr5qYPNCpfCf4sl/APHA3CJDx9fSXwzVZDIHccegMxhiH2IZmbzjKk61eWmjSPA2vYS4dYJ7lETjyp2B6Z7k5Y577/+DRfHmMGEyelATS/MpGzfxx8MKUAPBXbzjH+ohQ==
X-YMail-OSG: .vHOb6MVM1mYGnMz148WBMhEwQF1uYVWs2blUaUAruj9RBs.wZZjFqzsFTMJGEM
 SUJl18f9jdY64OFs5Dz4OEYqQM.ZNrqzVCNWACfNCdYgeZFpkpKm28Kqyt8SU7g65Z6j2IVUIyUi
 vADgs_jP_9Dxr5iBF.RWMqBo3og6dvENzfh7rfffqGrsdT2gXJ6x4srFr359LCvdig8Xeaupoqql
 _YndxJPQnP7o.97wmz0023uy2mLDuu6ulH5OI7ogh4SAPHMiHdpF5aQpAtyonVxcGLDqj0y9yihx
 blEFM1mzEbn7J7UWJ6RpIG5pm2d1Rgq.AmtUpLHvXbPrptimfz2GjmXZ.Xxosaw2YLmWRuZPnNQU
 eeLh6tWTwcdjWHtuYvWKBaI4jtvvTYEoUy069EYINSnvWZLQItVn8XMSKDCzrECdx2OLBVa16lzt
 VyRsD0clC7o3zbq2lKUqu_F4eAslp77iXfny_GiWs7BfFvuetppZDecYDs.XTw52cQK76ql8pH0Z
 SogIeQ5AfPK8iWm9KKyoKzi8o3Jl.ETVHu63GD_domL7QTSzpejcBv.EmrG6C8wsfZOSyfMI30RB
 OTxrHwMJ.Ivtp5cJqQLTj0sLID9YcKoSuhGHxAhovJxACiESMI6X2ZR_.i9MeAmbLWE0l5gU19j6
 bRN5iKNENEAD1Ek2f4fPpHH4aWFk10BHNutdx5J8eOUNR2KdTMVb3jNmAYolwKVdhheCOZf4nHzk
 VPeLEfwQhYO7TEfKb3MdfpM6CbMU5Uui8zFdkpz94nYfe3m4B1k2M.MxRF81MuRYfaGlPmQHuMo_
 Q2LJjfdqgxNDhQZRopt_F8YQhvd9IwoIYw4PDmscoszHe9AuKYVynmaC4xaAwKi.dFl9i6k51B9K
 IIca3lsKf65ZfBDZADSaRgu.3t6UaM8EzEK3Qpt9WgRDwxOPPpGNe7AteIVl6lU5DpGN1oqHsVsJ
 7UAm6tVH5K944EI0LniZkeow6YMEE.idP9hCCcoNDysv5FIrfrN68I0RA3.AAgGO6z7JuZDPG5RQ
 gsd_ox9Y3guodgaSGDa4gA5a.V5iFoBIwINlm4nqjUYMWPvSttyhnvyqTcfVsnI9b.FKfOS8iEUE
 _6tuhMjczjML4fMjeSLH7hOQOUUN1QSaFz45x30zn22n4F6ozWkx6kEXyRU8yIAkZrcI7OmdZaKQ
 2eysLI_ZAsQPjNcwPgPOjmlIt_tpYaPshucFIKylFGOx5YyT2vmXlZDSDCd5TCNFZWW.TgxWUGyT
 0E2_ceh23J3IR92u46hPCbhEqIDxOic_h459Y2UUHzJXH4hQm5XHSM4gPDwGu_uSwoX1M_4UAcTc
 ixqdsqy.67rMW2cTGyacAsRn10R39nwZTK18je7Gc4NmKITxQEqc4WjKBG39lFX6AvyP1wAwhstq
 4GwFdSpbGPm.4TW538qxkb_H3T7vrm80FwFmylM_aUOY8vjKd_FIMCyKLxOa65W2bdYvSkKKS5Lu
 OFYq43DuR03k4sFoKvcWWzAcRQkfsodxONZR0Qxlp6zkY.aYUjbAbPUdlM16MxTDu9gbFk26tktm
 ZW2NYrULxx9sW2Vm3M23w.eg7JuYyCVuWbD4Zs1y6AiPsQIPm36P6AXVHCDpXiHzZST5SAEMv7Dg
 3M8fgHb8FHrMG3kFWafCBtBb1jr5MLp5KVrlWKvHnuQNj68NbCgeq54l_zzxkFwDY1l0DYaGERh.
 Ig.gOVUSKfKXVcqO_Tb0102LJ6y5BhJgz0.HcAKjgrCp1SEsJEDIqcB_qvO73X9aKSt_UZgrhg9c
 mC9yprN.6eZwqm5CVDBdPFbUn4o.eFn96zrzUqa4cb4s.tZuODOINalz412o7F5XuLNAqg35Y5nZ
 gQ1.YIVRoW6SLd3e4anBgf_wBFTgcaM19qJ8s8jvGmf8fEskpzs.545xL_AN_QouLUYWamUlFXdl
 MMhunjgyohM2O8jxzr6QH8fcrtURI5MTLiMgaGpeCtJZn_DmPz4edGp3CZTpKB_vlfccedEz1oQs
 _VBVJlQXCgC9kBiffhrmGTVKJgAa3L5VJpHy1VmEMbiG7uhOfBaVcEBeQUnGpi6ErkE9ArCDCpZh
 ko.OYC2GmNt0OSYy4ps75jFWFwRd3udsIHHFSF3aFK4ptIGWHaRB5Ml.Yo9JrJMv1Wd.exbVaO8k
 523CjrkwutJ0O63ZaBAfZ4Kkl98FCcHN1TNOa2JrkxOglj5h.jm7eMLnbGvuX1QxHT4WyBrD0MTS
 m1hJ0LLr.1s2FWOprcLmstOP0QdeHx3vlUISQ3GkPIc7QhjJhaEQd8Xidrhjc8o0xc8mOaBezxuT
 4DydwjLAEzFJSUFjba4GnroeTDU2CpJzGl7Yh1kpdLJgbhGfid4iVsVR8ZJ0Uc9lopXv_zNhItqa
 pwpsTVcIpObneUHIJgb0MBb2yvWa9b2dFMdxEGFHR0EExDqBKxsDjWqATY.NosMj209gAMP6WQ.J
 RmHQasl5XVcWFwMjutLrrOG9zRJVTvIIHd1es0oKD7.W9D04PL_q2FLc78GgkprgK_UxxzcCKsFv
 8gIlTpvePMDPFBPbj4ABzyo.d7j_mZ2Ml0.ZbFh7DdBq6oGtTL4twT3RCDvgYmQwA
X-Sonic-MF: <bg271828@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.gq1.yahoo.com with HTTP; Mon, 22 Mar 2021 15:27:22 +0000
Date: Mon, 22 Mar 2021 15:27:18 +0000 (UTC)
From: "Dr. Jennifer Nussbaum" <bg271828@yahoo.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <2044021456.514716.1616426838206@mail.yahoo.com>
In-Reply-To: <20210322145139.kuigwqkyjdkby35r@wingsuit>
References: <1460907569.2869086.1616420768731.ref@mail.yahoo.com>
 <1460907569.2869086.1616420768731@mail.yahoo.com>
 <20210322145139.kuigwqkyjdkby35r@wingsuit>
MIME-Version: 1.0
X-Mailer: WebService/1.1.17936 YMailNorrin Mozilla/5.0 (X11;
 Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko)
 Chrome/88.0.4324.192 Safari/537.36
X-Mailman-Approved-At: Mon, 22 Mar 2021 16:35:01 +0000
Subject: Re: [Spice-devel] Multiple monitors at 4K, in virt-manager?
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1643939288=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1643939288==
Content-Type: multipart/alternative; 
	boundary="----=_Part_514715_1180039844.1616426838200"

------=_Part_514715_1180039844.1616426838200
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 On Monday, March 22, 2021, 10:51:48 AM EDT, Victor Toso <victortoso@redhat=
.com> wrote:=20
 Hi,

On Mon, Mar 22, 2021 at 01:46:08PM +0000, Dr. Jennifer Nussbaum wrote:


> > I'm using virt-manger, and its related suite of stuff, to run
> > KVM/QEMU VM's on a Debian Bullseye host, which has two 4K
> > monitors. I am unable to get dual-head working at all, and I
> > can't get 4K resolution working in the way I'm apparently
> > supposed to.
>
> Can you share the vm's domain? virsh dumpxml $vm

I've posted this at the bottom of this message, with only small changes to =
obscure the UUID and paths.

> > I have a Debian Bullseye guest, with spice-vdagent and the QXL
>=C2=A0> video drivers installed in it. The Spice user manual suggests
>=C2=A0> that multiple-monitor support is easy; you're supposed to use a
>=C2=A0> Video QXL device and then everything should just work. But it
>=C2=A0> doesn't. Even when I increase the video memory in the XML file
>=C2=A0> (vgamem, I assume) to 64MB I am unable to get 4K on even a
>=C2=A0> single monitor using Settings -> Display on the guest; it maxes
>=C2=A0> out at some arbitrary-seeming thing a bit over 1980 x 1200. And
>=C2=A0> regardless of resolution, I also do not have a second monitor
>=C2=A0> available in the guest.
>
> Are you accessing with virt-manager? I don't think there is
> support for multi-monitor there? You should use virt-viewer or
> remote-viewer instead.

virt-manager uses virt-viewer natively; it's what virt-manager fires up whe=
n you use the "view graphical console" option.
Regardless, I did just launch virt-viewer separately, and it's functioning =
in the same way.

>=C2=A0> If I have a video device set to Virtio, then 4K works perfectly
>=C2=A0> on the guest machine; if I go to Settings -> Display there, I
>=C2=A0> can select 4096 x 2160, and I get lovely 4K video. However,
>=C2=A0> dual-head does not work. If I try to edit the XML for the video
>=C2=A0> device to 'heads=3D"2"', there is no effect--at least, when I
>=C2=A0> restart the guest and go to Settings -> Display, there isn't an
>=C2=A0> option for selecting another monitor.=C2=A0 Could someone tell me
>=C2=A0> what I'm supposed to be doing?=C2=A0 Thank you.
>=C2=A0
>=C2=A0Just confirming, for Spice multi-monitor [0] in recent linux
>=C2=A0guests, one qxl device is enough and you should set the heads to
>=C2=A02 (virsh edit $vm)
As you can see from the XML below, I do (think I) have one qxl device, with=
 2 heads and 64MB memory.
When I go into the guest, the maximum resolution I am offered is 2952 x 178=
1. And there is only one display,called "Virtual-0".
Thank you for looking this over.
Jen
----
 <domain type=3D"kvm">=C2=A0 <name>debian-bullseye-test</name>=C2=A0 <uuid>=
36d7d0e7-4801-4396-9f61-2b5022xxxxxxx</uuid>=C2=A0 <memory unit=3D"KiB">419=
4304</memory>=C2=A0 <currentMemory unit=3D"KiB">4194304</currentMemory>=C2=
=A0 <vcpu placement=3D"static">2</vcpu>=C2=A0 <os>=C2=A0 =C2=A0 <type arch=
=3D"x86_64" machine=3D"pc-i440fx-2.8">hvm</type>=C2=A0 =C2=A0 <boot dev=3D"=
hd"/>=C2=A0 </os>=C2=A0 <features>=C2=A0 =C2=A0 <acpi/>=C2=A0 =C2=A0 <apic/=
>=C2=A0 =C2=A0 <vmport state=3D"off"/>=C2=A0 </features>=C2=A0 <cpu mode=3D=
"host-model" check=3D"partial"/>=C2=A0 <clock offset=3D"utc">=C2=A0 =C2=A0 =
<timer name=3D"rtc" tickpolicy=3D"catchup"/>=C2=A0 =C2=A0 <timer name=3D"pi=
t" tickpolicy=3D"delay"/>=C2=A0 =C2=A0 <timer name=3D"hpet" present=3D"no"/=
>=C2=A0 </clock>=C2=A0 <on_poweroff>destroy</on_poweroff>=C2=A0 <on_reboot>=
restart</on_reboot>=C2=A0 <on_crash>restart</on_crash>=C2=A0 <pm>=C2=A0 =C2=
=A0 <suspend-to-mem enabled=3D"no"/>=C2=A0 =C2=A0 <suspend-to-disk enabled=
=3D"no"/>=C2=A0 </pm>=C2=A0 <devices>=C2=A0 =C2=A0 <emulator>/usr/bin/kvm</=
emulator>=C2=A0 =C2=A0 <disk type=3D"file" device=3D"disk">=C2=A0 =C2=A0 =
=C2=A0 <driver name=3D"qemu" type=3D"qcow2"/>=C2=A0 =C2=A0 =C2=A0 <source f=
ile=3D"/home/user/VMs/debian-bullseye-clone.qcow2"/>=C2=A0 =C2=A0 =C2=A0 <t=
arget dev=3D"vda" bus=3D"virtio"/>=C2=A0 =C2=A0 =C2=A0 <address type=3D"pci=
" domain=3D"0x0000" bus=3D"0x00" slot=3D"0x07" function=3D"0x0"/>=C2=A0 =C2=
=A0 </disk>=C2=A0 =C2=A0 <disk type=3D"file" device=3D"cdrom">=C2=A0 =C2=A0=
 =C2=A0 <driver name=3D"qemu" type=3D"raw"/>=C2=A0 =C2=A0 =C2=A0 <target de=
v=3D"hda" bus=3D"ide"/>=C2=A0 =C2=A0 =C2=A0 <readonly/>=C2=A0 =C2=A0 =C2=A0=
 <address type=3D"drive" controller=3D"0" bus=3D"0" target=3D"0" unit=3D"0"=
/>=C2=A0 =C2=A0 </disk>=C2=A0 =C2=A0 <controller type=3D"usb" index=3D"0" m=
odel=3D"ich9-ehci1">=C2=A0 =C2=A0 =C2=A0 <address type=3D"pci" domain=3D"0x=
0000" bus=3D"0x00" slot=3D"0x05" function=3D"0x7"/>=C2=A0 =C2=A0 </controll=
er>=C2=A0 =C2=A0 <controller type=3D"usb" index=3D"0" model=3D"ich9-uhci1">=
=C2=A0 =C2=A0 =C2=A0 <master startport=3D"0"/>=C2=A0 =C2=A0 =C2=A0 <address=
 type=3D"pci" domain=3D"0x0000" bus=3D"0x00" slot=3D"0x05" function=3D"0x0"=
 multifunction=3D"on"/>=C2=A0 =C2=A0 </controller>=C2=A0 =C2=A0 <controller=
 type=3D"usb" index=3D"0" model=3D"ich9-uhci2">=C2=A0 =C2=A0 =C2=A0 <master=
 startport=3D"2"/>=C2=A0 =C2=A0 =C2=A0 <address type=3D"pci" domain=3D"0x00=
00" bus=3D"0x00" slot=3D"0x05" function=3D"0x1"/>=C2=A0 =C2=A0 </controller=
>=C2=A0 =C2=A0 <controller type=3D"usb" index=3D"0" model=3D"ich9-uhci3">=
=C2=A0 =C2=A0 =C2=A0 <master startport=3D"4"/>=C2=A0 =C2=A0 =C2=A0 <address=
 type=3D"pci" domain=3D"0x0000" bus=3D"0x00" slot=3D"0x05" function=3D"0x2"=
/>=C2=A0 =C2=A0 </controller>=C2=A0 =C2=A0 <controller type=3D"pci" index=
=3D"0" model=3D"pci-root"/>=C2=A0 =C2=A0 <controller type=3D"ide" index=3D"=
0">=C2=A0 =C2=A0 =C2=A0 <address type=3D"pci" domain=3D"0x0000" bus=3D"0x00=
" slot=3D"0x01" function=3D"0x1"/>=C2=A0 =C2=A0 </controller>=C2=A0 =C2=A0 =
<controller type=3D"virtio-serial" index=3D"0">=C2=A0 =C2=A0 =C2=A0 <addres=
s type=3D"pci" domain=3D"0x0000" bus=3D"0x00" slot=3D"0x06" function=3D"0x0=
"/>=C2=A0 =C2=A0 </controller>=C2=A0 =C2=A0 <interface type=3D"network">=C2=
=A0 =C2=A0 =C2=A0 <mac address=3D"52:54:00:30:01:2b"/>=C2=A0 =C2=A0 =C2=A0 =
<source network=3D"default"/>=C2=A0 =C2=A0 =C2=A0 <model type=3D"rtl8139"/>=
=C2=A0 =C2=A0 =C2=A0 <address type=3D"pci" domain=3D"0x0000" bus=3D"0x00" s=
lot=3D"0x03" function=3D"0x0"/>=C2=A0 =C2=A0 </interface>=C2=A0 =C2=A0 <ser=
ial type=3D"pty">=C2=A0 =C2=A0 =C2=A0 <target type=3D"isa-serial" port=3D"0=
">=C2=A0 =C2=A0 =C2=A0 =C2=A0 <model name=3D"isa-serial"/>=C2=A0 =C2=A0 =C2=
=A0 </target>=C2=A0 =C2=A0 </serial>=C2=A0 =C2=A0 <console type=3D"pty">=C2=
=A0 =C2=A0 =C2=A0 <target type=3D"serial" port=3D"0"/>=C2=A0 =C2=A0 </conso=
le>=C2=A0 =C2=A0 <channel type=3D"unix">=C2=A0 =C2=A0 =C2=A0 <target type=
=3D"virtio" name=3D"org.qemu.guest_agent.0"/>=C2=A0 =C2=A0 =C2=A0 <address =
type=3D"virtio-serial" controller=3D"0" bus=3D"0" port=3D"1"/>=C2=A0 =C2=A0=
 </channel>=C2=A0 =C2=A0 <channel type=3D"spicevmc">=C2=A0 =C2=A0 =C2=A0 <t=
arget type=3D"virtio" name=3D"com.redhat.spice.0"/>=C2=A0 =C2=A0 =C2=A0 <ad=
dress type=3D"virtio-serial" controller=3D"0" bus=3D"0" port=3D"2"/>=C2=A0 =
=C2=A0 </channel>=C2=A0 =C2=A0 <input type=3D"tablet" bus=3D"usb">=C2=A0 =
=C2=A0 =C2=A0 <address type=3D"usb" bus=3D"0" port=3D"1"/>=C2=A0 =C2=A0 </i=
nput>=C2=A0 =C2=A0 <input type=3D"mouse" bus=3D"ps2"/>=C2=A0 =C2=A0 <input =
type=3D"keyboard" bus=3D"ps2"/>=C2=A0 =C2=A0 <graphics type=3D"spice" autop=
ort=3D"yes">=C2=A0 =C2=A0 =C2=A0 <listen type=3D"address"/>=C2=A0 =C2=A0 =
=C2=A0 <image compression=3D"off"/>=C2=A0 =C2=A0 </graphics>=C2=A0 =C2=A0 <=
sound model=3D"ich6">=C2=A0 =C2=A0 =C2=A0 <address type=3D"pci" domain=3D"0=
x0000" bus=3D"0x00" slot=3D"0x04" function=3D"0x0"/>=C2=A0 =C2=A0 </sound>=
=C2=A0 =C2=A0 <video>=C2=A0 =C2=A0 =C2=A0 <model type=3D"qxl" ram=3D"65536"=
 vram=3D"65536" vgamem=3D"65536" heads=3D"2" primary=3D"yes"/>=C2=A0 =C2=A0=
 =C2=A0 <address type=3D"pci" domain=3D"0x0000" bus=3D"0x00" slot=3D"0x09" =
function=3D"0x0"/>=C2=A0 =C2=A0 </video>=C2=A0 =C2=A0 <redirdev bus=3D"usb"=
 type=3D"spicevmc">=C2=A0 =C2=A0 =C2=A0 <address type=3D"usb" bus=3D"0" por=
t=3D"2"/>=C2=A0 =C2=A0 </redirdev>=C2=A0 =C2=A0 <redirdev bus=3D"usb" type=
=3D"spicevmc">=C2=A0 =C2=A0 =C2=A0 <address type=3D"usb" bus=3D"0" port=3D"=
3"/>=C2=A0 =C2=A0 </redirdev>=C2=A0 =C2=A0 <memballoon model=3D"virtio">=C2=
=A0 =C2=A0 =C2=A0 <address type=3D"pci" domain=3D"0x0000" bus=3D"0x00" slot=
=3D"0x08" function=3D"0x0"/>=C2=A0 =C2=A0 </memballoon>=C2=A0 </devices></d=
omain>
 =20
------=_Part_514715_1180039844.1616426838200
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpbf1eba0ayahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div><span style=3D"color: rgb(38, 40, 42);">On Monday, March 22, 2=
021, 10:51:48 AM EDT, Victor Toso &lt;victortoso@redhat.com&gt; wrote:</spa=
n></div></div><div id=3D"ydp50cd5413yahoo_quoted_7325345573" class=3D"ydp50=
cd5413yahoo_quoted"><div style=3D"font-family:'Helvetica Neue', Helvetica, =
Arial, sans-serif;font-size:13px;color:#26282a;">
                <div><br></div>
                <div dir=3D"ltr" data-setdir=3D"false">Hi,<br clear=3D"none=
"><br clear=3D"none">On Mon, Mar 22, 2021 at 01:46:08PM +0000, Dr. Jennifer=
 Nussbaum wrote:<br clear=3D"none"><br clear=3D"none"><br clear=3D"none">&g=
t; &gt; I'm using virt-manger, and its related suite of stuff, to run<br cl=
ear=3D"none">&gt; &gt; KVM/QEMU VM's on a Debian Bullseye host, which has t=
wo 4K<br clear=3D"none">&gt; &gt; monitors. I am unable to get dual-head wo=
rking at all, and I<br clear=3D"none">&gt; &gt; can't get 4K resolution wor=
king in the way I'm apparently<br clear=3D"none">&gt; &gt; supposed to.<br =
clear=3D"none">&gt;<br clear=3D"none">&gt; Can you share the vm's domain? v=
irsh dumpxml $vm<br clear=3D"none"><br>I've posted this at the bottom of th=
is message, with only small changes to obscure the UUID and paths.<br><br c=
lear=3D"none">&gt; &gt; I have a Debian Bullseye guest, with spice-vdagent =
and the QXL<br clear=3D"none"><span>&gt;&nbsp;</span>&gt; video drivers ins=
talled in it. The Spice user manual suggests<br clear=3D"none"><span>&gt;&n=
bsp;</span>&gt; that multiple-monitor support is easy; you're supposed to u=
se a<br clear=3D"none"><span>&gt;&nbsp;</span>&gt; Video QXL device and the=
n everything should just work. But it<br clear=3D"none"><span>&gt;&nbsp;</s=
pan>&gt; doesn't. Even when I increase the video memory in the XML file<br =
clear=3D"none"><span>&gt;&nbsp;</span>&gt; (vgamem, I assume) to 64MB I am =
unable to get 4K on even a<br clear=3D"none"><span>&gt;&nbsp;</span>&gt; si=
ngle monitor using Settings -&gt; Display on the guest; it maxes<br clear=
=3D"none"><span>&gt;&nbsp;</span>&gt; out at some arbitrary-seeming thing a=
 bit over 1980 x 1200. And<br clear=3D"none"><span>&gt;&nbsp;</span>&gt; re=
gardless of resolution, I also do not have a second monitor<br clear=3D"non=
e"><span>&gt;&nbsp;</span>&gt; available in the guest.<br clear=3D"none">&g=
t;<br clear=3D"none">&gt; Are you accessing with virt-manager? I don't thin=
k there is<br clear=3D"none">&gt; support for multi-monitor there? You shou=
ld use virt-viewer or<br clear=3D"none">&gt; remote-viewer instead.<br clea=
r=3D"none"><br>virt-manager uses virt-viewer natively; it's what virt-manag=
er fires up when you use the "view graphical console" option.</div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse">Regardless, I did just launch virt-viewer separately, and it's functio=
ning in the same way.<br><br clear=3D"none"><span>&gt;&nbsp;</span>&gt; If =
I have a video device set to Virtio, then 4K works perfectly<br clear=3D"no=
ne"><span>&gt;&nbsp;</span>&gt; on the guest machine; if I go to Settings -=
&gt; Display there, I<br clear=3D"none"><span>&gt;&nbsp;</span>&gt; can sel=
ect 4096 x 2160, and I get lovely 4K video. However,<br clear=3D"none"><spa=
n>&gt;&nbsp;</span>&gt; dual-head does not work. If I try to edit the XML f=
or the video<br clear=3D"none"><span>&gt;&nbsp;</span>&gt; device to 'heads=
=3D"2"', there is no effect--at least, when I<br clear=3D"none"><span>&gt;&=
nbsp;</span>&gt; restart the guest and go to Settings -&gt; Display, there =
isn't an<br clear=3D"none"><span>&gt;&nbsp;</span>&gt; option for selecting=
 another monitor.&nbsp; Could someone tell me<br clear=3D"none"><span>&gt;&=
nbsp;</span>&gt; what I'm supposed to be doing?&nbsp; Thank you.<br clear=
=3D"none"><span>&gt;&nbsp;</span><br clear=3D"none"><span>&gt;&nbsp;</span>=
Just confirming, for Spice multi-monitor [0] in recent linux<br clear=3D"no=
ne"><span>&gt;&nbsp;</span>guests, one qxl device is enough and you should =
set the heads to<br clear=3D"none"><span>&gt;&nbsp;</span>2 (virsh edit $vm=
)</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" da=
ta-setdir=3D"false">As you can see from the XML below, I do (think I) have =
one qxl device, with 2 heads and 64MB memory.</div><div dir=3D"ltr" data-se=
tdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">When I go i=
nto the guest, the maximum resolution I am offered is 2952 x 1781. And ther=
e is only one display,</div><div dir=3D"ltr" data-setdir=3D"false">called "=
Virtual-0".</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false">Thank you for looking this over.</div><div d=
ir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"=
false">Jen</div><div><br></div><div>----</div><div><br><div class=3D"ydp50c=
d5413yqt3117204615" id=3D"ydp50cd5413yqtfd22635" dir=3D"ltr" data-setdir=3D=
"false"> <div><div style=3D"color: rgb(38, 40, 42); font-family: Helvetica =
Neue, Helvetica, Arial, sans-serif;">&lt;domain type=3D"kvm"&gt;</div><div =
style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Ar=
ial, sans-serif;">&nbsp; &lt;name&gt;debian-bullseye-test&lt;/name&gt;</div=
><div style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helveti=
ca, Arial, sans-serif;">&nbsp; &lt;uuid&gt;36d7d0e7-4801-4396-9f61-2b5022xx=
xxxxx&lt;/uuid&gt;</div><div style=3D"color: rgb(38, 40, 42); font-family: =
Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &lt;memory unit=3D"Ki=
B"&gt;4194304&lt;/memory&gt;</div><div style=3D"color: rgb(38, 40, 42); fon=
t-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &lt;current=
Memory unit=3D"KiB"&gt;4194304&lt;/currentMemory&gt;</div><div style=3D"col=
or: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-se=
rif;">&nbsp; &lt;vcpu placement=3D"static"&gt;2&lt;/vcpu&gt;</div><div styl=
e=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial,=
 sans-serif;">&nbsp; &lt;os&gt;</div><div style=3D"color: rgb(38, 40, 42); =
font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &=
lt;type arch=3D"x86_64" machine=3D"pc-i440fx-2.8"&gt;hvm&lt;/type&gt;</div>=
<div style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetic=
a, Arial, sans-serif;">&nbsp; &nbsp; &lt;boot dev=3D"hd"/&gt;</div><div sty=
le=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial=
, sans-serif;">&nbsp; &lt;/os&gt;</div><div style=3D"color: rgb(38, 40, 42)=
; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &lt;fe=
atures&gt;</div><div style=3D"color: rgb(38, 40, 42); font-family: Helvetic=
a Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &lt;acpi/&gt;</div><di=
v style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, =
Arial, sans-serif;">&nbsp; &nbsp; &lt;apic/&gt;</div><div style=3D"color: r=
gb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"=
>&nbsp; &nbsp; &lt;vmport state=3D"off"/&gt;</div><div style=3D"color: rgb(=
38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&n=
bsp; &lt;/features&gt;</div><div style=3D"color: rgb(38, 40, 42); font-fami=
ly: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &lt;cpu mode=3D"h=
ost-model" check=3D"partial"/&gt;</div><div style=3D"color: rgb(38, 40, 42)=
; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &lt;cl=
ock offset=3D"utc"&gt;</div><div style=3D"color: rgb(38, 40, 42); font-fami=
ly: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &lt;timer =
name=3D"rtc" tickpolicy=3D"catchup"/&gt;</div><div style=3D"color: rgb(38, =
40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp;=
 &nbsp; &lt;timer name=3D"pit" tickpolicy=3D"delay"/&gt;</div><div style=3D=
"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, san=
s-serif;">&nbsp; &nbsp; &lt;timer name=3D"hpet" present=3D"no"/&gt;</div><d=
iv style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica,=
 Arial, sans-serif;">&nbsp; &lt;/clock&gt;</div><div style=3D"color: rgb(38=
, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbs=
p; &lt;on_poweroff&gt;destroy&lt;/on_poweroff&gt;</div><div style=3D"color:=
 rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif=
;">&nbsp; &lt;on_reboot&gt;restart&lt;/on_reboot&gt;</div><div style=3D"col=
or: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-se=
rif;">&nbsp; &lt;on_crash&gt;restart&lt;/on_crash&gt;</div><div style=3D"co=
lor: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-s=
erif;">&nbsp; &lt;pm&gt;</div><div style=3D"color: rgb(38, 40, 42); font-fa=
mily: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &lt;susp=
end-to-mem enabled=3D"no"/&gt;</div><div style=3D"color: rgb(38, 40, 42); f=
ont-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &l=
t;suspend-to-disk enabled=3D"no"/&gt;</div><div style=3D"color: rgb(38, 40,=
 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &l=
t;/pm&gt;</div><div style=3D"color: rgb(38, 40, 42); font-family: Helvetica=
 Neue, Helvetica, Arial, sans-serif;">&nbsp; &lt;devices&gt;</div><div styl=
e=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial,=
 sans-serif;">&nbsp; &nbsp; &lt;emulator&gt;/usr/bin/kvm&lt;/emulator&gt;</=
div><div style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helv=
etica, Arial, sans-serif;">&nbsp; &nbsp; &lt;disk type=3D"file" device=3D"d=
isk"&gt;</div><div style=3D"color: rgb(38, 40, 42); font-family: Helvetica =
Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &nbsp; &lt;driver name=
=3D"qemu" type=3D"qcow2"/&gt;</div><div dir=3D"ltr" data-setdir=3D"false" s=
tyle=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Ari=
al, sans-serif;">&nbsp; &nbsp; &nbsp; &lt;source file=3D"/home/user/VMs/deb=
ian-bullseye-clone.qcow2"/&gt;</div><div style=3D"color: rgb(38, 40, 42); f=
ont-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &n=
bsp; &lt;target dev=3D"vda" bus=3D"virtio"/&gt;</div><div style=3D"color: r=
gb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"=
>&nbsp; &nbsp; &nbsp; &lt;address type=3D"pci" domain=3D"0x0000" bus=3D"0x0=
0" slot=3D"0x07" function=3D"0x0"/&gt;</div><div style=3D"color: rgb(38, 40=
, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &=
nbsp; &lt;/disk&gt;</div><div style=3D"color: rgb(38, 40, 42); font-family:=
 Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &lt;disk type=
=3D"file" device=3D"cdrom"&gt;</div><div style=3D"color: rgb(38, 40, 42); f=
ont-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &n=
bsp; &lt;driver name=3D"qemu" type=3D"raw"/&gt;</div><div style=3D"color: r=
gb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"=
>&nbsp; &nbsp; &nbsp; &lt;target dev=3D"hda" bus=3D"ide"/&gt;</div><div sty=
le=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial=
, sans-serif;">&nbsp; &nbsp; &nbsp; &lt;readonly/&gt;</div><div style=3D"co=
lor: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-s=
erif;">&nbsp; &nbsp; &nbsp; &lt;address type=3D"drive" controller=3D"0" bus=
=3D"0" target=3D"0" unit=3D"0"/&gt;</div><div style=3D"color: rgb(38, 40, 4=
2); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbs=
p; &lt;/disk&gt;</div><div style=3D"color: rgb(38, 40, 42); font-family: He=
lvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &lt;controller t=
ype=3D"usb" index=3D"0" model=3D"ich9-ehci1"&gt;</div><div style=3D"color: =
rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;=
">&nbsp; &nbsp; &nbsp; &lt;address type=3D"pci" domain=3D"0x0000" bus=3D"0x=
00" slot=3D"0x05" function=3D"0x7"/&gt;</div><div style=3D"color: rgb(38, 4=
0, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; =
&nbsp; &lt;/controller&gt;</div><div style=3D"color: rgb(38, 40, 42); font-=
family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &lt;co=
ntroller type=3D"usb" index=3D"0" model=3D"ich9-uhci1"&gt;</div><div style=
=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, =
sans-serif;">&nbsp; &nbsp; &nbsp; &lt;master startport=3D"0"/&gt;</div><div=
 style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, A=
rial, sans-serif;">&nbsp; &nbsp; &nbsp; &lt;address type=3D"pci" domain=3D"=
0x0000" bus=3D"0x00" slot=3D"0x05" function=3D"0x0" multifunction=3D"on"/&g=
t;</div><div style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, =
Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &lt;/controller&gt;</div><div =
style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Ar=
ial, sans-serif;">&nbsp; &nbsp; &lt;controller type=3D"usb" index=3D"0" mod=
el=3D"ich9-uhci2"&gt;</div><div style=3D"color: rgb(38, 40, 42); font-famil=
y: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &nbsp; &lt;=
master startport=3D"2"/&gt;</div><div style=3D"color: rgb(38, 40, 42); font=
-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &nbsp=
; &lt;address type=3D"pci" domain=3D"0x0000" bus=3D"0x00" slot=3D"0x05" fun=
ction=3D"0x1"/&gt;</div><div style=3D"color: rgb(38, 40, 42); font-family: =
Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &lt;/controlle=
r&gt;</div><div style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neu=
e, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &lt;controller type=3D"usb"=
 index=3D"0" model=3D"ich9-uhci3"&gt;</div><div style=3D"color: rgb(38, 40,=
 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &n=
bsp; &nbsp; &lt;master startport=3D"4"/&gt;</div><div style=3D"color: rgb(3=
8, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nb=
sp; &nbsp; &nbsp; &lt;address type=3D"pci" domain=3D"0x0000" bus=3D"0x00" s=
lot=3D"0x05" function=3D"0x2"/&gt;</div><div style=3D"color: rgb(38, 40, 42=
); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp=
; &lt;/controller&gt;</div><div style=3D"color: rgb(38, 40, 42); font-famil=
y: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &lt;control=
ler type=3D"pci" index=3D"0" model=3D"pci-root"/&gt;</div><div style=3D"col=
or: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-se=
rif;">&nbsp; &nbsp; &lt;controller type=3D"ide" index=3D"0"&gt;</div><div s=
tyle=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Ari=
al, sans-serif;">&nbsp; &nbsp; &nbsp; &lt;address type=3D"pci" domain=3D"0x=
0000" bus=3D"0x00" slot=3D"0x01" function=3D"0x1"/&gt;</div><div style=3D"c=
olor: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-=
serif;">&nbsp; &nbsp; &lt;/controller&gt;</div><div style=3D"color: rgb(38,=
 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp=
; &nbsp; &lt;controller type=3D"virtio-serial" index=3D"0"&gt;</div><div st=
yle=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Aria=
l, sans-serif;">&nbsp; &nbsp; &nbsp; &lt;address type=3D"pci" domain=3D"0x0=
000" bus=3D"0x00" slot=3D"0x06" function=3D"0x0"/&gt;</div><div style=3D"co=
lor: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-s=
erif;">&nbsp; &nbsp; &lt;/controller&gt;</div><div style=3D"color: rgb(38, =
40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp;=
 &nbsp; &lt;interface type=3D"network"&gt;</div><div style=3D"color: rgb(38=
, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbs=
p; &nbsp; &nbsp; &lt;mac address=3D"52:54:00:30:01:2b"/&gt;</div><div style=
=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, =
sans-serif;">&nbsp; &nbsp; &nbsp; &lt;source network=3D"default"/&gt;</div>=
<div style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetic=
a, Arial, sans-serif;">&nbsp; &nbsp; &nbsp; &lt;model type=3D"rtl8139"/&gt;=
</div><div style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, He=
lvetica, Arial, sans-serif;">&nbsp; &nbsp; &nbsp; &lt;address type=3D"pci" =
domain=3D"0x0000" bus=3D"0x00" slot=3D"0x03" function=3D"0x0"/&gt;</div><di=
v style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, =
Arial, sans-serif;">&nbsp; &nbsp; &lt;/interface&gt;</div><div style=3D"col=
or: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-se=
rif;">&nbsp; &nbsp; &lt;serial type=3D"pty"&gt;</div><div style=3D"color: r=
gb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"=
>&nbsp; &nbsp; &nbsp; &lt;target type=3D"isa-serial" port=3D"0"&gt;</div><d=
iv style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica,=
 Arial, sans-serif;">&nbsp; &nbsp; &nbsp; &nbsp; &lt;model name=3D"isa-seri=
al"/&gt;</div><div style=3D"color: rgb(38, 40, 42); font-family: Helvetica =
Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &nbsp; &lt;/target&gt;</=
div><div style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helv=
etica, Arial, sans-serif;">&nbsp; &nbsp; &lt;/serial&gt;</div><div style=3D=
"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, san=
s-serif;">&nbsp; &nbsp; &lt;console type=3D"pty"&gt;</div><div style=3D"col=
or: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-se=
rif;">&nbsp; &nbsp; &nbsp; &lt;target type=3D"serial" port=3D"0"/&gt;</div>=
<div style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetic=
a, Arial, sans-serif;">&nbsp; &nbsp; &lt;/console&gt;</div><div style=3D"co=
lor: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-s=
erif;">&nbsp; &nbsp; &lt;channel type=3D"unix"&gt;</div><div style=3D"color=
: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-seri=
f;">&nbsp; &nbsp; &nbsp; &lt;target type=3D"virtio" name=3D"org.qemu.guest_=
agent.0"/&gt;</div><div style=3D"color: rgb(38, 40, 42); font-family: Helve=
tica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &nbsp; &lt;address =
type=3D"virtio-serial" controller=3D"0" bus=3D"0" port=3D"1"/&gt;</div><div=
 style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, A=
rial, sans-serif;">&nbsp; &nbsp; &lt;/channel&gt;</div><div style=3D"color:=
 rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif=
;">&nbsp; &nbsp; &lt;channel type=3D"spicevmc"&gt;</div><div style=3D"color=
: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-seri=
f;">&nbsp; &nbsp; &nbsp; &lt;target type=3D"virtio" name=3D"com.redhat.spic=
e.0"/&gt;</div><div style=3D"color: rgb(38, 40, 42); font-family: Helvetica=
 Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &nbsp; &lt;address type=
=3D"virtio-serial" controller=3D"0" bus=3D"0" port=3D"2"/&gt;</div><div sty=
le=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial=
, sans-serif;">&nbsp; &nbsp; &lt;/channel&gt;</div><div style=3D"color: rgb=
(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&=
nbsp; &nbsp; &lt;input type=3D"tablet" bus=3D"usb"&gt;</div><div style=3D"c=
olor: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-=
serif;">&nbsp; &nbsp; &nbsp; &lt;address type=3D"usb" bus=3D"0" port=3D"1"/=
&gt;</div><div style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue=
, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &lt;/input&gt;</div><div sty=
le=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial=
, sans-serif;">&nbsp; &nbsp; &lt;input type=3D"mouse" bus=3D"ps2"/&gt;</div=
><div style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helveti=
ca, Arial, sans-serif;">&nbsp; &nbsp; &lt;input type=3D"keyboard" bus=3D"ps=
2"/&gt;</div><div style=3D"color: rgb(38, 40, 42); font-family: Helvetica N=
eue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &lt;graphics type=3D"spic=
e" autoport=3D"yes"&gt;</div><div style=3D"color: rgb(38, 40, 42); font-fam=
ily: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &nbsp; &l=
t;listen type=3D"address"/&gt;</div><div style=3D"color: rgb(38, 40, 42); f=
ont-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &n=
bsp; &lt;image compression=3D"off"/&gt;</div><div style=3D"color: rgb(38, 4=
0, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; =
&nbsp; &lt;/graphics&gt;</div><div style=3D"color: rgb(38, 40, 42); font-fa=
mily: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &lt;soun=
d model=3D"ich6"&gt;</div><div style=3D"color: rgb(38, 40, 42); font-family=
: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &nbsp; &lt;a=
ddress type=3D"pci" domain=3D"0x0000" bus=3D"0x00" slot=3D"0x04" function=
=3D"0x0"/&gt;</div><div style=3D"color: rgb(38, 40, 42); font-family: Helve=
tica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &lt;/sound&gt;</div=
><div style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helveti=
ca, Arial, sans-serif;">&nbsp; &nbsp; &lt;video&gt;</div><div style=3D"colo=
r: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-ser=
if;">&nbsp; &nbsp; &nbsp; &lt;model type=3D"qxl" ram=3D"65536" vram=3D"6553=
6" vgamem=3D"65536" heads=3D"2" primary=3D"yes"/&gt;</div><div style=3D"col=
or: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-se=
rif;">&nbsp; &nbsp; &nbsp; &lt;address type=3D"pci" domain=3D"0x0000" bus=
=3D"0x00" slot=3D"0x09" function=3D"0x0"/&gt;</div><div style=3D"color: rgb=
(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&=
nbsp; &nbsp; &lt;/video&gt;</div><div style=3D"color: rgb(38, 40, 42); font=
-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &lt;r=
edirdev bus=3D"usb" type=3D"spicevmc"&gt;</div><div style=3D"color: rgb(38,=
 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&nbsp=
; &nbsp; &nbsp; &lt;address type=3D"usb" bus=3D"0" port=3D"2"/&gt;</div><di=
v style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, =
Arial, sans-serif;">&nbsp; &nbsp; &lt;/redirdev&gt;</div><div style=3D"colo=
r: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-ser=
if;">&nbsp; &nbsp; &lt;redirdev bus=3D"usb" type=3D"spicevmc"&gt;</div><div=
 style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, A=
rial, sans-serif;">&nbsp; &nbsp; &nbsp; &lt;address type=3D"usb" bus=3D"0" =
port=3D"3"/&gt;</div><div style=3D"color: rgb(38, 40, 42); font-family: Hel=
vetica Neue, Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &lt;/redirdev&gt;=
</div><div style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, He=
lvetica, Arial, sans-serif;">&nbsp; &nbsp; &lt;memballoon model=3D"virtio"&=
gt;</div><div style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue,=
 Helvetica, Arial, sans-serif;">&nbsp; &nbsp; &nbsp; &lt;address type=3D"pc=
i" domain=3D"0x0000" bus=3D"0x00" slot=3D"0x08" function=3D"0x0"/&gt;</div>=
<div style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetic=
a, Arial, sans-serif;">&nbsp; &nbsp; &lt;/memballoon&gt;</div><div style=3D=
"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, san=
s-serif;">&nbsp; &lt;/devices&gt;</div><div style=3D"color: rgb(38, 40, 42)=
; font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">&lt;/domain&g=
t;</div></div></div><div class=3D"ydp50cd5413yqt3117204615" id=3D"ydp50cd54=
13yqtfd84472"><br clear=3D"none"></div></div>
            </div>
        </div></body></html>
------=_Part_514715_1180039844.1616426838200--

--===============1643939288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1643939288==--
