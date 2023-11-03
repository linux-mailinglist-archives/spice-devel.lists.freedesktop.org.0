Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C7E7DFE99
	for <lists+spice-devel@lfdr.de>; Fri,  3 Nov 2023 05:58:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A118710E052;
	Fri,  3 Nov 2023 04:58:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 539DF10E052
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Nov 2023 04:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698987521; x=1730523521;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dHqk8ba5YrVvWT5P8SrqSazBphGaYDa08feyHbov53Y=;
 b=QKV0ioua0Lqmwl4B06g4ML+tiInQWGUZ6SkYYXQCbt0UNDbWS+CS52iK
 baMVXy6Iy2ibNix+Rvra1SDxkYXIcXYwAFEb5LqBW7G6XVct2vDHY24/F
 38ouLmTMVXFiJk3vZ/cb2ageAbISXFziuMDJ+A0WNV1gLEqBqTi5Jd1eo
 3VffImyw6qbtOlMzcUxxFGdENMjRW9PYJBoRouTTCntnqNz1yygsOYu10
 zZfVwnVJb+xG2XBnEw0iNjrq3BQ5I1koerHJRvem0ijusP2i7dewJ9KL4
 +JLeHWoJXEuipsnXPx3pSJRaDEImFA7t1HCGGnZlmwgXhZ1PeWU8wd2sP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="1752219"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; 
   d="scan'208";a="1752219"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 21:58:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="796510136"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="796510136"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Nov 2023 21:58:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 21:58:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 2 Nov 2023 21:58:39 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 2 Nov 2023 21:58:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ix6cXTMrDmhn3FXPbUXccT95YKvGw51QMUT7H1an6qajFJX4hObIcNkK+j2D4ybmTmHDoj019sVDWwszNmI5AQZXVrPRigWQzQzyNcKEqGG5d8u+iTUIF4UYa5ySy8K1YhYmOv0UkI6Amcs1I54TcQY4EkB9OKruIwz+5lZV3A5VNxeg5z311H742fvwhGiv7zKT4mX+LhbxyXBPHnSZMn89Jnz8NGcBXFAZOvB2ZH6Mm0GoNggSbKJjuBJaWVPfXuf3TtLkN+bqEHLn+JPMraiVI/Nc2/oQMxhPvUpxi3dYem4iotNRm4IN0FSZHxO95c3m8qnPVkO90UeedOAheA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yQNGqsr4oi1RClk4BI+UgLH97rSS0vD2/aTX5pWfg08=;
 b=XCWv3VsGlteGRuVJaBw52Jo+fIdnw2khvpbhOrJH+6wqyoGMyZY2vB5BSOTJVdDeRYXDa+HwtmCLsVsqBG/A9t0BnwBW9pgdVXhxNE5kx5U0qlrv8o6C/juM5P69sekt+kz5OLImnXk6Kfgo8Cmkf+B6Ia/1T95Cx0dPnG6HLP7yaEkErIAupTf6UyCIiVDGJmUErxXmv1GIYdYWRv9fEsY24lYbvSE7yTD2/BIY7mvZkJ3StfDpphYfy0aIUW/Q54kjjRtdNQrEUAMTX0+OcKrNC4W4KzdmMfjY1BeN+yehNk0/BJ3gtBuq9gYDpf0+Em2/rqj76d6Ki6odB3N8Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by SJ1PR11MB6252.namprd11.prod.outlook.com (2603:10b6:a03:457::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Fri, 3 Nov
 2023 04:58:35 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::b6a:cf27:4d2d:1df4]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::b6a:cf27:4d2d:1df4%4]) with mapi id 15.20.6954.021; Fri, 3 Nov 2023
 04:58:34 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>, "spice-devel@lists.freedesktop.org"
 <spice-devel@lists.freedesktop.org>
Thread-Topic: [Spice-devel] [PATCH spice-gtk 2/2] gstreamer: Avoid dangling
 pointers in free_pipeline
Thread-Index: AQHaDa/NXdMuQOIBNUSd3/W1KD6S7LBn0/qw
Date: Fri, 3 Nov 2023 04:58:34 +0000
Message-ID: <IA0PR11MB7185324EC61C8A49A618C792F8A5A@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20231102171138.409-1-freddy77@gmail.com>
 <20231102171138.409-2-freddy77@gmail.com>
