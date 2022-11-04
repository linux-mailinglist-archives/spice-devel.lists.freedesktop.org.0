Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C45CE61A34D
	for <lists+spice-devel@lfdr.de>; Fri,  4 Nov 2022 22:25:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FFB710E85F;
	Fri,  4 Nov 2022 21:25:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4328F10E85F
 for <spice-devel@lists.freedesktop.org>; Fri,  4 Nov 2022 21:25:49 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id v27so9469448eda.1
 for <spice-devel@lists.freedesktop.org>; Fri, 04 Nov 2022 14:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=V43wG8H3m/uP1dbXoSkZ+Rc4dnkcC6l4E5VG//XOG5s=;
 b=K6+ytA8we7rbdxUFLZIuoKCn6Nm8ao1tmiNoPqpVnrDyIrnVWBzaYqe+/ZpPfiZmAT
 URjBljhA74KjYB7IOlofaSVnZwhiZupLFXwhwSPt9P0sxtCcePzFjF0hYPYTzygq7VvL
 LJv4Pr7GPw+mAY4yEEufiYgZgOHtzTOXWYvm+UIsxZL+DVw3WEJBnoASbWb7ed4IvBed
 qo8KkcahPv3s+RuE9xtiwqdQYEbDEtDYBhNIT+9PLFJh1wYetU7+BNpx5JbGwVqQUyGn
 ZlT/qZymxOPKspM1SGISdciiVYB6ZvSZyk8D1KTmFXjovX21XOo0Ke0aeBeWpb0I+FKy
 a7ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=V43wG8H3m/uP1dbXoSkZ+Rc4dnkcC6l4E5VG//XOG5s=;
 b=1U5bzj0cPuom8kJl8V3ChI4wkgW+qaSt/3e85I05nIG9SNVKHWP2wp1czbJFPn7tQ/
 5+xFlWEsPlLWHmXvxk8wFFpvxBPrqWSypBAKmjuAQXT3YFcdrQYkC3CFE8t7mLRuXqOd
 KaOVi9gPMnb/okI16a5Wswkw4gmTtu3iJJrdkLYrGj1NxXnvIeHmvfsX6bg1BE0FtGS/
 /xsKbDJ+FLNMVDc9RrZPa3tceHOTitvKsJNYJ7tpKplKK69jRzGVkZFAixyOrJ16EVyT
 PQx/rcJCe0Ll0gJ4SOpAcD5KeVjwbT+8e64X8JAfV/2ziPgqyfGCyQ5MKgd8Wa1JQDGA
 6aKg==
X-Gm-Message-State: ACrzQf0ZV4+WocxKGb03zwMjpPsbGFKfGUOUeKD2RPQR1D6j33Mfw3uJ
 rbxUCLshAyZWZn6xuI25ErfLEcmk2B2Id5pmYfuPZo1cS9s=
X-Google-Smtp-Source: AMsMyM5Wjfkpr4j+yGqyaYB1d7SKrtjI1ScxFT7ymiPwJxPItCSPJm+enJ8uh1FyaA2xCsdQuopXlpxT1FiyDYGdwtE=
X-Received: by 2002:a05:6402:42c7:b0:461:c375:86b8 with SMTP id
 i7-20020a05640242c700b00461c37586b8mr37417443edc.40.1667597147359; Fri, 04
 Nov 2022 14:25:47 -0700 (PDT)
MIME-Version: 1.0
From: Dirk Eibach <dirk.eibach@googlemail.com>
Date: Fri, 4 Nov 2022 22:25:36 +0100
Message-ID: <CANVMifJi8_DFPBTRt9-TEAWkOWbg62k-ar55_y=DVxiLPQBFyg@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
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
