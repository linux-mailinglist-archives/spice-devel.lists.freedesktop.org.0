Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28295A61D5
	for <lists+spice-devel@lfdr.de>; Tue,  3 Sep 2019 08:52:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6496C895F5;
	Tue,  3 Sep 2019 06:52:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C852895F5;
 Tue,  3 Sep 2019 06:52:34 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B2D34AD44;
 Tue,  3 Sep 2019 06:52:32 +0000 (UTC)
To: Gerd Hoffmann <kraxel@redhat.com>
References: <20190902124126.7700-1-kraxel@redhat.com>
 <20190902124126.7700-5-kraxel@redhat.com>
 <0a9d97c7-26a4-bee6-e9a2-120abbd5277c@suse.de>
 <20190903062417.a4gpgaollk5jruas@sirius.home.kraxel.org>
From: Thomas Zimmermann <tzimmermann@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNKFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmNvbT7CwJQEEwEIAD4W
 IQRyF/usjOnPY0ShaOVoDcEdUwt6IwUCWznTtgIbAwUJA8JnAAULCQgHAgYVCgkICwIEFgID
 AQIeAQIXgAAKCRBoDcEdUwt6I7D7CACBK42XW+7mCiK8ioXMEy1NzGbXC51RzGea8N83oEJS
 1KVUtQxrkDxgrW/WLSl/TfqHFsJpdEFOv1XubWbleun3uKPy0e5vZCd5UjZPkeNjnqfCYTDy
 hVVsdOuFbtWDppJyJrThLqr9AgSFmoCNNUt1SVpYEEOLNE6C32BhlnSq21VLC+YXTgO/ZHTa
 YXkq54hHj63jwrcjkBSCkXLh37kHeqnl++GHpN+3R+o3w2OpwHAlvVjdKPT27v1tVkiydsFG
 65Vd0n3m/ft+IOrGgxQM1C20uqKvsZGB4r3OGR50ekAybO7sjEJJ1Obl4ge/6RRqcvKz4LMb
 tGs85D6tPIeFzsBNBFs50uABCADGJj+DP1fk+UWOWrf4O61HTbC4Vr9QD2K4fUUHnzg2B6zU
 R1BPXqLGG0+lzK8kfYU/F5RjmEcClsIkAaFkg4kzKP14tvY1J5+AV3yNqcdg018HNtiyrSwI
 E0Yz/qm1Ot2NMZ0DdvVBg22IMsiudQ1tx9CH9mtyTbIXgACvl3PW2o9CxiHPE/bohFhwZwh/
 kXYYAE51lhinQ3oFEeQZA3w4OTvxSEspiQR8dg8qJJb+YOAc5IKk6sJmmM7JfFMWSr22satM
 23oQ3WvJb4RV6HTRTAIEyyZS7g2DhiytgMG60t0qdABG5KXSQW+OKlZRpuWwKWaLh3if/p/u
 69dvpanbABEBAAHCwHwEGAEIACYWIQRyF/usjOnPY0ShaOVoDcEdUwt6IwUCWznS4AIbDAUJ
 A8JnAAAKCRBoDcEdUwt6I6X3CACJ8D+TpXBCqJE5xwog08+Dp8uBpx0T9n1wE0GQisZruACW
 NofYn8PTX9k4wmegDLwt7YQDdKxQ4+eTfZeLNQqWg6OCftH5Kx7sjWnJ09tOgniVdROzWJ7c
 VJ/i0okazncsJ+nq48UYvRGE1Swh3A4QRIyphWX4OADOBmTFl9ZYNPnh23eaC9WrNvFr7yP7
 iGjMlfEW8l6Lda//EC5VpXVNza0xeae0zFNst2R9pn+bLkihwDLWxOIyifGRxTqNxoS4I1aw
 VhxPSVztPMSpIA/sOr/N/p6JrBLn+gui2K6mP7bGb8hF+szfArYqz3T1rv1VzUWAJf5Wre5U
 iNx9uqqx
