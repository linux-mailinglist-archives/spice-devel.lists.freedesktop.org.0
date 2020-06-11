Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD231F69BC
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jun 2020 16:14:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56CE96E83C;
	Thu, 11 Jun 2020 14:14:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D70726E176
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jun 2020 14:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591884888;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=mu41ns6tlaPd0ublGt+vL5nVsJ0GMTWOlMKa6k6fUbY=;
 b=AWHA+1IJTqtqxlcsRMpNZTZ0uzwaABD7uU0bTIcQ4SFT2QhwmZFkRxcx+/pV/EW4VQU5E2
 JPOqzbSCvN+qHjczRk9s6ojxT3XyezCOccixZh+F64cA+k4pTsh2X3p4jH2yRY+vXCQq9k
 d7rRCICHyD4sZf/TrYY6u8upjdK/Uuk=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-143-dvDDhTrdO6myH01wS7C5rA-1; Thu, 11 Jun 2020 10:14:46 -0400
X-MC-Unique: dvDDhTrdO6myH01wS7C5rA-1
Received: by mail-wr1-f70.google.com with SMTP id z10so2632181wrs.2
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jun 2020 07:14:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=mu41ns6tlaPd0ublGt+vL5nVsJ0GMTWOlMKa6k6fUbY=;
 b=WszWPlR6pcpwogJNK0CW+EGJlLdCsKa8CSLp4oKIMHPp8NpIZjMTqUQWlHEzz/M+gG
 1BLpHYJdyAve+J4HVbBfj45vRcXY3VtuYvUxZHYi5sszckwvRqjD81o3LeKhk9u1yQsO
 4yJM8vHpGqcbbbcLna8i5Xgf1v9kH3M7YhpI8dYsLeQfZDpWNUF9hvXJGdHvz+/bVJRs
 GPOZS94rH+S+swECyUAVzGnAfJhRmTGZ+GeGgtdhrWqOUuGIf7vHUSiRxMcr1qx7Q6Eh
 7S77a1oJHAGeMtf2+OAJlFjzxOPXjCOQs1iR0FJQ4/akd8Vd0MP8Hrb2eocZzDStMrsL
 Cozw==
X-Gm-Message-State: AOAM531lqjAfGKJXkV+7U/MRGzmQCfzxq65WIiVb1+bPafyMSsX5Wo/D
 9EWt1wHdQEnDzdQbxt/HWKko9Icr0xylFKzrBRusrxyzoXOlFzfxN4EFfFPvYxRAsg0eqJftnFq
 Y5rM6aZ08PLnWfjznvmG/y6K5ZSwsoaQ=
X-Received: by 2002:a7b:c08f:: with SMTP id r15mr8271432wmh.6.1591884885402;
 Thu, 11 Jun 2020 07:14:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxZbiFr9Vx0MUajI0kz079FBTECrsOoPAzndpCm+8MmXdsqqGsS+MO6oSnU6P8dIanKE2J1jw==
X-Received: by 2002:a7b:c08f:: with SMTP id r15mr8271412wmh.6.1591884885134;
 Thu, 11 Jun 2020 07:14:45 -0700 (PDT)
Received: from [192.168.1.62] ([151.30.82.57])
 by smtp.gmail.com with ESMTPSA id o15sm5191081wrv.48.2020.06.11.07.14.44
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Jun 2020 07:14:44 -0700 (PDT)
To: spice-devel <spice-devel@lists.freedesktop.org>
From: Francesco Giudici <fgiudici@redhat.com>
Message-ID: <596e9d0f-a8d2-ff4e-a34b-92bacfc52cfe@redhat.com>
Date: Thu, 11 Jun 2020 16:14:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] SPICE: contributor guidelines
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

Hi SPICE community!
    After thinking a while on the discussion in the thread:
"SPICE: changing the merge rules - a proposal"
I would like to come back on the topic and make explicit the way merge 
requests, changes and reviews are expected to be managed in our 
community. The core points that seems to me all of us want and agree 
upon are:

* Each merge request / patch should get a review (trivial patches may be 
an exception and be merged without review).

* Each merge request / patch should get a review in a timely manner.

Note that the meaning of "timely" and what a "trivial" patch is are not 
defined: I think this is exactly the point for an open source community. 
We don't want strict rules that force people to contribute in a specific 
way or under a strict time-frame and I (we) trust each other to do the 
right thing in respect of the project and the community. This is enough 
once there are clear guidelines.
There could be errors from time to time, sure... but as long as we stay 
together and collaborate as a community, they can be easily fixed.

Unfortunately enforcing some strict rules was exactly what I tried to do 
in my previous mail. It may have brought tension to our community and 
that was not my intention, sorry for that.

So, for the sake of clarity for actual and future contributors, if we 
want to write down a short and simple list of "rules" (guidelines) for 
contributing to the SPICE project, I would say they could be:

1) Get a review before merging a non-trivial patch
2) Keep asking reviews more and more if not getting one
3) Ensure each one asking a review gets one in a timely manner

I would love to read your comments, opinions and ideas.

Francesco

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
