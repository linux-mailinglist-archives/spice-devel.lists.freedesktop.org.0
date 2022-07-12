Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EC65713AA
	for <lists+spice-devel@lfdr.de>; Tue, 12 Jul 2022 09:58:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BB3A8B401;
	Tue, 12 Jul 2022 07:58:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3A0A9116B
 for <spice-devel@lists.freedesktop.org>; Tue, 12 Jul 2022 07:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1657612705;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6y5QO8QLMxjrAPHgVqEqjiyLqZrGBzA2B37SGd8Ms8s=;
 b=Xy4FPvisxKEC0DnY+pbHICbQpvAo1HWHs4rEOWvgz5N5Vr6EWRUjVbKWtvFkdJkUcOOvXc
 wk1NGU715B3kjGGjwSs6TVCnpD+HsTERUzij6Aw0tf03gUlR9kEQ/IlQPm6cLJSoqbqlgP
 TtlLo3QAVgE3IF3lR0YxSu9UHCOU/cE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-10-Wc8yF6l3NPGMouKmjDudWw-1; Tue, 12 Jul 2022 03:58:22 -0400
X-MC-Unique: Wc8yF6l3NPGMouKmjDudWw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 322F4280F2A2;
 Tue, 12 Jul 2022 07:58:22 +0000 (UTC)
Received: from sirius.home.kraxel.org (unknown [10.39.192.39])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id F0F13492C3B;
 Tue, 12 Jul 2022 07:58:21 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 6C50118000A9; Tue, 12 Jul 2022 09:58:20 +0200 (CEST)
Date: Tue, 12 Jul 2022 09:58:20 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: Zack Rusin <zackr@vmware.com>
Message-ID: <20220712075820.fpouky7uovabujvt@sirius.home.kraxel.org>
References: <20220712033246.1148476-1-zack@kde.org>
 <20220712033246.1148476-5-zack@kde.org>
MIME-Version: 1.0
In-Reply-To: <20220712033246.1148476-5-zack@kde.org>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kraxel@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: Re: [Spice-devel] [PATCH v2 4/8] drm/qxl: Use the hotspot
 properties from cursor planes
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
Cc: dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 krastevm@vmware.com, ppaalanen@gmail.com, Dave Airlie <airlied@redhat.com>,
 spice-devel@lists.freedesktop.org, mombasawalam@vmware.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Mon, Jul 11, 2022 at 11:32:42PM -0400, Zack Rusin wrote:
> From: Zack Rusin <zackr@vmware.com>
> 
> Atomic modesetting got support for mouse hotspots via the hotspot
> properties. Port the legacy kms hotspot handling to the new properties
> on cursor planes.
> 
> Signed-off-by: Zack Rusin <zackr@vmware.com>
> Cc: Dave Airlie <airlied@redhat.com>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: virtualization@lists.linux-foundation.org
> Cc: spice-devel@lists.freedesktop.org

Reviewed-by: Gerd Hoffmann <kraxel@redhat.com>

