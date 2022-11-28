Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFB263A67D
	for <lists+spice-devel@lfdr.de>; Mon, 28 Nov 2022 11:58:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3CE410E208;
	Mon, 28 Nov 2022 10:58:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4600310E208
 for <spice-devel@lists.freedesktop.org>; Mon, 28 Nov 2022 10:58:07 +0000 (UTC)
Date: Mon, 28 Nov 2022 10:57:45 +0000
Authentication-Results: mail-41103.protonmail.ch;
 dkim=pass (2048-bit key) header.d=ecentrum.hu header.i=@ecentrum.hu
 header.b="iZaU4eHR"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ecentrum.hu;
 s=protonmail3; t=1669633077; x=1669892277;
 bh=H22lB0O9e4MMi3JzIhO8hvkDXPFeDNkG+Co7IxeUhAA=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=iZaU4eHRl/TCx+a5e639MuiU9iIT83P6rJf5xbxZLHumQ1iEb+6SQZd95/r4X4HSU
 5J8FIOAbsb0NBeNS488Mg5uTFe1JLr4w1uyFvJAQ91lzeFc3kHw+IwqwGK4kaWSl1U
 Xw14qHnkdYfM4t/eY10a6qD72J5kTln9Br0vsdkEiOjDLGTmRgUZQw/l4bwpLRvEYw
 Hk2S/8PhJ5v8Wub4ULBOwLdFLc2oT7FdZU70DnMgXX79jzAfUQMLl3DQYjSPrsfQjJ
 0fjWB/5kfWfNejC6M3xjYG3/9BIZqN0ZIBH20ONgfib97nnM9OQxfxnZRC/CdHCGut
 PKpyEaB9CdPew==
To: Victor Toso <victortoso@redhat.com>
From: =?utf-8?Q?L=C3=A9vai=2C_D=C3=A1niel?= <leva@ecentrum.hu>
Message-ID: <vz0q8-h-Gw5s9K7CTtQyKRv7iwCQFcpa-hBn5tmR4tckJpnqBEnTCqS3Q1Og8JZzB0rywFRbJgwsC0XELEEowLWJV1RPw1-1tWvqf_HJyzg=@ecentrum.hu>
In-Reply-To: <20221127140124.yvtvkwr4i5afbjut@tapioca>
References: <WefH0kcTW7ZcEJKoS36RR92aNVDLiXWVT8H27ogg3GaTK84TAGQdrOCZ9bP4URYdLMu4NQaAC1Kk89EX3h_en_QfyiVSR0jVQwAUwb_jOY4=@ecentrum.hu>
 <20221127140124.yvtvkwr4i5afbjut@tapioca>
Feedback-ID: 12434366:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Spice-devel] Trying to turn on gstreamer vaapi {en,de}coding
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Sunday, November 27th, 2022 at 15:01, Victor Toso <victortoso@redhat.com=
> wrote:
[...]
>
> From what I could see, you have set the h264 video-codec
> preference at 13:06:46 and terminated spicy around 13:06:49.
>
> So, perhaps the first issue is the assumption that as soon as you
> set the video-codec preference, that the stream will start. It'll
> not. The streaming will happen based on update frequency on the
> display. For example, a clock updating the seconds, once every
> second, will not create a video streaming. You should try running
> an App that has high update frequency or just a video.
>
> GStreamer needs to be enabled in spice-server at build time too.
> You can check with ldd in libspice-server.so...
>
> So, the logs from spice-server would be useful to know what issue
> might have happened at encoding if it doesn't work.
>
> Just trying to give you some ideas and directions to go.
>

Thank you Victor for taking the time, I do appreciate it!


