.class public Lcom/android/server/FMRadioService;
.super Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FMRadioService$ScanThread;,
        Lcom/android/server/FMRadioService$ListenerRecord;
    }
.end annotation


# static fields
.field private static final ACTINON_ALARM_PLAY:Ljava/lang/String; = "com.sec.android.app.voicecommand"

.field private static final ACTION_ALL_SOUND_OFF:Ljava/lang/String; = "android.settings.ALL_SOUND_MUTE"

.field private static final ACTION_BACKGROUND_PLAY:Ljava/lang/String; = "com.android.backgroung.playing"

.field private static final ACTION_DNS_PAUSE_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.pause_internet_stream"

.field private static final ACTION_DNS_RESUME_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.resume_internet_stream"

.field private static final ACTION_DNS_STOP_INTERNET_STREAM:Ljava/lang/String; = "com.sec.android.app.dns.action.stop_internet_stream"

.field private static final ACTION_MUSIC_COMMAND:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final ACTION_RECORDING_SAVE:Ljava/lang/String; = "com.samsung.media.fmradio.rec_save"

.field private static final ACTION_SAVE_FMRECORDING_ONLY:Ljava/lang/String; = "com.samsung.media.save_fmrecording_only"

.field private static final ACTION_VOLUME_LOCK:Ljava/lang/String; = "com.sec.android.fm.volume_lock"

.field private static final ACTION_VOLUME_UNLOCK:Ljava/lang/String; = "com.sec.android.fm.volume_unlock"

.field private static final APP_NAME:Ljava/lang/String; = "com.sec.android.app.fm"

.field public static final BAND_76000_108000_kHz:I = 0x2

.field public static final BAND_76000_90000_kHz:I = 0x3

.field public static final BAND_87500_108000_kHz:I = 0x1

.field public static final CHAN_SPACING_100_kHz:I = 0xa

.field public static final CHAN_SPACING_200_kHz:I = 0x14

.field public static final CHAN_SPACING_50_kHz:I = 0x5

.field private static final CODE_SCAN_PROGRESS:I = 0x1

.field public static final DEBUG:Z = true

.field private static final DEBUGGABLE:Z

.field private static final DELAY_WAITING_STREAM_STOPPED:I = 0x96

.field public static final DE_TIME_CONSTANT_50:I = 0x1

.field public static final DE_TIME_CONSTANT_75:I = 0x0

.field static final EVENT_AF_RECEIVED:I = 0xe

.field static final EVENT_AF_STARTED:I = 0xd

.field private static final EVENT_CHANNEL_FOUND:I = 0x1

.field private static final EVENT_EAR_PHONE_CONNECT:I = 0x8

.field private static final EVENT_EAR_PHONE_DISCONNECT:I = 0x9

.field private static final EVENT_OFF:I = 0x6

.field private static final EVENT_ON:I = 0x5

.field static final EVENT_PIECC_EVENT:I = 0x12

.field private static final EVENT_RDS_DISABLED:I = 0xc

.field private static final EVENT_RDS_ENABLED:I = 0xb

.field static final EVENT_RDS_EVENT:I = 0xa

.field static final EVENT_REC_FINISH:I = 0x11

.field static final EVENT_RTPLUS_EVENT:I = 0x10

.field private static final EVENT_SCAN_FINISHED:I = 0x3

.field private static final EVENT_SCAN_STARTED:I = 0x2

.field private static final EVENT_SCAN_STOPPED:I = 0x4

.field private static final EVENT_TUNE:I = 0x7

.field public static final EVENT_VOLUME_LOCK:I = 0xf

.field private static final KEY_RETURNBACK_VOLUME:Ljava/lang/String; = "com.sec.android.fm.return_back_volume"

.field private static final KNOX_MODE_USER_SWITCH:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field private static final NEXTRADIO_NAME:Ljava/lang/String; = "com.nextradioapp.nextradio"

.field public static final OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final OFF_BATTERY_LOW:I = 0x7

.field public static final OFF_CALL_ACTIVE:I = 0x1

.field public static final OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final OFF_MOTION_LISTENER:I = 0x15

.field public static final OFF_NORMAL:I = 0x0

.field public static final OFF_PAUSE_COMMAND:I = 0x5

.field public static final OFF_STOP_COMMAND:I = 0x4

.field public static final OFF_TV_OUT:I = 0xa

.field private static final PACKAGE_NAME_TALKBACK:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field public static final PAUSED:I = 0xb

.field static final VOLUME_FADEIN:I = 0xc8

.field static final VOLUME_FADEIN_DELAYTIME:I = 0x64

.field private static final VOLUME_UP_DOWN:Ljava/lang/String; = "114,115"

.field private static final audioMute:Ljava/lang/String; = "fm_radio_mute=1"

.field private static final audioUnMute:Ljava/lang/String; = "fm_radio_mute=0"

.field private static mIsSetWakeKey:Z

.field private static mIsTransientPaused:Z

.field private static mMotionSensorManager:Lcom/samsung/android/motion/MotionRecognitionManager;


# instance fields
.field private SetPropertyPermission:Ljava/lang/String;

.field private VolumePropertyname:Ljava/lang/String;

.field private alarmTTSPlay:Z

.field private fos:Ljava/io/FileOutputStream;

.field private isFMBackGroundPlaying:Z

.field private mAFEnable:Z

.field private mAfRmssisampleCnt_th:I

.field private mAfRmssith_th:I

.field private mAirPlaneEnabled:Z

.field private final mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mAlgo_type:I

.field private final mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

.field final mAudioFocusHandler:Landroid/os/Handler;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field public mBand:I

.field private mButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mCf0_th12:I

.field public mChannelSpacing:I

.field private mChipVendor:I

.field private mCnt_th:I

.field private mCnt_th_2:I

.field private mContext:Landroid/content/Context;

.field private mCurrentFoundFreq:J

.field private mCurrentResumeVol:J

.field public mDEConstant:I

.field private mDNSEnable:Z

.field private final mEmergencyReceiver:Landroid/content/BroadcastReceiver;

.field private mFmOff:Ljava/lang/String;

.field private mFmOn:Ljava/lang/String;

.field final mHandler:Landroid/os/Handler;

.field private mInternetStreamingMode:Z

.field public mIsAudioFocusAlive:Z

.field private mIsBatteryLow:Z

.field private mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

.field private mIsForcestop:Z

.field private mIsHeadsetPlugged:Z

.field private mIsKeepRecoding:Z

.field private mIsMute:Z

.field private mIsOn:Z

.field private mIsSeeking:Z

.field private mIsSkipTunigVal:Z

.field private mIsTestMode:Z

.field private mIsTvOutPlugged:Z

.field private mIsphoneCall:Z

.field private mIsphoneCallRinging:Z

.field private mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/server/FMRadioService$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mMarvell_cmi:I

.field private mMarvell_rssi:I

.field private mMotionListener:Lcom/samsung/android/motion/MRListener;

.field private mMusicCommandRec:Landroid/content/BroadcastReceiver;

.field private mNeedResumeToFreq:J

.field private mOnProgress:Z

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPlayerNative:Lcom/android/server/FMPlayerNative;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviousFoundFreq:J

.field private mQualcomm_af_rmssisamplecnt:I

.field private mQualcomm_af_rmssith:I

.field private mQualcomm_cfoth12:I

.field private mQualcomm_offchannel:I

.field private mQualcomm_onchannel:I

.field private mQualcomm_rmssi_firststate:I

.field private mQualcomm_sinr_samplecnt:I

.field private mRDSEnable:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeVol:J

.field private mReturnBackVolume:I

.field private mRichwave_rssi:I

.field private mRssi_th:I

.field private mRssi_th_2:I

.field private mScanChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mScanFreq:J

.field private mScanProgress:Z

.field private mScanThread:Ljava/lang/Thread;

.field private mScanVolume:I

.field private final mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

.field private mSilicon_cnt:I

.field private mSilicon_rssi:I

.field private mSilicon_snr:I

.field private mSnr_th:I

.field private mSnr_th_2:I

.field private final mSystemReceiver:Landroid/content/BroadcastReceiver;

.field private final mSystemReceiver1:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitPidDuringScanning:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeUpKeyFileName:Ljava/lang/String;

.field private mWakeUpKeyFilePath:Ljava/lang/String;

.field private mgoodChrmssi_th:I

.field private platform:Ljava/lang/String;

