Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCB53D1B86
	for <lists+spice-devel@lfdr.de>; Thu, 22 Jul 2021 03:53:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4ADD6EDDB;
	Thu, 22 Jul 2021 01:53:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4A836EDDB
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Jul 2021 01:53:32 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id nd37so6109203ejc.3
 for <spice-devel@lists.freedesktop.org>; Wed, 21 Jul 2021 18:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=c9FmM8cihKERY3yrSfPLH1mEzowID6vq3/iUU9+Y6a0=;
 b=rl0EFDcy0Scc14Um3AsN4TsLSPiUGn3OUE47x7GSEPK5KRjQ9SOgQ8p/j19Q8oB1h4
 nMBoFZofpe4EWr1LYc+i1su4PBa01t/LeGEn3KKAeptaabXLerrjXaKHa4w8XNhTdK5m
 VDCWCS61iplF0ThLEqs1dniHKOurkGAs4z/CbvciiYea/EvKz0nTCVSE6p/k90clb7Ck
 VcMn6PVfS6khbV8wz609Tlxmk403ARVePGt3OiW9Khg/1FFau3nCWzpNvyUwTkjafMT+
 vUMphWnmZNUD+dqmP1UbwSNzR0MpHW/O6uXQczMS6AixeUbAjRbgYMJY+Q/ngMk09QiF
 rRGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=c9FmM8cihKERY3yrSfPLH1mEzowID6vq3/iUU9+Y6a0=;
 b=Xzqdk8RTYVcPyThbs73hlInrxabe76/ZWpcjTt/uZYYrj2cHlWZlwSeVMn1mf1uTH6
 OEhjbm50zEqnTnTeoklCIlWWAUmdtFAnEz6DmYFbIYeJxpB8kDpF1eRKXNNWL6o6Z4ui
 X8yYuFTaJeDNiz0f5jIgKo5cKlPaogr3hnRbVGZPk/a4kojpi4MkSZvXq9bLK9L90f7t
 og1fUYIfI5AidzUM+QnG7ojJCyplCj7k6h1QWVkTYefkkrGhVHsYbK6Bl2b/JGWBzm28
 8Cb81c+qnVDDECzIxHWQlDFY9qS4L4WLjhQ4wmH3FdWgY9MSISV4ouaC/VE/7kEixmWj
 CF2Q==
X-Gm-Message-State: AOAM5301cKtgsqgk2wSfonCOnO/R1ZeogQ31USW6yS3WHjKCp1BDj9ql
 qvvBehxvEtEusb1fzd7tlKRZuUUPumK2D4d+jgbRGmgPBPg+ybnN
X-Google-Smtp-Source: ABdhPJwCovbTSt8K328+hbp0He3Y+AxRmXz/kP4+2MG0FqB2I1K8a1iFpttUbf5W0+nWEZ89GUF7kSeYzsUCe3v83wc=
X-Received: by 2002:a17:906:b59:: with SMTP id
 v25mr16949625ejg.329.1626918811108; 
 Wed, 21 Jul 2021 18:53:31 -0700 (PDT)
MIME-Version: 1.0
From: gansteed <gansteed@gmail.com>
Date: Thu, 22 Jul 2021 09:53:20 +0800
Message-ID: <CAEV_hz1yuL6ZeBThQ==grLbzpCs2eeE8+8n9s7EYaeFOY-YB5Q@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Subject: [Spice-devel] Poor video performance in virt-manager with spice
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
Content-Type: multipart/mixed; boundary="===============0961502863=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0961502863==
Content-Type: multipart/alternative; boundary="000000000000d0874d05c7ac8d6c"

--000000000000d0874d05c7ac8d6c
Content-Type: text/plain; charset="UTF-8"

Hello,

    I'm using spice in virt-manager, but it's slow in video. I've been
using spice in my NUC, with the same configuration, that's fluently. The
biggest difference between my NUC and desktop is hardware is different. NUC
is using a integrated graphics while desktop using a RTI RX 550/560(I don't
remember).

    Is there any suggestions to make the VM video performance faster?

Hardware of my desktop:

