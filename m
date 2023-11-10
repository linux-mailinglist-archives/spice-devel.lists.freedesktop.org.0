Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A706E7E7C8E
	for <lists+spice-devel@lfdr.de>; Fri, 10 Nov 2023 14:27:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A25010E044;
	Fri, 10 Nov 2023 13:27:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com
 [IPv6:2607:f8b0:4864:20::c30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52A9710E044
 for <spice-devel@lists.freedesktop.org>; Fri, 10 Nov 2023 13:27:15 +0000 (UTC)
Received: by mail-oo1-xc30.google.com with SMTP id
 006d021491bc7-58786e23d38so1137049eaf.3
 for <spice-devel@lists.freedesktop.org>; Fri, 10 Nov 2023 05:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699622834; x=1700227634; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XJOc2RyU4aY3XW2GYyW8BCFjVJDq6I0gZcW2LC0Nbiw=;
 b=M810JD2ev3ZxGPJO3rtT9Olkr6r6zCpa+OGBMkMOajwRRd5LbocreycC1yoH6z3fDP
 jgoCo5WSxE66GzR+tG/gbqWv+l9OcBvB1t1IdJi9r4NiPJbCrr8hY0JpbBxEYOGCidw3
 Jb10QbTBntRDUrFPWHLk1zUHvy99vuynvqGhJ0gY0UiSxa+npaEDo2Dp8expq4aq8uGt
 +DRA8XPfKDVcd8v5+/0b4Oyod4C6s3+g1R1L8w2N4WrxgAMe4Ol9hq5MCzFL9gBE770B
 OltYzRlegjAMPm/VWpwH8IdjjSXavrZVS4lUq+erJTI1Qu7G4KtWxbcM5wuXmWZIhjOF
 Zh9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699622834; x=1700227634;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XJOc2RyU4aY3XW2GYyW8BCFjVJDq6I0gZcW2LC0Nbiw=;
 b=PBb+iZFESSiZ8s50x3a3Slc0btOQaNZvufGynMpg3ERMZuws5/OtqFZVYFV5bxac8T
 mVj3eizv6SAzc9fOTg6WmDD479K/XPtxdIPPCJ3Np8Hvp/hVK1CBJOvCf5loLk8ZwCOX
 lghDmu9enCroua0AlJma+C2JIpsabKHK3Up3s+l8+ntdibPlY/wDCh16Nse6yV6ir5Cd
 aIT6ycVEKN88c3ltVJCNPIhoFXLOR06yDJN+wqrMuKySHD3GPU73guR/SUHgm52q3REG
 tMImSMyAMrZZTumKc9lIM+7T8i3OJFy0RMzdH0m5ECdB8BB1pTT0iHYjcXAZEA6k/2Cw
 LKQw==
X-Gm-Message-State: AOJu0YxjQ7ye6gQxyd6AJclikh7sA4Q/dWw6CAWkIvqKxjluo0YgEYFM
 xUvF3BL8nQceJnIg4Sw0pXD1VVH8qt92Lk3it7c=
X-Google-Smtp-Source: AGHT+IFVgwa+eWbbrevlXUgcCbC+xPeZmnRkIaLh5CLGrsN7V3E73WzPOJ9rGS1JZfcyJZQOHbjmb25ZghhMp4VL2wY=
X-Received: by 2002:a05:6820:22a0:b0:57b:7ac4:7a94 with SMTP id
 ck32-20020a05682022a000b0057b7ac47a94mr10024360oob.2.1699622834453; Fri, 10
 Nov 2023 05:27:14 -0800 (PST)
MIME-Version: 1.0
References: <20231103085933.1873-1-freddy77@gmail.com>
 <CAAg9qJ1Meb3zvecvw0XiJcj1WpG1z-PR+cM7cy2XjVoSaBCRbw@mail.gmail.com>
In-Reply-To: <CAAg9qJ1Meb3zvecvw0XiJcj1WpG1z-PR+cM7cy2XjVoSaBCRbw@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 10 Nov 2023 13:27:03 +0000
Message-ID: <CAHt6W4esrGi7cE1hFc5qPXwwPYSx013wQ5ub+LnQ26Djmxhftg@mail.gmail.com>
To: Uri Lublin <ulublin@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] [PATCH spice-common] build: Avoid Meson warning
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Uri,
   good catch.

Opened https://gitlab.freedesktop.org/spice/usbredir/-/merge_requests/71.

Frediano

Il giorno dom 5 nov 2023 alle ore 13:02 Uri Lublin
<ulublin@redhat.com> ha scritto:
>
> Hi Frediano,
>
> On Fri, Nov 3, 2023 at 10:59=E2=80=AFAM Frediano Ziglio <freddy77@gmail.c=
om> wrote:
>>
>> Avoids:
>>
>> WARNING: You should add the boolean check kwarg to the run_command call.
>>          It currently defaults to false,
>>          but it will default to true in future releases of meson.
>>          See also: https://github.com/mesonbuild/meson/issues/9300
>>
>> Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
>
>
> Acked-by: Uri Lublin <uril@redhat.com>
>
> From a quick scan of the git repositories, there is a 'check' missing in =
usbredir too.
>
> Thanks,
>     Uri.
>
>
>>
>> ---
>>  meson.build | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/meson.build b/meson.build
>> index 1018769..33f8f8a 100644
>> --- a/meson.build
>> +++ b/meson.build
>> @@ -132,7 +132,7 @@ if spice_common_generate_client_code or spice_common=
_generate_server_code
>>    if get_option('python-checks')
>>      foreach module : ['six', 'pyparsing']
>>        message('Checking for python module @0@'.format(module))
>> -      cmd =3D run_command(python, '-c', 'import @0@'.format(module))
>> +      cmd =3D run_command(python, '-c', 'import @0@'.format(module), ch=
eck : false)
>>        if cmd.returncode() !=3D 0
>>          error('Python module @0@ not found'.format(module))
>>        endif
>> --
>> 2.41.0
>>
