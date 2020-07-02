Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2740F21286C
	for <lists+spice-devel@lfdr.de>; Thu,  2 Jul 2020 17:47:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 980426EB11;
	Thu,  2 Jul 2020 15:47:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B9C76EB11
 for <spice-devel@lists.freedesktop.org>; Thu,  2 Jul 2020 15:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593704819;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:in-reply-to:in-reply-to:  references:references;
 bh=0j5aUN5DYBkwNMmXN/bBWEi8Z8Y9+suYdfmMXFPXUOA=;
 b=Qk2c7Jog6JMKpC5zrP9DdbCOpCtgetCmtVLkptJkaFTVqS4YFdF+RpgqCg8mpwnjQB9cor
 Q1NOid4PIicqBSyAYUPnRMWNF/EkismdH2UCFXHsJ6DaNoyWqTgZOn0Oanxss4Bnq38ktu
 ksV5Ft6aLZ06AtJ3qCFnW5WZqZVTQXc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-187-eeamijDIMqa7xheFtXHhTw-1; Thu, 02 Jul 2020 11:46:45 -0400
X-MC-Unique: eeamijDIMqa7xheFtXHhTw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BBCF81940920
 for <spice-devel@lists.freedesktop.org>; Thu,  2 Jul 2020 15:46:44 +0000 (UTC)
Received: from redhat.com (unknown [10.36.110.52])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 35C6B100238C;
 Thu,  2 Jul 2020 15:46:39 +0000 (UTC)
Date: Thu, 2 Jul 2020 16:46:35 +0100
From: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20200702154635.GN1888119@redhat.com>
References: <CADJ1XR2+S76nWdj4ahYQxtw5PkR3cTwz+MrP5Q=7LktvL611jQ@mail.gmail.com>
 <20200701141507.oljra4ncxridh6kl@wingsuit>
 <20200702101045.GG1888119@redhat.com>
 <231701763.32923904.1593698964424.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <231701763.32923904.1593698964424.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.14.3 (2020-06-14)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=berrange@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Spice-devel] Identifying and removing potentially divisive
 language
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Thu, Jul 02, 2020 at 10:09:24AM -0400, Frediano Ziglio wrote:
> 
> > On Wed, Jul 01, 2020 at 04:15:07PM +0200, Victor Toso wrote:
> > > Hi,
> > > 
> > > On Wed, Jul 01, 2020 at 10:03:10AM +0200, Kevin Pouget wrote:
> > > > Hello SPICE community,
> > > > 
> > > > following Chris Wright (Red Hat CTO) blog post on "Making open
> > > > source more inclusive by eradicating problematic language" [1],
> > > > I would like to suggest that we have a look at SPICE source
> > > > code to find out if/where such language is used and how to
> > > > remove it.
> > > > 
> > > > To illustrate the motivations of this move, consider the phrase
> > > > "the final solution". I am quite sure you would agree that
> > > > these words cannot be used inside a project. You would agree
> > > > because the WWII events are still in minds and not so ancient
> > > > yet.  Git "master", or the "master/slave" pattern may not
> > > > trigger similar thoughts if your ancestors didn't suffer
> > > > slavery; "whitelist/blacklist" neither, if the color of your
> > > > skin doesn't get you into trouble (white=allow, black=deny).
> > > > Overall, I would advise, when thinking about these questions,
> > > > not to forget on which side your history/country/skin
> > > > color/sexual orientation sits you. If it's the oppressor side,
> > > > you're not at the right place to say it's not relevant.
> > > > 
> > > > ---
> > > > 
> > > > I had a quick `grep` look at SPICE code base, searching for
> > > > `blacklist/whitelist/slave` and I could only find very few
> > > > occurrences of these words, which is nice. Can you find other
> > > > problem words?
> > > > 
> > > > `master` is used for git default's branch, but not much
> > > > elsewhere. Let's discuss if we could get rid of this one, for
> > > > instance changing it to `main` (just a suggestion). I don't
> > > > think that it can break that many things (only the CI comes to
> > > > my mind, where the `master` branch may be treated differently)
> > > > as git name default branch's name is often omitted in the usual
> > > > workflows.
> > > > 
> > > > Please share your thoughts about this
> > > 
> > > Not a native english speaker but I've read a few discussions
> > > around the user of master as git as in master copy instead of
> > > master/slave. Another examples of the use of master from native
> > > speakers included master as in school teacher or someone that is
> > > in charge of something (the offense being where the subject of
> > > control is the slave).
> > > 
> > > Still, I don't really mind to changing it to main, even more if
> > > there are people that feel this can really be offensive in some
> > > way..
> > 
> > I think the primary downside in changing the branch name is if we
> > end up with different branch names chosen by each project. There is
> > value in the fact that essentially every project uses the same
> > branch name for their latest development branch, as it gives end
> > users consistent expectations.
> > 
> > I'm in favour of changing the branch name, but my inclination is
> > to wait and see a little longer, in order to identify what the
> > new defacto standard ends up being. "main" is a good bet as a new
> > standard, but it would be nice to see it "in action".
> > 
> > I'd be looking for two possible signs
> > 
> > Whether the Git maintainers themselves decide to standardize
> > on a new term.
> > 
> > What GitHub actually decide upon & roll out.
> > 
> > Either of those two decisions will set a defacto standard across a
> > vast number of projects, and thus it will be beneficial to have
> > alignment with those decisisons.
> 
> Hi,
>    I have different feeling about these changes. On one side I agree with
> Michal that these changes appears positive but they are potentially
> aggravating the real issue just hiding the problem.

