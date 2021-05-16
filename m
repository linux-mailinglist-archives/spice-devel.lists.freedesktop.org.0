Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C8C3820A8
	for <lists+spice-devel@lfdr.de>; Sun, 16 May 2021 21:29:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33B526E862;
	Sun, 16 May 2021 19:29:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com
 [IPv6:2607:f8b0:4864:20::833])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC92F6E838
 for <spice-devel@lists.freedesktop.org>; Sun, 16 May 2021 17:19:45 +0000 (UTC)
Received: by mail-qt1-x833.google.com with SMTP id 1so3368297qtb.0
 for <spice-devel@lists.freedesktop.org>; Sun, 16 May 2021 10:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=U+6+wz+HfwWm/MGmqfm6TE9u1SjJrBbBdvMbxWHDJ/s=;
 b=oUqQ6LFlA4/B/NQMzr4qNigfX1dcaGE8mJV9t11JTleUkKiGyYebi8P6mVCmPRhQtO
 9zG298r1J9W+zr5bEcHINlULub/3WyRFuEy2D/FAzlTL7JM/lVQmcEHqxTvLSTS7Guqk
 iERMkON5usXsvyNqIuH0VevitFL3WTx2ReokcZT3xwoA/K9nIvNcoWj1YavcsZwHUOOd
 P/cwQ147wfes2WjOHD86jznoJ//8ETrjGT4ZnRY9Sn43X/Hk5tn/dnvQcY+KuHa+ykjK
 kbpLNs/buYZNkaW7sC443vf16ByMI09ovR38Y4YrHd7nfPCGsISD0oDGsIKxzqXp/TDe
 27+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=U+6+wz+HfwWm/MGmqfm6TE9u1SjJrBbBdvMbxWHDJ/s=;
 b=bKIBbOdg4MHs81Pv6UYTXt7ndiLm1odTcXPkPuFlc2TonZgzom3TaDMaXMHWgf2G3C
 22kWQ9xP6vYxapks2ddosjGCQRT788GXv+KNgkr1J6whn7SaUujSJmUR0Wub6rtY5s5i
 7mL5i2rnQyRln+YaDKcg80Hr8LQurXmKBn8/bQcZ8+4OZcjuwrAYgEs1LeWbuf8KFi8/
 lXCNILVHny3hm4ZXNiMYDhNnbCNOCgAzO+UG+Wff3vATDIYNUZnr+46igKxSD3WCv3so
 nXvvnQsTiS1dsOSw7lp9q5k3L4ERQt8Cr4kXm8UpY/A2F0US0gGWG03LzeGbFpdV9ZzC
 G/jQ==
X-Gm-Message-State: AOAM532jmttwQSWLh+h61UzEiYHyy9YLbKkaHXA1kCzeC33JFRGjQVLv
 06qZqyCX4u/WXVCb/KN+d8P9MViwZJBb7Q==
X-Google-Smtp-Source: ABdhPJwtGjd3PwjZjnXAInosoGhHqUWZHUf5F9xp7R2uJQeMFEW9xavn4ljtKtJyqDmRcTI3elw10Q==
X-Received: by 2002:ac8:744b:: with SMTP id h11mr54139121qtr.199.1621185584641; 
 Sun, 16 May 2021 10:19:44 -0700 (PDT)
Received: from ?IPv6:2607:fea8:44e3:8000:2a1d:e8e8:abdc:a63c?
 ([2607:fea8:44e3:8000:2a1d:e8e8:abdc:a63c])
 by smtp.gmail.com with ESMTPSA id v66sm8542337qkd.113.2021.05.16.10.19.43
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 May 2021 10:19:44 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
From: Siva Prasad <sivaprasad.ucc@gmail.com>
Message-ID: <ae112e79-ad32-fc00-31d3-ff489d8e5586@gmail.com>
Date: Sun, 16 May 2021 13:19:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
Content-Language: en-US
X-Mailman-Approved-At: Sun, 16 May 2021 19:29:12 +0000
Subject: [Spice-devel] Inquiry
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Dear Sir/Madam,


I have installed gnome boxes in ubuntu 20.04 and have been accessing 
windows 10 from there. I tried install spice tools but still not able to 
share folders. Any help is much appreciated.


Thanks and Regards

Siva

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
