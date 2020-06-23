Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7C0205304
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jun 2020 15:04:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 577096E3C4;
	Tue, 23 Jun 2020 13:04:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com
 [IPv6:2607:f8b0:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0D526E1E2
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jun 2020 11:13:53 +0000 (UTC)
Received: by mail-pg1-x541.google.com with SMTP id e8so4489527pgc.5
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jun 2020 04:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vs5XUJzvkJIHrDgSjdP9AEUpDRbS7dLc5yf3Nfubc+Y=;
 b=j2ZTnHDDOE5BxhGIPivq1oS3G4ugg6PEdsY9fUUkbHwtSMcJNgLDflV+OHz5meZQF3
 BFAQmwIt0G+lcbyEkwwmMNm7/vux7K+FZ0uRnQISZ09kjbCn/yV63vPhIS32uH8xizXK
 8ohVd/20zC1V22dGwN4iISXB7Kf3T+aPL4KEU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vs5XUJzvkJIHrDgSjdP9AEUpDRbS7dLc5yf3Nfubc+Y=;
 b=SEKPsvAMot5/VxDcEdKC7ZyfaFxUCSx9N6reuwprYfB1SfrE2+6FDd46vvTsOBGqXh
 lW7AogJjYOGoWqgFkBfrdV7bWxKKoHIcmBIeJ+p/1HCsdvETj+qJ1QtocJj32JEsFdvi
 YlV2WisNAMULNsj+4yH0MHmxo995aIY892yDU8SFt8V7oo/Br0glh9iBJNu5leAtH2+J
 8BfrdVuwLIRaM49AR4zrF5b8VRBoZQCvT8h32IoJ1Al8COgItLpK6owvJ/yKXWXNQTJ/
 R0qMuoA7UJjetpz8bFI1FzsA+cIr7BLgbpqo18xjHiE/j2kHvcou/pQ/qx5rcuF7Be0K
 bEOQ==
X-Gm-Message-State: AOAM532xq+y7GgcZdcwJtPFemYT0kCpfs3FLP0GdEn4EPI/X0jbglZzc
 Bnifn6rrDtMyyrKW/Un0Rf16ww==
X-Google-Smtp-Source: ABdhPJyjuzFWyFsqcggGTQa+mnGCYe+I+9HBzTLFe/W0YPKMzkC56ZajA1SosfEXeuZpU6IhBH9fag==
X-Received: by 2002:a63:2a8a:: with SMTP id
 q132mr16268818pgq.279.1592910829274; 
 Tue, 23 Jun 2020 04:13:49 -0700 (PDT)
Received: from keiichiw1.tok.corp.google.com
 ([2401:fa00:8f:203:863a:e217:a16c:53f2])
 by smtp.gmail.com with ESMTPSA id i22sm16816053pfo.92.2020.06.23.04.13.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Jun 2020 04:13:48 -0700 (PDT)
From: Keiichi Watanabe <keiichiw@chromium.org>
To: virtio-dev@lists.oasis-open.org
Date: Tue, 23 Jun 2020 20:13:24 +0900
Message-Id: <20200623111325.237158-1-keiichiw@chromium.org>
X-Mailer: git-send-email 2.27.0.111.gc72c7da667-goog
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 23 Jun 2020 13:04:33 +0000
Subject: [Spice-devel] [PATCH RFC v4 0/1] Virtio Video Device Specification
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
Cc: mst@redhat.com, hverkuil@xs4all.nl, laurent.pinchart@ideasonboard.com,
 posciak@chromium.org, dstaessens@chromium.org, nicolas@ndufresne.ca,
 spice-devel@lists.freedesktop.org, dgreid@chromium.org,
 linux-media@vger.kernel.org, alexlau@chromium.org, saket.sinha89@gmail.com,
 marcheu@chromium.org, samiullah.khawaja@opensynergy.com,
 kiran.pawar@opensynergy.com, acourbot@chromium.org, tfiga@chromium.org,
 stevensd@chromium.org, daniel@ffwll.ch, dmitry.sepp@opensynergy.com,
 egranata@google.com, kraxel@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is the v4 RFC of virtio video device specification.
PDF versions are available at [1, 2].

Note that this patch depends on a recent patchset "Cross-device resource
sharing" [3].

Here is a list of major changes from v3:
* Redesingned struct definitions for each command and request based on
  discussions at [4].
* Renamed commands/structs/enums to more descriptive names.
* Had different structs and fields for image formats and bitstream formats.
* Added more detailed specification for supported video codecs.
* Made stream_id be allocated by the device.
* Had a single parameter struct per-stream instead of per-queue parameters and
  controls.
* Allowed the driver to specify the number of buffers to use via
  "cur_{image,bitstream}_buffers".
* Renamed RESOURCE_CREATE command to RESOURCE_ATTACH command and allow the
  driver to use this command when replacing backing memories as well.

[5] is the diff of the header file from v3. Note that it only contains changes
in the header. We haven't updated the driver nor device implementation to focus
on protocol design discussion first.

While it may appear that many parts have been changed since the previous
revision, these changes are to address the issues raised in previous discussions
or/and to make the protocol simpler and easier to prevent misuse.
I'd appreciate any types of feedback.

Best regards,
Keiichi

[1] (full): https://drive.google.com/file/d/1DiOJZfUJ5wvFtnNFQicxt0zkp4Ob1o9C/view?usp=sharing
[2] (only video section): https://drive.google.com/file/d/188uAkIWE0BsXETECez98y5fJKw8rslj3/view?usp=sharing
[3] https://lists.oasis-open.org/archives/virtio-comment/202003/msg00035.html
[4] https://markmail.org/thread/c6h3e3zn647qli3w
[5] https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/2164411

Keiichi Watanabe (1):
  virtio-video: Add virtio video device specification

 .gitignore                        |    1 +
 content.tex                       |    1 +
 images/video-buffer-lifecycle.dot |   18 +
 make-setup-generated.sh           |    8 +
 virtio-video.tex                  | 1163 +++++++++++++++++++++++++++++
 5 files changed, 1191 insertions(+)
 create mode 100644 .gitignore
 create mode 100644 images/video-buffer-lifecycle.dot
 create mode 100644 virtio-video.tex

--
2.27.0.111.gc72c7da667-goog
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
