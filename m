Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E07211252
	for <lists+spice-devel@lfdr.de>; Wed,  1 Jul 2020 20:05:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83A436E3EF;
	Wed,  1 Jul 2020 18:05:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 316EF6E997
 for <spice-devel@lists.freedesktop.org>; Wed,  1 Jul 2020 18:05:05 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id B2167AB98;
 Wed,  1 Jul 2020 18:05:03 +0000 (UTC)
Date: Wed, 1 Jul 2020 20:05:02 +0200
From: Michal =?iso-8859-1?Q?Such=E1nek?= <msuchanek@suse.de>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <20200701180502.GE21462@kitsune.suse.cz>
References: <CADJ1XR2+S76nWdj4ahYQxtw5PkR3cTwz+MrP5Q=7LktvL611jQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADJ1XR2+S76nWdj4ahYQxtw5PkR3cTwz+MrP5Q=7LktvL611jQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Wed, Jul 01, 2020 at 10:03:10AM +0200, Kevin Pouget wrote:
> Hello SPICE community,
> 
> following Chris Wright (Red Hat CTO) blog post on "Making open source
> more inclusive by eradicating problematic language" [1], I would like
> to suggest that we have a look at SPICE source code to find out if/where
> such language is used and how to remove it.
> 
> To illustrate the motivations of this move, consider the phrase "the
> final solution". I am quite sure you would agree that these words
> cannot be used inside a project. You would agree because the WWII
> events are still in minds and not so ancient yet.
> Git "master", or the "master/slave" pattern may not trigger similar
> thoughts if your ancestors didn't suffer slavery;
> "whitelist/blacklist" neither, if the color of your skin doesn't get
> you into trouble (white=allow, black=deny).
> Overall, I would advise, when thinking about these questions, not to
> forget on which side your history/country/skin color/sexual
> orientation sits you. If it's the oppressor side, you're not at the
> right place to say it's not relevant.
First off, I would object to 'oppressor side'. That is pretty divisive
language. And even very imprecise. Most of the world should be
considered 'unaffected' in the sense they do not live in the US or
select African countries with relatively recent history of slavery where
the actual terms 'slave' and 'master' might bear some connection to the
practice.
Even if someones grand-grand-grand-farther was a slaver putting them on
an 'oppressor side' is very discriminatory in my view.

Secondly, if you do not think that people not from the affected group
are quialified to reject such change what is your qualification to
propose it?

See also
https://lore.kernel.org/git/CAAOnFsNUB_+NZMGnu2yasL8tk_KTfqPY6JiHOpvYHiyY_Lytrw@mail.gmail.com/
> 
> ---
> 
> I had a quick `grep` look at SPICE code base, searching for
> `blacklist/whitelist/slave` and I could only find very few occurrences
> of these words, which is nice. Can you find other problem words?
> 
> `master` is used for git default's branch, but not much
> elsewhere. Let's discuss if we could get rid of this one, for instance
> changing it to `main` (just a suggestion). I don't think that it can
That is also reportedly offensive - see
https://lore.kernel.org/git/20200616210701.22924-1-zeevriend@gmail.com/
> break that many things (only the CI comes to my mind, where the
> `master` branch may be treated differently) as git name default
> branch's name is often omitted in the usual workflows.
> 
> Please share your thoughts about this

Thanks

Michal
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