.field private volumeLock:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_15

    :goto_b
    sput-boolean v0, DEBUGGABLE:Z

    .line 153
    sput-boolean v1, mIsTransientPaused:Z

    .line 164
    const/4 v0, 0x0

    sput-object v0, mMotionSensorManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 211
    sput-boolean v1, mIsSetWakeKey:Z

    return-void

    :cond_15
    move v0, v1

    .line 66
    goto :goto_b
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/16 v5, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1350
    invoke-direct {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;-><init>()V

    .line 131
    iput-boolean v4, p0, mOnProgress:Z

    .line 140
    iput-boolean v4, p0, mIsHeadsetPlugged:Z

    .line 141
    iput-boolean v4, p0, mIsTvOutPlugged:Z

    .line 142
    const-wide/16 v6, -0x2

    iput-wide v6, p0, mNeedResumeToFreq:J

    .line 152
    iput-boolean v4, p0, mIsphoneCall:Z

    .line 156
    iput-wide v10, p0, mPreviousFoundFreq:J

    .line 157
    iput-wide v10, p0, mCurrentFoundFreq:J

    .line 159
    iput-boolean v4, p0, volumeLock:Z

    .line 166
    iput-boolean v3, p0, isFMBackGroundPlaying:Z

    .line 173
    iput-boolean v4, p0, alarmTTSPlay:Z

    .line 177
    iput-boolean v4, p0, mIsForcestop:Z

    .line 182
    const-string v2, "com.sec.android.app.fm.permission.setproperty"

    iput-object v2, p0, SetPropertyPermission:Ljava/lang/String;

    .line 183
    const-string/jumbo v2, "service.brcm.fm.volumetable"

    iput-object v2, p0, VolumePropertyname:Ljava/lang/String;

    .line 185
    iput v4, p0, mRssi_th:I

    .line 186
    iput v4, p0, mSnr_th:I

    .line 187
    iput v4, p0, mCnt_th:I

    .line 188
    iput v4, p0, mRssi_th_2:I

    .line 189
    iput v4, p0, mSnr_th_2:I

    .line 190
    iput v4, p0, mCnt_th_2:I

    .line 191
    iput v3, p0, mAlgo_type:I

    .line 192
    iput v4, p0, mCf0_th12:I

    .line 193
    iput v4, p0, mAfRmssith_th:I

    .line 194
    iput v4, p0, mAfRmssisampleCnt_th:I

    .line 195
    iput v4, p0, mgoodChrmssi_th:I

    .line 198
    iput v3, p0, mBand:I

    .line 199
    iput v5, p0, mChannelSpacing:I

    .line 200
    iput v3, p0, mDEConstant:I

    .line 205
    iput-object v8, p0, platform:Ljava/lang/String;

    .line 206
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, mWakeUpKeyFilePath:Ljava/lang/String;

    .line 207
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, mWakeUpKeyFileName:Ljava/lang/String;

    .line 208
    const-string v2, "102,114,115,116,172"

    iput-object v2, p0, mFmOn:Ljava/lang/String;

    .line 209
    const-string v2, "102,116,172"

    iput-object v2, p0, mFmOff:Ljava/lang/String;

    .line 214
    const/4 v2, -0x1

    iput v2, p0, mReturnBackVolume:I

    .line 216
    iput-boolean v4, p0, mIsphoneCallRinging:Z

    .line 217
    iput-boolean v3, p0, mIsKeepRecoding:Z

    .line 222
    iput-boolean v4, p0, mIsAudioFocusAlive:Z

    .line 225
    iput v4, p0, mChipVendor:I

    .line 228
    iput v4, p0, mSilicon_rssi:I

    .line 229
    const/4 v2, 0x2

    iput v2, p0, mSilicon_snr:I

    .line 230
    iput v3, p0, mSilicon_cnt:I

    .line 231
    const/16 v2, -0x71

    iput v2, p0, mQualcomm_rmssi_firststate:I

    .line 232
    const/16 v2, 0x6d

    iput v2, p0, mQualcomm_onchannel:I

    .line 233
    const/16 v2, 0x73

    iput v2, p0, mQualcomm_offchannel:I

    .line 234
    iput v5, p0, mQualcomm_sinr_samplecnt:I

    .line 235
    const/16 v2, 0x3a98

    iput v2, p0, mQualcomm_cfoth12:I

    .line 236
    const/16 v2, 0x35

    iput v2, p0, mQualcomm_af_rmssith:I

    .line 237
    const/16 v2, 0x50

    iput v2, p0, mQualcomm_af_rmssisamplecnt:I

    .line 238
    iput v4, p0, mMarvell_rssi:I

    .line 239
    iput v4, p0, mMarvell_cmi:I

    .line 240
    const/16 v2, 0xc

    iput v2, p0, mRichwave_rssi:I

    .line 242
    new-instance v2, Lcom/android/server/FMRadioService$1;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$1;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    .line 286
    new-instance v2, Lcom/android/server/FMRadioService$2;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$2;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 396
    new-instance v2, Lcom/android/server/FMRadioService$3;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$3;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 415
    new-instance v2, Lcom/android/server/FMRadioService$4;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$4;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    .line 424
    new-instance v2, Lcom/android/server/FMRadioService$5;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$5;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mMusicCommandRec:Landroid/content/BroadcastReceiver;

    .line 437
    new-instance v2, Lcom/android/server/FMRadioService$6;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$6;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mAudioFocusHandler:Landroid/os/Handler;

    .line 659
    new-instance v2, Lcom/android/server/FMRadioService$7;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$7;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 714
    new-instance v2, Lcom/android/server/FMRadioService$8;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$8;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mHandler:Landroid/os/Handler;

    .line 737
    new-instance v2, Lcom/android/server/FMRadioService$9;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$9;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 821
    new-instance v2, Lcom/android/server/FMRadioService$10;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$10;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mSystemReceiver1:Landroid/content/BroadcastReceiver;

    .line 851
    new-instance v2, Lcom/android/server/FMRadioService$11;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$11;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mSystemReceiver:Landroid/content/BroadcastReceiver;

    .line 872
    new-instance v2, Lcom/android/server/FMRadioService$12;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$12;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 914
    new-instance v2, Lcom/android/server/FMRadioService$13;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$13;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    .line 943
    new-instance v2, Lcom/android/server/FMRadioService$14;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$14;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mMotionListener:Lcom/samsung/android/motion/MRListener;

    .line 987
    new-instance v2, Lcom/android/server/FMRadioService$15;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$15;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    .line 1015
    new-instance v2, Lcom/android/server/FMRadioService$16;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$16;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 1047
    new-instance v2, Lcom/android/server/FMRadioService$17;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$17;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mEmergencyReceiver:Landroid/content/BroadcastReceiver;

    .line 2164
    iput-object v8, p0, mScanThread:Ljava/lang/Thread;

    .line 3014
    iput-boolean v4, p0, mInternetStreamingMode:Z

    .line 3026
    iput-boolean v4, p0, mWaitPidDuringScanning:Z

    .line 1351
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 1352
    new-instance v2, Lcom/android/server/FMPlayerNative;

    invoke-direct {v2, p0}, Lcom/android/server/FMPlayerNative;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    .line 1353
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, mPowerManager:Landroid/os/PowerManager;

    .line 1354
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1356
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, mAudioManager:Landroid/media/AudioManager;

    .line 1358
    iget-object v2, p0, mPowerManager:Landroid/os/PowerManager;

    const-string v5, "FMRadio Service"

    invoke-virtual {v2, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1361
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1362
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1363
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1364
    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1365
    iget-object v2, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1368
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1369
    .local v1, "intentFilterVol":Landroid/content/IntentFilter;
    iget-object v2, p0, mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1372
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.fm.volume_lock"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1373
    .restart local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    iget-object v2, p0, mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1375
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.fm.volume_unlock"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1376
    .restart local v1    # "intentFilterVol":Landroid/content/IntentFilter;
    iget-object v2, p0, mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1379
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "airplane_mode_on"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2a6

    move v2, v3

    :goto_18a
    iput-boolean v2, p0, mAirPlaneEnabled:Z

    .line 1381
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAirPlaneEnabled flag :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, mAirPlaneEnabled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1382
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1383
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1385
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1386
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, mButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1388
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.media.fmradio.rec_save"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1389
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1390
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.media.save_fmrecording_only"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1391
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1393
    invoke-direct {p0}, registerSystemListener()V

    .line 1394
    invoke-direct {p0}, registerTelephonyListener()V

    .line 1396
    invoke-direct {p0}, registerSetPropertyListener()V

    .line 1398
    invoke-direct {p0}, readChipVendor()V

    .line 1399
    invoke-direct {p0}, readTuningParameters()V

    .line 1400
    invoke-direct {p0}, readParametersForCurrentRegion()V

    .line 1402
    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, platform:Ljava/lang/String;

    .line 1403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "platform : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 1405
    iget-object v2, p0, platform:Ljava/lang/String;

    if-eqz v2, :cond_234

    .line 1406
    const-string v2, "exynos4"

    iget-object v3, p0, platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_223

    const-string/jumbo v2, "msm8960"

    iget-object v3, p0, platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a9

    .line 1407
    :cond_223
    const-string v2, "/sys/class/sec/sec_key/"

    iput-object v2, p0, mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1408
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, mWakeUpKeyFileName:Ljava/lang/String;

    .line 1409
    const-string v2, "102,114,115,116,172"

    iput-object v2, p0, mFmOn:Ljava/lang/String;

    .line 1410
    const-string v2, "102,116,172"

    iput-object v2, p0, mFmOff:Ljava/lang/String;

    .line 1429
    :cond_234
    :goto_234
    iget-object v2, p0, platform:Ljava/lang/String;

    if-eqz v2, :cond_2a5

    .line 1430
    const-string/jumbo v2, "rhea"

    iget-object v3, p0, platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a3

    const-string v2, "capri"

    iget-object v3, p0, platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a3

    const-string v2, "hawaii"

    iget-object v3, p0, platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a3

    const-string v2, "java"

    iget-object v3, p0, platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a3

    const-string/jumbo v2, "sc8810"

    iget-object v3, p0, platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a3

    const-string/jumbo v2, "sc8825"

    iget-object v3, p0, platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a3

    const-string/jumbo v2, "sc6820i"

    iget-object v3, p0, platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a3

    const-string/jumbo v2, "sc8830"

    iget-object v3, p0, platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a3

    const-string/jumbo v2, "scx15"

    iget-object v3, p0, platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a3

    const-string/jumbo v2, "u2"

    iget-object v3, p0, platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a5

    .line 1434
    :cond_2a3
    iput-boolean v4, p0, mIsKeepRecoding:Z

    .line 1438
    :cond_2a5
    return-void

    :cond_2a6
    move v2, v4

    .line 1379
    goto/16 :goto_18a

    .line 1411
    :cond_2a9
    const-string/jumbo v2, "msm7627a"

    iget-object v3, p0, platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2bf

    const-string/jumbo v2, "msm7k"

    iget-object v3, p0, platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d2

    .line 1412
    :cond_2bf
    const-string v2, "/sys/devices/platform/gpio-event/"

    iput-object v2, p0, mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1413
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, mWakeUpKeyFileName:Ljava/lang/String;

    .line 1414
    const-string v2, "1"

    iput-object v2, p0, mFmOn:Ljava/lang/String;

    .line 1415
    const-string v2, "0"

    iput-object v2, p0, mFmOff:Ljava/lang/String;

    goto/16 :goto_234

    .line 1416
    :cond_2d2
    const-string/jumbo v2, "montblanc"

    iget-object v3, p0, platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f0

    .line 1417
    const-string v2, "/sys/devices/platform/gpio-keys.0/"

    iput-object v2, p0, mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1418
    const-string/jumbo v2, "wakeup_keys"

    iput-object v2, p0, mWakeUpKeyFileName:Ljava/lang/String;

    .line 1419
    const-string v2, "114,115,172"

    iput-object v2, p0, mFmOn:Ljava/lang/String;

    .line 1420
    const-string v2, "172"

    iput-object v2, p0, mFmOff:Ljava/lang/String;

    goto/16 :goto_234

    .line 1421
    :cond_2f0
    const-string/jumbo v2, "mrvl"

    iget-object v3, p0, platform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_234

    .line 1422
    const-string v2, "/sys/devices/platform/pxa27x-keypad/power/"

    iput-object v2, p0, mWakeUpKeyFilePath:Ljava/lang/String;

    .line 1423
    const-string/jumbo v2, "wakeup"

    iput-object v2, p0, mWakeUpKeyFileName:Ljava/lang/String;

    .line 1424
    const-string v2, "enabled"

    iput-object v2, p0, mFmOn:Ljava/lang/String;

    .line 1425
    const-string v2, "disabled"

    iput-object v2, p0, mFmOff:Ljava/lang/String;

    goto/16 :goto_234
.end method

.method static synthetic access$000(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-boolean v0, p0, volumeLock:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, volumeLock:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/FMRadioService;ZIZ)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, offInternal(ZIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-object v0, p0, mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-boolean v0, p0, mAirPlaneEnabled:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, mAirPlaneEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-boolean v0, p0, mIsTvOutPlugged:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, mIsTvOutPlugged:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-boolean v0, p0, mIsphoneCallRinging:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, mIsphoneCallRinging:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-boolean v0, p0, mScanProgress:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, mScanProgress:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/FMRadioService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-wide v0, p0, mNeedResumeToFreq:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/server/FMRadioService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 63
    iput-wide p1, p0, mNeedResumeToFreq:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/server/FMRadioService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-wide v0, p0, mScanFreq:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/server/FMRadioService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 63
    iput-wide p1, p0, mScanFreq:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-boolean v0, p0, mIsphoneCall:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, mIsphoneCall:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-boolean v0, p0, isFMBackGroundPlaying:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, isFMBackGroundPlaying:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-boolean v0, p0, mIsOn:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/FMRadioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, responedFocusEvent(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/FMRadioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, respondAudioFocusChangeForDns(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/FMRadioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    invoke-direct {p0}, clearMessageQueue()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/FMRadioService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-wide v0, p0, mCurrentResumeVol:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/android/server/FMRadioService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 63
    iput-wide p1, p0, mCurrentResumeVol:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/android/server/FMRadioService;IJ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, queueUpdate(IJ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/FMRadioService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-wide v0, p0, mResumeVol:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/server/FMRadioService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 63
    iput-wide p1, p0, mResumeVol:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-boolean v0, p0, mIsForcestop:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, mIsForcestop:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-boolean v0, p0, mIsKeepRecoding:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/FMRadioService;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, on(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900()Z
    .registers 1

    .prologue
    .line 63
    sget-boolean v0, mIsTransientPaused:Z

    return v0
.end method

.method static synthetic access$2902(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 63
    sput-boolean p0, mIsTransientPaused:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/FMRadioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget v0, p0, mChipVendor:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, mIsBatteryLow:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/FMRadioService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-object v0, p0, VolumePropertyname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-boolean v0, p0, mIsMute:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, alarmTTSPlay:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/FMRadioService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-wide v0, p0, mPreviousFoundFreq:J

    return-wide v0
.end method

.method static synthetic access$3502(Lcom/android/server/FMRadioService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 63
    iput-wide p1, p0, mPreviousFoundFreq:J

    return-wide p1
.end method

.method static synthetic access$3600(Lcom/android/server/FMRadioService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-wide v0, p0, mCurrentFoundFreq:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/server/FMRadioService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # J

    .prologue
    .line 63
    iput-wide p1, p0, mCurrentFoundFreq:J

    return-wide p1
.end method

.method static synthetic access$3700(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-boolean v0, p0, mWaitPidDuringScanning:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-object v0, p0, mScanChannelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 63
    iput-object p1, p0, mScanChannelList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-object v0, p0, mScanThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 63
    iput-object p1, p0, mScanThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-boolean v0, p0, mIsSkipTunigVal:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/FMRadioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, mReturnBackVolume:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/FMRadioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget v0, p0, mRssi_th:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/FMRadioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget v0, p0, mSnr_th:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/FMRadioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget v0, p0, mCnt_th:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/FMRadioService;III)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, setSignalSetting(III)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/FMRadioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget v0, p0, mScanVolume:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/FMRadioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, mScanVolume:I

    return p1
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 63
    sget-boolean v0, DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-boolean v0, p0, mIsHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/FMRadioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/FMRadioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-boolean v0, p0, mIsTestMode:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/FMRadioService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/FMRadioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 63
    invoke-direct {p0}, stopInternetStreaming()V

    return-void
.end method

.method private acquireWakeLock()V
    .registers 2

    .prologue
    .line 1998
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1999
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2000
    const-string v0, "Lock is held"

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 2002
    :cond_12
    return-void
.end method

.method private checkForWakeLockRelease()V
    .registers 2

    .prologue
    .line 2281
    iget-boolean v0, p0, mAFEnable:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, mRDSEnable:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, mDNSEnable:Z

    if-nez v0, :cond_14

    .line 2282
    const-string v0, "AF and RDS is off. release the wake lock"

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 2283
    invoke-direct {p0}, releaseWakeLock()V

    .line 2285
    :cond_14
    return-void
.end method

.method private clearMessageQueue()V
    .registers 3

    .prologue
    .line 480
    iget-object v0, p0, mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 481
    iget-object v0, p0, mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    iget-object v0, p0, mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 483
    iget-object v0, p0, mAudioFocusHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    return-void
.end method

.method private closeFile()V
    .registers 3

    .prologue
    .line 2796
    :try_start_0
    iget-object v1, p0, fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_9

    .line 2797
    iget-object v1, p0, fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2803
    :cond_9
    :goto_9
    return-void

    .line 2799
    :catch_a
    move-exception v0

    .line 2801
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9
.end method

.method private convertToPrimitives([Ljava/lang/Long;)[J
    .registers 6
    .param p1, "longObArray"    # [Ljava/lang/Long;

    .prologue
    .line 2549
    if-eqz p1, :cond_14

    .line 2550
    array-length v2, p1

    new-array v1, v2, [J

    .line 2551
    .local v1, "longArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 2552
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 2551
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2557
    .end local v0    # "i":I
    .end local v1    # "longArray":[J
    :cond_14
    const/4 v1, 0x0

    :cond_15
    return-object v1
.end method

.method private getPropertyProductName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3035
    const/4 v0, 0x0

    .line 3036
    .local v0, "productName":Ljava/lang/String;
    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3037
    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1343
    const-string v0, "FMRadioService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    return-void
.end method

.method private declared-synchronized offInternal(ZIZ)Z
    .registers 14
    .param p1, "isModeToSet"    # Z
    .param p2, "reasonCode"    # I
    .param p3, "needToRemoveFocusListener"    # Z

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2015
    monitor-enter p0

    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "offInternal :: reasonCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, log(Ljava/lang/String;)V

    .line 2018
    iget-boolean v6, p0, mIsOn:Z

    if-nez v6, :cond_30

    .line 2020
    if-eqz p3, :cond_2e

    .line 2021
    const-string/jumbo v5, "offInternal :: remove audiofocus "

    invoke-static {v5}, log(Ljava/lang/String;)V

    .line 2022
    iget-object v5, p0, mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_108

    .line 2115
    :cond_2e
    :goto_2e
    monitor-exit p0

    return v4

    .line 2029
    :cond_30
    if-nez p3, :cond_10b

    move v6, v4

    :goto_33
    :try_start_33
    sput-boolean v6, mIsTransientPaused:Z

    .line 2030
    const/4 v6, 0x0

    iput-boolean v6, p0, mIsOn:Z

    .line 2031
    if-eqz p1, :cond_10e

    .line 2032
    iget v6, p0, mReturnBackVolume:I

    if-eq v6, v8, :cond_6f

    iget-object v6, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 2033
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "offInternal :: mReturnBackVolume="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mReturnBackVolume:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, log(Ljava/lang/String;)V

    .line 2034
    iget-object v6, p0, mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x1

    invoke-static {v7}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v7

    iget v8, p0, mReturnBackVolume:I

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2036
    const/4 v6, -0x1

    iput v6, p0, mReturnBackVolume:I

    .line 2038
    :cond_6f
    const-string v2, "fmradio_turnon=false"

    .line 2039
    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v6, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2040
    const-string/jumbo v6, "offInternal Turning off FM radio"

    invoke-static {v6}, log(Ljava/lang/String;)V

    .line 2046
    .end local v2    # "keyValuePairs":Ljava/lang/String;
    :goto_7c
    if-nez p3, :cond_120

    move v6, v4

    :goto_7f
    iput-boolean v6, p0, mIsAudioFocusAlive:Z

    .line 2048
    iget v6, p0, mChipVendor:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_123

    const/4 v6, 0x3

    if-ne p2, v6, :cond_123

    .line 2049
    iget-object v6, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v6}, Lcom/android/server/FMPlayerNative;->offFMService()V

    .line 2054
    :goto_8e
    const-string/jumbo v6, "off returned from native"

    invoke-static {v6}, log(Ljava/lang/String;)V

    .line 2055
    const/4 v6, 0x0

    iput-boolean v6, p0, mRDSEnable:Z

    .line 2056
    const/4 v6, 0x0

    iput-boolean v6, p0, mAFEnable:Z

    .line 2057
    const/4 v6, 0x0

    iput-boolean v6, p0, mDNSEnable:Z

    .line 2058
    const/4 v6, 0x0

    iput-boolean v6, p0, mIsMute:Z

    .line 2060
    const/4 v6, 0x0

    iput-boolean v6, p0, mIsSkipTunigVal:Z

    .line 2062
    iget-boolean v6, p0, mIsTestMode:Z

    if-nez v6, :cond_d2

    .line 2063
    invoke-direct {p0}, unRegisterMusicCommandRec()V

    .line 2064
    invoke-direct {p0}, unRegisterBatteryListener()V

    .line 2066
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_bc

    .line 2067
    invoke-virtual {p0}, unregisterMotionListener()V

    .line 2070
    :cond_bc
    iget-boolean v6, p0, alarmTTSPlay:Z

    if-nez v6, :cond_c3

    .line 2071
    invoke-direct {p0}, unregisterAlarmListener()V

    .line 2073
    :cond_c3
    invoke-direct {p0}, unregisterAllSoundOffListener()V

    .line 2074
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget-object v7, p0, mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2075
    if-eqz p3, :cond_d2

    .line 2076
    invoke-direct {p0}, unregisterEmegencyStateChangedListener()V

    .line 2078
    :cond_d2
    const/4 v6, 0x0

    iput-boolean v6, p0, mIsTestMode:Z

    .line 2080
    if-eqz p3, :cond_de

    .line 2081
    iget-object v6, p0, mAudioManager:Landroid/media/AudioManager;

    iget-object v7, p0, mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2083
    :cond_de
    const/4 v6, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, notifyEvent(ILjava/lang/Object;)V

    .line 2086
    invoke-direct {p0}, sendFMOFFBroadcast()V

    .line 2090
    iget-object v6, p0, platform:Ljava/lang/String;

    if-eqz v6, :cond_12f

    iget-object v6, p0, platform:Ljava/lang/String;

    const-string/jumbo v7, "mrvl"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12f

    .line 2091
    invoke-direct {p0}, openFile()V

    .line 2092
    iget-boolean v6, p0, mIsOn:Z

    invoke-direct {p0, v6}, writeFile(Z)V

    .line 2093
    invoke-direct {p0}, closeFile()V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_103} :catch_116
    .catchall {:try_start_33 .. :try_end_103} :catchall_12a

    .line 2113
    :cond_103
    :goto_103
    :try_start_103
    invoke-direct {p0}, releaseWakeLock()V
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_108

    goto/16 :goto_2e

    .line 2015
    :catchall_108
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_10b
    move v6, v5

    .line 2029
    goto/16 :goto_33

    .line 2043
    :cond_10e
    :try_start_10e
    const-string/jumbo v6, "offInternal NOT Turning off FM radio"

    invoke-static {v6}, log(Ljava/lang/String;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_114} :catch_116
    .catchall {:try_start_10e .. :try_end_114} :catchall_12a

    goto/16 :goto_7c

    .line 2109
    :catch_116
    move-exception v0

    .line 2110
    .local v0, "e":Ljava/lang/Exception;
    :try_start_117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11a
    .catchall {:try_start_117 .. :try_end_11a} :catchall_12a

    .line 2113
    :try_start_11a
    invoke-direct {p0}, releaseWakeLock()V
    :try_end_11d
    .catchall {:try_start_11a .. :try_end_11d} :catchall_108

    move v4, v5

    .line 2115
    goto/16 :goto_2e

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_120
    move v6, v5

    .line 2046
    goto/16 :goto_7f

    .line 2051
    :cond_123
    :try_start_123
    iget-object v6, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v6}, Lcom/android/server/FMPlayerNative;->off()V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_128} :catch_116
    .catchall {:try_start_123 .. :try_end_128} :catchall_12a

    goto/16 :goto_8e

    .line 2113
    :catchall_12a
    move-exception v4

    :try_start_12b
    invoke-direct {p0}, releaseWakeLock()V

    throw v4
    :try_end_12f
    .catchall {:try_start_12b .. :try_end_12f} :catchall_108

    .line 2095
    :cond_12f
    :try_start_12f
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "input"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 2097
    .local v1, "inputManager":Landroid/hardware/input/InputManager;
    iget-boolean v6, p0, mIsOn:Z

    sget-boolean v7, mIsSetWakeKey:Z
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_13d} :catch_116
    .catchall {:try_start_12f .. :try_end_13d} :catchall_12a

    if-eq v6, v7, :cond_103

    if-eqz v1, :cond_103

    .line 2099
    :try_start_141
    const-string v6, "com.sec.android.app.fm"

    iget-boolean v7, p0, mIsOn:Z

    const-string v8, "114,115"

    invoke-virtual {v1, v6, v7, v8}, Landroid/hardware/input/InputManager;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_14a
    .catch Ljava/lang/SecurityException; {:try_start_141 .. :try_end_14a} :catch_14f
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_14a} :catch_116
    .catchall {:try_start_141 .. :try_end_14a} :catchall_12a

    .line 2103
    :goto_14a
    :try_start_14a
    iget-boolean v6, p0, mIsOn:Z

    sput-boolean v6, mIsSetWakeKey:Z

    goto :goto_103

    .line 2100
    :catch_14f
    move-exception v3

    .line 2101
    .local v3, "se":Ljava/lang/SecurityException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in setWakeKeyDynamically(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, log(Ljava/lang/String;)V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_16a} :catch_116
    .catchall {:try_start_14a .. :try_end_16a} :catchall_12a

    goto :goto_14a
.end method

.method private declared-synchronized on(Z)Z
    .registers 14
    .param p1, "isAudioFocusNeeded"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1748
    monitor-enter p0

    :try_start_4
    iget-boolean v8, p0, mIsHeadsetPlugged:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_bc

    if-nez v8, :cond_a

    .line 1879
    :cond_8
    :goto_8
    monitor-exit p0

    return v6

    .line 1751
    :cond_a
    :try_start_a
    iget-boolean v8, p0, mIsTvOutPlugged:Z

    if-nez v8, :cond_8

    .line 1754
    iget-boolean v8, p0, mAirPlaneEnabled:Z

    if-nez v8, :cond_8

    .line 1757
    invoke-direct {p0}, registerBatteryListener()V

    .line 1759
    iget-boolean v8, p0, mIsBatteryLow:Z

    if-nez v8, :cond_8

    .line 1763
    iget-object v8, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8

    if-eq v8, v7, :cond_8

    iget-object v8, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8

    if-eq v8, v9, :cond_8

    .line 1767
    iget-boolean v8, p0, alarmTTSPlay:Z

    if-nez v8, :cond_8

    .line 1771
    iget-boolean v8, p0, mIsOn:Z
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_bc

    if-eqz v8, :cond_33

    move v6, v7

    .line 1772
    goto :goto_8

    .line 1774
    :cond_33
    :try_start_33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1775
    .local v0, "caller":I
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1776
    .local v4, "pkgName":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v3, v4, v8

    .line 1779
    .local v3, "mPackageName":Ljava/lang/String;
    if-nez p1, :cond_4c

    sget-boolean v8, mIsTransientPaused:Z

    if-nez v8, :cond_bf

    .line 1780
    :cond_4c
    const-string v8, "AudioFocusListener registered"

    invoke-static {v8}, log(Ljava/lang/String;)V

    .line 1781
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_SupportNextRadio"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_65

    const-string v8, "com.sec.android.app.fm"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_72

    .line 1783
    :cond_65
    iget-object v8, p0, mAudioManager:Landroid/media/AudioManager;

    iget-object v9, p0, mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v10, 0x1

    invoke-static {v10}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1790
    :cond_72
    :goto_72
    const/4 v8, 0x1

    iput-boolean v8, p0, mOnProgress:Z

    .line 1791
    iget-object v8, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v8}, Lcom/android/server/FMPlayerNative;->on()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1bb

    .line 1792
    const-string/jumbo v8, "on returned from native"

    invoke-static {v8}, log(Ljava/lang/String;)V

    .line 1794
    const/4 v8, 0x0

    iput-boolean v8, p0, mOnProgress:Z

    .line 1795
    const/4 v8, 0x1

    iput-boolean v8, p0, mIsOn:Z

    .line 1796
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, mute(Z)V

    .line 1797
    iget-boolean v8, p0, mIsHeadsetPlugged:Z

    if-nez v8, :cond_c5

    .line 1798
    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-direct {p0, v7, v8, v9}, offInternal(ZIZ)Z
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_9b} :catch_9d
    .catchall {:try_start_33 .. :try_end_9b} :catchall_bc

    goto/16 :goto_8

    .line 1870
    .end local v0    # "caller":I
    .end local v3    # "mPackageName":Ljava/lang/String;
    .end local v4    # "pkgName":[Ljava/lang/String;
    :catch_9d
    move-exception v1

    .line 1871
    .local v1, "e":Ljava/lang/Exception;
    :try_start_9e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1872
    const/4 v7, 0x0

    iput-boolean v7, p0, mIsOn:Z

    .line 1873
    const/4 v7, 0x0

    iput-boolean v7, p0, mOnProgress:Z

    .line 1874
    const-string/jumbo v7, "on is failed by exception :: remove audiofocus "

    invoke-static {v7}, log(Ljava/lang/String;)V

    .line 1875
    iget-object v7, p0, mAudioManager:Landroid/media/AudioManager;

    iget-object v8, p0, mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1876
    invoke-direct {p0}, releaseWakeLock()V

    .line 1877
    invoke-direct {p0}, unRegisterBatteryListener()V
    :try_end_ba
    .catchall {:try_start_9e .. :try_end_ba} :catchall_bc

    goto/16 :goto_8

    .line 1748
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_bc
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1787
    .restart local v0    # "caller":I
    .restart local v3    # "mPackageName":Ljava/lang/String;
    .restart local v4    # "pkgName":[Ljava/lang/String;
    :cond_bf
    :try_start_bf
    const-string v8, "AudioFocusListener : skip the requestAudioFocus"

    invoke-static {v8}, log(Ljava/lang/String;)V

    goto :goto_72

    .line 1800
    :cond_c5
    iget v8, p0, mChipVendor:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_db

    .line 1801
    iget-object v8, p0, mAudioManager:Landroid/media/AudioManager;

    iget-object v9, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    .line 1802
    const-string/jumbo v8, "setRadioSpeakerOn() is called."

    invoke-static {v8}, log(Ljava/lang/String;)V

    .line 1804
    :cond_db
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, notifyEvent(ILjava/lang/Object;)V

    .line 1807
    iget v8, p0, mChipVendor:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_175

    .line 1808
    iget v8, p0, mSnr_th:I

    invoke-virtual {p0, v8}, setSINRThreshold(I)V

    .line 1809
    iget v8, p0, mAlgo_type:I

    invoke-virtual {p0, v8}, setSearchAlgoType(I)V

    .line 1810
    iget v8, p0, mSnr_th_2:I

    invoke-virtual {p0, v8}, setSINRFirstStage(I)V

    .line 1811
    iget v8, p0, mRssi_th:I

    invoke-virtual {p0, v8}, setRMSSIFirstStage(I)V

    .line 1812
    iget v8, p0, mCnt_th:I

    invoke-virtual {p0, v8}, setOnChannelThreshold(I)V

    .line 1813
    iget v8, p0, mCnt_th_2:I

    invoke-virtual {p0, v8}, setOffChannelThreshold(I)V

    .line 1814
    iget v8, p0, mRssi_th_2:I

    invoke-virtual {p0, v8}, setSINRSamples(I)V

    .line 1815
    iget v8, p0, mCf0_th12:I

    invoke-virtual {p0, v8}, setCFOTh12(I)V

    .line 1816
    iget v8, p0, mAfRmssith_th:I

    invoke-virtual {p0, v8}, setAFRMSSIThreshold(I)V

    .line 1817
    iget v8, p0, mAfRmssisampleCnt_th:I

    invoke-virtual {p0, v8}, setAFRMSSISamples(I)V

    .line 1818
    iget v8, p0, mgoodChrmssi_th:I

    invoke-virtual {p0, v8}, setGoodChannelRMSSIThreshold(I)V

    .line 1824
    :goto_11c
    iget v8, p0, mBand:I

    invoke-virtual {p0, v8}, setBand(I)V

    .line 1825
    iget v8, p0, mChannelSpacing:I

    invoke-virtual {p0, v8}, setChannelSpacing(I)V

    .line 1826
    iget v8, p0, mDEConstant:I

    int-to-long v8, v8

    invoke-virtual {p0, v8, v9}, setDEConstant(J)V

    .line 1828
    invoke-direct {p0}, registerMusicCommandRec()V

    .line 1830
    invoke-direct {p0}, registerAlarmListener()V

    .line 1831
    invoke-direct {p0}, registerAllSoundOffListener()V

    .line 1833
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_144

    .line 1834
    invoke-virtual {p0}, registerMotionListener()V

    .line 1836
    :cond_144
    iget-object v8, p0, mContext:Landroid/content/Context;

    iget-object v9, p0, mIsFMBackGrondPlaying:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "com.android.backgroung.playing"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1838
    invoke-direct {p0}, registerEmergencyStateChangedListener()V

    .line 1842
    iget-object v8, p0, platform:Ljava/lang/String;

    if-eqz v8, :cond_17f

    iget-object v8, p0, platform:Ljava/lang/String;

    const-string/jumbo v9, "mrvl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17f

    .line 1843
    invoke-direct {p0}, openFile()V

    .line 1844
    iget-boolean v8, p0, mIsOn:Z

    invoke-direct {p0, v8}, writeFile(Z)V

    .line 1845
    invoke-direct {p0}, closeFile()V

    .line 1859
    :cond_16f
    :goto_16f
    const/4 v8, 0x0

    iput-boolean v8, p0, mIsForcestop:Z

    move v6, v7

    .line 1861
    goto/16 :goto_8

    .line 1820
    :cond_175
    iget v8, p0, mRssi_th:I

    iget v9, p0, mSnr_th:I

    iget v10, p0, mCnt_th:I

    invoke-direct {p0, v8, v9, v10}, setSignalSetting(III)V

    goto :goto_11c

    .line 1847
    :cond_17f
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string v9, "input"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    .line 1849
    .local v2, "inputManager":Landroid/hardware/input/InputManager;
    iget-boolean v8, p0, mIsOn:Z

    sget-boolean v9, mIsSetWakeKey:Z
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_18d} :catch_9d
    .catchall {:try_start_bf .. :try_end_18d} :catchall_bc

    if-eq v8, v9, :cond_16f

    if-eqz v2, :cond_16f

    .line 1851
    :try_start_191
    const-string v8, "com.sec.android.app.fm"

    iget-boolean v9, p0, mIsOn:Z

    const-string v10, "114,115"

    invoke-virtual {v2, v8, v9, v10}, Landroid/hardware/input/InputManager;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_19a
    .catch Ljava/lang/SecurityException; {:try_start_191 .. :try_end_19a} :catch_19f
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_19a} :catch_9d
    .catchall {:try_start_191 .. :try_end_19a} :catchall_bc

    .line 1855
    :goto_19a
    :try_start_19a
    iget-boolean v8, p0, mIsOn:Z

    sput-boolean v8, mIsSetWakeKey:Z

    goto :goto_16f

    .line 1852
    :catch_19f
    move-exception v5

    .line 1853
    .local v5, "se":Ljava/lang/SecurityException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in setWakeKeyDynamically(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, log(Ljava/lang/String;)V

    goto :goto_19a

    .line 1863
    .end local v2    # "inputManager":Landroid/hardware/input/InputManager;
    .end local v5    # "se":Ljava/lang/SecurityException;
    :cond_1bb
    const/4 v7, 0x0

    iput-boolean v7, p0, mOnProgress:Z

    .line 1864
    const-string/jumbo v7, "on is failed :: remove audiofocus "

    invoke-static {v7}, log(Ljava/lang/String;)V

    .line 1865
    iget-object v7, p0, mAudioManager:Landroid/media/AudioManager;

    iget-object v8, p0, mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1867
    invoke-direct {p0}, releaseWakeLock()V
    :try_end_1ce
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1ce} :catch_9d
    .catchall {:try_start_19a .. :try_end_1ce} :catchall_bc

    goto/16 :goto_8
.end method

.method private openFile()V
    .registers 5

    .prologue
    .line 2775
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, mWakeUpKeyFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mWakeUpKeyFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2777
    .local v1, "fileFMRadio":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    .line 2779
    :try_start_20
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_2b

    .line 2787
    :cond_23
    :goto_23
    :try_start_23
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, fos:Ljava/io/FileOutputStream;
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2a} :catch_30

    .line 2792
    :goto_2a
    return-void

    .line 2780
    :catch_2b
    move-exception v0

    .line 2782
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    .line 2788
    .end local v0    # "e":Ljava/io/IOException;
    :catch_30
    move-exception v0

    .line 2790
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2a
.end method

.method private queueUpdate(IJ)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "delay"    # J

    .prologue
    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queueUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 1324
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_36

    .line 1325
    const-string/jumbo v0, "queueUpdate ## VOLUME_FADEIN"

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 1326
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1328
    :cond_36
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1329
    return-void
.end method

.method private readChipVendor()V
    .registers 3

    .prologue
    .line 1077
    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mChipVendor:I

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChipVendor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mChipVendor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 1080
    return-void
.end method

.method private readParametersForCurrentRegion()V
    .registers 6

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 1269
    :try_start_3
    const-string v1, "87500_108000"

    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1271
    const/4 v1, 0x1

    iput v1, p0, mBand:I

    .line 1282
    :goto_10
    sget v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_FREQUENCYSPACE:I

    sparse-switch v1, :sswitch_data_5e

    .line 1292
    const/16 v1, 0xa

    iput v1, p0, mChannelSpacing:I

    .line 1298
    :goto_19
    sget v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DECONSTANT:I

    sparse-switch v1, :sswitch_data_68

    .line 1308
    const/4 v1, 0x1

    iput v1, p0, mDEConstant:I

    .line 1320
    :goto_21
    return-void

    .line 1272
    :cond_22
    const-string v1, "76000_108000"

    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1274
    const/4 v1, 0x2

    iput v1, p0, mBand:I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2f} :catch_30

    goto :goto_10

    .line 1313
    :catch_30
    move-exception v0

    .line 1314
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1316
    iput v3, p0, mBand:I

    .line 1317
    iput v4, p0, mChannelSpacing:I

    .line 1318
    iput v3, p0, mDEConstant:I

    goto :goto_21

    .line 1275
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3b
    :try_start_3b
    const-string v1, "76000_90000"

    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1277
    const/4 v1, 0x3

    iput v1, p0, mBand:I

    goto :goto_10

    .line 1279
    :cond_49
    const/4 v1, 0x1

    iput v1, p0, mBand:I

    goto :goto_10

    .line 1284
    :sswitch_4d
    const/4 v1, 0x5

    iput v1, p0, mChannelSpacing:I

    goto :goto_19

    .line 1288
    :sswitch_51
    const/16 v1, 0xa

    iput v1, p0, mChannelSpacing:I

    goto :goto_19

    .line 1300
    :sswitch_56
    const/4 v1, 0x1

    iput v1, p0, mDEConstant:I

    goto :goto_21

    .line 1304
    :sswitch_5a
    const/4 v1, 0x0

    iput v1, p0, mDEConstant:I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5d} :catch_30

    goto :goto_21

    .line 1282
    :sswitch_data_5e
    .sparse-switch
        0x32 -> :sswitch_4d
        0x64 -> :sswitch_51
    .end sparse-switch

    .line 1298
    :sswitch_data_68
    .sparse-switch
        0x32 -> :sswitch_56
        0x4b -> :sswitch_5a
    .end sparse-switch
