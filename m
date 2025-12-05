Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A990CA746E
	for <lists+spice-devel@lfdr.de>; Fri, 05 Dec 2025 11:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CBFB10E108;
	Fri,  5 Dec 2025 10:58:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MGWnCqL3";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com
 [209.85.128.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B81A10E108
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Dec 2025 10:57:59 +0000 (UTC)
Received: by mail-yw1-f182.google.com with SMTP id
 00721157ae682-7815092cd0bso17906867b3.2
 for <spice-devel@lists.freedesktop.org>; Fri, 05 Dec 2025 02:57:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764932278; x=1765537078; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=fQEej9+2tNtypZdiseWaefQSCQuE+K/Ms9+JhAuotjk=;
 b=MGWnCqL3V6sZe2FwPHkPggPvRoybyX0Pi5G4aDiWApAGpOF1v1OzujeaCLyzDtEMV+
 k+UL5dAwH1x7fMQVPidYsko/k1he+ZZ/QUOMXG7mcA2HzCfa34xjugd39msVPz3N9R1Q
 9ZqjErlbMtaD2QnyJusp3euL5FvFwaUXX2Yp/QCPlFVTlGW87Dwf1IM7h6h0rXAfjEo0
 WPe1BfUZifZA1FPZgJRcBDC6CAWVwaLTu6hPGJkZhKlMv/ShxlCiQWkmRmvoL49G89mQ
 mlhebGt2gNaqL5M4uAdi9LdoXuWkjVd5eL9Vi1+u0zU/L6guDis0JpthdpHcOXz2ybmo
 FqIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764932278; x=1765537078;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fQEej9+2tNtypZdiseWaefQSCQuE+K/Ms9+JhAuotjk=;
 b=Tzixl2hSEWoqcE4kDmPaY6JLvwAjbQBj2cQvnPlOjDf6fCFGPF3ZQduhFwMNFbooSz
 4cMod4r7i4sNggXrm9TRT55I2GLdvvpbgY4zwo4OifYV/Smf67l2LtU+2ShH0GjsX9F+
 LsJnK0Pxdqar6Oef+fy/Pi0pfmzCoFjL+GVyD82wVwffJubKrCizoZo4qy01ttWe+w8E
 /lAq5OmoysSIaEKfLbEJIYb6iIb2+7rFzREgOLBH8QiIyHGx0XbZEAqrhQ0naCIA7iZH
 wIbjMQtyTCM+EfplAcvjjvaxfyDF2mNDqOAQ8SXF/NVBlTfVvk60OccuiOD3XcBdjRfd
 sLdg==
X-Gm-Message-State: AOJu0Yzau5+bOlqenKm0ht5V3wXuAJbVrgcJP+KHpeo/ZMei8yATEU3e
 TuxFF4z9FGkqR5jm9kA/vh1BC6P4DTVHa7WiSg8u8n8KI9PAtCO9UzFnmHSv9MnKSWr4t36NEnd
 q5XRl+b2/tZdM6wdTX1VvjQnzDlvOMPzWQKCZ
X-Gm-Gg: ASbGnct3LXmXBIvYSaJIyv0CY20XjVjK9O8eqAXHcjARPf1/ATZkekrrNVv1zDwHAGd
 x8NWTRf5fOL7CwgVfN+rDceH8x4oaOGKQsqrkKCyX2jBpsAkeZlioymXW4qAzsw65yOU0oNr4n/
 TIaDJoLKOU5/+71lgWXpYO9u1274FBI+Xvu+qfQHgPkzcmOen95MwC/sXLKl8exc2YY2XTyvfQy
 AEp0CPXtUi6MuUUZf9ntAAX4Xo8WDBhUuletvZoMulkPkDoryo2GRhW49yIpyn+1KRU5Ws=
X-Google-Smtp-Source: AGHT+IGuA76OBvs80I5UzvDyM9y1EdGFpME7ARJ/I7BWGtxlRS9CP2AiVyB1J+NFuLrw7D6Sn+WAyOjuoxpjI3BH7Tw=
X-Received: by 2002:a05:690c:4d84:b0:787:ed2a:79df with SMTP id
 00721157ae682-78c186f4ebemr91462547b3.10.1764932278495; Fri, 05 Dec 2025
 02:57:58 -0800 (PST)
MIME-Version: 1.0
References: <cover.1764732184.git.nvinson234@gmail.com>
 <20a971945bfcfbfb281e1b4654dcdfe8a66033d6.1764732184.git.nvinson234@gmail.com>
 <CAHt6W4fbv7DoKue0i9Zjpm+M6coT95dakoXbRFeuyfkQ9qG6yA@mail.gmail.com>
 <1a309b38-3c92-4118-8ab8-21c865490084@gmail.com>
 <CAHt6W4dkO2xsVPFb-gmcgtLbas4HV2WvJgnsoMgHASwi5FgO7A@mail.gmail.com>
 <5653f3be-ccaf-4586-b155-9ee1b43e1401@gmail.com>
In-Reply-To: <5653f3be-ccaf-4586-b155-9ee1b43e1401@gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 5 Dec 2025 10:57:47 +0000
X-Gm-Features: AWmQ_bl9hnLoyJZnoTQRNpQ8POSDKE2Wck73z44AsYK5B18Bys-yeWajXrWt2og
Message-ID: <CAHt6W4djxRteUW_d5cRNHRf5GOi6XDg-RgMhJMvqbs=G4wBexA@mail.gmail.com>
Subject: Re: [PATCH 1/1] test-display-base.cpp: adjust designated init.
To: Nicholas Vinson <nvinson234@gmail.com>
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Thu, 4 Dec 2025 at 22:16, Nicholas Vinson <nvinson234@gmail.com> wrote:
>
> On 12/4/25 16:26, Frediano Ziglio wrote:
> > Frediano
> >
> > On Thu, 4 Dec 2025 at 21:20, Nicholas Vinson <nvinson234@gmail.com> wrote:
> >>
> >> On 12/4/25 16:05, Frediano Ziglio wrote:
> >>> On Thu, 4 Dec 2025 at 17:06, Nicholas Vinson <nvinson234@gmail.com> wrote:
> >>>>
> >>>> Adjust designated initializer to be C++20 compliant. Starting with
> >>>> g++-16, GCC will default to the C++20 standard.
> >>>>
> >>>> Signed-off-by: Nicholas Vinson <nvinson234@gmail.com>
> >>>> ---
> >>>>    server/tests/test-display-base.cpp | 2 +-
> >>>>    1 file changed, 1 insertion(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/server/tests/test-display-base.cpp b/server/tests/test-display-base.cpp
> >>>> index b220b7fe..5d0404c9 100644
> >>>> --- a/server/tests/test-display-base.cpp
> >>>> +++ b/server/tests/test-display-base.cpp
> >>>> @@ -806,7 +806,7 @@ static QXLInterface display_sif = {
> >>>>            .major_version = SPICE_INTERFACE_QXL_MAJOR,
> >>>>            .minor_version = SPICE_INTERFACE_QXL_MINOR
> >>>>        },
> >>>> -    { .attached_worker = attached_worker },
> >>>> +    .attached_worker = attached_worker,
> >>>>        .set_compression_level = set_compression_level,
> >>>>        .set_mm_time = nullptr,
> >>>>        .get_init_info = get_init_info,
> >>>
> >>> With this change I'm getting
> >>>
> >>>     CXX      test-display-base.o
> >>> test-display-base.cpp:826:1: error: missing braces around initializer
> >>> for 'QXLInterface::<unnamed union>' [-Werror=missing-braces]
> >>>     826 | };
> >>>         | ^
> >>>
> >>
> >> Could you post your compiler version and the CXX flags you used?
> >>
> >
> *snip*
>
> This appears to be caused because -Wmissing-braces is being explicitly
> set. I've tried with both gcc-15 and gcc-16, and there does not appear
> to be a way to suppress that warning while using designated initializers.
>

Nice catch, there's a line in m4/manywarnings.m4 about that specific warning.
Removing it removes the error I was having.
I suppose you can update the patch removing that line.

> The original syntax triggers the error message "error: either all
> initializer clauses should be designated or none of them should be" when
> building against the C++ 20 standard.
>
> Regards,
> Nicholas Vinson
>

Frediano
