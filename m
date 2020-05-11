Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7681CD643
	for <lists+spice-devel@lfdr.de>; Mon, 11 May 2020 12:16:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D59FB89C8D;
	Mon, 11 May 2020 10:16:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64D8289C8D
 for <spice-devel@lists.freedesktop.org>; Mon, 11 May 2020 10:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589192200;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=IU2FqNQn1S/9xHB6Y04VqRgFvG3C2Qv0YCH0vFjriR8=;
 b=ig/AcnhZfRDvjH6os6f038TOO3pGayR8+nqnOA6n5E4DATfHUu2Q0WpoXgMco5nQW6cG+M
 Nfw9gqfsF/J41vfhZTYuBPM41sy0BadZ8vc2SPFWRWa4ZisQIOkbbEqA9FBNIHCRMXpTwz
 eUn//GKQpN5GfoiFfwsq12GJ+PfoHMA=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-493-6ZOW_njNPXq4HOwEvgluHw-1; Mon, 11 May 2020 06:16:36 -0400
X-MC-Unique: 6ZOW_njNPXq4HOwEvgluHw-1
Received: by mail-io1-f71.google.com with SMTP id 141so516602iou.4
 for <spice-devel@lists.freedesktop.org>; Mon, 11 May 2020 03:16:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=IU2FqNQn1S/9xHB6Y04VqRgFvG3C2Qv0YCH0vFjriR8=;
 b=iHwHpf1J5YoBAl1lHCTluCi5e5yjAMYdAz+ZbPLK8LNN4IpI+BlC83b3+5+8vvZN8w
 MHgabLpayqaUNzvOf24f018/rBzqDWysAjYFeX3yd2uqyk1SXls1BxDbfkbXAvLVfKER
 3xHkBv8hOL4aWNDssoyzSZkHwXZ4T52EU/8VVAgkv3LgjXHev3Wl+UkiW4DMxjpn28XT
 qGJAPjVSF83s9kceFyKPXczcT6N9GcTudA+KNG7DbTDgdAo4zNCN1P6yN6k2uRMIe5J1
 rywi1xhzWAuh1rMftG+vP1cii2aFQCeL6hEvDypIFV6ilU7OcSSf5OqbDuvzijiPgR6l
 PhrQ==
X-Gm-Message-State: AGi0PuZgaPEfxs/LgvHMjApeuy479QV/2RFV2RorPKSaHmikyOVMpJe+
 96dM3Mn+Lus0duf9uNX8DIefDbOJ8rskUO8B5a8bV3zbNNxYgpwbz4HsNFx07SzF6m04ZoiH84H
 53nRDFUmYkvzYJxiP6GHiXfpUdJ+/zIuyV1ceI6CsVe2GCko=
X-Received: by 2002:a6b:c9cc:: with SMTP id
 z195mr14284187iof.164.1589192195834; 
 Mon, 11 May 2020 03:16:35 -0700 (PDT)
X-Google-Smtp-Source: APiQypJdJBw+SG/VCERp35pW0UztVDtqar6G3fV9y4nyOmaEPjCZp9CW0KEWj2LduyJ5tguorizbDO1aDUu4FpTpAfM=
X-Received: by 2002:a6b:c9cc:: with SMTP id
 z195mr14284172iof.164.1589192195614; 
 Mon, 11 May 2020 03:16:35 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@redhat.com>
Date: Mon, 11 May 2020 12:16:24 +0200
Message-ID: <CAMxuvawzmqKdLwk6AvthZkmZTr9T+q+UU8Q+raVHj0nZ2swhiw@mail.gmail.com>
To: spice-devel <spice-devel@lists.freedesktop.org>,
 Frediano Ziglio <fziglio@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] About decisions and reviews
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi,

About "Move code to C++":
https://gitlab.freedesktop.org/spice/spice/-/merge_requests/62

I would like to know how the decision happened. As long as I have been
involved in the Spice project, we had open discussions and did
mandatory review for anything non-trivial.

This change is substantial, and impacts the work and contribution of
others. Where did the discussion happen? Who reviewed the code
changes?

thanks

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