Sorry for the grep of gst-inspect, here's the full output:
Host:
1394:  dv1394src: Firewire (1394) DV video source
1394:  hdv1394src: Firewire (1394) HDV video source
a52dec:  a52dec: ATSC A/52 audio decoder
aasink:  aasink: ASCII art video sink
aasink:  aatv: aaTV effect
accurip:  accurip: AccurateRip(TM) CRC element
adder:  adder: Adder
adpcmdec:  adpcmdec: ADPCM decoder
adpcmenc:  adpcmenc: ADPCM encoder
aes:  aesdec: aesdec
aes:  aesenc: aesenc
aiff:  aiffmux: AIFF audio muxer
aiff:  aiffparse: AIFF audio demuxer
alaw:  alawdec: A Law audio decoder
alaw:  alawenc: A Law audio encoder
alpha:  alpha: Alpha filter
alphacolor:  alphacolor: Alpha color filter
amrnb:  amrnbdec: AMR-NB audio decoder
amrnb:  amrnbenc: AMR-NB audio encoder
amrwbdec:  amrwbdec: AMR-WB audio decoder
aom:  av1dec: AV1 Decoder
aom:  av1enc: AV1 Encoder
apetag:  apedemux: APE tag demuxer
app:  appsink: AppSink
app:  appsrc: AppSrc
asf:  asfdemux: ASF Demuxer
asf:  rtpasfdepay: RTP ASF packet depayloader
asf:  rtspwms: WMS RTSP Extension
asfmux:  asfmux: ASF muxer
asfmux:  asfparse: ASF parser
asfmux:  rtpasfpay: RTP ASF payloader
assrender:  assrender: ASS/SSA Render
audiobuffersplit:  audiobuffersplit: Audio Buffer Split
audioconvert:  audioconvert: Audio converter
audiofx:  audioamplify: Audio amplifier
audiofx:  audiochebband: Band pass & band reject filter
audiofx:  audiocheblimit: Low pass & high pass filter
audiofx:  audiodynamic: Dynamic range controller
audiofx:  audioecho: Audio echo
audiofx:  audiofirfilter: Audio FIR filter
audiofx:  audioiirfilter: Audio IIR filter
audiofx:  audioinvert: Audio inversion
audiofx:  audiokaraoke: AudioKaraoke
audiofx:  audiopanorama: Stereo positioning
audiofx:  audiowsincband: Band pass & band reject filter
audiofx:  audiowsinclimit: Low pass & high pass filter
audiofx:  scaletempo: Scaletempo
audiofx:  stereo: Stereo effect
audiofxbad:  audiochannelmix: Simple stereo audio mixer
audiolatency:  audiolatency: AudioLatency
audiomixer:  audiointerleave: AudioInterleave
audiomixer:  audiomixer: AudioMixer
audiomixer:  liveadder: AudioMixer
audiomixmatrix:  audiomixmatrix: Matrix audio mix
audioparsers:  aacparse: AAC audio stream parser
audioparsers:  ac3parse: AC3 audio stream parser
audioparsers:  amrparse: AMR audio stream parser
audioparsers:  dcaparse: DTS Coherent Acoustics audio stream parser
audioparsers:  flacparse: FLAC audio parser
audioparsers:  mpegaudioparse: MPEG1 Audio Parser
audioparsers:  sbcparse: SBC audio parser
audioparsers:  wavpackparse: Wavpack audio stream parser
audiorate:  audiorate: Audio rate adjuster
audioresample:  audioresample: Audio resampler
audiotestsrc:  audiotestsrc: Audio test source
audiovisualizers:  spacescope: Stereo visualizer
audiovisualizers:  spectrascope: Frequency spectrum scope
audiovisualizers:  synaescope: Synaescope
audiovisualizers:  wavescope: Waveform oscilloscope
auparse:  auparse: AU audio demuxer
autoconvert:  autoconvert: Select converter based on caps
autoconvert:  autovideoconvert: Select color space converter based on caps
autodetect:  autoaudiosink: Auto audio sink
autodetect:  autoaudiosrc: Auto audio source
autodetect:  autovideosink: Auto video sink
autodetect:  autovideosrc: Auto video source
avi:  avidemux: Avi demuxer
avi:  avimux: Avi muxer
avi:  avisubtitle: Avi subtitle parser
bayer:  bayer2rgb: Bayer to RGB decoder for cameras
bayer:  rgb2bayer: RGB to Bayer converter
bluez:  a2dpsink: Bluetooth A2DP sink
bluez:  avdtpsink: Bluetooth AVDTP sink
bluez:  avdtpsrc: Bluetooth AVDTP Source
bs2b:  bs2b: Crossfeed effect
bz2:  bz2dec: BZ2 decoder
bz2:  bz2enc: BZ2 encoder
cacasink:  cacasink: A colored ASCII art video sink
cacasink:  cacatv: CacaTV effect
cairo:  cairooverlay: Cairo overlay
camerabin:  camerabin: Camera Bin
camerabin:  viewfinderbin: Viewfinder Bin
camerabin:  wrappercamerabinsrc: Wrapper camera src element for camerabin2
cdio:  cdiocddasrc: CD audio source (CDDA)
cdparanoia:  cdparanoiasrc: CD Audio (cdda) Source, Paranoia IV
chromaprint:  chromaprint: Chromaprint fingerprinting element
closedcaption:  cc708overlay: Closed Caption overlay
closedcaption:  cccombiner: Closed Caption Combiner
closedcaption:  ccconverter: Closed Caption Converter
closedcaption:  ccextractor: Closed Caption Extractor
closedcaption:  line21decoder: Line 21 CC Decoder
closedcaption:  line21encoder: Line 21 CC Encoder
codecalpha:  alphacombine: Alpha Combiner
codecalpha:  codecalphademux: CODEC Alpha Demuxer
codecalpha:  vp8alphadecodebin: VP8 Alpha Decoder
codecalpha:  vp9alphadecodebin: VP9 Alpha Decoder
coloreffects:  chromahold: Chroma hold filter
coloreffects:  coloreffects: Color Look-up Table filter
colormanagement:  lcms: LCMS2 ICC correction
compositor:  compositor: Compositor
coreelements:  capsfilter: CapsFilter
coreelements:  clocksync: ClockSync
coreelements:  concat: Concat
coreelements:  dataurisrc: data: URI source element
coreelements:  downloadbuffer: DownloadBuffer
coreelements:  fakesink: Fake Sink
coreelements:  fakesrc: Fake Source
coreelements:  fdsink: Filedescriptor Sink
coreelements:  fdsrc: Filedescriptor Source
coreelements:  filesink: File Sink
coreelements:  filesrc: File Source
coreelements:  funnel: Funnel pipe fitting
coreelements:  identity: Identity
coreelements:  input-selector: Input selector
coreelements:  multiqueue: MultiQueue
coreelements:  output-selector: Output selector
coreelements:  queue: Queue
coreelements:  queue2: Queue 2
coreelements:  streamiddemux: Streamid Demux
coreelements:  tee: Tee pipe fitting
coreelements:  typefind: TypeFind
coreelements:  valve: Valve element
coretracers:  factories (GstTracerFactory)
coretracers:  latency (GstTracerFactory)
coretracers:  leaks (GstTracerFactory)
coretracers:  log (GstTracerFactory)
coretracers:  rusage (GstTracerFactory)
coretracers:  stats (GstTracerFactory)
curl:  curlfilesink: Curl file sink
curl:  curlftpsink: Curl ftp sink
curl:  curlhttpsink: Curl http sink
curl:  curlhttpsrc: HTTP Client Source using libcURL
curl:  curlsftpsink: Curl sftp sink
curl:  curlsmtpsink: Curl smtp sink
cutter:  cutter: Audio cutter
dash:  dashdemux: DASH Demuxer
dash:  dashsink: DASH Sink
dc1394:  dc1394src: 1394 IIDC Video Source
de265:  libde265dec: HEVC/H.265 decoder
debug:  breakmydata: Break my data
debug:  capssetter: CapsSetter
debug:  cpureport: CPU report
debug:  navseek: Seek based on left-right arrows
debug:  progressreport: Progress report
debug:  pushfilesrc: Push File Source
debug:  rndbuffersize: Random buffer size
debug:  taginject: TagInject
debug:  testsink: Test plugin
debugutilsbad:  checksumsink: Checksum sink
debugutilsbad:  chopmydata: Chop my data
debugutilsbad:  clockselect: Clock select
debugutilsbad:  compare: Compare buffers
debugutilsbad:  debugspy: DebugSpy
debugutilsbad:  errorignore: Convert some GstFlowReturn types into others
debugutilsbad:  fakeaudiosink: Fake Audio Sink
debugutilsbad:  fakevideosink: Fake Video Sink
debugutilsbad:  fpsdisplaysink: Measure and show framerate on videosink
debugutilsbad:  testsrcbin: Generic bin
debugutilsbad:  videocodectestsink: Video CODEC Test Sink
debugutilsbad:  watchdog: Watchdog
decklink:  decklinkaudiosink: Decklink Audio Sink
decklink:  decklinkaudiosrc: Decklink Audio Source
decklink:  decklinkdeviceprovider (GstDeviceProviderFactory)
decklink:  decklinkvideosink: Decklink Video Sink
decklink:  decklinkvideosrc: Decklink Video Source
deinterlace:  deinterlace: Deinterlacer
dtls:  dtlsdec: DTLS Decoder
dtls:  dtlsenc: DTLS Encoder
dtls:  dtlssrtpdec: DTLS-SRTP Decoder
dtls:  dtlssrtpdemux: DTLS SRTP Demultiplexer
dtls:  dtlssrtpenc: DTLS-SRTP Encoder
dtmf:  dtmfsrc: DTMF tone generator
dtmf:  rtpdtmfdepay: RTP DTMF packet depayloader
dtmf:  rtpdtmfsrc: RTP DTMF packet generator
dtsdec:  dtsdec: DTS audio decoder
dv:  dvdec: DV video decoder
dv:  dvdemux: DV system stream demuxer
dvb:  dvbbasebin: DVB bin
dvb:  dvbsrc: DVB Source
dvbsubenc:  dvbsubenc: DVB subtitle encoder
dvbsuboverlay:  dvbsuboverlay: DVB Subtitles Overlay
dvdlpcmdec:  dvdlpcmdec: DVD LPCM Audio decoder
dvdread:  dvdreadsrc: DVD Source
dvdspu:  dvdspu: Sub-picture Overlay
dvdsub:  dvdsubdec: DVD subtitle decoder
dvdsub:  dvdsubparse: DVD subtitle parser
effectv:  agingtv: AgingTV effect
effectv:  dicetv: DiceTV effect
effectv:  edgetv: EdgeTV effect
effectv:  optv: OpTV effect
effectv:  quarktv: QuarkTV effect
effectv:  radioactv: RadioacTV effect
effectv:  revtv: RevTV effect
effectv:  rippletv: RippleTV effect
effectv:  shagadelictv: ShagadelicTV
effectv:  streaktv: StreakTV effect
effectv:  vertigotv: VertigoTV effect
effectv:  warptv: WarpTV effect
encoding:  encodebin: Encoder Bin
encoding:  encodebin2: Encoder Bin
equalizer:  equalizer-10bands: 10 Band Equalizer
equalizer:  equalizer-3bands: 3 Band Equalizer
equalizer:  equalizer-nbands: N Band Equalizer
faad:  faad: AAC audio decoder
faceoverlay:  faceoverlay: faceoverlay
fbdevsink:  fbdevsink: fbdev video sink
festival:  festival: Festival Text-to-Speech synthesizer
fieldanalysis:  fieldanalysis: Video field analysis
flac:  flacdec: FLAC audio decoder
flac:  flacenc: FLAC audio encoder
flac:  flactag: FLAC tagger
flite:  flitetestsrc: Flite speech test source
fluidsynthmidi:  fluiddec: Fluidsynth
flv:  flvdemux: FLV Demuxer
flv:  flvmux: FLV muxer
flxdec:  flxdec: FLX video decoder
freeverb:  freeverb: Reverberation/room effect
gaudieffects:  burn: Burn
gaudieffects:  chromium: Chromium
gaudieffects:  dilate: Dilate
gaudieffects:  dodge: Dodge
gaudieffects:  exclusion: Exclusion
gaudieffects:  gaussianblur: GstGaussianBlur
gaudieffects:  solarize: Solarize
gdkpixbuf:  gdkpixbufdec: GdkPixbuf image decoder
gdkpixbuf:  gdkpixbufoverlay: GdkPixbuf Overlay
gdkpixbuf:  gdkpixbufsink: GdkPixbuf sink
gdp:  gdpdepay: GDP Depayloader
gdp:  gdppay: GDP Payloader
geometrictransform:  bulge: bulge
geometrictransform:  circle: circle
geometrictransform:  diffuse: diffuse
geometrictransform:  fisheye: fisheye
geometrictransform:  kaleidoscope: kaleidoscope
geometrictransform:  marble: marble
geometrictransform:  mirror: mirror
geometrictransform:  perspective: perspective
geometrictransform:  pinch: pinch
geometrictransform:  rotate: rotate
geometrictransform:  sphere: sphere
geometrictransform:  square: square
geometrictransform:  stretch: stretch
geometrictransform:  tunnel: tunnel
geometrictransform:  twirl: twirl
geometrictransform:  waterripple: waterripple
gio:  giosink: GIO sink
gio:  giosrc: GIO source
gio:  giostreamsink: GIO stream sink
gio:  giostreamsrc: GIO stream source
gme:  gmedec: Gaming console music file decoder
goom:  goom: GOOM: what a GOOM!
goom2k1:  goom2k1: GOOM: what a GOOM! 2k1 edition
gsm:  gsmdec: GSM audio decoder
gsm:  gsmenc: GSM audio encoder
hls:  hlsdemux: HLS Demuxer
hls:  hlssink: HTTP Live Streaming sink
hls:  hlssink2: HTTP Live Streaming sink
icydemux:  icydemux: ICY tag demuxer
id3demux:  id3demux: ID3 tag demuxer
id3tag:  id3mux: ID3 v1 and v2 Muxer
imagefreeze:  imagefreeze: Still frame stream generator
inter:  interaudiosink: Internal audio sink
inter:  interaudiosrc: Internal audio source
inter:  intersubsink: Internal subtitle sink
inter:  intersubsrc: Internal subtitle source
inter:  intervideosink: Internal video sink
inter:  intervideosrc: Internal video source
interlace:  interlace: Interlace filter
interleave:  deinterleave: Audio deinterleaver
interleave:  interleave: Audio interleaver
ipcpipeline:  ipcpipelinesink: Inter-process Pipeline Sink
ipcpipeline:  ipcpipelinesrc: Inter-process Pipeline Source
ipcpipeline:  ipcslavepipeline: Inter-process slave pipeline
isomp4:  3gppmux: 3GPP Muxer
isomp4:  ismlmux: ISML Muxer
isomp4:  mj2mux: MJ2 Muxer
isomp4:  mp4mux: MP4 Muxer
isomp4:  qtdemux: QuickTime demuxer
isomp4:  qtmoovrecover: QT Moov Recover
isomp4:  qtmux: QuickTime Muxer
isomp4:  rtpxqtdepay: RTP packet depayloader
ivfparse:  ivfparse: IVF parser
ivtc:  combdetect: Comb Detect
ivtc:  ivtc: Inverse Telecine
jack:  jackaudiosink: Audio Sink (Jack)
jack:  jackaudiosrc: Audio Source (Jack)
jp2kdecimator:  jp2kdecimator: JPEG2000 decimator
jpeg:  jpegdec: JPEG image decoder
jpeg:  jpegenc: JPEG image encoder
jpegformat:  jifmux: JPEG stream muxer
jpegformat:  jpegparse: JPEG stream parser
kate:  katedec: Kate stream text decoder
kate:  kateenc: Kate stream encoder
kate:  kateparse: Kate stream parser
kate:  katetag: Kate stream tagger
kms:  kmssink: KMS video sink
lame:  lamemp3enc: L.A.M.E. mp3 encoder
ldac:  ldacenc: Bluetooth LDAC audio encoder
legacyrawparse:  audioparse: Audio Parse
legacyrawparse:  videoparse: Video Parse
level:  level: Level
matroska:  matroskademux: Matroska demuxer
matroska:  matroskamux: Matroska muxer
matroska:  matroskaparse: Matroska parser
matroska:  webmmux: WebM muxer
midi:  midiparse: MidiParse
modplug:  modplug: ModPlug
monoscope:  monoscope: Monoscope
mpeg2dec:  mpeg2dec: mpeg1 and mpeg2 video decoder
mpeg2enc:  mpeg2enc: mpeg2enc video encoder
mpegpsdemux:  mpegpsdemux: MPEG Program Stream Demuxer
mpegpsmux:  mpegpsmux: MPEG Program Stream Muxer
mpegtsdemux:  tsdemux: MPEG transport stream demuxer
mpegtsdemux:  tsparse: MPEG transport stream parser
mpegtsmux:  atscmux: ATSC Transport Stream Muxer
mpegtsmux:  mpegtsmux: MPEG Transport Stream Muxer
mpg123:  mpg123audiodec: mpg123 mp3 decoder
mplex:  mplex: mplex video multiplexer
mulaw:  mulawdec: Mu Law audio decoder
mulaw:  mulawenc: Mu Law audio encoder
multifile:  imagesequencesrc: Image Sequence Source
multifile:  multifilesink: Multi-File Sink
multifile:  multifilesrc: Multi-File Source
multifile:  splitfilesrc: Split-File Source
multifile:  splitmuxsink: Split Muxing Bin
multifile:  splitmuxsrc: Split File Demuxing Bin
multipart:  multipartdemux: Multipart demuxer
multipart:  multipartmux: Multipart muxer
musepack:  musepackdec: Musepack decoder
mxf:  mxfdemux: MXF Demuxer
mxf:  mxfmux: MXF muxer
navigationtest:  navigationtest: Video navigation test
netsim:  netsim: Network Simulator
ogg:  oggaviparse: Ogg AVI parser
ogg:  oggdemux: Ogg demuxer
ogg:  oggmux: Ogg muxer
ogg:  oggparse: Ogg parser
ogg:  ogmaudioparse: OGM audio stream parser
ogg:  ogmtextparse: OGM text stream parser
ogg:  ogmvideoparse: OGM video stream parser
openal:  openalsink: OpenAL Audio Sink
openal:  openalsrc: OpenAL Audio Source
openaptx:  openaptxdec: Bluetooth aptX/aptX-HD audio decoder using libopena=
ptx
openaptx:  openaptxenc: Bluetooth aptX/aptX-HD audio encoder using libopena=
ptx
openexr:  openexrdec: OpenEXR decoder
opengl:  glalpha: OpenGL Alpha Filter
opengl:  glcolorbalance: Video balance
opengl:  glcolorconvert: OpenGL color converter
opengl:  glcolorscale: OpenGL color scale
opengl:  gldeinterlace: OpenGL deinterlacing filter
opengl:  gldifferencematte: Gstreamer OpenGL DifferenceMatte
opengl:  gldownload: OpenGL downloader
opengl:  gleffects: Gstreamer OpenGL Effects
opengl:  gleffects_blur: Blur with 9x9 separable convolution Effect
opengl:  gleffects_bulge: Bulge Effect
opengl:  gleffects_fisheye: FishEye Effect
opengl:  gleffects_glow: Glow Lighting Effect
opengl:  gleffects_heat: Heat Signature Effect
opengl:  gleffects_identity: Do nothing Effect
opengl:  gleffects_laplacian: Laplacian Convolution Demo Effect
opengl:  gleffects_lumaxpro: Luma Cross Processing Effect
opengl:  gleffects_mirror: Mirror Effect
opengl:  gleffects_sepia: Sepia Toning Effect
opengl:  gleffects_sin: All Grey but Red Effect
opengl:  gleffects_sobel: Sobel edge detection Effect
opengl:  gleffects_square: Square Effect
opengl:  gleffects_squeeze: Squeeze Effect
opengl:  gleffects_stretch: Stretch Effect
opengl:  gleffects_tunnel: Light Tunnel Effect
opengl:  gleffects_twirl: Twirl Effect
opengl:  gleffects_xpro: Cross Processing Effect
opengl:  gleffects_xray: Glowing negative effect
opengl:  glfilterapp: OpenGL application filter
opengl:  glfilterbin: GL Filter Bin
opengl:  glfiltercube: OpenGL cube filter
opengl:  glfilterglass: OpenGL glass filter
opengl:  glimagesink: GL Sink Bin
opengl:  glimagesinkelement: OpenGL video sink
opengl:  glmixerbin: OpenGL video_mixer empty bin
opengl:  glmosaic: OpenGL mosaic
opengl:  gloverlay: Gstreamer OpenGL Overlay
opengl:  gloverlaycompositor: OpenGL overlaying filter
opengl:  glshader: OpenGL fragment shader filter
opengl:  glsinkbin: GL Sink Bin
opengl:  glsrcbin: GL Src Bin
opengl:  glstereomix: OpenGL stereo video combiner
opengl:  glstereosplit: GLStereoSplit
opengl:  gltestsrc: Video test source
opengl:  gltransformation: OpenGL transformation filter
opengl:  glupload: OpenGL uploader
opengl:  glvideoflip: OpenGL video flip filter
opengl:  glvideomixer: OpenGL video_mixer bin
opengl:  glvideomixerelement: OpenGL video_mixer
opengl:  glviewconvert: OpenGL Multiview/3D conversion filter
openh264:  openh264dec: OpenH264 video decoder
openh264:  openh264enc: OpenH264 video encoder
openjpeg:  openjpegdec: OpenJPEG JPEG2000 decoder
openjpeg:  openjpegenc: OpenJPEG JPEG2000 encoder
openmpt:  openmptdec: OpenMPT-based module music decoder
openni2:  openni2src: Openni2 client source
opus:  opusdec: Opus audio decoder
opus:  opusenc: Opus audio encoder
opusparse:  opusparse: Opus audio parser
oss4:  oss4sink: OSS v4 Audio Sink
oss4:  oss4src: OSS v4 Audio Source
ossaudio:  osssink: Audio Sink (OSS)
ossaudio:  osssrc: Audio Source (OSS)
overlaycomposition:  overlaycomposition: Overlay Composition
pango:  clockoverlay: Clock overlay
pango:  textoverlay: Text overlay
pango:  textrender: Text renderer
pango:  timeoverlay: Time overlay
pbtypes:  GstVideoMultiviewFlagsSet (GstDynamicTypeFactory)
pcapparse:  irtspparse: IRTSPParse
pcapparse:  pcapparse: PCapParse
playback:  decodebin: Decoder Bin
playback:  decodebin3: Decoder Bin 3
playback:  parsebin: Parse Bin
playback:  playbin: Player Bin 2
playback:  playbin3: Player Bin 3
playback:  playsink: Player Sink
playback:  streamsynchronizer: Stream Synchronizer
playback:  subtitleoverlay: Subtitle Overlay
playback:  uridecodebin: URI Decoder
playback:  uridecodebin3: URI Decoder
playback:  urisourcebin: URI reader
png:  pngdec: PNG image decoder
png:  pngenc: PNG image encoder
pnm:  pnmdec: PNM image decoder
pnm:  pnmenc: PNM image encoder
proxy:  proxysink: Proxy Sink
proxy:  proxysrc: Proxy source
pulseaudio:  pulsedeviceprovider (GstDeviceProviderFactory)
pulseaudio:  pulsesink: PulseAudio Audio Sink
pulseaudio:  pulsesrc: PulseAudio Audio Source
qroverlay:  debugqroverlay: qroverlay
qroverlay:  qroverlay: qroverlay
rawparse:  rawaudioparse: rawaudioparse
rawparse:  rawvideoparse: rawvideoparse
rawparse:  unalignedaudioparse: unalignedaudioparse
rawparse:  unalignedvideoparse: unalignedvideoparse
realmedia:  pnmsrc: PNM packet receiver
realmedia:  rademux: RealAudio Demuxer
realmedia:  rdtdepay: RDT packet parser
realmedia:  rdtmanager: RTP Decoder
realmedia:  rmdemux: RealMedia Demuxer
realmedia:  rtspreal: RealMedia RTSP Extension
removesilence:  removesilence: RemoveSilence
replaygain:  rganalysis: ReplayGain analysis
replaygain:  rglimiter: ReplayGain limiter
replaygain:  rgvolume: ReplayGain volume
resindvd:  rsndvdbin: rsndvdbin
rfbsrc:  rfbsrc: Rfb source
rist:  ristrtpdeext: RIST RTP Extension remover
rist:  ristrtpext: RIST RTP Extension adder
rist:  ristrtxreceive: RIST Retransmission receiver
rist:  ristrtxsend: RIST Retransmission Sender
rist:  ristsink: RIST Sink
rist:  ristsrc: RIST Source
rist:  roundrobin: Round Robin
rsvg:  rsvgdec: SVG image decoder
rsvg:  rsvgoverlay: RSVG overlay
rtmp:  rtmpsink: RTMP output sink
rtmp:  rtmpsrc: RTMP Source
rtmp2:  rtmp2sink: RTMP sink element
rtmp2:  rtmp2src: RTMP source element
rtp:  asteriskh263: RTP Asterisk H263 depayloader
rtp:  rtpL16depay: RTP audio depayloader
rtp:  rtpL16pay: RTP audio payloader
rtp:  rtpL24depay: RTP audio depayloader
rtp:  rtpL24pay: RTP audio payloader
rtp:  rtpL8depay: RTP audio depayloader
rtp:  rtpL8pay: RTP audio payloader
rtp:  rtpac3depay: RTP AC3 depayloader
rtp:  rtpac3pay: RTP AC3 audio payloader
rtp:  rtpamrdepay: RTP AMR depayloader
rtp:  rtpamrpay: RTP AMR payloader
rtp:  rtpbvdepay: RTP BroadcomVoice depayloader
rtp:  rtpbvpay: RTP BV Payloader
rtp:  rtpceltdepay: RTP CELT depayloader
rtp:  rtpceltpay: RTP CELT payloader
rtp:  rtpdvdepay: RTP DV Depayloader
rtp:  rtpdvpay: RTP DV Payloader
rtp:  rtpg722depay: RTP audio depayloader
rtp:  rtpg722pay: RTP audio payloader
rtp:  rtpg723depay: RTP G.723 depayloader
rtp:  rtpg723pay: RTP G.723 payloader
rtp:  rtpg726depay: RTP G.726 depayloader
rtp:  rtpg726pay: RTP G.726 payloader
rtp:  rtpg729depay: RTP G.729 depayloader
rtp:  rtpg729pay: RTP G.729 payloader
rtp:  rtpgsmdepay: RTP GSM depayloader
rtp:  rtpgsmpay: RTP GSM payloader
rtp:  rtpgstdepay: GStreamer depayloader
rtp:  rtpgstpay: RTP GStreamer payloader
rtp:  rtph261depay: RTP H261 depayloader
rtp:  rtph261pay: RTP H261 packet payloader
rtp:  rtph263depay: RTP H263 depayloader
rtp:  rtph263pay: RTP H263 packet payloader
rtp:  rtph263pdepay: RTP H263 depayloader
rtp:  rtph263ppay: RTP H263 payloader
rtp:  rtph264depay: RTP H264 depayloader
rtp:  rtph264pay: RTP H264 payloader
rtp:  rtph265depay: RTP H265 depayloader
rtp:  rtph265pay: RTP H265 payloader
rtp:  rtphdrextcolorspace: Color Space
rtp:  rtpilbcdepay: RTP iLBC depayloader
rtp:  rtpilbcpay: RTP iLBC Payloader
rtp:  rtpisacdepay: RTP iSAC depayloader
rtp:  rtpisacpay: RTP iSAC payloader
rtp:  rtpj2kdepay: RTP JPEG 2000 depayloader
rtp:  rtpj2kpay: RTP JPEG 2000 payloader
rtp:  rtpjpegdepay: RTP JPEG depayloader
rtp:  rtpjpegpay: RTP JPEG payloader
rtp:  rtpklvdepay: RTP KLV Depayloader
rtp:  rtpklvpay: RTP KLV Payloader
rtp:  rtpldacpay: RTP packet payloader
rtp:  rtpmp1sdepay: RTP MPEG1 System Stream depayloader
rtp:  rtpmp2tdepay: RTP MPEG Transport Stream depayloader
rtp:  rtpmp2tpay: RTP MPEG2 Transport Stream payloader
rtp:  rtpmp4adepay: RTP MPEG4 audio depayloader
rtp:  rtpmp4apay: RTP MPEG4 audio payloader
rtp:  rtpmp4gdepay: RTP MPEG4 ES depayloader
rtp:  rtpmp4gpay: RTP MPEG4 ES payloader
rtp:  rtpmp4vdepay: RTP MPEG4 video depayloader
rtp:  rtpmp4vpay: RTP MPEG4 Video payloader
rtp:  rtpmpadepay: RTP MPEG audio depayloader
rtp:  rtpmpapay: RTP MPEG audio payloader
rtp:  rtpmparobustdepay: RTP MPEG audio depayloader
rtp:  rtpmpvdepay: RTP MPEG video depayloader
rtp:  rtpmpvpay: RTP MPEG2 ES video payloader
rtp:  rtpopusdepay: RTP Opus packet depayloader
rtp:  rtpopuspay: RTP Opus payloader
rtp:  rtppcmadepay: RTP PCMA depayloader
rtp:  rtppcmapay: RTP PCMA payloader
rtp:  rtppcmudepay: RTP PCMU depayloader
rtp:  rtppcmupay: RTP PCMU payloader
rtp:  rtpqcelpdepay: RTP QCELP depayloader
rtp:  rtpqdm2depay: RTP QDM2 depayloader
rtp:  rtpreddec: Redundant Audio Data (RED) Decoder
rtp:  rtpredenc: Redundant Audio Data (RED) Encoder
rtp:  rtpsbcdepay: RTP SBC audio depayloader
rtp:  rtpsbcpay: RTP packet payloader
rtp:  rtpsirendepay: RTP Siren packet depayloader
rtp:  rtpsirenpay: RTP Payloader for Siren Audio
rtp:  rtpspeexdepay: RTP Speex depayloader
rtp:  rtpspeexpay: RTP Speex payloader
rtp:  rtpstorage: RTP storage
rtp:  rtpstreamdepay: RTP Stream Depayloading
rtp:  rtpstreampay: RTP Stream Payloading
rtp:  rtpsv3vdepay: RTP SVQ3 depayloader
rtp:  rtptheoradepay: RTP Theora depayloader
rtp:  rtptheorapay: RTP Theora payloader
rtp:  rtpulpfecdec: RTP FEC Decoder
rtp:  rtpulpfecenc: RTP FEC Encoder
rtp:  rtpvorbisdepay: RTP Vorbis depayloader
rtp:  rtpvorbispay: RTP Vorbis payloader
rtp:  rtpvp8depay: RTP VP8 depayloader
rtp:  rtpvp8pay: RTP VP8 payloader
rtp:  rtpvp9depay: RTP VP9 depayloader
rtp:  rtpvp9pay: RTP VP9 payloader
rtp:  rtpvrawdepay: RTP Raw Video depayloader
rtp:  rtpvrawpay: RTP Raw Video payloader
rtpmanager:  rtpbin: RTP Bin
rtpmanager:  rtpdtmfmux: RTP muxer
rtpmanager:  rtpfunnel: RTP funnel
rtpmanager:  rtphdrextclientaudiolevel: Client-to-Mixer Audio Level Indicat=
ion (RFC6464) RTP Header Extension
rtpmanager:  rtphdrexttwcc: Transport Wide Congestion Control
rtpmanager:  rtpjitterbuffer: RTP packet jitter-buffer
rtpmanager:  rtpmux: RTP muxer
rtpmanager:  rtpptdemux: RTP Demux
rtpmanager:  rtprtxqueue: RTP Retransmission Queue
rtpmanager:  rtprtxreceive: RTP Retransmission receiver
rtpmanager:  rtprtxsend: RTP Retransmission Sender
rtpmanager:  rtpsession: RTP Session
rtpmanager:  rtpssrcdemux: RTP SSRC Demux
rtpmanager:  rtpst2022-1-fecdec: SMPTE 2022-1 FEC decoder
rtpmanager:  rtpst2022-1-fecenc: SMPTE 2022-1 FEC encoder
rtpmanagerbad:  rtpsink: RTP Sink element
rtpmanagerbad:  rtpsrc: RTP Source element
rtponvif:  rtponvifparse: ONVIF NTP timestamps RTP extension
rtponvif:  rtponviftimestamp: ONVIF NTP timestamps RTP extension
rtsp:  rtpdec: RTP Decoder
rtsp:  rtspsrc: RTSP packet receiver
sbc:  sbcdec: Bluetooth SBC audio decoder
sbc:  sbcenc: Bluetooth SBC audio encoder
sctp:  sctpdec: SCTP Decoder
sctp:  sctpenc: SCTP Encoder
sdpelem:  sdpdemux: SDP session setup
sdpelem:  sdpsrc: SDP Source
segmentclip:  audiosegmentclip: Audio buffer segment clipper
segmentclip:  videosegmentclip: Video buffer segment clipper
shapewipe:  shapewipe: Shape Wipe transition filter
shm:  shmsink: Shared Memory Sink
shm:  shmsrc: Shared Memory Source
shout2:  shout2send: Icecast network sink
sid:  siddec: Sid decoder
siren:  sirendec: Siren Decoder element
siren:  sirenenc: Siren Encoder element
smooth:  smooth: Smooth effect
smoothstreaming:  mssdemux: Smooth Streaming demuxer
smpte:  smpte: SMPTE transitions
smpte:  smptealpha: SMPTE transitions
sndfile:  sfdec: Sndfile decoder
soundtouch:  bpmdetect: BPM Detector
soundtouch:  pitch: Pitch controller
soup:  souphttpclientsink: HTTP client sink
soup:  souphttpsrc: HTTP client source
spandsp:  dtmfdetect: DTMF detector element
spandsp:  spanplc: SpanDSP PLC
spandsp:  tonegeneratesrc: Telephony Tone  Generator source
spectrum:  spectrum: Spectrum analyzer
speed:  speed: Speed
speex:  speexdec: Speex audio decoder
speex:  speexenc: Speex audio encoder
srt:  srtclientsink: SRT sink
srt:  srtclientsrc: SRT source
srt:  srtserversink: SRT sink
srt:  srtserversrc: SRT source
srt:  srtsink: SRT sink
srt:  srtsrc: SRT source
srtp:  srtpdec: SRTP decoder
srtp:  srtpenc: SRTP encoder
staticelements:  bin: Generic bin
staticelements:  pipeline: Pipeline object
subenc:  srtenc: Srt encoder
subenc:  webvttenc: WebVTT encoder
subparse:  ssaparse: SSA Subtitle Parser
subparse:  subparse: Subtitle parser
subparse: subparse_typefind: srt, sub, mpsub, mdvd, smi, txt, dks, vtt
switchbin:  switchbin: switchbin
taglib:  apev2mux: TagLib-based APEv2 Muxer
taglib:  id3v2mux: TagLib-based ID3v2 Muxer
tcp:  multifdsink: Multi filedescriptor sink
tcp:  multisocketsink: Multi socket sink
tcp:  socketsrc: socket source
tcp:  tcpclientsink: TCP client sink
tcp:  tcpclientsrc: TCP client source
tcp:  tcpserversink: TCP server sink
tcp:  tcpserversrc: TCP server source
teletext:  teletextdec: Teletext decoder
theora:  theoradec: Theora video decoder
theora:  theoraenc: Theora video encoder
theora:  theoraparse: Theora video parser
timecode:  avwait: Timecode Wait
timecode:  timecodestamper: Timecode stamper
transcode:  transcodebin: Transcode Bin
transcode:  uritranscodebin: URITranscode Bin
ttmlsubs:  ttmlparse: TTML subtitle parser
ttmlsubs:  ttmlrender: TTML subtitle renderer
twolame:  twolamemp2enc: TwoLAME mp2 encoder
typefindfunctions: application/dash+xml: mpd, MPD
typefindfunctions: application/itc: itc
typefindfunctions: application/msword: doc
typefindfunctions: application/mxf: mxf
typefindfunctions: application/octet-stream: no extensions
typefindfunctions: application/ogg: ogg, oga, ogv, ogm, ogx, spx, anx, axa,=
 axv