Message-ID: <61b2c31a-6d0a-c42d-a456-ea13b17c9aec@suse.de>
Date: Tue, 3 Sep 2019 08:52:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190903062417.a4gpgaollk5jruas@sirius.home.kraxel.org>
Subject: Re: [Spice-devel] [PATCH 4/5] drm/qxl: use drm_gem_object_funcs
 callbacks
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
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>
Content-Type: multipart/mixed; boundary="===============1685790656=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1685790656==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="sTjO2c2Xh1w2ytuKOwUgkevjL9602HtnZ"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--sTjO2c2Xh1w2ytuKOwUgkevjL9602HtnZ
Content-Type: multipart/mixed; boundary="iawTWFCrY3WzO9gNZyPaM2AqQcrXu2JUN";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Gerd Hoffmann <kraxel@redhat.com>
Cc: David Airlie <airlied@linux.ie>, open list
 <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>, Dave Airlie
 <airlied@redhat.com>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <spice-devel@lists.freedesktop.org>
Message-ID: <61b2c31a-6d0a-c42d-a456-ea13b17c9aec@suse.de>
Subject: Re: [PATCH 4/5] drm/qxl: use drm_gem_object_funcs callbacks
References: <20190902124126.7700-1-kraxel@redhat.com>
 <20190902124126.7700-5-kraxel@redhat.com>
 <0a9d97c7-26a4-bee6-e9a2-120abbd5277c@suse.de>
 <20190903062417.a4gpgaollk5jruas@sirius.home.kraxel.org>
In-Reply-To: <20190903062417.a4gpgaollk5jruas@sirius.home.kraxel.org>

--iawTWFCrY3WzO9gNZyPaM2AqQcrXu2JUN
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi

Am 03.09.19 um 08:24 schrieb Gerd Hoffmann:
> On Mon, Sep 02, 2019 at 04:34:49PM +0200, Thomas Zimmermann wrote:
>> This patch seems unrelated.
>=20
> Well, patch 5/5 depends on it because it hooks the
> drm_gem_ttm_print_info helper into the new
> qxl_object_funcs added by this patch.

Acked-by: Thomas Zimmermann <tzimmermann@suse.de>


