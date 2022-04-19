Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 230525068DE
	for <lists+spice-devel@lfdr.de>; Tue, 19 Apr 2022 12:37:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70DFF10E287;
	Tue, 19 Apr 2022 10:37:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4227910E287
 for <spice-devel@lists.freedesktop.org>; Tue, 19 Apr 2022 10:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650364653;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=s89Q5UY/UBIRWNlAv2KDcmDi8O+v4M6VpqjIJ1doOVA=;
 b=bBQHuSmXINanEf/2eGqcoDlc0sMw4i0BnPjQGm+qyEa6RctxQkO44BJQVi8XfP9m/x3ozO
 eZzKp6gtJhEj3oOe/AdMMuO2oTKhEJYca4awuiSXDX7IbCbeBHi/GSh8DaTCELH41KjL6T
 qq5tSVbGUyUQ7ByKgJ2MW9edNlmNRwc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-244-m0wrql0sPGGcVnbjXQ1WOQ-1; Tue, 19 Apr 2022 06:37:31 -0400
X-MC-Unique: m0wrql0sPGGcVnbjXQ1WOQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4FFC23C13922;
 Tue, 19 Apr 2022 10:37:31 +0000 (UTC)
Received: from localhost (unknown [10.40.192.233])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DC3E5492C14;
 Tue, 19 Apr 2022 10:37:30 +0000 (UTC)
Date: Tue, 19 Apr 2022 12:37:29 +0200
From: Victor Toso <victortoso@redhat.com>
To: Walter Mitty <waltermitty121906@gmail.com>
Message-ID: <20220419103729.eorhnxhckbhixqvc@tapioca>
References: <CAOgZG1wmkfd29NL_dk4uugz=BgCeG2HCvT1vV-u8iKM=K=0goQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="4uncotjqnmw64gtv"
Content-Disposition: inline
In-Reply-To: <CAOgZG1wmkfd29NL_dk4uugz=BgCeG2HCvT1vV-u8iKM=K=0goQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Subject: Re: [Spice-devel] Is there a good way to estimate the latency of
 spice?
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


--4uncotjqnmw64gtv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Apr 14, 2022 at 05:08:47PM +0800, Walter Mitty wrote:
> Hello everyone,
> During my experience of SPICE, I feel it is not fluent. So I
> wanna know the latency about interactivity and rendering. From
> my understanding, It may be the time from the moment draging an
> app-window to the moment that client rendering changes.
> Any suggestions will be appreciated.

Are you using video streaming settings?

In the demo below, we used a GTK's environment variable to show
what was being rendered in the client-side when an update was
done in the guest:
   =20
    https://www.youtube.com/watch?v=3DVUQYs72hrbM&t=3D612s

Sending only the diff of updates worked pretty well in the past,
but it doesn't with Desktop Environments moving forward to 3D
rendering.

So, if you latency is about that, you can try to optimize by
setting 3d rending off in the guest. Video streaming helps a bit
with chopping videos and overall data bandwidth but it adds
further latency due software encoding on the server side.

> Regards,
> Walter.

I hope this helps, let me know if you have further questions.

Cheers,
Victor

--4uncotjqnmw64gtv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmJekOkACgkQl9kSPeN6
SE+hphAAuyP5Zhf3EZB6RM52TaCTYEYwJv40GGNzOT9V+699SeFJeDMrS6TCFZFH
yDEs+SIP1+cgk2yhK8jdQnoVHwaaMgD6rZQaAp5fR4aXe4KaSjeydZ01+BS1TyRz
nRrCwpZALbgWYsEG9x4/mppO66sqjm2XdiSRihl+M7Y42NryM2gYADwJ0FJ40wGy
ajdYNHE6LxY4H4KumWumI8wDH+Eu0b0CGrtxXuMs3USkhUVoeMEM1N2rFXBFjKJr
CjCou5Ph9VXTI74UjCJGOcvh03HIbAIE14b0Mz3HJRje03hla7LAa9UuZK0uoZyq
8NC5l6W/t2P4HjFcCnAAL3aYcZB2eqkBPBTGnzhPrtPWYmIEleOrCxbXfzx5SgVG
OIUn8qyjVhukw0p6z/O0WZFOsRJVcQiUzzxvAD6tjOEBU04qjpf8vvh2X8fnM76F
jUnKUDHBjgIYZVLPfA92Mu6LRKkNy7R5in2ZpKEISTI2kfjE8yC7xSx++e+IQHBO
IClrOpocMXza5M6sS3xQ138joase2ey/QQohucnUYZ+tWDMisK63VRHUdrrcfH7p
jUScW5UvafQAyWJYTcyuBwIvwhuUKZ3N2+aEVpRTyS19MLbJmL5PrITobBeObEXw
5RFB18vNiZ7wdjyrnthWVgyFF0na3WDWyvt4snDjb7FZw/ExtQM=
=z+Bf
-----END PGP SIGNATURE-----

--4uncotjqnmw64gtv--

