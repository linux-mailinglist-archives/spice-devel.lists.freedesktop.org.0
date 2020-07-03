Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 099B5213CB0
	for <lists+spice-devel@lfdr.de>; Fri,  3 Jul 2020 17:37:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E91766E55E;
	Fri,  3 Jul 2020 15:37:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4462E6E179
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Jul 2020 15:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593790623;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wKZ4YmOhFo1LXp/J2S2o4tQ4qHCp0ZYqcvjG7QZKteE=;
 b=SfzFpef/ndCq0wti9KMhVloh96AGZfu4S9GSyBJwCBc1wny8Vt97HChw6BFsEGVr9tNeVb
 zOhjfqQKTN3GwXVMSsMfVqnAYVOg+z73iNaYSq90C//dj05tOcxJB8dlzlesRaqmNZDNUo
 CsdsLA1IhA6exFtHv/3EAs0JwuN+JNg=
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-228-x19T6gKnPNCD5vUGr0JL9g-1; Fri, 03 Jul 2020 11:36:56 -0400
X-MC-Unique: x19T6gKnPNCD5vUGr0JL9g-1
Received: by mail-oi1-f200.google.com with SMTP id n67so16825815oif.14
 for <spice-devel@lists.freedesktop.org>; Fri, 03 Jul 2020 08:36:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wKZ4YmOhFo1LXp/J2S2o4tQ4qHCp0ZYqcvjG7QZKteE=;
 b=snxfGrcVPsxOm/8Sr4yOia3vbimYYAXPCU+U3IS/GP4ukEnVjAwELVOedGXiNVnBPK
 Hmal+60t8QtnQYhRuvA8KZflegGMhbWQ+ZajpuMqssOEWhW3px6fmql0dIBABwYTb4Fk
 MQNbcRn705R4D6L6xe81GBdXyAXqxnvk96G8W86A0Omo5zhgjpgdhk7YWyjAs3lzLDLr
 Lh6ugAxwAUt2BZPI1T2xgwgpP9VGSCTRw5UuIx2kjwyCz4kozJYVAtzMrBQexBOG58OH
 atFzv4Np4TBE3jwY6IxyvNQ0yWhg2rkV7tDCie7IxhWz3q00lvG5IMuos8YHtQAGrecR
 XiRg==
X-Gm-Message-State: AOAM5322zPfFQ+kbQ98t+bOvyosudRFrdvjektCwXKYIs7kP5SIWQMTn
 NMzCFBMbPeHfEBEkHDaAbdhLXR59RkNcXwHqW1V6HGDEhSFN+08qb9b2onjTy7+n6p8u6Wv+Eif
 tj3Azx0QviTNEr7WSadg06RskZ/VHcnWTvqp+M9Ay0rHj3ko=
X-Received: by 2002:aca:bed5:: with SMTP id o204mr6397778oif.169.1593790615765; 
 Fri, 03 Jul 2020 08:36:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwQYDgS08q2eVR7UxGSRAsr79zn7PH9+E8Oh+30GwRVwlYnzOnSsVMNnKxtEKZ++0RPBoObseXHJujYkkBjtwQ=
X-Received: by 2002:aca:bed5:: with SMTP id o204mr6397762oif.169.1593790615519; 
 Fri, 03 Jul 2020 08:36:55 -0700 (PDT)
MIME-Version: 1.0
References: <CADJ1XR2+S76nWdj4ahYQxtw5PkR3cTwz+MrP5Q=7LktvL611jQ@mail.gmail.com>
 <20200701141507.oljra4ncxridh6kl@wingsuit>
 <20200702101045.GG1888119@redhat.com>
 <231701763.32923904.1593698964424.JavaMail.zimbra@redhat.com>
 <CAD5yKqxLyUhX0Eq9XffjeEHOjY5yVWxH-5rg2=7oZTuLfrGVEQ@mail.gmail.com>
 <2041603877.33468028.1593759793858.JavaMail.zimbra@redhat.com>
In-Reply-To: <2041603877.33468028.1593759793858.JavaMail.zimbra@redhat.com>
From: Kevin Pouget <kpouget@redhat.com>
Date: Fri, 3 Jul 2020 17:36:44 +0200
Message-ID: <CADJ1XR3rmm3cNNhtZpU5y=QRqxkEG8oyY55OP_qJdsFpo3Fgfw@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kpouget@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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
Content-Type: multipart/mixed; boundary="===============0866922731=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0866922731==
Content-Type: multipart/alternative; boundary="0000000000007c1da305a98b4b21"

--0000000000007c1da305a98b4b21
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 3, 2020 at 9:03 AM Frediano Ziglio <fziglio@redhat.com> wrote:

