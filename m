Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD06F3AE8BE
	for <lists+spice-devel@lfdr.de>; Mon, 21 Jun 2021 14:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6625C89C09;
	Mon, 21 Jun 2021 12:07:15 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96FE889C09
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Jun 2021 12:07:13 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id x24so29768491lfr.10
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Jun 2021 05:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=clAx6dktktDgPFusVslppD9QS3QE39BywOx3ehd+9as=;
 b=MA+Bskf9ZV9jXxjhzV/fEF/PKeYRetng/eF5shs07GEtWNWMvW+qgcRzsqicJjYxAP
 XboxQ6lFsP1fLOYQ3gQlcWE4XRuIwKyGNo7Pb63NDWGvWjg4wSwGN0jn0DoY1UlQfv+T
 7bPKTtDaJf3ThiixlvfanY+t3n4VAgDcHavmt95vQL4V5RFraWOSmNa4n2sTvgH8ey0E
 cC/6Nlyir/N+aqOnvva3LZIAuqHRWQ9KNvFuNoj+JTpOZ8+ysdOxKWMvTBQ4sr+NZ96k
 elUl0bLOzMUpP5vxf4sB3eIXBCOY1fEd7YSqMOWG9+KGN6+HLwxXo8G1rPcsQTcCAxX0
 8scg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=clAx6dktktDgPFusVslppD9QS3QE39BywOx3ehd+9as=;
 b=a5ezJmx4zPBUAIPh2l56YZMrh2/5aicwgrlzzkOVn4aIPqdafESiQ0BdXPuQMJ0fvL
 IhKCeB7Jh9bZRmuYMlznAdPd3f6+OCN7A6JRzqTBhMWfcewCM9EbnnMVr3fDFpdF+avA
 9pfIzogwn80cNarM6mkIq7a3kmG4TngMkwZfmCyFERajNfmoRsheyEHQt4hHWOL548SC
 dHwNEqmLlFrb3EcP7Xn60pn7PtSx9woL+HnHAM7N9hvDk4qVnTY4lA6yEK0keJTN45bZ
 Koa3EA0TgdQHkhKRiubyFxbRvCZxC1S+MrC+FSEQFDRHi7snFwmNv3TVVJwXYVJUCqx/
 oXXQ==
X-Gm-Message-State: AOAM530PcifRybu+Jikf1FaLENjGkeMIi/UrNEPzCgmM9IgGKruY5IYv
 yvQ3wWldlZjfzzdF4pty3DZXzkTqyBQ=
X-Google-Smtp-Source: ABdhPJxA/xRQLtxRz3LB3t5e6A+4PW356cnNcMeYeG55SP38l1IYMnzuTWk6yXYwzSfYe8pPrZYDBg==
X-Received: by 2002:a05:6512:1683:: with SMTP id
 bu3mr14521273lfb.520.1624277231580; 
 Mon, 21 Jun 2021 05:07:11 -0700 (PDT)
Received: from ?IPv6:2a03:1ac0:6dc3:311::1? ([2a03:1ac0:6dc3:311::1])
 by smtp.gmail.com with ESMTPSA id y22sm1858274lfa.145.2021.06.21.05.07.10
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Jun 2021 05:07:11 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
From: =?UTF-8?B?0LjQu9GM0Y8g0L/QsNGJ0YPQug==?= <ilusha.paschuk@gmail.com>
Message-ID: <a5a9bd65-778e-a6c0-1994-5a03ee224353@gmail.com>
Date: Mon, 21 Jun 2021 15:07:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [Spice-devel] about key grabbing and screenreader accessibility
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

hello.


when working in linux in virt-manager, if I enable key grabbing feature, 
keys are anyway captured by the atspi subsystem and my screen reader.


details can be found in this github issue:


https://github.com/virt-manager/virt-manager/issues/206


they had refused to do this change on their side.

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
