Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABAAD273D
	for <lists+spice-devel@lfdr.de>; Thu, 10 Oct 2019 12:32:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C65376EAD8;
	Thu, 10 Oct 2019 10:32:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFAFA6EAD8
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 10:32:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7E173883CA
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 10:32:38 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 288015D6A5;
 Thu, 10 Oct 2019 10:32:38 +0000 (UTC)
Date: Thu, 10 Oct 2019 12:32:37 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191010103237.o4cr6w7krkyr4ddw@wingsuit>
References: <20190814170825.11903-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190814170825.11903-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Thu, 10 Oct 2019 10:32:38 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common v2] codegen: Check validity
 of array members
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
Content-Type: multipart/mixed; boundary="===============1998728921=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1998728921==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6nczjsxozs3f2jmc"
Content-Disposition: inline


--6nczjsxozs3f2jmc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

I was doing some tests, seems to work well :)

On Wed, Aug 14, 2019 at 06:08:24PM +0100, Frediano Ziglio wrote:
> Check that combination of fields for an array does not
> lead to unsafe code.
> check_valid method came from generate_c_declaration with
> some more check and it's use in demarshaller to validate
> the array if the structure is not generated.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  python_modules/demarshal.py |  2 ++
>  python_modules/ptypes.py    | 31 ++++++++++++++++++++++++++++++-
>  2 files changed, 32 insertions(+), 1 deletion(-)
>=20
> Changes since v1:
> - add comments to explain the checks done

Many thanks for the comments,
    Acked-by: Victor Toso <victortoso@redhat.com>
>=20
> diff --git a/python_modules/demarshal.py b/python_modules/demarshal.py
> index acd4b6f..3736976 100644
> --- a/python_modules/demarshal.py
> +++ b/python_modules/demarshal.py
> @@ -315,6 +315,8 @@ def write_validate_pointer_item(writer, container, it=
em, scope, parent_scope, st
>  def write_validate_array_item(writer, container, item, scope, parent_sco=
pe, start,
>                                want_nw_size, want_mem_size, want_extra_si=
ze):
>      array =3D item.type
> +    if item.member:
> +        array.check_valid(item.member)
>      is_byte_size =3D False
>      element_type =3D array.element_type
>      if array.is_bytes_length():
> diff --git a/python_modules/ptypes.py b/python_modules/ptypes.py
> index 311ce3d..ebe001c 100644
> --- a/python_modules/ptypes.py
> +++ b/python_modules/ptypes.py
> @@ -485,7 +485,36 @@ class ArrayType(Type):
>      def c_type(self):
>          return self.element_type.c_type()
> =20
> +    def check_valid(self, member):
> +        # These attribute corresponds to specific structure size
> +        if member.has_attr("chunk") or member.has_attr("as_ptr"):
> +            return
> +        # These attribute indicate that the array is stored in the struc=
ture
> +        # as a pointer of the array. If there's no way to retrieve the l=
ength
> +        # of the array give error, as the user has no way to do bound ch=
ecks
> +        if member.has_attr("to_ptr") or member.has_attr("ptr_array"):
> +            if not (self.is_identifier_length() or self.is_constant_leng=
th()):
> +                raise Exception("Unsecure, no length of array")
> +            return
> +        # This attribute indicate that the array is store at the end
> +        # of the structure, the user will compute the length from the
> +        # entire message size
> +        if member.has_end_attr():
> +            return
> +        # Avoid bug, the array has no length specified and no space
> +        # would be allocated
> +        if self.is_remaining_length():
> +            raise Exception('C output array is not allocated')
> +        # For constant length (like "foo[5]") the field is a sized array
> +        # For identifier automatically a pointer to allocated data is st=
ore,
> +        # in this case user can read the size using the other field spec=
ified
> +        # by the identifier
> +        if self.is_constant_length() or self.is_identifier_length():
> +            return
> +        raise NotImplementedError('unknown array %s' % str(self))
> +
>      def generate_c_declaration(self, writer, member):
> +        self.check_valid(member)
>          name =3D member.name
>          if member.has_attr("chunk"):
>              return writer.writeln('SpiceChunks *%s;' % name)
> @@ -497,7 +526,7 @@ class ArrayType(Type):
>              return writer.writeln('%s *%s;' % (self.c_type(), name))
>          if member.has_attr("ptr_array"):
>              return writer.writeln('%s *%s[0];' % (self.c_type(), name))
> -        if member.has_end_attr() or self.is_remaining_length():
> +        if member.has_end_attr():
>              return writer.writeln('%s %s[0];' % (self.c_type(), name))
>          if self.is_constant_length():
>              return writer.writeln('%s %s[%s];' % (self.c_type(), name, s=
elf.size))
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--6nczjsxozs3f2jmc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2fCMUACgkQl9kSPeN6
SE//3xAAt/khyDOCm0DEwcs1RRWyD1d7+rALsjqhrlR1GiF1ln7ypgPdtQHkGp9y
XaSEkVuYCnDOODbq539tDm1cxStUu731a7XZnkkECPXSta+f3DNxk0E4uKJLohOz
EFSlAFKtBsUkC7AQ1+8tlkphLXxgnsAZuJXsYDgK37bg+oGlNDmRRRLnnec6D/Gc
YJIwnJaWzKs3Yxaa5cZtxIqwFLV5awlcTXxo/haGHnH9EH/mxQrCedIlEEvgXZqX
79H6mxkrsaaDzksLrXqU9vTodcdMpPkXKzr+VHIiHN0e3uFwMAmA3Iqaehf9wx5V
wS7Q/sTVgVmxmOQvvqUeIl8R9X3IyJOmVAUAL78fxI1MRyN0CK7gEU2Un15M5EKl
9b/dNNarC6ixlMJx81vp1ee5ESHLTvCAxKCzb2dNMkieF17ork3r7qzKPKvIPEOZ
Q0lFi7l1rysBc7PvRZldQnalgWWveyfm8qPAabpUVqDWzZSOlpNECMLS/bpZE9eq
LtczVzMkWJ9sgeIM5hpxUfJD3Y72pPJ0LB7XEiGBuMNH0/wv0UUVrPGg+eYf874C
nD6mxqI09jWAVgAkzfzD/n19GOzJVi4QYlTGkMWpMfqbskII8phC/GAqIU2NXPy4
jO5jKor6Ox2H3ZGNzTeOnTimzRivOA66O5jQSzUEYb9tihBqXAw=
=/fQe
-----END PGP SIGNATURE-----

--6nczjsxozs3f2jmc--

--===============1998728921==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1998728921==--
