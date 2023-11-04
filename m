Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 161C57E1057
	for <lists+spice-devel@lfdr.de>; Sat,  4 Nov 2023 17:22:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2242C10E0F2;
	Sat,  4 Nov 2023 16:22:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A659D10E0F2
 for <spice-devel@lists.freedesktop.org>; Sat,  4 Nov 2023 16:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699114918; x=1730650918;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HXUD7sltFSkWnB9T/z5z8SXhOwEn0cu2y3aLya2VNuU=;
 b=kGl5mFpHSNn8xpnlJUfTEw6ecahCqGsksEOX8gPrewV+8SmJVye6AY8I
 RuwYvY1AEDIi/HR3b7dzyxTe0qawQifvwMuKm3t4VTU6HCjFleOJ2vzbe
 lmS8leUnMqMxE4LIolj+S49PBLIyikycHr8r3e7kQCBqbfpy4PYLqSOO8
 7A3HiE6yWXxktifGex8OlwZ8a+z+Loluiz/P4GW6abAHr4/DdiZbMwWjZ
 sU+jEEP4Wa9rVhjpe6kIzfhBZ4+U4U+HyEf9wmRzjkdwbT7MitaIF+qPo
 THcjIARRFZgdEse5p+8G9/Tl2UFTFwUyLBIFMRXB6ZCt8T7YSjq1/n/Ug g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10884"; a="475330883"
X-IronPort-AV: E=Sophos;i="6.03,277,1694761200"; d="scan'208";a="475330883"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2023 09:21:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,277,1694761200"; d="scan'208";a="10035745"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2023 09:21:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sat, 4 Nov 2023 09:21:57 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sat, 4 Nov 2023 09:21:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sat, 4 Nov 2023 09:21:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sat, 4 Nov 2023 09:21:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TRE9Qtnc9tx8fLPjL2keFcSXY3VZ3Byp7VbAP1XZ5uaB936ILdh555v94XOm+Z8pvmfzvpKK59VxYGCpaHmssAsHruevLppkTB4IQvRLt3wI2Q3UR+K0+zJIxpRu4cTcbDLFUfGux9zFjhw/s1RkBiMbkcqJYLKc7dZ6DgRqdSw4plxwOLvNhosddDV/uwQx5HN/MYApMpTj98T9WWDsAtpu7SvBYOVtsKyX4DL0BKDJQ81NEx8N1U8sdt8ZFhUQOw0lNsHO9VWPTKH/ZToUGLie6NuW7z8EKju8Cs7/2ZpTSMgivbGwgQoyCwvQKCGRVzlrSWPdb9Oe1qsNKdTFBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uv+l3IhWfrBs8Mv+52/dLTfXvRSWMLxZLyci4+jGoUo=;
 b=FTZrfv8XX5Bxqy3ZHMXAfUHUzw1n7li5C+WDw+8MCf3bTQb7EB19dnSFzbSuDOk2n9ERD8cBMTdiR09uyrAr+wGTDqiM1YU2y1ah/GIEBoUstiNqudqY8QIcX/rXfxpr7+eAu7ifC3ic3qC9t2v6qo4Yx//rhJVh/CeeW71BnFQB7ozvz8AQppqXVona2B2CFhM0AkGa2KphePGaVi5YR93WLQz2u5TAC5oZKpDLFQL2+qXqlwpt02sWgvRq8hl5brDTjkaih3cYuiTPGw/qkWdEIK2EfgI8he9NE9yseIquAlm1NLhpUxi18VghTvMCwGF49DXmqoGmL6Lg75c4TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by PH7PR11MB6523.namprd11.prod.outlook.com (2603:10b6:510:211::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Sat, 4 Nov
 2023 16:21:43 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::b6a:cf27:4d2d:1df4]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::b6a:cf27:4d2d:1df4%4]) with mapi id 15.20.6954.025; Sat, 4 Nov 2023
 16:21:42 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Frediano Ziglio <freddy77@gmail.com>, "spice-devel@lists.freedesktop.org"
 <spice-devel@lists.freedesktop.org>
Thread-Topic: [Spice-devel] [PATCH spice-gtk 1/2] gstreamer: Fix leak using
 GstBus watch