$ lspci | grep VGA
09:00.0 VGA compatible controller: Advanced Micro Devices, Inc. [AMD/ATI]
Baffin [Radeon RX 550 640SP / RX 560/560X] (rev ff)
$ lscpu  | grep 'Model name'
Model name:                      AMD Ryzen 7 5800X 8-Core Processor

XML of my VM:

<domain type='kvm' id='13'>
  <name>win7</name>
  <uuid>5d9cee98-36b5-475e-a74d-4e8a19e74ba9</uuid>
  <metadata>
    <libosinfo:libosinfo xmlns:libosinfo="
http://libosinfo.org/xmlns/libvirt/domain/1.0">
      <libosinfo:os id="http://microsoft.com/win/7"/>
    </libosinfo:libosinfo>
  </metadata>
  <memory unit='KiB'>8388608</memory>
  <currentMemory unit='KiB'>8388608</currentMemory>
  <vcpu placement='static'>4</vcpu>
  <resource>
    <partition>/machine</partition>
  </resource>
  <os>
    <type arch='x86_64' machine='pc-q35-5.2'>hvm</type>
    <boot dev='hd'/>
  </os>
  <features>
    <acpi/>
    <apic/>
    <hyperv>
      <relaxed state='on'/>
      <vapic state='on'/>
      <spinlocks state='on' retries='8191'/>
    </hyperv>
    <vmport state='off'/>
  </features>
  <cpu mode='custom' match='exact' check='full'>
    <model fallback='forbid'>EPYC-Rome</model>
    <vendor>AMD</vendor>
    <feature policy='require' name='x2apic'/>
    <feature policy='require' name='tsc-deadline'/>
    <feature policy='require' name='hypervisor'/>
    <feature policy='require' name='tsc_adjust'/>
    <feature policy='require' name='erms'/>
    <feature policy='require' name='invpcid'/>
    <feature policy='require' name='pku'/>
    <feature policy='require' name='vaes'/>
    <feature policy='require' name='vpclmulqdq'/>
    <feature policy='require' name='fsrm'/>
    <feature policy='require' name='spec-ctrl'/>
    <feature policy='require' name='stibp'/>
    <feature policy='require' name='arch-capabilities'/>
    <feature policy='require' name='ssbd'/>
    <feature policy='require' name='xsaves'/>
    <feature policy='require' name='cmp_legacy'/>
    <feature policy='require' name='amd-ssbd'/>
    <feature policy='require' name='virt-ssbd'/>
    <feature policy='require' name='rdctl-no'/>
    <feature policy='require' name='skip-l1dfl-vmentry'/>
    <feature policy='require' name='mds-no'/>
    <feature policy='require' name='pschange-mc-no'/>
    <feature policy='disable' name='svm'/>
    <feature policy='require' name='topoext'/>
    <feature policy='disable' name='npt'/>
    <feature policy='disable' name='nrip-save'/>
  </cpu>
  <clock offset='localtime'>
    <timer name='rtc' tickpolicy='catchup'/>
    <timer name='pit' tickpolicy='delay'/>
    <timer name='hpet' present='no'/>
    <timer name='hypervclock' present='yes'/>
  </clock>
  <on_poweroff>destroy</on_poweroff>
  <on_reboot>restart</on_reboot>
  <on_crash>destroy</on_crash>
  <pm>
    <suspend-to-mem enabled='no'/>
    <suspend-to-disk enabled='no'/>
  </pm>
  <devices>
    <emulator>/usr/bin/qemu-system-x86_64</emulator>
    <disk type='file' device='disk'>
      <driver name='qemu' type='qcow2'/>
      <source file='/data/vms/win7.qcow2' index='1'/>
      <backingStore/>
      <target dev='vda' bus='virtio'/>
      <alias name='virtio-disk0'/>
      <address type='pci' domain='0x0000' bus='0x03' slot='0x00'
function='0x0'/>
    </disk>
    <controller type='usb' index='0' model='ich9-ehci1'>
      <alias name='usb'/>
      <address type='pci' domain='0x0000' bus='0x00' slot='0x1d'
function='0x7'/>
    </controller>
    <controller type='usb' index='0' model='ich9-uhci1'>
      <alias name='usb'/>
      <master startport='0'/>
      <address type='pci' domain='0x0000' bus='0x00' slot='0x1d'
