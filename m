Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE401D92FE
	for <lists+spice-devel@lfdr.de>; Tue, 19 May 2020 11:10:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D898E6E2E9;
	Tue, 19 May 2020 09:10:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FB6B6E2E9
 for <spice-devel@lists.freedesktop.org>; Tue, 19 May 2020 09:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589879402;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oD2C6O2wxBXpCokVBLy27VbFvWrQ2gACJaYP+sAHxNA=;
 b=cnomRHtiFS83uX1tSdXTRmgLC7IOeroaY2JR/qXvNFRb3sqRTsSteUYxhHNpKGzpjihl3+
 TUfwOVXi11Gv6cyPYqZOfyuTV8RGqQ6AZYWXBClTj25y9XgtP3F0d+M/PGTLP1WAOThJvy
 58Xl4kgnJRTVwWrQsrVpC5uFt4HkClo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-211-gysuQssLOoq-I5qdHV0gtA-1; Tue, 19 May 2020 05:10:01 -0400
X-MC-Unique: gysuQssLOoq-I5qdHV0gtA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3C3451005510
 for <spice-devel@lists.freedesktop.org>; Tue, 19 May 2020 09:10:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 35A245799C
 for <spice-devel@lists.freedesktop.org>; Tue, 19 May 2020 09:10:00 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2DF2A1809542;
 Tue, 19 May 2020 09:10:00 +0000 (UTC)
Date: Tue, 19 May 2020 05:09:59 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francesco Giudici <fgiudici@redhat.com>
Message-ID: <1774733971.27477007.1589879399793.JavaMail.zimbra@redhat.com>
In-Reply-To: <63b7a25f-0f32-1626-5c1b-3811a4f0467f@redhat.com>
References: <63b7a25f-0f32-1626-5c1b-3811a4f0467f@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.24, 10.4.195.14]
Thread-Topic: SPICE: changing the merge rules - a proposal
Thread-Index: CAo+ECCkVWYSwS+RC9EBBlDTTpNUnQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

> 
> Hi,
>    the community around the SPICE project always tried to follow one
> fundamental, implicit rule for accepting code contributions to the
> project: every merge request (beside trivial patches) should be reviewed
> and acked at least by one before getting merged.
> While everyone agrees with this fundamental rule, the actual status of
> some SPICE projects makes the rule impractical to let the project move
> forward.
> Let's consider the spice/spice project as an example: the number of
> contributions is very low, both on the commit side (only 4 different
> contributors with more than 1 commit from the beginning of the year, and
> a single contributor with 90% of commits) and on the review side (in the
> last 40 merge requests before the C++ switch one, 21 had no comments).
> The x11spice project is another example: we have only 4 contributors
> from the beginning of the year (and a single contributor holding 70% of
> the commits) and the reviews on the gitlab merge requests have been
> provided by two people only, each one reviewing the merge requests of
> the other.
> For the sake of having the projects being able to move forward with a
> reduced number of contributors/reviewers, the proposal is to *allow* a
> maintainer to merge a Merge Request without an explicit ack if the three
> following conditions are met:
> 1) The Merge Request has been pending for at least 3 weeks without
> getting new comments
> 2) The Merge Request submitter has kept asking a review on a weekly basis
> 3) There are no pending nacks on the Merge Request
> 
> Note that having patches reviewed would still be the preferred way. If
> at any time the number of contributors would raise again, we can switch
> back to the mandatory review rule. Until then the priority is to allow
> the project to move forward.
> 
> What do you think? Please share your thoughts and/or contribute with
> your own ideas.
> 
> Thanks
> 
> Francesco
> 

Hi,
   I agree on the proposal. This problem has been going on for years now.
The issue involve all repositories. The active part of community dealing
with code review is very low.
I think 3 weeks are perfectly fine. We should be in a trustful community,
if somebody is very busy in daily activity or on holidays whomever remains
should be in charge. Is not that is a person in a team goes on holiday all
the work of the team is impeded.

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