.end method

.method private readTuningParameters()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1083
    iget v2, p0, mChipVendor:I

    if-ne v2, v5, :cond_2a

    .line 1084
    invoke-direct {p0}, getPropertyProductName()Ljava/lang/String;

    move-result-object v1

    .line 1085
    .local v1, "productName":Ljava/lang/String;
    const-string/jumbo v2, "zerolte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1086
    const-string/jumbo v2, "service.brcm.fm.start_snr"

    const/16 v3, 0x22

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const-string/jumbo v2, "service.brcm.fm.set_blndmute"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    .end local v1    # "productName":Ljava/lang/String;
    :cond_2a
    :goto_2a
    const-string v2, ""

    sget-object v3, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 1097
    iget v2, p0, mChipVendor:I

    if-ne v2, v6, :cond_73

    .line 1098
    iget v2, p0, mSilicon_rssi:I

    iput v2, p0, mRssi_th:I

    .line 1099
    iget v2, p0, mSilicon_snr:I

    iput v2, p0, mSnr_th:I

    .line 1100
    iget v2, p0, mSilicon_cnt:I

    iput v2, p0, mCnt_th:I

    .line 1265
    :cond_44
    :goto_44
    return-void

    .line 1088
    .restart local v1    # "productName":Ljava/lang/String;
    :cond_45
    const-string v2, "j2lte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1089
    const-string/jumbo v2, "service.brcm.fm.start_mute"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 1090
    :cond_58
    const-string v2, "j1xlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1091
    const-string/jumbo v2, "service.brcm.fm.start_snr"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const-string/jumbo v2, "service.brcm.fm.set_blndmute"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 1101
    .end local v1    # "productName":Ljava/lang/String;
    :cond_73
    iget v2, p0, mChipVendor:I

    if-ne v2, v5, :cond_90

    .line 1102
    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mRssi_th:I

    .line 1104
    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mSnr_th:I

    .line 1106
    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mCnt_th:I

    goto :goto_44

    .line 1108
    :cond_90
    iget v2, p0, mChipVendor:I

    if-ne v2, v8, :cond_a7

    .line 1109
    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mRssi_th:I

    .line 1110
    iput v4, p0, mSnr_th:I

    .line 1111
    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mCnt_th:I

    goto :goto_44

    .line 1112
    :cond_a7
    iget v2, p0, mChipVendor:I

    if-ne v2, v7, :cond_e9

    .line 1113
    const-string v2, "3"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mSnr_th:I

    .line 1115
    const-string v2, "1"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mAlgo_type:I

    .line 1117
    const-string v2, "-2"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mSnr_th_2:I

    .line 1119
    iget v2, p0, mQualcomm_rmssi_firststate:I

    iput v2, p0, mRssi_th:I

    .line 1120
    iget v2, p0, mQualcomm_onchannel:I

    iput v2, p0, mCnt_th:I

    .line 1121
    iget v2, p0, mQualcomm_offchannel:I

    iput v2, p0, mCnt_th_2:I

    .line 1122
    iget v2, p0, mQualcomm_sinr_samplecnt:I

    iput v2, p0, mRssi_th_2:I

    .line 1123
    iget v2, p0, mQualcomm_cfoth12:I

    iput v2, p0, mCf0_th12:I

    .line 1124
    iget v2, p0, mQualcomm_af_rmssith:I

    iput v2, p0, mAfRmssith_th:I

    .line 1125
    iget v2, p0, mQualcomm_af_rmssisamplecnt:I

    iput v2, p0, mAfRmssisampleCnt_th:I

    .line 1126
    const-string v2, "-110"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mgoodChrmssi_th:I

    goto/16 :goto_44

    .line 1127
    :cond_e9
    iget v2, p0, mChipVendor:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_44

    .line 1128
    iget v2, p0, mRichwave_rssi:I

    iput v2, p0, mRssi_th:I

    goto/16 :goto_44

    .line 1131
    :cond_f4
    sget-object v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, "Local_Tunning_vals":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tuning value size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 1134
    array-length v2, v0

    packed-switch v2, :pswitch_data_332

    .line 1260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tuning value size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    goto/16 :goto_44

    .line 1137
    :pswitch_130
    iget v2, p0, mChipVendor:I

    if-ne v2, v5, :cond_15e

    .line 1138
    const-string/jumbo v2, "service.brcm.fm.start_mute"

    aget-object v3, v0, v4

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const-string/jumbo v2, "service.brcm.fm.set_blndmute"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mRssi_th:I

    .line 1143
    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mSnr_th:I

    .line 1145
    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mCnt_th:I

    goto/16 :goto_44

    .line 1147
    :cond_15e
    iget v2, p0, mChipVendor:I

    if-ne v2, v7, :cond_1a0

    .line 1148
    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mSnr_th:I

    .line 1149
    const-string v2, "1"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mAlgo_type:I

    .line 1151
    const-string v2, "-2"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mSnr_th_2:I

    .line 1153
    iget v2, p0, mQualcomm_rmssi_firststate:I

    iput v2, p0, mRssi_th:I

    .line 1154
    iget v2, p0, mQualcomm_onchannel:I

    iput v2, p0, mCnt_th:I

    .line 1155
    iget v2, p0, mQualcomm_offchannel:I

    iput v2, p0, mCnt_th_2:I

    .line 1156
    iget v2, p0, mQualcomm_sinr_samplecnt:I

    iput v2, p0, mRssi_th_2:I

    .line 1157
    iget v2, p0, mQualcomm_cfoth12:I

    iput v2, p0, mCf0_th12:I

    .line 1158
    iget v2, p0, mQualcomm_af_rmssith:I

    iput v2, p0, mAfRmssith_th:I

    .line 1159
    iget v2, p0, mQualcomm_af_rmssisamplecnt:I

    iput v2, p0, mAfRmssisampleCnt_th:I

    .line 1160
    const-string v2, "-110"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mgoodChrmssi_th:I

    goto/16 :goto_44

    .line 1162
    :cond_1a0
    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mRssi_th:I

    .line 1163
    iput v4, p0, mSnr_th:I

    .line 1164
    iput v4, p0, mCnt_th:I

    goto/16 :goto_44

    .line 1170
    :pswitch_1ae
    iget v2, p0, mChipVendor:I

    if-ne v2, v7, :cond_44

    .line 1171
    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mCnt_th:I

    .line 1172
    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mSnr_th:I

    .line 1173
    const-string v2, "1"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mAlgo_type:I

    .line 1175
    const-string v2, "-2"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mSnr_th_2:I

    .line 1177
    iget v2, p0, mQualcomm_rmssi_firststate:I

    iput v2, p0, mRssi_th:I

    .line 1178
    iget v2, p0, mQualcomm_offchannel:I

    iput v2, p0, mCnt_th_2:I

    .line 1179
    iget v2, p0, mQualcomm_sinr_samplecnt:I

    iput v2, p0, mRssi_th_2:I

    .line 1180
    iget v2, p0, mQualcomm_cfoth12:I

    iput v2, p0, mCf0_th12:I

    .line 1181
    iget v2, p0, mQualcomm_af_rmssith:I

    iput v2, p0, mAfRmssith_th:I

    .line 1182
    iget v2, p0, mQualcomm_af_rmssisamplecnt:I

    iput v2, p0, mAfRmssisampleCnt_th:I

    .line 1183
    const-string v2, "-110"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mgoodChrmssi_th:I

    goto/16 :goto_44

    .line 1189
    :pswitch_1f4
    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mRssi_th:I

    .line 1190
    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mSnr_th:I

    .line 1191
    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mCnt_th:I

    goto/16 :goto_44

    .line 1196
    :pswitch_20e
    iget v2, p0, mChipVendor:I

    if-ne v2, v7, :cond_254

    .line 1197
    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mRssi_th:I

    .line 1198
    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mSnr_th_2:I

    .line 1199
    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mSnr_th:I

    .line 1200
    aget-object v2, v0, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mAlgo_type:I

    .line 1201
    iget v2, p0, mQualcomm_onchannel:I

    iput v2, p0, mCnt_th:I

    .line 1202
    iget v2, p0, mQualcomm_offchannel:I

    iput v2, p0, mCnt_th_2:I

    .line 1203
    iget v2, p0, mQualcomm_sinr_samplecnt:I

    iput v2, p0, mRssi_th_2:I

    .line 1204
    iget v2, p0, mQualcomm_cfoth12:I

    iput v2, p0, mCf0_th12:I

    .line 1205
    iget v2, p0, mQualcomm_af_rmssith:I

    iput v2, p0, mAfRmssith_th:I

    .line 1206
    iget v2, p0, mQualcomm_af_rmssisamplecnt:I

    iput v2, p0, mAfRmssisampleCnt_th:I

    .line 1207
    const-string v2, "-110"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mgoodChrmssi_th:I

    goto/16 :goto_44

    .line 1210
    :cond_254
    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mRssi_th:I

    .line 1211
    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mSnr_th:I

    .line 1212
    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mCnt_th:I

    .line 1213
    iget v2, p0, mChipVendor:I

    if-ne v2, v5, :cond_44

    .line 1214
    const-string/jumbo v2, "service.brcm.fm.start_mute"

    aget-object v3, v0, v8

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string/jumbo v2, "service.brcm.fm.set_blndmute"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_44

    .line 1222
    :pswitch_282
    iget v2, p0, mChipVendor:I

    if-ne v2, v7, :cond_2c8

    .line 1223
    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mRssi_th:I

    .line 1224
    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mSnr_th_2:I

    .line 1225
    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mSnr_th:I

    .line 1226
    aget-object v2, v0, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mAlgo_type:I

    .line 1227
    aget-object v2, v0, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mgoodChrmssi_th:I

    .line 1228
    iget v2, p0, mQualcomm_onchannel:I

    iput v2, p0, mCnt_th:I

    .line 1229
    iget v2, p0, mQualcomm_offchannel:I

    iput v2, p0, mCnt_th_2:I

    .line 1230
    iget v2, p0, mQualcomm_sinr_samplecnt:I

    iput v2, p0, mRssi_th_2:I

    .line 1231
    iget v2, p0, mQualcomm_cfoth12:I

    iput v2, p0, mCf0_th12:I

    .line 1232
    iget v2, p0, mQualcomm_af_rmssith:I

    iput v2, p0, mAfRmssith_th:I

    .line 1233
    iget v2, p0, mQualcomm_af_rmssisamplecnt:I

    iput v2, p0, mAfRmssisampleCnt_th:I

    goto/16 :goto_44

    .line 1235
    :cond_2c8
    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mRssi_th:I

    .line 1236
    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mSnr_th:I

    .line 1237
    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mCnt_th:I

    .line 1238
    iget v2, p0, mChipVendor:I

    if-ne v2, v5, :cond_44

    .line 1239
    const-string/jumbo v2, "service.brcm.fm.start_snr"

    aget-object v3, v0, v8

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    const-string/jumbo v2, "service.brcm.fm.stop_snr"

    aget-object v3, v0, v7

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    const-string/jumbo v2, "service.brcm.fm.set_blndmute"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_44

    .line 1248
    :pswitch_2fe
    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mRssi_th:I

    .line 1249
    aget-object v2, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mSnr_th:I

    .line 1250
    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mCnt_th:I

    .line 1253
    aget-object v2, v0, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mRssi_th_2:I

    .line 1254
    aget-object v2, v0, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mSnr_th_2:I

    .line 1255
    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, mCnt_th_2:I

    goto/16 :goto_44

    .line 1134
    nop

    :pswitch_data_332
    .packed-switch 0x1
        :pswitch_130
        :pswitch_1ae
        :pswitch_1f4
        :pswitch_20e
        :pswitch_282
        :pswitch_2fe
    .end packed-switch