typefindfunctions: application/pdf: pdf
typefindfunctions: application/postscript: ps
typefindfunctions: application/sdp: sdp
typefindfunctions: application/smil: smil
typefindfunctions: application/ttml+xml: ttml+xml
typefindfunctions: application/vnd.apple-fcp+xml: fcpxml
typefindfunctions: application/vnd.apple-xmeml+xml: xmeml
typefindfunctions: application/vnd.ms-sstr+xml: no extensions
typefindfunctions: application/vnd.pixar.opentimelineio+json: otio
typefindfunctions: application/vnd.rn-realmedia: ra, ram, rm, rmvb
typefindfunctions: application/x-3gp: 3gp
typefindfunctions: application/x-ape: ape
typefindfunctions: application/x-apetag: mp3, ape, mpc, wv
typefindfunctions: application/x-ar: a
typefindfunctions: application/x-bzip: bz2
typefindfunctions: application/x-compress: Z
typefindfunctions: application/x-executable: no extensions
typefindfunctions: application/x-gzip: gz
typefindfunctions: application/x-hls: m3u8
typefindfunctions: application/x-id3v1: mp3, mp2, mp1, mpga, ogg, flac, tta
typefindfunctions: application/x-id3v2: mp3, mp2, mp1, mpga, ogg, flac, tta
typefindfunctions: application/x-mcc: mcc
typefindfunctions: application/x-mmsh: no extensions
typefindfunctions: application/x-ms-dos-executable: dll, exe, ocx, sys, scr=
, msstyles, cpl
typefindfunctions: application/x-ogg-skeleton: no extensions
typefindfunctions: application/x-ogm-audio: no extensions
typefindfunctions: application/x-ogm-text: no extensions
typefindfunctions: application/x-ogm-video: no extensions
typefindfunctions: application/x-pn-realaudio: ra, ram, rm, rmvb
typefindfunctions: application/x-rar: rar
typefindfunctions: application/x-scc: scc
typefindfunctions: application/x-shockwave-flash: swf, swfl
typefindfunctions: application/x-ssa: ssa, ass
typefindfunctions: application/x-subtitle-vtt: vtt
typefindfunctions: application/x-tar: tar
typefindfunctions: application/x-yuv4mpeg: no extensions
typefindfunctions: application/xges: xges
typefindfunctions: application/xml: xml
typefindfunctions: application/zip: zip
typefindfunctions: audio/aac: aac, adts, adif, loas
typefindfunctions: audio/audible: aa, aax
typefindfunctions: audio/iLBC-sh: ilbc
typefindfunctions: audio/midi: mid, midi
typefindfunctions: audio/mobile-xmf: mxmf
typefindfunctions: audio/mpeg: mp3, mp2, mp1, mpga
typefindfunctions: audio/qcelp: qcp
typefindfunctions: audio/riff-midi: mid, midi
typefindfunctions: audio/x-ac3: ac3, eac3
typefindfunctions: audio/x-aiff: aiff, aif, aifc
typefindfunctions: audio/x-amr-nb-sh: amr
typefindfunctions: audio/x-amr-wb-sh: amr
typefindfunctions: audio/x-au: au, snd
typefindfunctions: audio/x-ay: ay
typefindfunctions: audio/x-caf: caf
typefindfunctions: audio/x-celt: no extensions
typefindfunctions: audio/x-dts: dts
typefindfunctions: audio/x-flac: flac
typefindfunctions: audio/x-gbs: gbs
typefindfunctions: audio/x-gsm: gsm
typefindfunctions: audio/x-gym: gym
typefindfunctions: audio/x-imelody: imy, ime, imelody
typefindfunctions: audio/x-ircam: sf
typefindfunctions: audio/x-kss: kss
typefindfunctions: audio/x-m4a: m4a
typefindfunctions: audio/x-mod: 669, amf, ams, dbm, digi, dmf, dsm, gdm, fa=
r, imf, it, j2b, mdl, med, mod, mt2, mtm, okt, psm, ptm, sam, s3m, stm, stx=
, ult, umx, xm
typefindfunctions: audio/x-musepack: mpc, mpp, mp+
typefindfunctions: audio/x-nist: nist
typefindfunctions: audio/x-nsf: nsf
typefindfunctions: audio/x-paris: paf
typefindfunctions: audio/x-rf64: rf64
typefindfunctions: audio/x-sap: sap
typefindfunctions: audio/x-sbc: sbc
typefindfunctions: audio/x-sds: sds
typefindfunctions: audio/x-shorten: shn
typefindfunctions: audio/x-sid: sid
typefindfunctions: audio/x-spc: spc
typefindfunctions: audio/x-speex: no extensions
typefindfunctions: audio/x-svx: iff, svx
typefindfunctions: audio/x-tap-dmp: dmp
typefindfunctions: audio/x-tap-tap: tap
typefindfunctions: audio/x-ttafile: tta
typefindfunctions: audio/x-vgm: vgm
typefindfunctions: audio/x-voc: voc
typefindfunctions: audio/x-vorbis: no extensions
typefindfunctions: audio/x-w64: w64
typefindfunctions: audio/x-wav: wav
typefindfunctions: audio/x-wavpack: wv, wvp
typefindfunctions: audio/x-wavpack-correction: wvc
typefindfunctions: audio/x-xi: xi
typefindfunctions: image/bmp: bmp
typefindfunctions: image/gif: gif
typefindfunctions: image/jp2: jp2
typefindfunctions: image/jpeg: jpg, jpe, jpeg
typefindfunctions: image/png: png
typefindfunctions: image/svg+xml: svg
typefindfunctions: image/tiff: tif, tiff
typefindfunctions: image/vnd.adobe.photoshop: psd
typefindfunctions: image/vnd.wap.wbmp: no extensions
typefindfunctions: image/webp: webp
typefindfunctions: image/x-degas: no extensions
typefindfunctions: image/x-exr: exr
typefindfunctions: image/x-icon: no extensions
typefindfunctions: image/x-jng: jng
typefindfunctions: image/x-jpc: jpc, j2k
typefindfunctions: image/x-portable-pixmap: pnm, ppm, pgm, pbm
typefindfunctions: image/x-quicktime: qif, qtif, qti
typefindfunctions: image/x-sun-raster: ras
typefindfunctions: image/x-xcf: xcf
typefindfunctions: image/x-xpixmap: xpm
typefindfunctions: multipart/x-mixed-replace: no extensions
typefindfunctions: subtitle/x-kate: no extensions
typefindfunctions: text/html: htm, html
typefindfunctions: text/plain: txt
typefindfunctions: text/uri-list: ram
typefindfunctions: text/utf-16: txt
typefindfunctions: text/utf-32: txt
typefindfunctions: text/x-cmml: no extensions
typefindfunctions: video/mj2: mj2
typefindfunctions: video/mpeg-elementary: mpv, mpeg, mpg
typefindfunctions: video/mpeg-sys: mpe, mpeg, mpg
typefindfunctions: video/mpeg4: m4v
typefindfunctions: video/mpegts: ts, mts
typefindfunctions: video/quicktime: mov, mp4
typefindfunctions: video/vivo: viv
typefindfunctions: video/x-cdxa: dat
typefindfunctions: video/x-dirac: no extensions
typefindfunctions: video/x-dv: dv, dif
typefindfunctions: video/x-fli: flc, fli
typefindfunctions: video/x-flv: flv
typefindfunctions: video/x-h263: h263, 263
typefindfunctions: video/x-h264: h264, x264, 264
typefindfunctions: video/x-h265: h265, x265, 265
typefindfunctions: video/x-ivf: ivf
typefindfunctions: video/x-matroska: mkv, mka, mk3d, webm
typefindfunctions: video/x-mng: mng
typefindfunctions: video/x-ms-asf: asf, wm, wma, wmv
typefindfunctions: video/x-msvideo: avi
typefindfunctions: video/x-mve: mve
typefindfunctions: video/x-nuv: nuv
typefindfunctions: video/x-pva: pva
typefindfunctions: video/x-theora: no extensions
typefindfunctions: video/x-vcd: dat
udp:  dynudpsink: UDP packet sender
udp:  multiudpsink: UDP packet sender
udp:  udpsink: UDP packet sender
udp:  udpsrc: UDP packet receiver
uvch264:  uvch264deviceprovider (GstDeviceProviderFactory)
uvch264:  uvch264mjpgdemux: UVC H264 MJPG Demuxer
uvch264:  uvch264src: UVC H264 Source
va:  vaav1dec: VA-API AV1 Decoder
va:  vadeinterlace: VA-API Deinterlacer
va:  vah264dec: VA-API H.264 Decoder
va:  vah265dec: VA-API H.265 Decoder
va:  vampeg2dec: VA-API Mpeg2 Decoder
va:  vapostproc: VA-API Video Postprocessor
va:  vavp9dec: VA-API VP9 Decoder
vaapi:  vaapiav1dec: VA-API AV1 decoder
vaapi:  vaapidecodebin: VA-API Decode Bin
vaapi:  vaapih264dec: VA-API H264 decoder
vaapi:  vaapih264enc: VA-API H264 encoder
vaapi:  vaapih265dec: VA-API H265 decoder
vaapi:  vaapih265enc: VA-API H265 encoder
vaapi:  vaapijpegdec: VA-API JPEG decoder
vaapi:  vaapijpegenc: VA-API JPEG encoder
vaapi:  vaapimpeg2dec: VA-API MPEG2 decoder
vaapi:  vaapimpeg2enc: VA-API MPEG-2 encoder
vaapi:  vaapioverlay: VA-API overlay
vaapi:  vaapipostproc: VA-API video postprocessing
vaapi:  vaapisink: VA-API sink
vaapi:  vaapivc1dec: VA-API VC1 decoder
vaapi:  vaapivp9dec: VA-API VP9 decoder
vaapi:  vaapivp9enc: VA-API VP9 encoder
video4linux2:  v4l2deviceprovider (GstDeviceProviderFactory)
video4linux2:  v4l2radio: Radio (video4linux2) Tuner
video4linux2:  v4l2sink: Video (video4linux2) Sink
video4linux2:  v4l2src: Video (video4linux2) Source
videobox:  videobox: Video box filter
videoconvert:  videoconvert: Colorspace converter
videocrop:  aspectratiocrop: aspectratiocrop
videocrop:  videocrop: Crop
videofilter:  gamma: Video gamma correction
videofilter:  videobalance: Video balance
videofilter:  videoflip: Video flipper
videofilter:  videomedian: Median effect
videofiltersbad:  scenechange: Scene change detector
videofiltersbad:  videodiff: Video Diff
videofiltersbad:  zebrastripe: Zebra stripe overlay
videoframe_audiolevel:  videoframe-audiolevel: Video-frame audio level
videomixer:  videomixer: Video mixer 2
videoparsersbad:  av1parse: AV1 parser
videoparsersbad:  diracparse: Dirac parser
videoparsersbad:  h263parse: H.263 parser
videoparsersbad:  h264parse: H.264 parser
videoparsersbad:  h265parse: H.265 parser
videoparsersbad:  jpeg2000parse: JPEG 2000 parser
videoparsersbad:  mpeg4videoparse: MPEG 4 video elementary stream parser
videoparsersbad:  mpegvideoparse: MPEG video elementary stream parser
videoparsersbad:  pngparse: PNG parser
videoparsersbad:  vc1parse: VC1 parser
videoparsersbad:  vp9parse: VP9 parser
videorate:  videorate: Video rate adjuster
videoscale:  videoscale: Video scaler
videosignal:  simplevideomark: Video marker
videosignal:  simplevideomarkdetect: Video detecter
videosignal:  videoanalyse: Video analyser
videotestsrc:  videotestsrc: Video test source
vmnc:  vmncdec: VMnc video decoder
voaacenc:  voaacenc: AAC audio encoder
voamrwbenc:  voamrwbenc: AMR-WB audio encoder
volume:  volume: Volume
vorbis:  vorbisdec: Vorbis audio decoder
vorbis:  vorbisenc: Vorbis audio encoder
vorbis:  vorbisparse: VorbisParse
vorbis:  vorbistag: VorbisTag
vpx:  vp8dec: On2 VP8 Decoder
vpx:  vp8enc: On2 VP8 Encoder
vpx:  vp9dec: On2 VP9 Decoder
vpx:  vp9enc: On2 VP9 Encoder
wavenc:  wavenc: WAV audio muxer
wavpack:  wavpackdec: Wavpack audio decoder
wavpack:  wavpackenc: Wavpack audio encoder
wavparse:  wavparse: WAV audio demuxer
waylandsink:  waylandsink: wayland video sink
webp:  webpdec: WebP image decoder
webp:  webpenc: WEBP image encoder
webrtc:  webrtcbin: WebRTC Bin
webrtcdsp:  webrtcdsp: Voice Processor (AGC, AEC, filters, etc.)
webrtcdsp:  webrtcechoprobe: Acoustic Echo Canceller probe
wildmidi:  wildmididec: WildMidi-based MIDI music decoder
x264:  x264enc: x264 H.264 Encoder
x265:  x265enc: x265enc
ximagesink:  ximagesink: Video sink
ximagesrc:  ximagesrc: Ximage video source
xingmux:  xingmux: MP3 Xing muxer
xvimagesink:  xvimagesink: Video sink
y4mdec:  y4mdec: YUV4MPEG demuxer/decoder
y4menc:  y4menc: YUV4MPEG video encoder
zbar:  zbar: Barcode detector
zxing:  zxing: Barcode detector

