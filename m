Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7ACF16FD17
	for <lists+spice-devel@lfdr.de>; Wed, 26 Feb 2020 12:15:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E192C6E26F;
	Wed, 26 Feb 2020 11:15:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 689656E26F
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Feb 2020 11:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582715752;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qNsqv8ZK9i8Bza62QkOqGh/2r0aFUMgc/TDkWlWKjQg=;
 b=WH6hTmDjnDNHzigopaZmAsQ05+cnN/9y8OOTIBrzoLTvYft6ms1e2JVrvnVgUx1KmEfsFJ
 yJT3WaxIe/KL/Eytp1eOtTdij0/I1fh50VohSCmHopXz0QsL6DoFpDcy4AEWytCKBp8Dkn
 JipayAihehcZYlmVsnKIWTD24pJHqXs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-52-kj6xflavMvmLZTsU33AWpw-1; Wed, 26 Feb 2020 06:15:50 -0500
X-MC-Unique: kj6xflavMvmLZTsU33AWpw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7693C805735;
 Wed, 26 Feb 2020 11:15:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C6E8100164D;
 Wed, 26 Feb 2020 11:15:49 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 61CC784461;
 Wed, 26 Feb 2020 11:15:49 +0000 (UTC)
Date: Wed, 26 Feb 2020 06:15:48 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: ucontacti ss <ucontacti2012@gmail.com>
Message-ID: <420182716.14553035.1582715748598.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAORX2Yfi7RMZvpJEz9A4xOWTMZzne-xa6OqRHy0uMFHSHsFm1Q@mail.gmail.com>
References: <CAORX2Yfi7RMZvpJEz9A4xOWTMZzne-xa6OqRHy0uMFHSHsFm1Q@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.14, 10.4.195.26]
Thread-Topic: Spice Display Channel Capabilities
Thread-Index: tqujb2noxhtQL26Tii7d+HCWR4HfBg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Spice Display Channel Capabilities
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

> Dear developers.

> I have been reproducing spice protocol, (Not using spice-gtk actually). So
> far I have seen some image types and most of the stream types but I was not
> able to use some capabilities.
> First, how to enable Glyph string,
> Second, I only get one rendering message (draw_copy). I want to use full
> capability of Display Channel since it is the bottle neck.

The messages you receive depends on the guest stack. That is the OS version
and driver type/version. Also you have to use QXL as card type.
Can you provide more details on Guest OS version and drivers installed?

> Las, for image type, how to enable JPEG, JPEG_Alpha, LZ_PLT. (The image type
> request message is a subset of all image types)

All these are enabled without capabilities, that is they are assumed to
be supported by the server/client. The selection is done by spice-server
combining settings (like from Qemu) and bandwidth detection (for JPEG).

> Sorry for the long email.

NP

> Best wishes,
> Saleh Daghigh

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
