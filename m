Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7410FCB6FEE
	for <lists+spice-devel@lfdr.de>; Thu, 11 Dec 2025 20:25:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1263510E2BD;
	Thu, 11 Dec 2025 19:25:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Gy0xhjgx";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com
 [209.85.128.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2488D10E893
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Dec 2025 19:24:59 +0000 (UTC)
Received: by mail-yw1-f180.google.com with SMTP id
 00721157ae682-787e7aa1631so6805297b3.1
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Dec 2025 11:24:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765481098; x=1766085898; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JSFO6YQpX/iV0RP69YQKr339KBxAow3/JaC8qz5PfRQ=;
 b=Gy0xhjgxog1ueuwjqaK5pIdYeALYEfD+23ui4dbwPbI53xiPwamPiGQEwCJyQHFgA3
 5GrGqwMhq2ziVuvIjTMSOj3TRyR69P2QZwZ3BlpqLYNlmzjUTDpFr8287tCNkFDlXdli
 FkY+zAzSK8pDTw84Uyqoqcl4wXPHHOencfP54pc1CWGi/lxbQGjqaIACB+4OFsCapuU6
 mOYvCK+M83iVBkjemHp4F2nbp+4vLfX2abx7LAi4r9znE3O08bLOmDW07GTS3CbrZI/7
 FzwlHnLyneASwJ6qgt87M2AJYg2Ah8g/r6HP7+cEKMpu3CXb9vJsnG7iriyj5G3FOUKx
 JkIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765481098; x=1766085898;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=JSFO6YQpX/iV0RP69YQKr339KBxAow3/JaC8qz5PfRQ=;
 b=lF+0/U6NXd2xTFX5cIwN82lAgrbo+8EMkEUKaNzYgbw7MbuH3P/4TefNBNUp/VpxX0
 IfKLSG8T8a90ybrkpCjsgad+Ldqo5ML2FoodMoX2VSh/4E34/g8v3eRQ7Bfd8co+kAPi
 MMhDrq+nY+ht1HGSE29Oa5WOinVVKmBfs4n3z3Dp3eWsgslJf2PAfbx0f+EyQpWOnIP7
 j4Mm0nZp4NO4TwQHaA1O1iBPRQsO5bGp08xWvvHyfbkxQqOmF6e1YhseVtelDU/kEY1Y
 Yw/X+O3EOJV+eHNIXzq1Vhf93pb31QWaTd+35++tLlJ5Fk8t726VyIFuJ/La2gOZlDJ2
 oJZA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU5jdqTDfxpIvXA9OXIbv0UtROI7v2mNBnVAAcPukHSq/SPKzxKN9yoT3HDlfVHCGqqJeTXBhYndyQUHw==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyL7s8PdlIabTiZGbdy4rQYClBjlkWo4zrmnHeP4JY2oSsEH5Vg
 hjzqcsy0yvye+oUcDLxdkMZmUExE8HLiIiHKemhn9qjWqfv4IQ2nVhL9PzhdAsZKfJz3sX7QUZq
 qGDSCwwOvSIGZ1cYH6/XL1WQcOBfGbeibiCh4
X-Gm-Gg: AY/fxX4BLJbej97mx4UDM1rVMvBeG19vnrgdXp9ysbXmj+iqtBUesL6zy270F6C9e+F
 IkFCHmINRpcOfTyrXnpaOvA/qNmSKeJwMjv/lU7mgUvGvL5ktFsPSAc6etNIix0yAx1B5i6fG2V
 d8icZz9zBgstQu1ySNGAyRAkeU7IRCGOFupQoBUi10YHYGY+9KAvdp4cyTUpOpUdhaifupHbxHg
 pZgGl1RCp5uWm//GLNq30QTbpawfZxvviRMAj59hLVaMgf7pyL3Ml0LnkWTGc9lDyN2p7OJaAcB
 TRbgSw==
X-Google-Smtp-Source: AGHT+IGLOObSlNe4BpQx1LA556hOIWrvwanqNapzfnQzxnzO5b71l7+ZdaGW08N6S3VAojJ3yIS26RFua9rzg88mkHQ=
X-Received: by 2002:a05:690e:128f:b0:645:5213:d77d with SMTP id
 956f58d0204a3-6455213da9amr1482119d50.42.1765481097872; Thu, 11 Dec 2025
 11:24:57 -0800 (PST)
MIME-Version: 1.0
References: <cover.1765109578.git.nvinson234@gmail.com>
 <CAHt6W4dfEwtJWV0cPL4MA4ZrbQ-Quxy7cPPPG+oSJLcrVm87aQ@mail.gmail.com>
 <b0d290d2-2db8-4d68-a700-724d1d6ac431@gmail.com>
 <CAAg9qJ29KxThRT8ej9P8U9iou7Lt6UJDO3gk+rXjq5d=-DbUFA@mail.gmail.com>
In-Reply-To: <CAAg9qJ29KxThRT8ej9P8U9iou7Lt6UJDO3gk+rXjq5d=-DbUFA@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 11 Dec 2025 19:24:46 +0000
X-Gm-Features: AQt7F2ogLVuO_0qH3_EjvkbrmhG8W10i4jecySdOoG3CvpUOrH74BA57fCQn7XU
Message-ID: <CAHt6W4dbRswsyaZgeBQRxx8Uor5gLgnfH5G2O9i9nidhaX+X0Q@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Adjust dsignated initializer to be C++20 compliant
To: Uri Lublin <uril@redhat.com>
Cc: Nicholas Vinson <nvinson234@gmail.com>, Victor Toso <victortoso@redhat.com>,
 spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Thu, 11 Dec 2025 at 18:49, Uri Lublin <uril@redhat.com> wrote:
>
>
>
> On Thu, Dec 11, 2025 at 2:38=E2=80=AFPM Nicholas Vinson <nvinson234@gmail=
.com> wrote:
>>
>> On 12/11/25 06:55, Frediano Ziglio wrote:
>> > On Sun, 7 Dec 2025 at 12:20, Nicholas Vinson <nvinson234@gmail.com> wr=
ote:
>> >>
>> >> When building with g++-16, the build fails with the following error:
>> >>
>> >>      server/tests/test-display-base.cpp:809:5: error: either all init=
ializer
>> >>      clauses should be designated or none of them should be
>> >>
>> >> This is because g++-16 defaults to c++20 and when using designated
>> >> initializers with c++20, you don't wrap anonymous union fields with b=
races.
>> >>
>> >> Nicholas Vinson (2):
>> >>    m4/spice-compile-warnings.m4: disable -Wmissing-braces
>> >>    test-display-base.cpp: adjust designated init.
>> >>
>> >>   m4/spice-compile-warnings.m4       | 1 +
>> >>   server/tests/test-display-base.cpp | 2 +-
>> >>   2 files changed, 2 insertions(+), 1 deletion(-)
>> >>
>> >
>> > The CI is not that happy. I added some commit to make it pass:
>> > - missing AUTHORS for "make syntax-check"
>> > https://gitlab.freedesktop.org/fziglio/spice/-/commit/fb018b3fbb26f38b=
2ffb0ee569d4aafc287fc738
>> > - too old Fedora (not related to these changes)
>> > https://gitlab.freedesktop.org/fziglio/spice/-/commit/a4525e204ef8b7e3=
beb3709823029e27de633d7a
>> > - compatibility with pretty old GCC
>> > https://gitlab.freedesktop.org/fziglio/spice/-/commit/6a2c24fd5c088cb3=
b016a40965882e98f010b583
>
>
> Frediano, where did you take the 10 from ?
> Shouldn't it check if the gcc version is 16 (or even 20) ?
>

Hi,
   indeed not very scientific.
Given the initial reason of the change, why not

#if __cplusplus >=3D 202002L
    .attached_worker =3D attached_worker,
#else
    { .attached_worker =3D attached_worker },
#endif

?

>>
>>
>>
>> I'm concerned about the old GCC compatibility commit. I think it would
>> be more robust if designated initializer feature checks were added to
>> configure.ac and meson.build instead.
>>
>> That way you don't have to worry about how old or new the compiler is or
>> if it implements the necessary GCC extensions, or implements them correc=
tly.
>

I think the above proposal also addresses this comment.

>
> Do you mean compiling a simple program with designated initializers in me=
son/configure ?
>
> Regards,
>     Uri.
>
>
>>
>>
>> Regards,
>> Nicholas Vinson
>>

Frediano

>> >
>> > Do they sound good?
>> > I suppose the compatibility one could be merged.
>> >