I think it is a real stretch of the imagination to claim changing the
vocabulary is making the issue worse. The vocabulary change is certainly
is not a solution to any of the issues, it is just one quite small piece
of the puzzle. It is simply a very easy piece to address in the course
of development, with essentially no real technical downside. In many
cases changing the vocabulary will actually improve things, because
master/slave and whitelist/blacklist are often poorly fitting metaphors
in the first place.

> About the words I think "master" have multiple meaning, removing blindly
> because some meaning could remember some bad memories looks excessive.

I hope this wasn't intentional, but aluding to slavery as "some bad memories"
comes across as really uncaring :-(

The history of slavery resulted in deaths of millions of people and is
something whose after effects continue to be felt by people in a very
real way to this very day. It isn't confined to the past or memories.

> And even if this word is used in the "master&slave" reference hinting
> human slavery there are on the other side many uses (like master&slave
> relationship in electronic circuit or master&slave used in communication
> or in psychology) were this is far from human slavery.
> "blacklist" is very similar, it's used in a lot of places without negative
> references, "black" is simply a color which, being usually associated
> with no light is seen negative, not for race discrimination (like yin
> and yang concept). I checked multiple dictionaries and hardly find
> races references for "blacklist". For the same reasons we should remove
> wording like "dark", "white", "yellow", "black".

I'll simply link to this doc which I feel gives a good description of
the rationale for change to add to the blog post that was mentioned
at the start of the thread.

  https://tools.ietf.org/id/draft-knodel-terminology-00.html

Several notable projects have gone through the cleanup exercise to
no ill effect. As I mentioned above, my experiance is that when
finding use of the vocabulary, it often turned out to be a badly
fitting metaphor in the first place, so was beneficial to change
it no matter what.

> About the "master" branch technically can be changed easily. I won't
> wait a "de-facto" change, if all project would wait a "de-facto" change
> the only name would be "master"! So if most of the group agree to change
> and like "main" I would just rename to "main".

Of course if everyone waited for others to make a decision first, nothing
would happen. That's not the current situation though. The two case I
mention are of communities actively considering the change. In the
(unlikely) event that both decide not to change the default branch
name, then certainly spice should go ahead and do a unilateral change
if maintainers think it is worthwhile.

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
