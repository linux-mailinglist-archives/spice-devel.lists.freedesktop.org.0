Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 451D33D7DC7
	for <lists+spice-devel@lfdr.de>; Tue, 27 Jul 2021 20:37:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBB776E198;
	Tue, 27 Jul 2021 18:37:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com
 [IPv6:2607:f8b0:4864:20::f36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50C6D6E201
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Jul 2021 13:11:07 +0000 (UTC)
Received: by mail-qv1-xf36.google.com with SMTP id p38so6786597qvp.11
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Jul 2021 06:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=R5bUIxij/1/HmnXX4e2n7sab+2OlTQUx2FNpFw3KUhs=;
 b=Hp03B0rKXEj4UI0DSiE1OnV2YNQv0AgXKrOvR4BDapqYmBXvBLXZzjweH3tN0EVMrk
 YdFtb5NxXjK4PNaVksXngqJxVG5ORFgcIb/TqvtRRdOiKb2kF/HmVXsGtRWlX0r5H1mh
 KRUMuQYSUm+gEGNQIAO+dDQLCllIKW8Hp1mc4ZOezNLHjC5g6hnrwUt9anALDBluRL4A
 tPordMYCDQQZXExp8k1Qna2BPxD7JzWSFEV7uT0hp6fO8aCrGWfcRJoyDBWYXgJQ/u/T
 GqKBhdZLRU149XHhm2+gdx2fWjjE4+EEYY/eax5I0NViEus/YxY16zoFVom9ZN9NGvFd
 +rpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=R5bUIxij/1/HmnXX4e2n7sab+2OlTQUx2FNpFw3KUhs=;
 b=XOLUp242xbCbAaJLS2Gi5kShh2f0+MsOjTGEZci/E5nCWBY4DRWyMcwkpJ46+F/FOT
 WS2cbbZc2NXeUNpdNus4jKOJa4J2AQSFvlRRC/lDIDFgaMvdqCQ4/owHnR3nLNbYNK29
 2G0dg2BvKB+urTKP2ELu4uLugg7oTrAWrXHv4V4ZpykrrEs3Wzk4iYVplO+yAvuyVAsV
 8L/kpozDiKuGwBEc4oaQ4uLjLqSs0fEWGqJ8NYZkr/ZygkFCEO/aSChhsIwpQRWl4XpD
 iSfkvrw58oQw0rs7udAjdNldVgZt5tn8rkfclECghAKeNcF9HoiPgtJ5UjUPfS3h5CtY
 6Beg==
X-Gm-Message-State: AOAM531Pj3pkmchjGmzXR9+PmgEb2pVhS1ALGh2U9hAjjINKIb1sBW5o
 nl6SRyt5SfW4Gud3FJlzhWNsrBhQhFo=
X-Google-Smtp-Source: ABdhPJw+ZK7pHRgIULIwHY2HHdOLleScjlF2wAQC5Fw+HSXsfBzrhBQ+Xxmvu2gsOK+5t4zX0l5xRg==
X-Received: by 2002:a05:6214:162d:: with SMTP id
 e13mr5858170qvw.11.1627391465888; 
 Tue, 27 Jul 2021 06:11:05 -0700 (PDT)
Received: from [192.168.1.220] (pool-173-63-102-203.nwrknj.fios.verizon.net.
 [173.63.102.203])
 by smtp.gmail.com with ESMTPSA id r5sm1322414qtm.75.2021.07.27.06.11.04
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Jul 2021 06:11:05 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
From: "djkraven@gmail.com" <djkraven@gmail.com>
Message-ID: <f24d5ace-b48c-8073-5402-9a10a4a13174@gmail.com>
Date: Tue, 27 Jul 2021 09:11:04 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
Content-Language: en-US
X-Mailman-Approved-At: Tue, 27 Jul 2021 18:37:23 +0000
Subject: [Spice-devel] Spice with proxmox and linux mint
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

I have a linux mint host running on proxmox and use the spice console to 
run two monitors. The issue I have is when I reboot host I have go 
through the multi-monitor set up again. Is there a way to have the spice 
setup retained between reboots? I am not sure if this mostly a spice, 
proxmox, or linux mint issue but appreciate any insight that can be 
provided.


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
