Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D930961D89F
	for <lists+spice-devel@lfdr.de>; Sat,  5 Nov 2022 09:09:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BC5510E0DC;
	Sat,  5 Nov 2022 08:09:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D751410E84F
 for <spice-devel@lists.freedesktop.org>; Fri,  4 Nov 2022 21:16:10 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id bj12so16357021ejb.13
 for <spice-devel@lists.freedesktop.org>; Fri, 04 Nov 2022 14:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=V43wG8H3m/uP1dbXoSkZ+Rc4dnkcC6l4E5VG//XOG5s=;
 b=YiSTKRrAKRUw8MgIRg3aKbp0O3TW1mOisiehlMriZv63T4bk/iX87OrWRIxCY7UGtI
 z++DNFMkjlgRY2VEhkR3+dFt3XUVbfCK7B+MT2In1/jM+8QHIU3qq+EyhuUfXCOYcpqX
 ulH08yzRiWIbgyAPKAdAPuBHm0vVxoJGSWgSBqM2Wwzw5pi788GalsQs9YnUkLu1H8Yn
 VK53NcFmYXGUpZPh53CmnCy72qEQhMNnYcLkq3TL506C8I4W6X/hnPdTjPprwspmV367
 AHQ8ixGgwY9Gpu6ekuWTBD9vOQxSwMazfS8vv70P8qePrLyXCazHW/GW9DFKdG1T89q+
 TlRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=V43wG8H3m/uP1dbXoSkZ+Rc4dnkcC6l4E5VG//XOG5s=;
 b=Su9q3wnMaXIkK66xhRCMKaH/UmdIe+Z7xW3ucPd/WeA8/6YSTMxTw75PP/CslJe1ax
 V88qCkvLWOx17AVWeHtR9Gmz3LkLe+4P6r50f+GrT67NloYnwKFAfQuxoruHojJWyGQe
 oXwW8YBCLMLGurtzV/siGXokqJQuW91p7v1AeLfwyvE/PhPwVw7cnCEPFz1GwadDsZSk
 yRyO5FLMLOxq0E5iGKvI2Z/1iQwmzMU0Xa/TTgdFcAf2urfip6vZyEKQBj4PQh/K6knD
 +NcKA213DQvJQH0lrKU6oI8utZ4pMoKT4JKij3/gsEdZQOubblIRg+3M+vVByZZS+A9g
 bNNA==
X-Gm-Message-State: ACrzQf3qX8vnqBc8G+h6nHPG8CWmOZ7pgztD0gmkNMiIpxgRSMtRqTQD
 +6XbzWoKBY0EXothanouwEJ08WQDTDAltjaEy/Baf/3sN3c=
X-Google-Smtp-Source: AMsMyM4g60WAF4tz/FiwRKIMsTjrqCzUjIO4tlrpKB7gZFcrQfOEi1870ObN1/y4AL/R+xYqPhLC9DMRYHKuQrnzbJo=
X-Received: by 2002:a17:906:4e18:b0:7ab:777:a7d7 with SMTP id
 z24-20020a1709064e1800b007ab0777a7d7mr381228eju.757.1667596568985; Fri, 04
 Nov 2022 14:16:08 -0700 (PDT)
MIME-Version: 1.0
From: Dirk Eibach <dirk.eibach@googlemail.com>
Date: Fri, 4 Nov 2022 22:15:58 +0100
Message-ID: <CANVMif+rXZBMvZ3Ww+mWC7TpViGwJSzvmn7VvU08hMf=G4ENsQ@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Sat, 05 Nov 2022 08:09:37 +0000
Subject: [Spice-devel] Standalone (non-virtual) windows server
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi,

I have started developing a standalone (non-virtual) windows server
application. It is based on the Desktop Duplication API, available
since Windows 8.

A proof of concept is already working nicely. It still has some rough
edges though. If you like, join the fun at
https://github.com/ZeroMips/kuemmel.

Comments welcome.

Cheers
Dirk
