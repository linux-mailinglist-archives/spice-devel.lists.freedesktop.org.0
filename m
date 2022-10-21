Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 073A0607349
	for <lists+spice-devel@lfdr.de>; Fri, 21 Oct 2022 11:08:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3726610E64C;
	Fri, 21 Oct 2022 09:08:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from EUR03-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur03olkn2099.outbound.protection.outlook.com [40.92.57.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01B3710E648
 for <spice-devel@lists.freedesktop.org>; Fri, 21 Oct 2022 09:06:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M3r/LA0KAO5AWVuQZ87Ot4JrzPpy1hhRTt57iQw0iHOQg/4va72XgtG/BYZonAfD5BS8NGBBgseehlCpAJleu4h2fyAU3CRe4Y79fKWOYzeQ1V+x6OTcPyHwJuJQkyiq4vZ6TwAEJ5MbDh24D5WXdft79NuBNcgYxvNBu3HdMTomRwQnvC1fO+lwH/gxO9gWz2vulvEa3d5YX5Ag51tra7uKzcQpAXjkSD0lJ1+V66cLD4FM+RQJ4RkXuKFurvMiJPQ+vcGs9vZgenTqNqXJbjaFm2Ip1QGbghGeaAxOKFBIWBP8f8QZB5KqHQxd1sWftYMM8TCHLvp5oLzJdh6qqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YXgcIH1LfgSg+DqiY+yxcu4R65yzYTbFKLBlrh0S+Yc=;
 b=f+s5QkxWjsvRAzrjj+Bs+x2S5vQPtEC7J6294O8/a3RFoH+HwfuMYb2xtNYSeoptCS4T+Ggv777TVuIrWcPc1BgRkds4gxFCOklIlTNp+arUMDsUR2MwvO01goYe5SUGvVi8CSRo0W8VPte6V629Sa8KfdHzgHJIRTdt6C0aDfLFbSBxvlRdFfcm5bVlQ6Y+6EFBF+gSACSIt5PAmxVip/1ZI9pA1e+2/KHwQOxrAYm5TIG5NDDHRmb6DCiC4nYAw0dg0Eep9FO42YPb1o+iBCGQEMgvAYiOMOqGQpotSN1VpohryqcVumnfTV0pPpuwd7VF/giIBE56PFVY+XlAwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YXgcIH1LfgSg+DqiY+yxcu4R65yzYTbFKLBlrh0S+Yc=;
 b=cpVSiDH3DgROkR1pv0V7JGJG/LwazH554OCkrFtlZGJdSReZCwiyxuoqgWmZa5/FLayagcrf189nzTM5WWclBA0HcMnkCekVwKY5cbIocZSRBNcRlp3CdARyYWx5jONxwF1xBLN5s0sWIwj10QZ0Fg6QxHvgc48WnO9oxXE+DrFW6kgHt8QBQCKYYhsltetVdlkip/CqESx+m2E97cl+01+hzc6Z2PNUOebIeYxJcdKB8SboW/5aXwYl7oqYAI5ZEzmcmrjb2rNEyTkT+cla0XG6g2a7aMAC6F4HpgUyZ2rOXu6CvfkD9N0xqgzL4ih+v6gOzkU35OvpBdt3rxFk4A==
Received: from PR3P195MB0926.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:a3::13)
 by DU0P195MB1884.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:3e0::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Fri, 21 Oct
 2022 09:06:35 +0000
Received: from PR3P195MB0926.EURP195.PROD.OUTLOOK.COM
 ([fe80::f7ab:71c1:d516:62a2]) by PR3P195MB0926.EURP195.PROD.OUTLOOK.COM
 ([fe80::f7ab:71c1:d516:62a2%3]) with mapi id 15.20.5723.035; Fri, 21 Oct 2022
 09:06:17 +0000
Content-Type: multipart/alternative;
 boundary="------------uToo12a82O91iCJKRN1eoNxP"
