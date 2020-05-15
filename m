Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAA61D5703
	for <lists+spice-devel@lfdr.de>; Fri, 15 May 2020 19:06:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C5EA6ED05;
	Fri, 15 May 2020 17:05:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1678C6ED05
 for <spice-devel@lists.freedesktop.org>; Fri, 15 May 2020 17:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589562356;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=1eqoVjY7y3QKa8q4bEqMjQIYNne4dwOpWRzdQO+7wKQ=;
 b=KYSGQvQwY6I6SL2IPQGbeInl5PvxlJZ4UmIwhDEZwMPJYKqZR+TiKJNa5MruDgCkR5U+qg
 N63j8m+GndcMrt+fGNhXa8LXDHJbGZvzetKLj4NxLTdeDEYyTWYAXvmopThKXjynTrYH8g
 lBt5VWBCtMz6QxGfRDiliPj1VVtJk30=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-283-DWrGpuXQMZ2i2Flpbq63Kw-1; Fri, 15 May 2020 13:05:53 -0400
X-MC-Unique: DWrGpuXQMZ2i2Flpbq63Kw-1
Received: by mail-wm1-f70.google.com with SMTP id 23so1455773wma.8
 for <spice-devel@lists.freedesktop.org>; Fri, 15 May 2020 10:05:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=1eqoVjY7y3QKa8q4bEqMjQIYNne4dwOpWRzdQO+7wKQ=;
 b=YqE7DDFrT0oEfcTm3sglcJwnBXjaixnNeR1zbzn/2KYAA912rfwHM2hLScXtBrpDnV
 qgik1Kf5i4TdUw+mLm/X6Wf9MxXaOmb6FjrzlEiTXWP+cvRkYnTu6B4/G7UyNl3wNn1o
 Tl+jNelUXJCPyVdXCv5e5eUJ7c0ELcivgYGovybmv0eI4SYQDZQiXU4NZT9fPFxhDrvw
 wCbHBKdB6kDq9baRYo1sEi3jyBYlgVkOPclxL6H3fWCxA1HFen6cFe5ftjx3fx7ToTEJ
 r3FM2D70YTLqW12ru9SfBM2ccr6oAq5HicurapxbJs4y5dd/WFMJhm780VXRRnRpiyZJ
 Haqg==
X-Gm-Message-State: AOAM531EV6PUF5sRiXfrdPG+aGlcuC9TpHzH2NDQpmW2fyjPhZ5BDWEk
 wRfAanLodDpfETZCpk3MvWPQyakFQKZUyxNs2jQE/whaJz14hhjFHe4gonfKf3qdl8fa1RKJ873
 SjnBa5Yx05z9rpzyKjUCV7it/re/LqQ4=
X-Received: by 2002:a05:600c:2c0c:: with SMTP id
 q12mr4912675wmg.36.1589562352089; 
 Fri, 15 May 2020 10:05:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwA4WIAlUDX/2U71xRu96uTUiq0SbL6kXJ3VJ+MVuS3gtm8AqFR+ESk6IYfJQBdAgRGBlZORQ==
X-Received: by 2002:a05:600c:2c0c:: with SMTP id
 q12mr4912658wmg.36.1589562351775; 
 Fri, 15 May 2020 10:05:51 -0700 (PDT)
Received: from [192.168.1.62] ([151.30.82.57])
 by smtp.gmail.com with ESMTPSA id 32sm4684258wrr.38.2020.05.15.10.05.50
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 May 2020 10:05:51 -0700 (PDT)
To: spice-devel <spice-devel@lists.freedesktop.org>
From: Francesco Giudici <fgiudici@redhat.com>
Message-ID: <63b7a25f-0f32-1626-5c1b-3811a4f0467f@redhat.com>
Date: Fri, 15 May 2020 19:05:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] SPICE: changing the merge rules - a proposal
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

Hi,
   the community around the SPICE project always tried to follow one 
fundamental, implicit rule for accepting code contributions to the 
project: every merge request (beside trivial patches) should be reviewed 
and acked at least by one before getting merged.
While everyone agrees with this fundamental rule, the actual status of 
some SPICE projects makes the rule impractical to let the project move 
forward.
Let's consider the spice/spice project as an example: the number of 
contributions is very low, both on the commit side (only 4 different 
contributors with more than 1 commit from the beginning of the year, and 
a single contributor with 90% of commits) and on the review side (in the 
last 40 merge requests before the C++ switch one, 21 had no comments).
The x11spice project is another example: we have only 4 contributors 
from the beginning of the year (and a single contributor holding 70% of 
the commits) and the reviews on the gitlab merge requests have been 
provided by two people only, each one reviewing the merge requests of 
the other.
For the sake of having the projects being able to move forward with a 
reduced number of contributors/reviewers, the proposal is to *allow* a 
maintainer to merge a Merge Request without an explicit ack if the three 
following conditions are met:
1) The Merge Request has been pending for at least 3 weeks without 
getting new comments
2) The Merge Request submitter has kept asking a review on a weekly basis
3) There are no pending nacks on the Merge Request

Note that having patches reviewed would still be the preferred way. If 
at any time the number of contributors would raise again, we can switch 
back to the mandatory review rule. Until then the priority is to allow 
the project to move forward.

What do you think? Please share your thoughts and/or contribute with 
your own ideas.

Thanks

Francesco

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
