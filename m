Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BE73D1B8F
	for <lists+spice-devel@lfdr.de>; Thu, 22 Jul 2021 03:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 558B76EDE7;
	Thu, 22 Jul 2021 01:55:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D2856EDE8
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Jul 2021 01:55:49 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id dp20so6088853ejc.7
 for <spice-devel@lists.freedesktop.org>; Wed, 21 Jul 2021 18:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=oV7RSzonibt7HJeuYI2LNlg7KD7PTdcg6FjG4aK5h9M=;
 b=eK/stcuSWYxj+UnXI6oyuscV0QtVbk6BCtR28ZtToCVwF3VZcnXZYrQKxWr7/I8pxv
 ZSl7VnhrD2VElMSue1bpAayXQNhrmI93OX0bbWc3kAROJsy6mIEO5wwVaXYfuGdVZGr/
 xqK/tMlfuC8GP6IRjyNsJAxC9XxJHpFLu0CROReab3fOd9tMm++N815Vbi1l6FeIoY+9
 bMj9xz/LoFmfK/RioeOt/d7+pLBG5vMYiZFCQupZjvppH4Wy+JhtYv4XoaIsn+d9Epgl
 2A38vjJBkKUTbaMOvzagweH5ALlGeVRNNlbhUgRIcAZ3h/rSrkWZNWVn/yZP42K/7jmE
 NJVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=oV7RSzonibt7HJeuYI2LNlg7KD7PTdcg6FjG4aK5h9M=;
 b=EDzimrhRVoklTnEZ9iv852LrLqHd8p99gPLF0UaD3UKTM33+YOQtOZ4VCLpSp30G+p
 TvSkS8xHBIj0QlYQaFaRXhVepziRkLJbDMX3CW1VDV0A2UKaJahiPEyXFZlHEKX08x5Z
 f7IQEEEZX+9o5gIVt66UJRKIPjpjIGNOaiJpO/q0YTVGFMwhI3liK62x3o+uEoflc9wP
 tlGTMfbVbCV14rrW3OnRB3peYj1ji09v6XNVIJd25PNmtODY1uncxRCINcrkPFqeJ9IS
 gYLOhm8F/O/kCXrUVlSBwhSyJDgHUepimr9RGd490B9qxK5MFIYv1Xf69gVVRr0uZ2if
 7r1g==
X-Gm-Message-State: AOAM530a/1YcBV1Q+Q556zrH2lC7dixsX61YTpKFf9bheaWee8QvCK6X
 n4Y0PYT3RSZ7lsrpdMPaBllhiuFtzgIkD1F2pmQlfy/kE+fmgI0c
X-Google-Smtp-Source: ABdhPJwS7w6Tsa+5rrSdZ/uCylbm/75fxrzfVh2DI53fOeTPMfDP2CgEhbB2ntsMiJE2yYOOrih9F3qJvs+/vSgE03g=
X-Received: by 2002:a17:907:2d8a:: with SMTP id
 gt10mr41848526ejc.10.1626918947683; 
 Wed, 21 Jul 2021 18:55:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAEV_hz1yuL6ZeBThQ==grLbzpCs2eeE8+8n9s7EYaeFOY-YB5Q@mail.gmail.com>
In-Reply-To: <CAEV_hz1yuL6ZeBThQ==grLbzpCs2eeE8+8n9s7EYaeFOY-YB5Q@mail.gmail.com>
From: gansteed <gansteed@gmail.com>
Date: Thu, 22 Jul 2021 09:55:36 +0800
Message-ID: <CAEV_hz2ULJPq9BuzZZchGHb7os7vLChyOiNTBGC+Zga-s-YZQQ@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Subject: Re: [Spice-devel] Poor video performance in virt-manager with spice
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
Content-Type: multipart/mixed; boundary="===============1518719337=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1518719337==
Content-Type: multipart/alternative; boundary="000000000000f482ce05c7ac95d7"

--000000000000f482ce05c7ac95d7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Another difference is OS:

NUC is using Debian 10 with qemu 3.1.0, Linux kernel 4.19.194-2
Desktop is using Debian 11 with qemu 5.2.0, Linux kernel 5.10.40-1

gansteed <gansteed@gmail.com> =E4=BA=8E2021=E5=B9=B47=E6=9C=8822=E6=97=A5=
=E5=91=A8=E5=9B=9B =E4=B8=8A=E5=8D=889:53=E5=86=99=E9=81=93=EF=BC=9A