>=20
>> Am 02.09.19 um 14:41 schrieb Gerd Hoffmann:
>>> Switch qxl to use drm_gem_object_funcs callbacks
>>> instead of drm_driver callbacks.
>>>
>>> Signed-off-by: Gerd Hoffmann <kraxel@redhat.com>
>>> ---
>>>  drivers/gpu/drm/qxl/qxl_drv.c    |  8 --------
>>>  drivers/gpu/drm/qxl/qxl_object.c | 12 ++++++++++++
>>>  2 files changed, 12 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/qxl/qxl_drv.c b/drivers/gpu/drm/qxl/qxl_=
drv.c
>>> index 2b726a51a302..996d428fa7e6 100644
>>> --- a/drivers/gpu/drm/qxl/qxl_drv.c
>>> +++ b/drivers/gpu/drm/qxl/qxl_drv.c
>>> @@ -258,16 +258,8 @@ static struct drm_driver qxl_driver =3D {
>>>  #endif
>>>  	.prime_handle_to_fd =3D drm_gem_prime_handle_to_fd,
>>>  	.prime_fd_to_handle =3D drm_gem_prime_fd_to_handle,
>>> -	.gem_prime_pin =3D qxl_gem_prime_pin,
>>> -	.gem_prime_unpin =3D qxl_gem_prime_unpin,
>>> -	.gem_prime_get_sg_table =3D qxl_gem_prime_get_sg_table,
>>>  	.gem_prime_import_sg_table =3D qxl_gem_prime_import_sg_table,
>>> -	.gem_prime_vmap =3D qxl_gem_prime_vmap,
>>> -	.gem_prime_vunmap =3D qxl_gem_prime_vunmap,
>>>  	.gem_prime_mmap =3D qxl_gem_prime_mmap,
>>> -	.gem_free_object_unlocked =3D qxl_gem_object_free,
>>> -	.gem_open_object =3D qxl_gem_object_open,
>>> -	.gem_close_object =3D qxl_gem_object_close,
>>>  	.fops =3D &qxl_fops,
>>>  	.ioctls =3D qxl_ioctls,
>>>  	.irq_handler =3D qxl_irq_handler,
>>> diff --git a/drivers/gpu/drm/qxl/qxl_object.c b/drivers/gpu/drm/qxl/q=
xl_object.c
>>> index 548dfe6f3b26..29aab7b14513 100644
>>> --- a/drivers/gpu/drm/qxl/qxl_object.c
>>> +++ b/drivers/gpu/drm/qxl/qxl_object.c
>>> @@ -77,6 +77,17 @@ void qxl_ttm_placement_from_domain(struct qxl_bo *=
qbo, u32 domain, bool pinned)
>>>  	}
>>>  }
>>> =20
>>> +static const struct drm_gem_object_funcs qxl_object_funcs =3D {
>>> +	.free =3D qxl_gem_object_free,
>>> +	.open =3D qxl_gem_object_open,
>>> +	.close =3D qxl_gem_object_close,
>>> +	.pin =3D qxl_gem_prime_pin,
>>> +	.unpin =3D qxl_gem_prime_unpin,
>>> +	.get_sg_table =3D qxl_gem_prime_get_sg_table,
>>> +	.vmap =3D qxl_gem_prime_vmap,
>>> +	.vunmap =3D qxl_gem_prime_vunmap,
>>> +};
>>> +
>>>  int qxl_bo_create(struct qxl_device *qdev,
>>>  		  unsigned long size, bool kernel, bool pinned, u32 domain,
>>>  		  struct qxl_surface *surf,
>>> @@ -100,6 +111,7 @@ int qxl_bo_create(struct qxl_device *qdev,
>>>  		kfree(bo);
>>>  		return r;
>>>  	}
>>> +	bo->tbo.base.funcs =3D &qxl_object_funcs;
>>>  	bo->type =3D domain;
>>>  	bo->pin_count =3D pinned ? 1 : 0;
>>>  	bo->surface_id =3D 0;
>>>
>>
>> --=20
>> Thomas Zimmermann
>> Graphics Driver Developer
>> SUSE Linux GmbH, Maxfeldstrasse 5, 90409 Nuernberg, Germany
>> GF: Felix Imend=C3=B6rffer, Mary Higgins, Sri Rasiah
>> HRB 21284 (AG N=C3=BCrnberg)
>>
>=20
>=20
>=20
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Linux GmbH, Maxfeldstrasse 5, 90409 Nuernberg, Germany
GF: Felix Imend=C3=B6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG N=C3=BCrnberg)


--iawTWFCrY3WzO9gNZyPaM2AqQcrXu2JUN--

--sTjO2c2Xh1w2ytuKOwUgkevjL9602HtnZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl1uDa8ACgkQaA3BHVML
eiPQoQf/Wl/J5K/3RKwGAJERCr8fOCYgY7SYWZoF4BJknAUMFttOVdQ/V3lvJIrR
4Tr1l5MNfKwJGdOoQuSBvJU+WD3Nq/xQHLvc+2ZqHF3FYASr1EBp88Kj8CHLMdnP
tsLXP3aE7YQ0eo2XRJnc8lyoOKf0gCLox/wAs+PPQQ8DjGkvg9VoF+a4WaxoTUg2
s5zvfkuTnQRiSY0AGo9uHl3usBtDb/wE0lM4ZJBlciorkd9dU0vAM4y2uk7QbHJS
s5gaYaD0eyyd662jyADWR0y/ii2LSZh1Yjb3SqrbCWHkY6HAnW41iregzvydB3fP
ihmam6WVMv6BKWwDv0OMpnhO9SFktg==
=BJVE
-----END PGP SIGNATURE-----

--sTjO2c2Xh1w2ytuKOwUgkevjL9602HtnZ--

--===============1685790656==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1685790656==--