.end method

.method private registerAlarmListener()V
    .registers 4

    .prologue
    .line 1037
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1038
    .local v0, "intentAlarmFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1039
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1040
    const-string/jumbo v1, "registering Alarm play listener"

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 1041
    return-void
.end method

.method private registerAllSoundOffListener()V
    .registers 4

    .prologue
    .line 1004
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1005
    .local v0, "intentAllSoundOffFilter":Landroid/content/IntentFilter;
    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1006
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1007
    const-string/jumbo v1, "registering AllSoundOff listener"

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 1008
    return-void
.end method

.method private registerBatteryListener()V
    .registers 4

    .prologue
    .line 1441
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1444
    .local v0, "intentFilterBattery":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1445
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1446
    const-string/jumbo v1, "registering low battery listener"

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 1447
    return-void
.end method

.method private registerEmergencyStateChangedListener()V
    .registers 4

    .prologue
    .line 1066
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1067
    .local v0, "intentEmergencyFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1068
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mEmergencyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1069
    const-string/jumbo v1, "registering Emergency State Changed Listener"

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 1070
    return-void
.end method

.method private registerMusicCommandRec()V
    .registers 4

    .prologue
    .line 1885
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1886
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1887
    const-string/jumbo v1, "music command reciever registered"

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 1894
    return-void
