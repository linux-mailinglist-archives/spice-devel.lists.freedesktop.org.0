Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D747E1D75AE
	for <lists+spice-devel@lfdr.de>; Mon, 18 May 2020 12:56:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E29C3899E7;
	Mon, 18 May 2020 10:56:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D7E1899E7
 for <spice-devel@lists.freedesktop.org>; Mon, 18 May 2020 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589799384;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:in-reply-to:in-reply-to:  references:references;
 bh=yHUdqO4ku8HNpGpEcSjCu6EIsPuCjw87A4iJDrQYqww=;
 b=aVSX2EqxjaQYnfGFTn+tOzwiz4RjiMEQMaPCAML0g0ilNm+hTE13fn3T/dZnOI76bJvMUJ
 RFa7NZGgdWjfdDOOzcaaHP2NYQr62ky6d6enmBI9pJrE0/Zb9llA5okoJNXsXo/DQPdNOw
 X/JnXnPkw30CeKORsadjkO79Teg2+K4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-343-CMrivwQ7NBK8ORL21a3YWw-1; Mon, 18 May 2020 06:56:21 -0400
X-MC-Unique: CMrivwQ7NBK8ORL21a3YWw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2411A100726A
 for <spice-devel@lists.freedesktop.org>; Mon, 18 May 2020 10:56:20 +0000 (UTC)
Received: from redhat.com (unknown [10.36.110.61])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2FF5B78B4E;
 Mon, 18 May 2020 10:56:18 +0000 (UTC)
Date: Mon, 18 May 2020 11:56:16 +0100
From: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
To: Francesco Giudici <fgiudici@redhat.com>
Message-ID: <20200518105616.GH1430944@redhat.com>
References: <63b7a25f-0f32-1626-5c1b-3811a4f0467f@redhat.com>
MIME-Version: 1.0
In-Reply-To: <63b7a25f-0f32-1626-5c1b-3811a4f0467f@redhat.com>
User-Agent: Mutt/1.13.4 (2020-02-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Spice-devel] SPICE: changing the merge rules - a proposal
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
Reply-To: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Fri, May 15, 2020 at 07:05:50PM +0200, Francesco Giudici wrote:
> Hi,
>   the community around the SPICE project always tried to follow one
> fundamental, implicit rule for accepting code contributions to the project:
> every merge request (beside trivial patches) should be reviewed and acked at
> least by one before getting merged.
> While everyone agrees with this fundamental rule, the actual status of some
> SPICE projects makes the rule impractical to let the project move forward.
> Let's consider the spice/spice project as an example: the number of
> contributions is very low, both on the commit side (only 4 different
> contributors with more than 1 commit from the beginning of the year, and a
> single contributor with 90% of commits) and on the review side (in the last
> 40 merge requests before the C++ switch one, 21 had no comments).
> The x11spice project is another example: we have only 4 contributors from
> the beginning of the year (and a single contributor holding 70% of the
> commits) and the reviews on the gitlab merge requests have been provided by
> two people only, each one reviewing the merge requests of the other.

I think these paragraphs here are the highlighting the key issue. There
just is not sufficient contribution to SPICE in general. I think the most
important thing is to consider why the SPICE project has such a low rate
of contribution, and more importantly what steps can be done to make SPICE
more interesting to attract contributors.

For a project that has such a large codebase and featureset, it is not
healthy to have such a small community. The "bus factor" is waay too
low here, such that SPICE would be in serious trouble as a project if
one or two main contributors moved onto to different work.

So for any changes in process, it is wise to consider what effects those
change have on people SPICE would like to attract as new contributors.

For example, if new feature work by an existing contributor is discussed
out of band between two contributors, instead of via merge request comments
this sets up new contributors up as second class citizenships - the out of
band discussions are essentially invisible to them, so they can't see or
understand the rationale for decisions. This makes it harder for them to
learn how to effectively contribute to the project.

This is the big thing that concerned me about the merge request that adopted
C++. Reading between the lines I get the impression this was indeed discussed
between the several contributors but out of band, instead of on the merge
request which had no comments. Thus that discussion is invisible to any 3rd
party contributor interested in SPICE. I think this risks discouraging people
from contributed to SPICE, so it is something to be wary of doing too often,
especially for really big technical changes.  

> For the sake of having the projects being able to move forward with a
> reduced number of contributors/reviewers, the proposal is to *allow* a
> maintainer to merge a Merge Request without an explicit ack if the three
> following conditions are met:
> 1) The Merge Request has been pending for at least 3 weeks without getting
> new comments
> 2) The Merge Request submitter has kept asking a review on a weekly basis

Note since spice is using gitlab, it is possible to explicitly tag people
by name in the comments to ask for reviews, and/or assign people as a
reviewer. I'd suggest to make use of such tagging, so that people can be
aware they they are being explicitly asked for feedback if something has
been sitting for a long time.

> 3) There are no pending nacks on the Merge Request
> 
> Note that having patches reviewed would still be the preferred way. If at
> any time the number of contributors would raise again, we can switch back to
> the mandatory review rule. Until then the priority is to allow the project
> to move forward.

Contributors are unlikely to magically rise again on their own, without
proactive work to make SPICE a more attractive project to contribute to.
This is a very difficult problem for projects in general, not just SPICE,
to which I don't have any magic answers. At least try to think about what
you like to see from projects when you are approaching them as a new
contributor, and then make sure SPICE follows these practices where ever
possible / practical. Code being pushed with no review is a turn-off to
me as a external contributor, unless the project is clearly setup as a
single-author personal project, rather than a team project.

Regards,
Daniel
-- 
|: https://berrange.com      -o-    https://www.flickr.com/photos/dberrange :|
|: https://libvirt.org         -o-            https://fstop138.berrange.com :|
|: https://entangle-photo.org    -o-    https://www.instagram.com/dberrange :|

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