Thread-Index: AQHaDjL/BhcARdWlKkmCOrvCpM7XwrBpGh0Q
Date: Sat, 4 Nov 2023 16:21:42 +0000
Message-ID: <IA0PR11MB71850E1CB2DF0C71234E0DF5F8A4A@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20231103085120.1339-1-freddy77@gmail.com>
In-Reply-To: <20231103085120.1339-1-freddy77@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|PH7PR11MB6523:EE_
x-ms-office365-filtering-correlation-id: 3e50d493-7372-470c-2a02-08dbdd5221de
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ebArn9SgHSldcBYWh7XG0pGDjvCfD8a7jyZCq6bsQpxsS1Z/Vvqm+oEX0N2FSZb3HNbyunt9KCztTEySy25GucCM8UD2z50XU/l6eKoPQtt61eW2SslfXM4Q2OGlE+ukThxoBrEddiVo0olhGprnUuTSLjD+yqbJll7wA1CXLJSqSjCJY6Nvki9L/aqShh8aXs+RZdaMlxwiJoHPbpCUiFTofONvQX+T/EVHqw+0OxhZdSkCiHQgi0HF+9pex+fatm+yBXYtxgoM/kmfJt2KV7rEn4dV0Hd2FB61E+nR7kl9AU6kv+FaqkXl65FNd4LvG9zZWiRghZeruWt/73DOEmNJDISzEViiABuzJ+GesRKlxECgibKg/MALHJdsCENDZvNd+ewYqjeKUOIeZbCcCn/arJg8fMLHVGCKAOemX+NOjH/qKsheA7LLbuLBXQ1yXLw+nKo7FmRDTnbfNOZc9JvQPt9PxAIyWdtLF5aR0FLfzZo3yj0y6pUYoc/t8o5FjWbKE1E04UBB+4g54bBgESACu0oPcAWnrJsz+4/aC2fti2rJFVFTu4pxhOWgywh2bEpkI3DCkwK5kP0R8Od0jYYWwcpkLKUDSmSoQ1Yf3uFamrZkt6kBruJVg4Du5Mil
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(39860400002)(376002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(26005)(41300700001)(6506007)(7696005)(9686003)(86362001)(122000001)(33656002)(38070700009)(82960400001)(38100700002)(83380400001)(66476007)(76116006)(110136005)(64756008)(5660300002)(66556008)(55016003)(2906002)(8936002)(316002)(8676002)(66946007)(66446008)(52536014)(478600001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KuKU5zHNKPpCbw0Uiyo9Rh1AkO7HVj2W5xvYEULgd+aH1o5zHVuQWpFZOAqX?=
 =?us-ascii?Q?ECqURcZMwH6Wt0lKAyhSTXikHAkO2jX6y0stfHNawb+ExnLX9ptLGdol1jfl?=
 =?us-ascii?Q?oAoAeUjj22RAPOmDRSiSrrprw+30eb9vl9euJPkgqlM+pK5yA93AVSZpKpQO?=
 =?us-ascii?Q?OcRZD8DaZTc9KyWgTl0h4B/xNXmnYBntVH/GBBqafSULLx02Ei2ESv+dcECA?=
 =?us-ascii?Q?XLHxSHHFP6XAE9xm9h3PbNUyz+Iz+4RdG9Gt5gKT1NRXbJLiTWURlL4wD4ru?=
 =?us-ascii?Q?GqJwpKNSG+n7vQx+g3xEuWm43KUUjwJPQRNe3RwaIUkhkX5OVCmC7VmkewMu?=
 =?us-ascii?Q?S84WPlyMwY46oL23zsgE/bWtpFohnfn9TRGlhFvxMhD01KstACcC3AsnFNoP?=
 =?us-ascii?Q?nWmZbqhRe4uEpYeXHhFAtorluHfYiQ1K06d5MBCTn3hvx+hPqlsDnmuP+/j8?=
 =?us-ascii?Q?mVSg9fOxk3uQpMo9gs6lYPiory7ftXPgX3gWSCFdEw1yDFSN7QBXOmi1O4pR?=
 =?us-ascii?Q?8xz399R0mjJNkT7e0QUkGdU0knZgmWEDaAmfcXKcS58i2ka72px2ukltKFrK?=
 =?us-ascii?Q?ijOfALeZHqFd3ZNRK25cFGzo6CQW/p0TwniPWLSX6m77oiR4c1Dw/gY3Laoc?=
 =?us-ascii?Q?dCRZdwn+/drp1H04gL3Wtdnja+95BMFou7A6HbeVCydAt7QLamsL0lLADt9k?=
 =?us-ascii?Q?D1i3yCUYyjvGGEFFY2qQbovtJCKhQbZa7SWD3ulwMEUpZLnXhVaydFymvUAS?=
 =?us-ascii?Q?JBtSGR27h9uLM/W6Oe58jOYT9Cc9Z7QOsK5Ul6p7gOjFE34gsU/oD7+cQ/OB?=
 =?us-ascii?Q?tFSParVUD52LuSwYXgAPdIrVygnRg506PnM+wxr70SQfr2njg7jWp5Z70nSt?=
 =?us-ascii?Q?PG1174c+KWX1jQT1urPN/1PHRsRSbk6HASxg8J8nsUX6N2+ScXE6fZITQfux?=
 =?us-ascii?Q?paR50B1RxgNsaR7+SnlKyIeTFEtj4EZUkkehhgmCfW0oRsWW0DPxONlAQ1zC?=
 =?us-ascii?Q?/Y5rQXUqTFKIVXT6LObF1A15nmZPnmICCcYwCmJZ8MxnEpZ/XP10CZChplRW?=
 =?us-ascii?Q?upMCvuhquFJecV+SHhbpRtH/JgWWNwEPMs2obNUUAoyCwhJidWAUTLoUoWiG?=
 =?us-ascii?Q?Z5HqnSMXZqd9Bz+Frwyr1iOjbT3NZ2vQBgRjL3tD1BEdkKhELwvLzJA225qk?=
 =?us-ascii?Q?jXntg9h/BAOtRIUBmjvYtV7ZkFNhNHd6AsH7K3wrVoWSTOxdUbMU5sjZhScy?=
 =?us-ascii?Q?O+fCcmp60o7JkvYa4l/hslvqkejPd8fNsBoS0wEdY2REXpceLGY66XLjr2WW?=
 =?us-ascii?Q?BZOeD2vOAADePz6ha9Uy8pfMk5ovq+plBP9OFqtFXp88yPBv9oU8uGMnd7l2?=
 =?us-ascii?Q?P3Z/T4f29i4JRG7+ALtYm3ekChB+0OOcThFgnJ+eFtsxFV8YBuPHB6DB07WS?=
 =?us-ascii?Q?l8FVpOJqPxdma6YUdWSwHvilGSp1hbuhCDJ/4tJt0nyz8Abi9lk3CioXRVGP?=
 =?us-ascii?Q?qp/qoaJSteUcVOBk/lbDkrO+/o/Y16PQp533io9fAKwTNQ1czGO1T5j/kXpe?=
 =?us-ascii?Q?pqV42aE9ghWPl+nWDDcQzO7CyHScoHjPRffhnlZK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e50d493-7372-470c-2a02-08dbdd5221de
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2023 16:21:42.7828 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ng+NCpY5orsHC37UyTR29YYCtEX5ay14yTlVe62y5R9tcJBoIB93tiHeBzIpuJce7mIrT37yu3sFO4wRxKfKAub1zATa4UzwIQuJiSgQp7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6523
X-OriginatorOrg: intel.com
Subject: Re: [Spice-devel] [PATCH spice-gtk 1/2] gstreamer: Fix leak using
 GstBus watch
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
> This patch fixes a leak due to not freeing GstBus watch.
> The watch is attached (as GSource) to the main loop and retains
> a pointer to the bus so we need to remove it to release the bus
> when we release the pipeline.
> This was detected forcibly creating and destroying lot of streams.
> After a while the client program consumed all file descriptors
> and stopped working. This as GstBus retains a GPoll which,
> under Unix, uses 2 file descriptors.
> For some reasons using gst_pipeline_get_bus again in free_pipeline
> do not fix entirely the leak so keep a pointer to the exact
> bus we set our watch on.
>=20
> Signed-off-by: Frediano Ziglio <freddy77@gmail.com>
> ---
>  src/channel-display-gst.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>=20
> diff --git a/src/channel-display-gst.c b/src/channel-display-gst.c
> index 3b372dc0..6e126000 100644
> --- a/src/channel-display-gst.c
> +++ b/src/channel-display-gst.c
> @@ -47,6 +47,7 @@ typedef struct SpiceGstDecoder {
>      GstAppSink *appsink;
>      GstElement *pipeline;
>      GstClock *clock;
> +    GstBus *bus;
>=20
>      /* ---------- Decoding and display queues ---------- */
>=20
> @@ -352,6 +353,13 @@ static void free_pipeline(SpiceGstDecoder
> *decoder)
>          return;
>      }
>=20
> +    GstBus *bus =3D decoder->bus;
> +    if (bus) {
> +        gst_bus_remove_watch(bus);
> +        gst_object_unref(bus);
> +        decoder->bus =3D NULL;
> +    }
Looks like the watch can be removed by returning FALSE from the bus
func (handle_pipeline_message) as well. Would it make sense to handle
it this way?

> +
>      gst_element_set_state(decoder->pipeline, GST_STATE_NULL);
>      gst_object_unref(decoder->appsrc);
>      decoder->appsrc =3D NULL;
> @@ -534,7 +542,7 @@ static bool launch_pipeline(SpiceGstDecoder
> *decoder)
>      }
>      bus =3D gst_pipeline_get_bus(GST_PIPELINE(decoder->pipeline));
>      gst_bus_add_watch(bus, handle_pipeline_message, decoder);
> -    gst_object_unref(bus);
But the docs say that it is ok to unref the bus as the watch will take an a=
dditional
reference on the bus.

Thanks,
Vivek
> +    decoder->bus =3D bus;
>=20
>      decoder->clock =3D gst_pipeline_get_clock(GST_PIPELINE(decoder-
> >pipeline));
>=20
> --
> 2.41.0