Total count: 257 plugins (1 blacklist entry not shown), 906 features


Client:
1394:  dv1394src: Firewire (1394) DV video source
1394:  hdv1394src: Firewire (1394) HDV video source
a52dec:  a52dec: ATSC A/52 audio decoder
aasink:  aasink: ASCII art video sink
aasink:  aatv: aaTV effect
accurip:  accurip: AccurateRip(TM) CRC element
adder:  adder: Adder
adpcmdec:  adpcmdec: ADPCM decoder
adpcmenc:  adpcmenc: ADPCM encoder
aes:  aesdec: aesdec
aes:  aesenc: aesenc
aiff:  aiffmux: AIFF audio muxer
aiff:  aiffparse: AIFF audio demuxer
alaw:  alawdec: A Law audio decoder
alaw:  alawenc: A Law audio encoder
alpha:  alpha: Alpha filter
alphacolor:  alphacolor: Alpha color filter
alsa:  alsadeviceprovider (GstDeviceProviderFactory)
alsa:  alsamidisrc: AlsaMidi Source
alsa:  alsasink: Audio sink (ALSA)
alsa:  alsasrc: Audio source (ALSA)
amrnb:  amrnbdec: AMR-NB audio decoder
amrnb:  amrnbenc: AMR-NB audio encoder
amrwbdec:  amrwbdec: AMR-WB audio decoder
aom:  av1dec: AV1 Decoder
aom:  av1enc: AV1 Encoder
apetag:  apedemux: APE tag demuxer
app:  appsink: AppSink
app:  appsrc: AppSrc
asf:  asfdemux: ASF Demuxer
asf:  rtpasfdepay: RTP ASF packet depayloader
asf:  rtspwms: WMS RTSP Extension
asfmux:  asfmux: ASF muxer
asfmux:  asfparse: ASF parser
asfmux:  rtpasfpay: RTP ASF payloader
assrender:  assrender: ASS/SSA Render
audiobuffersplit:  audiobuffersplit: Audio Buffer Split
audioconvert:  audioconvert: Audio converter
audiofx:  audioamplify: Audio amplifier
audiofx:  audiochebband: Band pass & band reject filter
audiofx:  audiocheblimit: Low pass & high pass filter
audiofx:  audiodynamic: Dynamic range controller
audiofx:  audioecho: Audio echo
audiofx:  audiofirfilter: Audio FIR filter
audiofx:  audioiirfilter: Audio IIR filter
audiofx:  audioinvert: Audio inversion
audiofx:  audiokaraoke: AudioKaraoke
audiofx:  audiopanorama: Stereo positioning
audiofx:  audiowsincband: Band pass & band reject filter
audiofx:  audiowsinclimit: Low pass & high pass filter
audiofx:  scaletempo: Scaletempo
audiofx:  stereo: Stereo effect
audiofxbad:  audiochannelmix: Simple stereo audio mixer
audiolatency:  audiolatency: AudioLatency
audiomixer:  audiointerleave: AudioInterleave
audiomixer:  audiomixer: AudioMixer
audiomixer:  liveadder: AudioMixer
audiomixmatrix:  audiomixmatrix: Matrix audio mix
audioparsers:  aacparse: AAC audio stream parser
audioparsers:  ac3parse: AC3 audio stream parser
audioparsers:  amrparse: AMR audio stream parser
audioparsers:  dcaparse: DTS Coherent Acoustics audio stream parser
audioparsers:  flacparse: FLAC audio parser
audioparsers:  mpegaudioparse: MPEG1 Audio Parser
audioparsers:  sbcparse: SBC audio parser
audioparsers:  wavpackparse: Wavpack audio stream parser
audiorate:  audiorate: Audio rate adjuster
audioresample:  audioresample: Audio resampler
audiotestsrc:  audiotestsrc: Audio test source
audiovisualizers:  spacescope: Stereo visualizer
audiovisualizers:  spectrascope: Frequency spectrum scope
audiovisualizers:  synaescope: Synaescope
audiovisualizers:  wavescope: Waveform oscilloscope
auparse:  auparse: AU audio demuxer
autoconvert:  autoconvert: Select converter based on caps
autoconvert:  autovideoconvert: Select color space converter based on caps
autodetect:  autoaudiosink: Auto audio sink
autodetect:  autoaudiosrc: Auto audio source
autodetect:  autovideosink: Auto video sink
autodetect:  autovideosrc: Auto video source
avi:  avidemux: Avi demuxer
avi:  avimux: Avi muxer
avi:  avisubtitle: Avi subtitle parser
avtp:  avtpaafdepay: AVTP Audio Format (AAF) depayloader
avtp:  avtpaafpay: AVTP Audio Format (AAF) payloader
avtp:  avtpcrfcheck: Clock Reference Format (CRF) Checker
avtp:  avtpcrfsync: Clock Reference Format (CRF) Synchronizer
avtp:  avtpcvfdepay: AVTP Compressed Video Format (CVF) depayloader
avtp:  avtpcvfpay: AVTP Compressed Video Format (CVF) payloader
avtp:  avtpsink: Audio/Video Transport Protocol (AVTP) Sink
avtp:  avtpsrc: Audio/Video Transport Protocol (AVTP) Source
bayer:  bayer2rgb: Bayer to RGB decoder for cameras
bayer:  rgb2bayer: RGB to Bayer converter
bluez:  a2dpsink: Bluetooth A2DP sink
bluez:  avdtpsink: Bluetooth AVDTP sink
bluez:  avdtpsrc: Bluetooth AVDTP Source
bs2b:  bs2b: Crossfeed effect
bz2:  bz2dec: BZ2 decoder
bz2:  bz2enc: BZ2 encoder
cacasink:  cacasink: A colored ASCII art video sink
cacasink:  cacatv: CacaTV effect
cairo:  cairooverlay: Cairo overlay
camerabin:  camerabin: Camera Bin
camerabin:  viewfinderbin: Viewfinder Bin
camerabin:  wrappercamerabinsrc: Wrapper camera src element for camerabin2
cdio:  cdiocddasrc: CD audio source (CDDA)
cdparanoia:  cdparanoiasrc: CD Audio (cdda) Source, Paranoia IV
chromaprint:  chromaprint: Chromaprint fingerprinting element
closedcaption:  cc708overlay: Closed Caption overlay
closedcaption:  cccombiner: Closed Caption Combiner
closedcaption:  ccconverter: Closed Caption Converter
closedcaption:  ccextractor: Closed Caption Extractor
closedcaption:  line21decoder: Line 21 CC Decoder
closedcaption:  line21encoder: Line 21 CC Encoder
codecalpha:  alphacombine: Alpha Combiner
codecalpha:  codecalphademux: CODEC Alpha Demuxer
codecalpha:  vp8alphadecodebin: VP8 Alpha Decoder
codecalpha:  vp9alphadecodebin: VP9 Alpha Decoder
coloreffects:  chromahold: Chroma hold filter
coloreffects:  coloreffects: Color Look-up Table filter
colormanagement:  lcms: LCMS2 ICC correction
compositor:  compositor: Compositor
coreelements:  capsfilter: CapsFilter
coreelements:  clocksync: ClockSync
coreelements:  concat: Concat
coreelements:  dataurisrc: data: URI source element
coreelements:  downloadbuffer: DownloadBuffer
coreelements:  fakesink: Fake Sink
coreelements:  fakesrc: Fake Source
coreelements:  fdsink: Filedescriptor Sink
coreelements:  fdsrc: Filedescriptor Source
coreelements:  filesink: File Sink
coreelements:  filesrc: File Source
coreelements:  funnel: Funnel pipe fitting
coreelements:  identity: Identity
coreelements:  input-selector: Input selector
coreelements:  multiqueue: MultiQueue
coreelements:  output-selector: Output selector
coreelements:  queue: Queue
coreelements:  queue2: Queue 2
coreelements:  streamiddemux: Streamid Demux
coreelements:  tee: Tee pipe fitting
coreelements:  typefind: TypeFind
coreelements:  valve: Valve element
coretracers:  factories (GstTracerFactory)
coretracers:  latency (GstTracerFactory)
coretracers:  leaks (GstTracerFactory)
coretracers:  log (GstTracerFactory)
coretracers:  rusage (GstTracerFactory)
coretracers:  stats (GstTracerFactory)
curl:  curlfilesink: Curl file sink
curl:  curlftpsink: Curl ftp sink
curl:  curlhttpsink: Curl http sink
curl:  curlhttpsrc: HTTP Client Source using libcURL
curl:  curlsftpsink: Curl sftp sink
curl:  curlsmtpsink: Curl smtp sink
cutter:  cutter: Audio cutter
dash:  dashdemux: DASH Demuxer
dash:  dashsink: DASH Sink
dc1394:  dc1394src: 1394 IIDC Video Source
de265:  libde265dec: HEVC/H.265 decoder
debug:  breakmydata: Break my data
debug:  capssetter: CapsSetter
debug:  cpureport: CPU report
debug:  navseek: Seek based on left-right arrows
debug:  progressreport: Progress report
debug:  pushfilesrc: Push File Source
debug:  rndbuffersize: Random buffer size
debug:  taginject: TagInject
debug:  testsink: Test plugin
debugutilsbad:  checksumsink: Checksum sink
debugutilsbad:  chopmydata: Chop my data
debugutilsbad:  clockselect: Clock select
debugutilsbad:  compare: Compare buffers
debugutilsbad:  debugspy: DebugSpy
debugutilsbad:  errorignore: Convert some GstFlowReturn types into others
debugutilsbad:  fakeaudiosink: Fake Audio Sink
debugutilsbad:  fakevideosink: Fake Video Sink
debugutilsbad:  fpsdisplaysink: Measure and show framerate on videosink
debugutilsbad:  testsrcbin: Generic bin
debugutilsbad:  videocodectestsink: Video CODEC Test Sink
debugutilsbad:  watchdog: Watchdog
decklink:  decklinkaudiosink: Decklink Audio Sink
decklink:  decklinkaudiosrc: Decklink Audio Source
decklink:  decklinkdeviceprovider (GstDeviceProviderFactory)
decklink:  decklinkvideosink: Decklink Video Sink
decklink:  decklinkvideosrc: Decklink Video Source
deinterlace:  deinterlace: Deinterlacer
dtls:  dtlsdec: DTLS Decoder
dtls:  dtlsenc: DTLS Encoder
dtls:  dtlssrtpdec: DTLS-SRTP Decoder
dtls:  dtlssrtpdemux: DTLS SRTP Demultiplexer
dtls:  dtlssrtpenc: DTLS-SRTP Encoder
dtmf:  dtmfsrc: DTMF tone generator
dtmf:  rtpdtmfdepay: RTP DTMF packet depayloader
dtmf:  rtpdtmfsrc: RTP DTMF packet generator
dtsdec:  dtsdec: DTS audio decoder
dv:  dvdec: DV video decoder
dv:  dvdemux: DV system stream demuxer
dvb:  dvbbasebin: DVB bin
dvb:  dvbsrc: DVB Source
dvbsubenc:  dvbsubenc: DVB subtitle encoder
dvbsuboverlay:  dvbsuboverlay: DVB Subtitles Overlay
dvdlpcmdec:  dvdlpcmdec: DVD LPCM Audio decoder
dvdread:  dvdreadsrc: DVD Source
dvdspu:  dvdspu: Sub-picture Overlay
dvdsub:  dvdsubdec: DVD subtitle decoder
dvdsub:  dvdsubparse: DVD subtitle parser
effectv:  agingtv: AgingTV effect
effectv:  dicetv: DiceTV effect
effectv:  edgetv: EdgeTV effect
effectv:  optv: OpTV effect
effectv:  quarktv: QuarkTV effect
effectv:  radioactv: RadioacTV effect
effectv:  revtv: RevTV effect
effectv:  rippletv: RippleTV effect
effectv:  shagadelictv: ShagadelicTV
effectv:  streaktv: StreakTV effect
effectv:  vertigotv: VertigoTV effect
effectv:  warptv: WarpTV effect
encoding:  encodebin: Encoder Bin
encoding:  encodebin2: Encoder Bin
equalizer:  equalizer-10bands: 10 Band Equalizer
equalizer:  equalizer-3bands: 3 Band Equalizer
equalizer:  equalizer-nbands: N Band Equalizer
faac:  faac: AAC audio encoder
faad:  faad: AAC audio decoder
faceoverlay:  faceoverlay: faceoverlay
fbdevsink:  fbdevsink: fbdev video sink
fdkaac:  fdkaacdec: FDK AAC audio decoder
fdkaac:  fdkaacenc: FDK AAC audio encoder
festival:  festival: Festival Text-to-Speech synthesizer
fieldanalysis:  fieldanalysis: Video field analysis
flac:  flacdec: FLAC audio decoder
flac:  flacenc: FLAC audio encoder
flac:  flactag: FLAC tagger
fluidsynthmidi:  fluiddec: Fluidsynth
flv:  flvdemux: FLV Demuxer
flv:  flvmux: FLV muxer
flxdec:  flxdec: FLX video decoder
freeverb:  freeverb: Reverberation/room effect
gaudieffects:  burn: Burn
gaudieffects:  chromium: Chromium
gaudieffects:  dilate: Dilate
gaudieffects:  dodge: Dodge
gaudieffects:  exclusion: Exclusion
gaudieffects:  gaussianblur: GstGaussianBlur
gaudieffects:  solarize: Solarize
gdkpixbuf:  gdkpixbufdec: GdkPixbuf image decoder
gdkpixbuf:  gdkpixbufoverlay: GdkPixbuf Overlay
gdkpixbuf:  gdkpixbufsink: GdkPixbuf sink
gdp:  gdpdepay: GDP Depayloader
gdp:  gdppay: GDP Payloader
geometrictransform:  bulge: bulge
geometrictransform:  circle: circle
geometrictransform:  diffuse: diffuse
geometrictransform:  fisheye: fisheye
geometrictransform:  kaleidoscope: kaleidoscope
geometrictransform:  marble: marble
geometrictransform:  mirror: mirror
geometrictransform:  perspective: perspective
geometrictransform:  pinch: pinch
geometrictransform:  rotate: rotate
geometrictransform:  sphere: sphere
geometrictransform:  square: square
geometrictransform:  stretch: stretch
geometrictransform:  tunnel: tunnel
geometrictransform:  twirl: twirl
geometrictransform:  waterripple: waterripple
gio:  giosink: GIO sink
gio:  giosrc: GIO source
gio:  giostreamsink: GIO stream sink
gio:  giostreamsrc: GIO stream source
gme:  gmedec: Gaming console music file decoder
goom:  goom: GOOM: what a GOOM!
goom2k1:  goom2k1: GOOM: what a GOOM! 2k1 edition
gsm:  gsmdec: GSM audio decoder
gsm:  gsmenc: GSM audio encoder
hls:  hlsdemux: HLS Demuxer
hls:  hlssink: HTTP Live Streaming sink
hls:  hlssink2: HTTP Live Streaming sink
icydemux:  icydemux: ICY tag demuxer
id3demux:  id3demux: ID3 tag demuxer
id3tag:  id3mux: ID3 v1 and v2 Muxer
imagefreeze:  imagefreeze: Still frame stream generator
inter:  interaudiosink: Internal audio sink
inter:  interaudiosrc: Internal audio source
inter:  intersubsink: Internal subtitle sink
inter:  intersubsrc: Internal subtitle source
inter:  intervideosink: Internal video sink
inter:  intervideosrc: Internal video source
interlace:  interlace: Interlace filter
interleave:  deinterleave: Audio deinterleaver
interleave:  interleave: Audio interleaver
ipcpipeline:  ipcpipelinesink: Inter-process Pipeline Sink
ipcpipeline:  ipcpipelinesrc: Inter-process Pipeline Source
ipcpipeline:  ipcslavepipeline: Inter-process slave pipeline
isomp4:  3gppmux: 3GPP Muxer
isomp4:  ismlmux: ISML Muxer
isomp4:  mj2mux: MJ2 Muxer
isomp4:  mp4mux: MP4 Muxer
isomp4:  qtdemux: QuickTime demuxer
isomp4:  qtmoovrecover: QT Moov Recover
isomp4:  qtmux: QuickTime Muxer
isomp4:  rtpxqtdepay: RTP packet depayloader
ivfparse:  ivfparse: IVF parser
ivtc:  combdetect: Comb Detect
ivtc:  ivtc: Inverse Telecine
jack:  jackaudiosink: Audio Sink (Jack)
jack:  jackaudiosrc: Audio Source (Jack)
jp2kdecimator:  jp2kdecimator: JPEG2000 decimator
jpeg:  jpegdec: JPEG image decoder
jpeg:  jpegenc: JPEG image encoder
jpegformat:  jifmux: JPEG stream muxer
jpegformat:  jpegparse: JPEG stream parser
kate:  katedec: Kate stream text decoder
kate:  kateenc: Kate stream encoder
kate:  kateparse: Kate stream parser
kate:  katetag: Kate stream tagger
kms:  kmssink: KMS video sink
ladspa:  ladspa-ladspa-rubberband-so-rubberband-pitchshifter-mono: Rubber B=
and Mono Pitch Shifter
ladspa:  ladspa-ladspa-rubberband-so-rubberband-pitchshifter-stereo: Rubber=
 Band Stereo Pitch Shifter