function='0x0' multifunction='on'/>
    </controller>
    <controller type='usb' index='0' model='ich9-uhci2'>
      <alias name='usb'/>
      <master startport='2'/>
      <address type='pci' domain='0x0000' bus='0x00' slot='0x1d'
function='0x1'/>
    </controller>
    <controller type='usb' index='0' model='ich9-uhci3'>
      <alias name='usb'/>
      <master startport='4'/>
      <address type='pci' domain='0x0000' bus='0x00' slot='0x1d'
function='0x2'/>
    </controller>
    <controller type='sata' index='0'>
      <alias name='ide'/>
      <address type='pci' domain='0x0000' bus='0x00' slot='0x1f'
function='0x2'/>
    </controller>
    <controller type='pci' index='0' model='pcie-root'>
      <alias name='pcie.0'/>
    </controller>
    <controller type='pci' index='1' model='pcie-root-port'>
      <model name='pcie-root-port'/>
      <target chassis='1' port='0x10'/>
      <alias name='pci.1'/>
      <address type='pci' domain='0x0000' bus='0x00' slot='0x02'
function='0x0' multifunction='on'/>
    </controller>
    <controller type='pci' index='2' model='pcie-root-port'>
      <model name='pcie-root-port'/>
      <target chassis='2' port='0x11'/>
      <alias name='pci.2'/>
      <address type='pci' domain='0x0000' bus='0x00' slot='0x02'
function='0x1'/>
    </controller>
    <controller type='pci' index='3' model='pcie-root-port'>
      <model name='pcie-root-port'/>
      <target chassis='3' port='0x12'/>
      <alias name='pci.3'/>
      <address type='pci' domain='0x0000' bus='0x00' slot='0x02'
function='0x2'/>
    </controller>
    <controller type='pci' index='4' model='pcie-root-port'>
      <model name='pcie-root-port'/>
      <target chassis='4' port='0x13'/>
      <alias name='pci.4'/>
      <address type='pci' domain='0x0000' bus='0x00' slot='0x02'
function='0x3'/>
    </controller>
    <controller type='pci' index='5' model='pcie-root-port'>
      <model name='pcie-root-port'/>
      <target chassis='5' port='0x14'/>
      <alias name='pci.5'/>
      <address type='pci' domain='0x0000' bus='0x00' slot='0x02'
function='0x4'/>
    </controller>
    <controller type='virtio-serial' index='0'>
      <alias name='virtio-serial0'/>
      <address type='pci' domain='0x0000' bus='0x02' slot='0x00'
function='0x0'/>
    </controller>
    <interface type='network'>
      <mac address='52:54:00:3b:e8:0f'/>
      <source network='default'
portid='4814d165-b576-4bfe-9e61-afd02fee8ca2' bridge='virbr0'/>
      <target dev='vnet12'/>
      <model type='virtio'/>
      <alias name='net0'/>
      <address type='pci' domain='0x0000' bus='0x01' slot='0x00'
function='0x0'/>
    </interface>
    <serial type='pty'>
      <source path='/dev/pts/0'/>
      <target type='isa-serial' port='0'>
        <model name='isa-serial'/>
      </target>
      <alias name='serial0'/>
    </serial>
    <console type='pty' tty='/dev/pts/0'>
      <source path='/dev/pts/0'/>
      <target type='serial' port='0'/>
      <alias name='serial0'/>
    </console>
    <channel type='spicevmc'>
      <target type='virtio' name='com.redhat.spice.0' state='connected'/>
      <alias name='channel0'/>
      <address type='virtio-serial' controller='0' bus='0' port='1'/>
    </channel>
    <input type='mouse' bus='ps2'>
      <alias name='input0'/>
    </input>
    <input type='keyboard' bus='ps2'>
      <alias name='input1'/>
    </input>
    <graphics type='spice' port='5900' autoport='no' listen='127.0.0.1'>
      <listen type='address' address='127.0.0.1'/>
      <gl enable='no'/>
    </graphics>
    <video>
      <model type='qxl' ram='65536' vram='65536' vgamem='16384' heads='1'
