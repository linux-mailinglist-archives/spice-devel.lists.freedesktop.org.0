Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3FA4C0C4B
	for <lists+spice-devel@lfdr.de>; Wed, 23 Feb 2022 06:57:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7769810E9BD;
	Wed, 23 Feb 2022 05:57:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com
 [IPv6:2607:f8b0:4864:20::533])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1474A10E4CC
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Feb 2022 03:06:23 +0000 (UTC)
Received: by mail-pg1-x533.google.com with SMTP id w37so12292795pga.7
 for <spice-devel@lists.freedesktop.org>; Tue, 22 Feb 2022 19:06:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date
 :to; bh=K1y9H9nn7ETfckt+XLeE8W0N3WYVW0dO6Tds1B6zTME=;
 b=DwKaxgY5vI6Hzkg6iR8WxXK0kN3hxW+yk0rwKymFIfQsDMPmmYn913+HXafZ9ghOxm
 kmWyt1qXK6vvjYC8stP3UlLN77szsTg/QRV1CzFzB++SxUlwJEt21zjApcq1zbXswUzi
 MDWeqng6AoqucTqSGueouBY6UFzjqPXqzIkwuJaMioh8ZuBSmoxLQFTxnbtq7xCipH1j
 KTxQD15nRpo2yCTmktuVMSotukywoFpwJb9uYr8+emFcSavrtoLYGDZzwHOGsAurtXOk
 Rx2i026+iioFNdhP06h4yxY5IIONlN9+JOmhuvdFYQi5yfA8S6kglGzRFH7pi0qFC3eN
 XNYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:to;
 bh=K1y9H9nn7ETfckt+XLeE8W0N3WYVW0dO6Tds1B6zTME=;
 b=OIB1WiiDNplzpry36PldTwAiAX52dcWTUxemhu4UaLnvQMaK8UaKa97H9RSSxAsk7n
 /IUeNub068muyeCqTnlLL2BHlPD/skbwYJR8KRxFFG/h52MkDJ5NZvIi88jiW+OM3Xtq
 wOFSS7MHATq6XCfb/m8/X8vidHPgYhRgdODPkwcDXHzOXEhRaHRdZ3GOlkPSsRkDVwt5
 dgV3sHBZIKiK3vRsx1zCQusi8dRpZ1CEeWzSyp+7AcVM2zi9CXMOAeZ2uJc9nHBn5XXH
 1zuziw9HQnR6a/EpH9ZtY9ABEW3ycS9QftHZTU6yt6aQpRa+GvdroT895xVXI0o88Px8
 B3eA==
X-Gm-Message-State: AOAM533wZSJMbKhjGMpNrW8kuZaZKYyIiR0ldZnlwYNXxyK3VRdqOopn
 8UnzbDOcjlDyCEaeo+SB+XSoByox+qPJQh8NE5Q=
X-Google-Smtp-Source: ABdhPJws4FDE6kFStrMHXAnkcTaQ0gSL8l58nKARkH/wAImvnkazvetWXJFltaWTxS2da+dKj/ZXHQ==
X-Received: by 2002:a63:114c:0:b0:373:a701:3736 with SMTP id
 12-20020a63114c000000b00373a7013736mr21962227pgr.117.1645585582251; 
 Tue, 22 Feb 2022 19:06:22 -0800 (PST)
Received: from smtpclient.apple ([203.90.233.36])
 by smtp.gmail.com with ESMTPSA id c9sm19551364pfv.70.2022.02.22.19.06.21
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Feb 2022 19:06:21 -0800 (PST)
From: Walter Mitty <waltermitty121906@gmail.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Message-Id: <095C03F4-EA2B-4F17-AB4F-E24A4EBB0BE1@gmail.com>
Date: Wed, 23 Feb 2022 11:06:18 +0800
To: spice-devel@lists.freedesktop.org
X-Mailer: Apple Mail (2.3693.40.0.1.81)
X-Mailman-Approved-At: Wed, 23 Feb 2022 05:57:29 +0000
Subject: [Spice-devel] Combine JPEG-XL with spice
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

Is it a good idea to replace JPEG image compress with JPEG-XL? 