>
> Well... Your examples are contradicting: the "master/slave" relation used
> in electronics or psychology are re-using the slavery concepts too... Thi=
s
> doesn't make it right :-)
>
> That depends on the etymology and history, not an expert on this.
> I think there's a mild root, but still this require some technical
> language explanation.
> They can contradict only if they came from 2 separate roots, if this is
> true is means the there are multiple concepts involved not only one.
>
> Now I'm not working in electronics or psychology, so I'm not going to try
> and change their wording.
>
> Regarding changing it now rather than waiting: Daniel is mentioning two
> hints - git, or github. As our code is hosted in gitlab, I would add that
> one too :)
> The idea being that if they choose a new word, it will become the new
> default, and we could align with them for consistency, rather than arguin=
g
> among us and picking a potentially different name
>
> It makes sense, but more at Gitlab level, not a world global de-facto for
> me
>

I agree that it makes sense to wait for gitlab or git projects decide

> This doesn't prevent us from changing words that are in our code (like
> blacklist/whitelist?). I think there's not a lot of them.
>
> Regards,
> Julien
>
>
> Le jeu. 2 juil. 2020 =C3=A0 16:09, Frediano Ziglio <fziglio@redhat.com> a
> =C3=A9crit :
>
>>
>> > On Wed, Jul 01, 2020 at 04:15:07PM +0200, Victor Toso wrote:
>> > > Hi,
>> > >
>> > > On Wed, Jul 01, 2020 at 10:03:10AM +0200, Kevin Pouget wrote:
>> > > > Hello SPICE community,
>> > > >
>> > > > following Chris Wright (Red Hat CTO) blog post on "Making open
>> > > > source more inclusive by eradicating problematic language" [1],
>> > > > I would like to suggest that we have a look at SPICE source
>> > > > code to find out if/where such language is used and how to
>> > > > remove it.
>> > > >
>> > > > To illustrate the motivations of this move, consider the phrase
>> > > > "the final solution". I am quite sure you would agree that
>> > > > these words cannot be used inside a project. You would agree
>> > > > because the WWII events are still in minds and not so ancient
>> > > > yet.  Git "master", or the "master/slave" pattern may not
>> > > > trigger similar thoughts if your ancestors didn't suffer
>> > > > slavery; "whitelist/blacklist" neither, if the color of your
>> > > > skin doesn't get you into trouble (white=3Dallow, black=3Ddeny).
>> > > > Overall, I would advise, when thinking about these questions,
>> > > > not to forget on which side your history/country/skin
>> > > > color/sexual orientation sits you. If it's the oppressor side,
>> > > > you're not at the right place to say it's not relevant.
>> > > >
>> > > > ---
>> > > >
>> > > > I had a quick `grep` look at SPICE code base, searching for
>> > > > `blacklist/whitelist/slave` and I could only find very few
>> > > > occurrences of these words, which is nice. Can you find other
>> > > > problem words?
>> > > >
>> > > > `master` is used for git default's branch, but not much
>> > > > elsewhere. Let's discuss if we could get rid of this one, for
>> > > > instance changing it to `main` (just a suggestion). I don't
>> > > > think that it can break that many things (only the CI comes to
>> > > > my mind, where the `master` branch may be treated differently)
>> > > > as git name default branch's name is often omitted in the usual
>> > > > workflows.
>> > > >
>> > > > Please share your thoughts about this
>> > >
>> > > Not a native english speaker but I've read a few discussions
>> > > around the user of master as git as in master copy instead of
>> > > master/slave. Another examples of the use of master from native
>> > > speakers included master as in school teacher or someone that is
>> > > in charge of something (the offense being where the subject of
>> > > control is the slave).
>> > >
>> > > Still, I don't really mind to changing it to main, even more if
>> > > there are people that feel this can really be offensive in some
>> > > way..
>> >
>> > I think the primary downside in changing the branch name is if we
>> > end up with different branch names chosen by each project. There is
>> > value in the fact that essentially every project uses the same
>> > branch name for their latest development branch, as it gives end
>> > users consistent expectations.
>> >
>> > I'm in favour of changing the branch name, but my inclination is
>> > to wait and see a little longer, in order to identify what the
>> > new defacto standard ends up being. "main" is a good bet as a new
>> > standard, but it would be nice to see it "in action".
>> >
>> > I'd be looking for two possible signs
>> >
>> > Whether the Git maintainers themselves decide to standardize
>> > on a new term.
>> >
>> > What GitHub actually decide upon & roll out.
>> >
>> > Either of those two decisions will set a defacto standard across a
>> > vast number of projects, and thus it will be beneficial to have
>> > alignment with those decisisons.
>> >
>> > Regards,
>> > Daniel
>>
>> Hi,
>>    I have different feeling about these changes. On one side I agree wit=
h
>> Michal that these changes appears positive but they are potentially
>> aggravating the real issue just hiding the problem.
>> About the words I think "master" have multiple meaning, removing blindly
>> because some meaning could remember some bad memories looks excessive.
>> And even if this word is used in the "master&slave" reference hinting
>> human slavery there are on the other side many uses (like master&slave
>> relationship in electronic circuit or master&slave used in communication
>> or in psychology) were this is far from human slavery.
>> "blacklist" is very similar, it's used in a lot of places without negati=
ve
>> references, "black" is simply a color which, being usually associated
>> with no light is seen negative, not for race discrimination (like yin
>> and yang concept). I checked multiple dictionaries and hardly find
>> races references for "blacklist". For the same reasons we should remove
>> wording like "dark", "white", "yellow", "black".
>>
>> About the "master" branch technically can be changed easily. I won't
>> wait a "de-facto" change, if all project would wait a "de-facto" change
>> the only name would be "master"! So if most of the group agree to change
>> and like "main" I would just rename to "main".
>>
>> Regards,
>>   Frediano
>>
>> _______________________________________________
>> Spice-devel mailing list
>> Spice-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>>
>>
>
> --
>
> Julien ROP=C3=89
>
> Senior Software Engineer - SPICE
>
> jrope@redhat.com
> <https://www.redhat.com/>
>
>
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
>

