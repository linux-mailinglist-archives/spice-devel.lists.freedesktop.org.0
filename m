Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE4A70BF6F
	for <lists+spice-devel@lfdr.de>; Mon, 22 May 2023 15:14:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCB2010E325;
	Mon, 22 May 2023 13:14:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2383010E322
 for <spice-devel@lists.freedesktop.org>; Mon, 22 May 2023 13:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1684761259;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fJa+GKU9edCanEPVCfWeFwI5Lsvvl9efoskVffi2Y6Y=;
 b=IXuqPBIdGVxFLRFbhGM8M9ceD9irbeQHeMxydY/eHyul4IAci6ARba4HFBQJzzcNwn+dQF
 itN3WYhrd0YviPRKj2qanK6vRSZFkxo1FQbnowslhQBMd1VixRZbBS1C/8Hf4d4tehdWhU
 0hW5cYKTT4nOZvDTT6V6woHqZ7efHZ0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-671-DQ9PCLdCNdyTrKjd0AyNjA-1; Mon, 22 May 2023 09:14:14 -0400
X-MC-Unique: DQ9PCLdCNdyTrKjd0AyNjA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CAB7E3C11A24;
 Mon, 22 May 2023 13:14:12 +0000 (UTC)
Received: from sirius.home.kraxel.org (unknown [10.39.192.139])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 53260401026;
 Mon, 22 May 2023 13:14:12 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id D7FEB1800606; Mon, 22 May 2023 15:14:10 +0200 (CEST)
Date: Mon, 22 May 2023 15:14:10 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <vng4tcbkdieuvlmiu36drat5t3lwzufthylcgv3qzfrodphhq3@sjxcuan5q6h6>
References: <20230522105049.1467313-1-schnelle@linux.ibm.com>
 <20230522105049.1467313-10-schnelle@linux.ibm.com>
 <2043cea3-7553-ee9d-4aaa-6f1d22ac4d87@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2043cea3-7553-ee9d-4aaa-6f1d22ac4d87@suse.de>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
Subject: Re: [Spice-devel] [PATCH v5 09/44] drm: handle HAS_IOPORT
 dependencies
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, linux-pci@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, Dave Airlie <airlied@redhat.com>,
 linux-arch@vger.kernel.org, Geert Uytterhoeven <geert@linux-m68k.org>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Alan Stern <stern@rowland.harvard.edu>, Albert Ou <aou@eecs.berkeley.edu>,
 Arnd Bergmann <arnd@arndb.de>, Niklas Schnelle <schnelle@linux.ibm.com>,
 spice-devel@lists.freedesktop.org, Bjorn Helgaas <bhelgaas@google.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Arnd Bergmann <arnd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Daniel Vetter <daniel@ffwll.ch>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

  Hi,

> > There is also a direct and hard coded use in cirrus.c which according to
> > the comment is only necessary during resume.  Let's just skip this as
> > for example s390 which doesn't have I/O port support also doesen't
> > support suspend/resume.
> 
> I think we should consider making cirrus depend on HAS_IOPORT. The driver is
> only for qemu's cirrus emulation, which IIRC can only be enabled for i586.

Agree.  cirrus is x86 only (both i386 / x86_64 though).  Just require
HAS_IOPORT and be done with it.

> And it has all been deprecated long ago.

The fact that cirrus used to be the qemu default for many years is
pretty much the only reason it is still somewhat relevant today ...

take care,
  Gerd