In-Reply-To: <20231102171138.409-2-freddy77@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|SJ1PR11MB6252:EE_
x-ms-office365-filtering-correlation-id: 2a0d3466-cd10-4bd5-5a43-08dbdc29884d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l/snI4I50RveUSowZszb2TGXudNsJFVz4erZYUWv1dtmfdUisuI9mnWJqkHRN+mC9ewLuavOInS5MnXrYDobGDRIon1B+smysXKRumuRFIakXhdoOWH6F4X08h3P7waRUUCfW5GhXDv/Km5iL5jAhtZCAzHXENn6vDmrMztMQwlZriVc1UuUw6ar5xZUaE+Iewen9fPcYP1z0/P0BkTlyAbrPpCt+ajMIA38wCUlcZjyYVi4OZsHLiSeaXw3MkvTSxRAHvjT3d8HirWsP5+zGToEEvGLOiJqr6hnvm/cN8Exngt+eEL+HM8AVRTG1F0n+xKafyk07TkcCZ5Aw7g1JGqQEaTvUuur0CUPJQRIR3c6UhfVmx5A1O6LiytyBCZ0yCCoXfQLU3wJPARpSWv7yKPf6ahNhcAkYISyLtpUbrUGf0aG7p6p9F6KxOUpUUdiT8bI6Iq3+JnwOMoAzzCsMgPccby77iIN1S81yy3dy7XxzOvhnfpClKa4CJq8a2x4HaDBdnmhZNpmZIEsMTpmCxCL7gOiWOPl3IiPfJ3W0SAXgZ//PQ0qJM8mepkAsx1s+JM2JGdUJz3H8xzmAH/i4bfPrsme4/fVyyfxBS6QrEB9lYnYPlvx008gQs318pZh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(376002)(136003)(366004)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(33656002)(83380400001)(38100700002)(52536014)(122000001)(8936002)(8676002)(55016003)(26005)(82960400001)(41300700001)(7696005)(6506007)(71200400001)(38070700009)(2906002)(478600001)(9686003)(86362001)(5660300002)(64756008)(110136005)(76116006)(66446008)(66946007)(66556008)(66476007)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nGQ5pHnv7vPnLz0YXE+vHDjJ1SR5Ee5IoWltisod0AOH0vHCxBav29T+rg+Z?=
 =?us-ascii?Q?g9RyF9imYBDjL2xgovZBdHfSeCYH4MZl1O8HAEPcFALbPLix6pVLecek36Et?=
 =?us-ascii?Q?zfmlwr9aNxxk7CP6n0A4p+NwAy6qf1FX3nhmB3g4yinzoXAVtz/eqtWUEGRH?=
 =?us-ascii?Q?7q5aGBrw+7Q6j09663z/IypENRPa6EAQotRpO/Fz3/uvYl5CzMaBJF0K4icP?=
 =?us-ascii?Q?tWuFoDfgdazBAEKhT4AS39qlGp7sq2zmPfezFe69NHaB1pNP61YmvPDnOMC/?=
 =?us-ascii?Q?gLK5XLskdJfgolFkl1DRR0DBt2f0ZDbwToqu3kszL/tbfMreSHnd49KMczVE?=
 =?us-ascii?Q?NIBs77vf0VnlQ66GjknUimS+XkOT5uwoduPe9FBTckhuydPdQVc+lZ9qR0fT?=
 =?us-ascii?Q?plJC/KGnGIx9cpiQvuSQsGCXPTRdcKCxOPHJElrjAjiixUOHMaHdYODGMHtL?=
 =?us-ascii?Q?IboxN+pF3rB7uYJFdPZiTeaP/CAKprmX9T9BamTIUqCrAGpTf4dsB12UV6Oz?=
 =?us-ascii?Q?OavNLilp3LxpBl5p5bcogOULKab6MXio4NjdT2FnMN05bVGV+AfafFqH4Zbp?=
 =?us-ascii?Q?yRXmyYkNfac/qeU3m5KQXEwuw7dZDtTJ+wI7LJjDrgYLE7Dp+bvH9PQhcHb6?=
 =?us-ascii?Q?fMWynFxnghChGesDCbmsfqepHt1odlP4bnuKbxyuPOGR1BToqerdAZIwIh8W?=
 =?us-ascii?Q?j4wGGKPM0h/fVrpSiTw89356bghIXW6sSBnX3g0wB/8zfi/BS8+PWWcogenC?=
 =?us-ascii?Q?CZCTSFm/f6nx5xrZEyoo0KGCBNLulc7cMlRm/0vLC4hULcei3eHZc+/w8K9N?=
 =?us-ascii?Q?MKIBC0CsocFRusta7+A2+SHNubQIqqY4nOIcLN3whbNVJZt1CRujeB5Au98d?=
 =?us-ascii?Q?z77oSqNvqUmjeLrkr4ZOps0/ajcnAstk11lyo1grA9IrTCn1b9OiPAr2yFjv?=
 =?us-ascii?Q?vR5jQlj8ewthdD9MOP4wuJYJQj3nNM9XWrcehzQUhacj47G/kqVIm0O0eGyC?=
 =?us-ascii?Q?IdYWtVi2q+8Bm9n4VyV9B4Sxwf9iaKCnQkM846heormkYVeNVm4r6AdQXB+k?=
 =?us-ascii?Q?zPZ/nMJMQ1eEVeq4gdjhM8lLkC+EwdIuNISShkH0mYgpo+Ui2ncZtPLfLyjY?=
 =?us-ascii?Q?EY0P5MgKAGiLeiKirCk9Vdh+IsMNEp3DVhk8nB8Ni3aZYfijW0+XdIZ9m7d2?=
 =?us-ascii?Q?ESeMjOW1KVSIMo27da7nwgTpSGyAMCMRhAcoClUmUFZazrr80Bh+udsqRW58?=
 =?us-ascii?Q?Oc1XszjPRCNzYPCJxghroJjqwM4teS1LPq4eD6PReNbgl0E4ParRwNsTpMbL?=
 =?us-ascii?Q?+Bgto1aZYj5K2zsDMICDMqPexunkZ2tfNldyysch7wJrn3paAI2fzlB6EPQ4?=
 =?us-ascii?Q?pqAt7YZROVuHgqZbXszOPqF3vHKS4XXChwE2hUZOrwlqf1M1HUavHdYInSQ9?=
 =?us-ascii?Q?QsDRUM5BqaxfXTyZxHcwla1YC7uhri7P8ZpbYbz/rUY5rpci1OVrI0TEm4Jf?=
 =?us-ascii?Q?pl4/zpQmRk2GhDfZJ4ZLHad/uVFAsBY0gJzFHd6PPLztsSUumlj86cQM5xcY?=
 =?us-ascii?Q?bfE7wn3QI7yCDGRuxYLwAT/OFLPJqc+YL2+cDApe?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a0d3466-cd10-4bd5-5a43-08dbdc29884d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2023 04:58:34.1293 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5R8FjZigXqCZI5CgydLdeXe3qYK5qWfUhrU1bTPNGPpI3wbMLHaR9srGbY7fjo1BbyE1wyqjNtC1j4l6zub21uDicUD/DO0SpaHUTL5BG3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6252