ladspa:  ladspa-ladspa-rubberband-so-rubberband-r3-pitchshifter-mono: Rubbe=
r Band R3 Mono Pitch Shifter
ladspa:  ladspa-ladspa-rubberband-so-rubberband-r3-pitchshifter-stereo: Rub=
ber Band R3 Stereo Pitch Shifter
lame:  lamemp3enc: L.A.M.E. mp3 encoder
ldac:  ldacenc: Bluetooth LDAC audio encoder
legacyrawparse:  audioparse: Audio Parse
legacyrawparse:  videoparse: Video Parse
level:  level: Level
matroska:  matroskademux: Matroska demuxer
matroska:  matroskamux: Matroska muxer
matroska:  matroskaparse: Matroska parser
matroska:  webmmux: WebM muxer
microdns:  microdnsdeviceprovider (GstDeviceProviderFactory)
midi:  midiparse: MidiParse
modplug:  modplug: ModPlug
monoscope:  monoscope: Monoscope
mpeg2dec:  mpeg2dec: mpeg1 and mpeg2 video decoder
mpeg2enc:  mpeg2enc: mpeg2enc video encoder
mpegpsdemux:  mpegpsdemux: MPEG Program Stream Demuxer
mpegpsmux:  mpegpsmux: MPEG Program Stream Muxer
mpegtsdemux:  tsdemux: MPEG transport stream demuxer
mpegtsdemux:  tsparse: MPEG transport stream parser
mpegtsmux:  atscmux: ATSC Transport Stream Muxer
mpegtsmux:  mpegtsmux: MPEG Transport Stream Muxer
mpg123:  mpg123audiodec: mpg123 mp3 decoder
mplex:  mplex: mplex video multiplexer
mulaw:  mulawdec: Mu Law audio decoder
mulaw:  mulawenc: Mu Law audio encoder
multifile:  imagesequencesrc: Image Sequence Source
multifile:  multifilesink: Multi-File Sink
multifile:  multifilesrc: Multi-File Source
multifile:  splitfilesrc: Split-File Source
multifile:  splitmuxsink: Split Muxing Bin
multifile:  splitmuxsrc: Split File Demuxing Bin
multipart:  multipartdemux: Multipart demuxer
multipart:  multipartmux: Multipart muxer
musepack:  musepackdec: Musepack decoder
mxf:  mxfdemux: MXF Demuxer
mxf:  mxfmux: MXF muxer
navigationtest:  navigationtest: Video navigation test
neonhttpsrc:  neonhttpsrc: HTTP client source
netsim:  netsim: Network Simulator
nice:  nicesink: ICE sink
nice:  nicesrc: ICE source
ogg:  oggaviparse: Ogg AVI parser
ogg:  oggdemux: Ogg demuxer
ogg:  oggmux: Ogg muxer
ogg:  oggparse: Ogg parser
ogg:  ogmaudioparse: OGM audio stream parser
ogg:  ogmtextparse: OGM text stream parser
ogg:  ogmvideoparse: OGM video stream parser
openal:  openalsink: OpenAL Audio Sink
openal:  openalsrc: OpenAL Audio Source
openaptx:  openaptxdec: Bluetooth aptX/aptX-HD audio decoder using libopena=
ptx
openaptx:  openaptxenc: Bluetooth aptX/aptX-HD audio encoder using libopena=
ptx
openexr:  openexrdec: OpenEXR decoder
opengl:  glalpha: OpenGL Alpha Filter
opengl:  glcolorbalance: Video balance
opengl:  glcolorconvert: OpenGL color converter
opengl:  glcolorscale: OpenGL color scale
opengl:  gldeinterlace: OpenGL deinterlacing filter
opengl:  gldifferencematte: Gstreamer OpenGL DifferenceMatte
opengl:  gldownload: OpenGL downloader
opengl:  gleffects: Gstreamer OpenGL Effects
opengl:  gleffects_blur: Blur with 9x9 separable convolution Effect
opengl:  gleffects_bulge: Bulge Effect
opengl:  gleffects_fisheye: FishEye Effect
opengl:  gleffects_glow: Glow Lighting Effect
opengl:  gleffects_heat: Heat Signature Effect
opengl:  gleffects_identity: Do nothing Effect
opengl:  gleffects_laplacian: Laplacian Convolution Demo Effect
opengl:  gleffects_lumaxpro: Luma Cross Processing Effect
opengl:  gleffects_mirror: Mirror Effect
opengl:  gleffects_sepia: Sepia Toning Effect
opengl:  gleffects_sin: All Grey but Red Effect
opengl:  gleffects_sobel: Sobel edge detection Effect
opengl:  gleffects_square: Square Effect
opengl:  gleffects_squeeze: Squeeze Effect
opengl:  gleffects_stretch: Stretch Effect
opengl:  gleffects_tunnel: Light Tunnel Effect
opengl:  gleffects_twirl: Twirl Effect
opengl:  gleffects_xpro: Cross Processing Effect
opengl:  gleffects_xray: Glowing negative effect
opengl:  glfilterapp: OpenGL application filter
opengl:  glfilterbin: GL Filter Bin
opengl:  glfiltercube: OpenGL cube filter
opengl:  glfilterglass: OpenGL glass filter
opengl:  glimagesink: GL Sink Bin
opengl:  glimagesinkelement: OpenGL video sink
opengl:  glmixerbin: OpenGL video_mixer empty bin
opengl:  glmosaic: OpenGL mosaic
opengl:  gloverlay: Gstreamer OpenGL Overlay
opengl:  gloverlaycompositor: OpenGL overlaying filter
opengl:  glshader: OpenGL fragment shader filter
opengl:  glsinkbin: GL Sink Bin
opengl:  glsrcbin: GL Src Bin
opengl:  glstereomix: OpenGL stereo video combiner
opengl:  glstereosplit: GLStereoSplit
opengl:  gltestsrc: Video test source
opengl:  gltransformation: OpenGL transformation filter
opengl:  glupload: OpenGL uploader
opengl:  glvideoflip: OpenGL video flip filter
opengl:  glvideomixer: OpenGL video_mixer bin
opengl:  glvideomixerelement: OpenGL video_mixer
opengl:  glviewconvert: OpenGL Multiview/3D conversion filter
openjpeg:  openjpegdec: OpenJPEG JPEG2000 decoder
openjpeg:  openjpegenc: OpenJPEG JPEG2000 encoder
openmpt:  openmptdec: OpenMPT-based module music decoder
opus:  opusdec: Opus audio decoder
opus:  opusenc: Opus audio encoder
opusparse:  opusparse: Opus audio parser
oss4:  oss4sink: OSS v4 Audio Sink
oss4:  oss4src: OSS v4 Audio Source
ossaudio:  osssink: Audio Sink (OSS)
ossaudio:  osssrc: Audio Source (OSS)
overlaycomposition:  overlaycomposition: Overlay Composition
pango:  clockoverlay: Clock overlay
pango:  textoverlay: Text overlay
pango:  textrender: Text renderer
pango:  timeoverlay: Time overlay
pbtypes:  GstVideoMultiviewFlagsSet (GstDynamicTypeFactory)
pcapparse:  irtspparse: IRTSPParse
pcapparse:  pcapparse: PCapParse
playback:  decodebin: Decoder Bin
playback:  decodebin3: Decoder Bin 3
playback:  parsebin: Parse Bin
playback:  playbin: Player Bin 2
playback:  playbin3: Player Bin 3
playback:  playsink: Player Sink
playback:  streamsynchronizer: Stream Synchronizer
playback:  subtitleoverlay: Subtitle Overlay
playback:  uridecodebin: URI Decoder
playback:  uridecodebin3: URI Decoder
playback:  urisourcebin: URI reader
png:  pngdec: PNG image decoder
png:  pngenc: PNG image encoder
pnm:  pnmdec: PNM image decoder
pnm:  pnmenc: PNM image encoder
proxy:  proxysink: Proxy Sink
proxy:  proxysrc: Proxy source
pulseaudio:  pulsedeviceprovider (GstDeviceProviderFactory)
pulseaudio:  pulsesink: PulseAudio Audio Sink
pulseaudio:  pulsesrc: PulseAudio Audio Source
qroverlay:  debugqroverlay: qroverlay
qroverlay:  qroverlay: qroverlay
rawparse:  rawaudioparse: rawaudioparse
rawparse:  rawvideoparse: rawvideoparse
rawparse:  unalignedaudioparse: unalignedaudioparse
rawparse:  unalignedvideoparse: unalignedvideoparse
realmedia:  pnmsrc: PNM packet receiver
realmedia:  rademux: RealAudio Demuxer
realmedia:  rdtdepay: RDT packet parser
realmedia:  rdtmanager: RTP Decoder
realmedia:  rmdemux: RealMedia Demuxer
realmedia:  rtspreal: RealMedia RTSP Extension
removesilence:  removesilence: RemoveSilence
replaygain:  rganalysis: ReplayGain analysis
replaygain:  rglimiter: ReplayGain limiter
replaygain:  rgvolume: ReplayGain volume
resindvd:  rsndvdbin: rsndvdbin
rfbsrc:  rfbsrc: Rfb source
rist:  ristrtpdeext: RIST RTP Extension remover
rist:  ristrtpext: RIST RTP Extension adder
rist:  ristrtxreceive: RIST Retransmission receiver
rist:  ristrtxsend: RIST Retransmission Sender
rist:  ristsink: RIST Sink
rist:  ristsrc: RIST Source
rist:  roundrobin: Round Robin
rsvg:  rsvgdec: SVG image decoder
rsvg:  rsvgoverlay: RSVG overlay
rtmp:  rtmpsink: RTMP output sink
rtmp:  rtmpsrc: RTMP Source
rtmp2:  rtmp2sink: RTMP sink element
rtmp2:  rtmp2src: RTMP source element
rtp:  asteriskh263: RTP Asterisk H263 depayloader
rtp:  rtpL16depay: RTP audio depayloader
rtp:  rtpL16pay: RTP audio payloader
rtp:  rtpL24depay: RTP audio depayloader
rtp:  rtpL24pay: RTP audio payloader
rtp:  rtpL8depay: RTP audio depayloader
rtp:  rtpL8pay: RTP audio payloader
rtp:  rtpac3depay: RTP AC3 depayloader
rtp:  rtpac3pay: RTP AC3 audio payloader
rtp:  rtpamrdepay: RTP AMR depayloader
rtp:  rtpamrpay: RTP AMR payloader
rtp:  rtpbvdepay: RTP BroadcomVoice depayloader
rtp:  rtpbvpay: RTP BV Payloader
rtp:  rtpceltdepay: RTP CELT depayloader
rtp:  rtpceltpay: RTP CELT payloader
rtp:  rtpdvdepay: RTP DV Depayloader
rtp:  rtpdvpay: RTP DV Payloader
rtp:  rtpg722depay: RTP audio depayloader
rtp:  rtpg722pay: RTP audio payloader
rtp:  rtpg723depay: RTP G.723 depayloader
rtp:  rtpg723pay: RTP G.723 payloader
rtp:  rtpg726depay: RTP G.726 depayloader
rtp:  rtpg726pay: RTP G.726 payloader
rtp:  rtpg729depay: RTP G.729 depayloader
rtp:  rtpg729pay: RTP G.729 payloader
rtp:  rtpgsmdepay: RTP GSM depayloader
rtp:  rtpgsmpay: RTP GSM payloader
rtp:  rtpgstdepay: GStreamer depayloader
rtp:  rtpgstpay: RTP GStreamer payloader
rtp:  rtph261depay: RTP H261 depayloader
rtp:  rtph261pay: RTP H261 packet payloader
rtp:  rtph263depay: RTP H263 depayloader
rtp:  rtph263pay: RTP H263 packet payloader
rtp:  rtph263pdepay: RTP H263 depayloader
rtp:  rtph263ppay: RTP H263 payloader
rtp:  rtph264depay: RTP H264 depayloader
rtp:  rtph264pay: RTP H264 payloader
rtp:  rtph265depay: RTP H265 depayloader
rtp:  rtph265pay: RTP H265 payloader
rtp:  rtphdrextcolorspace: Color Space
rtp:  rtpilbcdepay: RTP iLBC depayloader
rtp:  rtpilbcpay: RTP iLBC Payloader
rtp:  rtpisacdepay: RTP iSAC depayloader
rtp:  rtpisacpay: RTP iSAC payloader
rtp:  rtpj2kdepay: RTP JPEG 2000 depayloader
rtp:  rtpj2kpay: RTP JPEG 2000 payloader
rtp:  rtpjpegdepay: RTP JPEG depayloader
rtp:  rtpjpegpay: RTP JPEG payloader
rtp:  rtpklvdepay: RTP KLV Depayloader
rtp:  rtpklvpay: RTP KLV Payloader
rtp:  rtpldacpay: RTP packet payloader
rtp:  rtpmp1sdepay: RTP MPEG1 System Stream depayloader
rtp:  rtpmp2tdepay: RTP MPEG Transport Stream depayloader
rtp:  rtpmp2tpay: RTP MPEG2 Transport Stream payloader
rtp:  rtpmp4adepay: RTP MPEG4 audio depayloader
rtp:  rtpmp4apay: RTP MPEG4 audio payloader
rtp:  rtpmp4gdepay: RTP MPEG4 ES depayloader
rtp:  rtpmp4gpay: RTP MPEG4 ES payloader
rtp:  rtpmp4vdepay: RTP MPEG4 video depayloader
rtp:  rtpmp4vpay: RTP MPEG4 Video payloader
rtp:  rtpmpadepay: RTP MPEG audio depayloader
rtp:  rtpmpapay: RTP MPEG audio payloader
rtp:  rtpmparobustdepay: RTP MPEG audio depayloader
rtp:  rtpmpvdepay: RTP MPEG video depayloader
rtp:  rtpmpvpay: RTP MPEG2 ES video payloader
rtp:  rtpopusdepay: RTP Opus packet depayloader
rtp:  rtpopuspay: RTP Opus payloader
rtp:  rtppcmadepay: RTP PCMA depayloader
rtp:  rtppcmapay: RTP PCMA payloader
rtp:  rtppcmudepay: RTP PCMU depayloader
rtp:  rtppcmupay: RTP PCMU payloader
rtp:  rtpqcelpdepay: RTP QCELP depayloader
rtp:  rtpqdm2depay: RTP QDM2 depayloader
rtp:  rtpreddec: Redundant Audio Data (RED) Decoder
rtp:  rtpredenc: Redundant Audio Data (RED) Encoder
rtp:  rtpsbcdepay: RTP SBC audio depayloader
rtp:  rtpsbcpay: RTP packet payloader
rtp:  rtpsirendepay: RTP Siren packet depayloader
rtp:  rtpsirenpay: RTP Payloader for Siren Audio
rtp:  rtpspeexdepay: RTP Speex depayloader
rtp:  rtpspeexpay: RTP Speex payloader
rtp:  rtpstorage: RTP storage
rtp:  rtpstreamdepay: RTP Stream Depayloading
rtp:  rtpstreampay: RTP Stream Payloading
rtp:  rtpsv3vdepay: RTP SVQ3 depayloader
rtp:  rtptheoradepay: RTP Theora depayloader
rtp:  rtptheorapay: RTP Theora payloader
rtp:  rtpulpfecdec: RTP FEC Decoder
rtp:  rtpulpfecenc: RTP FEC Encoder
rtp:  rtpvorbisdepay: RTP Vorbis depayloader
rtp:  rtpvorbispay: RTP Vorbis payloader
rtp:  rtpvp8depay: RTP VP8 depayloader
rtp:  rtpvp8pay: RTP VP8 payloader
rtp:  rtpvp9depay: RTP VP9 depayloader
rtp:  rtpvp9pay: RTP VP9 payloader
rtp:  rtpvrawdepay: RTP Raw Video depayloader
rtp:  rtpvrawpay: RTP Raw Video payloader
rtpmanager:  rtpbin: RTP Bin
rtpmanager:  rtpdtmfmux: RTP muxer
rtpmanager:  rtpfunnel: RTP funnel
rtpmanager:  rtphdrextclientaudiolevel: Client-to-Mixer Audio Level Indicat=
ion (RFC6464) RTP Header Extension
rtpmanager:  rtphdrexttwcc: Transport Wide Congestion Control
rtpmanager:  rtpjitterbuffer: RTP packet jitter-buffer
rtpmanager:  rtpmux: RTP muxer
rtpmanager:  rtpptdemux: RTP Demux
rtpmanager:  rtprtxqueue: RTP Retransmission Queue
rtpmanager:  rtprtxreceive: RTP Retransmission receiver
rtpmanager:  rtprtxsend: RTP Retransmission Sender
rtpmanager:  rtpsession: RTP Session
rtpmanager:  rtpssrcdemux: RTP SSRC Demux
rtpmanager:  rtpst2022-1-fecdec: SMPTE 2022-1 FEC decoder
rtpmanager:  rtpst2022-1-fecenc: SMPTE 2022-1 FEC encoder
rtpmanagerbad:  rtpsink: RTP Sink element
rtpmanagerbad:  rtpsrc: RTP Source element
rtponvif:  rtponvifparse: ONVIF NTP timestamps RTP extension
rtponvif:  rtponviftimestamp: ONVIF NTP timestamps RTP extension
rtsp:  rtpdec: RTP Decoder
rtsp:  rtspsrc: RTSP packet receiver
sbc:  sbcdec: Bluetooth SBC audio decoder
sbc:  sbcenc: Bluetooth SBC audio encoder
sctp:  sctpdec: SCTP Decoder
sctp:  sctpenc: SCTP Encoder
sdpelem:  sdpdemux: SDP session setup
sdpelem:  sdpsrc: SDP Source
segmentclip:  audiosegmentclip: Audio buffer segment clipper
segmentclip:  videosegmentclip: Video buffer segment clipper
shapewipe:  shapewipe: Shape Wipe transition filter
shm:  shmsink: Shared Memory Sink
shm:  shmsrc: Shared Memory Source
shout2:  shout2send: Icecast network sink
sid:  siddec: Sid decoder
siren:  sirendec: Siren Decoder element
siren:  sirenenc: Siren Encoder element
smooth:  smooth: Smooth effect
smoothstreaming:  mssdemux: Smooth Streaming demuxer
smpte:  smpte: SMPTE transitions
smpte:  smptealpha: SMPTE transitions
sndfile:  sfdec: Sndfile decoder
soundtouch:  bpmdetect: BPM Detector
soundtouch:  pitch: Pitch controller
soup:  souphttpclientsink: HTTP client sink
soup:  souphttpsrc: HTTP client source
spandsp:  dtmfdetect: DTMF detector element
spandsp:  spanplc: SpanDSP PLC
spandsp:  tonegeneratesrc: Telephony Tone  Generator source
spectrum:  spectrum: Spectrum analyzer
speed:  speed: Speed
speex:  speexdec: Speex audio decoder
speex:  speexenc: Speex audio encoder
srt:  srtclientsink: SRT sink
srt:  srtclientsrc: SRT source
srt:  srtserversink: SRT sink
srt:  srtserversrc: SRT source
srt:  srtsink: SRT sink
srt:  srtsrc: SRT source
srtp:  srtpdec: SRTP decoder
srtp:  srtpenc: SRTP encoder
staticelements:  bin: Generic bin
staticelements:  pipeline: Pipeline object
subenc:  srtenc: Srt encoder
subenc:  webvttenc: WebVTT encoder
subparse:  ssaparse: SSA Subtitle Parser
subparse:  subparse: Subtitle parser
subparse: subparse_typefind: srt, sub, mpsub, mdvd, smi, txt, dks, vtt
svthevcenc:  svthevcenc: svthevcenc
switchbin:  switchbin: switchbin
taglib:  apev2mux: TagLib-based APEv2 Muxer
taglib:  id3v2mux: TagLib-based ID3v2 Muxer
tcp:  multifdsink: Multi filedescriptor sink
tcp:  multisocketsink: Multi socket sink
tcp:  socketsrc: socket source
tcp:  tcpclientsink: TCP client sink
tcp:  tcpclientsrc: TCP client source
tcp:  tcpserversink: TCP server sink
tcp:  tcpserversrc: TCP server source
teletext:  teletextdec: Teletext decoder
theora:  theoradec: Theora video decoder
theora:  theoraenc: Theora video encoder
theora:  theoraparse: Theora video parser
timecode:  avwait: Timecode Wait
timecode:  timecodestamper: Timecode stamper
transcode:  transcodebin: Transcode Bin
transcode:  uritranscodebin: URITranscode Bin
ttmlsubs:  ttmlparse: TTML subtitle parser
ttmlsubs:  ttmlrender: TTML subtitle renderer
twolame:  twolamemp2enc: TwoLAME mp2 encoder
typefindfunctions: application/dash+xml: mpd, MPD
typefindfunctions: application/itc: itc
typefindfunctions: application/msword: doc
typefindfunctions: application/mxf: mxf
typefindfunctions: application/octet-stream: no extensions
typefindfunctions: application/ogg: ogg, oga, ogv, ogm, ogx, spx, anx, axa,=
 axv
