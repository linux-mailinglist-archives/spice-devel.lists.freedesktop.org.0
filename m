Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7219C6363C1
	for <lists+spice-devel@lfdr.de>; Wed, 23 Nov 2022 16:31:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC1C610E594;
	Wed, 23 Nov 2022 15:31:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C946F10E590
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Nov 2022 15:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1669217513;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FGpSN2zphFfE7PAqgloC5dd73+J3LWcC/UiRhFbCZBw=;
 b=WWLkAPQlJB+1mGfnDA8o58TWQ3iMowL2D7ntXfj4fqBeW1C48zG1DkZafu/LKHb6chkszA
 tkNmOITN/Zb8in/kDYkGPoWH4Rhc41NX6GRN4fMYOPD2n41bMkWoErUB1aHJsuebz5obqX
 26P4Hc4+PzZis1PUTthPlRd/YLzzI1k=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-19-NP7bLHufMPCJ6klSwA97MQ-1; Wed, 23 Nov 2022 10:31:47 -0500
X-MC-Unique: NP7bLHufMPCJ6klSwA97MQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C7838811E67;
 Wed, 23 Nov 2022 15:31:46 +0000 (UTC)
Received: from localhost (ovpn-194-72.brq.redhat.com [10.40.194.72])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6EF8C40C6EC5;
 Wed, 23 Nov 2022 15:31:46 +0000 (UTC)
Date: Wed, 23 Nov 2022 16:31:45 +0100
From: Victor Toso <victortoso@redhat.com>
To: Carlos =?utf-8?B?R29uesOhbGV6?= <piteccelaya@gmail.com>
Message-ID: <20221123153145.afmmtlqnkymudu7h@tapioca>
References: <CAHt6W4eysYyfv-9_W6n5YRv5qSd0rU46=vGf25fAO5s342a3aw@mail.gmail.com>
 <CAGeBE=xYOdDo40ec=T=auNhj-nq8nHXuOWZ6Tt+HT-gniu=YcQ@mail.gmail.com>
 <CAHt6W4cJW-Lj_rE+c9YqrDSft5f0t4RJ41z4bv4y2gVYyyfwNQ@mail.gmail.com>
 <CAAg9qJ3bMd=3_YD4UJ1rHDmm3s7L5NG047eioeuJ209s50MAKg@mail.gmail.com>
 <CAGeBE=w5OVLoKD_E72HdacqCivp=ZS2tuaDoHMJTB82-68W0-A@mail.gmail.com>
 <CAAg9qJ20nfDLfx_8Hboyw-GZpU5t4mrKH7+4L_Ne-wOrqbzEZg@mail.gmail.com>
 <CAGeBE=zLNuypqM296NKHbiVXf-u4hcK3MbTxXG34eOeDSgG_cg@mail.gmail.com>
 <CAGeBE=wNsck1_L88kV=oAVVe5LThruT4SZEJwuZPXrEVds-6tQ@mail.gmail.com>
 <CAAg9qJ1uLht3--b4OwQpiGPj2q=8FZvSF19VG+pQPWTPKz_RzA@mail.gmail.com>
 <CAGeBE=zqf-yb56MWYuok1ych_hsJAWsbwXB0zuFF834Vs2hDRw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="ug3rbyqpxm7eae7c"
Content-Disposition: inline
In-Reply-To: <CAGeBE=zqf-yb56MWYuok1ych_hsJAWsbwXB0zuFF834Vs2hDRw@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
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


--ug3rbyqpxm7eae7c
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Oct 31, 2022 at 11:52:15PM +0000, Carlos Gonz=E1lez wrote:
> After trying it yet again, quoting myself:
> >>As already mentioned, the -f and -o options are serving of absolutely
> nothing
>
> Repeat: *absolutely nothing*
> Same any other directory
>
> Spice-vdagent's logs say nothing at all.
>
> The only ones saying something are remote-viewer and qemu-monitor: "file
> transfer is disabled".
>
> Will you ask me to repeat myself some more times?
> Thanks for that

=2E..

> El jue, 27 oct 2022 a las 16:55, Uri Lublin (<uril@redhat.com>) escribi=
=F3:
> >>> Now, could we focus on the nasty bug with file
> >>> transferring? As already mentioned, the -f and -o options
> >>> are serving of absolutely nothing...

Just to clarify, the file transfer process is a client <-> guest
message, that means that you could be having a problem in your
client machine and/or in the guest machine.

I recall reading that you had an agent not connected type of
error in the client, which means any feature needing the agent
would not work. I assume that this is been solved, otherwise you
wouldn't get arbitrary resolution working.

Could you please check what remote-viewer --spice-debug outputs
when you try to drag a file in the client machine?

At the same time, if you could have both logs from spice-vdagentd
(which receives spice client's messages) and spice-vdagent (which
is the one that copies the data to destination, that should
either be glib's G_USER_DIRECTORY_DESKTOP or
G_USER_DIRECTORY_DOWNLOAD), that would make it easy to pinpoint
the issue.

=46rom the other threads, I see that you can run the agent's with
debug command line option. The only other thing that I'd mention
is that permissions/paths play their own role in making things
work, but the logs should point to the right direction.

Cheers,
Victor

--ug3rbyqpxm7eae7c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmN+POEACgkQl9kSPeN6
SE+M/Q/+KU6XlsCkf3ZmX/3pLFLpJ7TteUorjd+qXxZCfnNMY4DD+J6J3aJIU7Eq
I06STKKe+ITpYdBcPAU4Y58NXB76mHcqIXo3WTxwzwt/KMFs/9Bj7RfUafVqaMhD
KHp59bLJQgDa/e3CAb3GpbpDEwx5+nIdx06gdFya25CisPycBFZbkAEZtTgF72Ld
xbpLd9fd0CVY6dnpnQruqfO+IWzPFC65vFl4dkklhMUXSzkZyKKvzq+9igPl5/oA
dkqbObODVoF58bSRhStYCR+0QE0t31YNJ9y+TJI/CmV1Vg6GWEjTc5mQ31Q9Xiz9
RArEvCMphRHXEnE1LG9TUykvFU2MhEnrJg4x6iPQTs8t4fC1VolkUiHUmNRMPz4q
4XNE7OSGykoeV+wynLl5GhroXVcD7hjZbsFFp4jg+N5b7TVmx8GUNVemEjvV2owH
2gTMRAY+DjCYA1sQ/3W8QDxarqJQ3ArNtLkKNeDzpCJIJu/8+PscbDbpt1m3AuCj
VCXzrqV3KQll0QMv0I1QyUmmAtY/FpZVADAVPN6Q5k+6V+yKrgmjDx/F729nMtJU
rzEdj+WAt274oUN0/TjPqQgRxFPxOYP86bGUyxBQ0Jl6pKWZ3F2bf+q9EU6Esdf8
7/GlNImtKvvChdL2k/LjMxx9Uf+XAZYnI3l4aKYChEoQCQ+woM8=
=2bO7
-----END PGP SIGNATURE-----

--ug3rbyqpxm7eae7c--

