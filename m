Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9828507D63
	for <lists+spice-devel@lfdr.de>; Wed, 20 Apr 2022 01:53:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6314510E3A2;
	Tue, 19 Apr 2022 23:53:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com
 [IPv6:2607:f8b0:4864:20::22a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 230F210E3A2
 for <spice-devel@lists.freedesktop.org>; Tue, 19 Apr 2022 23:53:06 +0000 (UTC)
Received: by mail-oi1-x22a.google.com with SMTP id w194so292904oiw.11
 for <spice-devel@lists.freedesktop.org>; Tue, 19 Apr 2022 16:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=1Ei89UDE0yVEUvyqO2c+3Gnfux+v/LYKI/ee8EIua/A=;
 b=Qm9S5ffUEaaU6qpVV7eLLTAhje3psHQOHkM3PYUSzZ55+mVmASgMMZshELVeoEnK1Q
 ojvvfZavbAQseZ0fhg6gh++zobeQr1Eiph3c6QN5N2Wx3ktPSc2QjBAylpklcI0n358p
 kKYZCqWbYYwwkwIyJK5doXqLBMqnwjnO2hYIUlUr5fUxzh0u1G8vk8gOjzUPyG56tQbg
 PaQjAJtve9DbOi5RS30xtxTqaRu6IfDCUrN1RCu3nSbQGT2FHscV0QoG3waPlSQasTmw
 Wzi6F6L8t39w84G3yNLtDp+TxAOmohDkZXG9lNG0tc6Idb3j/C8MhffWGSDO3ffdccyn
 KV4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=1Ei89UDE0yVEUvyqO2c+3Gnfux+v/LYKI/ee8EIua/A=;
 b=o6nc9fncg63wHC1PSOUG2avwF4872Y+HzeumG6228Q7y1MxcAnDSjPTKlC/UPWTy/9
 KzyTlqdMagZZ4Yv7F5dW+dWwHr6T48rt+wcM4T5I9tF2MfMwk84vR/sQx+HXISvi8XV0
 3FQGtfq4lKmFzDMevK9K7CrIoaCSNg3p1bKqKyqLF8DPCKbK1dv633xYTJRLl44ttItK
 yMLr1kmRRq1qvAGxHHwjtqda0rr/CMoQVjwakJ/DfNhAgx0rxbxNb89iiV71+yUtU/ri
 rDiyZnRJaa7ceYS8ZBwuYD5cjuWILvpcce9NUrBHeT0IMIQfY4wWjRaU2d55ESWC3oFO
 hC/w==
X-Gm-Message-State: AOAM533CXsVRwHAplhdoy9pJan3rd7Do67127iXxVuOpkIoS+aIuGR99
 0hW/bXeha9qrhcq0XbYWJxnSW5uvvmXM2ijgVkbeEr9AGTY=
X-Google-Smtp-Source: ABdhPJy7KQOK9/y9RHzilN4Mv5Nk1yCOwBmoiqV86m9ETPukSyNWOKlGQd1+cjPBHFtuXiJ8NawKffH8JQNV41HoVTk=
X-Received: by 2002:a05:6808:85:b0:322:3a36:8a45 with SMTP id
 s5-20020a056808008500b003223a368a45mr495806oic.279.1650412386102; Tue, 19 Apr
 2022 16:53:06 -0700 (PDT)
MIME-Version: 1.0
From: i iordanov <iiordanov@gmail.com>
Date: Tue, 19 Apr 2022 19:52:29 -0400
Message-ID: <CAMS0tn0O3=trQ=cGHDQgKYrvXs3v5RS-v0KQkDk=c-tR=9jQqg@mail.gmail.com>
To: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: [Spice-devel] New native SPICE and VNC Clients for iOS and Mac OS X
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

Hello,

I wanted to let you all know that I've released a new native SPICE
(and VNC) Clients for iOS and Mac OS X written in Swift. aSPICE comes
with console.vv and audio support. I've open-sourced them under the
GPLv3 license and put up the source code here:

https://gitlab.com/iiordanov/remote-desktop-clients-ios

From the above-mentioned iOS code repository are built bVNC and aSPICE
for iOS/Mac OS X. An RDP client for iOS called aRDP is also in the
works.

This approach to build out multiple apps from a single repository is
similar to my Android clients bVNC and aSPICE, aRDP, and Opaque which
you may be familiar with (code at
https://github.com/iiordanov/remote-desktop-clients).

The new apps are available at the following links if you want to try them out:
aSPICE: https://apps.apple.com/ca/app/aspice-pro/id1560593107
bVNC: https://apps.apple.com/ca/app/bvnc-pro/id1506461202

I hope you find them useful!

Sincerely,
iordan

-- 
The conscious mind has only one thread of execution.
