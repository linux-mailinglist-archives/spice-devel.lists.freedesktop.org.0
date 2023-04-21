Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1B76EB1A9
	for <lists+spice-devel@lfdr.de>; Fri, 21 Apr 2023 20:32:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6192410E339;
	Fri, 21 Apr 2023 18:32:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc34.google.com (mail-oo1-xc34.google.com
 [IPv6:2607:f8b0:4864:20::c34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE25910E339
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Apr 2023 18:32:49 +0000 (UTC)
Received: by mail-oo1-xc34.google.com with SMTP id
 006d021491bc7-547299bf5d8so1431954eaf.3
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Apr 2023 11:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682101968; x=1684693968;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=6gDYZwEz65UuSHh1ZXECR0G8B8F0/5QNFDzHJpOQpg8=;
 b=DeLuMOiheLnIULpX1ijsiOlj7qdknJJuYtPtbci9oP2lo4DKKV4d3kp3tQy8VqFV3r
 ytTHCKKXsdh0sbp4Y1JJnmvVzp9Q40aEJj9Sk6gS0VwCpdPhEO0Mp+mloJQSZBPJAYYp
 vfhz2WUQqPDEDqFXWJCm13/r+lSFyA6BG0TGARONOz8mAb7IMU2JJVMCaR3r6mvUQMpg
 vOXzW9lk/S3h+px8KOattQE3W1zyNnS4sbfzDw7HDjFyk2HR+5UcSKtlcuLA47+061Y7
 I8JC5ojUPhSNMBMchgFSHP15BW/T+zOJhaQ3aqZmOR22AV2H63e/RageNzFLQxga6BOU
 7kGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682101968; x=1684693968;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6gDYZwEz65UuSHh1ZXECR0G8B8F0/5QNFDzHJpOQpg8=;
 b=jLBbb/gNyNxZXkxAKuJNvgmn3e4HXBgtGkKkD09jUKuubxpvHMKu4yvWy6jG3oLYgU
 E1xZtl0kO23XRZwehKPKgfNC7J1UHqI1fu6vIVZ1NsTgAIf8urRTA8GjsQlxVOAcUMUb
 0hmHn8DSfaCfzrZudcj5nzZdLnk6jlO9wrgq3kLN0fRrdvkpK7A+dbsQq7cxE46SiPlf
 LrqvDncZqqkm2AAoPC+tQ3qGj/GQPOuUXd8AQis9Ws5kBvKtRUSvHcwl7NBelq98pFNo
 C/sWTztqzPgs2srhf63MUq6i5PHN70YJrdq3pTY045mcdM7o1pwOIlQdMsg6qawAclxX
 JN+A==
X-Gm-Message-State: AAQBX9eKiABY+48/75TNp6h00nBoyVgfHB5KODVEkwIt8m1r/AK1Bbsb
 8ZLtidNsnOWY/5TJOqJnmQor9V3094Bvat5G9x8=
X-Google-Smtp-Source: AKy350bfHJJzRkfZGcySTPKENnX1CJhrjo/rKrX249xhdKHfR7fzlWLFyXyrkvs9mw0ypjuw3gmSi41R5lDMCWr93oo=
X-Received: by 2002:a05:6820:809:b0:545:5160:3f57 with SMTP id
 bg9-20020a056820080900b0054551603f57mr2203094oob.0.1682101968142; Fri, 21 Apr
 2023 11:32:48 -0700 (PDT)
MIME-Version: 1.0
References: <20230316054458.1546085-1-vivek.kasireddy@intel.com>
 <CAHt6W4fwABLRLkjsZ584-kaJbJPvn4huNMeXQBnZj+usAs_fyQ@mail.gmail.com>
 <IA0PR11MB7185A086540E06748286F573F88B9@IA0PR11MB7185.namprd11.prod.outlook.com>
 <CAHt6W4cBU7pakwn+nwuUKQj_=BoXDV=Oc5M8fuc3gCA18gK8Qg@mail.gmail.com>
 <IA0PR11MB7185A0BF637E1C676469E04BF88F9@IA0PR11MB7185.namprd11.prod.outlook.com>
 <CAHt6W4d+DkEReW0z97ejQ+UhEWCV3aONgCywY6Vpio=Hqo=4tA@mail.gmail.com>
 <IA0SPRMB0001BC01AC9CE18534BE3A7FF89E9@IA0SPRMB0001.namprd11.prod.outlook.com>
 <CAHt6W4fO2AA-8SFp-NbwBV0bUXiUBdkn86i8AkmPP4F+YfDVQw@mail.gmail.com>
In-Reply-To: <CAHt6W4fO2AA-8SFp-NbwBV0bUXiUBdkn86i8AkmPP4F+YfDVQw@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 21 Apr 2023 19:32:36 +0100
Message-ID: <CAHt6W4f_UQxj2jKR4eF3QhThDE5Pkjk1=3eQDY4FSkJQJFkiZA@mail.gmail.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] [PATCH v1 0/5] dcc: Create a stream for
 non-gl/remote clients that want to use dmabuf
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 "Kim, Dongwon" <dongwon.kim@intel.com>, Gerd Hoffmann <kraxel@redhat.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

> >
> > > The style (well, also the style of spice code I have to admit) is a
> > > bit "messy" but better to fix the big problems first than try to solve
> > [Vivek] Ok, I guess we can fix it incrementally if you can first point out
> > the worst style violoations.
> >
>
> I'll try to write some fixup commits and post some comments to some
> "code smell".
>

See https://gitlab.freedesktop.org/fziglio/spice/-/commits/encode_dmabuf1_fixups/
for minor fixups

Frediano
