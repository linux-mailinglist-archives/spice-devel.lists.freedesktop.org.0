Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC51CA5760
	for <lists+spice-devel@lfdr.de>; Thu, 04 Dec 2025 22:26:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9D1910E21B;
	Thu,  4 Dec 2025 21:26:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="e2Gf9uej";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com
 [74.125.224.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B588210E21B
 for <spice-devel@lists.freedesktop.org>; Thu,  4 Dec 2025 21:26:42 +0000 (UTC)
Received: by mail-yx1-f49.google.com with SMTP id
 956f58d0204a3-640d0895d7cso2211396d50.1
 for <spice-devel@lists.freedesktop.org>; Thu, 04 Dec 2025 13:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764883602; x=1765488402; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Ye0x0cc2XuAfwqReV7qH+i9TVDY8oJLnG7UojIxR4uA=;
 b=e2Gf9uejRNUEQty+37UEFzVfjFecttYFEOc3MD2E1I0ZAHZv5ZmO8fBuK+Igv27VL4
 I4q6MR3EXXqLBJD4jBLZPKcdK0Uacu0PurA1DYq9rBSseWSwmfAXFF5XcPVmc4uVQ7wo
 5mn58TwCsgIpihUIXvxM02mRah2/mE0Ocl01Li0ESKhY0amjbJL9qKF5VcMWbVby1TAx
 283YBbvLAA687pxy+47CHYz2O6qz5jyEqWVCXx3ObzHrvgTsUG6yDJF0oD/kzY1B9mjD
 3TE/MDbHQhbac4Fx0l2AiTOr7UglfMEnuBUh9dPlONOti5FdHB5UOR03KBrqmVsiKhGN
 8uRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764883602; x=1765488402;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Ye0x0cc2XuAfwqReV7qH+i9TVDY8oJLnG7UojIxR4uA=;
 b=EXSwA4DHvwPs4410JoxaJYOZH4D0t92sUI3alZkLinzueo0RRJe0SUqHCLkwJ2H9uW
 ZNLnuvxIrzcJ7QGb3mJBYHleY84DckVfkNDX6w8FUqfn7K97xg80t4VKNkFiI9TGIC0o
 SBwocynLDK6lRaae5ozfo3As/GbLhFjIXBtFqDdyiSvmz5BBbACYbL4MVlLSUpDhelR4
 ON6eKBd6ove/qE+1DcFMoIRbebZoTifg290yhHZ7P4NNuvzuc8PRDxyV82yLpVpDp50V
 X7ykPK3c2pAePWfbPOywXevc0lUjILwCOyDW/fARsYn5c1oiZZqgzhQKkUdUlznXArZh
 ftkg==
X-Gm-Message-State: AOJu0Yxhh0rXLH5XD6I5bi+lxeIgIrhvwYU6fi+9jqvgATUDT6T78hV1
 fP3Qmv7YYLrWwanbZ45WXlbkt5Cm04n1QfTLEVdcnfRSC1dcX7MfaqapFTJsSFGQHJUFEPCsSyS
 QGsUGuNnIMcBWKdEBl6lbp8uRrIvnrnAi8llc
X-Gm-Gg: ASbGncssHkrZ6TAf29LZyLjyoP+L1HuWwMe4DEF5JD4RzyURp72EjqkY7Pf7T9ukOHM
 tgtfQeB1R4uOOPxynMgfkY2A28CK1y1d69KvJuaPXgmQztRwpbWhY+hEkvwR9Ik8C8PIEgpYlmS
 lllkirl3YKc/StBk/2yZ98vUjEdjzad0tYXrEVTW8JGac/qOrREfu+r44L5Q8tQjvQGwMIuhaig
 xSHGJc4CjkKbS1r5RwPNzsciBIyhlGbCssjM2mp4e1kkTwkxofdSxSxC0Z3143bq0wkd1g=
X-Google-Smtp-Source: AGHT+IEeYOqxG43EsTZBdJMWi+cHZNCvUW2t9mklZt1c/IfUZFLdI08aJOr/pVEaTg2ra/biMGeqtDajJyf8KGvk6FA=
X-Received: by 2002:a05:690e:1918:b0:63e:1f42:a469 with SMTP id
 956f58d0204a3-6443d6f0f6emr3587386d50.16.1764883601523; Thu, 04 Dec 2025
 13:26:41 -0800 (PST)
MIME-Version: 1.0
References: <cover.1764732184.git.nvinson234@gmail.com>
 <20a971945bfcfbfb281e1b4654dcdfe8a66033d6.1764732184.git.nvinson234@gmail.com>
 <CAHt6W4fbv7DoKue0i9Zjpm+M6coT95dakoXbRFeuyfkQ9qG6yA@mail.gmail.com>
 <1a309b38-3c92-4118-8ab8-21c865490084@gmail.com>
In-Reply-To: <1a309b38-3c92-4118-8ab8-21c865490084@gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 4 Dec 2025 21:26:30 +0000
X-Gm-Features: AWmQ_blP-s_ZaacIvv-RIyuhWfFU_wp_wIlP8wcgL0BzEvMmtAqRu9YDB1cSwvg
Message-ID: <CAHt6W4dkO2xsVPFb-gmcgtLbas4HV2WvJgnsoMgHASwi5FgO7A@mail.gmail.com>
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

Frediano

On Thu, 4 Dec 2025 at 21:20, Nicholas Vinson <nvinson234@gmail.com> wrote:
>
> On 12/4/25 16:05, Frediano Ziglio wrote:
> > On Thu, 4 Dec 2025 at 17:06, Nicholas Vinson <nvinson234@gmail.com> wrote:
> >>
> >> Adjust designated initializer to be C++20 compliant. Starting with
> >> g++-16, GCC will default to the C++20 standard.
> >>
> >> Signed-off-by: Nicholas Vinson <nvinson234@gmail.com>
> >> ---
> >>   server/tests/test-display-base.cpp | 2 +-
> >>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/server/tests/test-display-base.cpp b/server/tests/test-display-base.cpp
> >> index b220b7fe..5d0404c9 100644
> >> --- a/server/tests/test-display-base.cpp
> >> +++ b/server/tests/test-display-base.cpp
> >> @@ -806,7 +806,7 @@ static QXLInterface display_sif = {
> >>           .major_version = SPICE_INTERFACE_QXL_MAJOR,
> >>           .minor_version = SPICE_INTERFACE_QXL_MINOR
> >>       },
> >> -    { .attached_worker = attached_worker },
> >> +    .attached_worker = attached_worker,
> >>       .set_compression_level = set_compression_level,
> >>       .set_mm_time = nullptr,
> >>       .get_init_info = get_init_info,
> >
> > With this change I'm getting
> >
> >    CXX      test-display-base.o
> > test-display-base.cpp:826:1: error: missing braces around initializer
> > for 'QXLInterface::<unnamed union>' [-Werror=missing-braces]
> >    826 | };
> >        | ^
> >
>
> Could you post your compiler version and the CXX flags you used?
>

