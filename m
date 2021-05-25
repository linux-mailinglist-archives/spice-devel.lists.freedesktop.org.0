Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F20ED38FE5C
	for <lists+spice-devel@lfdr.de>; Tue, 25 May 2021 12:02:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36AA46E9E0;
	Tue, 25 May 2021 10:02:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7E856E9E0
 for <spice-devel@lists.freedesktop.org>; Tue, 25 May 2021 10:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621936958;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4hBqJg9ProNG8I3SFJ8heDlRG2WLn8Ha4BfSW5/PCvA=;
 b=VrwuWUQPC6jFJwMRXfLvByFOyWlZJbLI+ko65NCp2k1gsjThl0U2PNfgeVAIuIO9xGRZra
 YsLj8Dk7OFJ0xfxBJ6q0gwmwyhK6I9rhWCetJJixuP8L/4gbFE+/y2pKu1L7i4+CnC2Lpy
 9tmWRrzPToJ/utxhUSubawx3mePjJ20=
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com
 [209.85.216.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-266-MknbFYX1PuqgBaCZp19aGg-1; Tue, 25 May 2021 06:02:35 -0400
X-MC-Unique: MknbFYX1PuqgBaCZp19aGg-1
Received: by mail-pj1-f70.google.com with SMTP id
 f15-20020a17090aa78fb029015c411f061bso15881931pjq.4
 for <spice-devel@lists.freedesktop.org>; Tue, 25 May 2021 03:02:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4hBqJg9ProNG8I3SFJ8heDlRG2WLn8Ha4BfSW5/PCvA=;
 b=oPS2jKur9H0P44vwsQp8RpMS8Zm9aUjvnVfVn4Fp6ATMxUnaNIaOi52m5pkipNDmiW
 u+o7i4vbMwHaiouELPqS82MX8UHuQNMAS6/040flDps/5y3qaH+lBh4b2V8HWD6uIlsP
 lk6LCHU6vHmHC3dJ10ON/qpDxoXP3BDDmydMpkUa5qX1/vecIEURhKCv37L2YE2EhfTp
 5TPnOmyNhJL3aOe+xhwaYZgtuYpGCBX2TLSsYgkcl+Y4KGF57bZjfIjG4ovuTLm20KB/
 z1WO7PUAdstj84vRnf8QgVKh8xRzZzogTJR9eQe502S7UFlJdnZp2K7oqIlxx3f9G6RE
 OSGA==
X-Gm-Message-State: AOAM533YTCbUnpUf0IAl47Q7EuoQSsaeEzj0+nJk38uFeNy+ZWiXPWG9
 WuAfrdnh2Z9BzKM1jsNfuJyNOj/nH4bvL8687HE9aE8i/RwAiUf95RutQzPL7XI1fZfNSGvtWzA
 jL592tm65hy3rjK4N0QovNravQdZGVjaBZZ5TUP3/nL0eN6A=
X-Received: by 2002:a17:90a:fe8b:: with SMTP id
 co11mr998924pjb.124.1621936954207; 
 Tue, 25 May 2021 03:02:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzDrr41n9bCSGXPxrlYAP/soMF3sylxXSQiI5IM82G/6q4r08ZbuBdJbY0Vo27uNCzpRlRZCh4k/2yax2gxsNo=
X-Received: by 2002:a17:90a:fe8b:: with SMTP id
 co11mr998898pjb.124.1621936953983; 
 Tue, 25 May 2021 03:02:33 -0700 (PDT)
MIME-Version: 1.0
References: <ae112e79-ad32-fc00-31d3-ff489d8e5586@gmail.com>
In-Reply-To: <ae112e79-ad32-fc00-31d3-ff489d8e5586@gmail.com>
From: Victor Toso <victortoso@redhat.com>
Date: Tue, 25 May 2021 12:02:22 +0200
Message-ID: <CAH9eCV8CmU6gRM8Nwi4zCRZXVZykL9kGCPrGhb7O1siKa8M3rw@mail.gmail.com>
To: Siva Prasad <sivaprasad.ucc@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=vtosodec@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Inquiry
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

Hi,

On Sun, May 16, 2021 at 9:29 PM Siva Prasad <sivaprasad.ucc@gmail.com> wrote:
> I have installed gnome boxes in ubuntu 20.04 and have been accessing
> windows 10 from there. I tried install spice tools but still not able to
> share folders. Any help is much appreciated.

On the guest, you still need to install spice-webdavd [0]. I think
gnome-boxes already does the right configuration on the host side but
the details are hosted in Folder Sharing in the manual here [1].

[0] https://gitlab.gnome.org/GNOME/phodav/-/releases/v2.4
[1] https://www.spice-space.org/spice-user-manual.html

Cheers,
Victor

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