typefindfunctions: application/pdf: pdf
typefindfunctions: application/postscript: ps
typefindfunctions: application/sdp: sdp
typefindfunctions: application/smil: smil
typefindfunctions: application/ttml+xml: ttml+xml
typefindfunctions: application/vnd.apple-fcp+xml: fcpxml
typefindfunctions: application/vnd.apple-xmeml+xml: xmeml
typefindfunctions: application/vnd.ms-sstr+xml: no extensions
typefindfunctions: application/vnd.pixar.opentimelineio+json: otio
typefindfunctions: application/vnd.rn-realmedia: ra, ram, rm, rmvb
typefindfunctions: application/x-3gp: 3gp
typefindfunctions: application/x-ape: ape
typefindfunctions: application/x-apetag: mp3, ape, mpc, wv
typefindfunctions: application/x-ar: a
typefindfunctions: application/x-bzip: bz2
typefindfunctions: application/x-compress: Z
typefindfunctions: application/x-executable: no extensions
typefindfunctions: application/x-gzip: gz
typefindfunctions: application/x-hls: m3u8
typefindfunctions: application/x-id3v1: mp3, mp2, mp1, mpga, ogg, flac, tta
typefindfunctions: application/x-id3v2: mp3, mp2, mp1, mpga, ogg, flac, tta
typefindfunctions: application/x-mcc: mcc
typefindfunctions: application/x-mmsh: no extensions
typefindfunctions: application/x-ms-dos-executable: dll, exe, ocx, sys, scr=
, msstyles, cpl
typefindfunctions: application/x-ogg-skeleton: no extensions
typefindfunctions: application/x-ogm-audio: no extensions
typefindfunctions: application/x-ogm-text: no extensions
typefindfunctions: application/x-ogm-video: no extensions
typefindfunctions: application/x-pn-realaudio: ra, ram, rm, rmvb
typefindfunctions: application/x-rar: rar
typefindfunctions: application/x-scc: scc
typefindfunctions: application/x-shockwave-flash: swf, swfl
typefindfunctions: application/x-ssa: ssa, ass
typefindfunctions: application/x-subtitle-vtt: vtt
typefindfunctions: application/x-tar: tar
typefindfunctions: application/x-yuv4mpeg: no extensions
typefindfunctions: application/xges: xges
typefindfunctions: application/xml: xml
typefindfunctions: application/zip: zip
typefindfunctions: audio/aac: aac, adts, adif, loas
typefindfunctions: audio/audible: aa, aax
typefindfunctions: audio/iLBC-sh: ilbc
typefindfunctions: audio/midi: mid, midi
typefindfunctions: audio/mobile-xmf: mxmf
typefindfunctions: audio/mpeg: mp3, mp2, mp1, mpga
typefindfunctions: audio/qcelp: qcp
typefindfunctions: audio/riff-midi: mid, midi
typefindfunctions: audio/x-ac3: ac3, eac3
typefindfunctions: audio/x-aiff: aiff, aif, aifc
typefindfunctions: audio/x-amr-nb-sh: amr
typefindfunctions: audio/x-amr-wb-sh: amr
typefindfunctions: audio/x-au: au, snd
typefindfunctions: audio/x-ay: ay
typefindfunctions: audio/x-caf: caf
typefindfunctions: audio/x-celt: no extensions
typefindfunctions: audio/x-dts: dts
typefindfunctions: audio/x-flac: flac
typefindfunctions: audio/x-gbs: gbs
typefindfunctions: audio/x-gsm: gsm
typefindfunctions: audio/x-gym: gym
typefindfunctions: audio/x-imelody: imy, ime, imelody
typefindfunctions: audio/x-ircam: sf
typefindfunctions: audio/x-kss: kss
typefindfunctions: audio/x-m4a: m4a
typefindfunctions: audio/x-mod: 669, amf, ams, dbm, digi, dmf, dsm, gdm, fa=
r, imf, it, j2b, mdl, med, mod, mt2, mtm, okt, psm, ptm, sam, s3m, stm, stx=
, ult, umx, xm
typefindfunctions: audio/x-musepack: mpc, mpp, mp+
typefindfunctions: audio/x-nist: nist
typefindfunctions: audio/x-nsf: nsf
typefindfunctions: audio/x-paris: paf
typefindfunctions: audio/x-rf64: rf64
typefindfunctions: audio/x-sap: sap
typefindfunctions: audio/x-sbc: sbc
typefindfunctions: audio/x-sds: sds
typefindfunctions: audio/x-shorten: shn
typefindfunctions: audio/x-sid: sid
typefindfunctions: audio/x-spc: spc
typefindfunctions: audio/x-speex: no extensions
typefindfunctions: audio/x-svx: iff, svx
typefindfunctions: audio/x-tap-dmp: dmp
typefindfunctions: audio/x-tap-tap: tap
typefindfunctions: audio/x-ttafile: tta
typefindfunctions: audio/x-vgm: vgm
typefindfunctions: audio/x-voc: voc
typefindfunctions: audio/x-vorbis: no extensions
typefindfunctions: audio/x-w64: w64
typefindfunctions: audio/x-wav: wav
typefindfunctions: audio/x-wavpack: wv, wvp
typefindfunctions: audio/x-wavpack-correction: wvc
typefindfunctions: audio/x-xi: xi
typefindfunctions: image/bmp: bmp
typefindfunctions: image/gif: gif
typefindfunctions: image/jp2: jp2
typefindfunctions: image/jpeg: jpg, jpe, jpeg
typefindfunctions: image/png: png
typefindfunctions: image/svg+xml: svg
typefindfunctions: image/tiff: tif, tiff
typefindfunctions: image/vnd.adobe.photoshop: psd
typefindfunctions: image/vnd.wap.wbmp: no extensions
typefindfunctions: image/webp: webp
typefindfunctions: image/x-degas: no extensions
typefindfunctions: image/x-exr: exr
typefindfunctions: image/x-icon: no extensions
typefindfunctions: image/x-jng: jng
typefindfunctions: image/x-jpc: jpc, j2k
typefindfunctions: image/x-portable-pixmap: pnm, ppm, pgm, pbm
typefindfunctions: image/x-quicktime: qif, qtif, qti
typefindfunctions: image/x-sun-raster: ras
typefindfunctions: image/x-xcf: xcf
typefindfunctions: image/x-xpixmap: xpm
typefindfunctions: multipart/x-mixed-replace: no extensions
typefindfunctions: subtitle/x-kate: no extensions
typefindfunctions: text/html: htm, html
typefindfunctions: text/plain: txt
typefindfunctions: text/uri-list: ram
typefindfunctions: text/utf-16: txt
typefindfunctions: text/utf-32: txt
typefindfunctions: text/x-cmml: no extensions
typefindfunctions: video/mj2: mj2
typefindfunctions: video/mpeg-elementary: mpv, mpeg, mpg
typefindfunctions: video/mpeg-sys: mpe, mpeg, mpg
typefindfunctions: video/mpeg4: m4v
typefindfunctions: video/mpegts: ts, mts
typefindfunctions: video/quicktime: mov, mp4
typefindfunctions: video/vivo: viv
typefindfunctions: video/x-cdxa: dat
typefindfunctions: video/x-dirac: no extensions
typefindfunctions: video/x-dv: dv, dif
typefindfunctions: video/x-fli: flc, fli
typefindfunctions: video/x-flv: flv
typefindfunctions: video/x-h263: h263, 263
typefindfunctions: video/x-h264: h264, x264, 264
typefindfunctions: video/x-h265: h265, x265, 265
typefindfunctions: video/x-ivf: ivf
typefindfunctions: video/x-matroska: mkv, mka, mk3d, webm
typefindfunctions: video/x-mng: mng
typefindfunctions: video/x-ms-asf: asf, wm, wma, wmv
typefindfunctions: video/x-msvideo: avi
typefindfunctions: video/x-mve: mve
typefindfunctions: video/x-nuv: nuv
typefindfunctions: video/x-pva: pva
typefindfunctions: video/x-theora: no extensions
typefindfunctions: video/x-vcd: dat
udp:  dynudpsink: UDP packet sender
udp:  multiudpsink: UDP packet sender
udp:  udpsink: UDP packet sender
udp:  udpsrc: UDP packet receiver
uvch264:  uvch264deviceprovider (GstDeviceProviderFactory)
uvch264:  uvch264mjpgdemux: UVC H264 MJPG Demuxer
uvch264:  uvch264src: UVC H264 Source
vaapi:  vaapidecodebin: VA-API Decode Bin
vaapi:  vaapih264dec: VA-API H264 decoder
vaapi:  vaapih264enc: VA-API H264 encoder
vaapi:  vaapih265dec: VA-API H265 decoder
vaapi:  vaapih265enc: VA-API H265 encoder
vaapi:  vaapijpegdec: VA-API JPEG decoder
vaapi:  vaapijpegenc: VA-API JPEG encoder
vaapi:  vaapimpeg2dec: VA-API MPEG2 decoder
vaapi:  vaapimpeg2enc: VA-API MPEG-2 encoder
vaapi:  vaapioverlay: VA-API overlay
vaapi:  vaapipostproc: VA-API video postprocessing
vaapi:  vaapisink: VA-API sink
vaapi:  vaapivc1dec: VA-API VC1 decoder
vaapi:  vaapivp8dec: VA-API VP8 decoder
vaapi:  vaapivp8enc: VA-API VP8 encoder
vaapi:  vaapivp9dec: VA-API VP9 decoder
video4linux2:  v4l2deviceprovider (GstDeviceProviderFactory)
video4linux2:  v4l2radio: Radio (video4linux2) Tuner
video4linux2:  v4l2sink: Video (video4linux2) Sink
video4linux2:  v4l2src: Video (video4linux2) Source
videobox:  videobox: Video box filter
videoconvert:  videoconvert: Colorspace converter
videocrop:  aspectratiocrop: aspectratiocrop
videocrop:  videocrop: Crop
videofilter:  gamma: Video gamma correction
videofilter:  videobalance: Video balance
videofilter:  videoflip: Video flipper
videofilter:  videomedian: Median effect
videofiltersbad:  scenechange: Scene change detector
videofiltersbad:  videodiff: Video Diff
videofiltersbad:  zebrastripe: Zebra stripe overlay
videoframe_audiolevel:  videoframe-audiolevel: Video-frame audio level
videomixer:  videomixer: Video mixer 2
videoparsersbad:  av1parse: AV1 parser
videoparsersbad:  diracparse: Dirac parser
videoparsersbad:  h263parse: H.263 parser
videoparsersbad:  h264parse: H.264 parser
videoparsersbad:  h265parse: H.265 parser
videoparsersbad:  jpeg2000parse: JPEG 2000 parser
videoparsersbad:  mpeg4videoparse: MPEG 4 video elementary stream parser
videoparsersbad:  mpegvideoparse: MPEG video elementary stream parser
videoparsersbad:  pngparse: PNG parser
videoparsersbad:  vc1parse: VC1 parser
videoparsersbad:  vp9parse: VP9 parser
videorate:  videorate: Video rate adjuster
videoscale:  videoscale: Video scaler
videosignal:  simplevideomark: Video marker
videosignal:  simplevideomarkdetect: Video detecter
videosignal:  videoanalyse: Video analyser
videotestsrc:  videotestsrc: Video test source
vmnc:  vmncdec: VMnc video decoder
volume:  volume: Volume
vorbis:  vorbisdec: Vorbis audio decoder
vorbis:  vorbisenc: Vorbis audio encoder
vorbis:  vorbisparse: VorbisParse
vorbis:  vorbistag: VorbisTag
vpx:  vp8dec: On2 VP8 Decoder
vpx:  vp8enc: On2 VP8 Encoder
vpx:  vp9dec: On2 VP9 Decoder
vpx:  vp9enc: On2 VP9 Encoder
vulkan:  vulkancolorconvert: Vulkan Color Convert
vulkan:  vulkandeviceprovider (GstDeviceProviderFactory)
vulkan:  vulkandownload: Vulkan Downloader
vulkan:  vulkanimageidentity: Vulkan Image Identity
vulkan:  vulkansink: Vulkan video sink
vulkan:  vulkanupload: Vulkan Uploader
vulkan:  vulkanviewconvert: Vulkan View Convert
wavenc:  wavenc: WAV audio muxer
wavpack:  wavpackdec: Wavpack audio decoder
wavpack:  wavpackenc: Wavpack audio encoder
wavparse:  wavparse: WAV audio demuxer
waylandsink:  waylandsink: wayland video sink
webp:  webpdec: WebP image decoder
webp:  webpenc: WEBP image encoder
webrtc:  webrtcbin: WebRTC Bin
webrtcdsp:  webrtcdsp: Voice Processor (AGC, AEC, filters, etc.)
webrtcdsp:  webrtcechoprobe: Acoustic Echo Canceller probe
wildmidi:  wildmididec: WildMidi-based MIDI music decoder
x264:  x264enc: x264 H.264 Encoder
x265:  x265enc: x265enc
ximagesink:  ximagesink: Video sink
ximagesrc:  ximagesrc: Ximage video source
xingmux:  xingmux: MP3 Xing muxer
xvimagesink:  xvimagesink: Video sink
y4mdec:  y4mdec: YUV4MPEG demuxer/decoder
y4menc:  y4menc: YUV4MPEG video encoder
zbar:  zbar: Barcode detector
zxing:  zxing: Barcode detector

