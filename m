Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4506A6363D1
	for <lists+spice-devel@lfdr.de>; Wed, 23 Nov 2022 16:35:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66D4C10E579;
	Wed, 23 Nov 2022 15:35:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7048C10E579
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Nov 2022 15:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1669217746;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7XCsBey9e/IyMQAI1CIVlXwVFW5svuXF97a3rWtyVSw=;
 b=VnN+/JxN33gIQ18SJfOLWns7zLacQIKEWfObhsAT0hdDgCwWJKwdafg8MaxuOKPDgp6kyE
 7oyVQbx6uhBiLh4MPkExVzTqc80Q7qvChwJRmizCn6mztnXDTRs04V+tjM4WEdxlQxu1kI
 JVfG2+qKMP/LgLi9Qtvl1t+HGmSA3RA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-491-_nIUfmxVPWOOzjw0nrWGnw-1; Wed, 23 Nov 2022 10:35:42 -0500
X-MC-Unique: _nIUfmxVPWOOzjw0nrWGnw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 57686185A794;
 Wed, 23 Nov 2022 15:35:42 +0000 (UTC)
Received: from localhost (ovpn-194-72.brq.redhat.com [10.40.194.72])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E33CC1415121;
 Wed, 23 Nov 2022 15:35:41 +0000 (UTC)
Date: Wed, 23 Nov 2022 16:35:40 +0100
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <freddy77@gmail.com>
Message-ID: <20221123153540.tm5e6ecwcnve2pvv@tapioca>
References: <CAGeBE=w-KZXVACD6xeeqfoo03K5BZxzA8O2U5x-8=NLsR=ZQKw@mail.gmail.com>
 <CAHt6W4dkGkFVDBQbMFN0+AD24OB18uxhhQC5n4u51PiJGnAi8g@mail.gmail.com>
 <CAGeBE=y4HKusjFMYez9uGEzEMm_9uhgDeW5uakB-bErUWcPoJQ@mail.gmail.com>
 <CAHt6W4eysYyfv-9_W6n5YRv5qSd0rU46=vGf25fAO5s342a3aw@mail.gmail.com>
 <CAGeBE=xYOdDo40ec=T=auNhj-nq8nHXuOWZ6Tt+HT-gniu=YcQ@mail.gmail.com>
 <CAHt6W4cJW-Lj_rE+c9YqrDSft5f0t4RJ41z4bv4y2gVYyyfwNQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="hz4t7tems26p6xza"
Content-Disposition: inline
In-Reply-To: <CAHt6W4cJW-Lj_rE+c9YqrDSft5f0t4RJ41z4bv4y2gVYyyfwNQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
Subject: Re: [Spice-devel] Vdagent not working on a Debian guest
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--hz4t7tems26p6xza
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Oct 18, 2022 at 06:40:22PM +0100, Frediano Ziglio wrote:
> Il giorno mar 18 ott 2022 alle ore 01:04 Carlos Gonz=E1lez
> <piteccelaya@gmail.com> ha scritto:
> >
> > Were you able to find something by chance? Thanks.
> >
>
> Hi Carlos,
>    my main curiosity was about the need of the agent for resize.
> I did some tests and with both Windows and Linux it appears that the
> agent is needed.

Just to clarify, setting arbitrary resolution works through
client <-> guest agent messages. When the guest has the
capability (since RHEL7), spice-server reacts to that message,
pass it along to QEMU which interrupts the guest' kernel with the
resolution change.

IIRC, windows guest agent is the one to set the resolution
indeed.

Either way, for both Win and Linux guests, the agent is needed
indeed.

Cheers,
Victor

> At this point I would try looking at the agent logs.
> Is your system using Xorg or Wayland ?
>=20
> Regards,
>    Frediano
>=20
> > El s=E1b, 15 oct 2022 a las 9:22, Frediano Ziglio (<freddy77@gmail.com>=
) escribi=F3:
> >>
> >> Il giorno ven 14 ott 2022 alle ore 16:11 Carlos Gonz=E1lez
> >> <piteccelaya@gmail.com> ha scritto:
> >> >
> >> > As soon as spice-vdagent package is installed, so is the spice-vdage=
ntd daemon and it also starts running. Yet I always need to manually run sp=
ice-vdagent command...
> >> >
> >>
> >> Maybe you would need to logout and login again from the graphic
> >> session. Or manually start it, not sure.
> >>
> >> > How do I specify an output directory for the agent to file transfer?
> >> >
> >>
> >> See "spice-vdagent --help", specifically -f and -o options.
> >>
> >> > I don't think it's remote-viewer's fault, because I also tested with=
 a Windows guest. With all SPICE stuff properly installed, everything works=
 out of the box: clipboard, resizing, file transfer from host to guest. Wit=
