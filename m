Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C90E97B469
	for <lists+spice-devel@lfdr.de>; Tue, 17 Sep 2024 21:51:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64E210E078;
	Tue, 17 Sep 2024 19:51:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=daynix-com.20230601.gappssmtp.com header.i=@daynix-com.20230601.gappssmtp.com header.b="vDZFYQIu";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE85F10E078
 for <spice-devel@lists.freedesktop.org>; Tue, 17 Sep 2024 19:51:33 +0000 (UTC)
Received: by mail-qt1-f169.google.com with SMTP id
 d75a77b69052e-4582a0b438aso50997681cf.0
 for <spice-devel@lists.freedesktop.org>; Tue, 17 Sep 2024 12:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20230601.gappssmtp.com; s=20230601; t=1726602692; x=1727207492;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aZhY+N5JRVgoCj1XolW6ghvBYP18ehuRgIy6EbpRJkQ=;
 b=vDZFYQIujt1RGc2Ed1a12vYmBpbOA1dtYsdUyRPX/o9cH7HTHqPcMHnpHTBJpihiJT
 EQ+6OnlL6Tfl1CuTxw0ak7yMePrvu9buSBuGPzv+juJZMgA+Hg0QRrnfc0NdccZf0hBA
 nGYQCNW4qpx8AYyQiQbmkKi/TQtFucOR6qylELVSmxT+n4JfPesVUEnRoMFKc8oaWijA
 5/e/1cU3G7CiGTvLiSzrhukJ5N79Vh4ai8DB4uHwA6G0lesDY4hXTv3YoF7wzENNvJ5p
 7ERLxsW56xSZUtPPqlV8gwju+1eHIpYefTQ6TSwhiKkhkz4jjFU1obBNF6Fi6hHlMMqf
 waDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726602692; x=1727207492;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=aZhY+N5JRVgoCj1XolW6ghvBYP18ehuRgIy6EbpRJkQ=;
 b=GTGhFj5cDMVYgnBekUfkcYJyuSL6syCu0CvM0tCCxIzLkd+6YFL8MBgUgshgEG0AHz
 QmJNIYpc9gRnPSiwSeiEQPrXZsGQEAZoDFNWTxJmiy8jN7wvHyYugHsFjoWGjgMtJ5c2
 sm6eOXl3uKmDynZuIX3zvjXuqTN85gGn22DccH9l1ljesYDHGD+mRMuCmN7Sw6Kr9PP8
 B7zRtQAOcL5F1KUVDOKMOiMDJwtzZmAQQsxVQcPts1xLLdTxJrYbwWTGIA8CSlxJX3y2
 h+mR0Qw7WLQcwM4OKe9KO6FmwFitRUxZS2p3QOlbwhCBkhMm/9/30bfvv3CHN6bC6J5R
 xwNw==
X-Gm-Message-State: AOJu0YwA0YFzsVSUFgL2w2d7qcMBYWrdSWgbmZVkUHBlk2wekbRQTyhh
 ywMuhPwnUIA5iRGxbwPqSmT1wTeYZPeL5wT05PuH78Oc6ORlXeQZLZqUfGCH1O7Y3x3GZM2FTq4
 91E0OCiYalVVtsOJ3HccM1bSYjZlKst8XSZEdvPylyl/7HdKrBlo=
X-Google-Smtp-Source: AGHT+IE+S03oPFIVbQ2wLO50EXDsDNO1Hm9zMQmj8E3168yN7smiDz7eB1OQaHdoSSkRL9lVQWAiEppgNg3Y7uTkHEI=
X-Received: by 2002:ac8:598e:0:b0:458:2405:3b79 with SMTP id
 d75a77b69052e-458602bb301mr239875821cf.2.1726602692461; Tue, 17 Sep 2024
 12:51:32 -0700 (PDT)
MIME-Version: 1.0
References: <709006a2-3c30-e055-033b-1a9258056f5c@srr.ro>
In-Reply-To: <709006a2-3c30-e055-033b-1a9258056f5c@srr.ro>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Tue, 17 Sep 2024 22:51:20 +0300
Message-ID: <CAOEp5OfMh=ZRic3HOjoz_PV=bwhuizZvEABy-W_Ww8KWg53Z8w@mail.gmail.com>
Subject: Re: UsbDk on Win7?
To: Andrei Boros <andrei@srr.ro>
Cc: spice-devel@lists.freedesktop.org
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

did you install https://technet.microsoft.com/en-us/library/security/303392=
9?
it is required on Windows 7, otherwise UsbDk driver's signature (sha-256) i=
s not
recognized properly and OS fails to load driver.


On Tue, Sep 17, 2024 at 3:33=E2=80=AFPM Andrei Boros <andrei@srr.ro> wrote:
>
> Hi,
>
> I'm stuck using a Win7 workstation (for now) and was trying to get USB re=
direction via virt-viewer to the VM.
> UsbDk however doesn't install on my system. Tried all versions, even the =
oldest one, from here https://www.spice-space.org/download/windows/usbdk/
>
> It throws an unspecified error and the installer fails.
> Managed to get msiexec to blurt out a log (attached), but it's beyond my =
understanding.
>
> Should UsbDk (by design) work on Win7?
> If yes, how do I get it to work?
>
> Thank you.
> --
>
> ing. Andrei Boros
>
> Serviciul IT&C
> Radio Romania
> Tel:   +40-21-303-1870
>        +40-745-115721
> Email: andrei@srr.ro
