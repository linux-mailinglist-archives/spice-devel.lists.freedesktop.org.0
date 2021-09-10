Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 151CE406A18
	for <lists+spice-devel@lfdr.de>; Fri, 10 Sep 2021 12:23:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D05A6E9D8;
	Fri, 10 Sep 2021 10:23:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65CA96E9D8
 for <spice-devel@lists.freedesktop.org>; Fri, 10 Sep 2021 10:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631269396;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+ag4CGOUsvBkQgrmVQ+J7deGzzOZbOwnH45Z6Czhfps=;
 b=bsaj+rXsJjjJedmGScaEKxthEONcg0pDX6t7zz49YztvS0YZpv6RrBfOVZWPZMHO62jeeQ
 TZjuh/FCYy2v1DemgSw+bQ5Qe2vcI/acaC4k5I3g3U/Rth7R/lndf0i9vwSAGXyBGQz2YK
 GDMbSx1kvlaF58lSHXKScLP6orC271Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-288-A5OJ3mSuPaOfjX0BceaaxA-1; Fri, 10 Sep 2021 06:23:07 -0400
X-MC-Unique: A5OJ3mSuPaOfjX0BceaaxA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 013A21006AA2;
 Fri, 10 Sep 2021 10:23:07 +0000 (UTC)
Received: from redhat.com (unknown [10.39.194.181])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4EFCD5D9C6;
 Fri, 10 Sep 2021 10:23:06 +0000 (UTC)
Date: Fri, 10 Sep 2021 11:23:03 +0100
From: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
To: insodus@web.de
Cc: spice-devel@lists.freedesktop.org
Message-ID: <YTsyBxzvGJEz1N4k@redhat.com>
References: <trinity-697d35c4-6479-4924-a2e4-20506bff949c-1631200848204@3c-app-webde-bap22>
MIME-Version: 1.0
In-Reply-To: <trinity-697d35c4-6479-4924-a2e4-20506bff949c-1631200848204@3c-app-webde-bap22>
User-Agent: Mutt/2.0.7 (2021-05-04)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=berrange@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: Re: [Spice-devel] Has SPICE devlopment stopped?
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
Reply-To: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Thu, Sep 09, 2021 at 05:20:48PM +0200, insodus@web.de wrote:
>    Hi,
>     
>    as stated in [1] SPICE has become deprecated in RHEL. Because it seems
>    that SPICE was mainly devloped by Red Hat I wanted to ask if this means
>    that the development has stopped.

The link you referenced is the only official Red Hat statement.
Unofficially my suggestion is to interpret it as follows...

It is not likely that Red Hat engineers will invest any more time in
developing SPICE features as part of their official responsibilities.

Some limited bug fix work may continue as needed, for as long as
there are non-EOL versions of RHEL that include SPICE.

One caveat is that the spice guest agent is still useful as QEMU
gained the ability to use the spice guest agent to enable clipboard
support with its VNC server.

Finally note that the official statement in that link referenced
only refers to RHEL. SPICE is still shipped in Fedora and there
are not any plans to remove it there. Fedora policy is to enable
all available QEMU features that can be successfully built & used.

Overall I would say that any future feature development will be
dependant on resources invested from other interested SPICE
community members. 

With regards,
Daniel
-- 
|: https://berrange.com      -o-    https://www.flickr.com/photos/dberrange :|
|: https://libvirt.org         -o-            https://fstop138.berrange.com :|
|: https://entangle-photo.org    -o-    https://www.instagram.com/dberrange :|

