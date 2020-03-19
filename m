Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1502018AC6E
	for <lists+spice-devel@lfdr.de>; Thu, 19 Mar 2020 06:48:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02B436E07D;
	Thu, 19 Mar 2020 05:48:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6637A6E954
 for <spice-devel@lists.freedesktop.org>; Thu, 19 Mar 2020 01:52:05 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id x2so488761pfn.9
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Mar 2020 18:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date
 :to; bh=68XWUlTkhpcywwmNalVfYnbVlvm4J91yymSo+Gb2H/0=;
 b=av+jRilfOTW63VOFCi4udZllCZWGhNo+XALtHB32+t+wyJu1s7jSsj/0/AnjhhWysx
 /hnUlMLzdBG6gVTRW74Eiv1kkK5Mmunyw4GGzITa8OnyCihijktyxEc+Y3TRPs6jMuPP
 tC8PWr85foKhwafXjr2p9L+afzLvax0jx4NxzOu3kNqcisH+K5yCpwaDC2dtPk7Q3k/n
 JchDMn26ABktL1sBqXFdM6DIhLQfftl2nWSoMX2MCrYkwg446u57RZTj1DrXv7AcDr2+
 q1riylMiVY0aig71ABfaR5+WHE4lmmcHZUXllUqYyEMlAcbKzxL9W3+q5QwzCytWNSMD
 z+jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:to;
 bh=68XWUlTkhpcywwmNalVfYnbVlvm4J91yymSo+Gb2H/0=;
 b=HEMp3zcywGh1OdJ19ylHjtR6j5cWsFBbd3Ys7U68LpICY2NrzXKPY5zj8WRMBCTFCU
 vX6TuCzJ+2K/nMY5Gd4iUcmGYeHSVlU6JyP7bfPCSmS9zHA6J6hkBxYZQrKAUteOcWzL
 kkXJpukeCpHSJ0rmUCVzEHvrhpf/HowZh2ctADjtnSGT163r+2x9ZKOdmJpzSWe99q0O
 YKA6mk1qsTAH1l4V7FjWxJnkpK/zBBqj4RFlxyjaAS2TfXoNwQEYFQj2taCHar/l9fo/
 MFdzJ8XVn/f2Gmr6bwBomPbjR+oGu84KPNObOkgKky+M49KS4VdAXVnhSTs62zTfITaj
 zGug==
X-Gm-Message-State: ANhLgQ1aZYMa3Ai0QE6dz83HATnyqDtofIaiJfpRnqVzr5e+OdzTXk/Z
 FrZHVcxh1QloVHPszBAd8Fh1bxqj
X-Google-Smtp-Source: ADFU+vveBKtb8LItnDZU5uyHdB2saavP8YwVqBfthfN9voh22IH8U3M2cNTLH/oJ8Y7bOGp6gqZTcw==
X-Received: by 2002:aa7:8190:: with SMTP id g16mr1334330pfi.111.1584582724665; 
 Wed, 18 Mar 2020 18:52:04 -0700 (PDT)
Received: from [192.168.0.104] ([110.184.84.223])
 by smtp.gmail.com with ESMTPSA id y30sm274354pff.67.2020.03.18.18.52.03
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Mar 2020 18:52:04 -0700 (PDT)
From: =?utf-8?B?5LiB5b+X5Z2a?= <zhijian.ding203@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Message-Id: <85483164-6926-4832-98D0-326DB0CA357D@gmail.com>
Date: Thu, 19 Mar 2020 09:52:02 +0800
To: spice-devel@lists.freedesktop.org
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-Mailman-Approved-At: Thu, 19 Mar 2020 05:48:46 +0000
Subject: [Spice-devel] How to monitor the Status of  SPICE Connection
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

Hi, Spice Develop Team. I am a student of UESTC from China.

As titled, in my project, I want to develop a client program in the VM to monitor the spice connectin status and inform to background timely.

Any hints or ideas?

With my best regards.
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
