Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DCB60CF35
	for <lists+spice-devel@lfdr.de>; Tue, 25 Oct 2022 16:39:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1AC310E3BC;
	Tue, 25 Oct 2022 14:39:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com
 [IPv6:2607:f8b0:4864:20::22d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 651AE10E3C2
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Oct 2022 14:34:44 +0000 (UTC)
Received: by mail-oi1-x22d.google.com with SMTP id n83so14370349oif.11
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Oct 2022 07:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=QI8+BlVwVWyxRICqMScvOfFFCKe3KUn4cFo6TSBzT5M=;
 b=XbOC65gUXVtuGyxBQ70+JDgZ6nni0EfVy1K4DQer6aoriP2FVjq/twzH998GdZw1WZ
 B/wRlX2FPBaobjDO0yvSBp3kHYIgjYlIu+oVzCMOiVwnzi2aCov5WTKGaLthsosfp3Lu
 uHo/uf1dgeweyRGTBLG17Ioe2Wuc/jmy0GS4TJnJ3Q0vc8DEfxBhpxbEfxu5IgJS0auh
 s3fU3oaqg7Ms1FRvP086zM0VHfGmk6/3l720zGO6THmnFcjL5vbZSlmyAKNw4t6cyH3A
 Tn/2CP6fP/yMJNugt+aU2VbGmEFEfNecpBeBSY+m8u0EdY2eKDN8k0LMFyGdaifHWQ28
 xLAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=QI8+BlVwVWyxRICqMScvOfFFCKe3KUn4cFo6TSBzT5M=;
 b=B0eKnaSmyqZ+Y9Qzsu8/ymbwa/3N9MCezOP2XLhgwV5EiZicy3GfTNUuc+n5oaBE+J
 zLtGRQNcWN7P2GBHic720Fkdw7ym40r/dukWLXB9NSaIpwRDecfuexY+HZ93KR39vhKs
 vMEnQ7e1w6AApxxJmRqDnf95/t8cvUiAPqWatUB950LJlO6Ey/dU8bD1P4oscUGkMdH7
 i7b4aGgomUFLtyhrShnBmbYcFa5gohWcWrAFkhBh/Cs+74gcUYcH64TMz+BzTtTLuwXI
 QzE+JEM1WTRtYhhGOG/dbfX1BlURWiqBWUbPCq28DHXOysai8YPdxa+vLapdeo2vlCBq
 yWpw==
X-Gm-Message-State: ACrzQf0oEKf5KDvBaIf3WjwgPxciKOeiP67wkqhgX87QASUcMdj2uGzu
 SP6fp1ju8d3REJEIKNiQUZ5QHfRtCRqy6+Xl95Jx7qOH
X-Google-Smtp-Source: AMsMyM4eB2DYBoVXIjxUEmryHioBWxv2cv0+qpcY4rH8bzoQROLHZRHQimooRLilbRuBHR7Fr/dzQO8vfWID45UMu+A=
X-Received: by 2002:a05:6808:221b:b0:354:cca5:9215 with SMTP id
 bd27-20020a056808221b00b00354cca59215mr19829803oib.53.1666708483586; Tue, 25
 Oct 2022 07:34:43 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Ksawery_B=C5=82aszczak?= <kxblax54@gmail.com>
Date: Tue, 25 Oct 2022 16:34:30 +0200
Message-ID: <CAJ+fVVw1h_L+H-nbhTmohPZrQadUc8ZUEvNM5uCcn-ZxQmxBvw@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000001bbdd705ebdccfa2"
X-Mailman-Approved-At: Tue, 25 Oct 2022 14:39:06 +0000
Subject: [Spice-devel] (no subject)
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

--0000000000001bbdd705ebdccfa2
Content-Type: text/plain; charset="UTF-8"

Hi i have question
How do i install drivers qxl wddm dod drivers on windows 7 i use qemu?

--0000000000001bbdd705ebdccfa2
Content-Type: text/html; charset="UTF-8"

<div dir="auto">Hi i have question<div dir="auto">How do i install drivers qxl wddm dod drivers on windows 7 i use qemu?</div></div>

--0000000000001bbdd705ebdccfa2--
