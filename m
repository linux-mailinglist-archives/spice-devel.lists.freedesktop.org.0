Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4627C7616
	for <lists+spice-devel@lfdr.de>; Thu, 12 Oct 2023 20:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C890010E50D;
	Thu, 12 Oct 2023 18:43:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C932A10E50D
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Oct 2023 18:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1697136202;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1ZVOs7Qcu/zTb8ELUyOw3/bG+vkHco7bA8TvSxYxV2c=;
 b=XRBCK0n3aItJxJkuf1VRXhPzfvO8Sc2mPo0ri8Ft3m6KzNpzDphkq87c4tzHgz8+RYIn4y
 XHXveDIiVMRiqh/JvyQlrcnb4BBUvMUq1tBetO7pO14E6LHxG373WR815sQQ6AgDKbII5u
 /WTJDpEB9KlwfbQLSbQ5XRA79RWluYo=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-17-r76wC1YvN3-Sj3LYToMSFw-1; Thu, 12 Oct 2023 14:43:09 -0400
X-MC-Unique: r76wC1YvN3-Sj3LYToMSFw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B157A1C075A0;
 Thu, 12 Oct 2023 18:43:08 +0000 (UTC)
Received: from localhost (unknown [10.45.225.38])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4420040C6F79;
 Thu, 12 Oct 2023 18:43:08 +0000 (UTC)
Date: Thu, 12 Oct 2023 20:43:07 +0200
From: Victor Toso <victortoso@redhat.com>
To: =?utf-8?B?546L6Zuq5p2+?= <wangxuesonger@163.com>
Message-ID: <r5blmx6qzxdu42zsl7ks7qargwulhaqqajahamd5jq7f4bmlmi@woczmwr5oyir>
References: <7330fd29.4eeb.18b1ddd2d02.Coremail.wangxuesonger@163.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="hybgfc4ng6rixtxs"
Content-Disposition: inline
In-Reply-To: <7330fd29.4eeb.18b1ddd2d02.Coremail.wangxuesonger@163.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
Subject: Re: [Spice-devel] spice protocal connection issue
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


--hybgfc4ng6rixtxs
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 11, 2023 at 04:31:56PM +0800, =E7=8E=8B=E9=9B=AA=E6=9D=BE wrote:
> Hi:
> I have a question. Within the same local area network, I can
> freely access the virtual machine using Spice, but other
> machines often fail to connect.

This should be a matter of can or cannot. You either have access
to the host:port from where spice server is running, or you
don't.

> It takes dozens of attempts sometimes to successfully establish
> a connection. I'd like to know the reason behind this.

Me too. Do you run behind a proxy? Any other devices in between
that might be doing something with the network?

> Could it be due to a caching mechanism or some restrictions
> that limit other people's login access? Thank you.

Not really. If a user is logged in and a second one tries to log,
the second one gets access while the first one is disconnected.

I don't remember any settings that would change that behavior.

> Looking forward to your reply.

Cheers,
Victor

--hybgfc4ng6rixtxs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmUoPjoACgkQl9kSPeN6
SE/+8xAArAQoRuuloCWm+6e4FUZNtFE6LxY5px7/GIRVCveC4pGz2YklSbdBKJy3
1uVl3iVocBw1ePufd/we+JmJwEo9OFyN/gzbXa9WloJR0oNZEnRuOSbHdfQu3LiR
yy2yXSqQ2rPrjLcSOHlBgLvYoQOH8OBclQICUWHsyU9WyToHNRgyzWdtOkzEM+RC
YRzoY0tvHWvXGP7m7KFMaDwWkCCIxpRjQTPYHmhVEvi+m0SC2oummsdJB+hKw3Nc
315XkmxZsH7rVREKxw3nfF7rIW0D+tfHPBe4LqqL/TCrbcWvAAnFSxa+YOMngGlH
yEHwsElhQ8Vunr/ieVeEeEQb2Bl8CO0VmBs3nKVkwj9qEAjcUGd3XR9EOvXoxqj5
ji6AXhofl1OxleyEnvvPAtZcff87jKRDtcMP1kAz731UTxZOSUNEfBB3yNtSP2vp
J4spC3nfa6mvlofabmpd9LZKsS61VcLJqu8lMCF2vRlOrLcYSFCVA/K30NgJZR5/
JWGzZoTljtonW4qSE5GxIarmR2YATNr26KaJRE0+lT3UXOFgmJHQkxy1RAVAY5Jm
9hgCGdIYdE8EjmaHqk3pfYZ46G4vXdAF4n6ipRu7ixZ44Jp3njC6EaBxk6QZZEdo
4IAb6cNaKiqz/5ecR70iHK2QpOYKc4kkYRUCgnv71TOS4I9iJL8=
=vQLu
-----END PGP SIGNATURE-----

--hybgfc4ng6rixtxs--