.end method

.method private registerSetPropertyListener()V
    .registers 6

    .prologue
    .line 1472
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1473
    .local v0, "intentFilterSetProperty":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.fm.set_property"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1474
    const-string v1, "com.sec.android.app.fm.set_volume"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1475
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, SetPropertyPermission:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1476
    const-string/jumbo v1, "registering set property listener"

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 1477
    return-void
.end method

.method private registerSystemListener()V
    .registers 4

    .prologue
    .line 1455
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1456
    .local v0, "intentSystemFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1457
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1459
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentSystemFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1460
    .restart local v0    # "intentSystemFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1461
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1462
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1463
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1464
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mSystemReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1465
    return-void
.end method

.method private registerTelephonyListener()V
    .registers 6

    .prologue
    .line 1905
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1907
    .local v0, "id":J
    :try_start_4
    iget-object v2, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_17

    .line 1909
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1916
    const-string/jumbo v2, "registering telephony listener.."

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 1917
    return-void

    .line 1909
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private releaseWakeLock()V
    .registers 2

    .prologue
    .line 1990
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1991
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1992
    const-string v0, "Lock is released"

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 1994
    :cond_12
    return-void
.end method

.method private remove(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    .registers 8
    .param p1, "listener"    # Lcom/samsung/media/fmradio/internal/IFMEventListener;

    .prologue
    .line 2149
    iget-object v3, p0, mListeners:Ljava/util/Vector;

    if-eqz v3, :cond_c

    iget-object v3, p0, mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_d

    .line 2162
    :cond_c
    :goto_c
    return-void

    .line 2152
    :cond_d
    iget-object v4, p0, mListeners:Ljava/util/Vector;

    monitor-enter v4

    .line 2153
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    :try_start_11
    iget-object v3, p0, mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_4f

    .line 2154
    iget-object v3, p0, mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    .line 2155
    .local v2, "record":Lcom/android/server/FMRadioService$ListenerRecord;
    iget-object v3, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_4c

    .line 2156
    iget-object v3, p0, mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/FMRadioService$ListenerRecord;

    .line 2157
    .local v0, "delRecord":Lcom/android/server/FMRadioService$ListenerRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadioService] deleted Listener :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 2158
    monitor-exit v4

    goto :goto_c

    .line 2161
    .end local v0    # "delRecord":Lcom/android/server/FMRadioService$ListenerRecord;
    .end local v2    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :catchall_49
    move-exception v3

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_11 .. :try_end_4b} :catchall_49

    throw v3

    .line 2153
    .restart local v2    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2161
    .end local v2    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_4f
    :try_start_4f
    monitor-exit v4
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_49

    goto :goto_c
.end method

.method private respondAudioFocusChangeForDns(I)V
    .registers 5
    .param p1, "focusChange"    # I

    .prologue
    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "respondAudioFocusChangeForDns()-focusChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " streamingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mInternetStreamingMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 505
    iget-boolean v1, p0, mInternetStreamingMode:Z

    if-nez v1, :cond_28

    .line 523
    :goto_27
    return-void

    .line 507
    :cond_28
    const/4 v0, 0x0

    .line 508
    .local v0, "action":Ljava/lang/String;
    packed-switch p1, :pswitch_data_40

    .line 522
    :goto_2c
    :pswitch_2c
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_27

    .line 510
    :pswitch_37
    const-string v0, "com.sec.android.app.dns.action.stop_internet_stream"

    .line 511
    goto :goto_2c

    .line 514
    :pswitch_3a
    const-string v0, "com.sec.android.app.dns.action.pause_internet_stream"

    .line 515
    goto :goto_2c

    .line 517
    :pswitch_3d
    const-string v0, "com.sec.android.app.dns.action.resume_internet_stream"

    .line 518
    goto :goto_2c

    .line 508
    :pswitch_data_40
    .packed-switch -0x3
        :pswitch_3a
        :pswitch_3a
        :pswitch_37
        :pswitch_2c
        :pswitch_3d
    .end packed-switch
.end method

.method private responedFocusEvent(I)V
    .registers 14
    .param p1, "focusEvent"    # I

    .prologue
    const-wide/16 v10, -0x2

    const/16 v8, 0xc8

    const/16 v4, 0xb

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 527
    packed-switch p1, :pswitch_data_1c8

    .line 655
    :cond_b
    :goto_b
    :pswitch_b
    return-void

    .line 530
    :pswitch_c
    invoke-virtual {p0}, isOn()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 531
    iget-boolean v1, p0, mScanProgress:Z

    if-eqz v1, :cond_30

    .line 532
    iget-wide v2, p0, mScanFreq:J

    iput-wide v2, p0, mNeedResumeToFreq:J

    .line 537
    :goto_1a
    iget-boolean v1, p0, volumeLock:Z

    if-eqz v1, :cond_37

    .line 538
    const-string v1, "AUDIOFOCUS_LOSS - recoding O"

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 539
    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, notifyEvent(ILjava/lang/Object;)V

    .line 545
    :goto_29
    invoke-direct {p0, p1}, respondAudioFocusChangeForDns(I)V

    .line 546
    invoke-direct {p0, v6, v4, v6}, offInternal(ZIZ)Z

    goto :goto_b

    .line 534
    :cond_30
    invoke-virtual {p0}, getCurrentChannel()J

    move-result-wide v2

    iput-wide v2, p0, mNeedResumeToFreq:J

    goto :goto_1a

    .line 543
    :cond_37
    const-string v1, "AUDIOFOCUS_LOSS - recoding X"

    invoke-static {v1}, log(Ljava/lang/String;)V

    goto :goto_29

    .line 547
    :cond_3d
    iget-boolean v1, p0, mOnProgress:Z

    if-eqz v1, :cond_b

    .line 548
    const-string/jumbo v1, "still in progress"

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    iget-object v1, p0, mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    .line 556
    :pswitch_52
    invoke-virtual {p0}, isOn()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 557
    iget-boolean v1, p0, mScanProgress:Z

    if-eqz v1, :cond_72

    .line 558
    iget-wide v2, p0, mScanFreq:J

    iput-wide v2, p0, mNeedResumeToFreq:J

    .line 570
    :goto_60
    iget-boolean v1, p0, volumeLock:Z

    if-eqz v1, :cond_85

    .line 571
    iget-boolean v1, p0, mIsphoneCallRinging:Z

    if-eqz v1, :cond_79

    iget-boolean v1, p0, mIsKeepRecoding:Z

    if-eqz v1, :cond_79

    .line 572
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding O - call Ringing"

    invoke-static {v1}, log(Ljava/lang/String;)V

    goto :goto_b

    .line 560
    :cond_72
    invoke-virtual {p0}, getCurrentChannel()J

    move-result-wide v2

    iput-wide v2, p0, mNeedResumeToFreq:J

    goto :goto_60

    .line 574
    :cond_79
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding O"

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 575
    invoke-direct {p0, p1}, respondAudioFocusChangeForDns(I)V

    .line 576
    invoke-direct {p0, v6, v4, v7}, offInternal(ZIZ)Z

    goto :goto_b

    .line 579
    :cond_85
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT - recoding X"

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 580
    invoke-direct {p0, v6, v4, v7}, offInternal(ZIZ)Z

    .line 581
    invoke-direct {p0, p1}, respondAudioFocusChangeForDns(I)V

    goto/16 :goto_b

    .line 584
    :cond_92
    iget-boolean v1, p0, mOnProgress:Z

    if-eqz v1, :cond_b

    .line 585
    iget-object v1, p0, mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 586
    iget-object v1, p0, mAudioFocusHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 591
    :pswitch_a2
    invoke-virtual {p0}, isOn()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 592
    iget-boolean v1, p0, volumeLock:Z

    if-eqz v1, :cond_b3

    .line 593
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding O"

    invoke-static {v1}, log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 595
    :cond_b3
    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding X"

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 596
    iget-boolean v1, p0, mScanProgress:Z

    if-eqz v1, :cond_c8

    .line 597
    iget-wide v2, p0, mScanFreq:J

    iput-wide v2, p0, mNeedResumeToFreq:J

    .line 601
    :goto_c0
    invoke-direct {p0, v6, v4, v7}, offInternal(ZIZ)Z

    .line 602
    invoke-direct {p0, p1}, respondAudioFocusChangeForDns(I)V

    goto/16 :goto_b

    .line 599
    :cond_c8
    invoke-virtual {p0}, getCurrentChannel()J

    move-result-wide v2

    iput-wide v2, p0, mNeedResumeToFreq:J

    goto :goto_c0

    .line 609
    :pswitch_cf
    invoke-virtual {p0}, isOn()Z

    move-result v1

    if-nez v1, :cond_b

    iget-wide v2, p0, mNeedResumeToFreq:J

    cmp-long v1, v2, v10

    if-eqz v1, :cond_b

    iget-boolean v1, p0, mIsForcestop:Z

    if-nez v1, :cond_b

    .line 610
    invoke-direct {p0, p1}, respondAudioFocusChangeForDns(I)V

    .line 611
    invoke-direct {p0, v7}, on(Z)Z

    move-result v1

    if-eqz v1, :cond_1c1

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAudioFocusChangeListener switch on mNeedResumeToFreq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, mNeedResumeToFreq:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 614
    iget-object v1, p0, mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    .line 617
    sget-boolean v1, mIsTransientPaused:Z

    if-eqz v1, :cond_1ad

    .line 618
    iget-object v1, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, mResumeVol:J

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slowly increase the volume till :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, mResumeVol:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 620
    iget-wide v2, p0, mResumeVol:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1a0

    .line 621
    iget-wide v2, p0, mResumeVol:J

    iput-wide v2, p0, mCurrentResumeVol:J

    .line 622
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, setVolume(J)V

    .line 623
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 624
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 630
    :goto_152
    sput-boolean v7, mIsTransientPaused:Z

    .line 639
    :goto_154
    iget-wide v2, p0, mNeedResumeToFreq:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_161

    .line 640
    const-wide/32 v2, 0x155cc

    iput-wide v2, p0, mNeedResumeToFreq:J

    .line 642
    :cond_161
    iget-object v1, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    iget-wide v2, p0, mNeedResumeToFreq:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/FMPlayerNative;->tune(J)V

    .line 643
    const/4 v1, 0x7

    iget-wide v2, p0, mNeedResumeToFreq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, notifyEvent(ILjava/lang/Object;)V

    .line 644
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.app.fm.auto.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "freq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, mNeedResumeToFreq:J

    long-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 647
    iput-wide v10, p0, mNeedResumeToFreq:J

    goto/16 :goto_b

    .line 626
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1a0
    iget-object v1, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v2

    iget-wide v4, p0, mResumeVol:J

    long-to-int v3, v4

    invoke-virtual {v1, v2, v3, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_152

    .line 632
    :cond_1ad
    iget-object v1, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v2

    iget-object v3, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-static {v6}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v1, v2, v3, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_154

    .line 649
    :cond_1c1
    const-string v1, "Not able to resume FM player"

    invoke-static {v1}, log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 527
    :pswitch_data_1c8
    .packed-switch -0x3
        :pswitch_a2
        :pswitch_52
        :pswitch_c
        :pswitch_b
        :pswitch_cf
    .end packed-switch
.end method

.method private sendFMOFFBroadcast()V
    .registers 3

    .prologue
    .line 2121
    const-string v1, "Sending broadcast FM is in OFF state"

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 2122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.fm.player_lock.status.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2123
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2124
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2125
    return-void
.end method

.method private sendStopMusicCommandBroadcast()V
    .registers 4

    .prologue
    .line 1897
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1898
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "command"

    const-string/jumbo v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1899
    const-string v1, "from"

    const-string v2, "com.sec.android.app.fm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1900
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1901
    const-string/jumbo v1, "music command stop sent .."

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 1902
    return-void
.end method

.method private setSignalSetting(III)V
    .registers 5
    .param p1, "rssi"    # I
    .param p2, "snr"    # I
    .param p3, "cnt"    # I

    .prologue
    .line 2848
    iget-boolean v0, p0, mIsOn:Z

    if-nez v0, :cond_5

    .line 2854
    :goto_4
    return-void

    .line 2851
    :cond_5
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setRSSI_th(I)V

    .line 2852
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p2}, Lcom/android/server/FMPlayerNative;->setSNR_th(I)V

    .line 2853
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p3}, Lcom/android/server/FMPlayerNative;->setCnt_th(I)V

    goto :goto_4
.end method

.method private stopInternetStreaming()V
    .registers 5

    .prologue
    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopInternetStreaming() - streamingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mInternetStreamingMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 492
    sget-boolean v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-eqz v1, :cond_1e

    .line 500
    :goto_1d
    return-void

    .line 495
    :cond_1e
    :try_start_1e
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.dns.action.stop_internet_stream"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 496
    const-wide/16 v2, 0x96

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_2f} :catch_30

    goto :goto_1d

    .line 497
    :catch_30
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1d
.end method

.method private unRegisterBatteryListener()V
    .registers 3

    .prologue
    .line 1450
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1451
    const-string/jumbo v0, "unregistering low battery listener"

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 1452
    return-void
.end method

