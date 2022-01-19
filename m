Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C150A4938B4
	for <lists+spice-devel@lfdr.de>; Wed, 19 Jan 2022 11:40:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A28910E34B;
	Wed, 19 Jan 2022 10:40:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D33589C5E
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jan 2022 08:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642579480;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zM6AdG5lC54F53Wp76L+egRq4myFkvGU/BJFkfAbNVU=;
 b=SBM99NspjnWJZQX797oV30BZ1MyvBtPdfQK99v9Y/6o80plvkfnCVFmdSr/0sQfT3B3lx8
 ImkUiU0kKJurbQf2dilpCkzcLSQEjbJCjQ7sDBsjzM1vO3hMrV/l42c7xvTQlbeloU1NAj
 Ykusw+dWWtceN/CK5gNrKIOKXHh2ezE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-590-03XSS50ZMO6pDFPMzWOIkg-1; Wed, 19 Jan 2022 03:04:37 -0500
X-MC-Unique: 03XSS50ZMO6pDFPMzWOIkg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 32D451006AA7;
 Wed, 19 Jan 2022 08:04:36 +0000 (UTC)
Received: from sirius.home.kraxel.org (unknown [10.39.192.49])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C7D05E4AC;
 Wed, 19 Jan 2022 08:04:15 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 437FA18000AB; Wed, 19 Jan 2022 09:04:13 +0100 (CET)
Date: Wed, 19 Jan 2022 09:04:13 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: zhenwei pi <pizhenwei@bytedance.com>
Message-ID: <20220119080413.xxwuf3x55jywm4gr@sirius.home.kraxel.org>
References: <9cc67242-9c34-6b2a-d200-abf9394305eb@bytedance.com>
 <20220114125155.umjm6mykfnnh6pmr@sirius.home.kraxel.org>
 <93d761a8-5d1e-055f-560b-bd123ba2fdb4@bytedance.com>
 <20220117062949.dz6c5beqxd3m2bq3@sirius.home.kraxel.org>
 <63371ce2-1236-a2a4-022a-629034f2d772@bytedance.com>
MIME-Version: 1.0
In-Reply-To: <63371ce2-1236-a2a4-022a-629034f2d772@bytedance.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kraxel@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Approved-At: Wed, 19 Jan 2022 10:40:00 +0000
Subject: Re: [Spice-devel] Discuss about camera redirection in SPICE
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
Cc: cfergeau@redhat.com, lixiang.byte@bytedance.com,
 spice-devel@lists.freedesktop.org, fziglio@redhat.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

  Hi,

> Actually, during I developed the QEMU camera subsystem and UVC emulation, I
> referred to both UVC and v4l2.
> 
> Detailed type definition and function declaration in include/camera/camera.h
> of this patch:
> https://patchwork.kernel.org/project/qemu-devel/patch/20211227142734.691900-2-pizhenwei@bytedance.com/
> 
> I suppose the API may looks like this(of cause, detailed implementation
> needs take some ideas from audio). Could you please take a look at it?

Looks sane from a quick glance.

take care,
  Gerd

