Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC9E7D36FA
	for <lists+spice-devel@lfdr.de>; Mon, 23 Oct 2023 14:38:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4590E10E1DF;
	Mon, 23 Oct 2023 12:38:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-4327.protonmail.ch (mail-4327.protonmail.ch [185.70.43.27])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DACB10E16D
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Oct 2023 07:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail2; t=1698047737; x=1698306937;
 bh=/hf6kNPKPV2koPQDhQqJVQiBA3snlHoEuKHASPZI8vc=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=e+UKbEOHMcblXJPOvvUgblX7xWJJTswc8PfoFfkJwWVnQNcbbwbXuaKKVp2+O7Zkf
 GJXAxyOZVkRWU+0UR5cyeZG3Iio8hlqsri8RsvzXMCSEuKHUcT76Ca0uNN+sNu/gLn
 v/M3uR7RSVEvEf3Ystw3/0NpAkRFwHzj8iNBoVzPfoKzuQx2zd6QJxHM6yMx4tVev0
 fm9g6ZLzmw/sKQhA+DC3FYfJfVd1IB/Ansj6erAAgOQS4285tY2d6SkDe7i75IL2zr
 dvjyJKkuHJhvLWzgMakGcMsBr4C2PCeA6S1n6zLX53Hudj6RTNaUe0VqDP2u/G+iZS
 N283kubt7sIkA==
Date: Mon, 23 Oct 2023 07:55:31 +0000
To: Albert Esteve <aesteve@redhat.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <-ngmaSLF2S5emYjTBWcLRNzvJRoe_eZ-Nv9HQhE6ZLuK8nIE2ZbfVh2G2O2Z41GoIFIRpts0ukEtFXUx8pNAptmrZBhlXxaQGykx_qCZ_9k=@emersion.fr>
In-Reply-To: <20231023074613.41327-1-aesteve@redhat.com>
References: <20231023074613.41327-1-aesteve@redhat.com>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 23 Oct 2023 12:37:37 +0000
Subject: Re: [Spice-devel] [PATCH v6 0/9] Fix cursor planes with virtualized
 drivers
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
Cc: linux-doc@vger.kernel.org, qemu-devel@nongnu.org, banackm@vmware.com,
 virtualization@lists.linux-foundation.org, Gerd Hoffmann <kraxel@redhat.com>,
 mombasawalam@vmware.com, iforbes@vmware.com, Jonathan Corbet <corbet@lwn.net>,
 javierm@redhat.com,
 VMware Graphics Reviewers <linux-graphics-maintainer@vmware.com>,
 David Airlie <airlied@redhat.com>, Chia-I Wu <olvaffe@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 ppaalanen@gmail.com, dri-devel@lists.freedesktop.org,
 spice-devel@lists.freedesktop.org,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Matt Roper <matthew.d.roper@intel.com>, linux-kernel@vger.kernel.org,
 krastevm@vmware.com, Rob Clark <robdclark@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, zackr@vmware.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Monday, October 23rd, 2023 at 09:46, Albert Esteve <aesteve@redhat.com> =
wrote:

> Link to the IGT test covering this patch (already merged):
> https://lists.freedesktop.org/archives/igt-dev/2023-July/058427.html

Hmm. IGT should not be merged before the kernel, because as long as the
kernel is not merged there might be some uAPI changes.

> Mutter patch:
> https://lists.freedesktop.org/archives/igt-dev/2023-July/058427.html

Seems like this link is same as IGT? Copy-pasta fail maybe?
