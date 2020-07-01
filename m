Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E842105A5
	for <lists+spice-devel@lfdr.de>; Wed,  1 Jul 2020 10:03:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FA6C6E408;
	Wed,  1 Jul 2020 08:03:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D99CC6E408
 for <spice-devel@lists.freedesktop.org>; Wed,  1 Jul 2020 08:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593590605;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=4cLHqmxsfEwfj+gzaho/256u79lDsUI5MN70Wxjc3Jo=;
 b=fY3SuTmVRaexvTmtBzOIYeVxtFAy4sUTdCSKY43bWANAuqj3Rjnl/32uyhGxWGqFTTqduC
 UylDYMXnDyyFej67YtvR1m7WKPyvEZyTGg7u0oAZKklPA0sRKzb/LsfhS4Czy6/HcWCpkb
 1t1WBtUsdEDhykhPbjWqn4LHQap6+is=
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com
 [209.85.161.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-158-8QH4MGAJOlmcg2XyJulwDQ-1; Wed, 01 Jul 2020 04:03:22 -0400
X-MC-Unique: 8QH4MGAJOlmcg2XyJulwDQ-1
Received: by mail-oo1-f72.google.com with SMTP id v13so2503949oor.3
 for <spice-devel@lists.freedesktop.org>; Wed, 01 Jul 2020 01:03:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=4cLHqmxsfEwfj+gzaho/256u79lDsUI5MN70Wxjc3Jo=;
 b=nlfePM5URN8Ea9h/7bC8SmFxxzqtxfQ/+EWX7AZ9HAk1b6GcNBYTYSXDfhIka+I1R6
 5K33Ob4u9694yAxc+0CUNIf7SMX8vnhOwepAcxVHDmP4IG7/O16Im/CMD2GzuszvC4Lf
 eG3s7woa50GtzIGDRTgTLYPhfmxYorIfxJKsFwWmuXpPooAOZKdkxJoI/sOX8awt0uHF
 c6Et9M3UCgDtXXKqQRlZY5pyCZHB70rkBfp4oT4hhXgK6BoHe3HA6ksmrYedUg3cwS1I
 KCyQ706iO+ZQgwdphTYjvB5tmp9DlhvGduyf2ketFkYDBjF8BaicaAkCrVg0O5hvoHLJ
 0mpA==
X-Gm-Message-State: AOAM531Gm+86rUzIk2/hMiPReTma28U+TfFKUiSU3U/VCNOWcnMbrM1z
 5HrvlmRDjSgeCc0YSOeex4OztXdAc8eZokFwY/aT0znnkpmMMkNeGxw0YKQHe5/lpHX5bHyOzQS
 Uikx5LOhNiVjAo9n3ud5ziqnW6BffXvghDJ/2K78Dsaf1/tY=
X-Received: by 2002:a05:6830:198:: with SMTP id
 q24mr21489027ota.202.1593590601833; 
 Wed, 01 Jul 2020 01:03:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz8m4dnQzQ3ctXASs6LGPpiyDLmfH10uwNAf9w5zvITMf0lGCY+XUfltwgDocXC8CZf91awoPoPQDIdjqP5eWA=
X-Received: by 2002:a05:6830:198:: with SMTP id
 q24mr21489010ota.202.1593590601553; 
 Wed, 01 Jul 2020 01:03:21 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Pouget <kpouget@redhat.com>
Date: Wed, 1 Jul 2020 10:03:10 +0200
Message-ID: <CADJ1XR2+S76nWdj4ahYQxtw5PkR3cTwz+MrP5Q=7LktvL611jQ@mail.gmail.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kpouget@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Spice-devel] Identifying and removing potentially divisive language
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
Content-Type: multipart/mixed; boundary="===============0618915351=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0618915351==
Content-Type: multipart/alternative; boundary="000000000000b9341a05a95cb96e"

--000000000000b9341a05a95cb96e
Content-Type: text/plain; charset="UTF-8"

Hello SPICE community,

following Chris Wright (Red Hat CTO) blog post on "Making open source
more inclusive by eradicating problematic language" [1], I would like
to suggest that we have a look at SPICE source code to find out if/where
such language is used and how to remove it.

To illustrate the motivations of this move, consider the phrase "the
final solution". I am quite sure you would agree that these words
cannot be used inside a project. You would agree because the WWII
events are still in minds and not so ancient yet.
Git "master", or the "master/slave" pattern may not trigger similar
thoughts if your ancestors didn't suffer slavery;
"whitelist/blacklist" neither, if the color of your skin doesn't get
you into trouble (white=allow, black=deny).
Overall, I would advise, when thinking about these questions, not to
forget on which side your history/country/skin color/sexual
orientation sits you. If it's the oppressor side, you're not at the
right place to say it's not relevant.

---

I had a quick `grep` look at SPICE code base, searching for
`blacklist/whitelist/slave` and I could only find very few occurrences
of these words, which is nice. Can you find other problem words?

`master` is used for git default's branch, but not much
elsewhere. Let's discuss if we could get rid of this one, for instance
changing it to `main` (just a suggestion). I don't think that it can
break that many things (only the CI comes to my mind, where the
`master` branch may be treated differently) as git name default
branch's name is often omitted in the usual workflows.

Please share your thoughts about this

best regards,

Kevin


1:
https://www.redhat.com/en/blog/making-open-source-more-inclusive-eradicating-problematic-language

--000000000000b9341a05a95cb96e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello SPICE community,<br><br>following Chris Wright (Red =
Hat CTO) blog post on &quot;Making open source<br>more inclusive by eradica=
ting problematic language&quot; [1], I would like<br>to suggest that we hav=
e a look at SPICE source code to find out if/where<br>such language is used=
 and how to remove it.<br><br>To illustrate the motivations of this move, c=
onsider the phrase &quot;the<br>final solution&quot;. I am quite sure you w=
ould agree that these words<br>cannot be used inside a project. You would a=
gree because the WWII<br>events are still in minds and not so ancient yet. =
<br>Git &quot;master&quot;, or the &quot;master/slave&quot; pattern may not=
 trigger similar<br>thoughts if your ancestors didn&#39;t suffer slavery;<b=
r>&quot;whitelist/blacklist&quot; neither, if the color of your skin doesn&=
#39;t get<br>you into trouble (white=3Dallow, black=3Ddeny).<br>Overall, I =
would advise, when thinking about these questions, not to<br>forget on whic=
h side your history/country/skin color/sexual<br>orientation sits you. If i=
t&#39;s the oppressor side, you&#39;re not at the<br>right place to say it&=
#39;s not relevant.<br><br>---<br><br>I had a quick `grep` look at SPICE co=
de base, searching for<br>`blacklist/whitelist/slave` and I could only find=
 very few occurrences<br>of these words, which is nice. Can you find other =
problem words?<br><br>`master` is used for git default&#39;s branch, but no=
t much<br>elsewhere. Let&#39;s discuss if we could get rid of this one, for=
 instance<br>changing it to `main` (just a suggestion). I don&#39;t think t=
hat it can<br>break that many things (only the CI comes to my mind, where t=
he<br>`master` branch may be treated differently) as git name default<br>br=
anch&#39;s name is often omitted in the usual workflows.<br><br>Please shar=
e your thoughts about this<br><br>best regards,<br><br>Kevin<br><br><br>1: =
<a href=3D"https://www.redhat.com/en/blog/making-open-source-more-inclusive=
-eradicating-problematic-language">https://www.redhat.com/en/blog/making-op=
en-source-more-inclusive-eradicating-problematic-language</a></div>

--000000000000b9341a05a95cb96e--


--===============0618915351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0618915351==--

