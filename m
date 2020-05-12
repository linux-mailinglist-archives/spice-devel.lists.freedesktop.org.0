Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DABE71CF90E
	for <lists+spice-devel@lfdr.de>; Tue, 12 May 2020 17:25:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4B366E114;
	Tue, 12 May 2020 15:25:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 936506E114
 for <spice-devel@lists.freedesktop.org>; Tue, 12 May 2020 15:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589297120;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6rQYMlPd7zLDsK5YjaJqolgg21po9SFbSxqCS/A0ZgI=;
 b=fY++PcDmPw7+ZVjTL//4K2MbJP0vvU8OzZPAHEyQcC3BT34jfNAiKQTX0kS6D+5Nh4iLU3
 vgCqc0eVDr2I6YdyTP7olUUx22rVO+whtDXlQt6dAShfl9QItJI48LfCkB8GB6SI/zgxH1
 Ukr1Nqo3TWtr2uAS11p+nvRlqLLWEfs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-384-1AB9fmzHO2uX8loP6TDOow-1; Tue, 12 May 2020 11:25:18 -0400
X-MC-Unique: 1AB9fmzHO2uX8loP6TDOow-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 97CE4107ACF5
 for <spice-devel@lists.freedesktop.org>; Tue, 12 May 2020 15:24:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 90CB710001B3
 for <spice-devel@lists.freedesktop.org>; Tue, 12 May 2020 15:24:55 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6668F4CA95;
 Tue, 12 May 2020 15:24:55 +0000 (UTC)
Date: Tue, 12 May 2020 11:24:55 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: =?utf-8?Q?Marc-Andr=C3=A9?= Lureau <marcandre.lureau@redhat.com>
Message-ID: <1123774469.26662434.1589297095157.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAMxuvawzmqKdLwk6AvthZkmZTr9T+q+UU8Q+raVHj0nZ2swhiw@mail.gmail.com>
References: <CAMxuvawzmqKdLwk6AvthZkmZTr9T+q+UU8Q+raVHj0nZ2swhiw@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.16]
Thread-Topic: About decisions and reviews
Thread-Index: QPATbmfV4C/aIapHxMqHEQmvOBxnJA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] About decisions and reviews
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
> 
> About "Move code to C++":
> https://gitlab.freedesktop.org/spice/spice/-/merge_requests/62
> 
> I would like to know how the decision happened. As long as I have been
> involved in the Spice project, we had open discussions and did
> mandatory review for anything non-trivial.
> 
> This change is substantial, and impacts the work and contribution of
> others. Where did the discussion happen? Who reviewed the code
> changes?
> 
> thanks
> 

Hi,
  your description of the project looks a bit unrealistic to me.

About 6 months ago we moved to Gitlab for code reviews. The change was
announced to the ML which was the old way of doing. The procedure with
Gitlab is more or less:
- you prepare and post a MR to Gitlab (previously you would send a mail);
- people wanting to review should be subscribed to Gitlab, receive a
  notification and they can decide to open discussions, comment or propose
  changes (previously they had to reply to mails);
- code is changed based on discussions, comments and proposals;
- there is some final acknowledge of the MR, MR is merged.

Now:
- MR was opened in the public, questions and comments were on the cover
  letter;
- people had the time to comments and discussions. Only one public
  discussion raised, correctly addressed and marked as solved, no
  other comments following for a month so MR was correctly reviewed;
- there was some final acknowledge so it was merged.

The question here is "was it enough"? Honestly this reminded my the
"epsilon" constant in Math. Something really close to zero... but still
positive! I raised the problem of the poor reviews multiple time, trying
to push people. I was discouraged multiple times. Correctly contributions
are made voluntarily and it's not good to force people to work voluntarily.
In a democracy people that does not vote are basically not counted.

What is your expectation? Every hunk addressed? What is the frame time?
Maybe finish reading and commenting the cover letter for the end of
the year?

Some time ago, when reviews were still done with ML, but the issue was clearly
present I tried to stop reviewing myself. The result was clear. Most of the
external code contributions were simply ignored, no replies at all.
Some reached almost 2 months without any reply... then I started replying
again!
The situation has been like this for years and it get worse and worse.
Today Victor linked a 3 years old proposal for some mouse enhancement.

The definition of contributor involve contributions. Keeping apart non-code
contributions what are the code contributions? Surely new code, reviews,
comments and proposal on code. Now, if people does not review, open or
continue discussion or proposal are they real contributors? How many
stable contributors can Spice project state?

Let's look at the major feature in the last Spice server release:
Windows support and WebSockets. Beside being myself strong contributing to
both (first was just a rainy weekend challenge) the second had a bit too
long history.
The patches for WebSockets were sent years ago reviewed quickly without much
attempts to help the writer solving the raised issues. Some proposal were
pretty unrealistic (like "why don't you rewrite everything?"). This was not
even the first attempt to add this feature to Spice. The total realizations
took 7 years. I would saying not a great way to involve new contributors.
I want the project to evolve more quicker.

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
