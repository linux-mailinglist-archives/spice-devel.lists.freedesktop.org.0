Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B27D5EC57B
	for <lists+spice-devel@lfdr.de>; Fri,  1 Nov 2019 16:14:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 323856E22F;
	Fri,  1 Nov 2019 15:14:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 734036E22F
 for <spice-devel@lists.freedesktop.org>; Fri,  1 Nov 2019 15:14:30 +0000 (UTC)
Received: from dhcp250.mn.codeweavers.com ([10.69.137.250])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <dlesho@codeweavers.com>)
 id 1iQYdB-0004Gb-G5; Fri, 01 Nov 2019 10:14:29 -0500
To: Victor Toso <victortoso@redhat.com>
References: <20191031154627.ase2nwgygawmzxdd@wingsuit>
 <415c5634-a6a3-50d3-e6f1-480ebebf31e7@codeweavers.com>
 <20191031160408.acmodlrqzg6o4gsm@wingsuit>
 <cea4773c-62f7-35c6-3a52-5947682adce5@codeweavers.com>
 <20191101114801.h6s6u5px4p33b3cg@wingsuit>
From: Derek Lesho <dlesho@codeweavers.com>
Message-ID: <f8271070-cb7e-8d26-852e-fdea0140a823@codeweavers.com>
Date: Fri, 1 Nov 2019 10:15:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191101114801.h6s6u5px4p33b3cg@wingsuit>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Type:In-Reply-To:MIME-Version:Date
 :Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q4BZsvXsfQmmSczM7CJN0W8AXiu7dkhLnblADEruLoY=; b=WCDlunBCTh34w/InzOC/phSB1
 xvG+PJy6KAUNxsG2O0N0ybuJb0M7n6qE8boKv5iYURyDDcWY8dvb3LnJHbXhgH7D2uI/GXCGbxttG
 CPEE+e/DRoToSMQ3IujVGz2FcGsYg+sec82oYXpwpB5joEaghshByGlf4+UNKa5LZznjI=;
Subject: Re: [Spice-devel] Using GitLab
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0135854620=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============0135854620==
Content-Type: multipart/alternative;
 boundary="------------664D6EDF2D2AC8087CE05811"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------664D6EDF2D2AC8087CE05811
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 11/1/19 6:48 AM, Victor Toso wrote:

> Hi,
>
> On Thu, Oct 31, 2019 at 11:47:56AM -0500, Derek Lesho wrote:
>> On 10/31/19 11:04 AM, Victor Toso wrote:
>>
>>> Hi,
>>>
>>> On Thu, Oct 31, 2019 at 10:56:59AM -0500, Jeremy White wrote:
>>>> Hey Victor,
>>>>
>>>> On 10/31/19 10:46 AM, Victor Toso wrote:
>>>>> Hi list,
>>>>>
>>>>> You might note that the Gitlab activity will increase a bit
>>>>> from now on, hopefully. It was agreed within some SPICE
>>>>> collaborators to give a serious try on using this
>>>>> infrastructure that is available to us.
>>>>>
>>>>> One potential great change and challenge is the usage of
>>>>> merge requests in oppose to patch series over mailing list. I
>>>>> hope the benefits outweigh the downsides in the long run.
>>>> Derek has been working on a utility to integrate GitLab and a
>>>> mailing list, for experimentation by Wine.
>>>>
>>>> He's just gotten to the point of being ready to try a proof of
>>>> concept.
>>>> Would you guys be interested in this?
>>> What does it do exactly?
>>>
>>> Cheers,
>>> Victor
>> Hi Victor,
>>
>> The bridge sends all the commits from merge-requests in patch
>> form to the mailing list, as well as any comments the MR
>> receives.
> Cool. It works with specific user in gitlab as sender? This seems
> nice, somewhat similar to spice-commits. I'd say great to have
> it.
The bot actually uses the Gitlab API to receive merge-request events, 
and sends the emails itself via smtplib.
>
>> It also creates MRs from PATCH submissions to the mailing
>> list.
> Also seems fine but can be confusing. In regards to ownership,
> the sender must have a Gitlab account or a generic user creates
> the MR?
A generic user creates the merge request.
>
>> The goal with this is to ensure the developers who are
>> accustomed to using either system aren't isolated from
>> developers using the other.  Optionally, the bridge can be
>> configured to allow people to respond to the generated MRs and
>> patch-sets, however this is disabled by default since it can be
>> confusing based on the differences between email threads and
>> GitLab discussions.
> Personally, the patch review being done in Gitlab would be best
> also for the sake of integration around it (e.g: one topic of
> review is solved you have the 'resolve thread', the diff between
> versions, probably more).
>
> Having the comments of reviews being sent to mailing-list can
> also be confusing if replying to that in email does not get
> propagated back to Gitlab but if explicit says something like
> "don't reply", it looks great as mentioned above.

When bidirectional communication is disabled, the sent mail does specify 
not to reply.  However, right now this only occurs on merge requests not 
generated from a mailing-list submission.

If you want all review to occur on Gitlab, you may instead want to 
disable the part of the bridge that reads email and instead point 
mailing-list users to this 
<https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html#create-new-merge-requests-by-email> 
for submitting their patches.  At that point, the bridge would just be 
used to send all the merge request activity to the mailing list.

>
> But this is all just my opnion. The rationale for using more
> Gitlab is for several reasons. If you like the idea and using
> this seems a must, I'm all in to give it a try :)

