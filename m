Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B34DB27BDFA
	for <lists+spice-devel@lfdr.de>; Tue, 29 Sep 2020 09:28:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30F986E454;
	Tue, 29 Sep 2020 07:28:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8A0F6E454
 for <spice-devel@lists.freedesktop.org>; Tue, 29 Sep 2020 07:28:06 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601364485;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uEK8I/FGG3j53B+4b6RsOT7X9rvIJgBnm8LqJyACgd8=;
 b=LZNAzZ0jgcpJhtdq1zBKvPaxDp19SBgppktppmuu81r3DNoGvNVdLJmFZRzyGYpQI+X2sQ
 x3jS4Wga8tc0nBMnjyqi2uskh47Sxbqec/SpOFJro1vk/428tMbJErFG9CIaI9eVl9JOYB
 u+gpn7R6gpZdct7vV1/KZs1Ehe7zU0o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-353-q5ReYIHIMZWWCgnLmzWyXg-1; Tue, 29 Sep 2020 03:27:58 -0400
X-MC-Unique: q5ReYIHIMZWWCgnLmzWyXg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F155B1084D64;
 Tue, 29 Sep 2020 07:27:57 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-112-56.ams2.redhat.com
 [10.36.112.56])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8A21F3782;
 Tue, 29 Sep 2020 07:27:51 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 6F28B1750A; Tue, 29 Sep 2020 09:27:50 +0200 (CEST)
Date: Tue, 29 Sep 2020 09:27:50 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: marcandre.lureau@redhat.com
Message-ID: <20200929072750.uvddsvf325hkvpb7@sirius.home.kraxel.org>
References: <20200927145751.365446-1-marcandre.lureau@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20200927145751.365446-1-marcandre.lureau@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kraxel@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Spice-devel] [PATCH v3 0/6] Add physical display dimensions to
 spice/virtio-gpu
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
Cc: spice-devel@lists.freedesktop.org, qemu-devel@nongnu.org,
 "Michael S. Tsirkin" <mst@redhat.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Sun, Sep 27, 2020 at 06:57:45PM +0400, marcandre.lureau@redhat.com wrote:
> From: Marc-Andr=C3=A9 Lureau <marcandre.lureau@redhat.com>
> =

> Hi,
> =

> This series improves the support for HiDPI displays with Spice.
> The related spice series have already been merged.
> =

> v3:
>  - simplify the handling of Spice monitor configuration (Frediano)
> v2:
>  - add a patch to "spice: remove the single monitor config logic" (Gerd)

Series queued up now.

thanks,
  Gerd

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