--0000000000007c1da305a98b4b21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 3, 2020 at 9:03 AM Fredia=
no Ziglio &lt;<a href=3D"mailto:fziglio@redhat.com">fziglio@redhat.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>=
<div style=3D"font-family:courier new,courier,monaco,monospace,sans-serif;f=
ont-size:12pt;color:rgb(0,0,0)"><blockquote style=3D"border-left:2px solid =
rgb(16,16,255);margin-left:5px;padding-left:5px;color:rgb(0,0,0);font-weigh=
t:normal;font-style:normal;text-decoration:none;font-family:Helvetica,Arial=
,sans-serif;font-size:12pt"><div dir=3D"ltr"><div><br></div><div>Well... Yo=
ur examples are contradicting: the &quot;master/slave&quot; relation used i=
n electronics or psychology are re-using the slavery concepts too... This d=
oesn&#39;t make it right :-)</div></div></blockquote><div>That depends on t=
he etymology and history, not an expert on this.<br></div><div>I think ther=
e&#39;s a mild root, but still this require some technical language explana=
tion.<br></div><div>They can contradict only if they came from 2 separate r=
oots, if this is true is means the there are multiple concepts involved not=
 only one.<br></div><blockquote style=3D"border-left:2px solid rgb(16,16,25=
5);margin-left:5px;padding-left:5px;color:rgb(0,0,0);font-weight:normal;fon=
t-style:normal;text-decoration:none;font-family:Helvetica,Arial,sans-serif;=
font-size:12pt"><div dir=3D"ltr"><div>Now I&#39;m not working in electronic=
s or psychology, so I&#39;m not going to try and change their wording. <br>=
</div><div><br></div><div>Regarding changing it now rather than waiting: Da=
niel is mentioning two hints - git, or github. As our code is hosted in git=
lab, I would add that one too :)</div><div>The idea being that if they choo=
se a new word, it will become the new default, and we could align with them=
 for consistency, rather than arguing among us and picking a potentially di=
