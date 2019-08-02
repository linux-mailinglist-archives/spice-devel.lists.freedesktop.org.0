Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B75B77F052
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 11:20:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47EF06ED7C;
	Fri,  2 Aug 2019 09:20:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE6CE6ED7C
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:20:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 783F530833A0
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:20:41 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 228A75C205;
 Fri,  2 Aug 2019 09:20:40 +0000 (UTC)
Date: Fri, 2 Aug 2019 11:20:40 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190802092040.ee7zqglsin3yim6n@wingsuit>
References: <20190722110841.31711-1-fziglio@redhat.com>
 <20190722110841.31711-3-fziglio@redhat.com>
 <1b6e9267-ef64-eae8-28f3-960018be764a@redhat.com>
 <16179280.2128005.1563802602363.JavaMail.zimbra@redhat.com>
 <1832968255.2130700.1563803225736.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1832968255.2130700.1563803225736.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Fri, 02 Aug 2019 09:20:41 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 3/3] Use start/end-packet.h
 headers instead of direct GCC attribute
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: multipart/mixed; boundary="===============0887633329=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0887633329==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tfqcvdpunyt7hoc2"
Content-Disposition: inline


--tfqcvdpunyt7hoc2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 22, 2019 at 09:47:05AM -0400, Frediano Ziglio wrote:
> >=20
> > >=20
> > > Hi,
> > >=20
> > >=20
> > > Here we can also remove some of the packing
> > >=20
> >=20
> > Do you mean the nested ones? I'm not sure and I would prefer a follow u=
p,
> > it's more "conservative" to keep the attribute if there was in the prev=
ious
> > commit.
> >=20
>=20
> I tested, nested attributes are needed, otherwise ABI is broken.

Acked-by: Victor Toso <victortoso@redhat.com>
for the series