.method private unRegisterMusicCommandRec()V
    .registers 3

    .prologue
    .line 2144
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2145
    const-string/jumbo v0, "music command reciever un-registered"

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 2146
    return-void
.end method

.method private unRegisterSetPropertyListener()V
    .registers 3

    .prologue
    .line 1480
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1481
    const-string/jumbo v0, "unregistering set property listener"

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 1482
    return-void
.end method

.method private unRegisterTelephonyListener()V
    .registers 6

    .prologue
    .line 1920
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1922
    .local v0, "id":J
    :try_start_4
    iget-object v2, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_16

    .line 1924
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1928
    const-string/jumbo v2, "unregistering telephony listener"

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 1929
    return-void

    .line 1924
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private unregisterAlarmListener()V
    .registers 3

    .prologue
    .line 1044
    const-string v0, "Unregistering Alarm play listener"

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1046
    return-void
.end method

.method private unregisterAllSoundOffListener()V
    .registers 3

    .prologue
    .line 1011
    const-string v0, "Unregistering AllSoundOff listener"

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1013
    return-void
.end method

.method private unregisterEmegencyStateChangedListener()V
    .registers 3

    .prologue
    .line 1073
    const-string v0, "Unregistering Emergency State Changed Listener"

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mEmergencyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1075
    return-void
.end method

.method private unregisterSystemListener()V
    .registers 3

    .prologue
    .line 1468
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1469
    return-void
.end method

.method private writeFile(Z)V
    .registers 7
    .param p1, "isFmRadioOn"    # Z

    .prologue
    .line 2806
    if-eqz p1, :cond_44

    iget-object v2, p0, mFmOn:Ljava/lang/String;

    .line 2808
    .local v2, "value":Ljava/lang/String;
    :goto_4
    sget-boolean v3, DEBUGGABLE:Z

    if-eqz v3, :cond_1f

    .line 2809
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeFile: value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 2812
    :cond_1f
    :try_start_1f
    iget-object v3, p0, fos:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_43

    .line 2813
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeFile: data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 2814
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2815
    .local v0, "bvalue":[B
    iget-object v3, p0, fos:Ljava/io/FileOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_43} :catch_47

    .line 2820
    .end local v0    # "bvalue":[B
    :cond_43
    :goto_43
    return-void

    .line 2806
    .end local v2    # "value":Ljava/lang/String;
    :cond_44
    iget-object v2, p0, mFmOff:Ljava/lang/String;

    goto :goto_4

    .line 2817
    .restart local v2    # "value":Ljava/lang/String;
    :catch_47
    move-exception v1

    .line 2818
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43
.end method


# virtual methods
.method public SetIsOn(Z)V
    .registers 2
    .param p1, "IsOn"    # Z

    .prologue
    .line 2009
    iput-boolean p1, p0, mIsOn:Z

    .line 2010
    return-void
.end method

.method public SkipTuning_Value()V
    .registers 3

    .prologue
    .line 2597
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsSkipTunigVal:Z

    .line 2598
    const-string v0, "FMRadioService"

    const-string v1, "SkipTuning_Value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    return-void
.end method

.method public cancelAFSwitching()V
    .registers 2

    .prologue
    .line 2305
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->cancelAFSwitching()V

    .line 2306
    return-void
.end method

