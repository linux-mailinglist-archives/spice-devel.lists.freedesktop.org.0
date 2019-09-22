Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3BCBA35C
	for <lists+spice-devel@lfdr.de>; Sun, 22 Sep 2019 19:39:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA9D96E861;
	Sun, 22 Sep 2019 17:39:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A309B6E864
 for <spice-devel@lists.freedesktop.org>; Sun, 22 Sep 2019 17:39:04 +0000 (UTC)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-22-CP7SlrinPEmummmJ2wCUYA-1; Sun, 22 Sep 2019 13:38:58 -0400
Received: by mail-io1-f72.google.com with SMTP id r20so20022691ioh.7
 for <spice-devel@lists.freedesktop.org>; Sun, 22 Sep 2019 10:38:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=sGk7SFsvOurE1HtY5zkQ6lqCyK5qfw6hlLjWoz8UcJw=;
 b=HksT2CF1y0KCwp6lk/AUBk3CpjQFWN92hRWWT9h0D304yS4jtAtck1mLCvKByi9VMN
 qvYxr9wU5beKC27lMet9NneACLE/MmBjn6zMeoZvmcRfWi8JJP4qC7+PrwA/CzqhX78B
 oyQtTTQ9SQbxUDitgAm1SyvGgBsl+Ld7+cgcEZgeWb2bR8qyoghmym+2POan78eH4bJx
 tM4B2EOXl8G7b9vNegYzsyO4vNnLZ2fh0rrxj4v3zVvuZTaOC4FyUzx4YsM4YVbZJigx
 C5Btn4D515pxKZbkorvJYUxxDI/hDuOJdPMup6xBoeiM2hLdgY0gTa/EFmxj72S2mgmP
 apvw==
X-Gm-Message-State: APjAAAUeqncKE1jW6aiCH62JMsNHKnR2IudlUw44N9EwIlNMFB60BBr0
 +YAQgFJPpnlxXuWKlBdVOe5vDuZk37NoFWdrszUM4q+zktTc6lhrOX1w19vA720+UMfAz5z/jsK
 m58JAx6sG44mDZNfRZ12q1Ou+IHOo93B4dS9dLKqia90JbDU=
X-Received: by 2002:a05:6602:10d:: with SMTP id
 s13mr8603919iot.244.1569173937441; 
 Sun, 22 Sep 2019 10:38:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqybj6/jjOb8FYevMNESCqKU8WsrmwGm3551CnkI6urHScbRmgmu6abdb50c351dXHH4s8M0cszFZz6GVDBxbrA=
X-Received: by 2002:a05:6602:10d:: with SMTP id
 s13mr8603911iot.244.1569173937268; 
 Sun, 22 Sep 2019 10:38:57 -0700 (PDT)
MIME-Version: 1.0
From: Jakub Janku <jjanku@redhat.com>
Date: Sun, 22 Sep 2019 19:38:46 +0200
Message-ID: <CAH=CeiDzPck8OmmJjAL9bMOw-YyOKsFOJWzsfgZ7Y1dQPquWFw@mail.gmail.com>
To: spice-devel <spice-devel@lists.freedesktop.org>
X-MC-Unique: CP7SlrinPEmummmJ2wCUYA-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1569173942;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=sGk7SFsvOurE1HtY5zkQ6lqCyK5qfw6hlLjWoz8UcJw=;
 b=OMTTane29Cedt7/0f5VNZC1XbJ6m9B7j6iYhtk84+Fhfs29olNRKXSCwcQLjwrHfnWPi1H
 yKiAVqsCGvuM/DWO+Z0lFiQBUJS1xDtcljy9XLPWU/8Fz0cm64pnNiVr47U0NgVgMMM+GO
 maCS7HkZN5J9Cz2PQWuYQTI8Ba3V3oE=
Subject: [Spice-devel] phodav: OutputQueue refactor & misc
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

aHR0cHM6Ly9naXRsYWIuZ25vbWUub3JnL0dOT01FL3Bob2Rhdi9tZXJnZV9yZXF1ZXN0cy81LwoK
cGluZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
