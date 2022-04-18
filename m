Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CE3504C19
	for <lists+spice-devel@lfdr.de>; Mon, 18 Apr 2022 07:03:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B55F10E0A3;
	Mon, 18 Apr 2022 05:03:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6508B10EC3D
 for <spice-devel@lists.freedesktop.org>; Mon, 18 Apr 2022 03:32:30 +0000 (UTC)
Received: by mail-pg1-x52d.google.com with SMTP id s137so16560277pgs.5
 for <spice-devel@lists.freedesktop.org>; Sun, 17 Apr 2022 20:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date
 :to; bh=uf0vdwNl5Pn7tcXxhQs5c+nus56iuVWXEMTB+Ad/RXM=;
 b=j53IDV5v3T8uS5qJcuDuc/lWC/BPz1D2445cZ68pEcmSZwROieMTmXtzFcBfj6ftf2
 ZoP2oGV9DvCNai+j86wd8VEqlTQWAfxAYWANSpoo8G8g5Uga8h3l3/+4fE+N3R0VjXpX
 L6R+RsHIr9MjXKRRWn6Fjhqc1/yXcuzaU4VCg5KyZJbsrPaBrYjQwHn6XJ2qBHIJ3xQu
 0eltXJNdyrCuKBXTHBG0Pn8JUBetwzF2wXGmYj1iwnje/rE6Xg5G26EEpcxffER/TnKV
 4EJj7pJ5n1OeDS7xnNq2mzM1ndwxmakY9SOOc+hIdxx8O7CmkKkNvEnDkOvJtggD1CfR
 u8mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:to;
 bh=uf0vdwNl5Pn7tcXxhQs5c+nus56iuVWXEMTB+Ad/RXM=;
 b=zvKHMMAcwFA0wflQBSxGkamQF9GLX1cDK79Oquax3rUfanw4aOd06Bwd4A4P/vjXIJ
 vM8LST0h7rXzfFQdDmKwThJZm5hNIEnYOVzbSbtHE3KFYjeGArEi//3tl+qkaLd6DPDz
 AKTpT1vWy5YV3Wpd5lMuGX9zVR0W8mLeVnu0FkNswyOs4TOOWHLciYmJ5WJ0PKaTkoMQ
 KKptvMM6Ci67SPTEYab3elaCiOIqn4mYGd2B+f2PFJnl4wcAT+ra6YDTP2iPY6geAlhy
 hMeYGyZGbuq5hAPbEy7pipuNovr/ksGEtknkLOcZHic9V0G4HfYOo/uJfgwww0+0KWqo
 vUCw==
X-Gm-Message-State: AOAM532z8dcZ3LssvvCs4ZBBrbv1lEdwiexH3kKcnK9y5KXpU39jUyNX
 qVzfbc0kYDYodmkFQWew8DCNJw5NUg1uhFJR
X-Google-Smtp-Source: ABdhPJzO8REDZZcreYaUJHiwGqdZeMNTpYmonInZ3MJxjC+pxdFj9oH4j5DjeBZ2RtTgpIfNJNPl6g==
X-Received: by 2002:a63:5020:0:b0:39e:5d26:4316 with SMTP id
 e32-20020a635020000000b0039e5d264316mr8406474pgb.294.1650252749387; 
 Sun, 17 Apr 2022 20:32:29 -0700 (PDT)
Received: from smtpclient.apple ([203.90.233.36])
 by smtp.gmail.com with ESMTPSA id
 c6-20020aa78806000000b00505fd6423b2sm10249549pfo.95.2022.04.17.20.32.28
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 17 Apr 2022 20:32:28 -0700 (PDT)
From: Walter Mitty <waltermitty121906@gmail.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Message-Id: <BE152BD8-547B-497C-AB2C-CCF553D3AEA5@gmail.com>
Date: Mon, 18 Apr 2022 11:32:26 +0800
To: spice-devel@lists.freedesktop.org
X-Mailer: Apple Mail (2.3693.40.0.1.81)
X-Mailman-Approved-At: Mon, 18 Apr 2022 05:03:05 +0000
Subject: [Spice-devel] Does SPICE support long time single touch to trigger
 right click action?
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

As we all know, on windows 10 touch device, user can long touch to =
trigger right click. I found that it does not work on SPICE. My question =
is:
Is this a SPICE BUG or some hidden features that enabled by some params?=20=

Thanks in advance.

Regards,
Walter.=