Message-ID: <PR3P195MB0926FB4F790A29D8F44852309E2D9@PR3P195MB0926.EURP195.PROD.OUTLOOK.COM>
Date: Fri, 21 Oct 2022 10:06:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
From: Frantz Honegger <frantz_honegger@hotmail.com>
To: spice-devel@lists.freedesktop.org
References: <89b5b380-2130-4853-c3e7-793f99cd6d61@hotmail.com>
Content-Language: fr, en-US
In-Reply-To: <89b5b380-2130-4853-c3e7-793f99cd6d61@hotmail.com>
X-TMN: [SPlVw7NFokk2p7F/vCqi/hJeLZuNsyeZLhDvoggrpUY=]
X-ClientProxiedBy: MR1P264CA0175.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:58::7) To PR3P195MB0926.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:102:a3::13)
X-Microsoft-Original-Message-ID: <29cd8a81-2599-a008-8a38-5dd8c4155509@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR3P195MB0926:EE_|DU0P195MB1884:EE_
X-MS-Office365-Filtering-Correlation-Id: f15f5f32-28ec-488f-cf29-08dab343830c
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M0hfRRd0J2F3dJDF4nZJ9FGaZmbAYDGNG0U+jLLyUoxgv6BbUwoUKVkbAG7uqtSvLeS6Zq0lcCIUBHDhOePQaaxHrxVtFtiEVZvx11bFiRWME8au7lEKVDL5Pq+col8mlmEo5UxBxayidli5mQDVJQIIKA39ETZ6P/2M5xSQ/b+Qz7ay7TCBocxiLVpmYpK8Ps7E3CimIvj3VQ6qOS5Y7QEPXx2/sxJncp8pcQYZMciPWyyk1ZW7fX+MJhVDnncJhAcaMyAM4Vc54kteAZt9SG9zlYfpSa1hMgdnB79R+3qJHuUNFvJb8eoeF6i4jQibiOaQSUbm4IH0IgUZadBhPk+jT+g7/aioa2W3uRuTMCrvj0IEVwtkFmEjxDdK3hi9Ebfmx9iGOAHFC5wiWv0ZYUN0oY7+7Lx29z084Q0pV0vP0wZe9jz/87cUvg0HuPzt7EGWl9+MEdZO7qwr88BiwTkJaZHSxsv1MadZkVWsym7iawZsGQe6rX9YKEyilVNqfoRwJ6arcKvT0sO6lvDTVK+udLp4Vjee5uBu+1IKbgrAEoNbOsFlwFHAW06XEk7DkqPVrIOkKhT0dZQRrQS+CXFYyjYKjwU47ad0N39E0CFWTV+hpLdCAwcVes2WdnUddK79z5GbSwtNFj1H2DRsIfeOwWp8+brsiPyfr8BIqMUOGcICAU2jTce1GO3ESkfg
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UTNVK05JaFBrajZKV0JwdmpxNVZpU0trZWhpZllNRFl5clAyYVRqOFEzRC9W?=
 =?utf-8?B?cXRhbkxESU1SN1BXc0sxNm83UkhSUEVDbEhqQXV3SDJGSmsxS2FlTnR3N3R2?=
 =?utf-8?B?dFo5ZzZaZElvRGNxTkxySGF4SFpYbVEvZWc5Q2xJSDNLU1JBTVdxcmQwcG8v?=
 =?utf-8?B?WnpraUZSeEpMQzR4V1BlaHBtMXRCR3dKZWRwZDlELzBqTC9GVGp3WnN4RjZG?=
 =?utf-8?B?NFJmbW1Nd3FoeEV4UVRpVnVPYktiMTZseXB3TjFXZHpZdHg5SW9uTnRyQjVD?=
 =?utf-8?B?UG13eVFYdUR4QTJwaFpFODJvUkVPaEVNZlV1WElOY201dUQzTE1XdlNuYXlV?=
 =?utf-8?B?MlFRb3JoN0hKUWpsN0FrTExhVEpRYW9mUlBza2kzM3k2eTU2aDJHTldIUTg1?=
 =?utf-8?B?U1lTL1VRcEFvV1M4dlZ4VjlZMERwcG8wMjU1ci9zOXgxZnExemVwZi96TVU5?=
 =?utf-8?B?S1JtMjRTK3FVQU5DSXRLQnhJV2tBcUhnRHhXcDlEMEg1RlZLQXAxNTkvQ0dz?=
 =?utf-8?B?U2JXVy9vQjdjZDhvd3dmaWZTbDFTUWZNTXhrSzlPeFJmY2wrSEU3aHU5SFpv?=
 =?utf-8?B?V0VkYVAzVUl1Z1BxUFQ3Z3BWMnZDcStLSXY3QnpxT1JQK1g0TzAyaW1QaXRo?=
 =?utf-8?B?UW9sanlhRTJuSy91azJVaUNYV05ZdnhSbW9yci9JM3NHZnBpbzFVK1VNWkJZ?=
 =?utf-8?B?Q0pXOUIxYzJMRmJ1VERkNFZEVVU4THFPK2RiZmtDUlEwMnNsOWdtTVBXdmdz?=
 =?utf-8?B?OWpQUUl6aFp0bEFIcnBDWHJyRm1TOHZHUUlEcFFSWFY2Q0xUYlVGa0E0NFlk?=
 =?utf-8?B?K3BPZDRVYzJCb25NQk83SEkxSUovblZZUGRDcXdsTktBbEVxQklFVTgybmg5?=
 =?utf-8?B?cWxESkEzNHoxVjRTQVFYVzJ6L21ncGZraDgyTUdDVXAxdHplVGEyUmJWSCto?=
 =?utf-8?B?ek1teXl6WXFwY1FCRm1Bc0hjN0hIT0VjOVhIdVRzTGIzRFVXdWpqaEU1TG1t?=
 =?utf-8?B?WkVCQmFxcUxCTTBSQjFRdjVxTjBBMXRBdTc4MGJtTTRqTS9SWlpGdXJJQWRy?=
 =?utf-8?B?R2pWclRlc0s2UlNrbXdBZWdEdFFIVHZBL09yMkNPUnhOZk83VWR4b2xqSkQ2?=
 =?utf-8?B?RndGSU5mZjdrQTUzMk1GcUxGbE9qbFhpUmV2c09kdzBYcVpnekE3UHVDN3Fx?=
 =?utf-8?B?NEpFNEhCN3VSYUpTbEtlVEo5Y0dLQTFSZjFjRms3SU9oM0tFLzZoV0NDWTJ4?=
 =?utf-8?B?RFlLVWVwYXNRVHhCRnlaejhGUnZEclptOC96bWoxM1ZGa0ludkxGN3g3Ulgz?=
 =?utf-8?B?MGQxNVRnMFJCa0U4S3VXQlRETnBCM1MrYmhBZ1NNdThxTnp0MkY0VC9MZ1Rx?=
 =?utf-8?B?UklQMVJQQ0w1NURhYTdqdHdBejMrdFhZNHlyZ3pqNWVMWnBweVc5LzFGZk5J?=
 =?utf-8?B?elc4YlFoeGpJSjIxdVpnS0x2aDhNb21uUGR5UlVwNXYzczZVakgwSzczT01K?=
 =?utf-8?B?VFRsY1QzS01VUkZ0THk3WGF0MFdoWEJ0d3dqV3dVdldOdEJyZmgvTDNidG13?=
 =?utf-8?B?R1ZyUUZ3aGU3ZVRJREhYUUx5MkFpY0s3cjlDYUZ3dkVRd29wbHZ0ckt5NHVx?=
 =?utf-8?B?Wk1CcE8xV3M3RGNuNktHaVhaR0JSbWFNeWJqQ1NIUzZ0eS9mK3lrUnMralpV?=
 =?utf-8?B?LzVnOGd2anZ5aDRvZ20rVTVzZFNOQ3FUMHVBbG1GUGljSzNBS2ZSY3huY2xo?=
 =?utf-8?Q?fziPlr9Ey08pAQaQXE=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-49ed2.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: f15f5f32-28ec-488f-cf29-08dab343830c
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0926.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2022 09:06:17.2150 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P195MB1884
X-Mailman-Approved-At: Fri, 21 Oct 2022 09:08:42 +0000
Subject: Re: [Spice-devel] spice-webdav - change default shared directory
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

