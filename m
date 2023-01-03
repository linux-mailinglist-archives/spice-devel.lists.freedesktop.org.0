Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C14B65BC7D
	for <lists+spice-devel@lfdr.de>; Tue,  3 Jan 2023 09:51:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 908C710E3B3;
	Tue,  3 Jan 2023 08:51:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.tol.fr (mail.tol.fr [82.66.50.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E17B110E3B3
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Jan 2023 08:51:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="------------EuUnOsuXVDKumwG0nU8TU9K3"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=couderc.eu; s=2017;
 t=1672735904; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=k3E55GKvVq4gNz7pkB6iK6rnsXOCa/qMOLj1TLWRJkg=;
 b=O5WbdtdfDUVaIRUDWuIDudsxzaBvdc3EFXFhS9axtNTRENFycfl042ieYI4HBNggMI4KYi
 u0YsrTP8B3xm8+qpXiQbq/iTfSsQwEsynNQdVM8Sz7hKr2PsLcMmjmhR0Jw4IlU8T/XrRG
 tM2SIqpcy53g4+WaS2QgZBgQAbTXQE2JY0+0v6EmchtPnhX8Ocdm8QsT4vpWka2SRgMVnt
 +y5FmIqQtPt0JP4rfhfk/vQR1BlR+3kyp/kKRP6S1O9G90rSfGCyj86GaK7GiyYCSuWE65
 bKQ/fsciT3kTbYRzJk/9aDTAEWl/jQpvM/tMu2FfGGrsOFBSX9pXegI6OqGLLQ==
Message-ID: <d7532e7f-5845-34bf-7ceb-1e47d856be7e@couderc.eu>
Date: Tue, 3 Jan 2023 09:51:42 +0100
MIME-Version: 1.0
To: Xiaodai Wang <xiaodwan@redhat.com>
References: <a95fc8c4-6384-4b9a-7e09-878dab49c164@couderc.eu>
 <CAMVti-_3iqZqpu=qbq=z+pfSZAEQPmAStFFUMRRseqJn_=UFWg@mail.gmail.com>
Content-Language: fr, en-US
From: Pierre Couderc <pierre@couderc.eu>
In-Reply-To: <CAMVti-_3iqZqpu=qbq=z+pfSZAEQPmAStFFUMRRseqJn_=UFWg@mail.gmail.com>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=couderc.eu;
 s=2017; t=1672735904; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=k3E55GKvVq4gNz7pkB6iK6rnsXOCa/qMOLj1TLWRJkg=;
 b=S786McrHdltVLokhdDTSqjoil+6aiWNnAEa8EYspvk5KXoMyf9VrXofzYvrsVtcqIFhsrF
 doDs5l/LovipbAQlXgL8xcmXLcEkaMGwhP/2e6t8zNpA6GdMCqLs6lSswSqkJTWUqtR7Vh
 NjYY46PYpMAbRl8wjFkQy3+uCq3bhhkWhe05TQjSHycyBgsOftSx9NsBEmGdcL5uP+apop
 HDG2Yqb5v1EIPDPsKeBVBQ1qXnq7HlFMYIMBMD4QsurDbVsBPTVsNAGLXdKPCs1Gh4zrUs
 EqM0VLk5h9EqmbNllKKgmIMTG+2NzayVddXI4KtuWCxa4A0rEArhFY7auAAvZg==
ARC-Seal: i=1; s=2017; d=couderc.eu; t=1672735904; a=rsa-sha256; cv=none;
 b=MKkqRDDu8MbDtzzNE+DCvE65ngaGflwrEkjWJXoZ4dA+SL/QlcXOrPt/9b9UA6RUuqPVyvuJ4C9hSL1TAscPqp6EUrkqXhflbBwTpk0BLDNetDZPpwPUN73gVRshZYdnt0MPPVg1y0aECRNC7wRKCgklFk0qQoE5jOKyEKLtJbgU+Ar590bUp2uSH2SL3e2tNeyFI03Hvk1vOLQ7KL8o/xH+bkykF4zLDCPLWThpmyag+0Jmwe5ZrPakVoolRnWqmVy9weMh9li5fSA+ThCBHb/roKLliFE97tlxh0T1lsFbo0vQpu/yY8ufPaVi9ASHIFae9E9VU/cKRv2KcbEpkA==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=tol smtp.mailfrom=pierre@couderc.eu
Subject: Re: [Spice-devel] In spicy,
 how to change shft-F12 to ungrab the mouse ?
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

This is a multi-part message in MIME format.
--------------EuUnOsuXVDKumwG0nU8TU9K3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Thank you very much.

But it does not work I get :

option parsing failed: Unknown option --hotkeys=release-cursor=ctrl+alt

Moreover,I find nowhere a :

man spicy

!!!

Thanks again




Le 1/3/23 à 09:06, Xiaodai Wang a écrit :
> '--hotkeys' could do that. You may see the man page for the usage.
>
> e.g.
> --hotkeys=release-cursor=ctrl+alt
>
> On Wed, Dec 28, 2022 at 5:11 PM Pierre Couderc <pierre@couderc.eu> wrote:
>
>     Is is possible ? how ?
>
>     Thanks for any help.
>
>     PC
>
--------------EuUnOsuXVDKumwG0nU8TU9K3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Thank you very much.</p>
    <p>But it does not work I get :</p>
    <p>option parsing failed: Unknown option
      --hotkeys=release-cursor=ctrl+alt</p>
    <p>Moreover,I find nowhere a :</p>
    <p>man spicy</p>
    <p>!!!</p>
    <p>Thanks again</p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">Le 1/3/23 à 09:06, Xiaodai Wang a
      écrit :<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMVti-_3iqZqpu=qbq=z+pfSZAEQPmAStFFUMRRseqJn_=UFWg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div class="gmail_default" style="font-size:small">'--hotkeys'
          could do that. You may see the man page for the usage.</div>
        <div class="gmail_default" style="font-size:small"><br>
        </div>
        <div class="gmail_default" style="font-size:small">e.g.</div>
        <div class="gmail_default" style="font-size:small">--hotkeys=release-cursor=ctrl+alt<br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Wed, Dec 28, 2022 at 5:11
          PM Pierre Couderc &lt;<a href="mailto:pierre@couderc.eu"
            moz-do-not-send="true" class="moz-txt-link-freetext">pierre@couderc.eu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Is
          is possible ? how ?<br>
          <br>
          Thanks for any help.<br>
          <br>
          PC<br>
          <br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------EuUnOsuXVDKumwG0nU8TU9K3--
