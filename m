Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE727646F17
	for <lists+spice-devel@lfdr.de>; Thu,  8 Dec 2022 12:55:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7C9710E1E1;
	Thu,  8 Dec 2022 11:55:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7577610E1E1
 for <spice-devel@lists.freedesktop.org>; Thu,  8 Dec 2022 11:55:04 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id t17so1382596pjo.3
 for <spice-devel@lists.freedesktop.org>; Thu, 08 Dec 2022 03:55:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=XR5L+pj1a1EqUCmmaBtnxbudf0JUHG3eoWNL7N3yD0U=;
 b=NhNHqsyUOqFCAqAQq7LdutHgUzJ+Bl7dPojERCzAcbcJB6wKso8pmmiJ3KY2D6k/mJ
 QtEq0x68v7clYqzovH16m6GM9fHTvnURnJdpR/fr7WWcY0q4NrEz6vDyq4HXuMwu1gCr
 7ICCnj/WP9DqZFHPuQyNiY6v00T/Ex/12vsOKHfuwODJ5MVqnVhFBJmu6n+mgkPnkl/u
 6wXcF7QaomBwM1o1ewXyG/1QjQLnM6FfoINrUHPv8SzezxJLXfsE54j/IJuO3hfTR343
 uYx/Q9n6iCZnt6FNBXQPd/RLwbfY5ercFJl+5zGSv7nRnl21c3KT4BwD3ByfGe1fk114
 OqsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=XR5L+pj1a1EqUCmmaBtnxbudf0JUHG3eoWNL7N3yD0U=;
 b=X1u6jAD0BFHAAFvxTL+J95KmSXs1hZ1Fot0LNjUocIK3g6LAzDE2bbdx3bW2cBAHDO
 e7JM+xc94Aiu4lHsWLkCxvuO0TSAmrZbZj37B782P56mevHAVbTBpXopMnseRVihiQ9a
 EbBfG5/prlLwGkpsAjfOPVcO0IPqGvSztA59nmA39NA9uBV6VGzZ2sg4Mlz4SIbYCEYa
 4zDxGs1aZTAQivba9WSV5v2o916+tNGRIB08udOzjPo5Ff6aL3ocOheGyXhzxaxypzII
 dfAfOFWZdxlHe8eRbrbADo4Cy7nLUwxx/tBPEERMfIVtH3M4zs58L81pz049xLcPh86F
 M+kA==
X-Gm-Message-State: ANoB5pk3CNzNAm1D2iBVLxsjcIuwFYH926dILs1dJL942xCCqM9Ryl5Q
 CcDekjPHI2/Pq5eTuuFuXrHOyi9YvGGLLMqcUcI=
X-Google-Smtp-Source: AA0mqf5lwqXhNgIb5HaKQuHgII1XryBlcCxupQWam4a4ktBYF4P4Egrnjo+LsGtWoB3ARncg0PzedkvTFtG7cO+FAU4=
X-Received: by 2002:a17:902:a514:b0:189:97c3:6382 with SMTP id
 s20-20020a170902a51400b0018997c36382mr46049681plq.168.1670500503769; Thu, 08
 Dec 2022 03:55:03 -0800 (PST)
MIME-Version: 1.0
References: <CAOMZO5CZ2AVd5eb25ztrQa6k_VqoYK5zZX51bfMeZ8TdqMYfgQ@mail.gmail.com>
 <20221208115104.bhts7kfneeafz22k@tapioca>
In-Reply-To: <20221208115104.bhts7kfneeafz22k@tapioca>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 8 Dec 2022 08:54:47 -0300
Message-ID: <CAOMZO5D9Un+a15K8aDjHspigp0eeHwbbxkcc228BSCs--O2ksQ@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] spice-gtk: New v0.42 tag
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Victor,

On Thu, Dec 8, 2022 at 8:51 AM Victor Toso <victortoso@redhat.com> wrote:

> I'll cut a release before the end of next week. I'll see if I can
> address some other issues the next few days first.

Excellent, thanks a lot!

Cheers