.method public cancelScan()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 2192
    :try_start_1
    iget-boolean v2, p0, mScanProgress:Z

    if-eqz v2, :cond_1f

    .line 2193
    const/4 v2, 0x0

    iput-boolean v2, p0, mScanProgress:Z

    .line 2194
    iget-object v2, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2}, Lcom/android/server/FMPlayerNative;->cancelSeek()V

    .line 2196
    iget-object v2, p0, mScanChannelList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1e

    .line 2197
    const/4 v2, 0x4

    iget-object v3, p0, mScanChannelList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, notifyEvent(ILjava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_20

    .line 2199
    :cond_1e
    const/4 v1, 0x1

    .line 2205
    :cond_1f
    :goto_1f
    return v1

    .line 2202
    :catch_20
    move-exception v0

    .line 2203
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public cancelSeek()V
    .registers 2

    .prologue
    .line 1619
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->cancelSeek()V

    .line 1620
    return-void
.end method

.method public disableAF()V
    .registers 2

    .prologue
    .line 2275
    const/4 v0, 0x0

    iput-boolean v0, p0, mAFEnable:Z

    .line 2276
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->disableAF()V

    .line 2277
    invoke-direct {p0}, checkForWakeLockRelease()V

    .line 2278
    return-void
.end method

.method public disableDNS()V
    .registers 2

    .prologue
    .line 2255
    const/4 v0, 0x0

    iput-boolean v0, p0, mDNSEnable:Z

    .line 2256
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->disableDNS()V

    .line 2257
    invoke-direct {p0}, checkForWakeLockRelease()V

    .line 2258
    return-void
.end method

.method public disableRDS()V
    .registers 3

    .prologue
    .line 2238
    const/4 v0, 0x0

    iput-boolean v0, p0, mRDSEnable:Z

    .line 2239
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->disableRDS()V

    .line 2240
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, notifyEvent(ILjava/lang/Object;)V

    .line 2241
    invoke-direct {p0}, checkForWakeLockRelease()V

    .line 2242
    return-void
.end method

.method public enableAF()V
    .registers 2

    .prologue
    .line 2265
    iget-boolean v0, p0, mAFEnable:Z

    if-eqz v0, :cond_a

    .line 2266
    const-string v0, "AF is already enabled"

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 2272
    :goto_9
    return-void

    .line 2269
    :cond_a
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->enableAF()V

    .line 2270
    const/4 v0, 0x1

    iput-boolean v0, p0, mAFEnable:Z

    .line 2271
    invoke-direct {p0}, acquireWakeLock()V

    goto :goto_9
.end method

.method public enableDNS()V
    .registers 2

    .prologue
    .line 2245
    iget-boolean v0, p0, mDNSEnable:Z

    if-eqz v0, :cond_a

    .line 2246
    const-string v0, "DNS is already enabled"

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 2252
    :goto_9
    return-void

    .line 2249
    :cond_a
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->enableDNS()V

    .line 2250
    const/4 v0, 0x1

    iput-boolean v0, p0, mDNSEnable:Z

    .line 2251
    invoke-direct {p0}, acquireWakeLock()V

    goto :goto_9
.end method

.method public enableRDS()V
    .registers 3

    .prologue
    .line 2227
    iget-boolean v0, p0, mRDSEnable:Z

    if-eqz v0, :cond_a

    .line 2228
    const-string v0, "RDS is already enabled"

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 2235
    :goto_9
    return-void

    .line 2231
    :cond_a
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->enableRDS()V

    .line 2232
    const/4 v0, 0x1

    iput-boolean v0, p0, mRDSEnable:Z

    .line 2233
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, notifyEvent(ILjava/lang/Object;)V

    .line 2234
    invoke-direct {p0}, acquireWakeLock()V

    goto :goto_9
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2824
    invoke-super {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->finalize()V

    .line 2826
    :try_start_3
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_14

    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2827
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2830
    :cond_14
    invoke-direct {p0}, unregisterSystemListener()V

    .line 2831
    invoke-direct {p0}, unRegisterSetPropertyListener()V

    .line 2833
    const/4 v0, 0x0

    iput-boolean v0, p0, mScanProgress:Z

    .line 2834
    const/4 v0, 0x0

    iput-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2835
    const/4 v0, 0x0

    iput-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    .line 2836
    const/4 v0, 0x0

    iput-object v0, p0, mListeners:Ljava/util/Vector;

    .line 2837
    const/4 v0, 0x0

    iput-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    .line 2838
    const/4 v0, 0x0

    iput-object v0, p0, mScanChannelList:Ljava/util/ArrayList;

    .line 2840
    const/4 v0, 0x0

    iput-object v0, p0, mAudioManager:Landroid/media/AudioManager;
    :try_end_2f
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_2f} :catch_30

    .line 2845
    :goto_2f
    return-void

    .line 2842
    :catch_30
    move-exception v0

    goto :goto_2f
.end method

.method public getAFRMSSISamples()I
    .registers 2

    .prologue
    .line 2735
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAFRMSSISamples()I

    move-result v0

    return v0
.end method

.method public getAFRMSSIThreshold()I
    .registers 2

    .prologue
    .line 2727
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAFRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method public getAFValid_th()I
    .registers 2

    .prologue
    .line 2638
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAFValid_th()I

    move-result v0

    return v0
.end method

.method public getAF_th()I
    .registers 2

    .prologue
    .line 2630
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getAF_th()I

    move-result v0

    return v0
.end method

.method public getCFOTh12()I
    .registers 2

    .prologue
    .line 2703
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCFOTh12()I

    move-result v0

    return v0
.end method

.method public getCnt_th()I
    .registers 2

    .prologue
    .line 2610
    iget v0, p0, mCnt_th:I

    return v0
.end method

.method public getCnt_th_2()I
    .registers 2

    .prologue
    .line 2622
    iget v0, p0, mCnt_th_2:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1347
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentChannel()J
    .registers 3

    .prologue
    .line 1668
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCurrentChannel()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentRSSI()J
    .registers 3

    .prologue
    .line 2183
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCurrentRSSI()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentSNR()J
    .registers 3

    .prologue
    .line 2187
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getCurrentSNR()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGoodChannelRMSSIThreshold()I
    .registers 2

    .prologue
    .line 2743
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getGoodChannelRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method public getHybridSearch()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2752
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getHybridSearch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastScanResult()[J
    .registers 4

    .prologue
    .line 1559
    iget-object v1, p0, mScanChannelList:Ljava/util/ArrayList;

    if-eqz v1, :cond_14

    .line 1561
    iget-object v1, p0, mScanChannelList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 1562
    .local v0, "arryL":[Ljava/lang/Long;
    invoke-direct {p0, v0}, convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v1

    .line 1565
    .end local v0    # "arryL":[Ljava/lang/Long;
    :goto_13
    return-object v1

    .line 1564
    :cond_14
    const-string v1, "getLastScanResult - mScanChannelList null"

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 1565
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getMaxVolume()J
    .registers 3

    .prologue
    .line 1986
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getMaxVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffChannelThreshold()I
    .registers 2

    .prologue
    .line 2687
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getOffChannelThreshold()I

    move-result v0

    return v0
.end method

.method public getOnChannelThreshold()I
    .registers 2

    .prologue
    .line 2679
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getOnChannelThreshold()I

    move-result v0

    return v0
.end method

.method public getRMSSIFirstStage()I
    .registers 2

    .prologue
    .line 2711
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getRMSSIFirstStage()I

    move-result v0

    return v0
.end method

.method public getRSSI_th()I
    .registers 2

    .prologue
    .line 2602
    iget v0, p0, mRssi_th:I

    return v0
.end method

.method public getRSSI_th_2()I
    .registers 2

    .prologue
    .line 2614
    iget v0, p0, mRssi_th_2:I

    return v0
.end method

.method public getSINRFirstStage()I
    .registers 2

    .prologue
    .line 2719
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSINRFirstStage()I

    move-result v0

    return v0
.end method

.method public getSINRSamples()I
    .registers 2

    .prologue
    .line 2671
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSINRSamples()I

    move-result v0

    return v0
.end method

.method public getSINRThreshold()I
    .registers 2

    .prologue
    .line 2695
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSINRThreshold()I

    move-result v0

    return v0
.end method

.method public getSNR_th()I
    .registers 2

    .prologue
    .line 2606
    iget v0, p0, mSnr_th:I

    return v0
.end method

.method public getSNR_th_2()I
    .registers 2

    .prologue
    .line 2618
    iget v0, p0, mSnr_th_2:I

    return v0
.end method

.method public getSearchAlgoType()I
    .registers 2

    .prologue
    .line 2663
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSearchAlgoType()I

    move-result v0

    return v0
.end method

.method public getSeekDC()I
    .registers 2

    .prologue
    .line 2761
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSeekDC()I

    move-result v0

    return v0
.end method

.method public getSeekQA()I
    .registers 2

    .prologue
    .line 2769
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSeekQA()I

    move-result v0

    return v0
.end method

.method public getSoftMuteMode()Z
    .registers 2

    .prologue
    .line 2650
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getSoftMuteMode()Z

    move-result v0

    return v0
.end method

.method public getVolume()J
    .registers 3

    .prologue
    .line 1974
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->getVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAFEnable()Z
    .registers 2

    .prologue
    .line 2301
    iget-boolean v0, p0, mAFEnable:Z

    return v0
.end method

.method public isAirPlaneMode()Z
    .registers 2

    .prologue
    .line 1664
    iget-boolean v0, p0, mAirPlaneEnabled:Z

    return v0
.end method

.method public isBatteryLow()Z
    .registers 2

    .prologue
    .line 1640
    iget-boolean v0, p0, mIsBatteryLow:Z

    return v0
.end method

.method public isBusy()I
    .registers 2

    .prologue
    .line 1624
    iget-boolean v0, p0, mScanProgress:Z

    if-eqz v0, :cond_6

    .line 1625
    const/4 v0, 0x1

    .line 1627
    :goto_5
    return v0

    :cond_6
    const/4 v0, -0x1

    goto :goto_5
.end method

.method public isDNSEnable()Z
    .registers 2

    .prologue
    .line 2261
    iget-boolean v0, p0, mDNSEnable:Z

    return v0
.end method

.method public isHeadsetPlugged()Z
    .registers 2

    .prologue
    .line 1631
    iget-boolean v0, p0, mIsHeadsetPlugged:Z

    return v0
.end method

.method public isOn()Z
    .registers 2

    .prologue
    .line 2005
    iget-boolean v0, p0, mIsOn:Z

    return v0
.end method

.method public isRDSEnable()Z
    .registers 2

    .prologue
    .line 2297
    iget-boolean v0, p0, mRDSEnable:Z

    return v0
.end method

.method public isScanning()Z
    .registers 2

    .prologue
    .line 2175
    iget-boolean v0, p0, mScanProgress:Z

    return v0
.end method

.method public isSeeking()Z
    .registers 2

    .prologue
    .line 2179
    iget-boolean v0, p0, mIsSeeking:Z

    return v0
.end method

.method public isTvOutPlugged()Z
    .registers 2

    .prologue
    .line 1635
    iget-boolean v0, p0, mIsTvOutPlugged:Z

    return v0
.end method

.method public mute(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 1542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mute - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 1544
    if-eqz p1, :cond_29

    .line 1545
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_radio_mute=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1547
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->muteOn()V

    .line 1548
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsMute:Z

    .line 1556
    :goto_28
    return-void

    .line 1550
    :cond_29
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->muteOff()V

    .line 1551
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    const-string v1, "fm_radio_mute=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1554
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsMute:Z

    goto :goto_28
.end method

.method public notifyEvent(ILjava/lang/Object;)V
    .registers 25
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 2340
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsOn:Z

    if-eqz v2, :cond_25

    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_25

    .line 2341
    const-string v15, "fmradio_turnon=true"

    .line 2342
    .local v15, "keyValuePairs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v15}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2343
    const-string/jumbo v2, "notifyEvent Turning on FM radio"

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2347
    if-eqz p2, :cond_25

    move-object/from16 v2, p2

    .line 2348
    check-cast v2, Ljava/lang/Long;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, sendFMStatusBroadcast(Ljava/lang/Long;)V

    .line 2351
    .end local v15    # "keyValuePairs":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    if-eqz v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_36

    .line 2546
    :cond_35
    :goto_35
    return-void

    .line 2355
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, mListeners:Ljava/util/Vector;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 2356
    :try_start_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2357
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v20

    .line 2358
    .local v20, "size":I
    add-int/lit8 v14, v20, -0x1

    .local v14, "i":I
    :goto_65
    if-ltz v14, :cond_676

    .line 2359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_3d .. :try_end_7d} :catchall_120

    .line 2361
    packed-switch p1, :pswitch_data_67a

    .line 2358
    :cond_80
    :goto_80
    add-int/lit8 v14, v14, -0x1

    goto :goto_65

    .line 2364
    :pswitch_83
    :try_start_83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_POWER_ON to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2366
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onOn()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_c3} :catch_c4
    .catchall {:try_start_83 .. :try_end_c3} :catchall_120

    goto :goto_80

    .line 2536
    :catch_c4
    move-exception v10

    .line 2537
    .local v10, "e":Ljava/lang/Exception;
    :try_start_c5
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 2538
    const-string v3, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "we loose "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " listener--ignore it :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, remove(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V

    .line 2542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove done go for next i\'s value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2545
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v14    # "i":I
    .end local v20    # "size":I
    :catchall_120
    move-exception v2

    monitor-exit v21
    :try_end_122
    .catchall {:try_start_c5 .. :try_end_122} :catchall_120

    throw v2

    .line 2370
    .restart local v14    # "i":I
    .restart local v20    # "size":I
    :pswitch_123
    :try_start_123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_POWER_OFF to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2372
    const/16 v18, -0x1

    .line 2373
    .local v18, "reasonCode":I
    if-eqz p2, :cond_161

    .line 2374
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 2375
    :cond_161
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onOff(I)V

    goto/16 :goto_80

    .line 2380
    .end local v18    # "reasonCode":I
    :pswitch_174
    const-wide/16 v12, 0x0

    .line 2381
    .local v12, "freq":J
    if-eqz p2, :cond_181

    .line 2382
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2384
    :cond_181
    sget-boolean v2, DEBUGGABLE:Z

    if-eqz v2, :cond_1c0

    .line 2385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_CHANNEL_FOUND to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : with freq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2388
    :cond_1c0
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v12, v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onChannelFound(J)V

    goto/16 :goto_80

    .line 2392
    .end local v12    # "freq":J
    :pswitch_1d1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_SCAN_STARTED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2394
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onScanStarted()V

    goto/16 :goto_80

    .line 2401
    :pswitch_213
    if-eqz p2, :cond_271

    .line 2402
    move-object/from16 v0, p2

    check-cast v0, [Ljava/lang/Long;

    move-object v2, v0

    move-object v0, v2

    check-cast v0, [Ljava/lang/Long;

    move-object v9, v0

    .line 2403
    .local v9, "Ifreq":[Ljava/lang/Long;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v11

    .line 2404
    .local v11, "freqArry":[J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_SCAN_STOPPED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : with data array:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2407
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v11}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onScanStopped([J)V

    goto/16 :goto_80

    .line 2409
    .end local v9    # "Ifreq":[Ljava/lang/Long;
    .end local v11    # "freqArry":[J
    :cond_271
    const-string/jumbo v2, "notifying : EVENT_SCAN_STOPPED : data is null !!!"

    invoke-static {v2}, log(Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2414
    :pswitch_279
    if-eqz p2, :cond_2d7

    .line 2415
    move-object/from16 v0, p2

    check-cast v0, [Ljava/lang/Long;

    move-object v2, v0

    move-object v0, v2

    check-cast v0, [Ljava/lang/Long;

    move-object v9, v0

    .line 2416
    .restart local v9    # "Ifreq":[Ljava/lang/Long;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v11

    .line 2417
    .restart local v11    # "freqArry":[J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_SCAN_FINISHED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : with data array:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2420
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v11}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onScanFinished([J)V

    goto/16 :goto_80

    .line 2422
    .end local v9    # "Ifreq":[Ljava/lang/Long;
    .end local v11    # "freqArry":[J
    :cond_2d7
    const-string/jumbo v2, "notifying : EVENT_SCAN_FINISHED : data is null !!!"

    invoke-static {v2}, log(Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2427
    :pswitch_2df
    if-eqz p2, :cond_33a

    .line 2428
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2429
    .restart local v12    # "freq":J
    sget-boolean v2, DEBUGGABLE:Z

    if-eqz v2, :cond_329

    .line 2430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_TUNE to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : with data array:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2433
    :cond_329
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v12, v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onTune(J)V

    goto/16 :goto_80

    .line 2435
    .end local v12    # "freq":J
    :cond_33a
    const-string/jumbo v2, "notifying : EVENT_TUNE : data is null !!!"

    invoke-static {v2}, log(Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2440
    :pswitch_342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_EAR_PHONE_CONNECT to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2442
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->earPhoneConnected()V

    goto/16 :goto_80

    .line 2446
    :pswitch_384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_EAR_PHONE_DISCONNECT to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2448
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->earPhoneDisconnected()V

    goto/16 :goto_80

    .line 2452
    :pswitch_3c6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying : EVENT_RDS_EVENT : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2454
    if-eqz p2, :cond_41c

    .line 2455
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNative$RDSData;

    move-object/from16 v17, v0

    .line 2456
    .local v17, "rdsData":Lcom/android/server/FMPlayerNative$RDSData;
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/server/FMPlayerNative$RDSData;->mFreq:J

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/FMPlayerNative$RDSData;->mChannelName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/FMPlayerNative$RDSData;->mRadioText:Ljava/lang/String;

    invoke-interface {v2, v4, v5, v3, v6}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2459
    .end local v17    # "rdsData":Lcom/android/server/FMPlayerNative$RDSData;
    :cond_41c
    const-string/jumbo v2, "notifying : EVENT_RDS_EVENT : data is null !!!"

    invoke-static {v2}, log(Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2464
    :pswitch_424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_RTPLUS_EVENT to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2466
    if-eqz p2, :cond_486

    .line 2467
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNative$RTPlusData;

    move-object/from16 v19, v0

    .line 2468
    .local v19, "rtplusData":Lcom/android/server/FMPlayerNative$RTPlusData;
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mContentType1:I

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mStartPos1:I

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mAdditionalLen1:I

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mContentType2:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mStartPos2:I

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/server/FMPlayerNative$RTPlusData;->mAdditionalLen2:I

    invoke-interface/range {v2 .. v8}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onRTPlusReceived(IIIIII)V

    goto/16 :goto_80

    .line 2473
    .end local v19    # "rtplusData":Lcom/android/server/FMPlayerNative$RTPlusData;
    :cond_486
    const-string/jumbo v2, "notifying : EVENT_RTPLUS_EVENT : data is null !!!"

    invoke-static {v2}, log(Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2478
    :pswitch_48e
    if-eqz p2, :cond_4cf

    .line 2479
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/server/FMPlayerNative$PIECCData;

    move-object/from16 v16, v0

    .line 2480
    .local v16, "pieccData":Lcom/android/server/FMPlayerNative$PIECCData;
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/FMPlayerNative$PIECCData;->mPI:I

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/FMPlayerNative$PIECCData;->mECC:I

    invoke-interface {v2, v3, v4}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onPIECCReceived(II)V

    .line 2481
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_80

    move-object/from16 v0, p0

    iget-boolean v2, v0, mWaitPidDuringScanning:Z

    if-eqz v2, :cond_80

    move-object/from16 v0, p0

    iget-object v2, v0, mScanThread:Ljava/lang/Thread;

    if-eqz v2, :cond_80

    .line 2483
    move-object/from16 v0, p0

    iget-object v3, v0, mScanThread:Ljava/lang/Thread;

    monitor-enter v3
    :try_end_4c2
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_4c2} :catch_c4
    .catchall {:try_start_123 .. :try_end_4c2} :catchall_120

    .line 2484
    :try_start_4c2
    move-object/from16 v0, p0

    iget-object v2, v0, mScanThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 2485
    monitor-exit v3

    goto/16 :goto_80

    :catchall_4cc
    move-exception v2

    monitor-exit v3
    :try_end_4ce
    .catchall {:try_start_4c2 .. :try_end_4ce} :catchall_4cc

    :try_start_4ce
    throw v2

    .line 2488
    .end local v16    # "pieccData":Lcom/android/server/FMPlayerNative$PIECCData;
    :cond_4cf
    const-string/jumbo v2, "notifying : EVENT_PIECC_EVENT : data is null !!!"

    invoke-static {v2}, log(Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2493
    :pswitch_4d7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_RDS_ENABLED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2495
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onRDSEnabled()V

    goto/16 :goto_80

    .line 2499
    :pswitch_519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_RDS_DISABLED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2501
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onRDSDisabled()V

    goto/16 :goto_80

    .line 2505
    :pswitch_55b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_AF_STARTED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2507
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onAFStarted()V

    goto/16 :goto_80

    .line 2511
    :pswitch_59d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_AF_RECEIVED to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2513
    if-eqz p2, :cond_5ea

    .line 2514
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2515
    .restart local v12    # "freq":J
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2, v12, v13}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->onAFReceived(J)V

    goto/16 :goto_80

    .line 2517
    .end local v12    # "freq":J
    :cond_5ea
    const-string/jumbo v2, "notifying : EVENT_AF_RECEIVED : data is null !!!"

    invoke-static {v2}, log(Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2522
    :pswitch_5f2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_VOLUME_LOCK to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2524
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->volumeLock()V

    goto/16 :goto_80

    .line 2528
    :pswitch_634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifying :EVENT_REC_FINISH to : listener -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2530
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v2, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->recFinish()V
    :try_end_674
    .catch Ljava/lang/Exception; {:try_start_4ce .. :try_end_674} :catch_c4
    .catchall {:try_start_4ce .. :try_end_674} :catchall_120

    goto/16 :goto_80

    .line 2545
    :cond_676
    :try_start_676
    monitor-exit v21
    :try_end_677
    .catchall {:try_start_676 .. :try_end_677} :catchall_120

    goto/16 :goto_35

    .line 2361
    nop

    :pswitch_data_67a
    .packed-switch 0x1
        :pswitch_174
        :pswitch_1d1
        :pswitch_279
        :pswitch_213
        :pswitch_83
        :pswitch_123
        :pswitch_2df
        :pswitch_342
        :pswitch_384
        :pswitch_3c6
        :pswitch_4d7
        :pswitch_519
        :pswitch_55b
        :pswitch_59d
        :pswitch_5f2
        :pswitch_424
        :pswitch_634
        :pswitch_48e
    .end packed-switch
.end method

.method public notifyRecFinish()V
    .registers 4

    .prologue
    .line 3028
    const-string/jumbo v1, "notifyRecFinish EVENT_REC_FINISH"

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 3029
    const-string v0, "fmradio_recoding=off"

    .line 3030
    .local v0, "keyValuePairs":Ljava/lang/String;
    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, notifyEvent(ILjava/lang/Object;)V

    .line 3031
    iget-object v1, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3032
    return-void
.end method

.method public off()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2140
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, offInternal(ZIZ)Z

    move-result v0

    return v0
.end method

.method public on()Z
    .registers 2

    .prologue
    .line 1744
    const/4 v0, 0x1

    invoke-direct {p0, v0}, on(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized on_in_testmode()Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1698
    monitor-enter p0

    :try_start_3
    iget-boolean v4, p0, mAirPlaneEnabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_5a

    if-eqz v4, :cond_9

    .line 1740
    :cond_7
    :goto_7
    monitor-exit p0

    return v2

    .line 1701
    :cond_9
    :try_start_9
    iget-object v4, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eq v4, v3, :cond_7

    iget-object v4, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    .line 1705
    iget-boolean v4, p0, mIsOn:Z
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_5a

    if-eqz v4, :cond_20

    move v2, v3

    .line 1706
    goto :goto_7

    .line 1713
    :cond_20
    :try_start_20
    iget-object v4, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v4}, Lcom/android/server/FMPlayerNative;->on()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4e

    .line 1716
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, setSoftmute(Z)V

    .line 1717
    const/4 v4, 0x1

    iput-boolean v4, p0, mIsOn:Z

    .line 1718
    const/4 v4, 0x1

    iput-boolean v4, p0, mIsTestMode:Z

    .line 1719
    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, notifyEvent(ILjava/lang/Object;)V

    .line 1721
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, mute(Z)V

    .line 1723
    const-string v1, "fmradio_turnon=true"

    .line 1724
    .local v1, "keyValuePairs":Ljava/lang/String;
    iget-object v4, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1725
    const-string/jumbo v4, "on_in_testmode Turning on FM radio"

    invoke-static {v4}, log(Ljava/lang/String;)V

    move v2, v3

    .line 1730
    goto :goto_7

    .line 1733
    .end local v1    # "keyValuePairs":Ljava/lang/String;
    :cond_4e
    invoke-direct {p0}, releaseWakeLock()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_51} :catch_52
    .catchall {:try_start_20 .. :try_end_51} :catchall_5a

    goto :goto_7

    .line 1736
    :catch_52
    move-exception v0

    .line 1737
    .local v0, "e":Ljava/lang/Exception;
    :try_start_53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1738
    invoke-direct {p0}, releaseWakeLock()V
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_5a

    goto :goto_7

    .line 1698
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method registerMotionListener()V
    .registers 5

    .prologue
    .line 965
    const-string v0, "[FMRadioService] registerMotionListener "

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 967
    iget-object v1, p0, mMotionListener:Lcom/samsung/android/motion/MRListener;

    monitor-enter v1

    .line 968
    :try_start_8
    sget-object v0, mMotionSensorManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-nez v0, :cond_19

    .line 969
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "motion_recognition"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/motion/MotionRecognitionManager;

    sput-object v0, mMotionSensorManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 972
    :cond_19
    sget-object v0, mMotionSensorManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    iget-object v2, p0, mMotionListener:Lcom/samsung/android/motion/MRListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/motion/MotionRecognitionManager;->registerListenerEvent(Lcom/samsung/android/motion/MRListener;I)V

    .line 974
    monitor-exit v1

    .line 975
    return-void

    .line 974
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public removeListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/media/fmradio/internal/IFMEventListener;

    .prologue
    .line 1686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FMRadioService] (removeListener) :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 1687
    if-nez p1, :cond_19

    .line 1690
    :goto_18
    return-void

    .line 1689
    :cond_19
    invoke-direct {p0, p1}, remove(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V

    goto :goto_18
.end method

.method public scan()V
    .registers 2

    .prologue
    .line 2167
    iget-boolean v0, p0, mScanProgress:Z

    if-eqz v0, :cond_5

    .line 2172
    :goto_4
    return-void

    .line 2169
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, mScanProgress:Z

    .line 2170
    new-instance v0, Lcom/android/server/FMRadioService$ScanThread;

    invoke-direct {v0, p0}, Lcom/android/server/FMRadioService$ScanThread;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v0, p0, mScanThread:Ljava/lang/Thread;

    .line 2171
    iget-object v0, p0, mScanThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method

.method public searchAll()J
    .registers 3

    .prologue
    .line 2216
    iget-boolean v0, p0, mIsOn:Z

    if-eqz v0, :cond_b

    .line 2217
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->searchAll()J

    move-result-wide v0

    .line 2218
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method public searchDown()J
    .registers 3

    .prologue
    .line 2223
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->searchDown()J

    move-result-wide v0

    return-wide v0
.end method

.method public searchUp()J
    .registers 3

    .prologue
    .line 2209
    iget-boolean v0, p0, mIsOn:Z

    if-eqz v0, :cond_b

    .line 2210
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->searchUp()J

    move-result-wide v0

    .line 2211
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method public seekDown()J
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 1594
    iput-boolean v5, p0, mIsSeeking:Z

    .line 1597
    iget v3, p0, mChipVendor:I

    if-eq v3, v6, :cond_38

    .line 1598
    iget-object v3, p0, mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=1"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1604
    :goto_f
    iget-object v3, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v3}, Lcom/android/server/FMPlayerNative;->seekDown()J

    move-result-wide v0

    .line 1607
    .local v0, "freq":J
    iget v3, p0, mChipVendor:I

    if-eq v3, v6, :cond_2c

    iget-object v3, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-static {v5}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-lez v3, :cond_2c

    .line 1609
    iget-object v3, p0, mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=0"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1612
    :cond_2c
    const/4 v3, 0x0

    iput-boolean v3, p0, mIsSeeking:Z

    .line 1613
    const/4 v3, 0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, notifyEvent(ILjava/lang/Object;)V

    .line 1614
    return-wide v0

    .line 1600
    .end local v0    # "freq":J
    :cond_38
    const-string v2, "fmradio_turnon=false"

    .line 1601
    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v3, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public seekUp()J
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 1570
    iput-boolean v5, p0, mIsSeeking:Z

    .line 1573
    iget v3, p0, mChipVendor:I

    if-eq v3, v6, :cond_38

    .line 1574
    iget-object v3, p0, mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=1"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1580
    :goto_f
    iget-object v3, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v3}, Lcom/android/server/FMPlayerNative;->seekUp()J

    move-result-wide v0

    .line 1583
    .local v0, "freq":J
    iget v3, p0, mChipVendor:I

    if-eq v3, v6, :cond_2c

    iget-object v3, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-static {v5}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-lez v3, :cond_2c

    .line 1585
    iget-object v3, p0, mAudioManager:Landroid/media/AudioManager;

    const-string v4, "fm_radio_mute=0"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1588
    :cond_2c
    const/4 v3, 0x0

    iput-boolean v3, p0, mIsSeeking:Z

    .line 1589
    const/4 v3, 0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, notifyEvent(ILjava/lang/Object;)V

    .line 1590
    return-wide v0

    .line 1576
    .end local v0    # "freq":J
    :cond_38
    const-string v2, "fmradio_turnon=false"

    .line 1577
    .local v2, "keyValuePairs":Ljava/lang/String;
    iget-object v3, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_f
.end method

.method sendFMStatusBroadcast(Ljava/lang/Long;)V
    .registers 7
    .param p1, "freq"    # Ljava/lang/Long;

    .prologue
    .line 2128
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v0, v2, v3

    .line 2129
    .local v0, "currentFreq":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_10

    .line 2130
    const/high16 v0, 0x42af0000    # 87.5f

    .line 2131
    :cond_10
    sget-boolean v2, DEBUGGABLE:Z

    if-eqz v2, :cond_2a

    .line 2132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending broadcast tune currentFreq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 2133
    :cond_2a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.fm.player_lock.tune.channel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2134
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2135
    const-string v2, "freq"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2136
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2137
    return-void
.end method

.method public setAFRMSSISamples(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2731
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAFRMSSISamples(I)V

    .line 2732
    return-void
.end method

.method public setAFRMSSIThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2723
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAFRMSSIThreshold(I)V

    .line 2724
    return-void
.end method

.method public setAFValid_th(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2634
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAFValid_th(I)V

    .line 2635
    return-void
.end method

.method public setAF_th(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2626
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setAF_th(I)V

    .line 2627
    return-void
.end method

.method public setBand(I)V
    .registers 3
    .param p1, "band"    # I

    .prologue
    .line 2288
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setBand(I)V

    .line 2289
    iput p1, p0, mBand:I

    .line 2290
    return-void
.end method

.method public setCFOTh12(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2699
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setCFOTh12(I)V

    .line 2700
    return-void
.end method

.method public setChannelSpacing(I)V
    .registers 3
    .param p1, "spacing"    # I

    .prologue
    .line 2293
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setChannelSpacing(I)V

    .line 2294
    return-void
.end method

.method public setCnt_th(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2581
    iput p1, p0, mCnt_th:I

    .line 2582
    return-void
.end method

.method public setCnt_th_2(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2593
    iput p1, p0, mCnt_th_2:I

    .line 2594
    return-void
.end method

.method public setDEConstant(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 2561
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setDEConstant(J)V

    .line 2562
    return-void
.end method

.method public setFMIntenna(Z)V
    .registers 3
    .param p1, "setFMIntenna"    # Z

    .prologue
    .line 2642
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setFMIntenna(Z)V

    .line 2643
    return-void
.end method

.method public setGoodChannelRMSSIThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2739
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setGoodChannelRMSSIThreshold(I)V

    .line 2740
    return-void
.end method

.method public setHybridSearch(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2748
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setHybridSearch(Ljava/lang/String;)V

    .line 2749
    return-void
.end method

.method public setInternetStreamingMode(Z)V
    .registers 4
    .param p1, "mode"    # Z

    .prologue
    .line 3017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInternetStreamingMode :: mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, log(Ljava/lang/String;)V

    .line 3018
    iput-boolean p1, p0, mInternetStreamingMode:Z

    .line 3019
    if-eqz p1, :cond_21

    .line 3020
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, setVolume(J)V

    .line 3024
    :goto_20
    return-void

    .line 3022
    :cond_21
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, setVolume(J)V

    goto :goto_20
.end method

.method public setListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/media/fmradio/internal/IFMEventListener;

    .prologue
    .line 1672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadioService] setListener :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 1673
    if-eqz p1, :cond_50

    .line 1674
    monitor-enter p1

    .line 1675
    :try_start_19
    iget-object v1, p0, mListeners:Ljava/util/Vector;

    if-nez v1, :cond_24

    .line 1676
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, mListeners:Ljava/util/Vector;

    .line 1678
    :cond_24
    new-instance v0, Lcom/android/server/FMRadioService$ListenerRecord;

    invoke-interface {p1}, Lcom/samsung/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/FMRadioService$ListenerRecord;-><init>(Lcom/samsung/media/fmradio/internal/IFMEventListener;Landroid/os/IBinder;)V

    .line 1679
    .local v0, "record":Lcom/android/server/FMRadioService$ListenerRecord;
    iget-object v1, p0, mListeners:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no of listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 1681
    monitor-exit p1

    .line 1683
    .end local v0    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_50
    return-void

    .line 1681
    :catchall_51
    move-exception v1

    monitor-exit p1
    :try_end_53
    .catchall {:try_start_19 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public setMono()V
    .registers 2

    .prologue
    .line 2313
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->setMono()V

    .line 2314
    return-void
.end method

.method public setOffChannelThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2683
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setOffChannelThreshold(I)V

    .line 2684
    return-void
.end method

.method public setOnChannelThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2675
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setOnChannelThreshold(I)V

    .line 2676
    return-void
.end method

.method public setRMSSIFirstStage(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2707
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setRMSSIFirstStage(I)V

    .line 2708
    return-void
.end method

.method public setRSSI_th(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2573
    iput p1, p0, mRssi_th:I

    .line 2574
    return-void
.end method

.method public setRSSI_th_2(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2585
    iput p1, p0, mRssi_th_2:I

    .line 2586
    return-void
.end method

.method public setRecordMode(I)V
    .registers 3
    .param p1, "is_record"    # I

    .prologue
    .line 1982
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setRecordMode(I)V

    .line 1983
    return-void
.end method

.method public setSINRFirstStage(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2715
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSINRFirstStage(I)V

    .line 2716
    return-void
.end method

.method public setSINRSamples(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2667
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSINRSamples(I)V

    .line 2668
    return-void
.end method

.method public setSINRThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2691
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSINRThreshold(I)V

    .line 2692
    return-void
.end method

.method public setSNR_th(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2577
    iput p1, p0, mSnr_th:I

    .line 2578
    return-void
.end method

.method public setSNR_th_2(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 2589
    iput p1, p0, mSnr_th_2:I

    .line 2590
    return-void
.end method

.method public setSearchAlgoType(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2659
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSearchAlgoType(I)V

    .line 2660
    return-void
.end method

.method public setSeekDC(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2757
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSeekDC(I)V

    .line 2758
    return-void
.end method

.method public setSeekQA(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2765
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSeekQA(I)V

    .line 2766
    return-void
.end method

.method public setSeekRSSI(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 2565
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setSeekRSSI(J)V

    .line 2566
    return-void
.end method

.method public setSeekSNR(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 2569
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNative;->setSeekSNR(J)V

    .line 2570
    return-void
.end method

.method public setSoftMuteControl(III)V
    .registers 5
    .param p1, "min_RSSI"    # I
    .param p2, "max_RSSI"    # I
    .param p3, "max_attenuation"    # I

    .prologue
    .line 2654
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/FMPlayerNative;->setSoftMuteControl(III)V

    .line 2655
    return-void
.end method

.method public setSoftmute(Z)V
    .registers 3
    .param p1, "setSoftmute"    # Z

    .prologue
    .line 2646
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSoftmute(Z)V

    .line 2647
    return-void
.end method

.method public setSpeakerOn(Z)V
    .registers 3
    .param p1, "bSpeakerOn"    # Z

    .prologue
    .line 1978
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setSpeakerOn(Z)V

    .line 1979
    return-void
.end method

.method public setStereo()V
    .registers 2

    .prologue
    .line 2309
    iget-object v0, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNative;->setStereo()V

    .line 2310
    return-void
.end method

.method public setVolume(J)V
    .registers 12
    .param p1, "val"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 1932
    iget-boolean v2, p0, mIsOn:Z

    if-nez v2, :cond_8

    .line 1971
    :cond_7
    :goto_7
    return-void

    .line 1935
    :cond_8
    iget-boolean v2, p0, mScanProgress:Z

    if-eqz v2, :cond_13

    .line 1936
    const-string/jumbo v2, "setVolume :: unset on ScanProgress"

    invoke-static {v2}, log(Ljava/lang/String;)V

    goto :goto_7

    .line 1941
    :cond_13
    :try_start_13
    iget-boolean v2, p0, mInternetStreamingMode:Z

    if-nez v2, :cond_5d

    .line 1942
    iget-object v2, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/FMPlayerNative;->setVolume(J)V

    .line 1943
    iput-wide p1, p0, mResumeVol:J

    .line 1945
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "all_sound_off"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1948
    .local v0, "IsEnabledAllSoundOff":I
    if-ne v0, v5, :cond_41

    .line 1949
    const-string/jumbo v2, "setVolume :: AllSoundOff is enabled. So FMRadio is muted."

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 1950
    iget-boolean v2, p0, mIsMute:Z

    if-nez v2, :cond_7

    .line 1951
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, mute(Z)V
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_3b} :catch_3c

    goto :goto_7

    .line 1967
    .end local v0    # "IsEnabledAllSoundOff":I
    :catch_3c
    move-exception v1

    .line 1968
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_7

    .line 1953
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "IsEnabledAllSoundOff":I
    :cond_41
    :try_start_41
    iget v2, p0, mChipVendor:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    .line 1954
    cmp-long v2, p1, v6

    if-gtz v2, :cond_4f

    .line 1955
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, mute(Z)V

    goto :goto_7

    .line 1956
    :cond_4f
    iget-boolean v2, p0, mIsMute:Z

    if-eqz v2, :cond_7

    .line 1957
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, mute(Z)V

    .line 1958
    iget-object v2, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/FMPlayerNative;->setVolume(J)V

    goto :goto_7

    .line 1962
    .end local v0    # "IsEnabledAllSoundOff":I
    :cond_5d
    iget-boolean v2, p0, mIsMute:Z

    if-nez v2, :cond_7

    .line 1963
    iget-object v2, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNative;->setVolume(J)V

    .line 1964
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, mute(Z)V
    :try_end_6c
    .catch Ljava/lang/NullPointerException; {:try_start_41 .. :try_end_6c} :catch_3c

    goto :goto_7
.end method

.method public tune(J)V
    .registers 10
    .param p1, "freq"    # J

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 1518
    iget v1, p0, mChipVendor:I

    if-eq v1, v5, :cond_52

    .line 1519
    const-string/jumbo v1, "tune mute - "

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 1520
    iget-object v1, p0, mAudioManager:Landroid/media/AudioManager;

    const-string v2, "fm_radio_mute=1"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1526
    :goto_13
    iget-object v1, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/FMPlayerNative;->tune(J)V

    .line 1529
    iget-object v1, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-static {v4}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-lez v1, :cond_49

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "all_sound_off"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_49

    .line 1531
    const-string/jumbo v1, "tune unmute - "

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 1532
    iget-object v1, p0, mAudioManager:Landroid/media/AudioManager;

    const-string v2, "fm_radio_mute=0"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1533
    iget v1, p0, mChipVendor:I

    if-ne v1, v5, :cond_49

    .line 1534
    iget-object v1, p0, mPlayerNative:Lcom/android/server/FMPlayerNative;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNative;->muteOff()V

    .line 1538
    :cond_49
    const/4 v1, 0x7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, notifyEvent(ILjava/lang/Object;)V

    .line 1539
    return-void

    .line 1522
    :cond_52
    const-string v0, "fmradio_turnon=false"

    .line 1523
    .local v0, "keyValuePairs":Ljava/lang/String;
    iget-object v1, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_13
.end method

.method unregisterMotionListener()V
    .registers 4

    .prologue
    .line 978
    sget-object v0, mMotionSensorManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, mMotionListener:Lcom/samsung/android/motion/MRListener;

    if-nez v0, :cond_9

    .line 985
    :cond_8
    :goto_8
    return-void

    .line 981
    :cond_9
    iget-object v1, p0, mMotionListener:Lcom/samsung/android/motion/MRListener;

    monitor-enter v1

    .line 982
    :try_start_c
    sget-object v0, mMotionSensorManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-eqz v0, :cond_17

    .line 983
    sget-object v0, mMotionSensorManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    iget-object v2, p0, mMotionListener:Lcom/samsung/android/motion/MRListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/motion/MotionRecognitionManager;->unregisterListener(Lcom/samsung/android/motion/MRListener;)V

    .line 984
    :cond_17
    monitor-exit v1

    goto :goto_8

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_19

    throw v0
.end method
