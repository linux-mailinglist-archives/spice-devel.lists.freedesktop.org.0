Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DCA21C7F5
	for <lists+spice-devel@lfdr.de>; Sun, 12 Jul 2020 10:01:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFE6D6E203;
	Sun, 12 Jul 2020 08:01:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59CCD6E42B
 for <spice-devel@lists.freedesktop.org>; Sun, 12 Jul 2020 04:45:43 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id d18so7902765edv.6
 for <spice-devel@lists.freedesktop.org>; Sat, 11 Jul 2020 21:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=IOV+/RRN1dIQtioJxyMLl5l0tqd+oPJt4OvoEe0h9sA=;
 b=jv5grQ8ZGV5YkCBRgljlPoZ5AKgMn0rbJ4lRCR4zNaZJ+FMM+ojYh7B0uzTwqAyZld
 W5InknF35t/890z169k7MuywQ7et+n9R++JGhTfDZbxriQvRZD8jCorSUyEWKQ4ZZsQn
 1cwThim/EB9xaHA8+Vh3YXV4SgU8rmRLJJE4qCZ2CozZKNlB4m36V5uJ+P5z+d7WLXbH
 vk3eqJ2UJVcnX+0DytTKTvuAm+0eqlbsW2k1tYDIssC4Hi1539Jory8flaIOo+J/7DUj
 dL39a4/bAAFI5tN7sMA07R8UcGhNt52D03JqJgrhYW4pLwAOG2ykHVP7qhymVdZtj8PP
 AD/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=IOV+/RRN1dIQtioJxyMLl5l0tqd+oPJt4OvoEe0h9sA=;
 b=uOKJhvuER4e7+mfSFg6MHDtIQWn4R/umT7TSjryZTuP5S8oDFBS1CzFcwM4kHZQVfQ
 qw79wK7i69vb4jI+2mis+hhjfGLkfKEnLPePmDEQLldh1IcgJb92aqQPKMkP4U7nbDsE
 YdbefzHcRSSGTnwS9aU0bfuPgtdIhiKI20FJpgHFa7jIuy2nX7xLlpBpy+jy5BuJWk3c
 n+foZdWNKciX4XXyL949mKomk09ZsjoHCWtucwFdEf+LP5BLp1//HwOOklWYqP/3QQax
 JTObXNsXXq3WWfsdckp2x2tElNplWPB+392JWphbAwYci4B12NUD/PUW95YlCDMNHc2R
 dccw==
X-Gm-Message-State: AOAM530cUYBFAQoeVoK+qqvpwyfRsq4cHHH96kFmRhPjWHDCXsRCJwtT
 pO+mK1mSrTwXaGTojxSof/aGbMkEFPlaHamYhUYpPvhl
X-Google-Smtp-Source: ABdhPJwQTKYYyO9PyPwx/3WaBV3mMMH63tnQcwJunn8Iz7u6LSGoDScNoCsEhd2DZhiXvKFYcoSocGkNLsv5TFxN0XU=
X-Received: by 2002:aa7:d0d1:: with SMTP id u17mr85781556edo.13.1594529141594; 
 Sat, 11 Jul 2020 21:45:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6402:602:0:0:0:0 with HTTP; Sat, 11 Jul 2020 21:45:41
 -0700 (PDT)
From: Wesley Parish <wobblygong@gmail.com>
Date: Sun, 12 Jul 2020 16:45:41 +1200
Message-ID: <CACNPpeY4NtOOo7d9AvB0PZ0MoE12H0_C+M5-7E4wRKZzkV3edg@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Sun, 12 Jul 2020 08:01:04 +0000
Subject: [Spice-devel] last known good spice guest tools for WinXP guest?
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

Hi

I've got a Windows XP guest in a Gnome Box and I'm wondering which of
the earlier releases of the spice guest tools is known to work well
with Windows XP. It's a 64-bit, though I'm also intending to install
32-bit as well. (I've tried installing spice-guest-tools-latest but it
refuses to install.)

My OS is Fedora 31, x86_64, and the Gnome Boxes release is 3.36.

Thanks

Wesley Parish
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