h "properly installed" I mean: installed SPICE drivers manually from virtio=
-win ISO by loading them since the Windows installation beforehand, then on=
ce booted into Windows downloaded the vdagent ZIP from spice-space website =
and manually installed the service according to instructions.
> >> >
> >>
> >> I'll check, maybe is not handled by driver but agent
> >>
> >> > As additional detail, in QEMU I use the option "-display spice-app",=
 which automatically starts remote-viewer; though curiously it doesn't seem=
 to create a virt-viewer directory inside ~/.config unlike when running rem=
ote-viewer manually...
> >> >
> >> > Thanks again.
> >> >
> >> > El vie, 14 oct 2022 a las 12:41, Frediano Ziglio (<freddy77@gmail.co=
m>) escribi=F3:
> >> >>
> >> >> Il giorno gio 13 ott 2022 alle ore 16:58 Carlos Gonz=E1lez
> >> >> <piteccelaya@gmail.com> ha scritto:
> >> >> >
> >> >> > Hello.
> >> >> >
> >> >> > I'm trying a virtual machine with a live CD distribution called A=
ntiX Linux, which is directly based on Debian.
> >> >> >
> >> >> > I'm using direct QEMU commands.
> >> >> > In the VM configuration I have this for SPICE configuration:
> >> >> > "-vga qxl -device virtio-serial-pci -spice unix=3Don,addr=3Dpath/=
to/vm_spice.socket,disable-ticketing=3Don -chardev spicevmc,id=3Dspicechann=
el0,name=3Dvdagent -device virtserialport,chardev=3Dspicechannel0,name=3Dco=
m.redhat.spice.0 \"
> >> >> > Then I boot the live ISO, double check that QXL driver is install=
ed -which normally always is-, and install spice-vdagent package (version 2=
0 here). I'm using remote-viewer (virt-viewer) to visualize the VM.
> >> >> >
> >> >> > Up to this point, clipboard sharing with host still doesn't work,=
 and trying to drag a file from host to guest results in an error "The agen=
t is not connected".
> >> >> >
> >> >>
> >> >> This error is normal if the agent is stopped.
> >> >>
> >> >> > So I manually run "spice-vdagent" command, and clipboard sharing =
now works, but trying to drag file from host to guest gives "File transfer =
is disabled". Also, automatic resolution change with window resizing doesn'=
t work either.
> >> >> >
> >> >>
> >> >> The fact that in this way the clipboard is running indicates that t=
he
> >> >> agent is now working. You need to specify an output directory to the
> >> >> agent in order to get file transfer working.
> >> >> About the resolution change that's weird, I think that feature on
> >> >> Linux does not even require the agent running. Is it possible that =
the
> >> >> client (remove-viewer) is not set up to send resize to the guest
> >> >> automatically, there are some options on the menu.
> >> >>
> >> >> > Certainly, this live distro doesn't come with any spice-related p=
ackages installed by default, except for the QXL package.
> >> >> >
> >> >> > Am I missing something here? Could someone help please?
> >> >> > Thanks beforehand.
> >> >>
> >> >> Frediano
>=20

--hz4t7tems26p6xza
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmN+PcwACgkQl9kSPeN6
SE8Orw//X6Y868tpKClsSDmIfZr3VmQnWoRfV9GyaF83YMZLp6LZNiwRflNV0p3x
hpBtjVGMNYTcCBGqWtliHpKr34sEEqAv8J1BvvjjBeyP0xB3NyaWIRy/4SYdGEdA
aXbXMwxxVYEUt58wmLu4leQz1NGtlsVfbaJGgdvYMZ/GZF9xTGELgMnUSfB48Iwa
u+yANO2KuHPgLehZqyvE+rWRQhl4sj9NzfGe6Q/I9Z9tW2y/3qqNP9FjhS1ZUK8+
Sdun1mJHtjl4lslerxPhg4FbsvW1fYbUsyrfbqyk/EMgwDhhmIVMNbyo41gFqjGs
23XBOCEk0MKXWAzEzqxiuEfAGsPgdA14Q9aFvapHbmXd4W41Q3J0sesBhZKu7WcA
9Za1R9eB804Aj6mIGYUaI0W2Cd0MqQZRWPNpNAqBGNMVvP6lhv4hBEcwqu4TkFzP
4nlfHXZaWpZFoxzPl5wwVzex3RY04C639Bi0ViJcSJUn5AsKH1rnUSYJ9/l532k/
YaZm1r9FX2ENDUTCySGGE+nE0FZRMP9ZTCANdo/UcZp91vdlNqLajxrnlniL6nLN
Z2JIrjg9s0hGlkQoxyezu4VMgSELf1FTmh8WQLdDcs4WFwfObRDx82WYjDVNe5ib
JnC3TnZcZRWZA+rOqFDaC8SzaTTukmC+ZE6AdBGaci4A+oVhWM8=
=mmRr
-----END PGP SIGNATURE-----

--hz4t7tems26p6xza--