> Hello,
>
>     I'm using spice in virt-manager, but it's slow in video. I've been
> using spice in my NUC, with the same configuration, that's fluently. The
> biggest difference between my NUC and desktop is hardware is different. N=
UC
> is using a integrated graphics while desktop using a RTI RX 550/560(I don=
't
> remember).
>
>     Is there any suggestions to make the VM video performance faster?
>
> Hardware of my desktop:
>
> $ lspci | grep VGA
> 09:00.0 VGA compatible controller: Advanced Micro Devices, Inc. [AMD/ATI]
> Baffin [Radeon RX 550 640SP / RX 560/560X] (rev ff)
> $ lscpu  | grep 'Model name'
> Model name:                      AMD Ryzen 7 5800X 8-Core Processor
>
> XML of my VM:
>
> <domain type=3D'kvm' id=3D'13'>
>   <name>win7</name>
>   <uuid>5d9cee98-36b5-475e-a74d-4e8a19e74ba9</uuid>
>   <metadata>
>     <libosinfo:libosinfo xmlns:libosinfo=3D"
> http://libosinfo.org/xmlns/libvirt/domain/1.0">
>       <libosinfo:os id=3D"http://microsoft.com/win/7"/>
>     </libosinfo:libosinfo>
>   </metadata>
>   <memory unit=3D'KiB'>8388608</memory>
>   <currentMemory unit=3D'KiB'>8388608</currentMemory>
>   <vcpu placement=3D'static'>4</vcpu>
>   <resource>
>     <partition>/machine</partition>
>   </resource>
>   <os>
>     <type arch=3D'x86_64' machine=3D'pc-q35-5.2'>hvm</type>
>     <boot dev=3D'hd'/>
>   </os>
>   <features>
>     <acpi/>
>     <apic/>
>     <hyperv>
>       <relaxed state=3D'on'/>
>       <vapic state=3D'on'/>
>       <spinlocks state=3D'on' retries=3D'8191'/>
>     </hyperv>
>     <vmport state=3D'off'/>
>   </features>
>   <cpu mode=3D'custom' match=3D'exact' check=3D'full'>
>     <model fallback=3D'forbid'>EPYC-Rome</model>
>     <vendor>AMD</vendor>
>     <feature policy=3D'require' name=3D'x2apic'/>
>     <feature policy=3D'require' name=3D'tsc-deadline'/>
>     <feature policy=3D'require' name=3D'hypervisor'/>
>     <feature policy=3D'require' name=3D'tsc_adjust'/>
>     <feature policy=3D'require' name=3D'erms'/>
>     <feature policy=3D'require' name=3D'invpcid'/>
>     <feature policy=3D'require' name=3D'pku'/>
>     <feature policy=3D'require' name=3D'vaes'/>
>     <feature policy=3D'require' name=3D'vpclmulqdq'/>
>     <feature policy=3D'require' name=3D'fsrm'/>
>     <feature policy=3D'require' name=3D'spec-ctrl'/>
>     <feature policy=3D'require' name=3D'stibp'/>
>     <feature policy=3D'require' name=3D'arch-capabilities'/>
>     <feature policy=3D'require' name=3D'ssbd'/>
>     <feature policy=3D'require' name=3D'xsaves'/>
>     <feature policy=3D'require' name=3D'cmp_legacy'/>
>     <feature policy=3D'require' name=3D'amd-ssbd'/>
>     <feature policy=3D'require' name=3D'virt-ssbd'/>
>     <feature policy=3D'require' name=3D'rdctl-no'/>
>     <feature policy=3D'require' name=3D'skip-l1dfl-vmentry'/>
>     <feature policy=3D'require' name=3D'mds-no'/>
>     <feature policy=3D'require' name=3D'pschange-mc-no'/>
>     <feature policy=3D'disable' name=3D'svm'/>
>     <feature policy=3D'require' name=3D'topoext'/>
>     <feature policy=3D'disable' name=3D'npt'/>
>     <feature policy=3D'disable' name=3D'nrip-save'/>
>   </cpu>
>   <clock offset=3D'localtime'>
>     <timer name=3D'rtc' tickpolicy=3D'catchup'/>
>     <timer name=3D'pit' tickpolicy=3D'delay'/>
>     <timer name=3D'hpet' present=3D'no'/>
>     <timer name=3D'hypervclock' present=3D'yes'/>
>   </clock>
>   <on_poweroff>destroy</on_poweroff>
>   <on_reboot>restart</on_reboot>
>   <on_crash>destroy</on_crash>
>   <pm>
>     <suspend-to-mem enabled=3D'no'/>
>     <suspend-to-disk enabled=3D'no'/>
>   </pm>
>   <devices>
>     <emulator>/usr/bin/qemu-system-x86_64</emulator>
>     <disk type=3D'file' device=3D'disk'>
>       <driver name=3D'qemu' type=3D'qcow2'/>
>       <source file=3D'/data/vms/win7.qcow2' index=3D'1'/>
>       <backingStore/>
>       <target dev=3D'vda' bus=3D'virtio'/>
>       <alias name=3D'virtio-disk0'/>
>       <address type=3D'pci' domain=3D'0x0000' bus=3D'0x03' slot=3D'0x00'
> function=3D'0x0'/>
>     </disk>
>     <controller type=3D'usb' index=3D'0' model=3D'ich9-ehci1'>
>       <alias name=3D'usb'/>
>       <address type=3D'pci' domain=3D'0x0000' bus=3D'0x00' slot=3D'0x1d'
> function=3D'0x7'/>
>     </controller>
>     <controller type=3D'usb' index=3D'0' model=3D'ich9-uhci1'>
>       <alias name=3D'usb'/>
>       <master startport=3D'0'/>
>       <address type=3D'pci' domain=3D'0x0000' bus=3D'0x00' slot=3D'0x1d'
> function=3D'0x0' multifunction=3D'on'/>
>     </controller>
>     <controller type=3D'usb' index=3D'0' model=3D'ich9-uhci2'>
>       <alias name=3D'usb'/>
>       <master startport=3D'2'/>
>       <address type=3D'pci' domain=3D'0x0000' bus=3D'0x00' slot=3D'0x1d'
> function=3D'0x1'/>
>     </controller>
>     <controller type=3D'usb' index=3D'0' model=3D'ich9-uhci3'>
>       <alias name=3D'usb'/>
>       <master startport=3D'4'/>
>       <address type=3D'pci' domain=3D'0x0000' bus=3D'0x00' slot=3D'0x1d'
> function=3D'0x2'/>
>     </controller>
>     <controller type=3D'sata' index=3D'0'>
>       <alias name=3D'ide'/>
>       <address type=3D'pci' domain=3D'0x0000' bus=3D'0x00' slot=3D'0x1f'
> function=3D'0x2'/>
>     </controller>
>     <controller type=3D'pci' index=3D'0' model=3D'pcie-root'>
>       <alias name=3D'pcie.0'/>
>     </controller>
>     <controller type=3D'pci' index=3D'1' model=3D'pcie-root-port'>
>       <model name=3D'pcie-root-port'/>
>       <target chassis=3D'1' port=3D'0x10'/>
>       <alias name=3D'pci.1'/>
>       <address type=3D'pci' domain=3D'0x0000' bus=3D'0x00' slot=3D'0x02'
> function=3D'0x0' multifunction=3D'on'/>
>     </controller>
>     <controller type=3D'pci' index=3D'2' model=3D'pcie-root-port'>
>       <model name=3D'pcie-root-port'/>
>       <target chassis=3D'2' port=3D'0x11'/>
>       <alias name=3D'pci.2'/>
>       <address type=3D'pci' domain=3D'0x0000' bus=3D'0x00' slot=3D'0x02'
> function=3D'0x1'/>
>     </controller>
>     <controller type=3D'pci' index=3D'3' model=3D'pcie-root-port'>
>       <model name=3D'pcie-root-port'/>
>       <target chassis=3D'3' port=3D'0x12'/>
>       <alias name=3D'pci.3'/>
>       <address type=3D'pci' domain=3D'0x0000' bus=3D'0x00' slot=3D'0x02'
> function=3D'0x2'/>
>     </controller>
>     <controller type=3D'pci' index=3D'4' model=3D'pcie-root-port'>
>       <model name=3D'pcie-root-port'/>
>       <target chassis=3D'4' port=3D'0x13'/>
>       <alias name=3D'pci.4'/>
>       <address type=3D'pci' domain=3D'0x0000' bus=3D'0x00' slot=3D'0x02'
> function=3D'0x3'/>
>     </controller>
>     <controller type=3D'pci' index=3D'5' model=3D'pcie-root-port'>
>       <model name=3D'pcie-root-port'/>
>       <target chassis=3D'5' port=3D'0x14'/>
>       <alias name=3D'pci.5'/>
>       <address type=3D'pci' domain=3D'0x0000' bus=3D'0x00' slot=3D'0x02'
> function=3D'0x4'/>
>     </controller>
>     <controller type=3D'virtio-serial' index=3D'0'>
>       <alias name=3D'virtio-serial0'/>
>       <address type=3D'pci' domain=3D'0x0000' bus=3D'0x02' slot=3D'0x00'
> function=3D'0x0'/>
>     </controller>
>     <interface type=3D'network'>
>       <mac address=3D'52:54:00:3b:e8:0f'/>
>       <source network=3D'default'
> portid=3D'4814d165-b576-4bfe-9e61-afd02fee8ca2' bridge=3D'virbr0'/>
>       <target dev=3D'vnet12'/>
>       <model type=3D'virtio'/>
>       <alias name=3D'net0'/>
>       <address type=3D'pci' domain=3D'0x0000' bus=3D'0x01' slot=3D'0x00'
> function=3D'0x0'/>
>     </interface>
>     <serial type=3D'pty'>
>       <source path=3D'/dev/pts/0'/>
>       <target type=3D'isa-serial' port=3D'0'>
>         <model name=3D'isa-serial'/>
>       </target>
>       <alias name=3D'serial0'/>
>     </serial>
>     <console type=3D'pty' tty=3D'/dev/pts/0'>
>       <source path=3D'/dev/pts/0'/>
>       <target type=3D'serial' port=3D'0'/>
>       <alias name=3D'serial0'/>
>     </console>
>     <channel type=3D'spicevmc'>
>       <target type=3D'virtio' name=3D'com.redhat.spice.0' state=3D'connec=
ted'/>
>       <alias name=3D'channel0'/>
>       <address type=3D'virtio-serial' controller=3D'0' bus=3D'0' port=3D'=
1'/>
>     </channel>
>     <input type=3D'mouse' bus=3D'ps2'>
>       <alias name=3D'input0'/>
>     </input>
>     <input type=3D'keyboard' bus=3D'ps2'>
>       <alias name=3D'input1'/>
>     </input>
>     <graphics type=3D'spice' port=3D'5900' autoport=3D'no' listen=3D'127.=
0.0.1'>
>       <listen type=3D'address' address=3D'127.0.0.1'/>
>       <gl enable=3D'no'/>
>     </graphics>
>     <video>
>       <model type=3D'qxl' ram=3D'65536' vram=3D'65536' vgamem=3D'16384' h=
eads=3D'1'
> primary=3D'yes'/>
>       <alias name=3D'video0'/>
>       <address type=3D'pci' domain=3D'0x0000' bus=3D'0x00' slot=3D'0x01'
> function=3D'0x0'/>
>     </video>
>     <memballoon model=3D'virtio'>
>       <alias name=3D'balloon0'/>
>       <address type=3D'pci' domain=3D'0x0000' bus=3D'0x04' slot=3D'0x00'
> function=3D'0x0'/>
>     </memballoon>
>   </devices>
>   <seclabel type=3D'dynamic' model=3D'apparmor' relabel=3D'yes'>
>     <label>libvirt-5d9cee98-36b5-475e-a74d-4e8a19e74ba9</label>
>     <imagelabel>libvirt-5d9cee98-36b5-475e-a74d-4e8a19e74ba9</imagelabel>
>   </seclabel>
>   <seclabel type=3D'dynamic' model=3D'dac' relabel=3D'yes'>
>     <label>+64055:+64055</label>
>     <imagelabel>+64055:+64055</imagelabel>
>   </seclabel>
> </domain>
>
>