primary='yes'/>
      <alias name='video0'/>
      <address type='pci' domain='0x0000' bus='0x00' slot='0x01'
function='0x0'/>
    </video>
    <memballoon model='virtio'>
      <alias name='balloon0'/>
      <address type='pci' domain='0x0000' bus='0x04' slot='0x00'
function='0x0'/>
    </memballoon>
  </devices>
  <seclabel type='dynamic' model='apparmor' relabel='yes'>
    <label>libvirt-5d9cee98-36b5-475e-a74d-4e8a19e74ba9</label>
    <imagelabel>libvirt-5d9cee98-36b5-475e-a74d-4e8a19e74ba9</imagelabel>
  </seclabel>
  <seclabel type='dynamic' model='dac' relabel='yes'>
    <label>+64055:+64055</label>
    <imagelabel>+64055:+64055</imagelabel>
  </seclabel>
</domain>

--000000000000d0874d05c7ac8d6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>=C2=A0 =C2=A0 I&#39;m using spic=
e in virt-manager, but it&#39;s slow in video. I&#39;ve been using spice in=
 my NUC, with the same configuration, that&#39;s fluently. The biggest diff=
erence between my NUC and desktop is hardware is different. NUC is using a=
=C2=A0integrated graphics while desktop using a RTI RX 550/560(I don&#39;t =
remember).</div><div><br></div><div>=C2=A0 =C2=A0 Is there any suggestions =
to make the VM video performance faster?</div><div><br></div><div>Hardware =
of my desktop:</div><div><br></div><div>$ lspci | grep VGA<br>09:00.0 VGA c=
ompatible controller: Advanced Micro Devices, Inc. [AMD/ATI] Baffin [Radeon=
 RX 550 640SP / RX 560/560X] (rev ff)<br></div><div>$ lscpu =C2=A0| grep &#=
39;Model name&#39;<br>Model name: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0AMD Ryzen 7 5800X 8-Core Processor<br></=
div><div><br></div><div>XML of my VM:</div><div><br></div><div>&lt;domain t=
ype=3D&#39;kvm&#39; id=3D&#39;13&#39;&gt;<br>=C2=A0 &lt;name&gt;win7&lt;/na=
me&gt;<br>=C2=A0 &lt;uuid&gt;5d9cee98-36b5-475e-a74d-4e8a19e74ba9&lt;/uuid&=
gt;<br>=C2=A0 &lt;metadata&gt;<br>=C2=A0 =C2=A0 &lt;libosinfo:libosinfo xml=
ns:libosinfo=3D&quot;<a href=3D"http://libosinfo.org/xmlns/libvirt/domain/1=
.0">http://libosinfo.org/xmlns/libvirt/domain/1.0</a>&quot;&gt;<br>=C2=A0 =
=C2=A0 =C2=A0 &lt;libosinfo:os id=3D&quot;<a href=3D"http://microsoft.com/w=
in/7">http://microsoft.com/win/7</a>&quot;/&gt;<br>=C2=A0 =C2=A0 &lt;/libos=
info:libosinfo&gt;<br>=C2=A0 &lt;/metadata&gt;<br>=C2=A0 &lt;memory unit=3D=
&#39;KiB&#39;&gt;8388608&lt;/memory&gt;<br>=C2=A0 &lt;currentMemory unit=3D=
&#39;KiB&#39;&gt;8388608&lt;/currentMemory&gt;<br>=C2=A0 &lt;vcpu placement=
=3D&#39;static&#39;&gt;4&lt;/vcpu&gt;<br>=C2=A0 &lt;resource&gt;<br>=C2=A0 =
=C2=A0 &lt;partition&gt;/machine&lt;/partition&gt;<br>=C2=A0 &lt;/resource&=
gt;<br>=C2=A0 &lt;os&gt;<br>=C2=A0 =C2=A0 &lt;type arch=3D&#39;x86_64&#39; =
machine=3D&#39;pc-q35-5.2&#39;&gt;hvm&lt;/type&gt;<br>=C2=A0 =C2=A0 &lt;boo=
t dev=3D&#39;hd&#39;/&gt;<br>=C2=A0 &lt;/os&gt;<br>=C2=A0 &lt;features&gt;<=
br>=C2=A0 =C2=A0 &lt;acpi/&gt;<br>=C2=A0 =C2=A0 &lt;apic/&gt;<br>=C2=A0 =C2=
=A0 &lt;hyperv&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;relaxed state=3D&#39;on&#39;=
/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;vapic state=3D&#39;on&#39;/&gt;<br>=C2=A0=
 =C2=A0 =C2=A0 &lt;spinlocks state=3D&#39;on&#39; retries=3D&#39;8191&#39;/=