X-OriginatorOrg: intel.com
Subject: Re: [Spice-devel] [PATCH spice-gtk 2/2] gstreamer: Avoid dangling
 pointers in free_pipeline
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

Hi Frediano,

>=20
> Although currently after free_pipeline we free the entire structure
> the name and the function suggests that we only free the pipeline.
> Also this is fixing a future possible problem with the series
> from Vivek Kasireddy reusing the SpiceGstDecoder for another
> pipeline if H/W encoder pipeline creation fails.
>=20
> Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
> ---
>  src/channel-display-gst.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> index 3bd948d2..ffc2edbf 100644
> --- a/src/channel-display-gst.c
> +++ b/src/channel-display-gst.c
> @@ -361,11 +361,14 @@ static void free_pipeline(SpiceGstDecoder
> *decoder)
>=20
>      gst_element_set_state(decoder->pipeline, GST_STATE_NULL);
>      gst_object_unref(decoder->appsrc);
> +    decoder->appsrc =3D NULL;
>      if (decoder->appsink) {
Would it make sense to get rid of the above if as well to be consistent?
I don't see why it is needed given that gst_object_unref can accept NULL
as input. Regardless, this patch is
Acked-by: Vivek Kasireddy <vivek.kasireddy@intel.com>

Thanks,
Vivek

>          gst_object_unref(decoder->appsink);
> +        decoder->appsink =3D NULL;
>      }
> -    gst_object_unref(decoder->pipeline);
>      gst_object_unref(decoder->clock);
> +    decoder->clock =3D NULL;
> +    gst_object_unref(decoder->pipeline);
>      decoder->pipeline =3D NULL;
>  }
>=20
> --
> 2.41.0