fferent name<br></div></div></blockquote><div>It makes sense, but more at G=
itlab level, not a world global de-facto for me<br></div></div></div></bloc=
kquote><div><br></div><div>I agree that it makes sense to wait for gitlab o=
r git projects decide <br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div><div style=3D"font-family:courier new,courier,monaco,monospace,=
sans-serif;font-size:12pt;color:rgb(0,0,0)"><div></div><blockquote style=3D=
"border-left:2px solid rgb(16,16,255);margin-left:5px;padding-left:5px;colo=
r:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration:none;font=
-family:Helvetica,Arial,sans-serif;font-size:12pt"><div dir=3D"ltr"><div>Th=
is doesn&#39;t prevent us from changing words that are in our code (like bl=
acklist/whitelist?). I think there&#39;s not a lot of them.</div><div><br><=
/div><div>Regards,</div><div>Julien<br></div><div><br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0jeu. 2 =
juil. 2020 =C3=A0=C2=A016:09, Frediano Ziglio &lt;<a href=3D"mailto:fziglio=
@redhat.com" target=3D"_blank">fziglio@redhat.com</a>&gt; a =C3=A9crit=C2=
=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br> &gt; O=
n Wed, Jul 01, 2020 at 04:15:07PM +0200, Victor Toso wrote:<br> &gt; &gt; H=
i,<br> &gt; &gt; <br> &gt; &gt; On Wed, Jul 01, 2020 at 10:03:10AM +0200, K=
evin Pouget wrote:<br> &gt; &gt; &gt; Hello SPICE community,<br> &gt; &gt; =
&gt; <br> &gt; &gt; &gt; following Chris Wright (Red Hat CTO) blog post on =
&quot;Making open<br> &gt; &gt; &gt; source more inclusive by eradicating p=
roblematic language&quot; [1],<br> &gt; &gt; &gt; I would like to suggest t=
hat we have a look at SPICE source<br> &gt; &gt; &gt; code to find out if/w=
here such language is used and how to<br> &gt; &gt; &gt; remove it.<br> &gt=
; &gt; &gt; <br> &gt; &gt; &gt; To illustrate the motivations of this move,=
 consider the phrase<br> &gt; &gt; &gt; &quot;the final solution&quot;. I a=
m quite sure you would agree that<br> &gt; &gt; &gt; these words cannot be =
used inside a project. You would agree<br> &gt; &gt; &gt; because the WWII =
events are still in minds and not so ancient<br> &gt; &gt; &gt; yet.=C2=A0 =
Git &quot;master&quot;, or the &quot;master/slave&quot; pattern may not<br>=
 &gt; &gt; &gt; trigger similar thoughts if your ancestors didn&#39;t suffe=
r<br> &gt; &gt; &gt; slavery; &quot;whitelist/blacklist&quot; neither, if t=
he color of your<br> &gt; &gt; &gt; skin doesn&#39;t get you into trouble (=
white=3Dallow, black=3Ddeny).<br> &gt; &gt; &gt; Overall, I would advise, w=
hen thinking about these questions,<br> &gt; &gt; &gt; not to forget on whi=
ch side your history/country/skin<br> &gt; &gt; &gt; color/sexual orientati=
on sits you. If it&#39;s the oppressor side,<br> &gt; &gt; &gt; you&#39;re =
not at the right place to say it&#39;s not relevant.<br> &gt; &gt; &gt; <br=
> &gt; &gt; &gt; ---<br> &gt; &gt; &gt; <br> &gt; &gt; &gt; I had a quick `=
grep` look at SPICE code base, searching for<br> &gt; &gt; &gt; `blacklist/=
whitelist/slave` and I could only find very few<br> &gt; &gt; &gt; occurren=
ces of these words, which is nice. Can you find other<br> &gt; &gt; &gt; pr=
oblem words?<br> &gt; &gt; &gt; <br> &gt; &gt; &gt; `master` is used for gi=
t default&#39;s branch, but not much<br> &gt; &gt; &gt; elsewhere. Let&#39;=
s discuss if we could get rid of this one, for<br> &gt; &gt; &gt; instance =
changing it to `main` (just a suggestion). I don&#39;t<br> &gt; &gt; &gt; t=
hink that it can break that many things (only the CI comes to<br> &gt; &gt;=
 &gt; my mind, where the `master` branch may be treated differently)<br> &g=
t; &gt; &gt; as git name default branch&#39;s name is often omitted in the =
usual<br> &gt; &gt; &gt; workflows.<br> &gt; &gt; &gt; <br> &gt; &gt; &gt; =
Please share your thoughts about this<br> &gt; &gt; <br> &gt; &gt; Not a na=
tive english speaker but I&#39;ve read a few discussions<br> &gt; &gt; arou=
nd the user of master as git as in master copy instead of<br> &gt; &gt; mas=
ter/slave. Another examples of the use of master from native<br> &gt; &gt; =
speakers included master as in school teacher or someone that is<br> &gt; &=
gt; in charge of something (the offense being where the subject of<br> &gt;=
 &gt; control is the slave).<br> &gt; &gt; <br> &gt; &gt; Still, I don&#39;=
t really mind to changing it to main, even more if<br> &gt; &gt; there are =
people that feel this can really be offensive in some<br> &gt; &gt; way..<b=
r> &gt; <br> &gt; I think the primary downside in changing the branch name =
is if we<br> &gt; end up with different branch names chosen by each project=
. There is<br> &gt; value in the fact that essentially every project uses t=
he same<br> &gt; branch name for their latest development branch, as it giv=
es end<br> &gt; users consistent expectations.<br> &gt; <br> &gt; I&#39;m i=
n favour of changing the branch name, but my inclination is<br> &gt; to wai=
t and see a little longer, in order to identify what the<br> &gt; new defac=
to standard ends up being. &quot;main&quot; is a good bet as a new<br> &gt;=
 standard, but it would be nice to see it &quot;in action&quot;.<br> &gt; <=
