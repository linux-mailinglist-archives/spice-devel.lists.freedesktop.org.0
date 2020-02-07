Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C7F155A76
	for <lists+spice-devel@lfdr.de>; Fri,  7 Feb 2020 16:15:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 889546E093;
	Fri,  7 Feb 2020 15:15:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 169796FCAF;
 Fri,  7 Feb 2020 14:00:35 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 06:00:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,413,1574150400"; d="scan'208";a="345915846"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 07 Feb 2020 06:00:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Feb 2020 16:00:30 +0200
Date: Fri, 7 Feb 2020 16:00:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20200207140030.GY13686@intel.com>
References: <20200207084135.4524-1-tzimmermann@suse.de>
 <20200207084135.4524-3-tzimmermann@suse.de>
 <20200207133720.GZ43062@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207133720.GZ43062@phenom.ffwll.local>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Fri, 07 Feb 2020 15:15:04 +0000
Subject: Re: [Spice-devel] [PATCH 2/6] drm: Add drm_simple_encoder_{init,
 create}()
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
Cc: airlied@linux.ie, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, kraxel@redhat.com,
 Thomas Zimmermann <tzimmermann@suse.de>, alexander.deucher@amd.com,
 spice-devel@lists.freedesktop.org, sam@ravnborg.org,
 emil.velikov@collabora.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Fri, Feb 07, 2020 at 02:37:20PM +0100, Daniel Vetter wrote:
> On Fri, Feb 07, 2020 at 09:41:31AM +0100, Thomas Zimmermann wrote:
> > The simple-encoder helpers initialize an encoder with an empty
> > implementation. This covers the requirements of most of the existing
> > DRM drivers. A call to drm_simple_encoder_create() allocates and
> > initializes an encoder instance, a call to drm_simple_encoder_init()
> > initializes a pre-allocated instance.
> > =

> > Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> =

> This has quick a bit midlayer taste to it ... I think having this as a
> helper would be cleaner ...
> =

> The other bit is drm_encoder->possible_crtcs. If we do create a helper for
> these, lets at least try to make them not suck too badly :-) Otherwise I
> guess it would be time to officially document what exactly possible_crtcs
> =3D=3D 0 means from an uabi pov.

I had some improvements for this stuff. Just re-sent the remainder.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