>=20
> > > Otherwise, ack for the series
> > >=20
> > >=20
> > > On 7/22/19 2:08 PM, Frediano Ziglio wrote:
> > > > All other code use these headers.
> > > >
> > > > Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> > > > ---
> > > >   server/migration-protocol.h | 32 ++++++++++++++++++--------------
> > > >   server/reds.c               |  4 +++-
> > > >   2 files changed, 21 insertions(+), 15 deletions(-)
> > > >
> > > > diff --git a/server/migration-protocol.h b/server/migration-protoco=
l.h
> > > > index c8ec56e28..2fc8e0364 100644
> > > > --- a/server/migration-protocol.h
> > > > +++ b/server/migration-protocol.h
> > > > @@ -28,11 +28,13 @@
> > > >    * src-server to dst-server migration data messages
> > > >    * ************************************************/
> > > >  =20
> > > > +#include <spice/start-packed.h>
> > > > +
> > > >   /* increase the version when the version of any
> > > >    * of the migration data messages is increased */
> > > >   #define SPICE_MIGRATION_PROTOCOL_VERSION 1
> > > >  =20
> > > > -typedef struct __attribute__ ((__packed__)) SpiceMigrateDataHeader=
 {
> > > > +typedef struct SPICE_ATTR_PACKED SpiceMigrateDataHeader {
> > > >       uint32_t magic;
> > > >       uint32_t version;
> > > >   } SpiceMigrateDataHeader;
> > > > @@ -46,7 +48,7 @@ typedef struct __attribute__ ((__packed__))
> > > > SpiceMigrateDataHeader {
> > > >   #define SPICE_MIGRATE_DATA_CHAR_DEVICE_VERSION 1
> > > >  =20
> > > >   /* Should be the first field of any of the char_devices migration=
 data
> > > >   (see write_data_ptr) */
> > > > -typedef struct __attribute__ ((__packed__)) SpiceMigrateDataCharDe=
vice {
> > > > +typedef struct SPICE_ATTR_PACKED SpiceMigrateDataCharDevice {
> > > >       uint32_t version;
> > > >       uint8_t connected;
> > > >       uint32_t num_client_tokens;
> > > > @@ -64,7 +66,7 @@ typedef struct __attribute__ ((__packed__))
> > > > SpiceMigrateDataCharDevice {
> > > >   #define SPICE_MIGRATE_DATA_SPICEVMC_VERSION 1 /* NOTE: increase v=
ersion
> > > >   when CHAR_DEVICE_VERSION
> > > >                                                    is increased */
> > > >   #define SPICE_MIGRATE_DATA_SPICEVMC_MAGIC SPICE_MAGIC_CONST("SVMD=
")
> > > > -typedef struct __attribute__ ((__packed__)) SpiceMigrateDataSpiceV=
mc {
> > > > +typedef struct SPICE_ATTR_PACKED SpiceMigrateDataSpiceVmc {
> > > >       SpiceMigrateDataCharDevice base;
> > > >   } SpiceMigrateDataSpiceVmc;
> > > >  =20
> > > > @@ -75,7 +77,7 @@ typedef struct __attribute__ ((__packed__))
> > > > SpiceMigrateDataSpiceVmc {
> > > >   #define SPICE_MIGRATE_DATA_SMARTCARD_VERSION 1 /* NOTE: increase
> > > >   version
> > > >   when CHAR_DEVICE_VERSION
> > > >                                                     is increased */
> > > >   #define SPICE_MIGRATE_DATA_SMARTCARD_MAGIC SPICE_MAGIC_CONST("SCM=
D")
> > > > -typedef struct __attribute__ ((__packed__)) SpiceMigrateDataSmartc=
ard {
> > > > +typedef struct SPICE_ATTR_PACKED SpiceMigrateDataSmartcard {
> > > >       SpiceMigrateDataCharDevice base;
> > > >       uint8_t reader_added;
> > > >       uint32_t read_size; /* partial data read from dev */
> > > > @@ -89,11 +91,11 @@ typedef struct __attribute__ ((__packed__))
> > > > SpiceMigrateDataSmartcard {
> > > >                                                is increased */
> > > >   #define SPICE_MIGRATE_DATA_MAIN_MAGIC SPICE_MAGIC_CONST("MNMD")
> > > >  =20
> > > > -typedef struct __attribute__ ((__packed__)) SpiceMigrateDataMain {
> > > > +typedef struct SPICE_ATTR_PACKED SpiceMigrateDataMain {
> > > >       SpiceMigrateDataCharDevice agent_base;
> > > >       uint8_t client_agent_started; /* for discarding messages */
> > > >  =20
> > > > -    struct __attribute__ ((__packed__)) {
> > > > +    struct SPICE_ATTR_PACKED {
> > > >           /* partial data read from device. Such data is stored only
> > > >            * if the chunk header or the entire msg header haven't y=
et
> > > >            been
> > > >            read completely.
> > > >            * Once the headers are read, partial reads of chunks can=
 be
> > > >            sent
> > > >            as
> > > > @@ -107,7 +109,7 @@ typedef struct __attribute__ ((__packed__))
> > > > SpiceMigrateDataMain {
> > > >           uint8_t msg_filter_result;
> > > >       } agent2client;
> > > >  =20
> > > > -    struct __attribute__ ((__packed__)) {
> > > > +    struct SPICE_ATTR_PACKED {
> > > >           uint32_t msg_remaining;
> > > >           uint8_t msg_filter_result;
> > > >       } client2agent;
> > > > @@ -128,7 +130,7 @@ typedef struct __attribute__ ((__packed__))
> > > > SpiceMigrateDataMain {
> > > >    * */
> > > >   #define MIGRATE_DATA_DISPLAY_MAX_CACHE_CLIENTS 4
> > > >  =20
> > > > -typedef struct __attribute__ ((__packed__)) SpiceMigrateDataDispla=
y {
> > > > +typedef struct SPICE_ATTR_PACKED SpiceMigrateDataDisplay {
> > > >       uint64_t message_serial;
> > > >       uint8_t low_bandwidth_setting;
> > > >  =20
> > > > @@ -159,28 +161,28 @@ typedef struct __attribute__ ((__packed__))
> > > > SpiceMigrateDataDisplay {
> > > >  =20
> > > >   } SpiceMigrateDataDisplay;
> > > >  =20
> > > > -typedef struct __attribute__ ((__packed__)) SpiceMigrateDataRect {
> > > > +typedef struct SPICE_ATTR_PACKED SpiceMigrateDataRect {
> > > >       int32_t left;
> > > >       int32_t top;
> > > >       int32_t right;
> > > >       int32_t bottom;
> > > >   } SpiceMigrateDataRect;
> > > >  =20
> > > > -typedef struct __attribute__ ((__packed__))
> > > > MigrateDisplaySurfaceLossless
> > > > {
> > > > +typedef struct SPICE_ATTR_PACKED MigrateDisplaySurfaceLossless {
> > > >       uint32_t id;
> > > >   } MigrateDisplaySurfaceLossless;
> > > >  =20
> > > > -typedef struct __attribute__ ((__packed__)) MigrateDisplaySurfaceL=
ossy {
> > > > +typedef struct SPICE_ATTR_PACKED MigrateDisplaySurfaceLossy {
> > > >       uint32_t id;
> > > >       SpiceMigrateDataRect lossy_rect;
> > > >   } MigrateDisplaySurfaceLossy;
> > > >  =20
> > > > -typedef struct __attribute__ ((__packed__))
> > > > MigrateDisplaySurfacesAtClientLossless {
> > > > +typedef struct SPICE_ATTR_PACKED MigrateDisplaySurfacesAtClientLos=
sless
> > > > {
> > > >       uint32_t num_surfaces;
> > > >       MigrateDisplaySurfaceLossless surfaces[0];
> > > >   } MigrateDisplaySurfacesAtClientLossless;
> > > >  =20
> > > > -typedef struct __attribute__ ((__packed__))
> > > > MigrateDisplaySurfacesAtClientLossy {
> > > > +typedef struct SPICE_ATTR_PACKED MigrateDisplaySurfacesAtClientLos=
sy {
> > > >       uint32_t num_surfaces;
> > > >       MigrateDisplaySurfaceLossy surfaces[0];
> > > >   } MigrateDisplaySurfacesAtClientLossy;
> > > > @@ -193,10 +195,12 @@ typedef struct __attribute__ ((__packed__))
> > > > MigrateDisplaySurfacesAtClientLossy
> > > >   #define SPICE_MIGRATE_DATA_INPUTS_MAGIC SPICE_MAGIC_CONST("ICMD")
> > > >  =20
> > > >  =20
> > > > -typedef struct __attribute__ ((__packed__)) SpiceMigrateDataInputs=
 {
> > > > +typedef struct SPICE_ATTR_PACKED SpiceMigrateDataInputs {
> > > >       uint16_t motion_count;
> > > >   } SpiceMigrateDataInputs;
> > > >  =20
> > > > +#include <spice/end-packed.h>
> > > > +
> > > >   static inline int
> > > >   migration_protocol_validate_header(SpiceMigrateDataHeader *header,
> > > >                                                        uint32_t mag=
ic,
> > > >                                                        uint32_t ver=
sion)
> > > > diff --git a/server/reds.c b/server/reds.c
> > > > index 78bbe5a0f..37854ace9 100644
> > > > --- a/server/reds.c
> > > > +++ b/server/reds.c
> > > > @@ -256,7 +256,8 @@ struct RedCharDeviceVDIPortPrivate {
> > > >   };
> > > >  =20
> > > >   /* messages that are addressed to the agent and are created in the
> > > >   server
> > > >   */
> > > > -typedef struct __attribute__ ((__packed__)) VDInternalBuf {
> > > > +#include <spice/start-packed.h>
> > > > +typedef struct SPICE_ATTR_PACKED VDInternalBuf {
> > > >       VDIChunkHeader chunk_header;
> > > >       VDAgentMessage header;
> > > >       union {
> > > > @@ -265,6 +266,7 @@ typedef struct __attribute__ ((__packed__))
> > > > VDInternalBuf {
> > > >       }
> > > >       u;
> > > >   } VDInternalBuf;
> > > > +#include <spice/end-packed.h>
> > > >  =20
> > > >   SPICE_DECLARE_TYPE(RedCharDeviceVDIPort, red_char_device_vdi_port,
> > > >   CHAR_DEVICE_VDIPORT);
> > > >   #define RED_TYPE_CHAR_DEVICE_VDIPORT
> > > >   red_char_device_vdi_port_get_type()
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--tfqcvdpunyt7hoc2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1EAGgACgkQl9kSPeN6
SE9d0w/+MWwqQM4u7UQOchm/1+ky3t/SLvN5L71OaJei0Eba5h0kQNWa3F4x4KlW
LFa7wCChRI6E2PB0VFPABcoL+fAGBnUNwoObD6YRZG4bbbXlz6KRe+6MVyFRS9LO
oJ8bKv41CAjv2GH7Xx2upCqTqwEQP0nUwRP2bjYCv/B5Giy7NOj9jdEENghRo40v
rmVBjhVXe3hA0x8BdLiw04D7CjsRgCKfjbrGPhH71pB/PO/LJJDwiSxrqZXA3FvR
hP9QQTqHk5ILQF4LVnrFamuJsC5jjGQWW7LlIgoBkgbXnHgFv+4w31rcOlFSjPjj
me0dK2ojCFyyKSO10jPg01sv118FGuWGEIdvWMGD1veYwS9RZq7nwLVS5vcpk3+e
Efs2HZyPIByW5VFdfc1qIpd+kMmE2z240Xb/75ET7rCsrBCTD7ikOF8ZEI3uAqHp
s/Dqcq2h+z2jg+Cd9NtVYd3UfzM/l5aMXiSwh5mKRrYDieVIa+sUBDZXSTmf39VI
Y7IlsNGfBnUJwnDDf+YBMBoDH6uh5PdJa5FSV4x+lXcEaHBeH3i3w14+Dvl2uUqb
qjYU9JxkCoIjF2bTjnNAeIgQ51ZGAsdsggC3Gn3doREmvlsJoVwxlR/sIu1FG5fW
ljvvwdx9YtXWqyNaoUwQJx0IRwzAmuFgEoNJQkfIobkaUjFZZKE=
=Rh77
-----END PGP SIGNATURE-----

--tfqcvdpunyt7hoc2--

--===============0887633329==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0887633329==--