br> &gt; I&#39;d be looking for two possible signs<br> &gt; <br> &gt; Wheth=
er the Git maintainers themselves decide to standardize<br> &gt; on a new t=
erm.<br> &gt; <br> &gt; What GitHub actually decide upon &amp; roll out.<br=
> &gt; <br> &gt; Either of those two decisions will set a defacto standard =
across a<br> &gt; vast number of projects, and thus it will be beneficial t=
o have<br> &gt; alignment with those decisisons.<br> &gt; <br> &gt; Regards=
,<br> &gt; Daniel<br><br> Hi,<br> =C2=A0 =C2=A0I have different feeling abo=
ut these changes. On one side I agree with<br> Michal that these changes ap=
pears positive but they are potentially<br> aggravating the real issue just=
 hiding the problem.<br> About the words I think &quot;master&quot; have mu=
ltiple meaning, removing blindly<br> because some meaning could remember so=
me bad memories looks excessive.<br> And even if this word is used in the &=
quot;master&amp;slave&quot; reference hinting<br> human slavery there are o=
n the other side many uses (like master&amp;slave<br> relationship in elect=
ronic circuit or master&amp;slave used in communication<br> or in psycholog=
y) were this is far from human slavery.<br> &quot;blacklist&quot; is very s=
imilar, it&#39;s used in a lot of places without negative<br> references, &=
quot;black&quot; is simply a color which, being usually associated<br> with=
 no light is seen negative, not for race discrimination (like yin<br> and y=
ang concept). I checked multiple dictionaries and hardly find<br> races ref=
erences for &quot;blacklist&quot;. For the same reasons we should remove<br=
> wording like &quot;dark&quot;, &quot;white&quot;, &quot;yellow&quot;, &qu=
ot;black&quot;.<br><br> About the &quot;master&quot; branch technically can=
 be changed easily. I won&#39;t<br> wait a &quot;de-facto&quot; change, if =
all project would wait a &quot;de-facto&quot; change<br> the only name woul=
d be &quot;master&quot;! So if most of the group agree to change<br> and li=
ke &quot;main&quot; I would just rename to &quot;main&quot;.<br><br> Regard=
s,<br> =C2=A0 Frediano<br><br> ____________________________________________=
___<br> Spice-devel mailing list<br><a href=3D"mailto:Spice-devel@lists.fre=
edesktop.org" target=3D"_blank">Spice-devel@lists.freedesktop.org</a><br><a=
 href=3D"https://lists.freedesktop.org/mailman/listinfo/spice-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.freedesktop.org/mailman/listin=
fo/spice-devel</a><br><br></blockquote></div><br clear=3D"all"><br>-- <br><=
div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr=
"><p style=3D"font-weight:bold;margin:0px;padding:0px;font-size:14px;text-t=
ransform:capitalize;font-family:RedHatText,sans-serif"><span>Julien ROP=C3=
=89</span></p><p style=3D"font-size:12px;margin:0px;text-transform:capitali=
ze;font-family:RedHatText,sans-serif"><span>Senior Software Engineer - SPIC=
E</span></p><p style=3D"margin:0px;font-size:12px;font-family:RedHatText,sa=
ns-serif"><span style=3D"margin:0px;padding:0px"><a href=3D"mailto:jrope@re=
dhat.com" target=3D"_blank">jrope@redhat.com</a><br></span></p><a href=3D"h=
ttps://www.redhat.com/" style=3D"color:rgb(17,85,204)" target=3D"_blank"><i=
mg src=3D"https://marketing-outfit-prod-images.s3-us-west-2.amazonaws.com/f=
5445ae0c9ddafd5b2f1836854d7416a/Logo-RedHat-Email.png" width=3D"90" height=
=3D"auto"></a><br></div></div></div></div></div></div></blockquote><div><br=
></div></div></div>_______________________________________________<br>
Spice-devel mailing list<br>
<a href=3D"mailto:Spice-devel@lists.freedesktop.org" target=3D"_blank">Spic=
e-devel@lists.freedesktop.org</a><br>
<a href=3D"https://lists.freedesktop.org/mailman/listinfo/spice-devel" rel=
=3D"noreferrer" target=3D"_blank">https://lists.freedesktop.org/mailman/lis=
tinfo/spice-devel</a><br>
</blockquote></div></div>

--0000000000007c1da305a98b4b21--


--===============0866922731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0866922731==--