From "make V=1"

depbase=`echo test-display-base.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
g++ -DHAVE_CONFIG_H -I. -I../..
-DSPICE_TOP_SRCDIR=\"/home/user/cpp/spice-server\" -I../..
-I../../server -I../../server -I../../server/tests
-I../../subprojects/spice-common -I../../subprojects/spice-common
-DG_LOG_DOMAIN=\"Spice\" -I/usr/include/spice-1
-I/usr/include/glib-2.0 -I/usr/lib64/glib-2.0/include
-I/usr/include/sysprof-4 -I/usr/include/libmount -I/usr/include/blkid
-pthread  -DGLIB_VERSION_MIN_REQUIRED=GLIB_VERSION_2_38
-DGLIB_VERSION_MAX_ALLOWED=GLIB_VERSION_2_60 -I/usr/include/glib-2.0
-I/usr/lib64/glib-2.0/include -I/usr/include/sysprof-4
-I/usr/include/libmount -I/usr/include/blkid -pthread
-DGLIB_VERSION_MIN_REQUIRED=GLIB_VERSION_2_38
-DGLIB_VERSION_MAX_ALLOWED=GLIB_VERSION_2_60 -I/usr/include/cacard
-I/usr/include/glib-2.0 -I/usr/lib64/glib-2.0/include
-I/usr/include/sysprof-4 -I/usr/include/nss3 -I/usr/include/nspr4
-I/usr/include/PCSC -pthread    -I/home/fziglio/install/include
-fno-common -W -Waddress -Waggressive-loop-optimizations -Wall
-Wattributes -Wbool-compare -Wbuiltin-macro-redefined -Wcast-align
-Wchar-subscripts -Wclobbered -Wcomment -Wcomments -Wcoverage-mismatch
-Wcpp -Wdate-time -Wdeprecated-declarations -Wdisabled-optimization
-Wdiv-by-zero -Wdouble-promotion -Wduplicated-cond -Wempty-body
-Wendif-labels -Wextra -Wformat-contains-nul -Wformat-extra-args
-Wformat-security -Wformat-y2k -Wformat-zero-length -Wframe-address
-Wfree-nonheap-object -Whsa -Wignored-attributes -Wignored-qualifiers
-Winit-self -Wint-to-pointer-cast -Winvalid-memory-model -Winvalid-pch
-Wlogical-not-parentheses -Wlogical-op -Wmain -Wmaybe-uninitialized
-Wmemset-transposed-args -Wmisleading-indentation -Wmissing-braces
-Wmissing-field-initializers -Wmissing-include-dirs -Wmultichar
-Wnarrowing -Wnonnull -Wnonnull-compare -Wodr -Wopenmp-simd -Woverflow
-Wpacked-bitfield-compat -Wparentheses -Wpointer-arith -Wpragmas
-Wreturn-local-addr -Wreturn-type -Wscalar-storage-order
-Wsequence-point -Wshift-count-negative -Wshift-count-overflow
-Wshift-negative-value -Wsizeof-array-argument
-Wsizeof-pointer-memaccess -Wstrict-aliasing -Wsuggest-attribute=const
-Wsuggest-attribute=format -Wsuggest-attribute=noreturn
-Wsuggest-attribute=pure -Wswitch -Wswitch-bool -Wsync-nand
-Wtautological-compare -Wtrampolines -Wtrigraphs -Wtype-limits
-Wuninitialized -Wunknown-pragmas -Wunused -Wunused-but-set-parameter
-Wunused-but-set-variable -Wunused-function -Wunused-label
-Wunused-local-typedefs -Wunused-parameter -Wunused-result
-Wunused-value -Wunused-variable -Wvarargs -Wvariadic-macros
-Wvector-operation-performance -Wvolatile-register-var -Wwrite-strings
-Warray-bounds=2 -Wnormalized=nfc -Wunused-const-variable=2
-Wno-sign-compare -Wno-unused-parameter -Wno-format-nonliteral
-Wframe-larger-than=20460 -fstack-protector-all
--param=ssp-buffer-size=4 -fexceptions -fasynchronous-unwind-tables
-fdiagnostics-show-option -funit-at-a-time -fipa-pure-const
-Wno-suggest-attribute=pure -Wno-suggest-attribute=const -Werror
-Wno-suggest-final-methods -Wno-suggest-final-types -Wno-array-bounds
-Wno-stringop-overflow -Wno-narrowing -Wno-missing-field-initializers
-Wshadow  -O0 -g -pipe -Wall -Werror=format-security -fexceptions
-fstack-protector-strong --param=ssp-buffer-size=4
-grecord-gcc-switches  -m64 -mtune=generic  -DCOMPRESS_STAT
-DRED_WORKER_STAT -Wno-implicit-fallthrough -fno-exceptions
-fno-check-new -MT test-display-base.o -MD -MP -MF $depbase.Tpo -c -o
test-display-base.o test-display-base.cpp &&\
mv -f $depbase.Tpo $depbase.Po
test-display-base.cpp:826:1: error: missing braces around initializer
for 'QXLInterface::<unnamed union>' [-Werror=missing-braces]
  826 | };
      | ^

$ gcc --version
gcc (GCC) 13.2.1 20240316 (Red Hat 13.2.1-7)
Copyright (C) 2023 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Frediano
