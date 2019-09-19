Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 965EAB752A
	for <lists+spice-devel@lfdr.de>; Thu, 19 Sep 2019 10:34:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21B376F4ED;
	Thu, 19 Sep 2019 08:34:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29B186F4ED
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 08:33:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CB8BB18C891B
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Sep 2019 08:33:58 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 78D5719C5B;
 Thu, 19 Sep 2019 08:33:58 +0000 (UTC)
Date: Thu, 19 Sep 2019 10:33:57 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190919083357.r4xftz6z6yci5ey5@wingsuit>
References: <20190916102104.20943-1-victortoso@redhat.com>
 <20190916102104.20943-11-victortoso@redhat.com>
 <609435609.453393.1568802087770.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <609435609.453393.1568802087770.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.70]); Thu, 19 Sep 2019 08:33:58 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v7 10/20] fixup! usb-redir: add files for
 SCSI and USB MSC implementation
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
Content-Type: multipart/mixed; boundary="===============2075909149=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============2075909149==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ncxhpa3pqzdjpt6l"
Content-Disposition: inline


--ncxhpa3pqzdjpt6l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 18, 2019 at 06:21:27AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Frediano Ziglio <fziglio@redhat.com>
> >=20
> > Do not use 0x%u as format, misleasding, %u is decimal.
> > Also most of these are formatting lun number which in multiple cases are
> > expressed as decimal.
>=20
> I remember somebody acked this so can be squashed in the previous
> which is already acked.

Okay, I'll squash and apply changes from the review and send a
v8 and then we wait for Yuri.