Total count: 259 plugins, 924 features


I also turned on verbose logs for libvirtd and debug for spice on the hyper=
visor host with SPICE_DEBUG_LEVEL=3D5 for qemu, but I'm not /quite/ sure th=
is is exactly what's needed as far as spice-server logs. If this is not use=
ful, could you please elaborate which logs are necessary from the server?

Logs from qemu/libvirt/spice:
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627399, "microseconds": 848949}, "event": "SPIC=
E_CONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "host":=
 "127.0.0.1"}, "client": {"port": "59372", "family": "ipv4", "host": "127.0=
.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351a80 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351a80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351a80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f22200810d0 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f22200810d0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f22200810d0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627399, "microseconds": 886840}, "event": "SPIC=
E_INITIALIZED", "data": {"server": {"auth": "none", "port": "5912", "family=
": "ipv4", "host": "127.0.0.1"}, "client": {"port": "59372", "family": "ipv=
4", "channel-type": 1, "connection-id": 1477171087, "host": "127.0.0.1", "c=
hannel-id": 0, "tls": false}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351b10 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351b10
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351b10
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220081170 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220081170
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220081170
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627400, "microseconds": 113113}, "event": "SPIC=
E_CONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "host":=
 "127.0.0.1"}, "client": {"port": "59376", "family": "ipv4", "host": "127.0=
.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351ba0 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351ba0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351ba0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220081210 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220081210
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220081210
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627400, "microseconds": 122746}, "event": "SPIC=
E_CONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "host":=
 "127.0.0.1"}, "client": {"port": "59382", "family": "ipv4", "host": "127.0=
.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351c30 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351c30
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351c30
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f22200812b0 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f22200812b0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f22200812b0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627400, "microseconds": 130924}, "event": "SPIC=
E_CONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "host":=
 "127.0.0.1"}, "client": {"port": "59394", "family": "ipv4", "host": "127.0=
.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351cc0 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351cc0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351cc0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220081350 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220081350
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220081350
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627400, "microseconds": 136821}, "event": "SPIC=
E_INITIALIZED", "data": {"server": {"auth": "none", "port": "5912", "family=
": "ipv4", "host": "127.0.0.1"}, "client": {"port": "59376", "family": "ipv=
4", "channel-type": 9, "connection-id": 1477171087, "host": "127.0.0.1", "c=
hannel-id": 1, "tls": false}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351d50 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351d50
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351d50
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f22200813f0 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f22200813f0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f22200813f0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627400, "microseconds": 136869}, "event": "SPIC=
E_CONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "host":=
 "127.0.0.1"}, "client": {"port": "59410", "family": "ipv4", "host": "127.0=
.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351d50 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351d50
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351d50
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f22200813f0 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f22200813f0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f22200813f0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627400, "microseconds": 141876}, "event": "SPIC=
E_CONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "host":=
 "127.0.0.1"}, "client": {"port": "59424", "family": "ipv4", "host": "127.0=
.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351cc0 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351cc0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351cc0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220081350 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220081350
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220081350
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627400, "microseconds": 182292}, "event": "SPIC=
E_INITIALIZED", "data": {"server": {"auth": "none", "port": "5912", "family=
": "ipv4", "host": "127.0.0.1"}, "client": {"port": "59424", "family": "ipv=
4", "channel-type": 2, "connection-id": 1477171087, "host": "127.0.0.1", "c=
hannel-id": 0, "tls": false}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351c30 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351c30
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351c30
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f22200812b0 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f22200812b0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f22200812b0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627400, "microseconds": 182712}, "event": "SPIC=
E_INITIALIZED", "data": {"server": {"auth": "none", "port": "5912", "family=
": "ipv4", "host": "127.0.0.1"}, "client": {"port": "59382", "family": "ipv=
4", "channel-type": 9, "connection-id": 1477171087, "host": "127.0.0.1", "c=
hannel-id": 0, "tls": false}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351ba0 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351ba0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351ba0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220081210 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220081210
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220081210
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627400, "microseconds": 184859}, "event": "SPIC=
E_INITIALIZED", "data": {"server": {"auth": "none", "port": "5912", "family=
": "ipv4", "host": "127.0.0.1"}, "client": {"port": "59410", "family": "ipv=
4", "channel-type": 5, "connection-id": 1477171087, "host": "127.0.0.1", "c=
hannel-id": 0, "tls": false}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351b10 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351b10
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351b10
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220081170 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220081170
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220081170
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627400, "microseconds": 186378}, "event": "SPIC=
E_INITIALIZED", "data": {"server": {"auth": "none", "port": "5912", "family=
": "ipv4", "host": "127.0.0.1"}, "client": {"port": "59394", "family": "ipv=
4", "channel-type": 6, "connection-id": 1477171087, "host": "127.0.0.1", "c=
hannel-id": 0, "tls": false}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351a80 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351a80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351a80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f22200810d0 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f22200810d0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f22200810d0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627400, "microseconds": 582996}, "event": "SPIC=
E_CONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "host":=
 "127.0.0.1"}, "client": {"port": "59440", "family": "ipv4", "host": "127.0=
.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220108710 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220108710
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220108710
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220081030 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220081030
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220081030
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627400, "microseconds": 590260}, "event": "SPIC=
E_CONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "host":=
 "127.0.0.1"}, "client": {"port": "59448", "family": "ipv4", "host": "127.0=
.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220108710 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220108710
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220108710
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220016f20 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220016f20
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220016f20
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627400, "microseconds": 624844}, "event": "SPIC=
E_INITIALIZED", "data": {"server": {"auth": "none", "port": "5912", "family=
": "ipv4", "host": "127.0.0.1"}, "client": {"port": "59440", "family": "ipv=
4", "channel-type": 3, "connection-id": 1477171087, "host": "127.0.0.1", "c=
hannel-id": 0, "tls": false}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351a80 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351a80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351a80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220016e80 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220016e80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220016e80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627400, "microseconds": 627716}, "event": "SPIC=
E_INITIALIZED", "data": {"server": {"auth": "none", "port": "5912", "family=
": "ipv4", "host": "127.0.0.1"}, "client": {"port": "59448", "family": "ipv=
4", "channel-type": 4, "connection-id": 1477171087, "host": "127.0.0.1", "c=
hannel-id": 0, "tls": false}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351b10 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351b10
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351b10
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f22200168e0 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f22200168e0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f22200168e0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D7 events=3D1 cb=3D0x=
7f22728cd8d0 opaque=3D0x55ffa18f88e0
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D7 events=3D1 cb=3D0x=
7f22728cd8d0 opaque=3D0x55ffa18f88e0
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D7 events=3D1 cb=3D0x=
7f22728cd8d0 opaque=3D0x55ffa18f88e0
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D7 events=3D1 cb=3D0x=
7f22728cd8d0 opaque=3D0x55ffa18f88e0
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: EVENT_GLIB_DISPATCH_HANDLE: watch=3D8 events=3D1 cb=3D0x=
7f226c649610 opaque=3D(nil)
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627541, "microseconds": 321434}, "event": "SPIC=
E_DISCONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "hos=
t": "127.0.0.1"}, "client": {"port": "59382", "family": "ipv4", "host": "12=
7.0.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351ba0 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351ba0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351ba0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f22200168e0 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f22200168e0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f22200168e0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627541, "microseconds": 321525}, "event": "SPIC=
E_DISCONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "hos=
t": "127.0.0.1"}, "client": {"port": "59440", "family": "ipv4", "host": "12=
7.0.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351c30 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351c30
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351c30
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220016e80 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220016e80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220016e80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627541, "microseconds": 321583}, "event": "SPIC=
E_DISCONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "hos=
t": "127.0.0.1"}, "client": {"port": "59376", "family": "ipv4", "host": "12=
7.0.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351cc0 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351cc0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351cc0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220016f20 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220016f20
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220016f20
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627541, "microseconds": 322781}, "event": "SPIC=
E_DISCONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "hos=
t": "127.0.0.1"}, "client": {"port": "59448", "family": "ipv4", "host": "12=
7.0.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351d50 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351d50
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351d50
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220081030 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220081030
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220081030
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627541, "microseconds": 324358}, "event": "SPIC=
E_DISCONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "hos=
t": "127.0.0.1"}, "client": {"port": "59424", "family": "ipv4", "host": "12=
7.0.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351d50 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351d50
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351d50
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f22200810d0 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f22200810d0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f22200810d0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627541, "microseconds": 324961}, "event": "SPIC=
E_DISCONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "hos=
t": "127.0.0.1"}, "client": {"port": "59410", "family": "ipv4", "host": "12=
7.0.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351cc0 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351cc0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351cc0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220081170 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220081170
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220081170
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627541, "microseconds": 325207}, "event": "SPIC=
E_DISCONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "hos=
t": "127.0.0.1"}, "client": {"port": "59394", "family": "ipv4", "host": "12=
7.0.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351c30 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351c30
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351c30
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220081210 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220081210
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220081210
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627541, "microseconds": 329645}, "event": "SPIC=
E_DISCONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "hos=
t": "127.0.0.1"}, "client": {"port": "59372", "family": "ipv4", "host": "12=
7.0.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351ba0 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351ba0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351ba0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f22200812b0 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f22200812b0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f22200812b0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627555, "microseconds": 780529}, "event": "RTC_=
CHANGE", "data": {"offset": 0}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351b10 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351b10
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351b10
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f226004ddc0 classname=3DvirDomainEv=
entRTCChange
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f226004ddc0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f226004ddc0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627657, "microseconds": 610411}, "event": "SPIC=
E_CONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "host":=
 "127.0.0.1"}, "client": {"port": "53656", "family": "ipv4", "host": "127.0=
.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351a80 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351a80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351a80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220081350 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220081350
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220081350
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627657, "microseconds": 640892}, "event": "SPIC=
E_INITIALIZED", "data": {"server": {"auth": "none", "port": "5912", "family=
": "ipv4", "host": "127.0.0.1"}, "client": {"port": "53656", "family": "ipv=
4", "channel-type": 1, "connection-id": 317097467, "host": "127.0.0.1", "ch=
annel-id": 0, "tls": false}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220108710 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220108710
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220108710
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f22200813f0 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f22200813f0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f22200813f0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627657, "microseconds": 864961}, "event": "SPIC=
E_CONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "host":=
 "127.0.0.1"}, "client": {"port": "53666", "family": "ipv4", "host": "127.0=
.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220108710 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220108710
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220108710
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f22200813f0 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f22200813f0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f22200813f0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627657, "microseconds": 871171}, "event": "SPIC=
E_CONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "host":=
 "127.0.0.1"}, "client": {"port": "53682", "family": "ipv4", "host": "127.0=
.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351a80 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351a80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351a80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220081350 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220081350
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220081350
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627657, "microseconds": 877297}, "event": "SPIC=
E_CONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "host":=
 "127.0.0.1"}, "client": {"port": "53686", "family": "ipv4", "host": "127.0=
.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351b10 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351b10
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351b10
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f22200812b0 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f22200812b0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f22200812b0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627657, "microseconds": 882004}, "event": "SPIC=
E_CONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "host":=
 "127.0.0.1"}, "client": {"port": "53700", "family": "ipv4", "host": "127.0=
.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351ba0 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351ba0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351ba0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220081210 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220081210
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220081210
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627657, "microseconds": 886638}, "event": "SPIC=
E_INITIALIZED", "data": {"server": {"auth": "none", "port": "5912", "family=
": "ipv4", "host": "127.0.0.1"}, "client": {"port": "53666", "family": "ipv=
4", "channel-type": 5, "connection-id": 317097467, "host": "127.0.0.1", "ch=
annel-id": 0, "tls": false}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351c30 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351c30
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351c30
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220081170 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220081170
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220081170
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627657, "microseconds": 886702}, "event": "SPIC=
E_CONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "host":=
 "127.0.0.1"}, "client": {"port": "53716", "family": "ipv4", "host": "127.0=
.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351cc0 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351cc0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351cc0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f22200810d0 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f22200810d0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f22200810d0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627657, "microseconds": 897040}, "event": "SPIC=
E_INITIALIZED", "data": {"server": {"auth": "none", "port": "5912", "family=
": "ipv4", "host": "127.0.0.1"}, "client": {"port": "53682", "family": "ipv=
4", "channel-type": 9, "connection-id": 317097467, "host": "127.0.0.1", "ch=
annel-id": 0, "tls": false}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351d50 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351d50
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351d50
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220081030 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220081030
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220081030
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627657, "microseconds": 899906}, "event": "SPIC=
E_INITIALIZED", "data": {"server": {"auth": "none", "port": "5912", "family=
": "ipv4", "host": "127.0.0.1"}, "client": {"port": "53686", "family": "ipv=
4", "channel-type": 9, "connection-id": 317097467, "host": "127.0.0.1", "ch=
annel-id": 1, "tls": false}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351d50 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351d50
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351d50
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220016f20 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220016f20
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220016f20
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627657, "microseconds": 901680}, "event": "SPIC=
E_INITIALIZED", "data": {"server": {"auth": "none", "port": "5912", "family=
": "ipv4", "host": "127.0.0.1"}, "client": {"port": "53700", "family": "ipv=
4", "channel-type": 2, "connection-id": 317097467, "host": "127.0.0.1", "ch=
annel-id": 0, "tls": false}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351cc0 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351cc0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351cc0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220016e80 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220016e80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220016e80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627657, "microseconds": 950973}, "event": "SPIC=
E_INITIALIZED", "data": {"server": {"auth": "none", "port": "5912", "family=
": "ipv4", "host": "127.0.0.1"}, "client": {"port": "53716", "family": "ipv=
4", "channel-type": 6, "connection-id": 317097467, "host": "127.0.0.1", "ch=
annel-id": 0, "tls": false}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351c30 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351c30
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351c30
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f22200168e0 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f22200168e0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f22200168e0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627657, "microseconds": 977581}, "event": "SPIC=
E_CONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "host":=
 "127.0.0.1"}, "client": {"port": "53726", "family": "ipv4", "host": "127.0=
.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351ba0 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351ba0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351ba0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f22200168e0 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f22200168e0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f22200168e0
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627657, "microseconds": 984079}, "event": "SPIC=
E_CONNECTED", "data": {"server": {"port": "5912", "family": "ipv4", "host":=
 "127.0.0.1"}, "client": {"port": "53738", "family": "ipv4", "host": "127.0=
.0.1"}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351b10 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351b10
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351b10
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220016e80 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220016e80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220016e80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627657, "microseconds": 994740}, "event": "SPIC=
E_INITIALIZED", "data": {"server": {"auth": "none", "port": "5912", "family=
": "ipv4", "host": "127.0.0.1"}, "client": {"port": "53726", "family": "ipv=
4", "channel-type": 4, "connection-id": 317097467, "host": "127.0.0.1", "ch=
annel-id": 0, "tls": false}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220351a80 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220351a80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220351a80
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220016f20 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220016f20
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220016f20
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: QEMU_MONITOR_RECV_EVENT: mon=3D0x7f2220068460 event=3D{"=
timestamp": {"seconds": 1669627658, "microseconds": 2137}, "event": "SPICE_=
INITIALIZED", "data": {"server": {"auth": "none", "port": "5912", "family":=
 "ipv4", "host": "127.0.0.1"}, "client": {"port": "53738", "family": "ipv4"=
, "channel-type": 3, "connection-id": 317097467, "host": "127.0.0.1", "chan=
nel-id": 0, "tls": false}}}
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220108710 classname=3DvirDomainQe=
muMonitorEvent
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220108710
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220108710
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_NEW: obj=3D0x7f2220081030 classname=3DvirDomainEv=
entGraphics
libvirtd[3564672]: OBJECT_DISPOSE: obj=3D0x7f2220081030
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220081030
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_REF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460
libvirtd[3564672]: OBJECT_UNREF: obj=3D0x7f2220068460


As for how quickly I shut down spicy, that's more than fair :D I played aro=
und with it for quite some time by then and I just wanted to reproduce swit=
ching to another encoding and quickly scrolling through a dense web page to=
 trigger streaming. I ran it longer this time and started a video playback =
on a website, plus scrolled madly through a spreadsheet. Tried vp9, too, ju=
st for kicks. Also switched back to 'filter' mode for video streaming in th=
e guest's config. Not much has changed, ostensibly.

libspice-server.so seems to have been linked with gstreamer on the host:
# ldd /usr/lib/x86_64-linux-gnu/libspice-server.so.1.14.1
        linux-vdso.so.1
        libglib-2.0.so.0 =3D> /lib/x86_64-linux-gnu/libglib-2.0.so.0
        libpixman-1.so.0 =3D> /lib/x86_64-linux-gnu/libpixman-1.so.0
        libssl.so.3 =3D> /lib/x86_64-linux-gnu/libssl.so.3
        libcrypto.so.3 =3D> /lib/x86_64-linux-gnu/libcrypto.so.3
        libopus.so.0 =3D> /lib/x86_64-linux-gnu/libopus.so.0
        libjpeg.so.8 =3D> /lib/x86_64-linux-gnu/libjpeg.so.8
        libz.so.1 =3D> /lib/x86_64-linux-gnu/libz.so.1
        libgstreamer-1.0.so.0 =3D> /lib/x86_64-linux-gnu/libgstreamer-1.0.s=
o.0
        libgobject-2.0.so.0 =3D> /lib/x86_64-linux-gnu/libgobject-2.0.so.0
        libgstapp-1.0.so.0 =3D> /lib/x86_64-linux-gnu/libgstapp-1.0.so.0
        liborc-0.4.so.0 =3D> /lib/x86_64-linux-gnu/liborc-0.4.so.0
        liblz4.so.1 =3D> /lib/x86_64-linux-gnu/liblz4.so.1
        libsasl2.so.2 =3D> /lib/x86_64-linux-gnu/libsasl2.so.2
        libstdc++.so.6 =3D> /lib/x86_64-linux-gnu/libstdc++.so.6
        libm.so.6 =3D> /lib/x86_64-linux-gnu/libm.so.6
        libc.so.6 =3D> /lib/x86_64-linux-gnu/libc.so.6
        libpcre.so.3 =3D> /lib/x86_64-linux-gnu/libpcre.so.3
        /lib64/ld-linux-x86-64.so.2
        libgmodule-2.0.so.0 =3D> /lib/x86_64-linux-gnu/libgmodule-2.0.so.0
        libunwind.so.8 =3D> /lib/x86_64-linux-gnu/libunwind.so.8
        libdw.so.1 =3D> /lib/x86_64-linux-gnu/libdw.so.1
        libffi.so.8 =3D> /lib/x86_64-linux-gnu/libffi.so.8
        libgstbase-1.0.so.0 =3D> /lib/x86_64-linux-gnu/libgstbase-1.0.so.0
        libgcc_s.so.1 =3D> /lib/x86_64-linux-gnu/libgcc_s.so.1
        liblzma.so.5 =3D> /lib/x86_64-linux-gnu/liblzma.so.5
        libelf.so.1 =3D> /lib/x86_64-linux-gnu/libelf.so.1
        libbz2.so.1.0 =3D> /lib/x86_64-linux-gnu/libbz2.so.1.0


You mentioned x264 is hardcoded in gstreamer-encoder.c:887 - that would nev=
er use hw encoding, right? One would need to recompile spice-server and cha=
nge that to e.g. 'vaapih264enc' to utilize the GPU? Even if this is correct=
, the client could still use the GPU to decode the h264 stream when it's ec=
ountered, but just doesn't seem to. Maybe the server doesn't even encode an=
ything in h264 (either using the GPU or not)?

I get a feeling - but please correct me if I'm wrong - that this video enco=
ding (plus hw enc/dec) is not meant to be user-configured, it's more of an =
automatic thing that kicks in when the time's right, is that fair? I kind o=
f miss the parameters and options to properly configure this both on server=
 and client.


You mentioned trying spice-streaming-agent, so I wanted to give it a go, ad=
ded the necessary channel, compiled, started it, and had gotten:
spice-streaming-agent[1727]: Failed to open the streaming device "/dev/virt=
io-ports/org.spice-space.stream.0": 13 - Permission denied
Indeed:
$ ls -la /dev/virtio-ports/
total 0
drwxr-xr-x  2 root root  100 2022-11-28 11:45:50 ./
drwxr-xr-x 21 root root 3960 2022-11-28 11:45:52 ../
lrwxrwxrwx  1 root root   11 2022-11-28 11:45:50 com.redhat.spice.0 -> ../v=
port2p2
lrwxrwxrwx  1 root root   11 2022-11-28 11:45:50 org.qemu.guest_agent.0 -> =
../vport2p1
lrwxrwxrwx  1 root root   11 2022-11-28 11:45:50 org.spice-space.stream.0 -=
> ../vport2p3

$ ls -la /dev/vport2p*
crw------- 1 root root 236, 1 2022-11-28 11:45:50 /dev/vport2p1
crw------- 1 root root 236, 2 2022-11-28 11:45:50 /dev/vport2p2
crw------- 1 root root 236, 3 2022-11-28 11:45:50 /dev/vport2p3

For a quick workaround I did:
$ sudo chmod 666 /dev/vport2p3
... and started the agent:
$ ./build/src/spice-streaming-agent

Now I'm not sure what's supposed to happen, I started remote-viewer like in=
 the video you linked, the performance didn't change, but tried with spicy =
too, seemingly no difference.
Btw, is the line "For now, spice-streaming-agent only provides software enc=
oding to MJPEG." in its README still relevant? In this case I wouldn't expe=
ct anything else other than the same performance as without the agent.



Daniel