--000000000000f482ce05c7ac95d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Another difference is OS:<div><br></div><=
div>NUC is using Debian 10 with qemu=C2=A03.1.0, Linux kernel=C2=A04.19.194=
-2</div><div>Desktop is using Debian 11 with qemu 5.2.0, Linux kernel=C2=A0=
5.10.40-1</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">gansteed &lt;<a href=3D"mailto:gansteed@gmail.com">gansteed=
@gmail.com</a>&gt; =E4=BA=8E2021=E5=B9=B47=E6=9C=8822=E6=97=A5=E5=91=A8=E5=
=9B=9B =E4=B8=8A=E5=8D=889:53=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello,<div><br></=
div><div>=C2=A0 =C2=A0 I&#39;m using spice in virt-manager, but it&#39;s sl=
ow in video. I&#39;ve been using spice in my NUC, with the same configurati=
on, that&#39;s fluently. The biggest difference between my NUC and desktop =
is hardware is different. NUC is using a=C2=A0integrated graphics while des=
ktop using a RTI RX 550/560(I don&#39;t remember).</div><div><br></div><div=
>=C2=A0 =C2=A0 Is there any suggestions to make the VM video performance fa=
ster?</div><div><br></div><div>Hardware of my desktop:</div><div><br></div>=
<div>$ lspci | grep VGA<br>09:00.0 VGA compatible controller: Advanced Micr=
o Devices, Inc. [AMD/ATI] Baffin [Radeon RX 550 640SP / RX 560/560X] (rev f=
f)<br></div><div>$ lscpu =C2=A0| grep &#39;Model name&#39;<br>Model name: =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0AMD Ryzen 7 5800X 8-Core Processor<br></div><div><br></div><div>XML of m=
y VM:</div><div><br></div><div>&lt;domain type=3D&#39;kvm&#39; id=3D&#39;13=
&#39;&gt;<br>=C2=A0 &lt;name&gt;win7&lt;/name&gt;<br>=C2=A0 &lt;uuid&gt;5d9=
cee98-36b5-475e-a74d-4e8a19e74ba9&lt;/uuid&gt;<br>=C2=A0 &lt;metadata&gt;<b=
r>=C2=A0 =C2=A0 &lt;libosinfo:libosinfo xmlns:libosinfo=3D&quot;<a href=3D"=
http://libosinfo.org/xmlns/libvirt/domain/1.0" target=3D"_blank">http://lib=
osinfo.org/xmlns/libvirt/domain/1.0</a>&quot;&gt;<br>=C2=A0 =C2=A0 =C2=A0 &=
lt;libosinfo:os id=3D&quot;<a href=3D"http://microsoft.com/win/7" target=3D=
"_blank">http://microsoft.com/win/7</a>&quot;/&gt;<br>=C2=A0 =C2=A0 &lt;/li=
bosinfo:libosinfo&gt;<br>=C2=A0 &lt;/metadata&gt;<br>=C2=A0 &lt;memory unit=
=3D&#39;KiB&#39;&gt;8388608&lt;/memory&gt;<br>=C2=A0 &lt;currentMemory unit=
=3D&#39;KiB&#39;&gt;8388608&lt;/currentMemory&gt;<br>=C2=A0 &lt;vcpu placem=
ent=3D&#39;static&#39;&gt;4&lt;/vcpu&gt;<br>=C2=A0 &lt;resource&gt;<br>=C2=
=A0 =C2=A0 &lt;partition&gt;/machine&lt;/partition&gt;<br>=C2=A0 &lt;/resou=
rce&gt;<br>=C2=A0 &lt;os&gt;<br>=C2=A0 =C2=A0 &lt;type arch=3D&#39;x86_64&#=
39; machine=3D&#39;pc-q35-5.2&#39;&gt;hvm&lt;/type&gt;<br>=C2=A0 =C2=A0 &lt=
;boot dev=3D&#39;hd&#39;/&gt;<br>=C2=A0 &lt;/os&gt;<br>=C2=A0 &lt;features&=
gt;<br>=C2=A0 =C2=A0 &lt;acpi/&gt;<br>=C2=A0 =C2=A0 &lt;apic/&gt;<br>=C2=A0=
 =C2=A0 &lt;hyperv&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;relaxed state=3D&#39;on&=
#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;vapic state=3D&#39;on&#39;/&gt;<br>=
=C2=A0 =C2=A0 =C2=A0 &lt;spinlocks state=3D&#39;on&#39; retries=3D&#39;8191=
&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/hyperv&gt;<br>=C2=A0 =C2=A0 &lt;vmport sta=
te=3D&#39;off&#39;/&gt;<br>=C2=A0 &lt;/features&gt;<br>=C2=A0 &lt;cpu mode=
=3D&#39;custom&#39; match=3D&#39;exact&#39; check=3D&#39;full&#39;&gt;<br>=
=C2=A0 =C2=A0 &lt;model fallback=3D&#39;forbid&#39;&gt;EPYC-Rome&lt;/model&=
gt;<br>=C2=A0 =C2=A0 &lt;vendor&gt;AMD&lt;/vendor&gt;<br>=C2=A0 =C2=A0 &lt;=
feature policy=3D&#39;require&#39; name=3D&#39;x2apic&#39;/&gt;<br>=C2=A0 =
=C2=A0 &lt;feature policy=3D&#39;require&#39; name=3D&#39;tsc-deadline&#39;=
/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39; name=3D&#39;h=
ypervisor&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39;=
 name=3D&#39;tsc_adjust&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#3=
9;require&#39; name=3D&#39;erms&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature poli=
cy=3D&#39;require&#39; name=3D&#39;invpcid&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;f=
eature policy=3D&#39;require&#39; name=3D&#39;pku&#39;/&gt;<br>=C2=A0 =C2=
=A0 &lt;feature policy=3D&#39;require&#39; name=3D&#39;vaes&#39;/&gt;<br>=
=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39; name=3D&#39;vpclmulqdq=
&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39; name=3D&=
#39;fsrm&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39; =
name=3D&#39;spec-ctrl&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;=
require&#39; name=3D&#39;stibp&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature polic=
y=3D&#39;require&#39; name=3D&#39;arch-capabilities&#39;/&gt;<br>=C2=A0 =C2=
=A0 &lt;feature policy=3D&#39;require&#39; name=3D&#39;ssbd&#39;/&gt;<br>=
=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39; name=3D&#39;xsaves&#39=
;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39; name=3D&#39;=
cmp_legacy&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39=
; name=3D&#39;amd-ssbd&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39=
;require&#39; name=3D&#39;virt-ssbd&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature =
policy=3D&#39;require&#39; name=3D&#39;rdctl-no&#39;/&gt;<br>=C2=A0 =C2=A0 =
&lt;feature policy=3D&#39;require&#39; name=3D&#39;skip-l1dfl-vmentry&#39;/=
&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39; name=3D&#39;md=
s-no&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39; name=
=3D&#39;pschange-mc-no&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39=
;disable&#39; name=3D&#39;svm&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=
=3D&#39;require&#39; name=3D&#39;topoext&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;fea=
ture policy=3D&#39;disable&#39; name=3D&#39;npt&#39;/&gt;<br>=C2=A0 =C2=A0 =
&lt;feature policy=3D&#39;disable&#39; name=3D&#39;nrip-save&#39;/&gt;<br>=
=C2=A0 &lt;/cpu&gt;<br>=C2=A0 &lt;clock offset=3D&#39;localtime&#39;&gt;<br=
>=C2=A0 =C2=A0 &lt;timer name=3D&#39;rtc&#39; tickpolicy=3D&#39;catchup&#39=
;/&gt;<br>=C2=A0 =C2=A0 &lt;timer name=3D&#39;pit&#39; tickpolicy=3D&#39;de=
lay&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;timer name=3D&#39;hpet&#39; present=3D&#=
39;no&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;timer name=3D&#39;hypervclock&#39; pre=
sent=3D&#39;yes&#39;/&gt;<br>=C2=A0 &lt;/clock&gt;<br>=C2=A0 &lt;on_powerof=
f&gt;destroy&lt;/on_poweroff&gt;<br>=C2=A0 &lt;on_reboot&gt;restart&lt;/on_=
reboot&gt;<br>=C2=A0 &lt;on_crash&gt;destroy&lt;/on_crash&gt;<br>=C2=A0 &lt=
;pm&gt;<br>=C2=A0 =C2=A0 &lt;suspend-to-mem enabled=3D&#39;no&#39;/&gt;<br>=
=C2=A0 =C2=A0 &lt;suspend-to-disk enabled=3D&#39;no&#39;/&gt;<br>=C2=A0 &lt=
;/pm&gt;<br>=C2=A0 &lt;devices&gt;<br>=C2=A0 =C2=A0 &lt;emulator&gt;/usr/bi=
n/qemu-system-x86_64&lt;/emulator&gt;<br>=C2=A0 =C2=A0 &lt;disk type=3D&#39=
;file&#39; device=3D&#39;disk&#39;&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;driver n=
ame=3D&#39;qemu&#39; type=3D&#39;qcow2&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &l=
t;source file=3D&#39;/data/vms/win7.qcow2&#39; index=3D&#39;1&#39;/&gt;<br>=
=C2=A0 =C2=A0 =C2=A0 &lt;backingStore/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;targ=
et dev=3D&#39;vda&#39; bus=3D&#39;virtio&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 =
&lt;alias name=3D&#39;virtio-disk0&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;ad=
dress type=3D&#39;pci&#39; domain=3D&#39;0x0000&#39; bus=3D&#39;0x03&#39; s=
lot=3D&#39;0x00&#39; function=3D&#39;0x0&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/di=
sk&gt;<br>=C2=A0 =C2=A0 &lt;controller type=3D&#39;usb&#39; index=3D&#39;0&=
#39; model=3D&#39;ich9-ehci1&#39;&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;alias nam=
e=3D&#39;usb&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;address type=3D&#39;pci&=
#39; domain=3D&#39;0x0000&#39; bus=3D&#39;0x00&#39; slot=3D&#39;0x1d&#39; f=
unction=3D&#39;0x7&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/controller&gt;<br>=C2=A0=
 =C2=A0 &lt;controller type=3D&#39;usb&#39; index=3D&#39;0&#39; model=3D&#3=
9;ich9-uhci1&#39;&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;alias name=3D&#39;usb&#39=
;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;master startport=3D&#39;0&#39;/&gt;<br>=
=C2=A0 =C2=A0 =C2=A0 &lt;address type=3D&#39;pci&#39; domain=3D&#39;0x0000&=
#39; bus=3D&#39;0x00&#39; slot=3D&#39;0x1d&#39; function=3D&#39;0x0&#39; mu=
ltifunction=3D&#39;on&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/controller&gt;<br>=C2=
=A0 =C2=A0 &lt;controller type=3D&#39;usb&#39; index=3D&#39;0&#39; model=3D=
&#39;ich9-uhci2&#39;&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;alias name=3D&#39;usb&=
#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;master startport=3D&#39;2&#39;/&gt;<b=
r>=C2=A0 =C2=A0 =C2=A0 &lt;address type=3D&#39;pci&#39; domain=3D&#39;0x000=
0&#39; bus=3D&#39;0x00&#39; slot=3D&#39;0x1d&#39; function=3D&#39;0x1&#39;/=
&gt;<br>=C2=A0 =C2=A0 &lt;/controller&gt;<br>=C2=A0 =C2=A0 &lt;controller t=
ype=3D&#39;usb&#39; index=3D&#39;0&#39; model=3D&#39;ich9-uhci3&#39;&gt;<br=
>=C2=A0 =C2=A0 =C2=A0 &lt;alias name=3D&#39;usb&#39;/&gt;<br>=C2=A0 =C2=A0 =
=C2=A0 &lt;master startport=3D&#39;4&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;=
address type=3D&#39;pci&#39; domain=3D&#39;0x0000&#39; bus=3D&#39;0x00&#39;=
 slot=3D&#39;0x1d&#39; function=3D&#39;0x2&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/=
controller&gt;<br>=C2=A0 =C2=A0 &lt;controller type=3D&#39;sata&#39; index=
=3D&#39;0&#39;&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;alias name=3D&#39;ide&#39;/&=
gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;address type=3D&#39;pci&#39; domain=3D&#39;=
0x0000&#39; bus=3D&#39;0x00&#39; slot=3D&#39;0x1f&#39; function=3D&#39;0x2&=
#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/controller&gt;<br>=C2=A0 =C2=A0 &lt;control=
ler type=3D&#39;pci&#39; index=3D&#39;0&#39; model=3D&#39;pcie-root&#39;&gt=
;<br>=C2=A0 =C2=A0 =C2=A0 &lt;alias name=3D&#39;pcie.0&#39;/&gt;<br>=C2=A0 =
=C2=A0 &lt;/controller&gt;<br>=C2=A0 =C2=A0 &lt;controller type=3D&#39;pci&=
#39; index=3D&#39;1&#39; model=3D&#39;pcie-root-port&#39;&gt;<br>=C2=A0 =C2=
=A0 =C2=A0 &lt;model name=3D&#39;pcie-root-port&#39;/&gt;<br>=C2=A0 =C2=A0 =
=C2=A0 &lt;target chassis=3D&#39;1&#39; port=3D&#39;0x10&#39;/&gt;<br>=C2=
=A0 =C2=A0 =C2=A0 &lt;alias name=3D&#39;pci.1&#39;/&gt;<br>=C2=A0 =C2=A0 =
=C2=A0 &lt;address type=3D&#39;pci&#39; domain=3D&#39;0x0000&#39; bus=3D&#3=
9;0x00&#39; slot=3D&#39;0x02&#39; function=3D&#39;0x0&#39; multifunction=3D=
&#39;on&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/controller&gt;<br>=C2=A0 =C2=A0 &lt=
;controller type=3D&#39;pci&#39; index=3D&#39;2&#39; model=3D&#39;pcie-root=
-port&#39;&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;model name=3D&#39;pcie-root-port=
&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;target chassis=3D&#39;2&#39; port=3D=
&#39;0x11&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;alias name=3D&#39;pci.2&#39=
;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;address type=3D&#39;pci&#39; domain=3D&#=
39;0x0000&#39; bus=3D&#39;0x00&#39; slot=3D&#39;0x02&#39; function=3D&#39;0=
x1&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/controller&gt;<br>=C2=A0 =C2=A0 &lt;cont=
roller type=3D&#39;pci&#39; index=3D&#39;3&#39; model=3D&#39;pcie-root-port=
&#39;&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;model name=3D&#39;pcie-root-port&#39;=
/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;target chassis=3D&#39;3&#39; port=3D&#39;=
0x12&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;alias name=3D&#39;pci.3&#39;/&gt=
;<br>=C2=A0 =C2=A0 =C2=A0 &lt;address type=3D&#39;pci&#39; domain=3D&#39;0x=
0000&#39; bus=3D&#39;0x00&#39; slot=3D&#39;0x02&#39; function=3D&#39;0x2&#3=
9;/&gt;<br>=C2=A0 =C2=A0 &lt;/controller&gt;<br>=C2=A0 =C2=A0 &lt;controlle=
r type=3D&#39;pci&#39; index=3D&#39;4&#39; model=3D&#39;pcie-root-port&#39;=
&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;model name=3D&#39;pcie-root-port&#39;/&gt;=
<br>=C2=A0 =C2=A0 =C2=A0 &lt;target chassis=3D&#39;4&#39; port=3D&#39;0x13&=
#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;alias name=3D&#39;pci.4&#39;/&gt;<br>=
=C2=A0 =C2=A0 =C2=A0 &lt;address type=3D&#39;pci&#39; domain=3D&#39;0x0000&=
#39; bus=3D&#39;0x00&#39; slot=3D&#39;0x02&#39; function=3D&#39;0x3&#39;/&g=
t;<br>=C2=A0 =C2=A0 &lt;/controller&gt;<br>=C2=A0 =C2=A0 &lt;controller typ=
e=3D&#39;pci&#39; index=3D&#39;5&#39; model=3D&#39;pcie-root-port&#39;&gt;<=
br>=C2=A0 =C2=A0 =C2=A0 &lt;model name=3D&#39;pcie-root-port&#39;/&gt;<br>=
=C2=A0 =C2=A0 =C2=A0 &lt;target chassis=3D&#39;5&#39; port=3D&#39;0x14&#39;=
/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;alias name=3D&#39;pci.5&#39;/&gt;<br>=C2=
=A0 =C2=A0 =C2=A0 &lt;address type=3D&#39;pci&#39; domain=3D&#39;0x0000&#39=
; bus=3D&#39;0x00&#39; slot=3D&#39;0x02&#39; function=3D&#39;0x4&#39;/&gt;<=
br>=C2=A0 =C2=A0 &lt;/controller&gt;<br>=C2=A0 =C2=A0 &lt;controller type=
=3D&#39;virtio-serial&#39; index=3D&#39;0&#39;&gt;<br>=C2=A0 =C2=A0 =C2=A0 =
&lt;alias name=3D&#39;virtio-serial0&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;=
address type=3D&#39;pci&#39; domain=3D&#39;0x0000&#39; bus=3D&#39;0x02&#39;=
 slot=3D&#39;0x00&#39; function=3D&#39;0x0&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/=
controller&gt;<br>=C2=A0 =C2=A0 &lt;interface type=3D&#39;network&#39;&gt;<=
br>=C2=A0 =C2=A0 =C2=A0 &lt;mac address=3D&#39;52:54:00:3b:e8:0f&#39;/&gt;<=
br>=C2=A0 =C2=A0 =C2=A0 &lt;source network=3D&#39;default&#39; portid=3D&#3=
9;4814d165-b576-4bfe-9e61-afd02fee8ca2&#39; bridge=3D&#39;virbr0&#39;/&gt;<=
br>=C2=A0 =C2=A0 =C2=A0 &lt;target dev=3D&#39;vnet12&#39;/&gt;<br>=C2=A0 =
=C2=A0 =C2=A0 &lt;model type=3D&#39;virtio&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=
=A0 &lt;alias name=3D&#39;net0&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;addres=
s type=3D&#39;pci&#39; domain=3D&#39;0x0000&#39; bus=3D&#39;0x01&#39; slot=
=3D&#39;0x00&#39; function=3D&#39;0x0&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/inter=
face&gt;<br>=C2=A0 =C2=A0 &lt;serial type=3D&#39;pty&#39;&gt;<br>=C2=A0 =C2=
=A0 =C2=A0 &lt;source path=3D&#39;/dev/pts/0&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=
=A0 &lt;target type=3D&#39;isa-serial&#39; port=3D&#39;0&#39;&gt;<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 &lt;model name=3D&#39;isa-serial&#39;/&gt;<br>=C2=A0 =
=C2=A0 =C2=A0 &lt;/target&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;alias name=3D&#39=
;serial0&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/serial&gt;<br>=C2=A0 =C2=A0 &lt;co=
nsole type=3D&#39;pty&#39; tty=3D&#39;/dev/pts/0&#39;&gt;<br>=C2=A0 =C2=A0 =
=C2=A0 &lt;source path=3D&#39;/dev/pts/0&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 =
&lt;target type=3D&#39;serial&#39; port=3D&#39;0&#39;/&gt;<br>=C2=A0 =C2=A0=
 =C2=A0 &lt;alias name=3D&#39;serial0&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/conso=
le&gt;<br>=C2=A0 =C2=A0 &lt;channel type=3D&#39;spicevmc&#39;&gt;<br>=C2=A0=
 =C2=A0 =C2=A0 &lt;target type=3D&#39;virtio&#39; name=3D&#39;com.redhat.sp=
ice.0&#39; state=3D&#39;connected&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;ali=
as name=3D&#39;channel0&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;address type=
=3D&#39;virtio-serial&#39; controller=3D&#39;0&#39; bus=3D&#39;0&#39; port=
=3D&#39;1&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/channel&gt;<br>=C2=A0 =C2=A0 &lt;=
input type=3D&#39;mouse&#39; bus=3D&#39;ps2&#39;&gt;<br>=C2=A0 =C2=A0 =C2=
=A0 &lt;alias name=3D&#39;input0&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/input&gt;<=
br>=C2=A0 =C2=A0 &lt;input type=3D&#39;keyboard&#39; bus=3D&#39;ps2&#39;&gt=
;<br>=C2=A0 =C2=A0 =C2=A0 &lt;alias name=3D&#39;input1&#39;/&gt;<br>=C2=A0 =
=C2=A0 &lt;/input&gt;<br>=C2=A0 =C2=A0 &lt;graphics type=3D&#39;spice&#39; =
port=3D&#39;5900&#39; autoport=3D&#39;no&#39; listen=3D&#39;127.0.0.1&#39;&=
gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;listen type=3D&#39;address&#39; address=3D&=
#39;127.0.0.1&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;gl enable=3D&#39;no&#39=
;/&gt;<br>=C2=A0 =C2=A0 &lt;/graphics&gt;<br>=C2=A0 =C2=A0 &lt;video&gt;<br=
>=C2=A0 =C2=A0 =C2=A0 &lt;model type=3D&#39;qxl&#39; ram=3D&#39;65536&#39; =
vram=3D&#39;65536&#39; vgamem=3D&#39;16384&#39; heads=3D&#39;1&#39; primary=
=3D&#39;yes&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;alias name=3D&#39;video0&=
#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;address type=3D&#39;pci&#39; domain=
=3D&#39;0x0000&#39; bus=3D&#39;0x00&#39; slot=3D&#39;0x01&#39; function=3D&=
#39;0x0&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/video&gt;<br>=C2=A0 =C2=A0 &lt;memb=
alloon model=3D&#39;virtio&#39;&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;alias name=
=3D&#39;balloon0&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;address type=3D&#39;=
pci&#39; domain=3D&#39;0x0000&#39; bus=3D&#39;0x04&#39; slot=3D&#39;0x00&#3=
9; function=3D&#39;0x0&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/memballoon&gt;<br>=
=C2=A0 &lt;/devices&gt;<br>=C2=A0 &lt;seclabel type=3D&#39;dynamic&#39; mod=
el=3D&#39;apparmor&#39; relabel=3D&#39;yes&#39;&gt;<br>=C2=A0 =C2=A0 &lt;la=
bel&gt;libvirt-5d9cee98-36b5-475e-a74d-4e8a19e74ba9&lt;/label&gt;<br>=C2=A0=
 =C2=A0 &lt;imagelabel&gt;libvirt-5d9cee98-36b5-475e-a74d-4e8a19e74ba9&lt;/=
imagelabel&gt;<br>=C2=A0 &lt;/seclabel&gt;<br>=C2=A0 &lt;seclabel type=3D&#=
39;dynamic&#39; model=3D&#39;dac&#39; relabel=3D&#39;yes&#39;&gt;<br>=C2=A0=
 =C2=A0 &lt;label&gt;+64055:+64055&lt;/label&gt;<br>=C2=A0 =C2=A0 &lt;image=
label&gt;+64055:+64055&lt;/imagelabel&gt;<br>=C2=A0 &lt;/seclabel&gt;<br>&l=
t;/domain&gt;<br><br></div></div>
</blockquote></div></div>

--000000000000f482ce05c7ac95d7--

--===============1518719337==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1518719337==--
