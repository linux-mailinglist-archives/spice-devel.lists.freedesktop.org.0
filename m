Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C823CE2B3
	for <lists+spice-devel@lfdr.de>; Mon,  7 Oct 2019 15:07:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E55289F6E;
	Mon,  7 Oct 2019 13:07:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B4189F6E
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 13:07:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A0C487F745
 for <spice-devel@lists.freedesktop.org>; Mon,  7 Oct 2019 13:07:36 +0000 (UTC)
Received: from localhost (unknown [10.32.181.37])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4F38A5C1D4;
 Mon,  7 Oct 2019 13:07:36 +0000 (UTC)
Date: Mon, 7 Oct 2019 15:07:35 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191007130735.sc36pirys43x5voi@wingsuit>
References: <20191007103906.30517-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191007103906.30517-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Mon, 07 Oct 2019 13:07:36 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common] proto: Demarshal Smartcard
 data field
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
Content-Type: multipart/mixed; boundary="===============1878152920=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1878152920==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jt72aycc2sgt4erq"
Content-Disposition: inline


--jt72aycc2sgt4erq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Oct 07, 2019 at 11:38:58AM +0100, Frediano Ziglio wrote:
> Currently the demarshaler code is not used by spice-server.
> Demarshal all the fields of the header message, not only the header.
> Using generated code allows to easily check data and support
> big endian machines. Generated code will be used by spice-server.
>=20
> The resulting change is.
>=20
>    diff -ru gen/generated_client_marshallers.c common/generated_client_ma=
rshallers.c
>     --- gen/generated_client_marshallers.c      2019-10-05 20:44:54.00000=
0000 +0100
>     +++ common/generated_client_marshallers.c   2019-10-05 20:45:33.00000=
0000 +0100
>     @@ -283,6 +283,7 @@
>          spice_marshaller_add_uint32(m, src->type);
>          spice_marshaller_add_uint32(m, src->reader_id);
>          spice_marshaller_add_uint32(m, src->length);
>     +    /* Don't marshall @nomarshal data */
>      }
>=20
>      #endif /* USE_SMARTCARD */
>     diff -ru gen/generated_server_demarshallers.c common/generated_server=
_demarshallers.c
>     --- gen/generated_server_demarshallers.c    2019-10-05 20:44:54.00000=
0000 +0100
>     +++ common/generated_server_demarshallers.c 2019-10-05 20:45:33.00000=
0000 +0100
>     @@ -1451,10 +1451,25 @@
>          uint64_t nw_size;
>          uint64_t mem_size;
>          uint8_t *in, *end;
>     +    uint64_t data__nw_size, data__mem_size;
>     +    uint64_t data__nelements;
>          VSCMsgHeader *out;
>=20
>     -    nw_size =3D 12;
>     -    mem_size =3D sizeof(VSCMsgHeader);
>     +    { /* data */
>     +        uint32_t length__value;
>     +        pos =3D start + 8;
>     +        if (SPICE_UNLIKELY(pos + 4 > message_end)) {
>     +            goto error;
>     +        }
>     +        length__value =3D read_uint32(pos);
>     +        data__nelements =3D length__value;
>     +
>     +        data__nw_size =3D data__nelements;
>     +        data__mem_size =3D sizeof(uint8_t) * data__nelements;
>     +    }
>     +
>     +    nw_size =3D 12 + data__nw_size;
>     +    mem_size =3D sizeof(VSCMsgHeader) + data__mem_size;
>=20
>          /* Check if message fits in reported side */
>          if (nw_size > (uintptr_t) (message_end - start)) {
>     @@ -1474,6 +1489,10 @@
>          out->type =3D consume_uint32(&in);
>          out->reader_id =3D consume_uint32(&in);
>          out->length =3D consume_uint32(&in);
>     +    verify(sizeof(out->data) =3D=3D 0);
>     +    memcpy(out->data, in, data__nelements);
>     +    in +=3D data__nelements;
>     +    end +=3D data__nelements;
>=20
>          assert(in <=3D message_end);
>          assert(end <=3D data + mem_size);
>=20
> The @nomarshal attribute allows to not change the marshaling code
> (used by spice-gtk).

Ah, I was thinking about that for a bit. That's interesting case.
We do have data being sent but not described in the spice.proto
file. From protocol point of view, I found that very weird. Is
it? (honest question)

> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Patch seems fine, I've asked before elsewhere but I'd love to
have a simple way to test smartcard if that exists!

> ---
>  spice.proto | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/spice.proto b/spice.proto
> index 34ba3c8..616b960 100644
> --- a/spice.proto
> +++ b/spice.proto
> @@ -1305,6 +1305,7 @@ channel SmartcardChannel : BaseChannel {
>          vsc_message_type type;
>          uint32 reader_id;
>          uint32 length;
> +        uint8 data[length] @end @nomarshal;

This truly seems like a protocol fix to me.

Cheers,

>      } @ctype(VSCMsgHeader) header =3D 101;
>  /* See comment on client data message above */
>  /*
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--jt72aycc2sgt4erq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2bOJcACgkQl9kSPeN6
SE9AoA//epqLhM6CRmpSR8oFsuTDSCyp+Kb7E8M+rXbHbeasVdUyXi+jZuIuNnyy
UU05IEfK/BfkuWoXtOTokcN6Z5Vb6PVDXugIeEu24ZgfigHjnqoan1T3q8wTjzcw
rCye6k0jyn/ibRy7DWZr9cDnLHX5Q/4zrgwqXc7AoLCztguTKaOU+mX5ADRVh3Dv
F6Jt3fP7Ujme14cT1lvdwIbFZPI4+ml8NrIetX2V603qEmfCu7M8cYd9xXPr0qBB
mLqjtgymZj2QdBw37gUADp14Ztusro5dO+zvF4oIjiX4DDmCKWjMVfn1zqNGvI+R
dgeVuQonJo26jFfAPpJrLfbl+FAjG5tYXPkNbM8fVQ+fDoLpR4Olq6vtH40XCxM2
fey6DmaSCnZEh71TjJIIYMSBQmdLvVJ6N3jOPWSQ71U72jfWp1RB+GF28nSQDze5
ct3LQ/fVIcO936PowbV7+tYk2jkYRbZf+DFmjsfSNTfTk7tA/IadHzssPIcS/4OH
QR2/i2h6Ymc9pBI/UN5kOKwFrAMqxl65zvVbvQCSJ5CRmoo1NBIeHyil+xrHCgd9
gUOiMI381qDDW65H1IX6b1ay2U2CM53OMHYqnDRGgss5mL8VPxnIy8qzs5z+zsfr
helYfR3IwMB/8Dnn+cGLFme5xtS0UJ1IB817jPhOE5ujyh9xnJg=
=0VEA
-----END PGP SIGNATURE-----

--jt72aycc2sgt4erq--

--===============1878152920==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1878152920==--
