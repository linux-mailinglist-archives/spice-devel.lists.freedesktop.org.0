Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 568057A27AD
	for <lists+spice-devel@lfdr.de>; Fri, 15 Sep 2023 22:08:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A83110E082;
	Fri, 15 Sep 2023 20:08:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44B8510E082
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Sep 2023 20:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1694808500;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yN2HgjRICufqCOWafHR7MSQPd7Ygu2ms8gpjGEnzPTU=;
 b=FlD/1pse5u9JYceBRWjzKWApeG53vxX8s5NPeU1ypXi5tamzqHvEErgSJ8hKYKpI38h7xt
 cyel6DLOgMrf6rpiTAr1aA8fD67jo5+EWJ9tATXSpJJSWftTXEKTLDd/CpZGS1aKqY+lXV
 QfHqkKeyr2IEXz9lO8tLT6mNf0jftso=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-61-OzEyEW2BM7KY46B2rK-cXA-1; Fri, 15 Sep 2023 16:08:14 -0400
X-MC-Unique: OzEyEW2BM7KY46B2rK-cXA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A29E881D7A5;
 Fri, 15 Sep 2023 20:08:13 +0000 (UTC)
Received: from localhost (unknown [10.45.224.20])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 31D1740C6EA8;
 Fri, 15 Sep 2023 20:08:13 +0000 (UTC)
Date: Fri, 15 Sep 2023 22:08:12 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <freddy77@gmail.com>
Message-ID: <yjgvpay3dcfkrtysqmlkjb5jl52it3cozdwapovkdninyjf3ro@akfmfzv7hzob>
References: <20230915001215.531746-1-vivek.kasireddy@intel.com>
 <20230915001215.531746-5-vivek.kasireddy@intel.com>
 <CAHt6W4dgV69Q72u+AvCqSKSXYL8R5s0JC6nAetsR15n4EUR=Qw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="tjee2pmdfufq7cnt"
Content-Disposition: inline
In-Reply-To: <CAHt6W4dgV69Q72u+AvCqSKSXYL8R5s0JC6nAetsR15n4EUR=Qw@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
Subject: Re: [Spice-devel] [PATCH 2/4] channel-display-gst: Add
 "byte-stream" as the stream format for h264
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
Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>,
 spice-devel@lists.freedesktop.org, Jin Chung Teng <jin.chung.teng@intel.com>,
 Dongwon Kim <dongwon.kim@intel.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--tjee2pmdfufq7cnt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Sep 15, 2023 at 05:51:14PM +0100, Frediano Ziglio wrote:
> Il giorno ven 15 set 2023 alle ore 01:33 Vivek Kasireddy
> <vivek.kasireddy@intel.com> ha scritto:
> >
> > Adding the string "stream-format=3Dbyte-stream" to decoder capabilities
> > (dec_caps) for h264/h265 codecs stops Gstreamer from complaining
> > about missing stream format.
> >
> > Cc: Frediano Ziglio <freddy77@gmail.com>
> > Cc: Dongwon Kim <dongwon.kim@intel.com>
> > Cc: Jin Chung Teng <jin.chung.teng@intel.com>
> > Cc: Hazwan Arif Mazlan <hazwan.arif.mazlan@intel.com>
> > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > ---
> >  src/channel-display-priv.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/src/channel-display-priv.h b/src/channel-display-priv.h
> > index 66c9cff..1a7590a 100644
> > --- a/src/channel-display-priv.h
> > +++ b/src/channel-display-priv.h
> > @@ -177,7 +177,7 @@ static const struct {
> >       * (hardcoded in spice-server), let's add it here to avoid the war=
ning.
> >       */
> >      { SPICE_DISPLAY_CAP_CODEC_H264, "h264",
> > -      "h264parse ! avdec_h264", "video/x-h264" },
> > +      "h264parse ! avdec_h264", "video/x-h264,stream-format=3Dbyte-str=
eam" },
> >
> >      /* SPICE_VIDEO_CODEC_TYPE_VP9 */
> >      { SPICE_DISPLAY_CAP_CODEC_VP9, "vp9",
> > @@ -185,7 +185,7 @@ static const struct {
> >
> >      /* SPICE_DISPLAY_CAP_CODEC_H265 */
> >      { SPICE_DISPLAY_CAP_CODEC_H265, "h265",
> > -      "h265parse ! avdec_h265", "video/x-h265" },
> > +      "h265parse ! avdec_h265", "video/x-h265,stream-format=3Dbyte-str=
eam" },
> >
> >  };
> >
>=20
> Hi,
>    I agree with this change. Specifically I'm getting the warning too
> even if my system is pretty updated.
>=20
> This setting was removed by commit
> https://gitlab.freedesktop.org/spice/spice-gtk/-/commit/c9129ed202b00f4a7=
4ea7a55de19150194257e77
> but the explanation about it was removed is not really clear to me.

Yes, I've put the chat with tim and slomo because it was tricky.

The important point imho could be:

 | toso  slomo: right, my point was that I would like to list the
 | h264 decoders that are available and I was using `video/x-h264,
 | stream-format=3D3Dbyte-stream` as input for
 | gst_element_factory_list_filter() .. and avdec_h264 is the one
 | not showing because it needs the aligment

So, the problem I had at that time was exactly that using
stream-format would prevent loading avdec_h264 as viable option.

> Personally I think this commit should be applied in any case, it makes
> sense independently of the series. Vivek, do you agree?
>=20
> Victor, do you agree to this change?

If you test this and it lists & works with avdec_h264, I think it
is fine too.

Cheers,
Victor

--tjee2pmdfufq7cnt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmUEuasACgkQl9kSPeN6
SE93TQ/8Cl4UbrXlqJMEc6fDfWxA/UNO12v8CFfPtsrl3Ew97mvQOTrURMJ+s6Qk
ng1KAiRZ0tU/s5UWu2F8DwrCOS84gofnVt3o2ZSDBnh9Qds3hhdAp/IzwdhKGNh1
uU6QWK6EqVjrlUSpHPWAHg9q+PeH9Ys/2GNJcp7mjw14hLjRcsQR/fjI5KXKG4W3
3TxTodjXbau5jIZNbQC1XMpkhIzEGxZFOJX1bAcqeJmmtXwokHCV6698vGpxiCVx
Ff8zwZVSLY7B7+dQo2BBTJgobCOzj845b3cBV54qqUYg2EP9WNfL0bearMBVRqGV
FjL3ItkKF6WrpT8CY9oHycTJN0O7Ks5mDlPXMU42zR8JZ90Vu1iIa8NmvrNh7Ha/
wNr9OZ4o2Ml33SbmtaUhIuY5RXTVndNwwAW0xkVQFJKljA4ntb1xD+i0Wg7jMvJa
2ZtoDBGoX88BejbEVzQ/j6exXJbcuqEB+MOsmZyRN+5wxOqorqeUiDknYWCnret7
X8sraCa7aX9kjdXGOvf2sob0f/VBDdscnLKMDb8rNB6KyDQSb6v9buxJDfLnXlig
GU2asoCsgR/Mg8iCG9zhWu4dedr5dtEInkfqNr/Lng4qfWRKErpQcqy7XTuyMofG
9iPDEBmdfZSfp7SH2zWu13Xmu+x1zFI/1g0PGO0S0o8HJzbKw4M=
=zvhx
-----END PGP SIGNATURE-----

--tjee2pmdfufq7cnt--

