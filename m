Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB4059DAF6
	for <lists+spice-devel@lfdr.de>; Tue, 23 Aug 2022 13:38:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21C102BEC0;
	Tue, 23 Aug 2022 11:38:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D5562B9CE
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Aug 2022 11:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1661254682;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=131wPb8Ez8ch378agORkivHoxpQ1M7hlauTyafGhsY0=;
 b=XwS27q6USuComIM/14YF5TiJV+jv4ulfNlj0E+v1TX3imxzxnC5yAIFWhsPNqI4ZpnTtfQ
 YOOfH/G4q/zJVtSwhKW6Qj13NIrjlXkE66JkMhe+ohS+zO1BhKCGJmVGiPi5frzrlddtyf
 N+bhHozfNOk8LLTX2me5003G47ACQIE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-528-npwjEcVqPViO1-6aju6syA-1; Tue, 23 Aug 2022 07:37:58 -0400
X-MC-Unique: npwjEcVqPViO1-6aju6syA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 74A021C13941;
 Tue, 23 Aug 2022 11:37:58 +0000 (UTC)
Received: from localhost (unknown [10.40.195.42])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 19A0840C141D;
 Tue, 23 Aug 2022 11:37:57 +0000 (UTC)
Date: Tue, 23 Aug 2022 13:37:56 +0200
From: Victor Toso <victortoso@redhat.com>
To: Henri Verbeet <hverbeet@codeweavers.com>
Message-ID: <20220823113756.axw6n6nqbbqxierm@tapioca>
References: <20220823093952.19560-1-hverbeet@codeweavers.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="ntsvm2y7npq5qebt"
Content-Disposition: inline
In-Reply-To: <20220823093952.19560-1-hverbeet@codeweavers.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Subject: Re: [Spice-devel] [PATCH x11spice] Call xf86SetDesiredModes() in
 DUMMYScreenInit().
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


--ntsvm2y7npq5qebt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Aug 23, 2022 at 11:39:52AM +0200, Henri Verbeet wrote:
> Otherwise, we may end up with no mode (and thus no refresh rate) set if
> nothing else (like e.g. .xinitrc) sets a mode for us.
>
> Signed-off-by: Henri Verbeet <hverbeet@codeweavers.com>
> ---
>  spice-video-dummy/src/spicedummy_driver.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/spice-video-dummy/src/spicedummy_driver.c b/spice-video-dummy/src/spicedummy_driver.c
> index 8d8ba48..0ed7f8c 100644
> --- a/spice-video-dummy/src/spicedummy_driver.c
> +++ b/spice-video-dummy/src/spicedummy_driver.c
> @@ -632,6 +632,8 @@ DUMMYScreenInit(SCREEN_INIT_ARGS_DECL)
>
>      if (!xf86CrtcScreenInit(pScreen))
>          return FALSE;
> +    if (!xf86SetDesiredModes(pScrn))
> +        return FALSE;
>
>      xf86DPMSInit(pScreen, xf86DPMSSet, 0);

My knowledge in this area is quite limited but as far as I can
see, this change looks fine.

Cheers,
Victor

--ntsvm2y7npq5qebt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmMEvBQACgkQl9kSPeN6
SE9xIg//VU9OytlBJMJnhWIK/PTxGsAN1EZ3PtbjOK9/4vCy1x/T82wln94PeuVT
JINSz8+7OyhiVIsG5k1M6K0C3RA72JqUADR2cXudiyiT8sApV3dSlodZWvC+2oAE
7yMTEDwE1T1Ud884ANODGkwVScNy/4k5GutciWNObjeNf3/vZBvGRfzGKFvLNb1A
RgxSTZn7f0ioCNazKnDgPne3MezWm3NFvz4MjIF+GQxwcPUSnOPqDpqiyMLw3Qca
Dp9RypYVa0FS5kl48BuZ8K2V0KKgHnbLvlnb5GFEh2Jzh/QNXa8J+9McxbfA1AqP
ptsm2o4NZuaEsBzCMyNm1PswyzsH3qVAilhCX8iuaBHnZKD+uOoIcUI2HFkiAaLI
zRkyyaYdGvHYToDmUOkNeOn2/TRuvssjQHGyHB6wDmo7XIvyqSbxOAFiK7Z0lL0g
SnBlu3g61c2OI+CLUuAI3YIGVvZQcoFdvPnIoQKyVLHmYI7IZqg51JZTkfcpe02o
tipi9lmkEKba9GCdTtecBL25IW87D7vUc3pBjdGXEkDfjy7/aILJxn/+QMNFmq1I
6bessbSmTZuPyo7gHrXmWjwJ7MAcmBuRD2Qq78bgnY/BH0IE8EUlhuoUqJ3CfJHO
6/MaRhsGzNYpEO8XFoCq3uQs9TIXYhnYOKMN+4dQNEHsxG11z4U=
=z0c7
-----END PGP SIGNATURE-----

--ntsvm2y7npq5qebt--

