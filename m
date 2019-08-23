Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE739AB61
	for <lists+spice-devel@lfdr.de>; Fri, 23 Aug 2019 11:32:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F77C6E04E;
	Fri, 23 Aug 2019 09:32:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 316946E04E
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 09:32:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CEB6C4E93D
 for <spice-devel@lists.freedesktop.org>; Fri, 23 Aug 2019 09:32:36 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7BCA75D6D0;
 Fri, 23 Aug 2019 09:32:36 +0000 (UTC)
Date: Fri, 23 Aug 2019 11:32:35 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190823093235.csb7wntefeh7ltwx@wingsuit>
References: <20190806153453.20616-1-kpouget@redhat.com>
 <20190806153453.20616-2-kpouget@redhat.com>
 <829772421.5808891.1565788131423.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <829772421.5808891.1565788131423.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Fri, 23 Aug 2019 09:32:36 +0000 (UTC)
Subject: Re: [Spice-devel] [RFC spice-server 1/3] stream-channel: Add
 preferred video codec capability
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
Content-Type: multipart/mixed; boundary="===============1919182836=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1919182836==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zfounq572lem42tv"
Content-Disposition: inline


--zfounq572lem42tv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Aug 14, 2019 at 09:08:51AM -0400, Frediano Ziglio wrote:
> > +/* Returns an array with SPICE_VIDEO_CODEC_TYPE_ENUM_END elements,
> > + * with the client preference order (index) as value */
> > +GArray
> > *video_stream_parse_preferred_codecs(SpiceMsgcDisplayPreferredVideoCode=
cType
> > *msg)
> > +{
> > +    gint i, len;
>=20
> gnot ga gbig gfun gof gall gthese gg gstrings

Haha, you brought something like that in the past too. What can
we do about it? I don't even think much, if I'm working on code
with glib/gobject I g-prefix types too. I would say it makes
sense when interacting with the its libraries, random e.g:

    glong g_utf8_strlen (const gchar *p, gssize max);

I'm raising this question/email so we can improve this somehow
(checkpatch.pl git-hooks and/or coding style standards) and make
it clear for contributors/reviewers without much time loss in
discussion.

Cheers,

--zfounq572lem42tv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1fsrMACgkQl9kSPeN6
SE/SOA/+JBd/w/1IGW6nYKyxX3BRLtTzIB6CrVerlkJ60H1xp1xlWHPpC7ua03Bn
v/pLeUXJxqob8W6ek3XrTf4CdEQchdBvb2CVviIX2YDoA0blKmIUXWZbzm75A+S/
mZjqyXwOqiY88QXLoTvq6R7L0X4+jP9UxFPhVAdXkjNwBQVXlvPywI6W/UTRtgcH
G5qF12y+h3L/ea+ov4E+mBCOWRhHUFyDe+eq98GQ4pENXrRgCMFUJlwrJ7xU+fPV
SW50XmQKd83/hZJIzdsQPyQrUPjO7ip8DCZsBEhh11l7LChSPSYLNHljQiLi2gM/
esjDV+FMVMq/5TU8ksTLRhc/NlvB6PuyIEBTDTXWxhZCiiItmf8RTOPI9g4Qt7r2
kramE/jshynrYiwaz/V92Ft3LEvxBhcWT5hyaCx1sjJp9unKwgEpaTK8hund7UWu
wkkre1z8TkgxQKLrM3gRMg5VcQWonNOAchbvWfPNQ9kRT5XHBjemf+7dShdWqK1f
o9+iYGmHXzTAhSgZqzhQdg425NV/D/pmyRomdJCcjo3SoXi5+fysvtdIm2op3ZoJ
wqinFXMpThqYIwvDxDbfQ4kQiVFYRRZD7D0nNwnQxF7xfRmkP4ZJDLFf/B3JkcVf
eXBpPy6eIneQPNtk6NN2BsBp51rXsmc+YxgpMkJK6uu98hJyBpw=
=6TBX
-----END PGP SIGNATURE-----

--zfounq572lem42tv--

--===============1919182836==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1919182836==--
