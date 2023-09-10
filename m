Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5A8799E8D
	for <lists+spice-devel@lfdr.de>; Sun, 10 Sep 2023 15:56:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC63D10E047;
	Sun, 10 Sep 2023 13:56:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19A318913D
 for <spice-devel@lists.freedesktop.org>; Sun, 10 Sep 2023 13:50:26 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-402ba03c754so10327005e9.0
 for <spice-devel@lists.freedesktop.org>; Sun, 10 Sep 2023 06:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1694353824; x=1694958624; darn=lists.freedesktop.org;
 h=content-transfer-encoding:subject:content-language:from:to
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cBvKNpoXNJWiLnfy+3d+u9HkZO7JwCGtmmeR8dpYOec=;
 b=V2R5UQoOk3yHhC+/pU6KPaZAhz3QL6bqOoctCCgSd2Id5iy2OljHtdyBPUF4QbDY22
 ZlX3klZeiMfxBUEUrHI7F97wArxe9QvJXYpf2YH4LLzXXOYapfOQq54DkcmGMU4zRXtJ
 lfmASU6cLH6ICFVvH93UgQRImsxm9Y6cUaoues/woc7bIY9TY60k3DfqSQwxDkywQAb/
 z3iBFzabwZZ4R8nlPe1qnPOc1F2yq+AwfIt3AU6wAC/WDj/hJDmU9xeOwfFcbwRN7qOk
 PJiIwAa/c8G6t8M2G10LxpZ6qQrNcTIi4E9s8pFT6Rz0RPp5KlW7yfcxP9NlKfC8jWNf
 02Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694353824; x=1694958624;
 h=content-transfer-encoding:subject:content-language:from:to
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=cBvKNpoXNJWiLnfy+3d+u9HkZO7JwCGtmmeR8dpYOec=;
 b=ozfJfXS88E1QULkj44Kfkv9Ez+asoS5KDMzhGR9z4uN79zIkxL9giBto4PSYC2mRZi
 +HOjF211pqDFDi74WzV5kw+qhGG9cL//Gvc+HZ0IpU/fr59v7O78wu9B44ptx9g3aa8d
 wv8TBARSoj7geyjaG4cSt8f9RbwdulE79T4taTOZyxTOphLBm5euQ04oj9rEvvKTiFkK
 uvlK1dC/owfT6OoANAD+pj6ut2JC7QgtRtkqKiRDybBESaDEBUawj61cTTA4bQEACgEY
 e8StcasQRQGuRdORD1V6ZZRa0jFuIuGY1I1c/ELoGKLs+xp5/5MiaeJGUBoRuSARVcSk
 cpeQ==
X-Gm-Message-State: AOJu0YzuI5eygg/a+0nDXW4SQBjLU6eCUXBPRSqK3VmXE18GToZpc5ca
 yK5sWBhx+bZD43PJnfw+R1V2G6/BJRI=
X-Google-Smtp-Source: AGHT+IHVIiU3YxQOIqzDG5E5mGIePACn47tZRUaKlIw9SfFhCUYVORaiWDpyp4sG+Hm3B9Ldz9eIqQ==
X-Received: by 2002:a05:600c:3b07:b0:401:db82:3eda with SMTP id
 m7-20020a05600c3b0700b00401db823edamr6576527wms.1.1694353823613; 
 Sun, 10 Sep 2023 06:50:23 -0700 (PDT)
Received: from [192.168.1.3] (lfbn-mar-1-113-223.w86-229.abo.wanadoo.fr.
 [86.229.85.223]) by smtp.gmail.com with ESMTPSA id
 gw18-20020a05600c851200b004030c778396sm1425277wmb.4.2023.09.10.06.50.22
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 10 Sep 2023 06:50:23 -0700 (PDT)
Message-ID: <99cd1b18-a4ce-5d93-62a0-726a64297b4f@gmail.com>
Date: Sun, 10 Sep 2023 15:51:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
To: spice-devel@lists.freedesktop.org
From: "Daerlnaxe (GMail)" <daerlnaxe@gmail.com>
Content-Language: fr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sun, 10 Sep 2023 13:56:29 +0000
Subject: [Spice-devel] A little help to start to develop.
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


I'm sorry to disturb, i want to try to develop a spice client with some 
features like adding visual effects. I try to see all possibilities for 
a projet about retrogaming this is the last part. I found Spice 
interesting, i have a good render, it's quick, i just want to customize.


I don't have really habit to work on c/c++ i worked on ihm with visual 
c++ there is a lot of time, but the most of time i work with java or 
c#.  I know it will not be easy but i want to try, i want to make my 
projet compatible for linux and windows.


I need some advices to quick begin, like a basic client sample, i can't 
find anything on the web. I saw documentation but it's pretty difficult 
without a basic example, furthermore i'm french and for me english is an 
additionnal difficulty.



Thank a lot.


Best regards.



