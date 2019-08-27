Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8178C9E9C4
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 15:44:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A87A889B0D;
	Tue, 27 Aug 2019 13:44:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36CB589B0D
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 13:44:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D236210F23E7
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 13:44:20 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7BB2F5D9C3;
 Tue, 27 Aug 2019 13:44:14 +0000 (UTC)
Date: Tue, 27 Aug 2019 15:44:13 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827134413.cd4mir65nxp3q5s4@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-24-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-24-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.66]); Tue, 27 Aug 2019 13:44:20 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 23/29] cd-scsi: Do not export
 sense code constants
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
Content-Type: multipart/mixed; boundary="===============0853658320=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0853658320==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xe6ynyruufjdcbsg"
Content-Disposition: inline


--xe6ynyruufjdcbsg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 27, 2019 at 10:22:40AM +0100, Frediano Ziglio wrote:
> They are used only inside the module.
> Use a macro to simplify declaration which is pretty long.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Improves a bit yes,
Acked-by: Victor Toso <victortoso@redhat.com>
> ---
>  src/cd-scsi.c | 54 ++++++++++++++++++++++++++-------------------------
>  1 file changed, 28 insertions(+), 26 deletions(-)
>=20
> diff --git a/src/cd-scsi.c b/src/cd-scsi.c
> index 25842b3b..9689f91b 100644
> --- a/src/cd-scsi.c
> +++ b/src/cd-scsi.c
> @@ -114,133 +114,135 @@ struct CdScsiTarget {
>  static const char* scsi_cmd_name[256];
> =20
>  /* Predefined sense codes */
> +#define SENSE_CODE(name) \
> +    static const ScsiShortSense name G_GNUC_UNUSED
> =20
> -const ScsiShortSense sense_code_NO_SENSE =3D {
> +SENSE_CODE(sense_code_NO_SENSE) =3D {
>      .key =3D NO_SENSE , .asc =3D 0x00 , .ascq =3D 0x00,
>      .descr =3D ""
>  };
> =20
> -const ScsiShortSense sense_code_NOT_READY_CAUSE_NOT_REPORTABLE =3D {
> +SENSE_CODE(sense_code_NOT_READY_CAUSE_NOT_REPORTABLE) =3D {
>      .key =3D NOT_READY, .asc =3D 0x04, .ascq =3D 0x00,
>      .descr =3D "CAUSE NOT REPORTABLE"
>  };
> =20
> -const ScsiShortSense sense_code_BECOMING_READY =3D {
> +SENSE_CODE(sense_code_BECOMING_READY) =3D {
>      .key =3D NOT_READY, .asc =3D 0x04, .ascq =3D 0x01,
>      .descr =3D "IN PROCESS OF BECOMING READY"
>  };
> =20
> -const ScsiShortSense sense_code_INIT_CMD_REQUIRED =3D {
> +SENSE_CODE(sense_code_INIT_CMD_REQUIRED) =3D {
>      .key =3D NOT_READY, .asc =3D 0x04, .ascq =3D 0x02,
>      .descr =3D "INITIALIZING COMMAND REQUIRED"
>  };
> =20
> -const ScsiShortSense sense_code_INTERVENTION_REQUIRED =3D {
> +SENSE_CODE(sense_code_INTERVENTION_REQUIRED) =3D {
>      .key =3D NOT_READY, .asc =3D 0x04, .ascq =3D 0x03,
>      .descr =3D "MANUAL INTERVENTION REQUIRED"
>  };
> =20
> -const ScsiShortSense sense_code_NOT_READY_NO_MEDIUM =3D {
> +SENSE_CODE(sense_code_NOT_READY_NO_MEDIUM) =3D {
>      .key =3D NOT_READY, .asc =3D 0x3a, .ascq =3D 0x00,
>      .descr =3D "MEDIUM NOT PRESENT"
>  };
> =20
> -const ScsiShortSense sense_code_NOT_READY_NO_MEDIUM_TRAY_CLOSED =3D {
> +SENSE_CODE(sense_code_NOT_READY_NO_MEDIUM_TRAY_CLOSED) =3D {
>      .key =3D NOT_READY, .asc =3D 0x3a, .ascq =3D 0x01,
>      .descr =3D "MEDIUM NOT PRESENT - TRAY CLOSED"
>  };
> =20
> -const ScsiShortSense sense_code_NOT_READY_NO_MEDIUM_TRAY_OPEN =3D {
> +SENSE_CODE(sense_code_NOT_READY_NO_MEDIUM_TRAY_OPEN) =3D {
>      .key =3D NOT_READY, .asc =3D 0x3a, .ascq =3D 0x02,
>      .descr =3D "MEDIUM NOT PRESENT - TRAY OPEN"
>  };
> =20
> -const ScsiShortSense sense_code_TARGET_FAILURE =3D {
> +SENSE_CODE(sense_code_TARGET_FAILURE) =3D {
>      .key =3D HARDWARE_ERROR, .asc =3D 0x44, .ascq =3D 0x00,
>      .descr =3D "INTERNAL TARGET FAILURE"
>  };
> =20
> -const ScsiShortSense sense_code_INVALID_OPCODE =3D {
> +SENSE_CODE(sense_code_INVALID_OPCODE) =3D {
>      .key =3D ILLEGAL_REQUEST, .asc =3D 0x20, .ascq =3D 0x00,
>      .descr =3D "INVALID COMMAND OPERATION CODE"
>  };
> =20
> -const ScsiShortSense sense_code_LBA_OUT_OF_RANGE =3D {
> +SENSE_CODE(sense_code_LBA_OUT_OF_RANGE) =3D {
>      .key =3D ILLEGAL_REQUEST, .asc =3D 0x21, .ascq =3D 0x00,
>      .descr =3D "LOGICAL BLOCK ADDRESS OUT OF RANGE"
>  };
> =20
> -const ScsiShortSense sense_code_INVALID_CDB_FIELD =3D {
> +SENSE_CODE(sense_code_INVALID_CDB_FIELD) =3D {
>      .key =3D ILLEGAL_REQUEST, .asc =3D 0x24, .ascq =3D 0x00,
>      .descr =3D "INVALID FIELD IN CDB"
>  };
> =20
> -const ScsiShortSense sense_code_INVALID_PARAM_FIELD =3D {
> +SENSE_CODE(sense_code_INVALID_PARAM_FIELD) =3D {
>      .key =3D ILLEGAL_REQUEST, .asc =3D 0x26, .ascq =3D 0x00,
>      .descr =3D "INVALID FIELD IN PARAMETER LIST"
>  };
> =20
> -const ScsiShortSense sense_code_INVALID_PARAM_LEN =3D {
> +SENSE_CODE(sense_code_INVALID_PARAM_LEN) =3D {
>      .key =3D ILLEGAL_REQUEST, .asc =3D 0x1a, .ascq =3D 0x00,
>      .descr =3D "PARAMETER LIST LENGTH ERROR"
>  };
> =20
> -const ScsiShortSense sense_code_LUN_NOT_SUPPORTED =3D {
> +SENSE_CODE(sense_code_LUN_NOT_SUPPORTED) =3D {
>      .key =3D ILLEGAL_REQUEST, .asc =3D 0x25, .ascq =3D 0x00,
>      .descr =3D "LOGICAL UNIT NOT SUPPORTED"
>  };
> =20
> -const ScsiShortSense sense_code_SAVING_PARAMS_NOT_SUPPORTED =3D {
> +SENSE_CODE(sense_code_SAVING_PARAMS_NOT_SUPPORTED) =3D {
>      .key =3D ILLEGAL_REQUEST, .asc =3D 0x39, .ascq =3D 0x00,
>      .descr =3D "SAVING PARAMETERS NOT SUPPORTED"
>  };
> =20
> -const ScsiShortSense sense_code_INCOMPATIBLE_MEDIUM =3D {
> +SENSE_CODE(sense_code_INCOMPATIBLE_MEDIUM) =3D {
>      .key =3D ILLEGAL_REQUEST, .asc =3D 0x30, .ascq =3D 0x00,
>      .descr =3D "INCOMPATIBLE MEDIUM INSTALLED"
>  };
> =20
> -const ScsiShortSense sense_code_MEDIUM_REMOVAL_PREVENTED =3D {
> +SENSE_CODE(sense_code_MEDIUM_REMOVAL_PREVENTED) =3D {
>      .key =3D ILLEGAL_REQUEST, .asc =3D 0x53, .ascq =3D 0x02,
>      .descr =3D "MEDIUM REMOVAL PREVENTED"
>  };
> =20
> -const ScsiShortSense sense_code_PARAMETERS_CHANGED =3D {
> +SENSE_CODE(sense_code_PARAMETERS_CHANGED) =3D {
>      .key =3D UNIT_ATTENTION, .asc =3D 0x2a, .ascq =3D 0x00,
>      .descr =3D "PARAMETERS CHANGED"
>  };
> =20
> -const ScsiShortSense sense_code_POWER_ON_RESET =3D {
> +SENSE_CODE(sense_code_POWER_ON_RESET) =3D {
>      .key =3D UNIT_ATTENTION, .asc =3D 0x29, .ascq =3D 0x00,
>      .descr =3D "POWER ON, RESET, OR BUS DEVICE RESET"
>  };
> =20
> -const ScsiShortSense sense_code_SCSI_BUS_RESET =3D {
> +SENSE_CODE(sense_code_SCSI_BUS_RESET) =3D {
>      .key =3D UNIT_ATTENTION, .asc =3D 0x29, .ascq =3D 0x02,
>      .descr =3D "SCSI BUS RESET"
>  };
> =20
> -const ScsiShortSense sense_code_UA_NO_MEDIUM =3D {
> +SENSE_CODE(sense_code_UA_NO_MEDIUM) =3D {
>      .key =3D UNIT_ATTENTION, .asc =3D 0x3a, .ascq =3D 0x00,
>      .descr =3D "MEDIUM NOT PRESENT"
>  };
> =20
> -const ScsiShortSense sense_code_MEDIUM_CHANGED =3D {
> +SENSE_CODE(sense_code_MEDIUM_CHANGED) =3D {
>      .key =3D UNIT_ATTENTION, .asc =3D 0x28, .ascq =3D 0x00,
>      .descr =3D "MEDIUM CHANGED"
>  };
> =20
> -const ScsiShortSense sense_code_REPORTED_LUNS_CHANGED =3D {
> +SENSE_CODE(sense_code_REPORTED_LUNS_CHANGED) =3D {
>      .key =3D UNIT_ATTENTION, .asc =3D 0x3f, .ascq =3D 0x0e,
>      .descr =3D "REPORTED LUNS CHANGED"
>  };
> =20
> -const ScsiShortSense sense_code_DEVICE_INTERNAL_RESET =3D {
> +SENSE_CODE(sense_code_DEVICE_INTERNAL_RESET) =3D {
>      .key =3D UNIT_ATTENTION, .asc =3D 0x29, .ascq =3D 0x04,
>      .descr =3D "DEVICE INTERNAL RESET"
>  };
> =20
> -const ScsiShortSense sense_code_UNIT_ATTENTION_MEDIUM_REMOVAL_REQUEST =
=3D {
> +SENSE_CODE(sense_code_UNIT_ATTENTION_MEDIUM_REMOVAL_REQUEST) =3D {
>      .key =3D UNIT_ATTENTION, .asc =3D 0x5a, .ascq =3D 0x01,
>      .descr =3D "OPERATOR MEDIUM REMOVAL REQUEST"
>  };
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--xe6ynyruufjdcbsg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lM60ACgkQl9kSPeN6
SE8qmBAAlcKxkGr1MJFGNeZQIFzBWZDWu6yRhshaEimuWsiHb955CAUryD3PK5jB
RL23k8PQ1SDnJY6k52KoT8o1v07jJL7G2RNO3YcSGSM0XqL8bvD7ZsUZ+Suamo+l
fsQibMTjod5rZkmq+qYrjjLdCfu5lZod3SoasPBAjFhpmPwRwCF0gpP1S8WqYQ2c
Qx5Q7cmcKqJK99NfT1JM31r/J6ahUCdtmV6gISfsQQ85Z2RJNfdAcR3zO5qf4jjK
zlqRMbU8+x+OpXt7jVqbsTwiV5fphbuYRul9Ienx4S206g9SU1ja0s2lyZZrfP2f
AMAvagqawjwt7s0izN+3hCJQFhJw65pYVV2GaPAz6OGxjPxFfxBDZBfWZ/oZ2SOS
nhQJWHhIRh4/yI5uEj5/LtjDLyAVsd4fCGdoskfiUAFO1UvnnnH5JwSWnT8psVIi
ZUwJJb1oQCaQlsRZeVb6bUf0sVOgdLR2XZhfGok54h0HNrwih++D44al024MEGYb
P06pw7HBBh3neLOA8Fj3Xk71u0vW6cxSavCDS1FbESpcdQO4n6hhbQezyHcslgge
robX2AZmOFJcVZkzuAweqo6LzGsixDvPFiXxp3VdH2lbeYtHDEyCv5Qaf6AmP6NS
Vss2F0izZTzRVPeD/77jM2pNxsdMltHkIKSz2PfTsDFYlcjmitc=
=QEjt
-----END PGP SIGNATURE-----

--xe6ynyruufjdcbsg--

--===============0853658320==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0853658320==--