I completely agree with your reasons to use Gitlab more, the reason my 
bridge includes the functionality to accept communication on the mailing 
list is for devs who are used to that workflow.  If nobody in your 
community is interested in that functionality, I see no reason to 
include it.

The unfinished code <https://github.com/Guy1524/glmlbridge> is currently 
on Github (ironically), and is still quite messy (littered with TODOs 
and debug prints).  If you're still interested, I'll clean up the 
project and try to improve the documentation over the weekend so you can 
give it a shot.

>
> Cheers,
> Victor
-Derek

--------------664D6EDF2D2AC8087CE05811
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <p>Hi,<br>
    </p>
    <p>On 11/1/19 6:48 AM, Victor Toso wrote:<br>
    </p>
    <blockquote type="cite"
      cite="mid:20191101114801.h6s6u5px4p33b3cg@wingsuit">
      <pre class="moz-quote-pre" wrap="">Hi,

On Thu, Oct 31, 2019 at 11:47:56AM -0500, Derek Lesho wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">On 10/31/19 11:04 AM, Victor Toso wrote:

</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">Hi,

On Thu, Oct 31, 2019 at 10:56:59AM -0500, Jeremy White wrote:
</pre>
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">Hey Victor,

On 10/31/19 10:46 AM, Victor Toso wrote:
</pre>
            <blockquote type="cite">
              <pre class="moz-quote-pre" wrap="">Hi list,

You might note that the Gitlab activity will increase a bit
from now on, hopefully. It was agreed within some SPICE
collaborators to give a serious try on using this
infrastructure that is available to us.

One potential great change and challenge is the usage of
merge requests in oppose to patch series over mailing list. I
hope the benefits outweigh the downsides in the long run.
</pre>
            </blockquote>
            <pre class="moz-quote-pre" wrap="">Derek has been working on a utility to integrate GitLab and a
mailing list, for experimentation by Wine.

He's just gotten to the point of being ready to try a proof of
concept.
Would you guys be interested in this?
</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">What does it do exactly?

Cheers,
Victor
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
Hi Victor,

The bridge sends all the commits from merge-requests in patch
form to the mailing list, as well as any comments the MR
receives.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Cool. It works with specific user in gitlab as sender? This seems
nice, somewhat similar to spice-commits. I'd say great to have
it.</pre>
    </blockquote>
    The bot actually uses the Gitlab API to receive merge-request
    events, and sends the emails itself via smtplib.<br>
    <blockquote type="cite"
      cite="mid:20191101114801.h6s6u5px4p33b3cg@wingsuit">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">It also creates MRs from PATCH submissions to the mailing
list.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Also seems fine but can be confusing. In regards to ownership,
the sender must have a Gitlab account or a generic user creates
the MR?</pre>
    </blockquote>
    A generic user creates the merge request.<br>
    <blockquote type="cite"
      cite="mid:20191101114801.h6s6u5px4p33b3cg@wingsuit">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">The goal with this is to ensure the developers who are
accustomed to using either system aren't isolated from
developers using the other.  Optionally, the bridge can be
configured to allow people to respond to the generated MRs and
patch-sets, however this is disabled by default since it can be
confusing based on the differences between email threads and
GitLab discussions.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Personally, the patch review being done in Gitlab would be best
also for the sake of integration around it (e.g: one topic of
review is solved you have the 'resolve thread', the diff between
versions, probably more).

Having the comments of reviews being sent to mailing-list can
also be confusing if replying to that in email does not get
propagated back to Gitlab but if explicit says something like
"don't reply", it looks great as mentioned above.</pre>
    </blockquote>
    <p>When bidirectional communication is disabled, the sent mail does
      specify not to reply.  However, right now this only occurs on
      merge requests not generated from a mailing-list submission.</p>
    <p>If you want all review to occur on Gitlab, you may instead want
      to disable the part of the bridge that reads email and instead
      point mailing-list users to <a moz-do-not-send="true"
href="https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html#create-new-merge-requests-by-email">this</a>
      for submitting their patches.  At that point, the bridge would
      just be used to send all the merge request activity to the mailing
      list.<br>
    </p>
    <blockquote type="cite"
      cite="mid:20191101114801.h6s6u5px4p33b3cg@wingsuit">
      <pre class="moz-quote-pre" wrap="">

But this is all just my opnion. The rationale for using more
Gitlab is for several reasons. If you like the idea and using
this seems a must, I'm all in to give it a try :)</pre>
    </blockquote>
    <p>I completely agree with your reasons to use Gitlab more, the
      reason my bridge includes the functionality to accept
      communication on the mailing list is for devs who are used to that
      workflow.  If nobody in your community is interested in that
      functionality, I see no reason to include it.</p>
    <p>The <a moz-do-not-send="true"
        href="https://github.com/Guy1524/glmlbridge">unfinished code</a>
      is currently on Github (ironically), and is still quite messy
      (littered with TODOs and debug prints).  If you're still
      interested, I'll clean up the project and try to improve the
      documentation over the weekend so you can give it a shot.<br>
    </p>
    <blockquote type="cite"
      cite="mid:20191101114801.h6s6u5px4p33b3cg@wingsuit">
      <pre class="moz-quote-pre" wrap="">

Cheers,
Victor
</pre>
    </blockquote>
    -Derek<br>
  </body>
</html>

--------------664D6EDF2D2AC8087CE05811--

--===============0135854620==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0135854620==--