Cheers,
>=20
> > ---
> >  src/cd-scsi.c | 20 ++++++++++----------
> >  1 file changed, 10 insertions(+), 10 deletions(-)
> >=20
> > diff --git a/src/cd-scsi.c b/src/cd-scsi.c
> > index 25842b3..ea682ef 100644
> > --- a/src/cd-scsi.c
> > +++ b/src/cd-scsi.c
> > @@ -2079,7 +2079,7 @@ static void cd_scsi_cmd_send_event(CdScsiLU *dev,
> > CdScsiRequest *req)
> >      pers_prevent =3D event[1] & 0x80;
> >      ext_req_code =3D (event[2] << 8) | event[3];
> > =20
> > -    SPICE_DEBUG("send_event, lun:0x%u immed:%u param_len:%u"
> > +    SPICE_DEBUG("send_event, lun:%u immed:%u param_len:%u"
> >                  " ext_req_event:0x%x ext_req_status:0x%x"
> >                  " pers_prevent:0x%x ext_req_code:0x%x",
> >                  req->lun, immed, event_param_len, ext_req_event,
> > @@ -2177,7 +2177,7 @@ static void cd_scsi_cmd_start_stop_unit(CdScsiLU =
*dev,
> > CdScsiRequest *req)
> >      load_eject =3D (req->cdb[4] & CD_START_STOP_FLAG_LOEJ) ? TRUE : FA=
LSE;
> >      power_cond =3D req->cdb[4] >> 4;
> > =20
> > -    SPICE_DEBUG("start_stop_unit, lun:0x%u"
> > +    SPICE_DEBUG("start_stop_unit, lun:%u"
> >                  " immed:%d start:%d load_eject:%d power_cond:0x%x(%s)",
> >                  req->lun, immed, start, load_eject, power_cond,
> >                  cd_scsi_start_stop_power_cond_name(power_cond));
> > @@ -2187,23 +2187,23 @@ static void cd_scsi_cmd_start_stop_unit(CdScsiLU
> > *dev, CdScsiRequest *req)
> >          if (!start) { /* stop the unit */
> >              if (load_eject) { /* eject medium */
> >                  if (dev->prevent_media_removal) {
> > -                    SPICE_DEBUG("start_stop_unit, lun:0x%u"
> > +                    SPICE_DEBUG("start_stop_unit, lun:%u"
> >                                  " prevent_media_removal set, eject fai=
led",
> >                                  req->lun);
> >                      cd_scsi_cmd_complete_check_cond(dev, req,
> >                      &sense_code_MEDIUM_REMOVAL_PREVENTED);
> >                      return;
> >                  }
> > -                SPICE_DEBUG("start_stop_unit, lun:0x%u eject", req->lu=
n);
> > +                SPICE_DEBUG("start_stop_unit, lun:%u eject", req->lun);
> >                  cd_scsi_lu_unload(dev);
> >                  cd_scsi_dev_changed(dev->tgt->user_data, req->lun);
> >              }
> >              dev->power_cond =3D CD_SCSI_POWER_STOPPED;
> > -            SPICE_DEBUG("start_stop_unit, lun:0x%u stopped", req->lun);
> > +            SPICE_DEBUG("start_stop_unit, lun:%u stopped", req->lun);
> >          } else { /* start the unit */
> >              dev->power_cond =3D CD_SCSI_POWER_ACTIVE;
> > -            SPICE_DEBUG("start_stop_unit, lun:0x%u started", req->lun);
> > +            SPICE_DEBUG("start_stop_unit, lun:%u started", req->lun);
> > =20
> >              if (load_eject) { /* load medium */
> > -                SPICE_DEBUG("start_stop_unit, lun:0x%u load with no me=
dia",
> > +                SPICE_DEBUG("start_stop_unit, lun:%u load with no medi=
a",
> >                              req->lun);
> >                  cd_scsi_lu_load(dev, NULL);
> >                  cd_scsi_dev_changed(dev->tgt->user_data, req->lun);
> > @@ -2213,17 +2213,17 @@ static void cd_scsi_cmd_start_stop_unit(CdScsiLU
> > *dev, CdScsiRequest *req)
> >      case CD_START_STOP_POWER_COND_ACTIVE:
> >          /* not error to specify transition to the current power condit=
ion */
> >          dev->power_cond =3D CD_SCSI_POWER_ACTIVE;
> > -        SPICE_DEBUG("start_stop_unit, lun:0x%u active", req->lun);
> > +        SPICE_DEBUG("start_stop_unit, lun:%u active", req->lun);
> >          break;
> >      case CD_START_STOP_POWER_COND_IDLE:
> >      case CD_START_STOP_POWER_COND_FORCE_IDLE_0:
> >          dev->power_cond =3D CD_SCSI_POWER_IDLE;
> > -        SPICE_DEBUG("start_stop_unit, lun:0x%u idle", req->lun);
> > +        SPICE_DEBUG("start_stop_unit, lun:%u idle", req->lun);
> >          break;
> >      case CD_START_STOP_POWER_COND_STANDBY:
> >      case CD_START_STOP_POWER_COND_FORCE_STANDBY_0:
> >          dev->power_cond =3D CD_SCSI_POWER_STANDBY;
> > -        SPICE_DEBUG("start_stop_unit, lun:0x%u standby", req->lun);
> > +        SPICE_DEBUG("start_stop_unit, lun:%u standby", req->lun);
> >          break;
> >      case CD_START_STOP_POWER_COND_LU_CONTROL:
> >          break;
>=20
> Frediano

--ncxhpa3pqzdjpt6l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2DPXUACgkQl9kSPeN6
SE8scw//du1eOmoADKaeyeXrR9WQw5sJSHPeX8pybP5Ygb3LI/FsbdU+/V/pB/Ha
eOkIl7w7LDLY6cK/E2bZQVZn78LGytOTkK6fjT6pDd4RfkbzfpXpjkG/nUawYieK
jZ7PLOQ4VszwBcUHKybqyzxjyvkcuyl4gp4L2fHrR4h0nJn5rKB3W3aLU4/lvvHD
zu6jZIjWZ6SGVgxB4JKzN4DrQ/bsseedPUoHEX0/HI4xGJFxpmdqazkJczs1Ee6H
n6Us0rWxmqCA1NIIS46AIjOmAAYjVElLbv6n34wohnWuqTsb4hMuV9Si+s/h2vS+
VRH1pB1hYKUjw6v7/lm4ufZKeSmQlvLdY+CDfB0ISP9hPse+WzEOMTO+lizHLWJA
OBKLY1cfjqn7ae2pZJ7oNp1AxVzQFkRHXdK99euSmTZieHRQL3LpNQHpCzKXgmPI
+EP8uHb7AR2jvKcJYjlBjDn4aFi9gN5cE7tsz60RMG4ZFnONnlPu0FICopWInWgr
6ICcjh54aqd+zHWUuz3z7r39rvluU+6kQtdY/z6eTbq/hGiYjGUVnWUk8uqM9XzP
+uz6JtgFFlgaxNSJavKpKYWCKn0oaIHTL3+DeRWL3IDFq8D3efKn9wLK3BlCNTPL
R1jvhOTQ9oEcCTDr4w5dWxU3+KiNcx1CsiYiaP6jyX4o2LB2Dmw=
=O1kA
-----END PGP SIGNATURE-----

--ncxhpa3pqzdjpt6l--

--===============2075909149==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============2075909149==--