--------------uToo12a82O91iCJKRN1eoNxP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear Mr,

Please disregard my previous email as I finally found the answer:

//usr/bin/virt-viewer -w --spice-shared-dir=/home/user VM/

If you don't mind, I have one remaining question: is it possible to 
enable folder sharing by default, so that we don't have to go to the 
File" → "Preferences" menu of virt-viewer to enable it each time we 
start the VM?

Again, thank you very much for your work and your help.

Have a very nice day,

Best regards,

Frantz Honegger

Le 20/10/2022 à 19:19, Frantz Honegger a écrit :
>
> Dear Mr,
>
> Thank you very much for your time.
>
> Could you please provide me with additional information about the 
> necessary settings to modify the spice-webdav default shared directory 
> (the directory is ~/Public by default, but I would like it to be 
> /home/user for example).
>
> I did a lot of research on the net but could only find the below 
> information from https://github.com/lofyer/spice-webdav :
>
> */In your virt-viewer client/*/
> //
> //The Spice client can share a folder with the remote guest. By 
> default folder sharing is disabled. Use the remote-viewer "File" → 
> "Preferences" menu to enable it. The default shared directory is the 
> XDG Public Share directory (ie ~/Public if you use a regular system). 
> You may specify a different folder with --spice-share-dir client option./
>
> The problem is that I don't know where the "--spice-share-dir client 
> option" should be set (I am using virt-viewer). Could you please 
> provide me with a concrete example or more information?
>
> Thank you very much for your work and your help.
>
> Have a very nice day,
>
> Best regards,
>
> Frantz Honegger
>
--------------uToo12a82O91iCJKRN1eoNxP
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Dear Mr,</p>
    <p>Please disregard my previous email as I finally found the answer:</p>
    <p><i>/usr/bin/virt-viewer -w --spice-shared-dir=/home/user VM</i><br>
    </p>
    <p>If you don't mind, I have one remaining question: is it possible
      to enable folder sharing by default, so that we don't have to go
      to the File&quot; → &quot;Preferences&quot; menu of virt-viewer to enable it each
      time we start the VM?</p>
    <p>Again, thank you very much for your work and your help.</p>
    <p>Have a very nice day,</p>
    <p>Best regards,</p>
    <p>Frantz Honegger</p>
    <p></p>
    <div class="moz-cite-prefix">Le 20/10/2022 à 19:19, Frantz Honegger
      a écrit&nbsp;:<br>
    </div>
    <blockquote type="cite" cite="mid:89b5b380-2130-4853-c3e7-793f99cd6d61@hotmail.com">
      
      <p>Dear Mr,</p>
      <p>Thank you very much for your time.<br>
      </p>
      <p>Could you please provide me with additional information about
        the necessary settings to modify the spice-webdav default shared
        directory (the directory is ~/Public by default, but I would
        like it to be /home/user for example).</p>
      <p>I did a lot of research on the net but could only find the
        below information from <a class="moz-txt-link-freetext" href="https://github.com/lofyer/spice-webdav" moz-do-not-send="true">https://github.com/lofyer/spice-webdav</a>
        :<br>
      </p>
      <p><b><i>In your virt-viewer client</i></b><i><br>
        </i><i><br>
        </i><i>The Spice client can share a folder with the remote
          guest. By default folder sharing is disabled. Use the
          remote-viewer &quot;File&quot; → &quot;Preferences&quot; menu to enable it. The
          default shared directory is the XDG Public Share directory (ie
          ~/Public if you use a regular system). You may specify a
          different folder with --spice-share-dir client option.</i></p>
      <p>The problem is that I don't know where the &quot;--spice-share-dir
        client option&quot; should be set (I am using virt-viewer). Could you
        please provide me with a concrete example or more information?<br>
      </p>
      <p>Thank you very much for your work and your help.</p>
      <p>Have a very nice day,</p>
      <p>Best regards,</p>
      <p>Frantz Honegger<br>
      </p>
    </blockquote>
  </body>
</html>

--------------uToo12a82O91iCJKRN1eoNxP--