&gt;<br>=C2=A0 =C2=A0 &lt;/hyperv&gt;<br>=C2=A0 =C2=A0 &lt;vmport state=3D&=
#39;off&#39;/&gt;<br>=C2=A0 &lt;/features&gt;<br>=C2=A0 &lt;cpu mode=3D&#39=
;custom&#39; match=3D&#39;exact&#39; check=3D&#39;full&#39;&gt;<br>=C2=A0 =
=C2=A0 &lt;model fallback=3D&#39;forbid&#39;&gt;EPYC-Rome&lt;/model&gt;<br>=
=C2=A0 =C2=A0 &lt;vendor&gt;AMD&lt;/vendor&gt;<br>=C2=A0 =C2=A0 &lt;feature=
 policy=3D&#39;require&#39; name=3D&#39;x2apic&#39;/&gt;<br>=C2=A0 =C2=A0 &=
lt;feature policy=3D&#39;require&#39; name=3D&#39;tsc-deadline&#39;/&gt;<br=
>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39; name=3D&#39;hyperviso=
r&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39; name=3D=
&#39;tsc_adjust&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;requir=
e&#39; name=3D&#39;erms&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#3=
9;require&#39; name=3D&#39;invpcid&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature p=
olicy=3D&#39;require&#39; name=3D&#39;pku&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;fe=
ature policy=3D&#39;require&#39; name=3D&#39;vaes&#39;/&gt;<br>=C2=A0 =C2=
=A0 &lt;feature policy=3D&#39;require&#39; name=3D&#39;vpclmulqdq&#39;/&gt;=
<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39; name=3D&#39;fsrm&#=
39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39; name=3D&#3=
9;spec-ctrl&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#3=
9; name=3D&#39;stibp&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;r=
equire&#39; name=3D&#39;arch-capabilities&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;fe=
ature policy=3D&#39;require&#39; name=3D&#39;ssbd&#39;/&gt;<br>=C2=A0 =C2=
=A0 &lt;feature policy=3D&#39;require&#39; name=3D&#39;xsaves&#39;/&gt;<br>=
=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39; name=3D&#39;cmp_legacy=
&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39; name=3D&=
#39;amd-ssbd&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#=
39; name=3D&#39;virt-ssbd&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&=
#39;require&#39; name=3D&#39;rdctl-no&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;featur=
e policy=3D&#39;require&#39; name=3D&#39;skip-l1dfl-vmentry&#39;/&gt;<br>=
=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39; name=3D&#39;mds-no&#39=
;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;require&#39; name=3D&#39;=
pschange-mc-no&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;disable=
&#39; name=3D&#39;svm&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature policy=3D&#39;=
require&#39; name=3D&#39;topoext&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feature pol=
icy=3D&#39;disable&#39; name=3D&#39;npt&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;feat=
ure policy=3D&#39;disable&#39; name=3D&#39;nrip-save&#39;/&gt;<br>=C2=A0 &l=
t;/cpu&gt;<br>=C2=A0 &lt;clock offset=3D&#39;localtime&#39;&gt;<br>=C2=A0 =
=C2=A0 &lt;timer name=3D&#39;rtc&#39; tickpolicy=3D&#39;catchup&#39;/&gt;<b=
r>=C2=A0 =C2=A0 &lt;timer name=3D&#39;pit&#39; tickpolicy=3D&#39;delay&#39;=
/&gt;<br>=C2=A0 =C2=A0 &lt;timer name=3D&#39;hpet&#39; present=3D&#39;no&#3=
9;/&gt;<br>=C2=A0 =C2=A0 &lt;timer name=3D&#39;hypervclock&#39; present=3D&=
#39;yes&#39;/&gt;<br>=C2=A0 &lt;/clock&gt;<br>=C2=A0 &lt;on_poweroff&gt;des=
troy&lt;/on_poweroff&gt;<br>=C2=A0 &lt;on_reboot&gt;restart&lt;/on_reboot&g=
t;<br>=C2=A0 &lt;on_crash&gt;destroy&lt;/on_crash&gt;<br>=C2=A0 &lt;pm&gt;<=
br>=C2=A0 =C2=A0 &lt;suspend-to-mem enabled=3D&#39;no&#39;/&gt;<br>=C2=A0 =
=C2=A0 &lt;suspend-to-disk enabled=3D&#39;no&#39;/&gt;<br>=C2=A0 &lt;/pm&gt=
;<br>=C2=A0 &lt;devices&gt;<br>=C2=A0 =C2=A0 &lt;emulator&gt;/usr/bin/qemu-=
system-x86_64&lt;/emulator&gt;<br>=C2=A0 =C2=A0 &lt;disk type=3D&#39;file&#=
39; device=3D&#39;disk&#39;&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;driver name=3D&=
#39;qemu&#39; type=3D&#39;qcow2&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;sourc=
e file=3D&#39;/data/vms/win7.qcow2&#39; index=3D&#39;1&#39;/&gt;<br>=C2=A0 =
=C2=A0 =C2=A0 &lt;backingStore/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;target dev=
=3D&#39;vda&#39; bus=3D&#39;virtio&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;al=
ias name=3D&#39;virtio-disk0&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;address =
type=3D&#39;pci&#39; domain=3D&#39;0x0000&#39; bus=3D&#39;0x03&#39; slot=3D=
&#39;0x00&#39; function=3D&#39;0x0&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/disk&gt;=
<br>=C2=A0 =C2=A0 &lt;controller type=3D&#39;usb&#39; index=3D&#39;0&#39; m=
odel=3D&#39;ich9-ehci1&#39;&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;alias name=3D&#=
39;usb&#39;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;address type=3D&#39;pci&#39; d=
omain=3D&#39;0x0000&#39; bus=3D&#39;0x00&#39; slot=3D&#39;0x1d&#39; functio=
n=3D&#39;0x7&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/controller&gt;<br>=C2=A0 =C2=
=A0 &lt;controller type=3D&#39;usb&#39; index=3D&#39;0&#39; model=3D&#39;ic=
h9-uhci1&#39;&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;alias name=3D&#39;usb&#39;/&g=
t;<br>=C2=A0 =C2=A0 =C2=A0 &lt;master startport=3D&#39;0&#39;/&gt;<br>=C2=
=A0 =C2=A0 =C2=A0 &lt;address type=3D&#39;pci&#39; domain=3D&#39;0x0000&#39=
; bus=3D&#39;0x00&#39; slot=3D&#39;0x1d&#39; function=3D&#39;0x0&#39; multi=
function=3D&#39;on&#39;/&gt;<br>=C2=A0 =C2=A0 &lt;/controller&gt;<br>=C2=A0=
 =C2=A0 &lt;controller type=3D&#39;usb&#39; index=3D&#39;0&#39; model=3D&#3=
9;ich9-uhci2&#39;&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;alias name=3D&#39;usb&#39=
;/&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;master startport=3D&#39;2&#39;/&gt;<br>=
=C2=A0 =C2=A0 =C2=A0 &lt;address type=3D&#39;pci&#39; domain=3D&#39;0x0000&=
#39; bus=3D&#39;0x00&#39; slot=3D&#39;0x1d&#39; function=3D&#39;0x1&#39;/&g=
t;<br>=C2=A0 =C2=A0 &lt;/controller&gt;<br>=C2=A0 =C2=A0 &lt;controller typ=
e=3D&#39;usb&#39; index=3D&#39;0&#39; model=3D&#39;ich9-uhci3&#39;&gt;<br>=
=C2=A0 =C2=A0 =C2=A0 &lt;alias name=3D&#39;usb&#39;/&gt;<br>=C2=A0 =C2=A0 =
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

--000000000000d0874d05c7ac8d6c--

--===============0961502863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0961502863==--
