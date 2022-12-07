Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD4B645B77
	for <lists+spice-devel@lfdr.de>; Wed,  7 Dec 2022 14:55:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828D710E188;
	Wed,  7 Dec 2022 13:55:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02C9310E188
 for <spice-devel@lists.freedesktop.org>; Wed,  7 Dec 2022 13:55:19 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id f9so16433792pgf.7
 for <spice-devel@lists.freedesktop.org>; Wed, 07 Dec 2022 05:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=NL3AONAjAS3lj4cxG20IVQUjSi3kRqDWhAcr6AKVoWc=;
 b=IGF7eP21VbRlebAmWszSals+mcm8r/+NVcAC2Rc7ZoqGTqDQj/OYtKWC7uonuoSRsn
 XUmpvaAiNjWpaX+1qPwy1Ze/yYlZudUZOl4Zc33UA50u5AL3Qy08AZlRWHDEMl6Y15o+
 ikZUMP9uWFgsy/jXabqS8PX+HeFeibq9HjJoPwcf0Cd8yA1OptSUpnugLNwpSCXVSaC/
 P4W+I0yFhVUst0nYqTt5GxfGHEtLF4Elut07rhVexEKPuL87LAJL3BNg1VJ1RXqUPKP/
 ntrldHi3k37HRswTiOdH9ajNdLiATVWmFFhKUucqp+nvoFLFXm/q6CmOcXGSqMpZHdr4
 /n/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=NL3AONAjAS3lj4cxG20IVQUjSi3kRqDWhAcr6AKVoWc=;
 b=Oz395ofTDq/uZrayfi6aHAgJzQeall2DuGvJyGz1GW/gjZRM3Z8t8YqZIzPwXBKLVZ
 a9uMtkCu+0l1VoxfayoXuXB8qoFqdgz1k5E45Rb3agQJeHrK2KMOmzAWJndcqK5JlLjN
 60OLzYYYAaNLI0UHxvXU9AYckX6YvaPjvLWNScMaKVjSvaMtjmWBgN5xn4qlDfJVWPb6
 m308OKUiQca2M+Jlh4Y7Fr3JZNVGC3RxEHnEvu5KPC9NwR1jDJCpkVHz1f5oxusjW7C8
 giiPHRQrfitLZWtzRs23iv+kQXa8LFCXsNN00hnrL12JL9Yb99XQeb6uOVDAuRabiTG5
 my3Q==
X-Gm-Message-State: ANoB5pl9dVEyKexJkk8LxKdq/J2eN0WwVF2EWuKRcN8gyfN9ZnLbKmfk
 rJX/mxCL7OwyPLgfFJR0E2Q8hexOtC7fDgXObAySycLnZtM=
X-Google-Smtp-Source: AA0mqf778hFh+LPlnoUqTRSfRe/7V4No3QyRt4/v4piwfoR7DvnPSveX20qVkZrNGw+t6p6NPUxIOJfPFll6sWKLlPY=
X-Received: by 2002:a63:1b17:0:b0:477:de14:988b with SMTP id
 b23-20020a631b17000000b00477de14988bmr54027258pgb.131.1670421318237; Wed, 07
 Dec 2022 05:55:18 -0800 (PST)
MIME-Version: 1.0
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 7 Dec 2022 10:55:02 -0300
Message-ID: <CAOMZO5CZ2AVd5eb25ztrQa6k_VqoYK5zZX51bfMeZ8TdqMYfgQ@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Subject: [Spice-devel] spice-gtk: New v0.42 tag
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

Hi,

When is the v0.42 tag of the spice-gtk repo planned to be released?

I am asking because I would like to know if I add the following commit:

https://gitlab.freedesktop.org/spice/spice-gtk/-/commit/4dbe0da23f0f4d581f61798ec2a8eee92afd1779

as a patch to the v0.41 recipe in OpenEmbedded or if I wait until v0.42 is out.

Please advise.

Thanks,

Fabio Estevam
