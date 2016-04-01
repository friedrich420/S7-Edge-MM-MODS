.class public Lcom/android/server/audio/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$ControllerService;,
        Lcom/android/server/audio/AudioService$AudioPolicyProxy;,
        Lcom/android/server/audio/AudioService$AudioServiceInternal;,
        Lcom/android/server/audio/AudioService$VolumeController;,
        Lcom/android/server/audio/AudioService$StreamOverride;,
        Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;,
        Lcom/android/server/audio/AudioService$EffectPolicy;,
        Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;,
        Lcom/android/server/audio/AudioService$SettingsObserver;,
        Lcom/android/server/audio/AudioService$AudioHandler;,
        Lcom/android/server/audio/AudioService$AudioSystemThread;,
        Lcom/android/server/audio/AudioService$VolumeStreamState;,
        Lcom/android/server/audio/AudioService$FineVolumeState;,
        Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;,
        Lcom/android/server/audio/AudioService$ScoClient;,
        Lcom/android/server/audio/AudioService$SoundPoolCallback;,
        Lcom/android/server/audio/AudioService$SoundPoolListenerThread;,
        Lcom/android/server/audio/AudioService$LoadSoundEffectReply;,
        Lcom/android/server/audio/AudioService$SetModeDeathHandler;,
        Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;,
        Lcom/android/server/audio/AudioService$ForceControlStreamClient;,
        Lcom/android/server/audio/AudioService$StreamVolumeCommand;,
        Lcom/android/server/audio/AudioService$DeviceListSpec;
    }
.end annotation


# static fields
.field private static final ACTION_EFFECT_POLICY:Ljava/lang/String; = "sec.app.policy.UPDATE.audio"

.field public static final ACTION_HMT_CONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_CONNECTED"

.field public static final ACTION_HMT_DISCONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_DISCONNECTED"

.field public static final ACTION_HMT_MOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_MOUNT"

.field public static final ACTION_HMT_UNMOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_UNMOUNT"

.field private static final ACTION_WIFI_DISPLAY:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field public static final CONNECT_INTENT_KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final CONNECT_INTENT_KEY_DEVICE_CLASS:Ljava/lang/String; = "class"

.field public static final CONNECT_INTENT_KEY_HAS_CAPTURE:Ljava/lang/String; = "hasCapture"

.field public static final CONNECT_INTENT_KEY_HAS_MIDI:Ljava/lang/String; = "hasMIDI"

.field public static final CONNECT_INTENT_KEY_HAS_PLAYBACK:Ljava/lang/String; = "hasPlayback"

.field public static final CONNECT_INTENT_KEY_PORT_NAME:Ljava/lang/String; = "portName"

.field public static final CONNECT_INTENT_KEY_STATE:Ljava/lang/String; = "state"

.field protected static final DEBUG_AP:Z

.field protected static final DEBUG_DEVICES:Z

.field protected static final DEBUG_MODE:Z

.field protected static final DEBUG_VOL:Z

.field private static final DOCK_DEVICE_NAME:[Ljava/lang/String;

.field private static final EARJACK_COUNT_PATH:Ljava/lang/String; = "/efs/FactoryApp/earjack_count"

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final FLAG_ERROR:I = 0x8000

.field private static final FLAG_STREAM_ACCESSIBILITY:I = 0x4000

.field private static final FLAG_STREAM_ALARM:I = 0x10

.field private static final FLAG_STREAM_BLUETOOTH_SCO:I = 0x40

.field private static final FLAG_STREAM_DTMF:I = 0x100

.field private static final FLAG_STREAM_FM_RADIO:I = 0x400

.field private static final FLAG_STREAM_MUSIC:I = 0x8

.field private static final FLAG_STREAM_NOTIFICATION:I = 0x20

.field private static final FLAG_STREAM_RING:I = 0x4

.field private static final FLAG_STREAM_SEC_VOICE_COMMUNICATION:I = 0x1000

.field private static final FLAG_STREAM_SYSTEM:I = 0x2

.field private static final FLAG_STREAM_SYSTEM_ENFORCED:I = 0x80

.field private static final FLAG_STREAM_TTS:I = 0x200

.field private static final FLAG_STREAM_VIDEO_CALL:I = 0x800

.field private static final FLAG_STREAM_VOICENOTE:I = 0x2000

.field private static final FLAG_STREAM_VOICE_CALL:I = 0x1

.field private static final FOLDER_OPENED:Ljava/lang/String; = "com.samsung.flipfolder.OPEN"

.field private static final GLOBAL_EFFECT_ENABLED:Z = true

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final INDICATE_SYSTEM_READY_RETRY_DELAY_MS:I = 0x3e8

.field private static MAX_STREAM_VOLUME:[I = null

.field private static MIN_STREAM_VOLUME:[I = null

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xf

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY_PERSONA:I = 0x6e

.field private static final MSG_BROADCAST_BT_CONNECTION_STATE:I = 0x13

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x6

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_EARCARE_STATE:I = 0x68

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xe

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0x10

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0x11

.field private static final MSG_DYN_POLICY_MIX_STATE_UPDATE:I = 0x19

.field private static final MSG_END_SOUND_MANNER_MODE:I = 0x6c

.field private static final MSG_GOOGLE_MAX:I = 0x66

.field private static final MSG_INDICATE_SYSTEM_READY:I = 0x1a

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x4

.field private static final MSG_PERFORM_SOFT_RESET:I = 0x69

.field private static final MSG_PERSIST_MASTER_VOLUME_MUTE:I = 0xb

.field private static final MSG_PERSIST_MICROPHONE_MUTE:I = 0x17

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x16

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0x12

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_PLAY_SOUND_MANNER_MODE:I = 0x6a

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xc

.field private static final MSG_SET_A2DP_SINK_CONNECTION_STATE:I = 0x66

.field private static final MSG_SET_A2DP_SRC_CONNECTION_STATE:I = 0x65

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_AOBLE_SINK_CONNECTION_STATE:I = 0x71

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FINE_VOLUME:I = 0x70

.field private static final MSG_SET_FORCE_BT_A2DP_USE:I = 0xd

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SET_SYSTEMPROPERTY:I = 0x6f

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x64

.field private static final MSG_SYSTEM_READY:I = 0x15

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0x14

.field private static final MSG_UNMUTE_STREAM:I = 0x18

.field private static final MSG_USB_CHECK_RELEASE:I = 0x67

.field private static final MSG_VIBRATE_CALL:I = 0x6d

.field private static final MSG_VIBRATE_MANNER_MODE:I = 0x6b

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SCO_MODE_MAX:I = 0x2

.field private static final SCO_MODE_RAW:I = 0x1

.field private static final SCO_MODE_UNDEFINED:I = -0x1

.field private static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_MODE_VR:I = 0x2

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SETTING_ADAPTSOUND_CHECKED:Ljava/lang/String; = "hearing_musiccheck"

.field private static final SETTING_K2HD_CHECKED:Ljava/lang/String; = "k2hd_effect"

.field private static final SETTING_SOUNDALIVE_CHECKED:Ljava/lang/String; = "sound_alive_effect"

.field private static final SETTING_TUBEAMP_CHECKED:Ljava/lang/String; = "tube_amp_effect"

.field private static final SMART_DOCK_CONNECTED:Ljava/lang/String; = "10"

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STREAM_VOLUME_OPS:[I

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final TMS_ACTION_TYPE_START:I = 0x1

.field private static final TMS_ACTION_TYPE_STOP:I = 0x2

.field private static final UNMUTE_STREAM_DELAY:I = 0x15e

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static mLastDeviceConnectMsgTime:Ljava/lang/Long;

.field private static sSoundEffectVolumeDb:I


# instance fields
.field private final ConfigVolumeKey:Ljava/lang/String;

.field private FINE_VOLUME_LEVEL:I

.field private FINE_VOLUME_MAX:I

.field private FINE_VOLUME_MIN:I

.field private final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String;

.field private final MAX_STREAM_VOLUME2:[I

.field private final MAX_STREAM_VOLUME_DOUBLE:[I

.field private final PHONE_PACKAGE_NAME:Ljava/lang/String;

.field private SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field private final VOICENOTE_PACKAGE_NAME:Ljava/lang/String;

.field private emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

.field private isEarBackOff:Z

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mA2dpAvrcpLock:Ljava/lang/Object;

.field private mAllSoundMute:I

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field private mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPolicyCounter:I

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

.field private mAvrcpAbsVolSupported:Z

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothA2dpOndump:[I

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothScoOndump:[I

.field private mCPUBoostForComm:Z

.field private mCameraSoundForced:Ljava/lang/Boolean;

.field private final mConnectedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/AudioService$DeviceListSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCpuHelper:Landroid/os/DVFSHelper;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mDeviceOrientation:I

.field private mDockAddress:Ljava/lang/String;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field private mDualMicMode:I

.field private final mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private mExternalUsbInfo:Ljava/lang/String;

.field private mFakeState:Z

.field private mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

.field private final mFineVolumeLock:Ljava/lang/Object;

.field private mFineVolumeNeedWait:Z

.field mFixedVolumeDevices:I

.field private mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private mForceSpeaker:I

.field private mForcedUseForComm:I

.field private mForcedUseForFMRadio:I

.field private mForcedUseForMedia:I

.field mFullVolumeDevices:I

.field public mHMTstate:Z

.field mHallSensorListener:Landroid/hardware/scontext/SContextListener;

.field private mHallSensorType:S

.field private mHasNxpAmp_LSI:Z

.field private final mHasVibrator:Z

.field private mHdmiCecSink:Z

.field private mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field private mIsCoverSafetyVolume:Z

.field private mIsDefaultStreamNotification:Z

.field private mIsEarCareEnabled:Z

.field private mIsEarCareSettingOn:Z

.field public mIsExceptionalDevice:Z

.field private mIsFactoryMode:Z

.field private mIsFactorySim:Z

.field private mIsFolderOpen:Z

.field private mIsMediaVolumeBackup:Z

.field private mIsPlaySilentModeOff:Z

.field private mIsSetupwizardFinish:Ljava/lang/String;

.field private mIsTogether:Z

.field private mIsVibrate:Z

.field private mK2HDEnabled:I

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

.field private mLateBootCompleted_WiredDevice:I

.field private final mLateBootCompleted_WiredDeviceName_real:Ljava/lang/String;

.field private final mLateBootCompleted_WiredDeviceName_temporary:Ljava/lang/String;

.field private mLoweredFromNormalToVibrateTime:J

.field private mMcc:I

.field private final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field private mMediaLastAudibleIndex:I

.field private mMediaSilentMode:Z

.field private mMediaVolumeBackup:[I

.field private mMode:I

.field private final mMonitorOrientation:Z

.field private final mMonitorRotation:Z

.field private mMonoMode:I

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mMySoundEnabled:I

.field private mNaturalSound:I

.field private mNbQualityMode:I

.field private mOldIsSmartdock:Z

.field private mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private final mPlatformType:I

.field private mPrevRingerMode:I

.field private mPrevVolDirection:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

.field private mRingerModeExternal:I

.field private mRingerModeMutedStreams:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private final mSafeMediaVolumeDevices:I

.field private final mSafeMediaVolumeDevicesForA2DP:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:Ljava/lang/Integer;

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSetModeOndump:I

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

.field private mSilentModeOff:Z

.field private mSoundAliveEnabled:I

.field private mSoundBalance:I

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mSpeakerOndump:[I

.field public mSplitSound:Z

.field private mStatusbarExpanded:Z

.field private mStreamMutedump:[I

.field private mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

.field private mStreamVolumeAlias:[I

.field private mSystemReady:Z

.field private mTubeAmpEnabled:I

.field private final mUEventUsbConnectObserver:Landroid/os/UEventObserver;

.field private mUSBDetected:Z

.field private mUhqBtSampleRate:I

.field private mUsbSupportedFormat:I

.field private final mUseFixedVolume:Z

.field private mVibrateSetting:I

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mVolumeControlStream:I

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private mbAobleState:Z

.field private pIdOfsetVolume:[I

.field private pIdOfsetVolumeIndex:[I

.field private final volumeDownToSilent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v1, 0xe

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 221
    const-string v0, "AudioService"

    invoke-static {v0, v4}, Landroid/media/SamsungAudioManager$AudioLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DEBUG_MODE:Z

    .line 224
    const-string v0, "AudioService.AP"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DEBUG_AP:Z

    .line 227
    const-string v0, "AudioService"

    invoke-static {v0, v4}, Landroid/media/SamsungAudioManager$AudioLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DEBUG_VOL:Z

    .line 230
    const-string v0, "AudioService.DEVICES"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DEBUG_DEVICES:Z

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, SOUND_EFFECT_FILES:Ljava/util/List;

    .line 366
    new-array v0, v1, [I

    fill-array-data v0, :array_6a

    sput-object v0, MAX_STREAM_VOLUME:[I

    .line 386
    new-array v0, v1, [I

    fill-array-data v0, :array_8a

    sput-object v0, MIN_STREAM_VOLUME:[I

    .line 520
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_aa

    sput-object v0, STREAM_VOLUME_OPS:[I

    .line 762
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 879
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Smart Dock with TA"

    aput-object v1, v0, v4

    const-string v1, "Smart Dock+TA"

    aput-object v1, v0, v6

    sput-object v0, DOCK_DEVICE_NAME:[Ljava/lang/String;

    .line 8564
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "SILENT"

    aput-object v1, v0, v4

    const-string v1, "VIBRATE"

    aput-object v1, v0, v6

    const-string v1, "NORMAL"

    aput-object v1, v0, v7

    sput-object v0, RINGER_MODE_NAMES:[Ljava/lang/String;

    return-void

    .line 366
    :array_6a
    .array-data 4
        0x5
        0x7
        0x7
        0xf
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
        0xf
        0x5
        0x5
        0xf
    .end array-data

    .line 386
    :array_8a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 520
    :array_aa
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 903
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 259
    new-instance v0, Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$VolumeController;-><init>()V

    iput-object v0, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 260
    new-instance v0, Lcom/android/server/audio/AudioService$ControllerService;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$ControllerService;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, mHMTstate:Z

    .line 332
    const-string/jumbo v0, "h2w"

    iput-object v0, p0, mLateBootCompleted_WiredDeviceName_real:Ljava/lang/String;

    .line 333
    const-string/jumbo v0, "h2w-before-boot-completed"

    iput-object v0, p0, mLateBootCompleted_WiredDeviceName_temporary:Ljava/lang/String;

    .line 347
    const/4 v0, 0x0

    iput v0, p0, mMode:I

    .line 349
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mSettingsLock:Ljava/lang/Object;

    .line 352
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mSoundEffectsLock:Ljava/lang/Object;

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    .line 363
    const/16 v0, 0x10

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, SOUND_EFFECT_FILES_MAP:[[I

    .line 417
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_504

    iput-object v0, p0, MAX_STREAM_VOLUME2:[I

    .line 434
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_524

    iput-object v0, p0, MAX_STREAM_VOLUME_DOUBLE:[I

    .line 460
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_544

    iput-object v0, p0, STREAM_VOLUME_ALIAS_VOICE:[I

    .line 478
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_564

    iput-object v0, p0, STREAM_VOLUME_ALIAS_TELEVISION:[I

    .line 496
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_584

    iput-object v0, p0, STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 535
    new-instance v0, Lcom/android/server/audio/AudioService$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$1;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 555
    const/4 v0, -0x1

    iput v0, p0, mRingerModeExternal:I

    .line 559
    const/4 v0, 0x0

    iput v0, p0, mRingerModeAffectedStreams:I

    .line 579
    new-instance v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 606
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mConnectedDevices:Landroid/util/ArrayMap;

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mScoClients:Ljava/util/ArrayList;

    .line 682
    const/4 v0, 0x0

    iput-object v0, p0, mSoundPoolLooper:Landroid/os/Looper;

    .line 686
    const/4 v0, 0x0

    iput v0, p0, mPrevVolDirection:I

    .line 691
    const/4 v0, -0x1

    iput v0, p0, mVolumeControlStream:I

    .line 692
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mForceControlStreamLock:Ljava/lang/Object;

    .line 696
    const/4 v0, 0x0

    iput-object v0, p0, mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 700
    const/4 v0, 0x0

    iput v0, p0, mDeviceOrientation:I

    .line 704
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 707
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 708
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 721
    const/4 v0, 0x0

    iput v0, p0, mFixedVolumeDevices:I

    .line 724
    const/4 v0, 0x0

    iput v0, p0, mFullVolumeDevices:I

    .line 727
    const/16 v0, 0xa

    iput v0, p0, FINE_VOLUME_LEVEL:I

    .line 728
    const/4 v0, 0x0

    iput v0, p0, FINE_VOLUME_MIN:I

    .line 729
    iget v0, p0, FINE_VOLUME_LEVEL:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, FINE_VOLUME_MAX:I

    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, mFineVolumeNeedWait:Z

    .line 734
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mFineVolumeLock:Ljava/lang/Object;

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, mDockAudioMediaEnabled:Z

    .line 743
    const/4 v0, 0x0

    iput v0, p0, mDockState:I

    .line 757
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mA2dpAvrcpLock:Ljava/lang/Object;

    .line 759
    const/4 v0, 0x0

    iput-boolean v0, p0, mAvrcpAbsVolSupported:Z

    .line 761
    const/4 v0, 0x0

    iput-boolean v0, p0, isEarBackOff:Z

    .line 769
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Audio_ConfigActionVolumeKey"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, ConfigVolumeKey:Ljava/lang/String;

    .line 770
    const-string v0, "Silent"

    iget-object v1, p0, ConfigVolumeKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f2

    const/4 v0, 0x1

    :goto_10f
    iput-boolean v0, p0, volumeDownToSilent:Z

    .line 771
    new-instance v0, Landroid/media/VolumePolicy;

    iget-boolean v1, p0, volumeDownToSilent:Z

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x190

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    iput-object v0, p0, mVolumePolicy:Landroid/media/VolumePolicy;

    .line 799
    const/4 v0, 0x0

    iput-boolean v0, p0, mMediaSilentMode:Z

    .line 800
    const/4 v0, 0x0

    iput v0, p0, mMediaLastAudibleIndex:I

    .line 802
    const/4 v0, -0x1

    iput v0, p0, mLateBootCompleted_WiredDevice:I

    .line 811
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsTogether:Z

    .line 813
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsCoverSafetyVolume:Z

    .line 815
    const/4 v0, 0x0

    iput-boolean v0, p0, mSplitSound:Z

    .line 816
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsExceptionalDevice:Z

    .line 818
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    iput-object v0, p0, IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String;

    .line 819
    const-string v0, "com.android.server.telecom"

    iput-object v0, p0, PHONE_PACKAGE_NAME:Ljava/lang/String;

    .line 820
    const-string v0, "com.sec.android.app.voicenote"

    iput-object v0, p0, VOICENOTE_PACKAGE_NAME:Ljava/lang/String;

    .line 822
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsMediaVolumeBackup:Z

    .line 823
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_5a4

    iput-object v0, p0, mMediaVolumeBackup:[I

    .line 825
    const/4 v0, 0x0

    iput-object v0, p0, mIsSetupwizardFinish:Ljava/lang/String;

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, mCpuHelper:Landroid/os/DVFSHelper;

    .line 828
    const/4 v0, 0x0

    iput-boolean v0, p0, mCPUBoostForComm:Z

    .line 835
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsEarCareSettingOn:Z

    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsEarCareEnabled:Z

    .line 839
    const/4 v0, 0x0

    iput-object v0, p0, emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 842
    const/4 v0, 0x0

    iput-boolean v0, p0, mOldIsSmartdock:Z

    .line 844
    const/4 v0, 0x0

    iput v0, p0, mUsbSupportedFormat:I

    .line 846
    const/4 v0, 0x0

    iput-object v0, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 848
    const/4 v0, 0x0

    iput-object v0, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 849
    const/4 v0, 0x0

    iput-boolean v0, p0, mSilentModeOff:Z

    .line 850
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsPlaySilentModeOff:Z

    .line 884
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsFolderOpen:Z

    .line 887
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsFactoryMode:Z

    .line 888
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsFactorySim:Z

    .line 889
    const/4 v0, 0x0

    iput-object v0, p0, mVibrator:Landroid/os/SystemVibrator;

    .line 890
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsVibrate:Z

    .line 892
    const/4 v0, 0x1

    iput-short v0, p0, mHallSensorType:S

    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, mHasNxpAmp_LSI:Z

    .line 895
    const/4 v0, 0x0

    iput-boolean v0, p0, mbAobleState:Z

    .line 896
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsDefaultStreamNotification:Z

    .line 2790
    const/4 v0, 0x0

    iput v0, p0, mRmtSbmxFullVolRefCount:I

    .line 2791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    .line 4317
    new-instance v0, Lcom/android/server/audio/AudioService$2;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$2;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 6954
    const v0, 0x2102ff8c

    iput v0, p0, mBecomingNoisyIntentDevices:I

    .line 8292
    const v0, 0x20000180

    iput v0, p0, mSafeMediaVolumeDevicesForA2DP:I

    .line 8296
    const/4 v0, 0x0

    iput v0, p0, mMcc:I

    .line 8300
    const v0, 0x2000018c

    iput v0, p0, mSafeMediaVolumeDevices:I

    .line 8464
    const/4 v0, 0x0

    iput-boolean v0, p0, mHdmiSystemAudioSupported:Z

    .line 8475
    new-instance v0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v0, p0, mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    .line 9033
    new-instance v0, Lcom/android/server/audio/AudioService$4;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$4;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 9122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mAudioPolicies:Ljava/util/HashMap;

    .line 9124
    const/4 v0, 0x0

    iput v0, p0, mAudioPolicyCounter:I

    .line 9329
    new-instance v0, Lcom/android/server/audio/AudioService$5;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$5;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, mUEventUsbConnectObserver:Landroid/os/UEventObserver;

    .line 9929
    new-instance v0, Lcom/android/server/audio/AudioService$6;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$6;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, mHallSensorListener:Landroid/hardware/scontext/SContextListener;

    .line 904
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 905
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 906
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    .line 908
    invoke-static {p1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, mPlatformType:I

    .line 910
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 911
    .local v12, "pm":Landroid/os/PowerManager;
    const/4 v0, 0x1

    const-string/jumbo v1, "handleAudioEvent"

    invoke-virtual {v12, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 913
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Vibrator;

    .line 914
    .local v13, "vibrator":Landroid/os/Vibrator;
    if-nez v13, :cond_4f5

    const/4 v0, 0x0

    :goto_20d
    iput-boolean v0, p0, mHasVibrator:Z

    .line 933
    iget-object v0, p0, STREAM_VOLUME_ALIAS_VOICE:[I

    const/4 v1, 0x5

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 936
    iget-object v0, p0, MAX_STREAM_VOLUME2:[I

    const/4 v1, 0x0

    const-string/jumbo v2, "ro.config.vc_call_vol_steps"

    iget-object v4, p0, MAX_STREAM_VOLUME2:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1

    .line 939
    iget-object v0, p0, MAX_STREAM_VOLUME2:[I

    const/16 v1, 0xb

    iget-object v2, p0, MAX_STREAM_VOLUME2:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    aput v2, v0, v1

    .line 940
    iget-object v0, p0, MAX_STREAM_VOLUME2:[I

    const/16 v1, 0xc

    iget-object v2, p0, MAX_STREAM_VOLUME2:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    aput v2, v0, v1

    .line 948
    invoke-direct {p0}, isPlatformVoice()Z

    move-result v0

    if-nez v0, :cond_4fb

    const/4 v0, 0x1

    :goto_243
    iput-boolean v0, p0, mIsDefaultStreamNotification:Z

    .line 951
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, sSoundEffectVolumeDb:I

    .line 954
    const/4 v0, 0x0

    iput v0, p0, mForcedUseForComm:I

    .line 957
    const/4 v0, 0x0

    iput v0, p0, mForceSpeaker:I

    .line 960
    invoke-direct {p0}, createAudioSystemThread()V

    .line 964
    const/4 v0, 0x0

    iput-boolean v0, p0, mUSBDetected:Z

    .line 965
    const/4 v0, 0x0

    iput-boolean v0, p0, mFakeState:Z

    .line 966
    iget-object v0, p0, mUEventUsbConnectObserver:Landroid/os/UEventObserver;

    const-string v1, "USB_CONNECTION"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 969
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    iput-object v0, p0, emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 970
    iget-object v0, p0, emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_290

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ultra_powersaving_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_290

    .line 972
    const-string/jumbo v0, "emergency_mode=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 976
    :cond_290
    const/4 v0, 0x0

    iput-object v0, p0, mExternalUsbInfo:Ljava/lang/String;

    .line 978
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 981
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "support_split_sound"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 987
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "support_uhq_upscaler"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 991
    invoke-direct {p0}, hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_2bf

    .line 992
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, mVibrator:Landroid/os/SystemVibrator;

    .line 994
    :cond_2bf
    invoke-direct {p0}, ChangeDefaultVolume()V

    .line 996
    iget-object v0, p0, mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 998
    invoke-direct {p0}, readCameraSoundForced()Z

    move-result v10

    .line 999
    .local v10, "cameraSoundForced":Z
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v10}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, mCameraSoundForced:Ljava/lang/Boolean;

    .line 1000
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v10, :cond_4fe

    const/16 v4, 0xb

    :goto_2dc
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1009
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "audio_safe_volume_state"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 1019
    const/16 v0, 0x5a

    iput v0, p0, mSafeMediaVolumeIndex:I

    .line 1021
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, mUseFixedVolume:Z

    .line 1026
    const/4 v0, 0x0

    const-string v1, "AudioService"

    invoke-direct {p0, v0, v1}, updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 1027
    invoke-direct {p0}, readPersistedSettings()V

    .line 1028
    new-instance v0, Lcom/android/server/audio/AudioService$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$SettingsObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

    .line 1029
    invoke-direct {p0}, createStreamStates()V

    .line 1031
    new-instance v0, Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioService$FineVolumeState;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v0, p0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    .line 1033
    new-instance v0, Lcom/android/server/audio/MediaFocusControl;

    iget-object v1, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {v0, v1, v2, v4, p0}, Lcom/android/server/audio/MediaFocusControl;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/audio/AudioService$VolumeController;Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 1036
    invoke-static {}, readAndSetLowRamDevice()V

    .line 1040
    const/4 v0, 0x0

    iput v0, p0, mRingerModeMutedStreams:I

    .line 1041
    invoke-virtual {p0}, getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, setRingerModeInt(IZ)V

    .line 1044
    iget v0, p0, mMonoMode:I

    invoke-direct {p0, v0}, setMonoMode(I)V

    .line 1047
    iget v0, p0, mMySoundEnabled:I

    invoke-direct {p0, v0}, setGlobalMySound(I)V

    .line 1048
    iget v0, p0, mSoundAliveEnabled:I

    invoke-direct {p0, v0}, setGlobalSoundAlive(I)V

    .line 1049
    iget v0, p0, mK2HDEnabled:I

    invoke-direct {p0, v0}, setGlobalK2HD(I)V

    .line 1050
    iget v0, p0, mTubeAmpEnabled:I

    invoke-direct {p0, v0}, setGlobalTubeAmp(I)V

    .line 1052
    iget v0, p0, mNbQualityMode:I

    invoke-direct {p0, v0}, setNbQualityMode(I)V

    .line 1054
    iget v0, p0, mDualMicMode:I

    invoke-direct {p0, v0}, setDualMicMode(I)V

    .line 1056
    iget v0, p0, mAllSoundMute:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_369

    .line 1057
    invoke-direct {p0}, setAllSoundMute()V

    .line 1059
    :cond_369
    iget v0, p0, mNaturalSound:I

    invoke-direct {p0, v0}, setNaturalSoundMode(I)V

    .line 1061
    invoke-direct {p0}, setSoundBalance()V

    .line 1063
    const/4 v0, 0x0

    iput v0, p0, mUhqBtSampleRate:I

    .line 1065
    const-string v0, "NXP"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_381

    .line 1067
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasNxpAmp_LSI:Z

    .line 1071
    :cond_381
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1074
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1075
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1076
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1077
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1078
    const-string v0, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1079
    const-string v0, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1080
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1082
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1084
    const-string v0, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1085
    const-string v0, "com.sec.android.intent.action.SPLIT_SOUND"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1086
    const-string v0, "com.samsung.android.app.audio.epinforequest"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1088
    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1090
    const-string v0, "com.sec.tms.audio.server"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1091
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1093
    const-string v0, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1094
    const-string v0, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1097
    const-string v0, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1098
    const-string v0, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1101
    const-string v0, "com.samsung.intent.action.HMT_MOUNT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1102
    const-string v0, "com.samsung.intent.action.HMT_UNMOUNT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1104
    const-string v0, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1106
    const-string v0, "android.settings.MONO_AUDIO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1108
    const-string v0, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1110
    const-string v0, "com.android.phone.action.PERSONALISE_CALL_SOUND_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1112
    const-string v0, "com.android.phone.NOISE_REDUCTION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1114
    const-string v0, "com.android.phone.NATURAL_SOUND"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1115
    const-string v0, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1116
    const-string v0, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1117
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1120
    const-string v0, "com.samsung.intent.action.HMT_CONNECTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1121
    const-string v0, "com.samsung.intent.action.HMT_DISCONNECTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1124
    const-string v0, "com.samsung.flipfolder.OPEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1126
    const-string v0, "com.samsung.intent.action.WB_AMR"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1129
    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1130
    const-string/jumbo v0, "sec.app.policy.UPDATE.audio"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1133
    const-string/jumbo v0, "ro.audio.monitorOrientation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, mMonitorOrientation:Z

    .line 1134
    iget-boolean v0, p0, mMonitorOrientation:Z

    if-eqz v0, :cond_456

    .line 1135
    const-string v0, "AudioService"

    const-string/jumbo v1, "monitoring device orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-direct {p0}, setOrientationForAudioSystem()V

    .line 1139
    :cond_456
    const-string/jumbo v0, "ro.audio.monitorRotation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, mMonitorRotation:Z

    .line 1140
    iget-boolean v0, p0, mMonitorRotation:Z

    if-eqz v0, :cond_46b

    .line 1141
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-static {v0, v1}, Lcom/android/server/audio/RotationHelper;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1144
    :cond_46b
    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1146
    new-instance v7, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.sec.knox.KNOX_MODE_CHANGED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1148
    .local v7, "knoxModeIntentFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "com.samsung.container.OBSERVER"

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1151
    const-class v0, Landroid/media/AudioManagerInternal;

    new-instance v1, Lcom/android/server/audio/AudioService$AudioServiceInternal;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1154
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v11

    .line 1155
    .local v11, "numStreamTypes":I
    new-array v0, v11, [I

    iput-object v0, p0, mStreamMutedump:[I

    .line 1156
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, mBluetoothA2dpOndump:[I

    .line 1157
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, mBluetoothScoOndump:[I

    .line 1158
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, mSpeakerOndump:[I

    .line 1159
    new-array v0, v11, [I

    iput-object v0, p0, pIdOfsetVolumeIndex:[I

    .line 1160
    new-array v0, v11, [I

    iput-object v0, p0, pIdOfsetVolume:[I

    .line 1171
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_501

    const/4 v0, 0x1

    :goto_4c0
    iput-boolean v0, p0, mIsFolderOpen:Z

    .line 1172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "folder_open="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mIsFolderOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1176
    iget-object v0, p0, mConnectedDevices:Landroid/util/ArrayMap;

    const/4 v1, 0x2

    const-string v2, ""

    invoke-direct {p0, v1, v2}, makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    const/4 v4, 0x2

    const-string v5, "Speaker"

    const-string v6, ""

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    return-void

    .line 770
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .end local v7    # "knoxModeIntentFilter":Landroid/content/IntentFilter;
    .end local v10    # "cameraSoundForced":Z
    .end local v11    # "numStreamTypes":I
    .end local v12    # "pm":Landroid/os/PowerManager;
    .end local v13    # "vibrator":Landroid/os/Vibrator;
    :cond_4f2
    const/4 v0, 0x0

    goto/16 :goto_10f

    .line 914
    .restart local v12    # "pm":Landroid/os/PowerManager;
    .restart local v13    # "vibrator":Landroid/os/Vibrator;
    :cond_4f5
    invoke-virtual {v13}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto/16 :goto_20d

    .line 948
    :cond_4fb
    const/4 v0, 0x0

    goto/16 :goto_243

    .line 1000
    .restart local v10    # "cameraSoundForced":Z
    :cond_4fe
    const/4 v4, 0x0

    goto/16 :goto_2dc

    .line 1171
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v7    # "knoxModeIntentFilter":Landroid/content/IntentFilter;
    .restart local v11    # "numStreamTypes":I
    :cond_501
    const/4 v0, 0x0

    goto :goto_4c0

    .line 417
    nop

    :array_504
    .array-data 4
        0x5
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0x5
        0x5
        0xf
    .end array-data

    .line 434
    :array_524
    .array-data 4
        0x5
        0xf
        0xf
        0x1e
        0xf
        0xf
        0xf
        0xf
        0xf
        0x1e
        0x1e
        0x5
        0x5
        0x1e
    .end array-data

    .line 460
    :array_544
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x2
        0x6
        0x7
        0x2
        0x3
        0x3
        0x0
        0x0
        0x3
    .end array-data

    .line 478
    :array_564
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    .line 496
    :array_584
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x2
        0x6
        0x7
        0x2
        0x3
        0x3
        0x0
        0x0
        0x3
    .end array-data

    .line 823
    :array_5a4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private ChangeDefaultVolume()V
    .registers 1

    .prologue
    .line 9484
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)Lcom/android/server/audio/AudioService$AudioHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$AudioHandler;

    .prologue
    .line 216
    iput-object p1, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 7
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 216
    invoke-static/range {p0 .. p6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, setGlobalSoundAlive(I)V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget v0, p0, mK2HDEnabled:I

    return v0
.end method

.method static synthetic access$10102(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    iput p1, p0, mK2HDEnabled:I

    return p1
.end method

.method static synthetic access$10200(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, setGlobalK2HD(I)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget v0, p0, mTubeAmpEnabled:I

    return v0
.end method

.method static synthetic access$10302(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    iput p1, p0, mTubeAmpEnabled:I

    return p1
.end method

.method static synthetic access$10400(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, setGlobalTubeAmp(I)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget v0, p0, mDockState:I

    return v0
.end method

.method static synthetic access$10502(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    iput p1, p0, mDockState:I

    return p1
.end method

.method static synthetic access$10602(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, mbAobleState:Z

    return p1
.end method

.method static synthetic access$10700(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 216
    invoke-direct {p0, p1}, sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-boolean v0, p0, mMonitorRotation:Z

    return v0
.end method

.method static synthetic access$10900(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-boolean v0, p0, mCPUBoostForComm:Z

    return v0
.end method

.method static synthetic access$11000(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    invoke-direct {p0}, stopCPUBoost()V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/server/audio/AudioService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    invoke-direct {p0, p1}, startCPUBoost(Z)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 216
    invoke-direct {p0, p1}, handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/android/server/audio/AudioService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    invoke-direct {p0, p1}, readAudioSettings(Z)V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 216
    invoke-direct {p0, p1}, killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11700(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget v0, p0, mMode:I

    return v0
.end method

.method static synthetic access$11802(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, mIsEarCareSettingOn:Z

    return p1
.end method

.method static synthetic access$11900(Lcom/android/server/audio/AudioService;)Lcom/sec/android/emergencymode/EmergencyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/server/audio/AudioService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mExternalUsbInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12002(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, mExternalUsbInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12100(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-direct/range {p0 .. p5}, setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12200(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget v0, p0, mMonoMode:I

    return v0
.end method

.method static synthetic access$12202(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    iput p1, p0, mMonoMode:I

    return p1
.end method

.method static synthetic access$12300(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, setMonoMode(I)V

    return-void
.end method

.method static synthetic access$12400(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget v0, p0, mNbQualityMode:I

    return v0
.end method

.method static synthetic access$12402(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    iput p1, p0, mNbQualityMode:I

    return p1
.end method

.method static synthetic access$12500(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, setNbQualityMode(I)V

    return-void
.end method

.method static synthetic access$12600(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget v0, p0, mDualMicMode:I

    return v0
.end method

.method static synthetic access$12602(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    iput p1, p0, mDualMicMode:I

    return p1
.end method

.method static synthetic access$12700(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, setDualMicMode(I)V

    return-void
.end method

.method static synthetic access$12800(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget v0, p0, mNaturalSound:I

    return v0
.end method

.method static synthetic access$12802(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    iput p1, p0, mNaturalSound:I

    return p1
.end method

.method static synthetic access$12900(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, setNaturalSoundMode(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$13002(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    iput p1, p0, mAllSoundMute:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .prologue
    .line 216
    iput-object p1, p0, mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$13100(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    invoke-direct {p0}, setAllSoundMute()V

    return-void
.end method

.method static synthetic access$13202(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, mStatusbarExpanded:Z

    return p1
.end method

.method static synthetic access$13300(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-boolean v0, p0, mIsFolderOpen:Z

    return v0
.end method

.method static synthetic access$13302(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, mIsFolderOpen:Z

    return p1
.end method

.method static synthetic access$13400(Lcom/android/server/audio/AudioService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13500(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    invoke-direct {p0}, reloadWhitelist()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    iput p1, p0, mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$14100(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method static synthetic access$14200(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-boolean v0, p0, mHdmiCecSink:Z

    return v0
.end method

.method static synthetic access$14202(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, mHdmiCecSink:Z

    return p1
.end method

.method static synthetic access$14300(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    invoke-direct {p0}, checkAllFixedVolumeDevices()V

    return-void
.end method

.method static synthetic access$14600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$VolumeController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object v0
.end method

.method static synthetic access$14702(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .prologue
    .line 216
    iput-object p1, p0, mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p1
.end method

.method static synthetic access$14800(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .prologue
    .line 216
    invoke-direct/range {p0 .. p6}, adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$14900(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .prologue
    .line 216
    invoke-direct/range {p0 .. p6}, adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$15000(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .prologue
    .line 216
    invoke-direct/range {p0 .. p6}, setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$15100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ControllerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    return-object v0
.end method

.method static synthetic access$15208(Lcom/android/server/audio/AudioService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget v0, p0, mAudioPolicyCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mAudioPolicyCounter:I

    return v0
.end method

.method static synthetic access$15300(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mAudioPolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$15400(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    invoke-direct {p0}, isUSBCheckStreamActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$15500(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    invoke-direct {p0}, isInCommunication()Z

    move-result v0

    return v0
.end method

.method static synthetic access$15600(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-boolean v0, p0, mUSBDetected:Z

    return v0
.end method

.method static synthetic access$15602(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, mUSBDetected:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-direct {p0, p1, p2, p3, p4}, setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mSoundPoolLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 216
    iput-object p1, p0, mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 216
    iput-object p1, p0, mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .prologue
    .line 216
    iput-object p1, p0, mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    invoke-direct {p0}, checkScoAudioState()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget v0, p0, mScoAudioState:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    iput p1, p0, mScoAudioState:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget v0, p0, mScoAudioMode:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    iput p1, p0, mScoAudioMode:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 216
    iput-object p1, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 216
    iput-object p1, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    invoke-direct {p0}, getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/audio/AudioService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, checkDeviceConnected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mConnectedDevices:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mA2dpAvrcpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 216
    iput-object p1, p0, mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/audio/AudioService;II)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, checkSendBecomingNoisyIntent(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 216
    invoke-direct/range {p0 .. p6}, queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-direct {p0, p1}, makeA2dpSrcUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000()[I
    .registers 1

    .prologue
    .line 216
    sget-object v0, MIN_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/audio/AudioService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, MAX_STREAM_VOLUME2:[I

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/audio/AudioService;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, getAddressForDevice(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, observeDevicesForStreams(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/audio/AudioService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mStreamVolumeAlias:[I

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 216
    invoke-direct {p0, p1}, sendBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-boolean v0, p0, mUseFixedVolume:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-boolean v0, p0, mAvrcpAbsVolSupported:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, mMediaSilentMode:Z

    return p1
.end method

.method static synthetic access$5002(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    iput p1, p0, mMediaLastAudibleIndex:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/audio/AudioService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget v0, p0, mPrevRingerMode:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget v0, p0, mRingerMode:I

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    invoke-direct {p0}, getCurOutDevice()I

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mCameraSoundForced:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/audio/AudioService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/audio/AudioService;III)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1, p2, p3}, rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/audio/AudioService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, getDevicesForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    invoke-direct {p0}, isPlatformTelevision()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-boolean v0, p0, mSystemReady:Z

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    invoke-direct {p0}, loadTouchSoundAssets()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .prologue
    .line 216
    iput-object p1, p0, mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method static synthetic access$6500()Ljava/util/List;
    .registers 1

    .prologue
    .line 216
    sget-object v0, SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/audio/AudioService;)[[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-boolean v0, p0, mIsDefaultStreamNotification:Z

    return v0
.end method

.method static synthetic access$6900(Lcom/android/server/audio/AudioService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, setForceUseInt_SyncDevices(II)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-direct {p0, p1}, makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    invoke-direct {p0}, resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-direct/range {p0 .. p5}, onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7302(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    iput p1, p0, mLateBootCompleted_WiredDevice:I

    return p1
.end method

.method static synthetic access$7400(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-direct {p0, p1}, onCheckMusicActive(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, onSendBecomingNoisyIntent(I)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, onConfigureSafeVolume(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, onBroadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/audio/AudioService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, onUnmuteStream(II)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, onDynPolicyMixStateUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, onSetAoBleSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-boolean v0, p0, mFakeState:Z

    return v0
.end method

.method static synthetic access$8402(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, mFakeState:Z

    return p1
.end method

.method static synthetic access$8500(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    invoke-direct {p0}, checkAndSendEarCareInfo()V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    invoke-direct {p0}, performSoftReset()V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    invoke-direct {p0}, playSilentModeSound()V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    invoke-direct {p0}, vibrateCall()V

    return-void
.end method

.method static synthetic access$8902(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, mIsPlaySilentModeOff:Z

    return p1
.end method

.method static synthetic access$9002(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, mIsVibrate:Z

    return p1
.end method

.method static synthetic access$9100(Lcom/android/server/audio/AudioService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, onSendBecomingNoisyIntent(II)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget-object v0, p0, mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    invoke-direct {p0}, updateRingerModeAffectedStreams()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9400(Lcom/android/server/audio/AudioService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 216
    invoke-direct {p0, p1}, readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/server/audio/AudioService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    invoke-direct {p0, p1}, checkAndSetThemeSound(Z)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget v0, p0, mMySoundEnabled:I

    return v0
.end method

.method static synthetic access$9702(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    iput p1, p0, mMySoundEnabled:I

    return p1
.end method

.method static synthetic access$9800(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, setGlobalMySound(I)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 216
    iget v0, p0, mSoundAliveEnabled:I

    return v0
.end method

.method static synthetic access$9902(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 216
    iput p1, p0, mSoundAliveEnabled:I

    return p1
.end method

.method private adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 38
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .prologue
    .line 1895
    move-object/from16 v0, p0

    iget-boolean v5, v0, mUseFixedVolume:Z

    if-eqz v5, :cond_7

    .line 2188
    :cond_6
    :goto_6
    return-void

    .line 1898
    :cond_7
    sget-boolean v5, DEBUG_VOL:Z

    if-eqz v5, :cond_49

    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adjustStreamVolume() stream="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dir="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", caller="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    :cond_49
    move-object/from16 v0, p0

    iget v5, v0, mAllSoundMute:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_63

    .line 1903
    new-instance v19, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.SOUND_OFF_TOAST"

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1904
    .local v19, "intent":Landroid/content/Intent;
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_6

    .line 1908
    .end local v19    # "intent":Landroid/content/Intent;
    :cond_63
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, ensureValidDirection(I)V

    .line 1909
    invoke-direct/range {p0 .. p1}, ensureValidStreamType(I)V

    .line 1911
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, isMuteAdjust(I)Z

    move-result v21

    .line 1913
    .local v21, "isMuteAdjust":Z
    if-eqz v21, :cond_7d

    invoke-virtual/range {p0 .. p1}, isStreamAffectedByMute(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1920
    :cond_7d
    move-object/from16 v0, p0

    iget-object v5, v0, mStreamVolumeAlias:[I

    aget v12, v5, p1

    .line 1922
    .local v12, "streamTypeAlias":I
    move-object/from16 v0, p0

    iget-object v5, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v30, v5, v12

    .line 1924
    .local v30, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, getDeviceForStream(I)I

    move-result v8

    .line 1926
    .local v8, "device":I
    const/16 v5, 0xa

    move/from16 v0, p1

    if-ne v0, v5, :cond_9c

    invoke-virtual/range {p0 .. p0}, isRadioSpeakerOn()Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 1927
    const/4 v8, 0x2

    .line 1930
    :cond_9c
    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v17

    .line 1931
    .local v17, "aliasIndex":I
    const/16 v16, 0x1

    .line 1935
    .local v16, "adjustVolume":Z
    invoke-direct/range {p0 .. p0}, isFMRadioRecording()Z

    move-result v20

    .line 1936
    .local v20, "isFMRadioRecording":Z
    if-eqz v20, :cond_e4

    .line 1937
    const/16 v16, 0x0

    .line 1938
    sget-boolean v5, DEBUG_VOL:Z

    if-eqz v5, :cond_d0

    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adjustStreamVolume - FM Recording... change adjustVolume value("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :cond_d0
    const/high16 v5, 0x2000000

    move/from16 v0, p3

    if-eq v0, v5, :cond_6

    const/16 v5, 0x11

    move/from16 v0, p3

    if-eq v0, v5, :cond_6

    if-nez p3, :cond_e4

    const/16 v5, 0xa

    move/from16 v0, p1

    if-ne v0, v5, :cond_6

    .line 1948
    :cond_e4
    const v5, 0x20000380

    and-int/2addr v5, v8

    if-nez v5, :cond_ee

    and-int/lit8 v5, p3, 0x40

    if-nez v5, :cond_6

    .line 1955
    :cond_ee
    const/16 v5, 0x3e8

    move/from16 v0, p6

    if-ne v0, v5, :cond_100

    .line 1956
    invoke-direct/range {p0 .. p0}, getCurrentUserId()I

    move-result v5

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result p6

    .line 1958
    :cond_100
    move-object/from16 v0, p0

    iget-object v5, v0, mAppOps:Landroid/app/AppOpsManager;

    sget-object v6, STREAM_VOLUME_OPS:[I

    aget v6, v6, v12

    move/from16 v0, p6

    move-object/from16 v1, p4

    invoke-virtual {v5, v6, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    .line 1963
    const/high16 v5, 0x2000000

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, checkDeviceConnected(I)Z

    move-result v5

    if-eqz v5, :cond_122

    move-object/from16 v0, p0

    iget v5, v0, mMode:I

    if-eqz v5, :cond_6

    .line 1968
    :cond_122
    move-object/from16 v0, p0

    iget-object v6, v0, mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v6

    .line 1969
    const/4 v5, 0x0

    :try_start_128
    move-object/from16 v0, p0

    iput-object v5, v0, mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 1972
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 1974
    monitor-exit v6
    :try_end_132
    .catchall {:try_start_128 .. :try_end_132} :catchall_238

    .line 1976
    and-int/lit8 p3, p3, -0x21

    .line 1977
    const/4 v5, 0x3

    if-ne v12, v5, :cond_241

    move-object/from16 v0, p0

    iget v5, v0, mFixedVolumeDevices:I

    and-int/2addr v5, v8

    if-eqz v5, :cond_241

    .line 1979
    or-int/lit8 p3, p3, 0x20

    .line 1984
    move-object/from16 v0, p0

    iget-object v5, v0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_23b

    const v5, 0x2000018c

    and-int/2addr v5, v8

    if-eqz v5, :cond_23b

    .line 1986
    move-object/from16 v0, p0

    iget v0, v0, mSafeMediaVolumeIndex:I

    move/from16 v28, v0

    .line 1990
    .local v28, "step":I
    :goto_157
    if-eqz v17, :cond_15b

    .line 1991
    move/from16 v17, v28

    .line 2000
    :cond_15b
    :goto_15b
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_165

    invoke-virtual/range {p0 .. p0}, getUiSoundsStreamType()I

    move-result v5

    if-ne v12, v5, :cond_19e

    .line 2002
    :cond_165
    invoke-virtual/range {p0 .. p0}, getRingerModeInternal()I

    move-result v26

    .line 2004
    .local v26, "ringerMode":I
    const/4 v5, 0x1

    move/from16 v0, v26

    if-ne v0, v5, :cond_170

    .line 2005
    and-int/lit8 p3, p3, -0x11

    .line 2009
    :cond_170
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static/range {v30 .. v30}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v5}, checkForRingerModeChange(IIIZ)I

    move-result v25

    .line 2011
    .local v25, "result":I
    and-int/lit8 v5, v25, 0x1

    if-eqz v5, :cond_24d

    const/16 v16, 0x1

    .line 2013
    :goto_186
    move/from16 v0, v25

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_192

    .line 2014
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x80

    move/from16 p3, v0

    .line 2017
    :cond_192
    move/from16 v0, v25

    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_19e

    .line 2018
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x800

    move/from16 p3, v0

    .line 2022
    .end local v25    # "result":I
    .end local v26    # "ringerMode":I
    :cond_19e
    const/4 v5, 0x3

    if-ne v12, v5, :cond_1ab

    move-object/from16 v0, p0

    iget v5, v0, mRingerModeMutedStreams:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1ab

    .line 2024
    const/16 v16, 0x0

    .line 2027
    :cond_1ab
    move-object/from16 v0, p0

    iget-object v5, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    invoke-virtual {v5, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v24

    .line 2029
    .local v24, "oldIndex":I
    if-eqz v16, :cond_2fa

    if-eqz p2, :cond_2fa

    .line 2030
    move-object/from16 v0, p0

    iget-object v5, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 2033
    const/4 v5, 0x3

    if-ne v12, v5, :cond_1ea

    const v5, 0x20000380

    and-int/2addr v5, v8

    if-eqz v5, :cond_1ea

    and-int/lit8 v5, p3, 0x40

    if-nez v5, :cond_1ea

    .line 2036
    move-object/from16 v0, p0

    iget-object v6, v0, mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2037
    :try_start_1d4
    move-object/from16 v0, p0

    iget-object v5, v0, mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v5, :cond_1e9

    move-object/from16 v0, p0

    iget-boolean v5, v0, mAvrcpAbsVolSupported:Z

    if-eqz v5, :cond_1e9

    .line 2038
    move-object/from16 v0, p0

    iget-object v5, v0, mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothA2dp;->adjustAvrcpAbsoluteVolume(I)V

    .line 2040
    :cond_1e9
    monitor-exit v6
    :try_end_1ea
    .catchall {:try_start_1d4 .. :try_end_1ea} :catchall_251

    .line 2043
    :cond_1ea
    if-eqz v21, :cond_263

    .line 2045
    const/16 v5, 0x65

    move/from16 v0, p2

    if-ne v0, v5, :cond_257

    .line 2046
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static/range {v30 .. v30}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    if-nez v5, :cond_254

    const/16 v27, 0x1

    .line 2050
    .local v27, "state":Z
    :goto_1fa
    const/4 v5, 0x3

    if-ne v12, v5, :cond_204

    .line 2051
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, setSystemAudioMute(Z)V

    .line 2053
    :cond_204
    const/16 v29, 0x0

    .local v29, "stream":I
    :goto_206
    move-object/from16 v0, p0

    iget-object v5, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v5, v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_2a2

    .line 2054
    move-object/from16 v0, p0

    iget-object v5, v0, mStreamVolumeAlias:[I

    aget v5, v5, v29

    if-ne v12, v5, :cond_235

    .line 2055
    invoke-direct/range {p0 .. p0}, readCameraSoundForced()Z

    move-result v5

    if-eqz v5, :cond_22a

    move-object/from16 v0, p0

    iget-object v5, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v29

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_235

    .line 2058
    :cond_22a
    move-object/from16 v0, p0

    iget-object v5, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v29

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2053
    :cond_235
    add-int/lit8 v29, v29, 0x1

    goto :goto_206

    .line 1974
    .end local v24    # "oldIndex":I
    .end local v27    # "state":Z
    .end local v28    # "step":I
    .end local v29    # "stream":I
    :catchall_238
    move-exception v5

    :try_start_239
    monitor-exit v6
    :try_end_23a
    .catchall {:try_start_239 .. :try_end_23a} :catchall_238

    throw v5

    .line 1988
    :cond_23b
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v28

    .restart local v28    # "step":I
    goto/16 :goto_157

    .line 1995
    .end local v28    # "step":I
    :cond_241
    const/16 v5, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v12}, rescaleIndex(III)I

    move-result v28

    .restart local v28    # "step":I
    goto/16 :goto_15b

    .line 2011
    .restart local v25    # "result":I
    .restart local v26    # "ringerMode":I
    :cond_24d
    const/16 v16, 0x0

    goto/16 :goto_186

    .line 2040
    .end local v25    # "result":I
    .end local v26    # "ringerMode":I
    .restart local v24    # "oldIndex":I
    :catchall_251
    move-exception v5

    :try_start_252
    monitor-exit v6
    :try_end_253
    .catchall {:try_start_252 .. :try_end_253} :catchall_251

    throw v5

    .line 2046
    :cond_254
    const/16 v27, 0x0

    goto :goto_1fa

    .line 2048
    :cond_257
    const/16 v5, -0x64

    move/from16 v0, p2

    if-ne v0, v5, :cond_260

    const/16 v27, 0x1

    .restart local v27    # "state":Z
    :goto_25f
    goto :goto_1fa

    .end local v27    # "state":Z
    :cond_260
    const/16 v27, 0x0

    goto :goto_25f

    .line 2063
    :cond_263
    if-nez v20, :cond_313

    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_313

    add-int v5, v17, v28

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5, v8}, checkSafeMediaVolume(III)Z

    move-result v5

    if-nez v5, :cond_313

    .line 2065
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    invoke-direct/range {p0 .. p0}, isCoverOpen()Z

    move-result v5

    if-nez v5, :cond_299

    .line 2068
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, mIsCoverSafetyVolume:Z

    .line 2071
    :cond_299
    move-object/from16 v0, p0

    iget-object v5, v0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2166
    :cond_2a2
    :goto_2a2
    move-object/from16 v0, p0

    iget-object v5, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    invoke-virtual {v5, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v23

    .line 2167
    .local v23, "newIndex":I
    const/4 v5, 0x3

    if-ne v12, v5, :cond_2be

    .line 2168
    invoke-virtual/range {p0 .. p1}, getStreamMaxVolume(I)I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v23

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v5, v3}, setSystemAudioVolume(IIII)V

    .line 2170
    :cond_2be
    move-object/from16 v0, p0

    iget-object v5, v0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v5, :cond_2fa

    .line 2171
    move-object/from16 v0, p0

    iget-object v6, v0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v6

    .line 2173
    :try_start_2c9
    move-object/from16 v0, p0

    iget-boolean v5, v0, mHdmiCecSink:Z

    if-eqz v5, :cond_2f9

    const/4 v5, 0x3

    if-ne v12, v5, :cond_2f9

    move/from16 v0, v24

    move/from16 v1, v23

    if-eq v0, v1, :cond_2f9

    .line 2176
    move-object/from16 v0, p0

    iget-object v7, v0, mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    monitor-enter v7
    :try_end_2dd
    .catchall {:try_start_2c9 .. :try_end_2dd} :catchall_45d

    .line 2177
    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_456

    const/16 v22, 0x19

    .line 2179
    .local v22, "keyCode":I
    :goto_2e4
    :try_start_2e4
    move-object/from16 v0, p0

    iget-object v5, v0, mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v9, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0, v9}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 2180
    move-object/from16 v0, p0

    iget-object v5, v0, mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v9, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0, v9}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 2181
    monitor-exit v7
    :try_end_2f9
    .catchall {:try_start_2e4 .. :try_end_2f9} :catchall_45a

    .line 2183
    .end local v22    # "keyCode":I
    :cond_2f9
    :try_start_2f9
    monitor-exit v6
    :try_end_2fa
    .catchall {:try_start_2f9 .. :try_end_2fa} :catchall_45d

    .line 2186
    .end local v23    # "newIndex":I
    :cond_2fa
    move-object/from16 v0, p0

    iget-object v5, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    invoke-virtual {v5, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v18

    .line 2187
    .local v18, "index":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v18

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, sendVolumeUpdate(IIII)V

    goto/16 :goto_6

    .line 2073
    .end local v18    # "index":I
    :cond_313
    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_32f

    move-object/from16 v0, p0

    iget-object v5, v0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$VolumeController;->isSafeVolumeDialogShowing()Z

    move-result v5

    if-eqz v5, :cond_32f

    .line 2074
    move-object/from16 v0, p0

    iget-object v5, v0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2075
    and-int/lit8 p3, p3, -0x2

    goto/16 :goto_2a2

    .line 2077
    :cond_32f
    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_36f

    add-int/lit8 v5, v24, 0x5

    div-int/lit8 v5, v5, 0xa

    sget-object v6, MAX_STREAM_VOLUME:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    if-ne v5, v6, :cond_36f

    const/4 v5, 0x3

    move/from16 v0, p1

    if-ne v0, v5, :cond_36f

    .line 2080
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static/range {v30 .. v30}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_355

    .line 2083
    const/4 v5, 0x5

    move/from16 v0, p1

    if-eq v0, v5, :cond_355

    .line 2084
    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2086
    :cond_355
    move-object/from16 v0, p0

    iget-object v5, v0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v8}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    .line 2087
    move-object/from16 v0, p0

    iget-object v5, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x70

    const/4 v7, 0x2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_2a2

    .line 2094
    :cond_36f
    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_399

    add-int/lit8 v5, v24, 0x5

    div-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_399

    const/4 v5, 0x3

    move/from16 v0, p1

    if-ne v0, v5, :cond_399

    .line 2097
    move-object/from16 v0, p0

    iget-object v5, v0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v8}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    .line 2098
    move-object/from16 v0, p0

    iget-object v5, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x70

    const/4 v7, 0x2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_2a2

    .line 2107
    :cond_399
    mul-int v5, p2, v28

    move-object/from16 v0, v30

    move-object/from16 v1, p5

    invoke-virtual {v0, v5, v8, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->adjustIndex(IILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3ab

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static/range {v30 .. v30}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_2a2

    .line 2111
    :cond_3ab
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static/range {v30 .. v30}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_3c1

    .line 2113
    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_427

    .line 2115
    const/4 v5, 0x5

    move/from16 v0, p1

    if-eq v0, v5, :cond_3c1

    .line 2116
    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2125
    :cond_3c1
    :goto_3c1
    move-object/from16 v0, p0

    iget-boolean v5, v0, mIsCoverSafetyVolume:Z

    if-eqz v5, :cond_3e9

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_3e9

    .line 2126
    move-object/from16 v0, p0

    iget v5, v0, mSafeMediaVolumeIndex:I

    move/from16 v0, v24

    if-ne v0, v5, :cond_3e9

    .line 2127
    const-string v5, "AudioService"

    const-string v6, "adjustStreamVolume() Remove the safeVolumeWarning pop-up on S cover."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    move-object/from16 v0, p0

    iget-object v5, v0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2129
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, mIsCoverSafetyVolume:Z

    .line 2133
    :cond_3e9
    move-object/from16 v0, p0

    iget-object v5, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v10, v30

    invoke-static/range {v5 .. v11}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2141
    const/4 v5, 0x3

    move/from16 v0, p1

    if-ne v0, v5, :cond_2a2

    .line 2142
    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_444

    add-int/lit8 v5, v24, 0x5

    div-int/lit8 v5, v5, 0xa

    sget-object v6, MAX_STREAM_VOLUME:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_444

    .line 2144
    move-object/from16 v0, p0

    iget-object v5, v0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v8}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    .line 2145
    move-object/from16 v0, p0

    iget-object v5, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x70

    const/4 v7, 0x2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_2a2

    .line 2117
    :cond_427
    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_3c1

    .line 2118
    move-object/from16 v0, p0

    iget v5, v0, mPlatformType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3c1

    .line 2119
    move-object/from16 v0, p0

    iget-object v9, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x18

    const/4 v11, 0x2

    const/4 v14, 0x0

    const/16 v15, 0x15e

    move/from16 v13, p3

    invoke-static/range {v9 .. v15}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_3c1

    .line 2153
    :cond_444
    move-object/from16 v0, p0

    iget-object v5, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x70

    const/4 v7, 0x2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_2a2

    .line 2177
    .restart local v23    # "newIndex":I
    :cond_456
    const/16 v22, 0x18

    goto/16 :goto_2e4

    .line 2181
    .restart local v22    # "keyCode":I
    :catchall_45a
    move-exception v5

    :try_start_45b
    monitor-exit v7
    :try_end_45c
    .catchall {:try_start_45b .. :try_end_45c} :catchall_45a

    :try_start_45c
    throw v5

    .line 2183
    .end local v22    # "keyCode":I
    :catchall_45d
    move-exception v5

    monitor-exit v6
    :try_end_45f
    .catchall {:try_start_45c .. :try_end_45f} :catchall_45d

    throw v5
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 17
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .prologue
    .line 1827
    sget-boolean v0, DEBUG_VOL:Z

    if-eqz v0, :cond_30

    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_30
    invoke-direct {p0, p1}, isMuteAdjust(I)Z

    move-result v7

    .line 1831
    .local v7, "isMute":Z
    iget v0, p0, mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6a

    .line 1832
    iget v1, p0, mVolumeControlStream:I

    .line 1836
    .local v1, "streamType":I
    :goto_3b
    invoke-direct {p0, v1}, ensureValidStreamType(I)V

    .line 1837
    iget-object v0, p0, mStreamVolumeAlias:[I

    aget v9, v0, v1

    .line 1847
    .local v9, "resolvedStream":I
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_4f

    .line 1848
    iget-boolean v0, p0, mIsDefaultStreamNotification:Z

    if-eqz v0, :cond_6f

    .line 1849
    const/4 v0, 0x5

    if-eq v9, v0, :cond_4f

    .line 1850
    and-int/lit8 p3, p3, -0x5

    .line 1875
    :cond_4f
    :goto_4f
    invoke-direct {p0}, isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_97

    iget-object v0, p0, mStreamVolumeAlias:[I

    aget v0, v0, v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_97

    .line 1876
    invoke-direct {p0}, isInCommunication()Z

    move-result v0

    if-nez v0, :cond_97

    .line 1877
    const-string v0, "AudioService"

    const-string v2, "Volume change disabled : cover closed."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :goto_69
    return-void

    .line 1834
    .end local v1    # "streamType":I
    .end local v9    # "resolvedStream":I
    :cond_6a
    invoke-virtual {p0, p2}, getActiveStreamType(I)I

    move-result v1

    .restart local v1    # "streamType":I
    goto :goto_3b

    .line 1852
    .restart local v9    # "resolvedStream":I
    :cond_6f
    const/4 v0, 0x2

    if-eq v9, v0, :cond_75

    .line 1853
    and-int/lit8 p3, p3, -0x5

    goto :goto_4f

    .line 1854
    :cond_75
    invoke-virtual {p0}, getMode()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_82

    invoke-virtual {p0}, isTalkBackEnabled()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1855
    :cond_82
    and-int/lit8 p3, p3, -0x5

    goto :goto_4f

    .line 1857
    :cond_85
    const-string/jumbo v0, "isRecordActive"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1858
    .local v8, "isRecordActive":Ljava/lang/String;
    const-string v0, "TRUE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1859
    and-int/lit8 p3, p3, -0x5

    goto :goto_4f

    .end local v8    # "isRecordActive":Ljava/lang/String;
    :cond_97
    move-object v0, p0

    move v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    .line 1883
    invoke-direct/range {v0 .. v6}, adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_69
.end method

.method private broadcastMasterMuteStatus(Z)V
    .registers 4
    .param p1, "muted"    # Z

    .prologue
    .line 2671
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2672
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2673
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2675
    invoke-direct {p0, v0}, sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 2676
    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "ringerMode"    # I

    .prologue
    .line 5047
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5048
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5049
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5051
    invoke-direct {p0, v0}, sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 5052
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .registers 9
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 4236
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v3, p1

    move v6, v4

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4238
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .registers 5
    .param p1, "vibrateType"    # I

    .prologue
    .line 5056
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 5057
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5058
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5059
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5060
    invoke-direct {p0, v0}, sendBroadcastToAll(Landroid/content/Intent;)V

    .line 5062
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_1e
    return-void
.end method

.method private callLcdOn()V
    .registers 5

    .prologue
    .line 9830
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 9831
    .local v0, "pm":Landroid/os/PowerManager;
    const v2, 0x3000000a

    const-string v3, "AudioService"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 9834
    .local v1, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 9835
    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 9837
    :cond_1f
    return-void
.end method

.method private callVibrateMsg()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9822
    iget-boolean v0, p0, mIsVibrate:Z

    if-eq v0, v2, :cond_16

    .line 9823
    invoke-direct {p0}, vibrateCall()V

    .line 9824
    iput-boolean v2, p0, mIsVibrate:Z

    .line 9826
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6d

    const/4 v5, 0x0

    const/16 v6, 0x258

    move v4, v3

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 9828
    :cond_16
    return-void
.end method

.method private cancelA2dpDeviceTimeout()V
    .registers 3

    .prologue
    .line 6644
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 6645
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .registers 7

    .prologue
    .line 1444
    const-class v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v3

    .line 1445
    :try_start_3
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1446
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_8
    if-ge v1, v0, :cond_35

    .line 1447
    iget-object v2, p0, mStreamVolumeAlias:[I

    aget v2, v2, v1

    if-eq v1, v2, :cond_21

    .line 1448
    iget-object v2, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v4, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget-object v5, p0, mStreamVolumeAlias:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    const-string v5, "AudioService"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1453
    :cond_21
    iget-object v2, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 1454
    iget-object v2, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1446
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1457
    :cond_35
    monitor-exit v3

    .line 1458
    return-void

    .line 1457
    .end local v0    # "numStreamTypes":I
    .end local v1    # "streamType":I
    :catchall_37
    move-exception v2

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v2
.end method

.method private checkAllFixedVolumeDevices()V
    .registers 4

    .prologue
    .line 1462
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1463
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 1464
    iget-object v2, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1463
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1466
    :cond_11
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 1469
    iget-object v0, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1470
    return-void
.end method

.method private checkAndSendEarCareInfo()V
    .registers 15

    .prologue
    const/16 v1, 0x68

    const/4 v3, 0x0

    .line 9405
    iget-boolean v0, p0, mSystemReady:Z

    if-nez v0, :cond_8

    .line 9449
    :cond_7
    :goto_7
    return-void

    .line 9407
    :cond_8
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.audio.epinforesponse"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9410
    .local v7, "broadcast":Landroid/content/Intent;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 9411
    .local v8, "extras":Landroid/os/Bundle;
    const/16 v0, 0x180

    invoke-direct {p0, v0}, checkDeviceConnected(I)Z

    move-result v9

    .line 9412
    .local v9, "isConnected":Z
    iget-boolean v0, p0, mIsEarCareSettingOn:Z

    if-eqz v0, :cond_b6

    if-eqz v9, :cond_b6

    .line 9413
    const/4 v11, 0x0

    .line 9414
    .local v11, "nState":I
    invoke-direct {p0}, getActiveStreamCount()I

    move-result v0

    if-lez v0, :cond_ad

    .line 9415
    const-string/jumbo v0, "earcare=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9416
    const/4 v11, 0x1

    .line 9421
    :goto_2e
    const-string/jumbo v0, "earcare_percent"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 9422
    .local v13, "strState":Ljava/lang/String;
    if-eqz v13, :cond_99

    const-string v0, ""

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    .line 9423
    const-string/jumbo v12, "earcare_percent="

    .line 9424
    .local v12, "strKey":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_7

    .line 9425
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 9428
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 9429
    .local v10, "nPercent":I
    const-string v0, "AudioService"

    const-string v2, "checkAndSendEarCareInfo() - send intent"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9430
    const-string/jumbo v0, "state"

    invoke-virtual {v8, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9431
    const-string/jumbo v0, "percent"

    invoke-virtual {v8, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9432
    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9433
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v7, v0}, sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 9434
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndSendEarCareInfo() state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " percent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9446
    .end local v10    # "nPercent":I
    .end local v12    # "strKey":Ljava/lang/String;
    :cond_99
    const-string v0, "AudioService"

    const-string v2, "checkAndSendEarCareInfo() - Loop"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9448
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const v6, 0xea60

    move v4, v3

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_7

    .line 9418
    .end local v13    # "strState":Ljava/lang/String;
    :cond_ad
    const-string/jumbo v0, "earcare=noActive"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9419
    const/4 v11, 0x0

    goto/16 :goto_2e

    .line 9438
    .end local v11    # "nState":I
    :cond_b6
    const-string v0, "AudioService"

    const-string v2, "checkAndSendEarCareInfo() - send off"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9439
    const-string/jumbo v0, "earcare=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9440
    const-string/jumbo v0, "state"

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9441
    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9442
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v7, v0}, sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 9443
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    goto/16 :goto_7
.end method

.method private checkAndSetSplitSound(Landroid/media/AudioAttributes;Ljava/lang/String;I)V
    .registers 6
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "durationHint"    # I

    .prologue
    .line 9903
    const-string v0, "com.android.server.telecom"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1d

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1d

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4c

    .line 9905
    :cond_1d
    const/16 v0, 0x7c

    invoke-direct {p0, v0}, checkDeviceConnected(I)Z

    move-result v0

    iput-boolean v0, p0, mIsExceptionalDevice:Z

    .line 9910
    const/high16 v0, 0x1000000

    invoke-direct {p0, v0}, checkDeviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-boolean v0, p0, mIsExceptionalDevice:Z

    if-nez v0, :cond_4d

    .line 9911
    const/4 v0, 0x1

    iput-boolean v0, p0, mSplitSound:Z

    .line 9916
    :goto_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioParam;SplitSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mSplitSound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9918
    :cond_4c
    return-void

    .line 9913
    :cond_4d
    const/4 v0, 0x0

    iput-boolean v0, p0, mSplitSound:Z

    goto :goto_34
.end method

.method private checkAndSetThemeSound(Z)V
    .registers 4
    .param p1, "userSwitch"    # Z

    .prologue
    .line 9882
    if-eqz p1, :cond_14

    .line 9883
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    .line 9884
    invoke-virtual {p0}, unloadSoundEffects()V

    .line 9885
    invoke-virtual {p0}, loadSoundEffects()Z

    .line 9900
    :cond_13
    :goto_13
    return-void

    .line 9887
    :cond_14
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 9889
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    .line 9890
    const-string v0, "AudioService"

    const-string v1, "Theme is changed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9891
    invoke-virtual {p0}, unloadSoundEffects()V

    .line 9892
    invoke-virtual {p0}, loadSoundEffects()Z

    goto :goto_13

    .line 9893
    :cond_49
    iget-object v0, p0, SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    .line 9894
    const/4 v0, 0x0

    iput-object v0, p0, SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    .line 9895
    const-string v0, "AudioService"

    const-string v1, "Theme is released."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9896
    invoke-virtual {p0}, unloadSoundEffects()V

    .line 9897
    invoke-virtual {p0}, loadSoundEffects()Z

    goto :goto_13
.end method

.method private checkAobleDeviceConnected()V
    .registers 6

    .prologue
    .line 1796
    const/4 v0, 0x0

    .line 1798
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_2a

    .line 1799
    iget-object v3, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 1801
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-eqz v1, :cond_2a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 1802
    iget-object v4, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2d

    .line 1804
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1810
    .end local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "i":I
    .restart local v0    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_2a
    iput-object v0, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1812
    return-void

    .line 1801
    .restart local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v2    # "i":I
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method private checkDeviceConnected(I)Z
    .registers 9
    .param p1, "checkDevices"    # I

    .prologue
    const v5, 0x8000

    const/high16 v6, -0x80000000

    const/4 v2, 0x1

    .line 9953
    iget-object v3, p0, mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 9954
    and-int v4, p1, v6

    if-nez v4, :cond_3a

    .line 9955
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    :try_start_e
    iget-object v4, p0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_28

    .line 9956
    iget-object v4, p0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 9957
    .local v0, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v4, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_25

    .line 9958
    monitor-exit v3

    .line 9977
    .end local v0    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :goto_24
    return v2

    .line 9955
    .restart local v0    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 9961
    .end local v0    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_28
    if-ne p1, v5, :cond_5e

    .line 9962
    const v4, 0x8000

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v4

    if-lez v4, :cond_5e

    .line 9963
    monitor-exit v3

    goto :goto_24

    .line 9976
    :catchall_37
    move-exception v2

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_37

    throw v2

    .line 9967
    .end local v1    # "i":I
    :cond_3a
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3b
    :try_start_3b
    iget-object v4, p0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_5e

    .line 9968
    iget-object v4, p0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 9969
    .restart local v0    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v4, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_5b

    .line 9970
    iget v4, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    and-int/2addr v4, p1

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    if-eqz v4, :cond_5b

    .line 9971
    monitor-exit v3

    goto :goto_24

    .line 9967
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 9976
    .end local v0    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_3b .. :try_end_5f} :catchall_37

    .line 9977
    const/4 v2, 0x0

    goto :goto_24
.end method

.method private checkFactoryMode()Z
    .registers 6

    .prologue
    .line 9494
    const/4 v1, 0x0

    .line 9496
    .local v1, "userMode":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_1b

    move-result-object v1

    .line 9501
    :goto_f
    if-eqz v1, :cond_26

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 9502
    const/4 v2, 0x0

    .line 9505
    :goto_1a
    return v2

    .line 9497
    :catch_1b
    move-exception v0

    .line 9498
    .local v0, "e1":Ljava/io/IOException;
    const-string v1, "OFF"

    .line 9499
    const-string v2, "AudioService"

    const-string v3, "cannot open file : /efs/FactoryApp/factorymode "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 9504
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_26
    const-string v2, "AudioService"

    const-string v3, "Current mode is Factorymode, So Popup UI will not be apear"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9505
    const/4 v2, 0x1

    goto :goto_1a
.end method

.method private checkFactorySim()Z
    .registers 8

    .prologue
    .line 9510
    :try_start_0
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 9511
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .line 9512
    .local v0, "IMSI":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 9513
    .local v2, "imsi":Ljava/lang/String;
    if-eqz v2, :cond_3d

    const-string v4, "999999999999999"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 9514
    const-string v4, "AudioService"

    const-string v5, "Factory SIM is used now, So Popup UI will not be apear"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    .line 9515
    const/4 v4, 0x1

    .line 9520
    .end local v0    # "IMSI":Ljava/lang/String;
    .end local v2    # "imsi":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :goto_23
    return v4

    .line 9517
    :catch_24
    move-exception v1

    .line 9518
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error checking factory SIM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9520
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3d
    const/4 v4, 0x0

    goto :goto_23
.end method

.method private checkForRingerModeChange(IIIZ)I
    .registers 15
    .param p1, "oldIndex"    # I
    .param p2, "direction"    # I
    .param p3, "step"    # I
    .param p4, "isMuted"    # Z

    .prologue
    .line 4584
    iget v5, p0, mPlatformType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2f

    const/4 v2, 0x1

    .line 4585
    .local v2, "isTv":Z
    :goto_6
    const/4 v3, 0x1

    .line 4586
    .local v3, "result":I
    invoke-virtual {p0}, getRingerModeInternal()I

    move-result v4

    .line 4588
    .local v4, "ringerMode":I
    packed-switch v4, :pswitch_data_e8

    .line 4685
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4689
    :cond_26
    :goto_26
    const-string v5, "AudioService.checkForRingerModeChange"

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, setRingerMode(ILjava/lang/String;Z)V

    .line 4691
    iput p2, p0, mPrevVolDirection:I

    .line 4693
    return v3

    .line 4584
    .end local v2    # "isTv":Z
    .end local v3    # "result":I
    .end local v4    # "ringerMode":I
    :cond_2f
    const/4 v2, 0x0

    goto :goto_6

    .line 4590
    .restart local v2    # "isTv":Z
    .restart local v3    # "result":I
    .restart local v4    # "ringerMode":I
    :pswitch_31
    const/4 v5, -0x1

    if-ne p2, v5, :cond_4f

    .line 4591
    iget-boolean v5, p0, mHasVibrator:Z

    if-eqz v5, :cond_4b

    .line 4601
    if-gt p3, p1, :cond_3e

    mul-int/lit8 v5, p3, 0x2

    if-lt p1, v5, :cond_40

    :cond_3e
    if-ge p1, p3, :cond_47

    .line 4603
    :cond_40
    const/4 v4, 0x1

    .line 4604
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, mLoweredFromNormalToVibrateTime:J

    .line 4616
    :cond_47
    :goto_47
    const/4 v5, 0x0

    iput-boolean v5, p0, mSilentModeOff:Z

    goto :goto_26

    .line 4611
    :cond_4b
    if-ne p1, p3, :cond_47

    .line 4613
    const/4 v4, 0x0

    goto :goto_47

    .line 4617
    :cond_4f
    const/16 v5, 0x65

    if-eq p2, v5, :cond_59

    if-eqz v2, :cond_26

    const/16 v5, -0x64

    if-ne p2, v5, :cond_26

    .line 4619
    :cond_59
    iget-boolean v5, p0, mHasVibrator:Z

    if-eqz v5, :cond_61

    .line 4620
    const/4 v4, 0x1

    .line 4625
    :goto_5e
    and-int/lit8 v3, v3, -0x2

    goto :goto_26

    .line 4622
    :cond_61
    const/4 v4, 0x0

    goto :goto_5e

    .line 4629
    :pswitch_63
    iget-boolean v5, p0, mHasVibrator:Z

    if-nez v5, :cond_6f

    .line 4630
    const-string v5, "AudioService"

    const-string v6, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 4634
    :cond_6f
    const/4 v5, -0x1

    if-ne p2, v5, :cond_9f

    .line 4636
    if-eqz v2, :cond_7e

    mul-int/lit8 v5, p3, 0x2

    if-lt p1, v5, :cond_7e

    if-eqz p4, :cond_7e

    .line 4637
    const/4 v4, 0x2

    .line 4658
    :cond_7b
    :goto_7b
    and-int/lit8 v3, v3, -0x2

    .line 4659
    goto :goto_26

    .line 4638
    :cond_7e
    iget v5, p0, mPrevVolDirection:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7b

    .line 4639
    iget-object v5, p0, mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v5, v5, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v5, :cond_9c

    .line 4640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, mLoweredFromNormalToVibrateTime:J

    sub-long v0, v6, v8

    .line 4642
    .local v0, "diff":J
    iget-object v5, p0, mVolumePolicy:Landroid/media/VolumePolicy;

    iget v5, v5, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-lez v5, :cond_7b

    .line 4644
    const/4 v4, 0x0

    goto :goto_7b

    .line 4647
    .end local v0    # "diff":J
    :cond_9c
    or-int/lit16 v3, v3, 0x800

    goto :goto_7b

    .line 4650
    :cond_9f
    const/4 v5, 0x1

    if-eq p2, v5, :cond_aa

    const/16 v5, 0x65

    if-eq p2, v5, :cond_aa

    const/16 v5, 0x64

    if-ne p2, v5, :cond_7b

    .line 4653
    :cond_aa
    const/4 v4, 0x2

    .line 4654
    const/4 v5, 0x1

    if-eq p2, v5, :cond_b2

    const/16 v5, 0x64

    if-ne p2, v5, :cond_7b

    .line 4655
    :cond_b2
    const/4 v5, 0x1

    iput-boolean v5, p0, mSilentModeOff:Z

    goto :goto_7b

    .line 4661
    :pswitch_b6
    if-eqz v2, :cond_c6

    const/4 v5, -0x1

    if-ne p2, v5, :cond_c6

    mul-int/lit8 v5, p3, 0x2

    if-lt p1, v5, :cond_c6

    if-eqz p4, :cond_c6

    .line 4663
    const/4 v4, 0x2

    .line 4682
    :cond_c2
    :goto_c2
    and-int/lit8 v3, v3, -0x2

    .line 4683
    goto/16 :goto_26

    .line 4664
    :cond_c6
    const/4 v5, 0x1

    if-eq p2, v5, :cond_d1

    const/16 v5, 0x65

    if-eq p2, v5, :cond_d1

    const/16 v5, 0x64

    if-ne p2, v5, :cond_c2

    .line 4667
    :cond_d1
    iget-object v5, p0, mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v5, v5, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-nez v5, :cond_da

    .line 4668
    or-int/lit16 v3, v3, 0x80

    goto :goto_c2

    .line 4670
    :cond_da
    iget-boolean v5, p0, mHasVibrator:Z

    if-eqz v5, :cond_e3

    const/4 v5, 0x1

    if-ne p2, v5, :cond_e3

    .line 4671
    const/4 v4, 0x1

    goto :goto_c2

    .line 4675
    :cond_e3
    const/4 v4, 0x2

    .line 4677
    const/4 v5, 0x1

    iput-boolean v5, p0, mSilentModeOff:Z

    goto :goto_c2

    .line 4588
    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_63
        :pswitch_31
    .end packed-switch
.end method

.method private checkMuteAffectedStreams()V
    .registers 6

    .prologue
    .line 1474
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v2, v2

    if-ge v0, v2, :cond_20

    .line 1475
    iget-object v2, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v2, v0

    .line 1476
    .local v1, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-lez v2, :cond_1d

    .line 1477
    iget v2, p0, mMuteAffectedStreams:I

    const/4 v3, 0x1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v4

    shl-int/2addr v3, v4

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, mMuteAffectedStreams:I

    .line 1474
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1480
    .end local v1    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_20
    return-void
.end method

.method private checkSafeMediaVolume(III)Z
    .registers 11
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .prologue
    const v6, 0x2000018c

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x3

    .line 8367
    iget-object v3, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v3

    .line 8369
    :try_start_9
    invoke-direct {p0}, isFactoryMode()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 8370
    monitor-exit v3

    .line 8402
    :goto_10
    return v1

    .line 8372
    :cond_11
    iget-object v4, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_41

    iget-object v4, p0, mStreamVolumeAlias:[I

    aget v4, v4, p1

    if-ne v4, v5, :cond_41

    and-int v4, p3, v6

    if-eqz v4, :cond_41

    iget v4, p0, mSafeMediaVolumeIndex:I

    if-le p2, v4, :cond_41

    .line 8377
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 8378
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 8379
    invoke-direct {p0}, callLcdOn()V

    .line 8380
    invoke-direct {p0}, callVibrateMsg()V

    .line 8383
    :cond_3e
    monitor-exit v3

    move v1, v2

    goto :goto_10

    .line 8386
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_41
    iget-object v4, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_7e

    iget-object v4, p0, mStreamVolumeAlias:[I

    aget v4, v4, p1

    if-ne v4, v5, :cond_7e

    and-int v4, p3, v6

    if-eqz v4, :cond_7e

    iget v4, p0, mSafeMediaVolumeIndex:I

    if-ne p2, v4, :cond_7e

    .line 8391
    iget-object v4, p0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-virtual {v4, p3}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v4

    if-nez v4, :cond_64

    .line 8392
    monitor-exit v3

    goto :goto_10

    .line 8403
    :catchall_61
    move-exception v1

    monitor-exit v3
    :try_end_63
    .catchall {:try_start_9 .. :try_end_63} :catchall_61

    throw v1

    .line 8394
    :cond_64
    :try_start_64
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 8395
    .restart local v0    # "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_7b

    .line 8396
    invoke-direct {p0}, callLcdOn()V

    .line 8397
    invoke-direct {p0}, callVibrateMsg()V

    .line 8399
    :cond_7b
    monitor-exit v3

    move v1, v2

    goto :goto_10

    .line 8402
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_7e
    monitor-exit v3
    :try_end_7f
    .catchall {:try_start_64 .. :try_end_7f} :catchall_61

    goto :goto_10
.end method

.method private checkScoAudioState()V
    .registers 3

    .prologue
    .line 4142
    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1b

    iget-object v0, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1b

    iget v0, p0, mScoAudioState:I

    if-nez v0, :cond_1b

    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1b

    .line 4146
    const/4 v0, 0x2

    iput v0, p0, mScoAudioState:I

    .line 4148
    :cond_1b
    return-void
.end method

.method private checkSendBecomingNoisyIntent(II)I
    .registers 15
    .param p1, "device"    # I
    .param p2, "state"    # I

    .prologue
    .line 6967
    const/4 v7, 0x0

    .line 6968
    .local v7, "delay":I
    if-nez p2, :cond_84

    iget v0, p0, mBecomingNoisyIntentDevices:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_84

    .line 6990
    invoke-direct {p0}, getCurOutDevice()I

    move-result v8

    .line 6991
    .local v8, "outDevice":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_84

    .line 6993
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x8

    if-ne p1, v0, :cond_27

    :cond_1e
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_27

    .line 6994
    move v8, p1

    .line 6996
    :cond_27
    and-int v0, v8, p1

    if-nez v0, :cond_40

    const v0, 0x20000380

    and-int/2addr v0, p1

    if-eqz v0, :cond_84

    iget v0, p0, mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_40

    iget v0, p0, mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_40

    iget v0, p0, mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_84

    .line 6999
    :cond_40
    iget-boolean v0, p0, mSplitSound:Z

    if-eqz v0, :cond_55

    iget v0, p0, mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4e

    iget v0, p0, mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_55

    :cond_4e
    const/4 v0, 0x4

    if-eq p1, v0, :cond_c9

    const/16 v0, 0x8

    if-eq p1, v0, :cond_c9

    .line 7001
    :cond_55
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7022
    :goto_61
    const/16 v0, 0x400

    if-ne p1, v0, :cond_d1

    invoke-direct {p0}, isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 7023
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hdmi delay in Factorymode  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7036
    .end local v8    # "outDevice":I
    :cond_84
    :goto_84
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_ac

    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_ac

    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_ac

    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 7042
    :cond_ac
    sget-object v1, mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v1

    .line 7043
    :try_start_af
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 7044
    .local v10, "time":J
    sget-object v0, mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v10

    if-lez v0, :cond_c7

    .line 7045
    sget-object v0, mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v10

    long-to-int v0, v2

    add-int/lit8 v7, v0, 0x1e

    .line 7047
    :cond_c7
    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_af .. :try_end_c8} :catchall_100

    .line 7049
    .end local v10    # "time":J
    :cond_c8
    return v7

    .line 7010
    .restart local v8    # "outDevice":I
    :cond_c9
    const-string v0, "AudioService"

    const-string v1, "Don\'t Stop music when removing earphone in SplitSound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 7024
    :cond_d1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_d8

    const/16 v0, 0x8

    if-ne p1, v0, :cond_fd

    :cond_d8
    iget v0, p0, mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e2

    iget v0, p0, mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_fd

    .line 7026
    :cond_e2
    const/4 v7, 0x0

    .line 7027
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in call wired headset/headphone delay ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 7029
    :cond_fd
    const/16 v7, 0x1f4

    goto :goto_84

    .line 7047
    .end local v8    # "outDevice":I
    :catchall_100
    move-exception v0

    :try_start_101
    monitor-exit v1
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_100

    throw v0
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .registers 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # I

    .prologue
    .line 7257
    const-string v20, "android.media.action.HDMI_AUDIO_PLUG"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7258
    const-string v20, "android.media.extra.AUDIO_PLUG_STATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7259
    const/16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_da

    .line 7260
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 7261
    .local v18, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 7262
    .local v17, "portGeneration":[I
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v19

    .line 7263
    .local v19, "status":I
    if-nez v19, :cond_da

    .line 7264
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_37
    :goto_37
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_da

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/AudioPort;

    .line 7265
    .local v16, "port":Landroid/media/AudioPort;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/media/AudioDevicePort;

    move/from16 v20, v0

    if-eqz v20, :cond_37

    move-object/from16 v5, v16

    .line 7266
    check-cast v5, Landroid/media/AudioDevicePort;

    .line 7267
    .local v5, "devicePort":Landroid/media/AudioDevicePort;
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->type()I

    move-result v20

    const/16 v21, 0x400

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_67

    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->type()I

    move-result v20

    const/high16 v21, 0x40000

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_37

    .line 7270
    :cond_67
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v9

    .line 7271
    .local v9, "formats":[I
    array-length v0, v9

    move/from16 v20, v0

    if-lez v20, :cond_ba

    .line 7272
    new-instance v7, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7273
    .local v7, "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v3, v9

    .local v3, "arr$":[I
    array-length v13, v3

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_80
    if-ge v12, v13, :cond_92

    aget v8, v3, v12

    .line 7275
    .local v8, "format":I
    if-eqz v8, :cond_8f

    .line 7276
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7273
    :cond_8f
    add-int/lit8 v12, v12, 0x1

    goto :goto_80

    .line 7279
    .end local v8    # "format":I
    :cond_92
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v6, v0, [I

    .line 7280
    .local v6, "encodingArray":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_9b
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_b1

    .line 7281
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aput v20, v6, v10

    .line 7280
    add-int/lit8 v10, v10, 0x1

    goto :goto_9b

    .line 7283
    :cond_b1
    const-string v20, "android.media.extra.ENCODINGS"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 7286
    .end local v3    # "arr$":[I
    .end local v6    # "encodingArray":[I
    .end local v7    # "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_ba
    const/4 v15, 0x0

    .line 7287
    .local v15, "maxChannels":I
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v3

    .restart local v3    # "arr$":[I
    array-length v13, v3

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_c1
    if-ge v12, v13, :cond_cf

    aget v14, v3, v12

    .line 7288
    .local v14, "mask":I
    invoke-static {v14}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v4

    .line 7289
    .local v4, "channelCount":I
    if-le v4, v15, :cond_cc

    .line 7290
    move v15, v4

    .line 7287
    :cond_cc
    add-int/lit8 v12, v12, 0x1

    goto :goto_c1

    .line 7293
    .end local v4    # "channelCount":I
    .end local v14    # "mask":I
    :cond_cf
    const-string v20, "android.media.extra.MAX_CHANNEL_COUNT"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_37

    .line 7299
    .end local v3    # "arr$":[I
    .end local v5    # "devicePort":Landroid/media/AudioDevicePort;
    .end local v9    # "formats":[I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "maxChannels":I
    .end local v16    # "port":Landroid/media/AudioPort;
    .end local v17    # "portGeneration":[I
    .end local v18    # "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v19    # "status":I
    :cond_da
    return-void
.end method

.method private createAudioSystemThread()V
    .registers 2

    .prologue
    .line 1424
    new-instance v0, Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioSystemThread;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    .line 1425
    iget-object v0, p0, mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioSystemThread;->start()V

    .line 1426
    invoke-direct {p0}, waitForAudioHandlerCreation()V

    .line 1427
    return-void
.end method

.method private createStreamStates()V
    .registers 7

    .prologue
    .line 1483
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1484
    .local v1, "numStreamTypes":I
    new-array v2, v1, [Lcom/android/server/audio/AudioService$VolumeStreamState;

    iput-object v2, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 1486
    .local v2, "streams":[Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v1, :cond_1e

    .line 1487
    new-instance v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v5, p0, mStreamVolumeAlias:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V

    aput-object v3, v2, v0

    .line 1486
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1490
    :cond_1e
    invoke-direct {p0}, checkAllFixedVolumeDevices()V

    .line 1491
    invoke-direct {p0}, checkAllAliasStreamVolumes()V

    .line 1492
    invoke-direct {p0}, checkMuteAffectedStreams()V

    .line 1493
    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2767
    iget-object v2, p0, mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2768
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2769
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    .line 2770
    .local v0, "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2771
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    .line 2772
    iget-object v2, p0, mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2773
    const/4 v2, 0x1

    .line 2776
    .end local v0    # "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method private disconnectBluetoothSco(I)V
    .registers 10
    .param p1, "exceptPid"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 4203
    iget-object v7, p0, mScoClients:Ljava/util/ArrayList;

    monitor-enter v7

    .line 4204
    :try_start_5
    invoke-direct {p0}, checkScoAudioState()V

    .line 4205
    iget v0, p0, mScoAudioState:I

    if-eq v0, v1, :cond_10

    iget v0, p0, mScoAudioState:I

    if-ne v0, v2, :cond_41

    .line 4207
    :cond_10
    iget-object v0, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2e

    .line 4208
    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_30

    .line 4209
    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 4211
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4222
    :cond_2e
    :goto_2e
    monitor-exit v7

    .line 4223
    return-void

    .line 4214
    :cond_30
    iget v0, p0, mScoAudioState:I

    if-ne v0, v1, :cond_2e

    invoke-direct {p0}, getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4216
    const/4 v0, 0x4

    iput v0, p0, mScoAudioState:I

    goto :goto_2e

    .line 4222
    :catchall_3e
    move-exception v0

    monitor-exit v7
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_3e

    throw v0

    .line 4220
    :cond_41
    const/4 v0, 0x1

    :try_start_42
    invoke-virtual {p0, p1, v0}, clearAllScoClients(IZ)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3e

    goto :goto_2e
.end method

.method private dumpAudioPolicies(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 9022
    const-string v2, "\nAudio policies:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9023
    iget-object v3, p0, mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v3

    .line 9024
    :try_start_8
    iget-object v2, p0, mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 9025
    .local v1, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 9027
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_29
    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_26

    .line 9028
    return-void
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 8571
    const-string v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (internal) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, mRingerMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (external) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, mRingerModeExternal:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8574
    const-string v0, "affected"

    iget v1, p0, mRingerModeAffectedStreams:I

    invoke-direct {p0, p1, v0, v1}, dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 8575
    const-string/jumbo v0, "muted"

    iget v1, p0, mRingerModeMutedStreams:I

    invoke-direct {p0, p1, v0, v1}, dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 8576
    const-string v0, "- delegate = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8577
    return-void
.end method

.method private dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "streams"    # I

    .prologue
    const/16 v4, 0x2c

    .line 8580
    const-string v3, "- ringer mode "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " streams = 0x"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8581
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8582
    if-eqz p3, :cond_4d

    .line 8583
    const-string v3, " ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8584
    const/4 v0, 0x1

    .line 8585
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3e

    .line 8586
    const/4 v3, 0x1

    shl-int v2, v3, v1

    .line 8587
    .local v2, "stream":I
    and-int v3, p3, v2

    if-eqz v3, :cond_3b

    .line 8588
    if-nez v0, :cond_30

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 8589
    :cond_30
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8590
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr p3, v3

    .line 8591
    const/4 v0, 0x0

    .line 8585
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 8594
    .end local v2    # "stream":I
    :cond_3e
    if-eqz p3, :cond_48

    .line 8595
    if-nez v0, :cond_45

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 8596
    :cond_45
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 8598
    :cond_48
    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 8600
    .end local v0    # "first":Z
    .end local v1    # "i":I
    :cond_4d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 8601
    return-void
.end method

.method private dumpScoClients(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 8604
    const-string v3, "\nSco Client list entries: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8605
    iget-object v4, p0, mScoClients:Ljava/util/ArrayList;

    monitor-enter v4

    .line 8606
    :try_start_8
    iget-object v3, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 8607
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v2, :cond_36

    .line 8608
    iget-object v3, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$ScoClient;

    .line 8609
    .local v0, "cl":Lcom/android/server/audio/AudioService$ScoClient;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n  pid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->getPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8607
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 8611
    .end local v0    # "cl":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_36
    monitor-exit v4

    .line 8612
    return-void

    .line 8611
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_38
    move-exception v3

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_38

    throw v3
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1496
    const-string v2, "\nStream volumes (device: index)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1497
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1498
    .local v1, "numStreamTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v1, :cond_3d

    .line 1499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    iget-object v2, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    # invokes: Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 1501
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1498
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1503
    :cond_3d
    const-string v2, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1504
    iget v2, p0, mMuteAffectedStreams:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1507
    const-string v2, "\nMute calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1508
    const/4 v0, 0x0

    :goto_51
    if-ge v0, v1, :cond_7e

    .line 1509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mStreamMutedump:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1508
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 1511
    :cond_7e
    const-string v2, "\nVolume change calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    const/4 v0, 0x0

    :goto_84
    if-ge v0, v1, :cond_bf

    .line 1513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INDEX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, pIdOfsetVolumeIndex:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, pIdOfsetVolume:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 1515
    :cond_bf
    const-string v2, "\nBT A2DP on/off calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- A2DP NONE is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mBluetoothA2dpOndump:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- NO_A2DP is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mBluetoothA2dpOndump:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1518
    const-string v2, "\nBT SCO on/off calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- BT SCO on is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mBluetoothScoOndump:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- BT SCO off is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mBluetoothScoOndump:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    const-string v2, "\nSpeaker on/off calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Speaker on is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mSpeakerOndump:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Speaker off is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mSpeakerOndump:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1524
    const-string v2, "\nPID which makes system volume to 0 at first boot"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, pIdOfsetVolume:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Volume index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, pIdOfsetVolume:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1529
    return-void
.end method

.method private enforceSafeMediaVolume(Ljava/lang/String;)V
    .registers 13
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 8338
    iget-object v0, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 8339
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const v7, 0x2000018c

    .line 8340
    .local v7, "devices":I
    const/4 v8, 0x0

    .local v8, "i":I
    move v9, v8

    .line 8342
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_b
    if-eqz v7, :cond_37

    .line 8343
    const/4 v0, 0x1

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    shl-int v3, v0, v9

    .line 8344
    .local v3, "device":I
    and-int v0, v3, v7

    if-nez v0, :cond_18

    move v9, v8

    .line 8345
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_b

    .line 8347
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_18
    invoke-virtual {v5, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 8348
    .local v10, "index":I
    iget v0, p0, mSafeMediaVolumeIndex:I

    if-le v10, v0, :cond_32

    .line 8349
    iget v0, p0, mSafeMediaVolumeIndex:I

    invoke-virtual {v5, v0, v3, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 8352
    iget-object v0, p0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    .line 8354
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8362
    :cond_32
    xor-int/lit8 v0, v3, -0x1

    and-int/2addr v7, v0

    move v9, v8

    .line 8363
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_b

    .line 8364
    .end local v3    # "device":I
    .end local v10    # "index":I
    :cond_37
    return-void
.end method

.method private enforceVolumeController(Ljava/lang/String;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 8680
    iget-object v0, p0, mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    # getter for: Lcom/android/server/audio/AudioService$ControllerService;->mUid:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService$ControllerService;->access$14500(Lcom/android/server/audio/AudioService$ControllerService;)I

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    # getter for: Lcom/android/server/audio/AudioService$ControllerService;->mUid:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService$ControllerService;->access$14500(Lcom/android/server/audio/AudioService$ControllerService;)I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 8685
    :goto_14
    return-void

    .line 8683
    :cond_15
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only SystemUI can "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method private ensureValidDirection(I)V
    .registers 5
    .param p1, "direction"    # I

    .prologue
    .line 4761
    sparse-switch p1, :sswitch_data_1e

    .line 4770
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4772
    :sswitch_1c
    return-void

    .line 4761
    nop

    :sswitch_data_1e
    .sparse-switch
        -0x64 -> :sswitch_1c
        -0x1 -> :sswitch_1c
        0x0 -> :sswitch_1c
        0x1 -> :sswitch_1c
        0x64 -> :sswitch_1c
        0x65 -> :sswitch_1c
    .end sparse-switch
.end method

.method private ensureValidRingerMode(I)V
    .registers 5
    .param p1, "ringerMode"    # I

    .prologue
    .line 3008
    invoke-virtual {p0, p1}, isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3009
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3011
    :cond_1f
    return-void
.end method

.method private ensureValidStreamType(I)V
    .registers 5
    .param p1, "streamType"    # I

    .prologue
    .line 4775
    if-ltz p1, :cond_7

    iget-object v0, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_20

    .line 4776
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4778
    :cond_20
    return-void
.end method

.method private getActiveStreamCount()I
    .registers 4

    .prologue
    .line 9452
    const/4 v0, 0x0

    .line 9453
    .local v0, "nReturn":I
    const/4 v1, 0x0

    .local v1, "nStreamNum":I
    :goto_2
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 9454
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 9455
    add-int/lit8 v0, v0, 0x1

    .line 9453
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9458
    :cond_14
    return v0
.end method

.method private getActiveStreams()I
    .registers 7

    .prologue
    .line 4844
    const-string v3, "audioParam;activeStream"

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4845
    .local v2, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 4847
    .local v0, "activeStream":I
    :try_start_7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4848
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "active stream is 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_27} :catch_29

    move v3, v0

    .line 4853
    :goto_28
    return v3

    .line 4849
    :catch_29
    move-exception v1

    .line 4850
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v3, "AudioService"

    const-string v4, "Can\'t get active stream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4851
    const v3, 0x8000

    goto :goto_28
.end method

.method private getAddressForDevice(I)Ljava/lang/String;
    .registers 11
    .param p1, "device"    # I

    .prologue
    .line 5336
    const-string v1, ""

    .line 5337
    .local v1, "addr":Ljava/lang/String;
    const/high16 v7, 0x20000000

    if-ne p1, v7, :cond_9

    .line 5338
    const-string v7, ""

    .line 5383
    :goto_8
    return-object v7

    .line 5340
    :cond_9
    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_23

    .line 5341
    iget-object v7, p0, mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v7, :cond_23

    .line 5342
    iget-object v7, p0, mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothA2dp;->getActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 5343
    .local v0, "activeBT":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_23

    .line 5344
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 5346
    goto :goto_8

    .line 5350
    .end local v0    # "activeBT":Landroid/bluetooth/BluetoothDevice;
    :cond_23
    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_53

    .line 5351
    iget-object v7, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v7, :cond_53

    .line 5352
    iget-object v7, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    .line 5353
    .local v3, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v3, :cond_53

    .line 5354
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 5355
    .local v2, "dev":Landroid/bluetooth/BluetoothDevice;
    iget-object v7, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 5356
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    .line 5367
    .end local v2    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_53
    const v7, 0x8000

    if-ne p1, v7, :cond_6b

    .line 5368
    const-string v7, "0"

    invoke-direct {p0, p1, v7}, makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5369
    .local v5, "key":Ljava/lang/String;
    iget-object v7, p0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 5370
    .local v6, "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v6, :cond_6b

    .line 5371
    const-string v7, "0"

    goto :goto_8

    .line 5377
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_6b
    const-string v7, ""

    invoke-direct {p0, p1, v7}, makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5378
    .restart local v5    # "key":Ljava/lang/String;
    iget-object v7, p0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 5379
    .restart local v6    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v6, :cond_7d

    .line 5380
    iget-object v1, v6, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    :cond_7d
    move-object v7, v1

    .line 5383
    goto :goto_8
.end method

.method private getAvailableDeviceMaskForQuickSoundPath()I
    .registers 9

    .prologue
    const v7, 0x7fffffff

    .line 10050
    const/high16 v0, 0x2000000

    .line 10051
    .local v0, "alwaysBlockedDevices":I
    const/4 v1, 0x0

    .line 10052
    .local v1, "blockDevices":I
    const v3, 0x7fffffff

    .line 10054
    .local v3, "mask":I
    iget-object v5, p0, mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 10056
    const/high16 v4, 0x2000000

    :try_start_e
    invoke-direct {p0, v4}, checkDeviceConnected(I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 10057
    or-int/2addr v1, v7

    .line 10060
    :cond_15
    const/high16 v4, -0x7ffe0000

    invoke-direct {p0, v4}, checkDeviceConnected(I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 10061
    const v4, 0x20000380

    or-int/2addr v1, v4

    .line 10064
    :cond_21
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2a

    .line 10065
    or-int/2addr v1, v7

    .line 10068
    :cond_2a
    const v4, 0x8000

    invoke-direct {p0, v4}, checkDeviceConnected(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 10069
    const/high16 v4, 0x1000000

    invoke-direct {p0, v4}, checkDeviceConnected(I)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 10070
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "display"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 10071
    .local v2, "mDisplayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 10072
    or-int/2addr v1, v7

    .line 10079
    .end local v2    # "mDisplayManager":Landroid/hardware/display/DisplayManager;
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, isFMPlayerActive()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 10080
    or-int/2addr v1, v7

    .line 10083
    :cond_54
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v4

    const/16 v6, 0xe

    if-ne v4, v6, :cond_5e

    .line 10084
    or-int/2addr v1, v7

    .line 10086
    :cond_5e
    monitor-exit v5
    :try_end_5f
    .catchall {:try_start_e .. :try_end_5f} :catchall_83

    .line 10088
    or-int v4, v0, v1

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    .line 10089
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Quick sound path is available with bit mask ==> 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10090
    return v3

    .line 10075
    :cond_81
    or-int/2addr v1, v7

    goto :goto_4d

    .line 10086
    :catchall_83
    move-exception v4

    :try_start_84
    monitor-exit v5
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v4
.end method

.method private getBluetoothHeadset()Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 4187
    const/4 v8, 0x0

    .line 4188
    .local v8, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 4189
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_11

    .line 4190
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v8

    .line 4197
    :cond_11
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v5, 0x0

    if-eqz v8, :cond_20

    const/16 v6, 0xbb8

    :goto_1a
    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4199
    return v8

    :cond_20
    move v6, v2

    .line 4197
    goto :goto_1a
.end method

.method private getCurOutDevice()I
    .registers 4

    .prologue
    .line 9524
    const-string v1, "audioParam;outDevice"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9525
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_10

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 9526
    :cond_10
    const-string v1, "AudioService"

    const-string/jumbo v2, "getCurOutDevice : Can\'t get outDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9527
    const/4 v1, -0x1

    .line 9529
    :goto_19
    return v1

    :cond_1a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_19
.end method

.method private getCurrentUserId()I
    .registers 5

    .prologue
    .line 2611
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2613
    .local v2, "ident":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2614
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_12
    .catchall {:try_start_4 .. :try_end_e} :catchall_18

    .line 2618
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2620
    .end local v0    # "currentUser":Landroid/content/pm/UserInfo;
    :goto_11
    return v1

    .line 2615
    :catch_12
    move-exception v1

    .line 2618
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2620
    const/4 v1, 0x0

    goto :goto_11

    .line 2618
    :catchall_18
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private getDeviceForStream(I)I
    .registers 4
    .param p1, "stream"    # I

    .prologue
    .line 5111
    invoke-direct {p0, p1}, getDevicesForStream(I)I

    move-result v0

    .line 5112
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    .line 5119
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_f

    .line 5120
    const/4 v0, 0x2

    .line 5131
    :cond_e
    :goto_e
    return v0

    .line 5121
    :cond_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    .line 5122
    const/high16 v0, 0x40000

    goto :goto_e

    .line 5123
    :cond_17
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1f

    .line 5124
    const/high16 v0, 0x80000

    goto :goto_e

    .line 5125
    :cond_1f
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_27

    .line 5126
    const/high16 v0, 0x200000

    goto :goto_e

    .line 5128
    :cond_27
    const v1, 0x20000380

    and-int/2addr v0, v1

    goto :goto_e
.end method

.method private getDevicesForStream(I)I
    .registers 3
    .param p1, "stream"    # I

    .prologue
    .line 5135
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, getDevicesForStream(IZ)I

    move-result v0

    return v0
.end method

.method private getDevicesForStream(IZ)I
    .registers 5
    .param p1, "stream"    # I
    .param p2, "checkOthers"    # Z

    .prologue
    .line 5139
    invoke-direct {p0, p1}, ensureValidStreamType(I)V

    .line 5140
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 5141
    :try_start_6
    iget-object v0, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    move-result v0

    monitor-exit v1

    return v0

    .line 5142
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private getFineVolume()Ljava/lang/String;
    .registers 7

    .prologue
    .line 2320
    iget-object v2, p0, mFineVolumeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2321
    :try_start_3
    iget-boolean v1, p0, mFineVolumeNeedWait:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2b

    if-eqz v1, :cond_11

    .line 2323
    :try_start_7
    iget-object v1, p0, mFineVolumeLock:Ljava/lang/Object;

    const-wide/16 v4, 0x14

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_e} :catch_22
    .catchall {:try_start_7 .. :try_end_e} :catchall_2b

    .line 2327
    :goto_e
    const/4 v1, 0x0

    :try_start_f
    iput-boolean v1, p0, mFineVolumeNeedWait:Z

    .line 2329
    :cond_11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_2b

    .line 2331
    iget-object v1, p0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v2, 0x3

    invoke-direct {p0, v2}, getDeviceForStream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2324
    :catch_22
    move-exception v0

    .line 2325
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_23
    const-string v1, "AudioService"

    const-string v3, "Interrupted while waiting setFineVolume"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 2329
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private getNewWhiteListVersion()Ljava/lang/String;
    .registers 16

    .prologue
    const/4 v13, 0x0

    .line 7802
    const/4 v12, 0x0

    .line 7803
    .local v12, "versionCursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 7805
    .local v11, "strNewVersion":Ljava/lang/String;
    :try_start_3
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7806
    .local v0, "resolver":Landroid/content/ContentResolver;
    # getter for: Lcom/android/server/audio/AudioService$EffectPolicy;->VERION_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->access$13600()Landroid/net/Uri;

    move-result-object v1

    # getter for: Lcom/android/server/audio/AudioService$EffectPolicy;->VERSION_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->access$13700()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "policyName=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v14, "audio"

    aput-object v14, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 7809
    if-eqz v12, :cond_34

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_34

    .line 7810
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 7811
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_33} :catch_5d
    .catchall {:try_start_3 .. :try_end_33} :catchall_68

    move-result-object v11

    .line 7816
    :cond_34
    if-eqz v12, :cond_3a

    .line 7817
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 7818
    const/4 v12, 0x0

    .line 7822
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_3a
    :goto_3a
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectPolicy new version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7823
    if-nez v11, :cond_70

    .line 7824
    const-string v1, "AudioService"

    const-string v2, "EffectPolicy version value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v13

    .line 7853
    .end local v11    # "strNewVersion":Ljava/lang/String;
    :cond_5c
    :goto_5c
    return-object v11

    .line 7813
    .restart local v11    # "strNewVersion":Ljava/lang/String;
    :catch_5d
    move-exception v8

    .line 7814
    .local v8, "e":Ljava/lang/Exception;
    :try_start_5e
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_68

    .line 7816
    if-eqz v12, :cond_3a

    .line 7817
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 7818
    const/4 v12, 0x0

    goto :goto_3a

    .line 7816
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_68
    move-exception v1

    if-eqz v12, :cond_6f

    .line 7817
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 7818
    const/4 v12, 0x0

    :cond_6f
    throw v1

    .line 7828
    :cond_70
    const-string/jumbo v1, "whitelistVersion"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 7829
    .local v10, "strCurVersion":Ljava/lang/String;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectPolicy current version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7830
    if-eqz v10, :cond_5c

    const-string v1, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 7834
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 7835
    .local v7, "dateFormat":Ljava/text/SimpleDateFormat;
    const/4 v9, 0x0

    .line 7836
    .local v9, "newVersion":Ljava/util/Date;
    const/4 v6, 0x0

    .line 7838
    .local v6, "curVersion":Ljava/util/Date;
    :try_start_a3
    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 7839
    invoke-virtual {v7, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_aa
    .catch Ljava/text/ParseException; {:try_start_a3 .. :try_end_aa} :catch_af

    move-result-object v6

    .line 7845
    if-nez v9, :cond_ba

    move-object v11, v13

    .line 7846
    goto :goto_5c

    .line 7840
    :catch_af
    move-exception v8

    .line 7841
    .local v8, "e":Ljava/text/ParseException;
    const-string v1, "AudioService"

    const-string/jumbo v2, "version parsing error"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v11, v13

    .line 7842
    goto :goto_5c

    .line 7847
    .end local v8    # "e":Ljava/text/ParseException;
    :cond_ba
    if-eqz v6, :cond_5c

    .line 7850
    invoke-virtual {v9, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-gtz v1, :cond_5c

    move-object v11, v13

    .line 7853
    goto :goto_5c
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;
    .registers 9
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "create"    # Z

    .prologue
    .line 4151
    iget-object v5, p0, mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 4152
    const/4 v0, 0x0

    .line 4153
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_32

    move-result v3

    .line 4154
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v1, v0

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .local v1, "client":Lcom/android/server/audio/AudioService$ScoClient;
    :goto_c
    if-ge v2, v3, :cond_23

    .line 4155
    :try_start_e
    iget-object v4, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$ScoClient;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_35

    .line 4156
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_16
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_1f

    .line 4157
    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_32

    move-object v1, v0

    .line 4163
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :goto_1e
    return-object v1

    .line 4154
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_c

    .line 4159
    :cond_23
    if-eqz p2, :cond_38

    .line 4160
    :try_start_25
    new-instance v0, Lcom/android/server/audio/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/AudioService$ScoClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_35

    .line 4161
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_2a
    iget-object v4, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4163
    :goto_2f
    monitor-exit v5

    move-object v1, v0

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_1e

    .line 4164
    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :catchall_32
    move-exception v4

    :goto_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_32

    throw v4

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :catchall_35
    move-exception v4

    move-object v0, v1

    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_33

    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_38
    move-object v0, v1

    .end local v1    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .restart local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    goto :goto_2f
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8108
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 8110
    .local v9, "config":Landroid/content/res/Configuration;
    iget-boolean v0, p0, mMonitorOrientation:Z

    if-eqz v0, :cond_17

    .line 8111
    iget v11, v9, Landroid/content/res/Configuration;->orientation:I

    .line 8112
    .local v11, "newOrientation":I
    iget v0, p0, mDeviceOrientation:I

    if-eq v11, v0, :cond_17

    .line 8113
    iput v11, p0, mDeviceOrientation:I

    .line 8114
    invoke-direct {p0}, setOrientationForAudioSystem()V

    .line 8117
    .end local v11    # "newOrientation":I
    :cond_17
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "AudioService"

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8125
    invoke-direct {p0}, readCameraSoundForced()Z

    move-result v7

    .line 8126
    .local v7, "cameraSoundForced":Z
    iget-object v13, p0, mSettingsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_8f

    .line 8127
    const/4 v8, 0x0

    .line 8128
    .local v8, "cameraSoundForcedChanged":Z
    :try_start_2c
    iget-object v1, p0, mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_8c

    .line 8129
    :try_start_2f
    iget-object v0, p0, mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v7, v0, :cond_3e

    .line 8130
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, mCameraSoundForced:Ljava/lang/Boolean;

    .line 8131
    const/4 v8, 0x1

    .line 8133
    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_89

    .line 8134
    if-eqz v8, :cond_7e

    .line 8135
    :try_start_41
    invoke-direct {p0}, isPlatformTelevision()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 8136
    iget-object v0, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x7

    aget-object v12, v0, v1

    .line 8137
    .local v12, "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz v7, :cond_98

    .line 8138
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 8139
    iget v0, p0, mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, mRingerModeAffectedStreams:I

    .line 8147
    :goto_57
    invoke-virtual {p0}, getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, setRingerModeInt(IZ)V

    .line 8150
    .end local v12    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_5f
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v7, :cond_a9

    const/16 v4, 0xb

    :goto_69
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8159
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8166
    :cond_7e
    monitor-exit v13
    :try_end_7f
    .catchall {:try_start_41 .. :try_end_7f} :catchall_8c

    .line 8167
    :try_start_7f
    iget-object v0, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_88} :catch_8f

    .line 8171
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :goto_88
    return-void

    .line 8133
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "cameraSoundForcedChanged":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v0

    .line 8166
    :catchall_8c
    move-exception v0

    monitor-exit v13
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw v0
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8f} :catch_8f

    .line 8168
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :catch_8f
    move-exception v10

    .line 8169
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "AudioService"

    const-string v1, "Error handling configuration change: "

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_88

    .line 8142
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "cameraSoundForcedChanged":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    .restart local v12    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_98
    :try_start_98
    iget-object v0, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "AudioService"

    invoke-virtual {v12, v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 8143
    iget v0, p0, mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, mRingerModeAffectedStreams:I
    :try_end_a8
    .catchall {:try_start_98 .. :try_end_a8} :catchall_8c

    goto :goto_57

    .line 8150
    .end local v12    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_a9
    const/4 v4, 0x0

    goto :goto_69
.end method

.method private handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "connect"    # Z
    .param p2, "device"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 6870
    sget-boolean v5, DEBUG_DEVICES:Z

    if-eqz v5, :cond_45

    .line 6871
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleDeviceConnection("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dev:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6874
    :cond_45
    iget-object v6, p0, mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 6875
    :try_start_48
    invoke-direct {p0, p2, p3}, makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6876
    .local v0, "deviceKey":Ljava/lang/String;
    sget-boolean v5, DEBUG_DEVICES:Z

    if-eqz v5, :cond_69

    .line 6877
    const-string v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deviceKey:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6879
    :cond_69
    iget-object v5, p0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6880
    .local v1, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v1, :cond_d6

    const/4 v2, 0x1

    .line 6881
    .local v2, "isConnected":Z
    :goto_74
    sget-boolean v5, DEBUG_DEVICES:Z

    if-eqz v5, :cond_9b

    .line 6882
    const-string v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deviceSpec:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is(already)Connected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6885
    :cond_9b
    const-string v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connect:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isConnected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6886
    if-nez p1, :cond_d8

    if-nez v2, :cond_d8

    .line 6887
    const-string v5, "AudioService"

    const-string/jumbo v7, "handleDeviceConnection no more unavailable device, return false"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6888
    const/4 v5, 0x0

    monitor-exit v6

    .line 6948
    :goto_d5
    return v5

    .line 6880
    .end local v2    # "isConnected":Z
    :cond_d6
    const/4 v2, 0x0

    goto :goto_74

    .line 6890
    .restart local v2    # "isConnected":Z
    :cond_d8
    if-eqz v2, :cond_105

    if-eqz p1, :cond_105

    const/16 v5, 0x1000

    if-eq p2, v5, :cond_e4

    const/16 v5, 0x400

    if-ne p2, v5, :cond_105

    .line 6893
    :cond_e4
    const/4 v5, 0x0

    invoke-static {p2, v5, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6897
    iget-object v5, p0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6899
    iget-object v5, p0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v5, :cond_104

    iget-object v5, p0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$DeviceListSpec;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$DeviceListSpec;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_104

    .line 6900
    const/4 v5, 0x0

    iput-object v5, p0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6903
    :cond_104
    const/4 v2, 0x0

    .line 6906
    :cond_105
    if-eqz p1, :cond_182

    if-nez v2, :cond_182

    .line 6908
    const/4 v5, 0x4

    if-eq p2, v5, :cond_110

    const/16 v5, 0x8

    if-ne p2, v5, :cond_138

    .line 6910
    :cond_110
    const-string v5, "AudioService"

    const-string/jumbo v7, "onReceive set Screen power on for Contextual Awareness."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6911
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "power"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 6912
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/16 v5, 0xc

    invoke-virtual {v3, v8, v9, v5}, Landroid/os/PowerManager;->wakeUp(JI)V

    .line 6913
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v5, 0x0

    invoke-virtual {v3, v8, v9, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 6915
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, setEarphoneStateForSARTest(Z)V

    .line 6918
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_138
    const/4 v5, 0x1

    invoke-static {p2, v5, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 6920
    .local v4, "res":I
    if-eqz v4, :cond_16d

    .line 6921
    const-string v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not connecting device 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " due to command error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6923
    const/4 v5, 0x0

    monitor-exit v6

    goto/16 :goto_d5

    .line 6947
    .end local v0    # "deviceKey":Ljava/lang/String;
    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v2    # "isConnected":Z
    .end local v4    # "res":I
    :catchall_16a
    move-exception v5

    monitor-exit v6
    :try_end_16c
    .catchall {:try_start_48 .. :try_end_16c} :catchall_16a

    throw v5

    .line 6925
    .restart local v0    # "deviceKey":Ljava/lang/String;
    .restart local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v2    # "isConnected":Z
    .restart local v4    # "res":I
    :cond_16d
    :try_start_16d
    iget-object v5, p0, mConnectedDevices:Landroid/util/ArrayMap;

    new-instance v7, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v7, p0, p2, p4, p3}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6927
    new-instance v5, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v5, p0, p2, p4, p3}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6929
    const/4 v5, 0x1

    monitor-exit v6

    goto/16 :goto_d5

    .line 6930
    .end local v4    # "res":I
    :cond_182
    if-nez p1, :cond_1b5

    if-eqz v2, :cond_1b5

    .line 6932
    const/4 v5, 0x4

    if-eq p2, v5, :cond_18d

    const/16 v5, 0x8

    if-ne p2, v5, :cond_191

    .line 6934
    :cond_18d
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, setEarphoneStateForSARTest(Z)V

    .line 6937
    :cond_191
    const/4 v5, 0x0

    invoke-static {p2, v5, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6939
    iget-object v5, p0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6941
    iget-object v5, p0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v5, :cond_1b1

    iget-object v5, p0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$DeviceListSpec;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$DeviceListSpec;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b1

    .line 6942
    const/4 v5, 0x0

    iput-object v5, p0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6945
    :cond_1b1
    const/4 v5, 0x1

    monitor-exit v6

    goto/16 :goto_d5

    .line 6947
    :cond_1b5
    monitor-exit v6
    :try_end_1b6
    .catchall {:try_start_16d .. :try_end_1b6} :catchall_16a

    .line 6948
    const/4 v5, 0x0

    goto/16 :goto_d5
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2781
    iget-object v1, p0, mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2782
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2783
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2784
    const/4 v1, 0x1

    .line 2787
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .registers 3

    .prologue
    .line 6649
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private hasVibrator()Z
    .registers 2

    .prologue
    .line 9201
    iget-boolean v0, p0, mHasVibrator:Z

    return v0
.end method

.method private increaseEARCount()V
    .registers 9

    .prologue
    .line 9534
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/FactoryApp/earjack_count"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9535
    .local v1, "strEARCount":Ljava/lang/String;
    if-eqz v1, :cond_29

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 9536
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long v2, v4, v6

    .line 9537
    .local v2, "earjack_count":J
    const-string v4, "/efs/FactoryApp/earjack_count"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 9546
    .end local v1    # "strEARCount":Ljava/lang/String;
    .end local v2    # "earjack_count":J
    :goto_28
    return-void

    .line 9539
    .restart local v1    # "strEARCount":Ljava/lang/String;
    :cond_29
    const-string v4, "/efs/FactoryApp/earjack_count"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_30} :catch_31
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_30} :catch_4b

    goto :goto_28

    .line 9541
    .end local v1    # "strEARCount":Ljava/lang/String;
    :catch_31
    move-exception v0

    .line 9542
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 9543
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4b
    move-exception v0

    .line 9544
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberFormatException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private initCPUBoost(Z)V
    .registers 11
    .param p1, "voipon"    # Z

    .prologue
    const/4 v8, 0x0

    .line 9367
    iget-object v0, p0, mCpuHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_18

    .line 9368
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-class v2, Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, mCpuHelper:Landroid/os/DVFSHelper;

    .line 9372
    :cond_18
    iget-object v0, p0, mCpuHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_33

    .line 9373
    if-eqz p1, :cond_34

    .line 9374
    iget-object v0, p0, mCpuHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, mCpuHelper:Landroid/os/DVFSHelper;

    const-string/jumbo v3, "persist.audio.voipcpufreq"

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 9385
    :cond_33
    :goto_33
    return-void

    .line 9376
    :cond_34
    iget-object v0, p0, mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v7

    .line 9377
    .local v7, "supportedCPUFreqTable":[I
    const-string/jumbo v0, "persist.audio.cpufreq"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 9378
    .local v6, "cpufreq":I
    if-eqz v7, :cond_33

    .line 9379
    if-nez v6, :cond_47

    .line 9380
    aget v6, v7, v8

    .line 9381
    :cond_47
    iget-object v0, p0, mCpuHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_33
.end method

.method private isAfMusicActiveRecently(I)Z
    .registers 4
    .param p1, "delay_ms"    # I

    .prologue
    const/4 v1, 0x3

    .line 4815
    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private isCoverOpen()Z
    .registers 3

    .prologue
    .line 9550
    iget-object v1, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 9551
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-nez v1, :cond_10

    .line 9552
    const/4 v1, 0x0

    .line 9553
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x1

    goto :goto_f
.end method

.method private isFMRadioRecording()Z
    .registers 2

    .prologue
    .line 9926
    const/4 v0, 0x0

    return v0
.end method

.method private isFactoryMode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9487
    iget-boolean v1, p0, mIsFactoryMode:Z

    if-eq v1, v0, :cond_9

    iget-boolean v1, p0, mIsFactorySim:Z

    if-ne v1, v0, :cond_a

    .line 9490
    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isInCommunication()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4786
    const/4 v0, 0x0

    .line 4788
    .local v0, "IsInCall":Z
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "telecom"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 4791
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4796
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v6

    if-nez v6, :cond_46

    move v0, v4

    .line 4797
    :goto_1f
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-virtual {p0}, getMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_33

    invoke-virtual {p0}, getMode()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_38

    .line 4800
    :cond_33
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v6

    or-int/2addr v0, v6

    .line 4803
    :cond_38
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4805
    if-nez v0, :cond_44

    invoke-virtual {p0}, getMode()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_45

    :cond_44
    move v5, v4

    :cond_45
    return v5

    :cond_46
    move v0, v5

    .line 4796
    goto :goto_1f
.end method

.method private isMuteAdjust(I)Z
    .registers 3
    .param p1, "adjust"    # I

    .prologue
    .line 4781
    const/16 v0, -0x64

    if-eq p1, v0, :cond_c

    const/16 v0, 0x64

    if-eq p1, v0, :cond_c

    const/16 v0, 0x65

    if-ne p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isPlatformTelevision()Z
    .registers 3

    .prologue
    .line 255
    iget v0, p0, mPlatformType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isPlatformVoice()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 251
    iget v1, p0, mPlatformType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isRestrictionHeadphone()Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 9805
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 9806
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isHeadPhoneEnabled"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "true"

    aput-object v5, v4, v8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 9807
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_46

    .line 9809
    :try_start_20
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 9810
    const-string/jumbo v0, "isHeadPhoneEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 9811
    const-string v0, "AudioService"

    const-string v2, "Headset disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_48

    .line 9815
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 9818
    :goto_42
    return v0

    .line 9815
    :cond_43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_46
    move v0, v8

    .line 9818
    goto :goto_42

    .line 9815
    :catchall_48
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isSmartDockConnected()Z
    .registers 21

    .prologue
    .line 9725
    const-wide/16 v18, 0x64

    :try_start_2
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7a

    .line 9729
    :goto_5
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v4, v0, [C

    .line 9730
    .local v4, "buffer":[C
    const-string v3, "/sys/class/sec/switch/device"

    .line 9731
    .local v3, "SmartDockFile":Ljava/lang/String;
    const-string v2, "/sys/class/sec/switch/adc"

    .line 9732
    .local v2, "SmartDName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 9733
    .local v9, "file":Ljava/io/FileReader;
    const/4 v12, 0x0

    .line 9734
    .local v12, "in":Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 9735
    .local v15, "isSmartDockString":Z
    const/4 v14, 0x0

    .line 9736
    .local v14, "isSmartDockADC":Z
    const/4 v6, 0x0

    .line 9737
    .local v6, "deviceValue":Ljava/lang/String;
    const/4 v5, 0x0

    .line 9742
    .local v5, "deviceVal":Ljava/lang/String;
    :try_start_15
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1a} :catch_112
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_12d
    .catchall {:try_start_15 .. :try_end_1a} :catchall_149

    .line 9743
    .end local v9    # "file":Ljava/io/FileReader;
    .local v10, "file":Ljava/io/FileReader;
    const/16 v17, 0x0

    const/16 v18, 0x8

    :try_start_1e
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v4, v0, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v16

    .line 9744
    .local v16, "len":I
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 9745
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_97

    .line 9746
    new-instance v7, Ljava/lang/String;

    const/16 v17, 0x0

    add-int/lit8 v18, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v7, v4, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .end local v6    # "deviceValue":Ljava/lang/String;
    .local v7, "deviceValue":Ljava/lang/String;
    move-object v6, v7

    .line 9750
    .end local v7    # "deviceValue":Ljava/lang/String;
    .restart local v6    # "deviceValue":Ljava/lang/String;
    :goto_3f
    const-string v17, "10"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_fd

    .line 9751
    const/4 v14, 0x1

    .line 9756
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_58} :catch_168
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_58} :catch_161
    .catchall {:try_start_1e .. :try_end_58} :catchall_15a

    .line 9757
    .end local v12    # "in":Ljava/io/BufferedReader;
    .local v13, "in":Ljava/io/BufferedReader;
    :try_start_58
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 9758
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 9760
    if-eqz v5, :cond_6b

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_68} :catch_16b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_68} :catch_164
    .catchall {:try_start_58 .. :try_end_68} :catchall_15d

    move-result v17

    if-nez v17, :cond_a9

    .line 9761
    :cond_6b
    const/16 v17, 0x0

    .line 9788
    if-eqz v10, :cond_72

    .line 9789
    :try_start_6f
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 9791
    :cond_72
    if-eqz v13, :cond_77

    .line 9792
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_77} :catch_a4

    :cond_77
    :goto_77
    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 9800
    .end local v10    # "file":Ljava/io/FileReader;
    .end local v16    # "len":I
    .restart local v9    # "file":Ljava/io/FileReader;
    :goto_79
    return v17

    .line 9726
    .end local v2    # "SmartDName":Ljava/lang/String;
    .end local v3    # "SmartDockFile":Ljava/lang/String;
    .end local v4    # "buffer":[C
    .end local v5    # "deviceVal":Ljava/lang/String;
    .end local v6    # "deviceValue":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v14    # "isSmartDockADC":Z
    .end local v15    # "isSmartDockString":Z
    :catch_7a
    move-exception v8

    .line 9727
    .local v8, "e":Ljava/lang/Exception;
    const-string v17, "AudioService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in Thread.sleep() : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 9748
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "SmartDName":Ljava/lang/String;
    .restart local v3    # "SmartDockFile":Ljava/lang/String;
    .restart local v4    # "buffer":[C
    .restart local v5    # "deviceVal":Ljava/lang/String;
    .restart local v6    # "deviceValue":Ljava/lang/String;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "isSmartDockADC":Z
    .restart local v15    # "isSmartDockString":Z
    .restart local v16    # "len":I
    :cond_97
    :try_start_97
    new-instance v7, Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v7, v4, v0, v1}, Ljava/lang/String;-><init>([CII)V
    :try_end_a2
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_a2} :catch_168
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a2} :catch_161
    .catchall {:try_start_97 .. :try_end_a2} :catchall_15a

    .end local v6    # "deviceValue":Ljava/lang/String;
    .restart local v7    # "deviceValue":Ljava/lang/String;
    move-object v6, v7

    .end local v7    # "deviceValue":Ljava/lang/String;
    .restart local v6    # "deviceValue":Ljava/lang/String;
    goto :goto_3f

    .line 9794
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :catch_a4
    move-exception v8

    .line 9796
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_77

    .line 9763
    .end local v8    # "e":Ljava/io/IOException;
    :cond_a9
    :try_start_a9
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 9764
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_ae
    sget-object v17, DOCK_DEVICE_NAME:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_cb

    if-nez v15, :cond_cb

    .line 9765
    sget-object v17, DOCK_DEVICE_NAME:[Ljava/lang/String;

    aget-object v17, v17, v11

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c8

    .line 9766
    const/4 v15, 0x1

    .line 9764
    :cond_c8
    add-int/lit8 v11, v11, 0x1

    goto :goto_ae

    .line 9769
    :cond_cb
    const-string v17, "AudioService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "isSmartDockString = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catch Ljava/io/FileNotFoundException; {:try_start_a9 .. :try_end_e6} :catch_16b
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_e6} :catch_164
    .catchall {:try_start_a9 .. :try_end_e6} :catchall_15d

    .line 9773
    if-eqz v15, :cond_fc

    .line 9774
    const/16 v17, 0x1

    .line 9788
    if-eqz v10, :cond_ef

    .line 9789
    :try_start_ec
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 9791
    :cond_ef
    if-eqz v13, :cond_f4

    .line 9792
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_f4} :catch_f7

    :cond_f4
    :goto_f4
    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 9797
    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_79

    .line 9794
    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :catch_f7
    move-exception v8

    .line 9796
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f4

    .end local v8    # "e":Ljava/io/IOException;
    :cond_fc
    move-object v12, v13

    .line 9788
    .end local v11    # "i":I
    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    :cond_fd
    if-eqz v10, :cond_102

    .line 9789
    :try_start_ff
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 9791
    :cond_102
    if-eqz v12, :cond_107

    .line 9792
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_107} :catch_10c

    :cond_107
    move-object v9, v10

    .line 9800
    .end local v10    # "file":Ljava/io/FileReader;
    .end local v16    # "len":I
    .restart local v9    # "file":Ljava/io/FileReader;
    :cond_108
    :goto_108
    const/16 v17, 0x0

    goto/16 :goto_79

    .line 9794
    .end local v9    # "file":Ljava/io/FileReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v16    # "len":I
    :catch_10c
    move-exception v8

    .line 9796
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .line 9798
    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_108

    .line 9777
    .end local v8    # "e":Ljava/io/IOException;
    .end local v16    # "len":I
    :catch_112
    move-exception v8

    .line 9778
    .local v8, "e":Ljava/io/FileNotFoundException;
    :goto_113
    :try_start_113
    const-string v17, "AudioService"

    const-string v18, "checkSmartDock This kernel does not have wired headset support "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catchall {:try_start_113 .. :try_end_11a} :catchall_149

    .line 9788
    if-eqz v9, :cond_11f

    .line 9789
    :try_start_11c
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 9791
    :cond_11f
    if-eqz v12, :cond_124

    .line 9792
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_124} :catch_128

    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :cond_124
    :goto_124
    move/from16 v17, v14

    .line 9797
    goto/16 :goto_79

    .line 9794
    .restart local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_128
    move-exception v8

    .line 9796
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_124

    .line 9784
    .end local v8    # "e":Ljava/io/IOException;
    :catch_12d
    move-exception v8

    .line 9785
    .local v8, "e":Ljava/lang/Exception;
    :goto_12e
    :try_start_12e
    const-string v17, "AudioService"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_139
    .catchall {:try_start_12e .. :try_end_139} :catchall_149

    .line 9788
    if-eqz v9, :cond_13e

    .line 9789
    :try_start_13b
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 9791
    :cond_13e
    if-eqz v12, :cond_108

    .line 9792
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_143} :catch_144

    goto :goto_108

    .line 9794
    :catch_144
    move-exception v8

    .line 9796
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_108

    .line 9787
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_149
    move-exception v17

    .line 9788
    :goto_14a
    if-eqz v9, :cond_14f

    .line 9789
    :try_start_14c
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 9791
    :cond_14f
    if-eqz v12, :cond_154

    .line 9792
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_154} :catch_155

    .line 9797
    :cond_154
    :goto_154
    throw v17

    .line 9794
    :catch_155
    move-exception v8

    .line 9796
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_154

    .line 9787
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "file":Ljava/io/FileReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    :catchall_15a
    move-exception v17

    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_14a

    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "len":I
    :catchall_15d
    move-exception v17

    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_14a

    .line 9784
    .end local v9    # "file":Ljava/io/FileReader;
    .end local v16    # "len":I
    .restart local v10    # "file":Ljava/io/FileReader;
    :catch_161
    move-exception v8

    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_12e

    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "len":I
    :catch_164
    move-exception v8

    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_12e

    .line 9777
    .end local v9    # "file":Ljava/io/FileReader;
    .end local v16    # "len":I
    .restart local v10    # "file":Ljava/io/FileReader;
    :catch_168
    move-exception v8

    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_113

    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "len":I
    :catch_16b
    move-exception v8

    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_113
.end method

.method private isStreamMutedByRingerMode(I)Z
    .registers 5
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 4702
    iget v1, p0, mRingerModeMutedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private isUSBCheckStreamActive()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 9324
    const/4 v1, 0x4

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x5

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x2

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method private killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    .registers 14
    .param p1, "oldUser"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v10, 0x0

    .line 7957
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 7960
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 7961
    .local v1, "homeActivityName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 7962
    const-class v8, Landroid/app/ActivityManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManagerInternal;

    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Landroid/app/ActivityManagerInternal;->getHomeActivityForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 7965
    :cond_1c
    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "android.permission.RECORD_AUDIO"

    aput-object v8, v4, v10

    .line 7968
    .local v4, "permissions":[Ljava/lang/String;
    :try_start_23
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const/4 v9, 0x0

    iget v10, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v8, v4, v9, v10}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_31} :catch_47

    move-result-object v3

    .line 7973
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "j":I
    :goto_38
    if-ltz v2, :cond_9a

    .line 7974
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 7976
    .local v5, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v8, :cond_4e

    .line 7973
    :cond_44
    :goto_44
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    .line 7970
    .end local v2    # "j":I
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_47
    move-exception v0

    .line 7971
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v8, Landroid/util/AndroidRuntimeException;

    invoke-direct {v8, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 7980
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "j":I
    .restart local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_4e
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    const/16 v9, 0x2710

    if-lt v8, v9, :cond_44

    .line 7984
    const-string v8, "android.permission.INTERACT_ACROSS_USERS"

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_44

    .line 7988
    if-eqz v1, :cond_7a

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7a

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-nez v8, :cond_44

    .line 7994
    :cond_7a
    :try_start_7a
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 7995
    .local v7, "uid":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const-string/jumbo v11, "killBackgroundUserProcessesWithAudioRecordPermission"

    invoke-interface {v8, v9, v10, v11}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_90} :catch_91

    goto :goto_44

    .line 7998
    .end local v7    # "uid":I
    :catch_91
    move-exception v0

    .line 7999
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v8, "AudioService"

    const-string v9, "Error calling killUid"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    .line 8002
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_9a
    return-void
.end method

.method private loadTouchSoundAssetDefaults()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3455
    sget-object v1, SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v2, "Effect_Tick.ogg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1e

    .line 3457
    iget-object v1, p0, SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    aput v4, v1, v4

    .line 3458
    iget-object v1, p0, SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 3456
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3460
    :cond_1e
    return-void
.end method

.method private loadTouchSoundAssets()V
    .registers 15

    .prologue
    .line 3463
    const/4 v9, 0x0

    .line 3466
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v11, SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 3540
    :cond_9
    :goto_9
    return-void

    .line 3470
    :cond_a
    invoke-direct {p0}, loadTouchSoundAssetDefaults()V

    .line 3473
    :try_start_d
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1110001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 3475
    const-string v11, "audio_assets"

    invoke-static {v9, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 3476
    const/4 v11, 0x0

    const-string/jumbo v12, "version"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3477
    .local v10, "version":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3479
    .local v7, "inTouchSoundsGroup":Z
    const-string v11, "1.0"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_44

    .line 3481
    :cond_30
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3482
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3483
    .local v1, "element":Ljava/lang/String;
    if-nez v1, :cond_4a

    .line 3494
    :goto_39
    if-eqz v7, :cond_44

    .line 3495
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3496
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_41} :catch_ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_41} :catch_d7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_41} :catch_e6
    .catchall {:try_start_d .. :try_end_41} :catchall_f5

    move-result-object v1

    .line 3497
    if-nez v1, :cond_66

    .line 3536
    .end local v1    # "element":Ljava/lang/String;
    :cond_44
    if-eqz v9, :cond_9

    .line 3537
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_9

    .line 3486
    .restart local v1    # "element":Ljava/lang/String;
    :cond_4a
    :try_start_4a
    const-string/jumbo v11, "group"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_30

    .line 3487
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3488
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v11, "touch_sounds"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_30

    .line 3489
    const/4 v7, 0x1

    .line 3490
    goto :goto_39

    .line 3500
    .end local v8    # "name":Ljava/lang/String;
    :cond_66
    const-string v11, "asset"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_44

    .line 3501
    const/4 v11, 0x0

    const-string/jumbo v12, "id"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3502
    .local v6, "id":Ljava/lang/String;
    const/4 v11, 0x0

    const-string/jumbo v12, "file"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4a .. :try_end_7d} :catch_ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_7d} :catch_d7
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_7d} :catch_e6
    .catchall {:try_start_4a .. :try_end_7d} :catchall_f5

    move-result-object v3

    .line 3506
    .local v3, "file":Ljava/lang/String;
    :try_start_7e
    const-class v11, Landroid/media/AudioManager;

    invoke-virtual {v11, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 3507
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_88} :catch_bc
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7e .. :try_end_88} :catch_ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7e .. :try_end_88} :catch_d7
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_88} :catch_e6
    .catchall {:try_start_7e .. :try_end_88} :catchall_f5

    move-result v4

    .line 3514
    .local v4, "fx":I
    const/16 v11, 0x64

    if-lt v4, v11, :cond_91

    .line 3515
    add-int/lit8 v11, v4, -0x64

    add-int/lit8 v4, v11, 0xa

    .line 3518
    :cond_91
    :try_start_91
    sget-object v11, SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 3519
    .local v5, "i":I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_a5

    .line 3520
    sget-object v11, SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    .line 3521
    sget-object v11, SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3523
    :cond_a5
    iget-object v11, p0, SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v4

    const/4 v12, 0x0

    aput v5, v11, v12
    :try_end_ac
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_91 .. :try_end_ac} :catch_ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_91 .. :try_end_ac} :catch_d7
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_ac} :catch_e6
    .catchall {:try_start_91 .. :try_end_ac} :catchall_f5

    goto :goto_39

    .line 3529
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "fx":I
    .end local v5    # "i":I
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_ad
    move-exception v0

    .line 3530
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_ae
    const-string v11, "AudioService"

    const-string v12, "audio assets file not found"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b5
    .catchall {:try_start_ae .. :try_end_b5} :catchall_f5

    .line 3536
    if-eqz v9, :cond_9

    .line 3537
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_9

    .line 3508
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "element":Ljava/lang/String;
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v7    # "inTouchSoundsGroup":Z
    .restart local v10    # "version":Ljava/lang/String;
    :catch_bc
    move-exception v0

    .line 3509
    .local v0, "e":Ljava/lang/Exception;
    :try_start_bd
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid touch sound ID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_bd .. :try_end_d5} :catch_ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bd .. :try_end_d5} :catch_d7
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_d5} :catch_e6
    .catchall {:try_start_bd .. :try_end_d5} :catchall_f5

    goto/16 :goto_39

    .line 3531
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljava/lang/String;
    .end local v3    # "file":Ljava/lang/String;
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_d7
    move-exception v0

    .line 3532
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d8
    const-string v11, "AudioService"

    const-string v12, "XML parser exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_df
    .catchall {:try_start_d8 .. :try_end_df} :catchall_f5

    .line 3536
    if-eqz v9, :cond_9

    .line 3537
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_9

    .line 3533
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_e6
    move-exception v0

    .line 3534
    .local v0, "e":Ljava/io/IOException;
    :try_start_e7
    const-string v11, "AudioService"

    const-string v12, "I/O exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ee
    .catchall {:try_start_e7 .. :try_end_ee} :catchall_f5

    .line 3536
    if-eqz v9, :cond_9

    .line 3537
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_9

    .line 3536
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_f5
    move-exception v11

    if-eqz v9, :cond_fb

    .line 3537
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_fb
    throw v11
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x80

    .line 6543
    iget-object v0, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 6544
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6546
    invoke-virtual {p0, v7}, setBluetoothA2dpOnInt(Z)V

    .line 6547
    invoke-static {v3, v7, p1, p2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6550
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 6551
    iget-object v0, p0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct {p0, v3, p1}, makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v2, p0, v3, p2, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6556
    new-instance v0, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v0, p0, v3, p2, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6558
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "delayMs"    # I

    .prologue
    .line 6614
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 6616
    iget-object v1, p0, mConnectedDevices:Landroid/util/ArrayMap;

    const/16 v2, 0x80

    invoke-direct {p0, v2, p1}, makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6619
    iget-object v1, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6620
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6622
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x80

    const/4 v2, 0x0

    .line 6580
    iget-object v1, p0, mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6581
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, mAvrcpAbsVolSupported:Z

    .line 6582
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_38

    .line 6583
    const-string v0, ""

    invoke-static {v3, v2, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6585
    iget-object v0, p0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct {p0, v3, p1}, makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6588
    iget-object v0, p0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v0, :cond_2f

    iget-object v0, p0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v0, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    if-ne v0, v3, :cond_2f

    iget-object v0, p0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget-object v0, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 6589
    iput-object v4, p0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6593
    :cond_2f
    const/high16 v0, 0x20000000

    invoke-direct {p0, v0}, checkDeviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 6608
    :cond_37
    :goto_37
    return-void

    .line 6582
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0

    .line 6598
    :cond_3b
    invoke-direct {p0, v3}, checkDeviceConnected(I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 6599
    iget-object v7, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v7

    .line 6601
    :try_start_44
    iget-object v0, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5b

    .line 6602
    iget-object v0, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 6603
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6606
    :cond_5b
    monitor-exit v7

    goto :goto_37

    :catchall_5d
    move-exception v0

    monitor-exit v7
    :try_end_5f
    .catchall {:try_start_44 .. :try_end_5f} :catchall_5d

    throw v0
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v4, -0x7ffe0000

    .line 6626
    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {v4, v0, p1, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6628
    iget-object v0, p0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct {p0, v4, p1}, makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    const-string v3, ""

    invoke-direct {v2, p0, v4, v3, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6632
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v2, -0x7ffe0000

    .line 6636
    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {v2, v0, p1, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6638
    iget-object v0, p0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, p1}, makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6640
    return-void
.end method

.method public static makeAlsaAddressString(II)Ljava/lang/String;
    .registers 4
    .param p0, "card"    # I
    .param p1, "device"    # I

    .prologue
    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "device"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private muteRingerModeStreams()V
    .registers 19

    .prologue
    .line 3084
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v11

    .line 3085
    .local v11, "numStreamTypes":I
    move-object/from16 v0, p0

    iget v1, v0, mRingerMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    move-object/from16 v0, p0

    iget v1, v0, mRingerMode:I

    if-nez v1, :cond_2c

    :cond_11
    const/4 v12, 0x1

    .line 3087
    .local v12, "ringerModeMute":Z
    :goto_12
    add-int/lit8 v14, v11, -0x1

    .local v14, "streamType":I
    :goto_14
    if-ltz v14, :cond_cd

    .line 3088
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, isStreamMutedByRingerMode(I)Z

    move-result v10

    .line 3089
    .local v10, "isMuted":Z
    if-eqz v12, :cond_2e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, isStreamAffectedByRingerMode(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v13, 0x1

    .line 3090
    .local v13, "shouldMute":Z
    :goto_27
    if-ne v10, v13, :cond_30

    .line 3087
    :goto_29
    add-int/lit8 v14, v14, -0x1

    goto :goto_14

    .line 3085
    .end local v10    # "isMuted":Z
    .end local v12    # "ringerModeMute":Z
    .end local v13    # "shouldMute":Z
    .end local v14    # "streamType":I
    :cond_2c
    const/4 v12, 0x0

    goto :goto_12

    .line 3089
    .restart local v10    # "isMuted":Z
    .restart local v12    # "ringerModeMute":Z
    .restart local v14    # "streamType":I
    :cond_2e
    const/4 v13, 0x0

    goto :goto_27

    .line 3091
    .restart local v13    # "shouldMute":Z
    :cond_30
    if-nez v13, :cond_b6

    .line 3095
    const/4 v8, 0x2

    .line 3096
    .local v8, "checkStream":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, mIsDefaultStreamNotification:Z

    if-eqz v1, :cond_3a

    .line 3097
    const/4 v8, 0x5

    .line 3101
    :cond_3a
    move-object/from16 v0, p0

    iget-object v1, v0, mStreamVolumeAlias:[I

    aget v1, v1, v14

    if-ne v1, v8, :cond_9a

    .line 3102
    const-class v17, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v17

    .line 3103
    :try_start_45
    move-object/from16 v0, p0

    iget-object v1, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v16, v1, v14

    .line 3104
    .local v16, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4c
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static/range {v16 .. v16}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v9, v1, :cond_81

    .line 3105
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static/range {v16 .. v16}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 3106
    .local v4, "device":I
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static/range {v16 .. v16}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    .line 3107
    .local v15, "value":I
    if-nez v15, :cond_7e

    .line 3108
    const/16 v1, 0xa

    const-string v2, "AudioService"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 3109
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1, v2, v3}, sendVolumeUpdate(IIII)V

    .line 3104
    :cond_7e
    add-int/lit8 v9, v9, 0x1

    goto :goto_4c

    .line 3113
    .end local v4    # "device":I
    .end local v15    # "value":I
    :cond_81
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, getDeviceForStream(I)I

    move-result v4

    .line 3114
    .restart local v4    # "device":I
    move-object/from16 v0, p0

    iget-object v1, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v14

    const/16 v7, 0x1f4

    invoke-static/range {v1 .. v7}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3121
    monitor-exit v17
    :try_end_9a
    .catchall {:try_start_45 .. :try_end_9a} :catchall_b3

    .line 3123
    .end local v4    # "device":I
    .end local v9    # "i":I
    .end local v16    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_9a
    move-object/from16 v0, p0

    iget-object v1, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v14

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 3124
    move-object/from16 v0, p0

    iget v1, v0, mRingerModeMutedStreams:I

    const/4 v2, 0x1

    shl-int/2addr v2, v14

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, mRingerModeMutedStreams:I

    goto/16 :goto_29

    .line 3121
    :catchall_b3
    move-exception v1

    :try_start_b4
    monitor-exit v17
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw v1

    .line 3127
    .end local v8    # "checkStream":I
    :cond_b6
    move-object/from16 v0, p0

    iget-object v1, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v14

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 3128
    move-object/from16 v0, p0

    iget v1, v0, mRingerModeMutedStreams:I

    const/4 v2, 0x1

    shl-int/2addr v2, v14

    or-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, mRingerModeMutedStreams:I

    goto/16 :goto_29

    .line 3131
    .end local v10    # "isMuted":Z
    .end local v13    # "shouldMute":Z
    :cond_cd
    return-void
.end method

.method private observeDevicesForStreams(I)V
    .registers 6
    .param p1, "skipStream"    # I

    .prologue
    .line 5146
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 5147
    const/4 v0, 0x0

    .local v0, "stream":I
    :goto_4
    :try_start_4
    iget-object v1, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 5148
    if-eq v0, p1, :cond_13

    .line 5149
    iget-object v1, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    .line 5147
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5152
    :cond_16
    monitor-exit v2

    .line 5153
    return-void

    .line 5152
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private onBroadcastScoConnectionState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 4241
    iget v1, p0, mScoConnectionState:I

    if-eq p1, v1, :cond_1c

    .line 4242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4243
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4244
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4246
    invoke-direct {p0, v0}, sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 4247
    iput p1, p0, mScoConnectionState:I

    .line 4249
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_1c
    return-void
.end method

.method private onCheckMusicActive(Ljava/lang/String;)V
    .registers 13
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    const v10, 0xea60

    .line 4482
    iget-object v9, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 4483
    :try_start_6
    iget-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_50

    .line 4484
    const/4 v0, 0x3

    invoke-direct {p0, v0}, getDeviceForStream(I)I

    move-result v7

    .line 4486
    .local v7, "device":I
    const v0, 0x2000018c

    and-int/2addr v0, v7

    if-eqz v0, :cond_50

    .line 4487
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0xea60

    move-object v5, p1

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4494
    iget-object v0, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v8

    .line 4495
    .local v8, "index":I
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_50

    iget v0, p0, mSafeMediaVolumeIndex:I

    if-le v8, v0, :cond_50

    .line 4498
    iget v0, p0, mMusicActiveMs:I

    add-int/2addr v0, v10

    iput v0, p0, mMusicActiveMs:I

    .line 4499
    iget v0, p0, mMusicActiveMs:I

    const v1, 0x44aa200

    if-le v0, v1, :cond_50

    .line 4500
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 4501
    const/4 v0, 0x0

    iput v0, p0, mMusicActiveMs:I

    .line 4509
    .end local v7    # "device":I
    .end local v8    # "index":I
    :cond_50
    monitor-exit v9

    .line 4510
    return-void

    .line 4509
    :catchall_52
    move-exception v0

    monitor-exit v9
    :try_end_54
    .catchall {:try_start_6 .. :try_end_54} :catchall_52

    throw v0
.end method

.method private onConfigureSafeVolume(ZLjava/lang/String;)V
    .registers 14
    .param p1, "force"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 4517
    iget-object v10, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v10

    .line 4518
    :try_start_4
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v7, v0, Landroid/content/res/Configuration;->mcc:I

    .line 4519
    .local v7, "mcc":I
    iget v0, p0, mMcc:I

    if-ne v0, v7, :cond_1a

    iget v0, p0, mMcc:I

    if-nez v0, :cond_4c

    if-eqz p1, :cond_4c

    .line 4529
    :cond_1a
    const/16 v0, 0x5a

    iput v0, p0, mSafeMediaVolumeIndex:I

    .line 4530
    const/4 v9, 0x1

    .line 4532
    .local v9, "safeMediaVolumeEnabled":Z
    const-string v0, "audio.safemedia.bypass"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 4538
    .local v8, "safeMediaVolumeBypass":Z
    if-eqz v9, :cond_4e

    if-nez v8, :cond_4e

    .line 4539
    const/4 v3, 0x3

    .line 4543
    .local v3, "persistedState":I
    iget-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_3f

    .line 4554
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 4555
    const-string v0, "AudioService"

    invoke-direct {p0, v0}, enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 4562
    :cond_3f
    :goto_3f
    iput v7, p0, mMcc:I

    .line 4563
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4571
    .end local v3    # "persistedState":I
    .end local v8    # "safeMediaVolumeBypass":Z
    .end local v9    # "safeMediaVolumeEnabled":Z
    :cond_4c
    monitor-exit v10

    .line 4572
    return-void

    .line 4559
    .restart local v8    # "safeMediaVolumeBypass":Z
    .restart local v9    # "safeMediaVolumeEnabled":Z
    :cond_4e
    const/4 v3, 0x1

    .line 4560
    .restart local v3    # "persistedState":I
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    goto :goto_3f

    .line 4571
    .end local v3    # "persistedState":I
    .end local v7    # "mcc":I
    .end local v8    # "safeMediaVolumeBypass":Z
    .end local v9    # "safeMediaVolumeEnabled":Z
    :catchall_57
    move-exception v0

    monitor-exit v10
    :try_end_59
    .catchall {:try_start_4 .. :try_end_59} :catchall_57

    throw v0
.end method

.method private onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    .registers 12
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 9044
    sget-boolean v5, DEBUG_AP:Z

    if-eqz v5, :cond_2d

    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onDynamicPolicyMixStateUpdate("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9045
    :cond_2d
    iget-object v6, p0, mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v6

    .line 9046
    :try_start_30
    iget-object v5, p0, mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 9047
    .local v4, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getMixes()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/AudioMix;

    .line 9048
    .local v3, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_61
    .catchall {:try_start_30 .. :try_end_61} :catchall_8b

    move-result v5

    if-eqz v5, :cond_4e

    .line 9050
    :try_start_64
    iget-object v5, v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v5, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyMixStateUpdate(Ljava/lang/String;I)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_69} :catch_6b
    .catchall {:try_start_64 .. :try_end_69} :catchall_8b

    .line 9055
    :goto_69
    :try_start_69
    monitor-exit v6

    .line 9061
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    .end local v4    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :goto_6a
    return-void

    .line 9051
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    .restart local v4    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catch_6b
    move-exception v0

    .line 9052
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t call notifyMixStateUpdate() on IAudioPolicyCallback "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    .line 9059
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    .end local v4    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_8b
    move-exception v5

    monitor-exit v6
    :try_end_8d
    .catchall {:try_start_69 .. :try_end_8d} :catchall_8b

    throw v5

    :cond_8e
    :try_start_8e
    monitor-exit v6
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8b

    goto :goto_6a
.end method

.method private onSendBecomingNoisyIntent(I)V
    .registers 6
    .param p1, "device"    # I

    .prologue
    .line 6568
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6569
    .local v1, "noisySecIntent":Landroid/content/Intent;
    invoke-direct {p0, v1}, sendBroadcastToAll(Landroid/content/Intent;)V

    .line 6571
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6572
    .local v0, "noisyIntent":Landroid/content/Intent;
    const v2, 0x20000380

    and-int/2addr v2, p1

    if-eqz v2, :cond_1d

    .line 6573
    const-string v2, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6574
    :cond_1d
    invoke-direct {p0, v0}, sendBroadcastToAll(Landroid/content/Intent;)V

    .line 6575
    return-void
.end method

.method private onSendBecomingNoisyIntent(II)V
    .registers 7
    .param p1, "device"    # I
    .param p2, "personaId"    # I

    .prologue
    .line 9840
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9841
    .local v1, "noisySecIntent":Landroid/content/Intent;
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 9843
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9844
    .local v0, "noisyIntent":Landroid/content/Intent;
    const v2, 0x20000380

    and-int/2addr v2, p1

    if-eqz v2, :cond_24

    .line 9845
    const-string v2, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9846
    :cond_24
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 9847
    return-void
.end method

.method private onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 19
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 6654
    sget-boolean v1, DEBUG_VOL:Z

    if-eqz v1, :cond_2c

    .line 6655
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetA2dpSinkConnectionState btDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6657
    :cond_2c
    if-nez p1, :cond_2f

    .line 6738
    :goto_2e
    return-void

    .line 6660
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 6661
    .local v8, "address":Ljava/lang/String;
    invoke-static {v8}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 6662
    const-string v8, ""

    .line 6665
    :cond_3b
    move-object/from16 v0, p0

    iget-object v14, v0, mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 6667
    :try_start_40
    move-object/from16 v0, p0

    iget-object v1, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, getDeviceForStream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v13

    .line 6669
    .local v13, "preVolIndex":I
    const/16 v1, 0x80

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 6671
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6672
    .local v9, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v9, :cond_9b

    const/4 v10, 0x1

    .line 6674
    .local v10, "isConnected":Z
    :goto_6b
    if-eqz v10, :cond_df

    const/4 v1, 0x2

    move/from16 v0, p2

    if-eq v0, v1, :cond_df

    .line 6675
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 6676
    if-nez p2, :cond_81

    .line 6680
    const/16 v1, 0x1f40

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v1}, makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    .line 6687
    :cond_81
    :goto_81
    const/high16 v1, 0x20000000

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, checkDeviceConnected(I)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 6689
    const-string v1, "AudioService"

    const-string/jumbo v2, "onSetA2dpSinkConnectionState changing to SLD"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6690
    invoke-direct/range {p0 .. p0}, checkAndSendEarCareInfo()V

    .line 6691
    monitor-exit v14

    goto :goto_2e

    .line 6737
    .end local v9    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v10    # "isConnected":Z
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "preVolIndex":I
    :catchall_98
    move-exception v1

    monitor-exit v14
    :try_end_9a
    .catchall {:try_start_40 .. :try_end_9a} :catchall_98

    throw v1

    .line 6672
    .restart local v9    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v13    # "preVolIndex":I
    :cond_9b
    const/4 v10, 0x0

    goto :goto_6b

    .line 6684
    .restart local v10    # "isConnected":Z
    :cond_9d
    :try_start_9d
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    goto :goto_81

    .line 6694
    :cond_a3
    const/16 v1, 0x80

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, checkDeviceConnected(I)Z

    move-result v1

    if-nez v1, :cond_d0

    .line 6695
    move-object/from16 v0, p0

    iget-object v15, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v15
    :try_end_b2
    .catchall {:try_start_9d .. :try_end_b2} :catchall_98

    .line 6696
    :try_start_b2
    move-object/from16 v0, p0

    iget-object v1, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_cf

    .line 6697
    move-object/from16 v0, p0

    iget-object v1, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 6698
    move-object/from16 v0, p0

    iget-object v1, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6701
    :cond_cf
    monitor-exit v15
    :try_end_d0
    .catchall {:try_start_b2 .. :try_end_d0} :catchall_dc

    .line 6727
    :cond_d0
    :goto_d0
    :try_start_d0
    invoke-direct/range {p0 .. p0}, checkAndSendEarCareInfo()V

    .line 6730
    invoke-direct/range {p0 .. p0}, isFMRadioRecording()Z

    move-result v1

    if-eqz v1, :cond_13d

    .line 6731
    monitor-exit v14
    :try_end_da
    .catchall {:try_start_d0 .. :try_end_da} :catchall_98

    goto/16 :goto_2e

    .line 6701
    :catchall_dc
    move-exception v1

    :try_start_dd
    monitor-exit v15
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    :try_start_de
    throw v1

    .line 6703
    :cond_df
    if-nez v10, :cond_d0

    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_d0

    .line 6704
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 6706
    invoke-direct/range {p0 .. p0}, cancelA2dpDeviceTimeout()V

    .line 6707
    move-object/from16 v0, p0

    iput-object v8, v0, mDockAddress:Ljava/lang/String;

    .line 6716
    :cond_f3
    :goto_f3
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v1}, makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 6717
    move-object/from16 v0, p0

    iget-object v15, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v15
    :try_end_101
    .catchall {:try_start_de .. :try_end_101} :catchall_98

    .line 6718
    :try_start_101
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v12

    .line 6719
    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v1, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_125

    .line 6720
    move-object/from16 v0, p0

    iget-object v1, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v12, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 6721
    move-object/from16 v0, p0

    iget-object v1, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6724
    :cond_125
    monitor-exit v15

    goto :goto_d0

    .end local v12    # "name":Ljava/lang/String;
    :catchall_127
    move-exception v1

    monitor-exit v15
    :try_end_129
    .catchall {:try_start_101 .. :try_end_129} :catchall_127

    :try_start_129
    throw v1

    .line 6711
    :cond_12a
    invoke-direct/range {p0 .. p0}, hasScheduledA2dpDockTimeout()Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 6712
    invoke-direct/range {p0 .. p0}, cancelA2dpDeviceTimeout()V

    .line 6713
    move-object/from16 v0, p0

    iget-object v1, v0, mDockAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    goto :goto_f3

    .line 6733
    :cond_13d
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iget-object v2, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, getDeviceForStream(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    const/high16 v3, 0x2000000

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13, v2, v3}, sendVolumeUpdate(IIII)V

    .line 6737
    monitor-exit v14
    :try_end_158
    .catchall {:try_start_129 .. :try_end_158} :catchall_98

    goto/16 :goto_2e
.end method

.method private onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 11
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v7, 0x2

    .line 6819
    sget-boolean v4, DEBUG_VOL:Z

    if-eqz v4, :cond_28

    .line 6820
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSetA2dpSourceConnectionState btDevice="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6822
    :cond_28
    if-nez p1, :cond_2b

    .line 6841
    :goto_2a
    return-void

    .line 6825
    :cond_2b
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 6826
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 6827
    const-string v0, ""

    .line 6830
    :cond_37
    iget-object v5, p0, mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 6831
    const/high16 v4, -0x7ffe0000

    :try_start_3c
    invoke-direct {p0, v4, v0}, makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6832
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6833
    .local v1, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v1, :cond_57

    const/4 v2, 0x1

    .line 6835
    .local v2, "isConnected":Z
    :goto_4b
    if-eqz v2, :cond_59

    if-eq p2, v7, :cond_59

    .line 6836
    invoke-direct {p0, v0}, makeA2dpSrcUnavailable(Ljava/lang/String;)V

    .line 6840
    :cond_52
    :goto_52
    monitor-exit v5

    goto :goto_2a

    .end local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v2    # "isConnected":Z
    .end local v3    # "key":Ljava/lang/String;
    :catchall_54
    move-exception v4

    monitor-exit v5
    :try_end_56
    .catchall {:try_start_3c .. :try_end_56} :catchall_54

    throw v4

    .line 6833
    .restart local v1    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v3    # "key":Ljava/lang/String;
    :cond_57
    const/4 v2, 0x0

    goto :goto_4b

    .line 6837
    .restart local v2    # "isConnected":Z
    :cond_59
    if-nez v2, :cond_52

    if-ne p2, v7, :cond_52

    .line 6838
    :try_start_5d
    invoke-direct {p0, v0}, makeA2dpSrcAvailable(Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_54

    goto :goto_52
.end method

.method private onSetAoBleSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 25
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 6744
    sget-boolean v2, DEBUG_VOL:Z

    if-eqz v2, :cond_2c

    .line 6745
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetAoBleSinkConnectionState btDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6747
    :cond_2c
    if-nez p1, :cond_2f

    .line 6814
    :goto_2e
    return-void

    .line 6751
    :cond_2f
    const-string v15, ""

    .line 6753
    .local v15, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mConnectedDevices:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 6755
    :try_start_38
    move-object/from16 v0, p0

    iget-object v2, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, getDeviceForStream(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v20

    .line 6756
    .local v20, "preVolIndex":I
    const/high16 v2, 0x20000000

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 6758
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevices:Landroid/util/ArrayMap;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6759
    .local v16, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v16, :cond_b5

    const/16 v17, 0x1

    .line 6761
    .local v17, "isConnected":Z
    :goto_62
    if-eqz v17, :cond_fd

    const/4 v2, 0x2

    move/from16 v0, p2

    if-eq v0, v2, :cond_fd

    .line 6762
    const/high16 v2, 0x20000000

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v2, v3, v15, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6765
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevices:Landroid/util/ArrayMap;

    const/high16 v3, 0x20000000

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6768
    move-object/from16 v0, p0

    iget-object v2, v0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v2, :cond_9d

    move-object/from16 v0, p0

    iget-object v2, v0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$DeviceListSpec;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/audio/AudioService$DeviceListSpec;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 6769
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6772
    :cond_9d
    const/16 v2, 0x80

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkDeviceConnected(I)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 6773
    const-string v2, "AudioService"

    const-string/jumbo v3, "onSetAoBleSinkConnectionState changing to A2DP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6774
    monitor-exit v21

    goto/16 :goto_2e

    .line 6813
    .end local v16    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v17    # "isConnected":Z
    .end local v18    # "key":Ljava/lang/String;
    .end local v20    # "preVolIndex":I
    :catchall_b2
    move-exception v2

    monitor-exit v21
    :try_end_b4
    .catchall {:try_start_38 .. :try_end_b4} :catchall_b2

    throw v2

    .line 6759
    .restart local v16    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v20    # "preVolIndex":I
    :cond_b5
    const/16 v17, 0x0

    goto :goto_62

    .line 6776
    .restart local v17    # "isConnected":Z
    :cond_b8
    :try_start_b8
    move-object/from16 v0, p0

    iget-object v9, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v9
    :try_end_bd
    .catchall {:try_start_b8 .. :try_end_bd} :catchall_b2

    .line 6777
    :try_start_bd
    move-object/from16 v0, p0

    iget-object v2, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v2, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_da

    .line 6778
    move-object/from16 v0, p0

    iget-object v2, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 6779
    move-object/from16 v0, p0

    iget-object v2, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6782
    :cond_da
    monitor-exit v9
    :try_end_db
    .catchall {:try_start_bd .. :try_end_db} :catchall_fa

    .line 6810
    :cond_db
    :goto_db
    const/4 v2, 0x3

    :try_start_dc
    move-object/from16 v0, p0

    iget-object v3, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, getDeviceForStream(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    const/high16 v4, 0x2000000

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1, v3, v4}, sendVolumeUpdate(IIII)V

    .line 6813
    monitor-exit v21
    :try_end_f8
    .catchall {:try_start_dc .. :try_end_f8} :catchall_b2

    goto/16 :goto_2e

    .line 6782
    :catchall_fa
    move-exception v2

    :try_start_fb
    monitor-exit v9
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    :try_start_fc
    throw v2

    .line 6783
    :cond_fd
    if-nez v17, :cond_db

    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_db

    .line 6786
    move-object/from16 v0, p0

    iget-object v2, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v7, v2, v3

    .line 6787
    .local v7, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    iget-object v2, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/high16 v5, 0x20000000

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6789
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, setBluetoothA2dpOnInt(Z)V

    .line 6790
    const/high16 v2, 0x20000000

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v2, v3, v15, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6793
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevices:Landroid/util/ArrayMap;

    const/high16 v3, 0x20000000

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    const/high16 v5, 0x20000000

    const-string v6, ""

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6, v15}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6798
    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    const/high16 v3, 0x20000000

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v15}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6800
    move-object/from16 v0, p0

    iget-object v3, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v3
    :try_end_154
    .catchall {:try_start_fc .. :try_end_154} :catchall_b2

    .line 6801
    :try_start_154
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v19

    .line 6802
    .local v19, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v2, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17c

    .line 6803
    move-object/from16 v0, p0

    iget-object v2, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 6804
    move-object/from16 v0, p0

    iget-object v8, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v9, 0xc

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6807
    :cond_17c
    monitor-exit v3

    goto/16 :goto_db

    .end local v19    # "name":Ljava/lang/String;
    :catchall_17f
    move-exception v2

    monitor-exit v3
    :try_end_181
    .catchall {:try_start_154 .. :try_end_181} :catchall_17f

    :try_start_181
    throw v2
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_b2
.end method

.method private onSetStreamVolume(IIIILjava/lang/String;)V
    .registers 13
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2246
    iget-object v0, p0, mStreamVolumeAlias:[I

    aget v1, v0, p1

    .local v1, "stream":I
    move-object v0, p0

    move v2, p2

    move v3, p4

    move-object v5, p5

    .line 2247
    invoke-direct/range {v0 .. v5}, setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2248
    const/high16 v0, 0x4000000

    and-int/2addr v0, p3

    if-nez v0, :cond_27

    .line 2250
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_1b

    invoke-virtual {p0}, getUiSoundsStreamType()I

    move-result v0

    if-ne v1, v0, :cond_27

    .line 2253
    :cond_1b
    if-nez p2, :cond_32

    .line 2254
    iget-boolean v0, p0, mHasVibrator:Z

    if-eqz v0, :cond_28

    const/4 v6, 0x1

    .line 2260
    .local v6, "newRingerMode":I
    :goto_22
    const-string v0, "AudioService.onSetStreamVolume"

    invoke-direct {p0, v6, v0, v4}, setRingerMode(ILjava/lang/String;Z)V

    .line 2265
    .end local v6    # "newRingerMode":I
    :cond_27
    return-void

    .line 2254
    :cond_28
    iget-object v0, p0, mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v0, v0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v0, :cond_30

    move v6, v4

    goto :goto_22

    :cond_30
    const/4 v6, 0x2

    goto :goto_22

    .line 2258
    :cond_32
    const/4 v6, 0x2

    .restart local v6    # "newRingerMode":I
    goto :goto_22
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    .line 7130
    sget-boolean v1, DEBUG_DEVICES:Z

    if-eqz v1, :cond_59

    .line 7131
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetWiredDeviceConnectionState(dev:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " deviceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7138
    :cond_59
    iget-object v12, p0, mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 7140
    :try_start_5c
    iget-object v1, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, v2}, getDeviceForStream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v11

    .line 7141
    .local v11, "preVolIndex":I
    const-string v10, ""

    .line 7143
    .local v10, "params":Ljava/lang/String;
    if-nez p2, :cond_84

    const/4 v1, 0x4

    if-eq p1, v1, :cond_79

    const/16 v1, 0x8

    if-eq p1, v1, :cond_79

    const/high16 v1, 0x20000

    if-ne p1, v1, :cond_84

    .line 7146
    :cond_79
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, setBluetoothA2dpOnInt(Z)V

    .line 7147
    iget-boolean v1, p0, mCPUBoostForComm:Z

    if-nez v1, :cond_84

    .line 7148
    invoke-direct {p0}, stopCPUBoost()V

    .line 7152
    :cond_84
    const/16 v1, 0x1000

    if-eq p1, v1, :cond_8d

    const v1, -0x7ffffc00

    if-ne p1, v1, :cond_8f

    .line 7154
    :cond_8d
    move-object/from16 v10, p3

    .line 7158
    :cond_8f
    if-eqz p2, :cond_ec

    const/4 v1, 0x4

    if-eq p1, v1, :cond_98

    const/16 v1, 0x8

    if-ne p1, v1, :cond_ec

    .line 7160
    :cond_98
    iget-object v1, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    const/16 v2, 0x9

    if-le v1, v2, :cond_c8

    .line 7161
    const/4 v1, 0x3

    const/16 v2, 0x9

    invoke-static {v1, v2, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 7162
    iget-object v1, p0, mStreamVolumeAlias:[I

    const/4 v2, 0x3

    aget v2, v1, v2

    const/16 v1, 0x5a

    const/4 v3, 0x3

    iget-object v4, p0, mStreamVolumeAlias:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-direct {p0, v1, v3, v4}, rescaleIndex(III)I

    move-result v3

    const/4 v5, 0x0

    const-string v6, "AudioService"

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 7169
    :cond_c8
    iget-object v1, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    const/16 v2, 0x9

    if-lt v1, v2, :cond_ec

    .line 7172
    iget-object v1, p0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    .line 7173
    iget-object v1, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x70

    const/4 v3, 0x2

    const/4 v5, 0x0

    iget-object v6, p0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v1 .. v7}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7185
    :cond_ec
    and-int/lit16 v1, p1, -0x6001

    if-eqz v1, :cond_fb

    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_115

    const v1, 0x7fffe7ff

    and-int/2addr v1, p1

    if-nez v1, :cond_115

    :cond_fb
    const/4 v9, 0x1

    .line 7189
    .local v9, "isUsb":Z
    :goto_fc
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_117

    const/4 v8, 0x1

    .line 7198
    .local v8, "isHdmi":Z
    :goto_101
    const/4 v1, 0x1

    if-ne p2, v1, :cond_119

    const/4 v1, 0x1

    :goto_105
    if-nez v9, :cond_109

    if-eqz v8, :cond_10b

    :cond_109
    move-object/from16 v10, p3

    .end local v10    # "params":Ljava/lang/String;
    :cond_10b
    move-object/from16 v0, p4

    invoke-direct {p0, v1, p1, v10, v0}, handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11b

    .line 7200
    monitor-exit v12

    .line 7254
    :goto_114
    return-void

    .line 7185
    .end local v8    # "isHdmi":Z
    .end local v9    # "isUsb":Z
    .restart local v10    # "params":Ljava/lang/String;
    :cond_115
    const/4 v9, 0x0

    goto :goto_fc

    .line 7189
    .restart local v9    # "isUsb":Z
    :cond_117
    const/4 v8, 0x0

    goto :goto_101

    .line 7198
    .restart local v8    # "isHdmi":Z
    :cond_119
    const/4 v1, 0x0

    goto :goto_105

    .line 7203
    .end local v10    # "params":Ljava/lang/String;
    :cond_11b
    if-eqz p2, :cond_193

    .line 7204
    const/4 v1, 0x4

    if-eq p1, v1, :cond_128

    const/16 v1, 0x8

    if-eq p1, v1, :cond_128

    const/high16 v1, 0x20000

    if-ne p1, v1, :cond_12f

    .line 7208
    :cond_128
    invoke-direct {p0}, increaseEARCount()V

    .line 7210
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, setBluetoothA2dpOnInt(Z)V

    .line 7212
    :cond_12f
    const v1, 0x2000018c

    and-int/2addr v1, p1

    if-eqz v1, :cond_144

    .line 7213
    iget-object v1, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0xea60

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7222
    :cond_144
    invoke-direct {p0}, isPlatformTelevision()Z

    move-result v1

    if-eqz v1, :cond_16d

    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_16d

    .line 7223
    iget v1, p0, mFixedVolumeDevices:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, mFixedVolumeDevices:I

    .line 7224
    invoke-direct {p0}, checkAllFixedVolumeDevices()V

    .line 7225
    iget-object v1, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_16d

    .line 7226
    iget-object v2, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v2
    :try_end_15e
    .catchall {:try_start_5c .. :try_end_15e} :catchall_18d

    .line 7227
    :try_start_15e
    iget-object v1, p0, mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v1, :cond_16c

    .line 7228
    const/4 v1, 0x0

    iput-boolean v1, p0, mHdmiCecSink:Z

    .line 7229
    iget-object v1, p0, mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v3, p0, mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-virtual {v1, v3}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    .line 7231
    :cond_16c
    monitor-exit v2
    :try_end_16d
    .catchall {:try_start_15e .. :try_end_16d} :catchall_190

    .line 7244
    :cond_16d
    :goto_16d
    if-nez v9, :cond_177

    const v1, -0x7ffffff0

    if-eq p1, v1, :cond_177

    .line 7245
    :try_start_174
    invoke-direct/range {p0 .. p4}, sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V

    .line 7249
    :cond_177
    const/4 v1, 0x3

    iget-object v2, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0, v3}, getDeviceForStream(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    const/high16 v3, 0x2000000

    invoke-direct {p0, v1, v11, v2, v3}, sendVolumeUpdate(IIII)V

    .line 7253
    monitor-exit v12

    goto :goto_114

    .end local v8    # "isHdmi":Z
    .end local v9    # "isUsb":Z
    .end local v11    # "preVolIndex":I
    :catchall_18d
    move-exception v1

    monitor-exit v12
    :try_end_18f
    .catchall {:try_start_174 .. :try_end_18f} :catchall_18d

    throw v1

    .line 7231
    .restart local v8    # "isHdmi":Z
    .restart local v9    # "isUsb":Z
    .restart local v11    # "preVolIndex":I
    :catchall_190
    move-exception v1

    :try_start_191
    monitor-exit v2
    :try_end_192
    .catchall {:try_start_191 .. :try_end_192} :catchall_190

    :try_start_192
    throw v1

    .line 7235
    :cond_193
    invoke-direct {p0}, isPlatformTelevision()Z

    move-result v1

    if-eqz v1, :cond_16d

    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_16d

    .line 7236
    iget-object v1, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_16d

    .line 7237
    iget-object v2, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v2
    :try_end_1a4
    .catchall {:try_start_192 .. :try_end_1a4} :catchall_18d

    .line 7238
    const/4 v1, 0x0

    :try_start_1a5
    iput-boolean v1, p0, mHdmiCecSink:Z

    .line 7239
    monitor-exit v2

    goto :goto_16d

    :catchall_1a9
    move-exception v1

    monitor-exit v2
    :try_end_1ab
    .catchall {:try_start_1a5 .. :try_end_1ab} :catchall_1a9

    :try_start_1ab
    throw v1
    :try_end_1ac
    .catchall {:try_start_1ab .. :try_end_1ac} :catchall_18d
.end method

.method private onUnmuteStream(II)V
    .registers 7
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .prologue
    .line 2192
    iget-object v3, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v3, p1

    .line 2193
    .local v2, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2195
    invoke-direct {p0, p1}, getDeviceForStream(I)I

    move-result v0

    .line 2196
    .local v0, "device":I
    iget-object v3, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 2197
    .local v1, "index":I
    invoke-direct {p0, p1, v1, v1, p2}, sendVolumeUpdate(IIII)V

    .line 2198
    return-void
.end method

.method private performSoftReset()V
    .registers 19

    .prologue
    .line 1705
    const-string v2, "AudioService"

    const-string v3, "Perform soft reset start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mMonoMode:I

    .line 1708
    move-object/from16 v0, p0

    iget-object v2, v0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "mono_audio_db"

    move-object/from16 v0, p0

    iget v4, v0, mMonoMode:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1709
    move-object/from16 v0, p0

    iget v2, v0, mMonoMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, setMonoMode(I)V

    .line 1712
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mMySoundEnabled:I

    .line 1713
    move-object/from16 v0, p0

    iget-object v2, v0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "hearing_musiccheck"

    move-object/from16 v0, p0

    iget v4, v0, mMySoundEnabled:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1714
    move-object/from16 v0, p0

    iget v2, v0, mMySoundEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, setGlobalMySound(I)V

    .line 1715
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mSoundAliveEnabled:I

    .line 1716
    move-object/from16 v0, p0

    iget-object v2, v0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "sound_alive_effect"

    move-object/from16 v0, p0

    iget v4, v0, mSoundAliveEnabled:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1717
    move-object/from16 v0, p0

    iget v2, v0, mSoundAliveEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, setGlobalSoundAlive(I)V

    .line 1718
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mK2HDEnabled:I

    .line 1719
    move-object/from16 v0, p0

    iget-object v2, v0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "k2hd_effect"

    move-object/from16 v0, p0

    iget v4, v0, mK2HDEnabled:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1720
    move-object/from16 v0, p0

    iget v2, v0, mK2HDEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, setGlobalK2HD(I)V

    .line 1721
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mTubeAmpEnabled:I

    .line 1722
    move-object/from16 v0, p0

    iget-object v2, v0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "tube_amp_effect"

    move-object/from16 v0, p0

    iget v4, v0, mTubeAmpEnabled:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1723
    move-object/from16 v0, p0

    iget v2, v0, mTubeAmpEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, setGlobalTubeAmp(I)V

    .line 1725
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mNbQualityMode:I

    .line 1726
    move-object/from16 v0, p0

    iget-object v2, v0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "personalise_call_sound_soft"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1727
    move-object/from16 v0, p0

    iget v2, v0, mNbQualityMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, setNbQualityMode(I)V

    .line 1732
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, mDualMicMode:I

    .line 1736
    move-object/from16 v0, p0

    iget-object v2, v0, mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "call_noise_reduction"

    move-object/from16 v0, p0

    iget v4, v0, mDualMicMode:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1737
    move-object/from16 v0, p0

    iget v2, v0, mDualMicMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, setDualMicMode(I)V

    .line 1739
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mAllSoundMute:I

    .line 1740
    move-object/from16 v0, p0

    iget-object v2, v0, mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "all_sound_off"

    move-object/from16 v0, p0

    iget v4, v0, mAllSoundMute:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1741
    invoke-direct/range {p0 .. p0}, setAllSoundMute()V

    .line 1743
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mNaturalSound:I

    .line 1744
    move-object/from16 v0, p0

    iget-object v2, v0, mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "call_natural_sound"

    move-object/from16 v0, p0

    iget v4, v0, mNaturalSound:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1745
    move-object/from16 v0, p0

    iget v2, v0, mNaturalSound:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, setNaturalSoundMode(I)V

    .line 1749
    const/4 v2, 0x2

    const-string v3, "AudioService.performSoftReset"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, setRingerMode(ILjava/lang/String;Z)V

    .line 1751
    const/4 v9, 0x0

    .line 1752
    .local v9, "deletedRows":I
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v13

    .line 1753
    .local v13, "numStreamTypes":I
    const/16 v16, 0x0

    .local v16, "streamType":I
    :goto_10f
    move/from16 v0, v16

    if-ge v0, v13, :cond_1ae

    .line 1754
    move-object/from16 v0, p0

    iget-object v2, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v7, v2, v16

    .line 1755
    .local v7, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const-string/jumbo v15, "name LIKE ?"

    .line 1756
    .local v15, "selectionClause":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1757
    .local v12, "makeString":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v14, v2

    .line 1761
    .local v14, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mStreamVolumeAlias:[I

    aget v2, v2, v16

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14a

    const/4 v2, 0x3

    move/from16 v0, v16

    if-eq v0, v2, :cond_14a

    .line 1753
    :goto_147
    add-int/lit8 v16, v16, 0x1

    goto :goto_10f

    .line 1764
    :cond_14a
    monitor-enter v7

    .line 1765
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_14c
    :try_start_14c
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v10, v2, :cond_1a9

    .line 1766
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 1767
    .local v5, "device":I
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v11, v2, v16

    .line 1768
    .local v11, "index":I
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v2

    mul-int/lit8 v3, v11, 0xa

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1770
    invoke-virtual {v7, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 1772
    add-int/lit8 v17, v13, -0x1

    .local v17, "streamType2":I
    :goto_170
    if-ltz v17, :cond_19a

    .line 1773
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    move/from16 v0, v17

    if-eq v0, v2, :cond_197

    move-object/from16 v0, p0

    iget-object v2, v0, mStreamVolumeAlias:[I

    aget v2, v2, v17

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_197

    .line 1775
    move-object/from16 v0, p0

    iget-object v2, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, getDeviceForStream(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 1772
    :cond_197
    add-int/lit8 v17, v17, -0x1

    goto :goto_170

    .line 1779
    :cond_19a
    move-object/from16 v0, p0

    iget-object v2, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1765
    add-int/lit8 v10, v10, 0x1

    goto :goto_14c

    .line 1787
    .end local v5    # "device":I
    .end local v11    # "index":I
    .end local v17    # "streamType2":I
    :cond_1a9
    monitor-exit v7

    goto :goto_147

    :catchall_1ab
    move-exception v2

    monitor-exit v7
    :try_end_1ad
    .catchall {:try_start_14c .. :try_end_1ad} :catchall_1ab

    throw v2

    .line 1789
    .end local v7    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v10    # "i":I
    .end local v12    # "makeString":Ljava/lang/String;
    .end local v14    # "selectionArgs":[Ljava/lang/String;
    .end local v15    # "selectionClause":Ljava/lang/String;
    :cond_1ae
    const-string v2, "AudioService"

    const-string v3, "Perform soft reset end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    return-void
.end method

.method private playSilentModeSound()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9615
    iget-boolean v0, p0, mSilentModeOff:Z

    if-eqz v0, :cond_f

    .line 9616
    const-string v0, "AudioService"

    const-string/jumbo v1, "mSilentModeOff TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9626
    :goto_e
    return-void

    .line 9619
    :cond_f
    invoke-virtual {p0}, getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    .line 9620
    const-string v0, "AudioService"

    const-string/jumbo v1, "sikp playSilentModeSound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 9623
    :cond_1f
    iput-boolean v2, p0, mIsPlaySilentModeOff:Z

    .line 9624
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, playSoundEffect(I)V

    .line 9625
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6c

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v3

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_e
.end method

.method private porcessUsbAudioDevicePlug(Landroid/content/Intent;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 9282
    const/4 v3, 0x0

    .line 9283
    .local v3, "outDevice":I
    const/16 v18, 0x0

    .line 9284
    .local v18, "inDevice":I
    const-string/jumbo v2, "state"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 9285
    .local v4, "state":I
    const-string v2, "card"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 9286
    .local v12, "alsaCard":I
    const-string/jumbo v2, "device"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 9287
    .local v13, "alsaDevice":I
    const-string/jumbo v2, "hasPlayback"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 9288
    .local v17, "hasPlayback":Z
    const-string/jumbo v2, "hasCapture"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 9289
    .local v15, "hasCapture":Z
    const-string/jumbo v2, "hasMIDI"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 9290
    .local v16, "hasMIDI":Z
    const/4 v2, -0x1

    if-ne v12, v2, :cond_98

    const/4 v2, -0x1

    if-ne v13, v2, :cond_98

    const-string v5, ""

    .line 9293
    .local v5, "params":Ljava/lang/String;
    :goto_46
    invoke-direct/range {p0 .. p0}, isSmartDockConnected()Z

    move-result v19

    .line 9294
    .local v19, "isSmartdock":Z
    move-object/from16 v0, p0

    iget-object v2, v0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "cradle_enable"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v2, v6, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 9295
    .local v14, "cradleEnabled":I
    if-eqz v19, :cond_c2

    .line 9296
    move-object/from16 v0, p0

    iget-boolean v2, v0, mOldIsSmartdock:Z

    move/from16 v0, v19

    if-eq v0, v2, :cond_e5

    .line 9297
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, mOldIsSmartdock:Z

    .line 9298
    const/4 v2, 0x1

    if-ne v4, v2, :cond_b6

    move-object v2, v5

    :goto_6b
    move-object/from16 v0, p0

    iput-object v2, v0, mExternalUsbInfo:Ljava/lang/String;

    .line 9299
    const/4 v2, 0x1

    if-ne v14, v2, :cond_b8

    .line 9300
    const-string v2, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cradleEnabled change path, state : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9302
    const/16 v3, 0x4000

    .line 9303
    const-string v6, ""

    const-string v7, "AudioService"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v7, v18

    .line 9321
    .end local v18    # "inDevice":I
    .local v7, "inDevice":I
    :goto_97
    return-void

    .line 9290
    .end local v5    # "params":Ljava/lang/String;
    .end local v7    # "inDevice":I
    .end local v14    # "cradleEnabled":I
    .end local v19    # "isSmartdock":Z
    .restart local v18    # "inDevice":I
    :cond_98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "card="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ";device="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_46

    .line 9298
    .restart local v5    # "params":Ljava/lang/String;
    .restart local v14    # "cradleEnabled":I
    .restart local v19    # "isSmartdock":Z
    :cond_b6
    const/4 v2, 0x0

    goto :goto_6b

    .line 9305
    :cond_b8
    const-string v2, "AudioService"

    const-string v6, "cradle disabled no any action"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, v18

    .end local v18    # "inDevice":I
    .restart local v7    # "inDevice":I
    goto :goto_97

    .line 9309
    .end local v7    # "inDevice":I
    .restart local v18    # "inDevice":I
    :cond_c2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mOldIsSmartdock:Z

    .line 9311
    if-eqz v17, :cond_d4

    .line 9312
    const/16 v3, 0x4000

    .line 9313
    const-string v6, ""

    const-string v7, "AudioService"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9316
    :cond_d4
    if-eqz v15, :cond_e5

    .line 9317
    const v7, -0x7ffff000

    .line 9318
    .end local v18    # "inDevice":I
    .restart local v7    # "inDevice":I
    const-string v10, ""

    const-string v11, "AudioService"

    move-object/from16 v6, p0

    move v8, v4

    move-object v9, v5

    invoke-virtual/range {v6 .. v11}, setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_97

    .end local v7    # "inDevice":I
    .restart local v18    # "inDevice":I
    :cond_e5
    move/from16 v7, v18

    .end local v18    # "inDevice":I
    .restart local v7    # "inDevice":I
    goto :goto_97
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 17
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 5071
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 5074
    .local v8, "ident":J
    iget-object v0, p0, mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5075
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5076
    const/4 v2, 0x2

    move-object v0, p1

    move v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5077
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .registers 4

    .prologue
    .line 8673
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setLowRamDevice(Z)I

    move-result v0

    .line 8674
    .local v0, "status":I
    if-eqz v0, :cond_22

    .line 8675
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8677
    :cond_22
    return-void
.end method

.method private readAudioSettings(Z)V
    .registers 9
    .param p1, "userSwitch"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 3650
    invoke-direct {p0}, readPersistedSettings()V

    .line 3652
    invoke-direct {p0}, setAllSoundMute()V

    .line 3655
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 3656
    .local v0, "numStreamTypes":I
    const/4 v2, 0x0

    .local v2, "streamType":I
    :goto_d
    if-ge v2, v0, :cond_43

    .line 3657
    iget-object v3, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v3, v2

    .line 3659
    .local v1, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz p1, :cond_1e

    iget-object v3, p0, mStreamVolumeAlias:[I

    aget v3, v3, v2

    if-ne v3, v6, :cond_1e

    .line 3656
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 3663
    :cond_1e
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 3664
    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v4

    .line 3666
    :try_start_24
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {p0, v2}, isStreamAffectedByMute(I)Z

    move-result v3

    if-nez v3, :cond_36

    invoke-direct {p0, v2}, isStreamMutedByRingerMode(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    :cond_36
    iget-boolean v3, p0, mUseFixedVolume:Z

    if-eqz v3, :cond_3e

    .line 3668
    :cond_3a
    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$502(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z

    .line 3670
    :cond_3e
    monitor-exit v4

    goto :goto_1b

    :catchall_40
    move-exception v3

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_24 .. :try_end_42} :catchall_40

    throw v3

    .line 3675
    .end local v1    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_43
    invoke-virtual {p0}, getRingerModeInternal()I

    move-result v3

    invoke-direct {p0, v3, v5}, setRingerModeInt(IZ)V

    .line 3677
    invoke-direct {p0}, checkAllFixedVolumeDevices()V

    .line 3678
    invoke-direct {p0}, checkAllAliasStreamVolumes()V

    .line 3679
    invoke-direct {p0}, checkMuteAffectedStreams()V

    .line 3681
    iget-object v4, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v4

    .line 3687
    :try_start_56
    iget-object v3, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_63

    .line 3688
    const-string v3, "AudioService"

    invoke-direct {p0, v3}, enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 3690
    :cond_63
    monitor-exit v4

    .line 3691
    return-void

    .line 3690
    :catchall_65
    move-exception v3

    monitor-exit v4
    :try_end_67
    .catchall {:try_start_56 .. :try_end_67} :catchall_65

    throw v3
.end method

.method private readCameraSoundForced()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 8086
    const-string v1, "audio.camerasound.force"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .registers 9
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 1586
    const-string/jumbo v2, "dock_audio_media_enabled"

    invoke-static {p1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1d

    :goto_d
    iput-boolean v0, p0, mDockAudioMediaEnabled:Z

    .line 1589
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x2

    const/4 v3, 0x3

    iget-boolean v4, p0, mDockAudioMediaEnabled:Z

    if-eqz v4, :cond_1f

    move v4, v1

    :goto_18
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1597
    return-void

    :cond_1d
    move v0, v6

    .line 1586
    goto :goto_d

    :cond_1f
    move v4, v6

    .line 1589
    goto :goto_18
.end method

.method private readPersistedSettings()V
    .registers 16

    .prologue
    const/4 v14, 0x5

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v13, -0x2

    const/4 v6, 0x0

    .line 1600
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 1602
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v7, "mode_ringer"

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1605
    .local v4, "ringerModeFromSettings":I
    move v3, v4

    .line 1608
    .local v3, "ringerMode":I
    invoke-virtual {p0, v3}, isValidRingerMode(I)Z

    move-result v7

    if-nez v7, :cond_16

    .line 1609
    const/4 v3, 0x2

    .line 1611
    :cond_16
    if-ne v3, v5, :cond_1d

    iget-boolean v7, p0, mHasVibrator:Z

    if-nez v7, :cond_1d

    .line 1612
    const/4 v3, 0x0

    .line 1614
    :cond_1d
    if-eq v3, v4, :cond_25

    .line 1615
    const-string/jumbo v7, "mode_ringer"

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1617
    :cond_25
    iget-boolean v7, p0, mUseFixedVolume:Z

    if-nez v7, :cond_2f

    invoke-direct {p0}, isPlatformTelevision()Z

    move-result v7

    if-eqz v7, :cond_30

    .line 1618
    :cond_2f
    const/4 v3, 0x2

    .line 1620
    :cond_30
    iget-object v9, p0, mSettingsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1621
    :try_start_33
    iput v3, p0, mRingerMode:I

    .line 1622
    iget v7, p0, mRingerModeExternal:I

    const/4 v10, -0x1

    if-ne v7, v10, :cond_3e

    .line 1623
    iget v7, p0, mRingerMode:I

    iput v7, p0, mRingerModeExternal:I

    .line 1629
    :cond_3e
    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-boolean v7, p0, mHasVibrator:Z

    if-eqz v7, :cond_12a

    move v7, v8

    :goto_45
    invoke-static {v10, v11, v7}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v7

    iput v7, p0, mVibrateSetting:I

    .line 1633
    iget v10, p0, mVibrateSetting:I

    const/4 v11, 0x0

    iget-boolean v7, p0, mHasVibrator:Z

    if-eqz v7, :cond_12d

    move v7, v8

    :goto_53
    invoke-static {v10, v11, v7}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v7

    iput v7, p0, mVibrateSetting:I

    .line 1639
    const-string/jumbo v7, "mono_audio_db"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v0, v7, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, mMonoMode:I

    .line 1642
    iget-object v7, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "hearing_musiccheck"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v7, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, mMySoundEnabled:I

    .line 1643
    iget-object v7, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "sound_alive_effect"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v7, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, mSoundAliveEnabled:I

    .line 1644
    iget-object v7, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "k2hd_effect"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v7, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, mK2HDEnabled:I

    .line 1645
    iget-object v7, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "tube_amp_effect"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v7, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, mTubeAmpEnabled:I

    .line 1647
    iget-object v7, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "personalise_call_sound_soft"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, mNbQualityMode:I

    .line 1649
    const-string v7, "call_noise_reduction"

    const/4 v10, 0x1

    const/4 v11, -0x2

    invoke-static {v0, v7, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, mDualMicMode:I

    .line 1651
    const-string v7, "all_sound_off"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v0, v7, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, mAllSoundMute:I

    .line 1653
    const-string v7, "call_natural_sound"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v0, v7, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, mNaturalSound:I

    .line 1654
    const-string/jumbo v7, "theme_touch_sound"

    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    .line 1656
    invoke-direct {p0}, updateRingerModeAffectedStreams()Z

    .line 1657
    invoke-direct {p0, v0}, readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 1658
    monitor-exit v9
    :try_end_d2
    .catchall {:try_start_33 .. :try_end_d2} :catchall_130

    .line 1660
    const-string/jumbo v7, "mute_streams_affected"

    const/16 v9, 0x2e

    invoke-static {v0, v7, v9, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, mMuteAffectedStreams:I

    .line 1666
    iget-boolean v7, p0, mIsDefaultStreamNotification:Z

    if-eqz v7, :cond_e9

    .line 1667
    iget-object v7, p0, STREAM_VOLUME_ALIAS_DEFAULT:[I

    aput v14, v7, v8

    .line 1668
    iget-object v7, p0, STREAM_VOLUME_ALIAS_DEFAULT:[I

    aput v14, v7, v14

    .line 1671
    :cond_e9
    const-string/jumbo v7, "volume_master_mute"

    invoke-static {v0, v7, v6, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_133

    move v1, v5

    .line 1673
    .local v1, "masterMute":Z
    :goto_f3
    iget-boolean v7, p0, mUseFixedVolume:Z

    if-eqz v7, :cond_fd

    .line 1674
    const/4 v1, 0x0

    .line 1675
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1677
    :cond_fd
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1678
    invoke-direct {p0, v1}, broadcastMasterMuteStatus(Z)V

    .line 1680
    const-string/jumbo v7, "microphone_mute"

    invoke-static {v0, v7, v6, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_135

    move v2, v5

    .line 1682
    .local v2, "microphoneMute":Z
    :goto_10d
    invoke-static {v2}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1687
    const-string v7, "android.media.RINGER_MODE_CHANGED"

    iget v8, p0, mRingerModeExternal:I

    invoke-direct {p0, v7, v8}, broadcastRingerMode(Ljava/lang/String;I)V

    .line 1688
    const-string v7, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    iget v8, p0, mRingerMode:I

    invoke-direct {p0, v7, v8}, broadcastRingerMode(Ljava/lang/String;I)V

    .line 1691
    invoke-direct {p0, v6}, broadcastVibrateSetting(I)V

    .line 1692
    invoke-direct {p0, v5}, broadcastVibrateSetting(I)V

    .line 1695
    iget-object v5, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    .line 1696
    return-void

    .end local v1    # "masterMute":Z
    .end local v2    # "microphoneMute":Z
    :cond_12a
    move v7, v6

    .line 1629
    goto/16 :goto_45

    :cond_12d
    move v7, v6

    .line 1633
    goto/16 :goto_53

    .line 1658
    :catchall_130
    move-exception v5

    :try_start_131
    monitor-exit v9
    :try_end_132
    .catchall {:try_start_131 .. :try_end_132} :catchall_130

    throw v5

    :cond_133
    move v1, v6

    .line 1671
    goto :goto_f3

    .restart local v1    # "masterMute":Z
    :cond_135
    move v2, v6

    .line 1680
    goto :goto_10d
.end method

.method private reloadWhitelist()V
    .registers 20

    .prologue
    .line 7857
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.sm.policy"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_1c

    const/4 v13, 0x1

    .line 7859
    .local v13, "isSCPMClientExist":Z
    :goto_12
    if-nez v13, :cond_1e

    .line 7860
    const-string v2, "AudioService"

    const-string v3, "SCPMClient is not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7915
    :goto_1b
    return-void

    .line 7857
    .end local v13    # "isSCPMClientExist":Z
    :cond_1c
    const/4 v13, 0x0

    goto :goto_12

    .line 7864
    .restart local v13    # "isSCPMClientExist":Z
    :cond_1e
    invoke-direct/range {p0 .. p0}, getNewWhiteListVersion()Ljava/lang/String;

    move-result-object v15

    .line 7865
    .local v15, "newVersion":Ljava/lang/String;
    if-nez v15, :cond_2c

    .line 7866
    const-string v2, "AudioService"

    const-string v3, "EffectPolicy server version is not latest or incorrect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 7870
    :cond_2c
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 7872
    .local v9, "effectPolicyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/audio/AudioService$EffectPolicy;>;"
    const/4 v14, 0x0

    .line 7873
    .local v14, "itemCursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 7875
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_3a
    # getter for: Lcom/android/server/audio/AudioService$EffectPolicy;->PACKAGE_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->access$13800()Landroid/net/Uri;

    move-result-object v2

    # getter for: Lcom/android/server/audio/AudioService$EffectPolicy;->PACKAGE_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->access$13900()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 7876
    if-eqz v14, :cond_fd

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_fd

    .line 7877
    :goto_51
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 7878
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 7879
    .local v16, "packageName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 7880
    .local v7, "category":Ljava/lang/String;
    new-instance v2, Lcom/android/server/audio/AudioService$EffectPolicy;

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v7}, Lcom/android/server/audio/AudioService$EffectPolicy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_6b} :catch_6c
    .catchall {:try_start_3a .. :try_end_6b} :catchall_105

    goto :goto_51

    .line 7883
    .end local v7    # "category":Ljava/lang/String;
    .end local v16    # "packageName":Ljava/lang/String;
    :catch_6c
    move-exception v8

    .line 7884
    .local v8, "e":Ljava/lang/Exception;
    :try_start_6d
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_105

    .line 7886
    if-eqz v14, :cond_76

    .line 7887
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 7888
    const/4 v14, 0x0

    .line 7892
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_76
    :goto_76
    new-instance v18, Ljava/io/StringWriter;

    invoke-direct/range {v18 .. v18}, Ljava/io/StringWriter;-><init>()V

    .line 7893
    .local v18, "stringWriter":Ljava/io/StringWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 7894
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_9b
    # getter for: Lcom/android/server/audio/AudioService$EffectPolicy;->allEffectType:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->access$14000()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v11, v2, :cond_118

    .line 7895
    # getter for: Lcom/android/server/audio/AudioService$EffectPolicy;->allEffectType:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->access$14000()[Ljava/lang/String;

    move-result-object v2

    aget-object v10, v2, v11

    .line 7896
    .local v10, "effectType":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " {\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 7897
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_c4
    :goto_c4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/audio/AudioService$EffectPolicy;

    .line 7898
    .local v17, "policy":Lcom/android/server/audio/AudioService$EffectPolicy;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/audio/AudioService$EffectPolicy;->getEffectType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 7899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/audio/AudioService$EffectPolicy;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_c4

    .line 7886
    .end local v10    # "effectType":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v17    # "policy":Lcom/android/server/audio/AudioService$EffectPolicy;
    .end local v18    # "stringWriter":Ljava/io/StringWriter;
    :cond_fd
    if-eqz v14, :cond_76

    .line 7887
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 7888
    const/4 v14, 0x0

    goto/16 :goto_76

    .line 7886
    :catchall_105
    move-exception v2

    if-eqz v14, :cond_10c

    .line 7887
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 7888
    const/4 v14, 0x0

    :cond_10c
    throw v2

    .line 7902
    .restart local v10    # "effectType":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v18    # "stringWriter":Ljava/io/StringWriter;
    :cond_10d
    const-string/jumbo v2, "}\n"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 7894
    add-int/lit8 v11, v11, 0x1

    goto :goto_9b

    .line 7906
    .end local v10    # "effectType":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_118
    :try_start_118
    const-string v2, "/data/snd/effect_policy.conf"

    invoke-virtual/range {v18 .. v18}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 7907
    const-string v2, "/data/snd/effect_policy.conf"

    const/16 v3, 0x1a0

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_12a} :catch_135

    .line 7913
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 7914
    const-string/jumbo v2, "reloadWhitelist"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 7908
    :catch_135
    move-exception v8

    .line 7910
    .local v8, "e":Ljava/io/IOException;
    const-string v2, "AudioService"

    const-string v3, "Failed update effectpolicy"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b
.end method

.method private rescaleIndex(III)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    .prologue
    .line 1699
    iget-object v0, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4226
    iget-object v1, p0, mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 4227
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0, v0, v2}, clearAllScoClients(IZ)V

    .line 4228
    const/4 v0, 0x0

    iput v0, p0, mScoAudioState:I

    .line 4229
    const/4 v0, 0x0

    invoke-direct {p0, v0}, broadcastScoConnectionState(I)V

    .line 4230
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_1a

    .line 4231
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4232
    invoke-virtual {p0, v3}, setBluetoothScoOnInt(Z)V

    .line 4233
    return-void

    .line 4230
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private static safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # Ljava/lang/Integer;

    .prologue
    .line 8661
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 8667
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 8662
    :pswitch_9
    const-string v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    goto :goto_8

    .line 8663
    :pswitch_c
    const-string v0, "SAFE_MEDIA_VOLUME_DISABLED"

    goto :goto_8

    .line 8664
    :pswitch_f
    const-string v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    goto :goto_8

    .line 8665
    :pswitch_12
    const-string v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    goto :goto_8

    .line 8661
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private saveMusicActiveMs()V
    .registers 5

    .prologue
    .line 4513
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x16

    iget v2, p0, mMusicActiveMs:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4514
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2578
    iget-boolean v2, p0, mSystemReady:Z

    if-nez v2, :cond_5

    .line 2588
    :goto_4
    return-void

    .line 2580
    :cond_5
    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2581
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2582
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2584
    .local v0, "ident":J
    :try_start_13
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1e

    .line 2586
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handle"    # Landroid/os/UserHandle;

    .prologue
    .line 2591
    iget-boolean v2, p0, mSystemReady:Z

    if-nez v2, :cond_5

    .line 2598
    :goto_4
    return-void

    .line 2592
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2594
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 2596
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .registers 21
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 7054
    sget-boolean v2, DEBUG_DEVICES:Z

    if-eqz v2, :cond_4d

    .line 7055
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDeviceConnectionIntent(dev:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7060
    :cond_4d
    move-object/from16 v0, p0

    iget-boolean v2, v0, mSystemReady:Z

    if-nez v2, :cond_54

    .line 7126
    :cond_53
    :goto_53
    return-void

    .line 7062
    :cond_54
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 7064
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    move/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7065
    const-string v2, "address"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7066
    const-string/jumbo v2, "portName"

    move-object/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7068
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7070
    const/4 v9, 0x0

    .line 7072
    .local v9, "connType":I
    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_102

    .line 7073
    const/4 v9, 0x1

    .line 7074
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7075
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7090
    :cond_88
    :goto_88
    move-object/from16 v0, p0

    iget-object v15, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v15

    .line 7091
    if-eqz v9, :cond_b4

    .line 7092
    :try_start_8f
    move-object/from16 v0, p0

    iget-object v2, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v14, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 7093
    .local v14, "newConn":I
    if-eqz p2, :cond_13e

    .line 7094
    or-int/2addr v14, v9

    .line 7098
    :goto_98
    move-object/from16 v0, p0

    iget-object v2, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eq v14, v2, :cond_b4

    .line 7099
    move-object/from16 v0, p0

    iget-object v2, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v14, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 7100
    move-object/from16 v0, p0

    iget-object v2, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7104
    .end local v14    # "newConn":I
    :cond_b4
    monitor-exit v15
    :try_end_b5
    .catchall {:try_start_8f .. :try_end_b5} :catchall_143

    .line 7106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 7108
    .local v10, "ident":J
    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_bb
    invoke-static {v12, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_146

    .line 7110
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7113
    const/4 v2, 0x4

    move/from16 v0, p1

    if-eq v0, v2, :cond_cc

    const/16 v2, 0x8

    move/from16 v0, p1

    if-ne v0, v2, :cond_53

    .line 7114
    :cond_cc
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7115
    .local v13, "intentForCA":Landroid/content/Intent;
    invoke-virtual {v13, v12}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 7116
    const/16 v2, 0x20

    invoke-virtual {v13, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7117
    const-string v2, "AudioService"

    const-string/jumbo v3, "send broadcast HEADSET_PLUG to CA "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7118
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 7120
    move-object/from16 v0, p0

    iget v2, v0, mForceSpeaker:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_53

    .line 7121
    move-object/from16 v0, p0

    iget-object v2, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, mForceSpeaker:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_53

    .line 7076
    .end local v10    # "ident":J
    .end local v13    # "intentForCA":Landroid/content/Intent;
    :cond_102
    const/16 v2, 0x8

    move/from16 v0, p1

    if-eq v0, v2, :cond_10e

    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_11d

    .line 7079
    :cond_10e
    const/4 v9, 0x2

    .line 7080
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7081
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_88

    .line 7082
    :cond_11d
    const/16 v2, 0x400

    move/from16 v0, p1

    if-eq v0, v2, :cond_129

    const/high16 v2, 0x40000

    move/from16 v0, p1

    if-ne v0, v2, :cond_134

    .line 7084
    :cond_129
    const/16 v9, 0x8

    .line 7085
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v1}, configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto/16 :goto_88

    .line 7086
    :cond_134
    const/16 v2, 0x4000

    move/from16 v0, p1

    if-ne v0, v2, :cond_88

    .line 7087
    const/16 v9, 0x10

    goto/16 :goto_88

    .line 7096
    .restart local v14    # "newConn":I
    :cond_13e
    xor-int/lit8 v2, v9, -0x1

    and-int/2addr v14, v2

    goto/16 :goto_98

    .line 7104
    .end local v14    # "newConn":I
    :catchall_143
    move-exception v2

    :try_start_144
    monitor-exit v15
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_143

    throw v2

    .line 7110
    .restart local v10    # "ident":J
    :catchall_146
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendMasterMuteUpdate(ZI)V
    .registers 5
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 2666
    iget-object v0, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {p0, p2}, updateFlagsForSystemAudio(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postMasterMuteChanged(I)V

    .line 2667
    invoke-direct {p0, p1}, broadcastMasterMuteStatus(Z)V

    .line 2668
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 15
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 5082
    if-nez p2, :cond_2a

    .line 5083
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5087
    :cond_5
    sget-object v3, mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v3

    .line 5088
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v6, p6

    add-long v0, v4, v6

    .line 5089
    .local v0, "time":J
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 5090
    const/16 v2, 0x64

    if-eq p1, v2, :cond_22

    const/16 v2, 0x65

    if-eq p1, v2, :cond_22

    const/16 v2, 0x66

    if-ne p1, v2, :cond_28

    .line 5093
    :cond_22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 5095
    :cond_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_34

    .line 5096
    .end local v0    # "time":J
    :goto_29
    return-void

    .line 5084
    :cond_2a
    const/4 v2, 0x1

    if-ne p2, v2, :cond_5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_29

    .line 5095
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v2
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2601
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2602
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2604
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 2606
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2608
    return-void

    .line 2606
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendVolumeUpdate(IIII)V
    .registers 9
    .param p1, "streamType"    # I
    .param p2, "oldIndex"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .prologue
    .line 2625
    iget-object v1, p0, mStreamVolumeAlias:[I

    aget p1, v1, p1

    .line 2628
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2c

    if-nez p4, :cond_2c

    if-lez p3, :cond_2c

    invoke-direct {p0}, isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2630
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enforce to FLAG_PLAY_SOUND volume index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    or-int/lit8 p4, p4, 0x4

    .line 2634
    :cond_2c
    const/4 v1, 0x3

    if-ne p1, v1, :cond_33

    .line 2635
    invoke-direct {p0, p4}, updateFlagsForSystemAudio(I)I

    move-result p4

    .line 2637
    :cond_33
    iget-object v1, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, p1, p4}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 2639
    and-int/lit8 v1, p4, 0x20

    if-nez v1, :cond_5d

    .line 2640
    add-int/lit8 v1, p2, 0x5

    div-int/lit8 p2, v1, 0xa

    .line 2641
    add-int/lit8 v1, p3, 0x5

    div-int/lit8 p3, v1, 0xa

    .line 2642
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2643
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2644
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2645
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2646
    invoke-direct {p0, v0}, sendBroadcastToAll(Landroid/content/Intent;)V

    .line 2648
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5d
    return-void
.end method

.method private setAllSoundMute()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 9709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioParam;allsoundmute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mAllSoundMute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9710
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6f

    const/4 v2, 0x2

    iget v3, p0, mAllSoundMute:I

    const-string/jumbo v5, "persist.audio.allsoundmute"

    move v6, v4

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 9712
    return-void
.end method

.method private setDualMicMode(I)V
    .registers 3
    .param p1, "dualmicMode"    # I

    .prologue
    .line 9687
    if-lez p1, :cond_9

    .line 9688
    const-string/jumbo v0, "dualmic_enabled=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9693
    :goto_8
    return-void

    .line 9690
    :cond_9
    const-string/jumbo v0, "dualmic_enabled=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_8
.end method

.method private setFineVolume(I)V
    .registers 13
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x3

    .line 2336
    invoke-direct {p0, v3}, getDeviceForStream(I)I

    move-result v5

    .line 2337
    .local v5, "device":I
    iget-object v0, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 2339
    .local v10, "streamVolume":I
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFineVolume device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", streamVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    add-int/lit8 v0, v10, 0x5

    div-int/lit8 v0, v0, 0xa

    sget-object v1, MAX_STREAM_VOLUME:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_3e

    .line 2342
    iget p1, p0, FINE_VOLUME_MIN:I

    .line 2348
    :cond_3e
    iget-object v7, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v7

    .line 2349
    :try_start_41
    iget-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_8e

    iget-object v0, p0, mStreamVolumeAlias:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-ne v0, v3, :cond_8e

    const v0, 0x2000018c

    and-int/2addr v0, v5

    if-eqz v0, :cond_8e

    iget v0, p0, mSafeMediaVolumeIndex:I

    if-ne v10, v0, :cond_8e

    if-eqz p1, :cond_8e

    .line 2355
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 2356
    .local v9, "pm":Landroid/os/PowerManager;
    invoke-virtual {v9}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_73

    .line 2357
    invoke-direct {p0}, callLcdOn()V

    .line 2358
    invoke-direct {p0}, callVibrateMsg()V

    .line 2360
    :cond_73
    iget-object v0, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2361
    const-string v0, "AudioService"

    const-string/jumbo v1, "setFineVolume mPendingFineVolumeCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    new-instance v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    const/4 v2, 0x3

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    iput-object v0, p0, mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2363
    monitor-exit v7

    .line 2388
    .end local v9    # "pm":Landroid/os/PowerManager;
    :goto_8d
    return-void

    .line 2366
    :cond_8e
    iget-object v0, p0, mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-nez v0, :cond_9a

    iget-object v0, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->isSafeVolumeDialogShowing()Z

    move-result v0

    if-ne v0, v4, :cond_b2

    .line 2368
    :cond_9a
    const-string v0, "AudioService"

    const-string/jumbo v1, "setFineVolume mPendingFineVolumeCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    new-instance v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    const/4 v2, 0x3

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    iput-object v0, p0, mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2370
    monitor-exit v7

    goto :goto_8d

    .line 2372
    :catchall_af
    move-exception v0

    monitor-exit v7
    :try_end_b1
    .catchall {:try_start_41 .. :try_end_b1} :catchall_af

    throw v0

    :cond_b2
    :try_start_b2
    monitor-exit v7
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_af

    .line 2374
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFineVolume device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fineVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    iget-object v0, p0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-virtual {v0, p1, v5}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    .line 2376
    iget-object v2, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x70

    const/4 v4, 0x2

    iget-object v7, p0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    move v8, v6

    invoke-static/range {v2 .. v8}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2384
    iget-object v1, p0, mFineVolumeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2385
    :try_start_e9
    iget-object v0, p0, mFineVolumeLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2386
    const/4 v0, 0x0

    iput-boolean v0, p0, mFineVolumeNeedWait:Z

    .line 2387
    monitor-exit v1

    goto :goto_8d

    :catchall_f3
    move-exception v0

    monitor-exit v1
    :try_end_f5
    .catchall {:try_start_e9 .. :try_end_f5} :catchall_f3

    throw v0
.end method

.method private setForceUseInt_SyncDevices(II)V
    .registers 5
    .param p1, "usage"    # I
    .param p2, "config"    # I

    .prologue
    .line 8237
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 8245
    iget-boolean v0, p0, mSystemReady:Z

    if-eqz v0, :cond_c

    .line 8246
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, getDevicesForStream(IZ)I

    .line 8247
    :cond_c
    return-void
.end method

.method private setGlobalK2HD(I)V
    .registers 3
    .param p1, "isEnable"    # I

    .prologue
    .line 9667
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 9668
    const-string/jumbo v0, "k2hd=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9671
    :goto_9
    return-void

    .line 9670
    :cond_a
    const-string/jumbo v0, "k2hd=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_9
.end method

.method private setGlobalMySound(I)V
    .registers 9
    .param p1, "globalMySound"    # I

    .prologue
    const/4 v6, 0x0

    .line 9647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioEffectParam;setGlobalMSEffect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9649
    const-string v2, "0,0,0,0,0,0,0,0,0,0,0,0,0,0"

    .line 9650
    .local v2, "dhaParam":Ljava/lang/String;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hearing_diagnosis"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_79

    .line 9651
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hearing_revision"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 9652
    .local v3, "state":I
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hearing_direction"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 9653
    .local v1, "SelectEar":I
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hearing_parameters"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9654
    .local v0, "Param":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9656
    .end local v0    # "Param":Ljava/lang/String;
    .end local v1    # "SelectEar":I
    .end local v3    # "state":I
    :cond_79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioEffectParam;dha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9657
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setGlobalMySoundGain dha Parameter : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9660
    return-void
.end method

.method private setGlobalSoundAlive(I)V
    .registers 4
    .param p1, "isEnable"    # I

    .prologue
    .line 9663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGlobalSoundAliveEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9664
    return-void
.end method

.method private setGlobalTubeAmp(I)V
    .registers 4
    .param p1, "isEnable"    # I

    .prologue
    .line 9674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGlobalTubeAmpEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9675
    return-void
.end method

.method private setMasterMuteInternal(ZILjava/lang/String;II)V
    .registers 14
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "userId"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x1f4

    const/16 v1, 0xb

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2837
    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_13

    .line 2838
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p5, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p4

    .line 2840
    :cond_13
    iget-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x21

    invoke-virtual {v0, v4, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 2869
    :cond_1d
    :goto_1d
    return-void

    .line 2844
    :cond_1e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p5, v0, :cond_2e

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1d

    .line 2850
    :cond_2e
    invoke-direct {p0}, getCurrentUserId()I

    move-result v0

    if-ne v0, p5, :cond_5d

    .line 2851
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_1d

    .line 2852
    invoke-direct {p0, p1}, setSystemAudioMute(Z)V

    .line 2853
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 2855
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    if-eqz p1, :cond_5b

    :goto_44
    move v4, p5

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2857
    invoke-direct {p0, p1, p2}, sendMasterMuteUpdate(ZI)V

    .line 2859
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2860
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2861
    invoke-direct {p0, v7}, sendBroadcastToAll(Landroid/content/Intent;)V

    goto :goto_1d

    .end local v7    # "intent":Landroid/content/Intent;
    :cond_5b
    move v3, v2

    .line 2855
    goto :goto_44

    .line 2866
    :cond_5d
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    if-eqz p1, :cond_66

    :goto_61
    move v4, p5

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_1d

    :cond_66
    move v3, v2

    goto :goto_61
.end method

.method private setMediaVolumeBackup(III)I
    .registers 16
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x3

    const/4 v5, 0x1

    .line 2269
    invoke-direct {p0, p1}, getDeviceForStream(I)I

    move-result v0

    .line 2270
    .local v0, "device":I
    const/4 v2, 0x0

    .line 2271
    .local v2, "idx":I
    const-string v4, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMediaVolumeBackup() device="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " streamType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", flags="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    if-ne p3, v10, :cond_48

    .line 2274
    if-ne p2, v5, :cond_e6

    move v4, v5

    :goto_46
    iput-boolean v4, p0, mIsMediaVolumeBackup:Z

    .line 2276
    :cond_48
    const/4 v1, 0x1

    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4a
    const/16 v4, 0x80

    if-gt v1, v4, :cond_68

    .line 2277
    if-eq v1, v11, :cond_63

    const/4 v4, 0x4

    if-eq v1, v4, :cond_63

    const/16 v4, 0x8

    if-eq v1, v4, :cond_63

    const/16 v4, 0x10

    if-eq v1, v4, :cond_63

    const/16 v4, 0x20

    if-eq v1, v4, :cond_63

    const/16 v4, 0x80

    if-ne v1, v4, :cond_10f

    .line 2283
    :cond_63
    if-ne v0, v1, :cond_e9

    .line 2284
    move v2, v3

    .line 2285
    if-eq p3, v10, :cond_e9

    .line 2302
    :cond_68
    if-eq p3, v10, :cond_12c

    .line 2303
    iget-object v4, p0, mMediaVolumeBackup:[I

    mul-int/lit8 v7, p2, 0xa

    aput v7, v4, v2

    .line 2307
    :goto_70
    const-string v4, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMediaVolumeBackup() device="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", BackupVolIdxs=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mMediaVolumeBackup:[I

    aget v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mMediaVolumeBackup:[I

    aget v5, v7, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mMediaVolumeBackup:[I

    aget v6, v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mMediaVolumeBackup:[I

    aget v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mMediaVolumeBackup:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mMediaVolumeBackup:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    return p2

    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_e6
    move v4, v6

    .line 2274
    goto/16 :goto_46

    .line 2287
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    :cond_e9
    if-ne p3, v10, :cond_10d

    .line 2288
    iget-boolean v4, p0, mIsMediaVolumeBackup:Z

    if-eqz v4, :cond_113

    .line 2289
    iget-object v4, p0, mMediaVolumeBackup:[I

    iget-object v7, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v7, v7, v9

    invoke-virtual {v7, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v7

    aput v7, v4, v3

    .line 2290
    iget-object v4, p0, mMediaVolumeBackup:[I

    aget v4, v4, v3

    if-lez v4, :cond_10d

    .line 2291
    iget-object v4, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v9

    const-string v7, "AudioService"

    invoke-virtual {v4, v5, v1, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 2292
    invoke-static {v9, v5, v1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 2299
    :cond_10d
    :goto_10d
    add-int/lit8 v3, v3, 0x1

    .line 2276
    :cond_10f
    shl-int/lit8 v1, v1, 0x1

    goto/16 :goto_4a

    .line 2295
    :cond_113
    iget-object v4, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v9

    iget-object v7, p0, mMediaVolumeBackup:[I

    aget v7, v7, v3

    const-string v8, "AudioService"

    invoke-virtual {v4, v7, v1, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 2296
    iget-object v4, p0, mMediaVolumeBackup:[I

    aget v4, v4, v3

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    invoke-static {v9, v4, v1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    goto :goto_10d

    .line 2305
    :cond_12c
    iget-boolean v4, p0, mIsMediaVolumeBackup:Z

    if-eqz v4, :cond_139

    iget-object v4, p0, mMediaVolumeBackup:[I

    aget v4, v4, v2

    if-lez v4, :cond_139

    move p2, v5

    :goto_137
    goto/16 :goto_70

    :cond_139
    iget-object v4, p0, mMediaVolumeBackup:[I

    aget v4, v4, v2

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 p2, v4, 0xa

    goto :goto_137
.end method

.method private setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    .registers 23
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "caller"    # Ljava/lang/String;

    .prologue
    .line 3307
    sget-boolean v3, DEBUG_MODE:Z

    if-eqz v3, :cond_4a

    .line 3308
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setModeInt(mode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", caller="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    :goto_3d
    const/4 v14, 0x0

    .line 3313
    .local v14, "newModeOwnerPid":I
    if-nez p2, :cond_78

    .line 3314
    const-string v3, "AudioService"

    const-string/jumbo v4, "setModeInt() called with null binder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v14

    .line 3425
    .end local v14    # "newModeOwnerPid":I
    .local v15, "newModeOwnerPid":I
    :goto_49
    return v15

    .line 3310
    .end local v15    # "newModeOwnerPid":I
    :cond_4a
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setModeInt(mode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 3318
    .restart local v14    # "newModeOwnerPid":I
    :cond_78
    const/4 v11, 0x0

    .line 3319
    .local v11, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 3320
    .local v13, "iter":Ljava/util/Iterator;
    :cond_81
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 3321
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 3322
    .local v10, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v3

    move/from16 v0, p3

    if-ne v3, v0, :cond_81

    .line 3323
    move-object v11, v10

    .line 3325
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    .line 3327
    :try_start_99
    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v11, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_a1
    .catch Ljava/util/NoSuchElementException; {:try_start_99 .. :try_end_a1} :catch_1b0

    .line 3337
    .end local v10    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_a1
    :goto_a1
    const/16 v16, 0x0

    .line 3339
    .local v16, "status":I
    :cond_a3
    if-nez p1, :cond_1ba

    .line 3341
    move-object/from16 v0, p0

    iget-object v3, v0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ee

    .line 3342
    move-object/from16 v0, p0

    iget-object v3, v0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    check-cast v11, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 3343
    .restart local v11    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 3344
    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 3345
    sget-boolean v3, DEBUG_MODE:Z

    if-eqz v3, :cond_ee

    .line 3346
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " using mode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " instead due to death hdlr at pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I
    invoke-static {v11}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->access$1800(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    :cond_ee
    :goto_ee
    move-object/from16 v0, p0

    iget v3, v0, mMode:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_236

    .line 3369
    if-nez p1, :cond_100

    const-string v3, "AudioService"

    const-string/jumbo v4, "setModeInt() called setPhoneState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    :cond_100
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v16

    .line 3371
    if-nez v16, :cond_20f

    .line 3373
    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_1ff

    .line 3374
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, startCPUBoost(Z)V

    .line 3375
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, mCPUBoostForComm:Z

    .line 3381
    :cond_116
    :goto_116
    sget-boolean v3, DEBUG_MODE:Z

    if-eqz v3, :cond_134

    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mode successfully set to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    :cond_134
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mMode:I

    .line 3383
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, mSetModeOndump:I

    .line 3403
    :goto_140
    if-eqz v16, :cond_14c

    move-object/from16 v0, p0

    iget-object v3, v0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 3405
    :cond_14c
    if-nez v16, :cond_1ad

    .line 3406
    if-eqz p1, :cond_162

    .line 3407
    move-object/from16 v0, p0

    iget-object v3, v0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23a

    .line 3408
    const-string v3, "AudioService"

    const-string/jumbo v4, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    :cond_162
    :goto_162
    const/high16 v3, -0x80000000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getActiveStreamType(I)I

    move-result v17

    .line 3414
    .local v17, "streamType":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, getDeviceForStream(I)I

    move-result v6

    .line 3415
    .local v6, "device":I
    move-object/from16 v0, p0

    iget-object v3, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    iget-object v4, v0, mStreamVolumeAlias:[I

    aget v4, v4, v17

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    .line 3416
    .local v5, "index":I
    move-object/from16 v0, p0

    iget-object v3, v0, mStreamVolumeAlias:[I

    aget v4, v3, v17

    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 3418
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v3, v1}, updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 3420
    new-instance v12, Landroid/content/Intent;

    const-string v3, "android.samsung.media.action.AUDIO_MODE"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3421
    .local v12, "intent":Landroid/content/Intent;
    const-string v3, "android.samsung.media.extra.AUDIO_MODE"

    move-object/from16 v0, p0

    iget v4, v0, mMode:I

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3422
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, sendBroadcastToAll(Landroid/content/Intent;)V

    .end local v5    # "index":I
    .end local v6    # "device":I
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v17    # "streamType":I
    :cond_1ad
    move v15, v14

    .line 3425
    .end local v14    # "newModeOwnerPid":I
    .restart local v15    # "newModeOwnerPid":I
    goto/16 :goto_49

    .line 3330
    .end local v15    # "newModeOwnerPid":I
    .end local v16    # "status":I
    .restart local v10    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .restart local v14    # "newModeOwnerPid":I
    :catch_1b0
    move-exception v9

    .line 3331
    .local v9, "e":Ljava/util/NoSuchElementException;
    const-string v3, "AudioService"

    const-string v4, "SetModeDeathHandler not registered to binder"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a1

    .line 3351
    .end local v9    # "e":Ljava/util/NoSuchElementException;
    .end local v10    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .restart local v16    # "status":I
    :cond_1ba
    if-nez v11, :cond_1c7

    .line 3352
    new-instance v11, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .end local v11    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v11, v0, v1, v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V

    .line 3356
    .restart local v11    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_1c7
    const/4 v3, 0x0

    :try_start_1c8
    move-object/from16 v0, p2

    invoke-interface {v0, v11, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1cd
    .catch Landroid/os/RemoteException; {:try_start_1c8 .. :try_end_1cd} :catch_1dc

    .line 3364
    :goto_1cd
    move-object/from16 v0, p0

    iget-object v3, v0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3365
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setMode(I)V

    goto/16 :goto_ee

    .line 3357
    :catch_1dc
    move-exception v9

    .line 3359
    .local v9, "e":Landroid/os/RemoteException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMode() could not link to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " binder death"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cd

    .line 3376
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_1ff
    move-object/from16 v0, p0

    iget-boolean v3, v0, mCPUBoostForComm:Z

    if-eqz v3, :cond_116

    .line 3377
    invoke-direct/range {p0 .. p0}, stopCPUBoost()V

    .line 3378
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, mCPUBoostForComm:Z

    goto/16 :goto_116

    .line 3385
    :cond_20f
    if-eqz v11, :cond_21e

    .line 3386
    move-object/from16 v0, p0

    iget-object v3, v0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3388
    const/4 v3, 0x0

    :try_start_219
    move-object/from16 v0, p2

    invoke-interface {v0, v11, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_21e
    .catch Ljava/util/NoSuchElementException; {:try_start_219 .. :try_end_21e} :catch_22d

    .line 3397
    :cond_21e
    :goto_21e
    sget-boolean v3, DEBUG_MODE:Z

    if-eqz v3, :cond_229

    const-string v3, "AudioService"

    const-string v4, " mode set to MODE_NORMAL after phoneState pb"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    :cond_229
    const/16 p1, 0x0

    goto/16 :goto_140

    .line 3391
    :catch_22d
    move-exception v9

    .line 3392
    .local v9, "e":Ljava/util/NoSuchElementException;
    const-string v3, "AudioService"

    const-string v4, "SetModeDeathHandler not registered to binder"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21e

    .line 3401
    .end local v9    # "e":Ljava/util/NoSuchElementException;
    :cond_236
    const/16 v16, 0x0

    goto/16 :goto_140

    .line 3410
    :cond_23a
    move-object/from16 v0, p0

    iget-object v3, v0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v14

    goto/16 :goto_162
.end method

.method private setMonoMode(I)V
    .registers 4
    .param p1, "monoMode"    # I

    .prologue
    .line 9640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toMono="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9641
    return-void
.end method

.method private setNaturalSoundMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 9698
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNaturalSoundMode() - mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9699
    if-lez p1, :cond_21

    .line 9700
    const-string v0, "bwe=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9704
    :goto_20
    return-void

    .line 9702
    :cond_21
    const-string v0, "bwe=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_20
.end method

.method private setNbQualityMode(I)V
    .registers 3
    .param p1, "nbQualityMode"    # I

    .prologue
    .line 9678
    if-lez p1, :cond_9

    .line 9679
    const-string/jumbo v0, "nb_quality=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9683
    :goto_8
    return-void

    .line 9681
    :cond_9
    const-string/jumbo v0, "nb_quality=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_8
.end method

.method private setOrientationForAudioSystem()V
    .registers 3

    .prologue
    .line 8175
    iget v0, p0, mDeviceOrientation:I

    packed-switch v0, :pswitch_data_2a

    .line 8193
    const-string v0, "AudioService"

    const-string v1, "Unknown orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8195
    :goto_c
    return-void

    .line 8178
    :pswitch_d
    const-string/jumbo v0, "orientation=landscape"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 8182
    :pswitch_14
    const-string/jumbo v0, "orientation=portrait"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 8186
    :pswitch_1b
    const-string/jumbo v0, "orientation=square"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 8190
    :pswitch_22
    const-string/jumbo v0, "orientation=undefined"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 8175
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_22
        :pswitch_14
        :pswitch_d
        :pswitch_1b
    .end packed-switch
.end method

.method private setRingerMode(ILjava/lang/String;Z)V
    .registers 16
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "external"    # Z

    .prologue
    const/4 v2, 0x1

    .line 3028
    iget-boolean v0, p0, mUseFixedVolume:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3068
    :cond_b
    :goto_b
    return-void

    .line 3031
    :cond_c
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2d

    .line 3032
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3034
    :cond_2d
    invoke-direct {p0, p1}, ensureValidRingerMode(I)V

    .line 3035
    if-ne p1, v2, :cond_37

    iget-boolean v0, p0, mHasVibrator:Z

    if-nez v0, :cond_37

    .line 3036
    const/4 p1, 0x0

    .line 3038
    :cond_37
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3040
    .local v10, "identity":J
    :try_start_3b
    iget-object v9, p0, mSettingsLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_86

    .line 3041
    :try_start_3e
    invoke-virtual {p0}, getRingerModeInternal()I

    move-result v4

    .line 3042
    .local v4, "ringerModeInternal":I
    invoke-virtual {p0}, getRingerModeExternal()I

    move-result v1

    .line 3043
    .local v1, "ringerModeExternal":I
    if-eqz p3, :cond_67

    .line 3044
    invoke-direct {p0, p1}, setRingerModeExt(I)V

    .line 3045
    iget-object v0, p0, mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v0, :cond_59

    .line 3046
    iget-object v0, p0, mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v5, p0, mVolumePolicy:Landroid/media/VolumePolicy;

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result p1

    .line 3049
    :cond_59
    if-eq p1, v4, :cond_62

    .line 3050
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, setRingerModeInt(IZ)V

    .line 3051
    invoke-direct {p0, p1, p2}, setRingerModeInt_sub(ILjava/lang/String;)V

    .line 3064
    :cond_62
    :goto_62
    monitor-exit v9
    :try_end_63
    .catchall {:try_start_3e .. :try_end_63} :catchall_83

    .line 3066
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b

    .line 3054
    :cond_67
    if-eq p1, v4, :cond_70

    .line 3055
    const/4 v0, 0x1

    :try_start_6a
    invoke-direct {p0, p1, v0}, setRingerModeInt(IZ)V

    .line 3056
    invoke-direct {p0, p1, p2}, setRingerModeInt_sub(ILjava/lang/String;)V

    .line 3058
    :cond_70
    iget-object v0, p0, mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v0, :cond_7f

    .line 3059
    iget-object v3, p0, mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v8, p0, mVolumePolicy:Landroid/media/VolumePolicy;

    move v5, p1

    move-object v6, p2

    move v7, v1

    invoke-interface/range {v3 .. v8}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result p1

    .line 3062
    :cond_7f
    invoke-direct {p0, p1}, setRingerModeExt(I)V

    goto :goto_62

    .line 3064
    .end local v1    # "ringerModeExternal":I
    .end local v4    # "ringerModeInternal":I
    :catchall_83
    move-exception v0

    monitor-exit v9
    :try_end_85
    .catchall {:try_start_6a .. :try_end_85} :catchall_83

    :try_start_85
    throw v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    .line 3066
    :catchall_86
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private setRingerModeExt(I)V
    .registers 4
    .param p1, "ringerMode"    # I

    .prologue
    .line 3071
    iget-object v1, p0, mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3072
    :try_start_3
    iget v0, p0, mRingerModeExternal:I

    if-ne p1, v0, :cond_9

    monitor-exit v1

    .line 3077
    :goto_8
    return-void

    .line 3073
    :cond_9
    iput p1, p0, mRingerModeExternal:I

    .line 3074
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 3076
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v0, p1}, broadcastRingerMode(Ljava/lang/String;I)V

    goto :goto_8

    .line 3074
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private setRingerModeInt(IZ)V
    .registers 12
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3135
    iget-object v1, p0, mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3136
    :try_start_4
    iget v0, p0, mRingerMode:I

    if-eq v0, p1, :cond_5f

    const/4 v7, 0x1

    .line 3137
    .local v7, "change":Z
    :goto_9
    iget v0, p0, mRingerMode:I

    iput v0, p0, mPrevRingerMode:I

    .line 3138
    iput p1, p0, mRingerMode:I

    .line 3139
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_61

    .line 3141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRingerModeInt is called by pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mRingerMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3142
    .local v8, "msg":Ljava/lang/String;
    const-string v0, "AudioService"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    invoke-direct {p0}, muteRingerModeStreams()V

    .line 3148
    if-eqz p2, :cond_57

    .line 3149
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3152
    :cond_57
    if-eqz v7, :cond_5e

    .line 3154
    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p0, v0, p1}, broadcastRingerMode(Ljava/lang/String;I)V

    .line 3156
    :cond_5e
    return-void

    .end local v7    # "change":Z
    .end local v8    # "msg":Ljava/lang/String;
    :cond_5f
    move v7, v2

    .line 3136
    goto :goto_9

    .line 3139
    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v0
.end method

.method private setRingerModeInt_sub(ILjava/lang/String;)V
    .registers 11
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 9578
    const-string v0, "com.drivemode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 9579
    .local v7, "skipPlaySound":Z
    packed-switch p1, :pswitch_data_72

    .line 9596
    :cond_9
    :goto_9
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6f

    const/4 v2, 0x2

    const/4 v4, 0x0

    const-string/jumbo v5, "persist.audio.ringermode"

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 9598
    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    if-ne p1, v0, :cond_63

    .line 9599
    :cond_1c
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "persist.sys.silent"

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 9606
    :goto_2a
    return-void

    .line 9581
    :pswitch_2b
    const-string v0, "AudioService"

    const-string v1, "Ringer mode : silent & set driving mode off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9582
    const/4 v0, 0x0

    iput-boolean v0, p0, mSilentModeOff:Z

    goto :goto_9

    .line 9585
    :pswitch_36
    const-string v0, "AudioService"

    const-string v1, "Ringer mode : vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9586
    const/4 v0, 0x0

    iput-boolean v0, p0, mSilentModeOff:Z

    .line 9587
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6b

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_9

    .line 9590
    :pswitch_4d
    const-string v0, "AudioService"

    const-string v1, "Ringer mode : normal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9591
    if-nez v7, :cond_9

    .line 9592
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6a

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_9

    .line 9602
    :cond_63
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6f

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "persist.sys.silent"

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_2a

    .line 9579
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_36
        :pswitch_4d
    .end packed-switch
.end method

.method private setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    .registers 11
    .param p1, "on"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 8312
    iget-object v7, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v7

    .line 8313
    :try_start_5
    iget-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    .line 8315
    if-eqz p1, :cond_2c

    iget-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2c

    .line 8316
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 8317
    invoke-direct {p0, p2}, enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 8334
    :cond_2a
    :goto_2a
    monitor-exit v7

    .line 8335
    return-void

    .line 8318
    :cond_2c
    if-nez p1, :cond_2a

    iget-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2a

    .line 8319
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 8324
    const/4 v0, 0x0

    iput v0, p0, mMusicActiveMs:I

    .line 8325
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0xea60

    move-object v5, p2

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_2a

    .line 8334
    :catchall_4f
    move-exception v0

    monitor-exit v7
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method private setSoundBalance()V
    .registers 6

    .prologue
    .line 9717
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "sound_balance"

    const/16 v3, 0x32

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 9718
    .local v0, "soundBalance":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_balance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 9719
    return-void
.end method

.method private setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 20
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .prologue
    .line 2392
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStreamVolume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "flags:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    iget-boolean v1, p0, mUseFixedVolume:Z

    if-eqz v1, :cond_41

    .line 2523
    :cond_40
    :goto_40
    return-void

    .line 2401
    :cond_41
    const/4 v1, -0x1

    move/from16 v0, p3

    if-eq v0, v1, :cond_4a

    iget-boolean v1, p0, mIsMediaVolumeBackup:Z

    if-eqz v1, :cond_56

    :cond_4a
    invoke-virtual {p0}, isTalkBackEnabled()Z

    move-result v1

    if-nez v1, :cond_56

    .line 2402
    invoke-direct/range {p0 .. p3}, setMediaVolumeBackup(III)I

    move-result p2

    .line 2403
    const/16 p3, 0x0

    .line 2406
    :cond_56
    invoke-direct {p0, p1}, ensureValidStreamType(I)V

    .line 2407
    iget-object v1, p0, mStreamVolumeAlias:[I

    aget v11, v1, p1

    .line 2408
    .local v11, "streamTypeAlias":I
    iget-object v1, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v10, v1, v11

    .line 2411
    .local v10, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-direct {p0}, isFMRadioRecording()Z

    move-result v8

    .line 2412
    .local v8, "isFMRadioRecording":Z
    if-eqz v8, :cond_79

    .line 2413
    const/high16 v1, 0x2000000

    move/from16 v0, p3

    if-eq v0, v1, :cond_40

    const/16 v1, 0x11

    move/from16 v0, p3

    if-eq v0, v1, :cond_40

    if-nez p3, :cond_79

    const/16 v1, 0xa

    if-ne p1, v1, :cond_40

    .line 2420
    :cond_79
    invoke-direct {p0, p1}, getDeviceForStream(I)I

    move-result v6

    .line 2423
    .local v6, "device":I
    iget-object v1, p0, pIdOfsetVolume:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    aput v2, v1, p1

    .line 2424
    iget-object v1, p0, pIdOfsetVolumeIndex:[I

    aput p2, v1, p1

    .line 2427
    const/16 v1, 0xa

    if-ne p1, v1, :cond_93

    invoke-virtual {p0}, isRadioSpeakerOn()Z

    move-result v1

    if-nez v1, :cond_9d

    :cond_93
    const-string v1, "com.sec.android.app.voicenote"

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 2429
    :cond_9d
    const/4 v6, 0x2

    .line 2437
    :cond_9e
    const v1, 0x20000380

    and-int/2addr v1, v6

    if-nez v1, :cond_a8

    and-int/lit8 v1, p3, 0x40

    if-nez v1, :cond_40

    .line 2454
    :cond_a8
    iget-object v12, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v12

    .line 2456
    const/4 v1, 0x0

    :try_start_ac
    iput-object v1, p0, mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2459
    const/4 v1, 0x0

    iput-object v1, p0, mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2461
    invoke-virtual {v10, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v9

    .line 2463
    .local v9, "oldIndex":I
    mul-int/lit8 v1, p2, 0xa

    invoke-direct {p0, v1, p1, v11}, rescaleIndex(III)I

    move-result p2

    .line 2465
    const/4 v1, 0x3

    if-ne v11, v1, :cond_db

    const v1, 0x20000380

    and-int/2addr v1, v6

    if-eqz v1, :cond_db

    and-int/lit8 v1, p3, 0x40

    if-nez v1, :cond_db

    .line 2468
    iget-object v2, p0, mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_cb
    .catchall {:try_start_ac .. :try_end_cb} :catchall_13c

    .line 2469
    :try_start_cb
    iget-object v1, p0, mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_da

    iget-boolean v1, p0, mAvrcpAbsVolSupported:Z

    if-eqz v1, :cond_da

    .line 2470
    iget-object v1, p0, mA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v3, p2, 0xa

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 2472
    :cond_da
    monitor-exit v2
    :try_end_db
    .catchall {:try_start_cb .. :try_end_db} :catchall_139

    .line 2475
    :cond_db
    const/4 v1, 0x3

    if-ne v11, v1, :cond_e7

    .line 2476
    :try_start_de
    invoke-virtual {p0, p1}, getStreamMaxVolume(I)I

    move-result v1

    move/from16 v0, p3

    invoke-direct {p0, v9, p2, v1, v0}, setSystemAudioVolume(IIII)V

    .line 2479
    :cond_e7
    and-int/lit8 p3, p3, -0x21

    .line 2480
    const/4 v1, 0x3

    if-ne v11, v1, :cond_106

    iget v1, p0, mFixedVolumeDevices:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_106

    .line 2482
    or-int/lit8 p3, p3, 0x20

    .line 2485
    if-eqz p2, :cond_106

    .line 2486
    iget-object v1, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_13f

    const v1, 0x2000018c

    and-int/2addr v1, v6

    if-eqz v1, :cond_13f

    .line 2488
    iget p2, p0, mSafeMediaVolumeIndex:I

    .line 2495
    :cond_106
    :goto_106
    const/4 v1, 0x3

    if-ne p1, v1, :cond_10f

    .line 2497
    iget-object v1, p0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v6}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    .line 2500
    :cond_10f
    if-nez v8, :cond_144

    invoke-direct {p0, v11, p2, v6}, checkSafeMediaVolume(III)Z

    move-result v1

    if-nez v1, :cond_144

    .line 2501
    iget-object v1, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2502
    new-instance v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    iput-object v1, p0, mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2514
    :goto_12a
    monitor-exit v12
    :try_end_12b
    .catchall {:try_start_de .. :try_end_12b} :catchall_13c

    .line 2517
    iget-object v2, p0, mFineVolumeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2518
    const/4 v1, 0x1

    :try_start_12f
    iput-boolean v1, p0, mFineVolumeNeedWait:Z

    .line 2519
    monitor-exit v2
    :try_end_132
    .catchall {:try_start_12f .. :try_end_132} :catchall_168

    .line 2522
    move/from16 v0, p3

    invoke-direct {p0, p1, v9, p2, v0}, sendVolumeUpdate(IIII)V

    goto/16 :goto_40

    .line 2472
    :catchall_139
    move-exception v1

    :try_start_13a
    monitor-exit v2
    :try_end_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_139

    :try_start_13b
    throw v1

    .line 2514
    .end local v9    # "oldIndex":I
    :catchall_13c
    move-exception v1

    monitor-exit v12
    :try_end_13e
    .catchall {:try_start_13b .. :try_end_13e} :catchall_13c

    throw v1

    .line 2490
    .restart local v9    # "oldIndex":I
    :cond_13f
    :try_start_13f
    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p2

    goto :goto_106

    .line 2506
    :cond_144
    iget-object v1, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeController;->isSafeVolumeDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_155

    .line 2507
    iget-object v1, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2508
    and-int/lit8 p3, p3, -0x2

    :cond_155
    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p5

    .line 2511
    invoke-direct/range {v2 .. v7}, onSetStreamVolume(IIIILjava/lang/String;)V

    .line 2512
    iget-object v1, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I
    :try_end_166
    .catchall {:try_start_13f .. :try_end_166} :catchall_13c

    move-result p2

    goto :goto_12a

    .line 2519
    :catchall_168
    move-exception v1

    :try_start_169
    monitor-exit v2
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_168

    throw v1
.end method

.method private setStreamVolumeInt(IIIZLjava/lang/String;)V
    .registers 13
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "force"    # Z
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2693
    iget-object v0, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v0, p1

    .line 2695
    .local v5, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-virtual {v5, p2, p3, p5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz p4, :cond_16

    .line 2698
    :cond_d
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v3, p3

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2706
    :cond_16
    return-void
.end method

.method private setSystemAudioMute(Z)V
    .registers 7
    .param p1, "state"    # Z

    .prologue
    .line 2709
    iget-object v2, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_8

    iget-object v2, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_9

    .line 2721
    :cond_8
    :goto_8
    return-void

    .line 2710
    :cond_9
    iget-object v3, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 2711
    :try_start_c
    iget-boolean v2, p0, mHdmiSystemAudioSupported:Z

    if-nez v2, :cond_15

    monitor-exit v3

    goto :goto_8

    .line 2720
    :catchall_12
    move-exception v2

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_12

    throw v2

    .line 2712
    :cond_15
    :try_start_15
    iget-object v4, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_12

    .line 2713
    :try_start_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_2c

    move-result-wide v0

    .line 2715
    .local v0, "token":J
    :try_start_1c
    iget-object v2, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v2, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_27

    .line 2717
    :try_start_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2719
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_2c

    .line 2720
    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_12

    goto :goto_8

    .line 2717
    :catchall_27
    move-exception v2

    :try_start_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2719
    .end local v0    # "token":J
    :catchall_2c
    move-exception v2

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_12
.end method

.method private setSystemAudioVolume(IIII)V
    .registers 10
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "maxVolume"    # I
    .param p4, "flags"    # I

    .prologue
    .line 2201
    iget-object v2, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_e

    iget-object v2, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v2, :cond_e

    if-eq p1, p2, :cond_e

    and-int/lit16 v2, p4, 0x100

    if-eqz v2, :cond_f

    .line 2219
    :cond_e
    :goto_e
    return-void

    .line 2208
    :cond_f
    iget-object v3, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 2209
    :try_start_12
    iget-boolean v2, p0, mHdmiSystemAudioSupported:Z

    if-nez v2, :cond_1b

    monitor-exit v3

    goto :goto_e

    .line 2218
    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_18

    throw v2

    .line 2210
    :cond_1b
    :try_start_1b
    iget-object v4, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    .line 2211
    :try_start_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_32

    move-result-wide v0

    .line 2213
    .local v0, "token":J
    :try_start_22
    iget-object v2, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v2, p1, p2, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2d

    .line 2215
    :try_start_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2217
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_32

    .line 2218
    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_18

    goto :goto_e

    .line 2215
    :catchall_2d
    move-exception v2

    :try_start_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2217
    .end local v0    # "token":J
    :catchall_32
    move-exception v2

    monitor-exit v4
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    :try_start_34
    throw v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_18
.end method

.method private setWiredDeviceConnectionStateBeforeBoot()V
    .registers 12

    .prologue
    const/4 v2, 0x1

    .line 9168
    const/4 v7, -0x1

    .line 9169
    .local v7, "device_id":I
    const/4 v8, 0x0

    .line 9171
    .local v8, "file_reader":Ljava/io/FileReader;
    :try_start_3
    new-instance v9, Ljava/io/FileReader;

    const-string v0, "/sys/class/switch/h2w/state"

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_3a
    .catchall {:try_start_3 .. :try_end_a} :catchall_42

    .line 9172
    .end local v8    # "file_reader":Ljava/io/FileReader;
    .local v9, "file_reader":Ljava/io/FileReader;
    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileReader;->ready()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 9173
    const/16 v0, 0x400

    new-array v6, v0, [C

    .line 9174
    .local v6, "buffer":[C
    const/4 v0, 0x0

    const/16 v1, 0x400

    invoke-virtual {v9, v6, v0, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v10

    .line 9175
    .local v10, "len":I
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2c} :catch_6c
    .catchall {:try_start_a .. :try_end_2c} :catchall_69

    move-result v7

    .line 9180
    .end local v6    # "buffer":[C
    .end local v10    # "len":I
    :cond_2d
    if-eqz v9, :cond_6f

    .line 9181
    :try_start_2f
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_37

    .line 9182
    const/4 v8, 0x0

    .line 9187
    .end local v9    # "file_reader":Ljava/io/FileReader;
    .restart local v8    # "file_reader":Ljava/io/FileReader;
    :cond_33
    :goto_33
    packed-switch v7, :pswitch_data_72

    .line 9199
    :goto_36
    return-void

    .line 9184
    .end local v8    # "file_reader":Ljava/io/FileReader;
    .restart local v9    # "file_reader":Ljava/io/FileReader;
    :catch_37
    move-exception v0

    move-object v8, v9

    .line 9186
    .end local v9    # "file_reader":Ljava/io/FileReader;
    .restart local v8    # "file_reader":Ljava/io/FileReader;
    goto :goto_33

    .line 9177
    :catch_3a
    move-exception v0

    .line 9180
    :goto_3b
    if-eqz v8, :cond_33

    .line 9181
    :try_start_3d
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_65

    .line 9182
    const/4 v8, 0x0

    goto :goto_33

    .line 9179
    :catchall_42
    move-exception v0

    .line 9180
    :goto_43
    if-eqz v8, :cond_49

    .line 9181
    :try_start_45
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_67

    .line 9182
    const/4 v8, 0x0

    .line 9185
    :cond_49
    :goto_49
    throw v0

    .line 9189
    :pswitch_4a
    const/4 v1, 0x4

    const-string v3, ""

    const-string/jumbo v4, "h2w-before-boot-completed"

    const-string v5, "AudioService"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 9193
    :pswitch_57
    const/16 v1, 0x8

    const-string v3, ""

    const-string/jumbo v4, "h2w-before-boot-completed"

    const-string v5, "AudioService"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 9184
    :catch_65
    move-exception v0

    goto :goto_33

    :catch_67
    move-exception v1

    goto :goto_49

    .line 9179
    .end local v8    # "file_reader":Ljava/io/FileReader;
    .restart local v9    # "file_reader":Ljava/io/FileReader;
    :catchall_69
    move-exception v0

    move-object v8, v9

    .end local v9    # "file_reader":Ljava/io/FileReader;
    .restart local v8    # "file_reader":Ljava/io/FileReader;
    goto :goto_43

    .line 9177
    .end local v8    # "file_reader":Ljava/io/FileReader;
    .restart local v9    # "file_reader":Ljava/io/FileReader;
    :catch_6c
    move-exception v0

    move-object v8, v9

    .end local v9    # "file_reader":Ljava/io/FileReader;
    .restart local v8    # "file_reader":Ljava/io/FileReader;
    goto :goto_3b

    .end local v8    # "file_reader":Ljava/io/FileReader;
    .restart local v9    # "file_reader":Ljava/io/FileReader;
    :cond_6f
    move-object v8, v9

    .end local v9    # "file_reader":Ljava/io/FileReader;
    .restart local v8    # "file_reader":Ljava/io/FileReader;
    goto :goto_33

    .line 9187
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_57
    .end packed-switch
.end method

.method private setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    .line 5207
    iget-object v8, p0, mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 5208
    const/4 v7, 0x0

    .line 5209
    .local v7, "delay":I
    :try_start_4
    iget-object v9, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x64

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 5215
    monitor-exit v8

    .line 5216
    return-void

    .line 5215
    :catchall_23
    move-exception v0

    monitor-exit v8
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v0
.end method

.method private startCPUBoost(Z)V
    .registers 4
    .param p1, "voipon"    # Z

    .prologue
    .line 9388
    invoke-direct {p0, p1}, initCPUBoost(Z)V

    .line 9389
    iget-object v0, p0, mCpuHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_c

    .line 9390
    iget-object v0, p0, mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 9391
    :cond_c
    const-string v0, "AudioService"

    const-string v1, "acquire() cpu min lock for audio "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9392
    return-void
.end method

.method private stopCPUBoost()V
    .registers 3

    .prologue
    .line 9395
    iget-object v0, p0, mCpuHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_14

    .line 9396
    iget-object v0, p0, mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 9397
    const/4 v0, 0x0

    iput-object v0, p0, mCpuHelper:Landroid/os/DVFSHelper;

    .line 9398
    const-string v0, "AudioService"

    const-string/jumbo v1, "release() cpu min lock for audio "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9400
    :cond_14
    return-void
.end method

.method private updateFlagsForSystemAudio(I)I
    .registers 4
    .param p1, "flags"    # I

    .prologue
    .line 2653
    iget-object v0, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_12

    .line 2654
    iget-object v1, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v1

    .line 2655
    :try_start_7
    iget-boolean v0, p0, mHdmiSystemAudioSupported:Z

    if-eqz v0, :cond_11

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_11

    .line 2657
    and-int/lit8 p1, p1, -0x2

    .line 2659
    :cond_11
    monitor-exit v1

    .line 2661
    :cond_12
    return p1

    .line 2659
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private updateRingerModeAffectedStreams()Z
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x2

    .line 4706
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    const/16 v3, 0xa6

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 4712
    .local v0, "ringerModeAffectedStreams":I
    iget v1, p0, mPlatformType:I

    if-ne v1, v5, :cond_3a

    .line 4713
    const/4 v0, 0x0

    .line 4731
    :goto_12
    iget-object v2, p0, mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v2

    .line 4732
    :try_start_15
    iget-object v1, p0, mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 4733
    and-int/lit16 v0, v0, -0x81

    .line 4737
    :goto_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_5a

    .line 4738
    iget-object v1, p0, mStreamVolumeAlias:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    if-ne v1, v5, :cond_5d

    .line 4739
    or-int/lit16 v0, v0, 0x100

    .line 4744
    :goto_2a
    iget v1, p0, mRingerModeAffectedStreams:I

    if-eq v0, v1, :cond_60

    .line 4745
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4749
    iput v0, p0, mRingerModeAffectedStreams:I

    .line 4750
    const/4 v1, 0x1

    .line 4752
    :goto_39
    return v1

    .line 4715
    :cond_3a
    iget-object v1, p0, mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v1, :cond_44

    .line 4716
    iget-object v1, p0, mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-interface {v1, v0}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->getRingerModeAffectedStreams(I)I

    move-result v0

    .line 4720
    :cond_44
    iget-boolean v1, p0, mIsDefaultStreamNotification:Z

    if-eqz v1, :cond_4b

    .line 4721
    and-int/lit8 v0, v0, -0x9

    goto :goto_12

    .line 4723
    :cond_4b
    invoke-direct {p0}, isPlatformVoice()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 4724
    and-int/lit8 v0, v0, -0x9

    goto :goto_12

    .line 4726
    :cond_54
    or-int/lit8 v0, v0, 0x8

    goto :goto_12

    .line 4735
    :cond_57
    or-int/lit16 v0, v0, 0x80

    goto :goto_1f

    .line 4737
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1

    .line 4741
    :cond_5d
    and-int/lit16 v0, v0, -0x101

    goto :goto_2a

    .line 4752
    :cond_60
    const/4 v1, 0x0

    goto :goto_39
.end method

.method private updateStreamVolumeAlias(ZLjava/lang/String;)V
    .registers 11
    .param p1, "updateVolumes"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 1534
    iget v0, p0, mPlatformType:I

    packed-switch v0, :pswitch_data_6a

    .line 1544
    iget-object v0, p0, STREAM_VOLUME_ALIAS_DEFAULT:[I

    iput-object v0, p0, mStreamVolumeAlias:[I

    .line 1549
    iget-boolean v0, p0, mIsDefaultStreamNotification:Z

    if-eqz v0, :cond_4c

    .line 1550
    const/4 v7, 0x5

    .line 1557
    .local v7, "dtmfStreamAlias":I
    :goto_12
    invoke-direct {p0}, isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1558
    iput v3, p0, mRingerModeAffectedStreams:I

    .line 1569
    :goto_1a
    iget-object v0, p0, mStreamVolumeAlias:[I

    aput v7, v0, v5

    .line 1570
    if-eqz p1, :cond_3f

    .line 1571
    iget-object v0, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    iget-object v1, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1574
    invoke-virtual {p0}, getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0, v3}, setRingerModeInt(IZ)V

    .line 1575
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xa

    iget-object v4, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v4, v5

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1582
    :cond_3f
    return-void

    .line 1536
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_40
    iget-object v0, p0, STREAM_VOLUME_ALIAS_VOICE:[I

    iput-object v0, p0, mStreamVolumeAlias:[I

    .line 1537
    const/4 v7, 0x2

    .line 1538
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_12

    .line 1540
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_46
    iget-object v0, p0, STREAM_VOLUME_ALIAS_TELEVISION:[I

    iput-object v0, p0, mStreamVolumeAlias:[I

    .line 1541
    const/4 v7, 0x3

    .line 1542
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_12

    .line 1552
    .end local v7    # "dtmfStreamAlias":I
    :cond_4c
    const/4 v7, 0x3

    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_12

    .line 1560
    :cond_4e
    invoke-direct {p0}, isInCommunication()Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, getMode()I

    move-result v0

    if-ne v0, v2, :cond_62

    .line 1562
    :cond_5a
    const/4 v7, 0x0

    .line 1563
    iget v0, p0, mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, mRingerModeAffectedStreams:I

    goto :goto_1a

    .line 1565
    :cond_62
    iget v0, p0, mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, mRingerModeAffectedStreams:I

    goto :goto_1a

    .line 1534
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_40
        :pswitch_46
    .end packed-switch
.end method

.method private vibrateCall()V
    .registers 7

    .prologue
    .line 9630
    :try_start_0
    invoke-direct {p0}, hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, mVibrator:Landroid/os/SystemVibrator;

    if-eqz v1, :cond_16

    .line 9631
    iget-object v1, p0, mVibrator:Landroid/os/SystemVibrator;

    const v2, 0xc35c

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget-object v5, Landroid/os/Vibrator$MagnitudeTypes;->CallMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/SystemVibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 9636
    :cond_16
    :goto_16
    return-void

    .line 9633
    :catch_17
    move-exception v0

    .line 9634
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AudioService"

    const-string v2, "Vibrator error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private waitForAudioHandlerCreation()V
    .registers 4

    .prologue
    .line 1431
    monitor-enter p0

    .line 1432
    :goto_1
    :try_start_1
    iget-object v1, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v1, :cond_15

    .line 1435
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_12

    goto :goto_1

    .line 1436
    :catch_9
    move-exception v0

    .line 1437
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1440
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_12
    move-exception v1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_12

    .line 1441
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .registers 5
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    .line 8074
    iget-object v0, p0, mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .registers 12
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1889
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1891
    return-void
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    .line 1821
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1823
    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .prologue
    .line 6845
    iget-object v7, p0, mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v7

    .line 6846
    :try_start_3
    iput-boolean p2, p0, mAvrcpAbsVolSupported:Z

    .line 6847
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    iget-object v5, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6850
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object v5, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6856
    monitor-exit v7

    .line 6857
    return-void

    .line 6856
    :catchall_26
    move-exception v0

    monitor-exit v7
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .registers 5
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 5099
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 5101
    const/4 v1, 0x1

    .line 5107
    :goto_b
    return v1

    .line 5103
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5106
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5107
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public clearAllScoClients(IZ)V
    .registers 9
    .param p1, "exceptPid"    # I
    .param p2, "stopSco"    # Z

    .prologue
    .line 4168
    iget-object v5, p0, mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 4169
    const/4 v2, 0x0

    .line 4170
    .local v2, "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4171
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v3, :cond_23

    .line 4172
    iget-object v4, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$ScoClient;

    .line 4173
    .local v0, "cl":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_21

    .line 4174
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$ScoClient;->clearCount(Z)V

    .line 4171
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 4176
    :cond_21
    move-object v2, v0

    goto :goto_1e

    .line 4179
    .end local v0    # "cl":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_23
    iget-object v4, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4180
    if-eqz v2, :cond_2f

    .line 4181
    iget-object v4, p0, mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4183
    :cond_2f
    monitor-exit v5

    .line 4184
    return-void

    .line 4183
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_31
    move-exception v4

    monitor-exit v5
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    throw v4
.end method

.method public disableSafeMediaVolume(Ljava/lang/String;)V
    .registers 11
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 8408
    const-string/jumbo v0, "disable the safe media volume"

    invoke-direct {p0, v0}, enforceVolumeController(Ljava/lang/String;)V

    .line 8409
    iget-object v8, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v8

    .line 8410
    const/4 v0, 0x0

    :try_start_a
    invoke-direct {p0, v0, p1}, setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 8411
    iget-object v0, p0, mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-eqz v0, :cond_47

    .line 8412
    iget-object v0, p0, mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v1, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    iget-object v0, p0, mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v2, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v0, p0, mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v3, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    iget-object v0, p0, mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v4, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, onSetStreamVolume(IIIILjava/lang/String;)V

    .line 8418
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8419
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget-object v1, p0, mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v1, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8420
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    iget-object v1, p0, mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v1, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8421
    invoke-direct {p0, v7}, sendBroadcastToAll(Landroid/content/Intent;)V

    .line 8423
    const/4 v0, 0x0

    iput-object v0, p0, mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 8426
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_47
    iget-object v0, p0, mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-eqz v0, :cond_6b

    .line 8428
    iget-object v0, p0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    iget-object v1, p0, mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v1, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v2, p0, mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v2, v2, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    .line 8429
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x70

    const/4 v2, 0x2

    iget-object v3, p0, mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v3, v3, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    const/4 v4, 0x0

    iget-object v5, p0, mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8436
    const/4 v0, 0x0

    iput-object v0, p0, mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 8439
    :cond_6b
    monitor-exit v8

    .line 8440
    return-void

    .line 8439
    :catchall_6d
    move-exception v0

    monitor-exit v8
    :try_end_6f
    .catchall {:try_start_a .. :try_end_6f} :catchall_6d

    throw v0
.end method

.method public dismissVolumePanel()V
    .registers 2

    .prologue
    .line 9165
    iget-object v0, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    .line 9166
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 8616
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "AudioService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8618
    iget-object v0, p0, mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    .line 8620
    const-string v0, "  mMySoundEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mMySoundEnabled:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8621
    const-string v0, "  mSoundAliveEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mSoundAliveEnabled:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8622
    const-string v0, "  mK2HDEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mK2HDEnabled:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8623
    const-string v0, "  mTubeAmpEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mTubeAmpEnabled:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8624
    const-string v0, "  mAllSoundMute="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mAllSoundMute:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8625
    const-string v0, "  mNbQualityMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mNbQualityMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8626
    const-string v0, "  mDualMicMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mDualMicMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8627
    const-string v0, "  mNaturalSound="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mNaturalSound:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8628
    const-string v0, "  mUhqBtSampleRate="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mUhqBtSampleRate:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8629
    const-string v0, "  mSoundBalance="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mSoundBalance:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8630
    const-string v0, "  isTalkBackEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, isTalkBackEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8631
    const-string v0, "  isFactoryMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, isFactoryMode()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8632
    invoke-direct {p0, p2}, dumpScoClients(Ljava/io/PrintWriter;)V

    .line 8634
    invoke-direct {p0, p2}, dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 8635
    invoke-direct {p0, p2}, dumpRingerMode(Ljava/io/PrintWriter;)V

    .line 8636
    const-string v0, "\nAudio Mode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8637
    const-string v0, "- mMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8638
    const-string v0, "- setMode is called by PID:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mSetModeOndump:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8640
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8641
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8642
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8644
    const-string v0, "\nOther state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8645
    const-string v0, "  mVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8646
    const-string v0, "  mSafeMediaVolumeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8647
    iget-object v0, p0, mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-static {v0}, safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8648
    const-string v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mSafeMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8649
    const-string v0, "  mPendingVolumeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8650
    const-string v0, "  mMusicActiveMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mMusicActiveMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8651
    const-string v0, "  mMcc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mMcc:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8652
    const-string v0, "  mCameraSoundForced="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8653
    const-string v0, "  mHasVibrator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8654
    const-string v0, "  mControllerService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8655
    const-string v0, "  mVolumePolicy="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8657
    invoke-direct {p0, p2}, dumpAudioPolicies(Ljava/io/PrintWriter;)V

    .line 8658
    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .registers 8
    .param p1, "startForcing"    # Z
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    const v4, 0x8000

    const v3, -0x8001

    .line 2795
    if-nez p2, :cond_9

    .line 2831
    :goto_8
    return-void

    .line 2798
    :cond_9
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1b

    .line 2800
    const-string v1, "AudioService"

    const-string v2, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2803
    :cond_1b
    iget-object v2, p0, mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2804
    const/4 v0, 0x0

    .line 2805
    .local v0, "applyRequired":Z
    if-eqz p1, :cond_59

    .line 2806
    :try_start_21
    invoke-direct {p0, p2}, hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 2807
    iget-object v1, p0, mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v3, p0, p2}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2808
    iget v1, p0, mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_40

    .line 2809
    iget v1, p0, mFullVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, mFullVolumeDevices:I

    .line 2810
    iget v1, p0, mFixedVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, mFixedVolumeDevices:I

    .line 2811
    const/4 v0, 0x1

    .line 2813
    :cond_40
    iget v1, p0, mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mRmtSbmxFullVolRefCount:I

    .line 2825
    :cond_46
    :goto_46
    if-eqz v0, :cond_54

    .line 2827
    const/4 v1, 0x3

    invoke-direct {p0, v1}, checkAllFixedVolumeDevices(I)V

    .line 2828
    iget-object v1, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 2830
    :cond_54
    monitor-exit v2

    goto :goto_8

    :catchall_56
    move-exception v1

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_56

    throw v1

    .line 2816
    :cond_59
    :try_start_59
    invoke-direct {p0, p2}, discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget v1, p0, mRmtSbmxFullVolRefCount:I

    if-lez v1, :cond_46

    .line 2817
    iget v1, p0, mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, mRmtSbmxFullVolRefCount:I

    .line 2818
    iget v1, p0, mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_46

    .line 2819
    iget v1, p0, mFullVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, mFullVolumeDevices:I

    .line 2820
    iget v1, p0, mFixedVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, mFixedVolumeDevices:I
    :try_end_77
    .catchall {:try_start_59 .. :try_end_77} :catchall_56

    .line 2821
    const/4 v0, 0x1

    goto :goto_46
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .registers 6
    .param p1, "streamType"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2527
    iget-object v1, p0, mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2528
    :try_start_3
    iput p1, p0, mVolumeControlStream:I

    .line 2529
    iget v0, p0, mVolumeControlStream:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    .line 2530
    iget-object v0, p0, mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-eqz v0, :cond_16

    .line 2531
    iget-object v0, p0, mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    .line 2532
    const/4 v0, 0x0

    iput-object v0, p0, mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 2537
    :cond_16
    :goto_16
    monitor-exit v1

    .line 2538
    return-void

    .line 2535
    :cond_18
    new-instance v0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    goto :goto_16

    .line 2537
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public getActiveStreamType(I)I
    .registers 10
    .param p1, "suggestedStreamType"    # I

    .prologue
    const/4 v2, 0x2

    const/high16 v7, -0x80000000

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v3, 0x3

    .line 4859
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v1

    .line 4860
    .local v1, "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v1, :cond_17

    .line 4861
    invoke-virtual {v1}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;->getVolumeControlStream()I

    move-result v6

    packed-switch v6, :pswitch_data_15a

    .line 4875
    :cond_17
    iget v6, p0, mPlatformType:I

    packed-switch v6, :pswitch_data_166

    .line 4921
    invoke-direct {p0}, isInCommunication()Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 4922
    invoke-static {v5}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v3, :cond_ab

    .line 4924
    sget-boolean v2, DEBUG_VOL:Z

    if-eqz v2, :cond_34

    const-string v2, "AudioService"

    const-string/jumbo v3, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4925
    :cond_34
    const/4 p1, 0x6

    .line 4972
    .end local p1    # "suggestedStreamType":I
    :cond_35
    :goto_35
    return p1

    .line 4863
    .restart local p1    # "suggestedStreamType":I
    :pswitch_36
    const/4 p1, 0x1

    goto :goto_35

    :pswitch_38
    move p1, v2

    .line 4865
    goto :goto_35

    :pswitch_3a
    move p1, v3

    .line 4867
    goto :goto_35

    :pswitch_3c
    move p1, v4

    .line 4869
    goto :goto_35

    .line 4877
    :pswitch_3e
    invoke-direct {p0}, isInCommunication()Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 4878
    invoke-static {v5}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v3, :cond_4c

    .line 4881
    const/4 p1, 0x6

    goto :goto_35

    :cond_4c
    move p1, v5

    .line 4884
    goto :goto_35

    .line 4886
    :cond_4e
    if-ne p1, v7, :cond_93

    .line 4887
    invoke-direct {p0}, getActiveStreams()I

    move-result v0

    .line 4888
    .local v0, "activeStream":I
    and-int/lit16 v6, v0, 0x4208

    if-nez v6, :cond_5e

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 4890
    :cond_5e
    sget-boolean v2, DEBUG_VOL:Z

    if-eqz v2, :cond_6a

    .line 4891
    const-string v2, "AudioService"

    const-string/jumbo v4, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    move p1, v3

    .line 4892
    goto :goto_35

    .line 4893
    :cond_6c
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_72

    .line 4894
    const/4 p1, 0x4

    goto :goto_35

    .line 4895
    :cond_72
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_78

    move p1, v4

    .line 4897
    goto :goto_35

    .line 4898
    :cond_78
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_7e

    move p1, v5

    .line 4899
    goto :goto_35

    .line 4900
    :cond_7e
    and-int/lit16 v3, v0, 0x400

    if-eqz v3, :cond_85

    .line 4902
    const/16 p1, 0xa

    goto :goto_35

    .line 4904
    :cond_85
    sget-boolean v3, DEBUG_VOL:Z

    if-eqz v3, :cond_91

    .line 4905
    const-string v3, "AudioService"

    const-string/jumbo v4, "getActiveStreamType: Forcing STREAM_RING b/c default"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    move p1, v2

    .line 4906
    goto :goto_35

    .line 4908
    .end local v0    # "activeStream":I
    :cond_93
    invoke-direct {p0, v5}, isAfMusicActiveRecently(I)Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 4909
    sget-boolean v2, DEBUG_VOL:Z

    if-eqz v2, :cond_a5

    .line 4910
    const-string v2, "AudioService"

    const-string/jumbo v4, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    move p1, v3

    .line 4911
    goto :goto_35

    .line 4915
    :pswitch_a7
    if-ne p1, v7, :cond_13b

    move p1, v3

    .line 4917
    goto :goto_35

    .line 4927
    :cond_ab
    sget-boolean v2, DEBUG_VOL:Z

    if-eqz v2, :cond_b7

    const-string v2, "AudioService"

    const-string/jumbo v3, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    move p1, v5

    .line 4928
    goto/16 :goto_35

    .line 4930
    :cond_ba
    sget v6, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v4, v6}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    if-nez v6, :cond_ca

    sget v6, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v2, v6}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_dd

    :cond_ca
    iget-boolean v2, p0, mIsPlaySilentModeOff:Z

    if-nez v2, :cond_dd

    .line 4935
    sget-boolean v2, DEBUG_VOL:Z

    if-eqz v2, :cond_da

    const-string v2, "AudioService"

    const-string/jumbo v3, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_da
    move p1, v4

    .line 4936
    goto/16 :goto_35

    .line 4937
    :cond_dd
    if-ne p1, v7, :cond_13b

    .line 4938
    invoke-direct {p0}, getActiveStreams()I

    move-result v0

    .line 4939
    .restart local v0    # "activeStream":I
    and-int/lit16 v2, v0, 0x4208

    if-nez v2, :cond_ed

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 4941
    :cond_ed
    sget-boolean v2, DEBUG_VOL:Z

    if-eqz v2, :cond_f9

    const-string v2, "AudioService"

    const-string/jumbo v4, "getActiveStreamType: forcing STREAM_MUSIC"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f9
    move p1, v3

    .line 4942
    goto/16 :goto_35

    .line 4943
    :cond_fc
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_103

    .line 4944
    const/4 p1, 0x4

    goto/16 :goto_35

    .line 4945
    :cond_103
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_10a

    move p1, v4

    .line 4947
    goto/16 :goto_35

    .line 4948
    :cond_10a
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_111

    move p1, v5

    .line 4949
    goto/16 :goto_35

    .line 4950
    :cond_111
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_119

    .line 4952
    const/16 p1, 0xa

    goto/16 :goto_35

    .line 4959
    :cond_119
    iget-boolean v2, p0, mIsDefaultStreamNotification:Z

    if-eqz v2, :cond_12c

    .line 4960
    sget-boolean v2, DEBUG_VOL:Z

    if-eqz v2, :cond_129

    const-string v2, "AudioService"

    const-string/jumbo v3, "getActiveStreamType: using STREAM_NOTIFICATION as default"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_129
    move p1, v4

    .line 4961
    goto/16 :goto_35

    .line 4963
    :cond_12c
    sget-boolean v2, DEBUG_VOL:Z

    if-eqz v2, :cond_138

    const-string v2, "AudioService"

    const-string/jumbo v4, "getActiveStreamType: using STREAM_MUSIC as default"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_138
    move p1, v3

    .line 4964
    goto/16 :goto_35

    .line 4970
    .end local v0    # "activeStream":I
    :cond_13b
    sget-boolean v2, DEBUG_VOL:Z

    if-eqz v2, :cond_35

    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 4861
    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_36
        :pswitch_38
        :pswitch_3a
        :pswitch_3c
    .end packed-switch

    .line 4875
    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_a7
    .end packed-switch
.end method

.method public getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    .line 9240
    const/4 v1, 0x0

    .line 9242
    .local v1, "result":Ljava/lang/String;
    const-string v2, "SplitSound"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 9243
    iget-boolean v2, p0, mSplitSound:Z

    if-eqz v2, :cond_12

    .line 9244
    const-string/jumbo v1, "true"

    .line 9276
    :cond_11
    :goto_11
    return-object v1

    .line 9246
    :cond_12
    const-string/jumbo v1, "false"

    goto :goto_11

    .line 9248
    :cond_16
    const-string v2, "HMTstate"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 9249
    iget-boolean v2, p0, mHMTstate:Z

    if-eqz v2, :cond_26

    .line 9250
    const-string/jumbo v1, "true"

    goto :goto_11

    .line 9252
    :cond_26
    const-string/jumbo v1, "false"

    goto :goto_11

    .line 9254
    :cond_2a
    const-string v2, "SafeMediaVolumeDevice"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 9255
    invoke-direct {p0, v3}, getDeviceForStream(I)I

    move-result v0

    .line 9256
    .local v0, "device":I
    const v2, 0x2000018c

    and-int/2addr v2, v0

    if-eqz v2, :cond_40

    .line 9257
    const-string/jumbo v1, "true"

    goto :goto_11

    .line 9259
    :cond_40
    const-string/jumbo v1, "false"

    goto :goto_11

    .line 9263
    .end local v0    # "device":I
    :cond_44
    const-string/jumbo v2, "fine_volume"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 9264
    invoke-direct {p0}, getFineVolume()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 9268
    :cond_52
    const-string v2, "active_addr"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 9269
    invoke-direct {p0, v3}, getDeviceForStream(I)I

    move-result v2

    invoke-direct {p0, v2}, getAddressForDevice(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 9271
    :cond_63
    const-string/jumbo v2, "device_mask_QSP"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 9272
    invoke-direct {p0}, getAvailableDeviceMaskForQuickSoundPath()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11
.end method

.method public getCurrentAudioFocus()I
    .registers 2

    .prologue
    .line 8082
    iget-object v0, p0, mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getCurrentAudioFocusPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8092
    iget-object v0, p0, mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .registers 4
    .param p1, "streamType"    # I

    .prologue
    .line 2919
    invoke-direct {p0, p1}, ensureValidStreamType(I)V

    .line 2920
    invoke-direct {p0, p1}, getDeviceForStream(I)I

    move-result v0

    .line 2921
    .local v0, "device":I
    iget-object v1, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 3430
    iget v0, p0, mMode:I

    return v0
.end method

.method public getRingerModeExternal()I
    .registers 3

    .prologue
    .line 2995
    iget-object v1, p0, mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2996
    :try_start_3
    iget v0, p0, mRingerModeExternal:I

    monitor-exit v1

    return v0

    .line 2997
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getRingerModeInternal()I
    .registers 3

    .prologue
    .line 3002
    iget-object v1, p0, mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3003
    :try_start_3
    iget v0, p0, mRingerMode:I

    monitor-exit v1

    return v0

    .line 3004
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .registers 2

    .prologue
    .line 8257
    iget-object v0, p0, mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 2907
    invoke-direct {p0, p1}, ensureValidStreamType(I)V

    .line 2908
    iget-object v0, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamMinVolume(I)I
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 2913
    invoke-direct {p0, p1}, ensureValidStreamType(I)V

    .line 2914
    iget-object v0, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .registers 8
    .param p1, "streamType"    # I

    .prologue
    .line 2883
    invoke-direct {p0, p1}, ensureValidStreamType(I)V

    .line 2884
    invoke-direct {p0, p1}, getDeviceForStream(I)I

    move-result v0

    .line 2885
    .local v0, "device":I
    const-class v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v3

    .line 2886
    :try_start_a
    iget-object v2, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 2887
    .local v1, "index":I
    const-string v2, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStreamVolume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    iget-object v2, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 2890
    const/4 v1, 0x0

    .line 2893
    :cond_40
    const/16 v2, 0xa

    if-ne p1, v2, :cond_4b

    invoke-virtual {p0}, isRadioSpeakerOn()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 2894
    const/4 v0, 0x2

    .line 2897
    :cond_4b
    if-eqz v1, :cond_61

    iget-object v2, p0, mStreamVolumeAlias:[I

    aget v2, v2, p1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_61

    iget v2, p0, mFixedVolumeDevices:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_61

    .line 2899
    iget-object v2, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    .line 2901
    :cond_61
    add-int/lit8 v2, v1, 0x5

    div-int/lit8 v2, v2, 0xa

    monitor-exit v3

    return v2

    .line 2902
    .end local v1    # "index":I
    :catchall_67
    move-exception v2

    monitor-exit v3
    :try_end_69
    .catchall {:try_start_a .. :try_end_69} :catchall_67

    throw v2
.end method

.method public getTogether()Z
    .registers 2

    .prologue
    .line 6864
    iget-boolean v0, p0, mIsTogether:Z

    return v0
.end method

.method public getUiSoundsStreamType()I
    .registers 5

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x3

    .line 2930
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 2931
    .local v0, "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v0, :cond_13

    .line 2932
    invoke-virtual {v0}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;->getVolumeControlStream()I

    move-result v3

    packed-switch v3, :pswitch_data_2c

    .line 2946
    :cond_13
    :pswitch_13
    iget-boolean v3, p0, mIsDefaultStreamNotification:Z

    if-eqz v3, :cond_1a

    .line 2954
    :goto_17
    :pswitch_17
    return v1

    .line 2934
    :pswitch_18
    const/4 v1, 0x1

    goto :goto_17

    .line 2949
    :cond_1a
    invoke-direct {p0}, isPlatformVoice()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2950
    const/4 v1, 0x2

    goto :goto_17

    .line 2951
    :cond_22
    invoke-direct {p0}, isPlatformTelevision()Z

    move-result v1

    if-eqz v1, :cond_2a

    move v1, v2

    .line 2952
    goto :goto_17

    :cond_2a
    move v1, v2

    .line 2954
    goto :goto_17

    .line 2932
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_13
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method

.method public getVibrateSetting(I)I
    .registers 4
    .param p1, "vibrateType"    # I

    .prologue
    .line 3181
    iget-boolean v0, p0, mHasVibrator:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 3182
    :goto_5
    return v0

    :cond_6
    iget v0, p0, mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    goto :goto_5
.end method

.method public isBluetoothA2dpOn()Z
    .registers 3

    .prologue
    .line 3890
    iget-object v1, p0, mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3891
    :try_start_3
    iget-boolean v0, p0, mBluetoothA2dpEnabled:Z

    monitor-exit v1

    return v0

    .line 3892
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isBluetoothScoOn()Z
    .registers 3

    .prologue
    .line 3865
    iget v0, p0, mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isCameraSoundForced()Z
    .registers 3

    .prologue
    .line 8559
    iget-object v1, p0, mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1

    .line 8560
    :try_start_3
    iget-object v0, p0, mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 8561
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public isFMPlayerActive()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3788
    :try_start_2
    const-string/jumbo v4, "persist.audio.isfmactive"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3789
    .local v1, "fmPlayer":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_12

    move-result v4

    if-ne v4, v2, :cond_10

    .line 3795
    .end local v1    # "fmPlayer":Ljava/lang/String;
    :goto_f
    return v2

    .restart local v1    # "fmPlayer":Ljava/lang/String;
    :cond_10
    move v2, v3

    .line 3792
    goto :goto_f

    .line 3794
    .end local v1    # "fmPlayer":Ljava/lang/String;
    :catch_12
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 3795
    goto :goto_f
.end method

.method public isForceSpeakerOn()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3742
    iget v1, p0, mForceSpeaker:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isHdmiSystemAudioSupported()Z
    .registers 2

    .prologue
    .line 8503
    iget-boolean v0, p0, mHdmiSystemAudioSupported:Z

    return v0
.end method

.method public isMasterMute()Z
    .registers 2

    .prologue
    .line 2873
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isMediaSilentMode()Z
    .registers 4

    .prologue
    .line 3218
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMediaSilentMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mMediaSilentMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    iget-boolean v0, p0, mMediaSilentMode:Z

    return v0
.end method

.method public isRadioSpeakerOn()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3777
    iget v1, p0, mForcedUseForFMRadio:I

    if-ne v1, v0, :cond_6

    .line 3780
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSpeakerphoneOn()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3731
    iget v1, p0, mForcedUseForComm:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isStreamAffectedByMute(I)Z
    .registers 5
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 4757
    iget v1, p0, mMuteAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .registers 5
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 4698
    iget v1, p0, mRingerModeAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isStreamMute(I)Z
    .registers 4
    .param p1, "streamType"    # I

    .prologue
    .line 2725
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_8

    .line 2726
    invoke-virtual {p0, p1}, getActiveStreamType(I)I

    move-result p1

    .line 2728
    :cond_8
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 2729
    :try_start_b
    iget-object v0, p0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2730
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v0
.end method

.method public isTalkBackEnabled()Z
    .registers 6

    .prologue
    .line 9563
    const/4 v1, 0x0

    .line 9564
    .local v1, "talkbackEnabled":Z
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enabled_accessibility_services"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 9566
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_22

    .line 9569
    const-string v2, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_21
    const/4 v1, 0x1

    .line 9572
    :cond_22
    :goto_22
    return v1

    .line 9569
    :cond_23
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public isValidRingerMode(I)Z
    .registers 3
    .param p1, "ringerMode"    # I

    .prologue
    .line 3015
    if-ltz p1, :cond_7

    const/4 v0, 0x2

    if-gt p1, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public loadSoundEffects()Z
    .registers 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 3563
    const/4 v7, 0x3

    .line 3564
    .local v7, "attempts":I
    new-instance v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    invoke-direct {v5, p0}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>(Lcom/android/server/audio/AudioService;)V

    .line 3566
    .local v5, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v5

    .line 3567
    :try_start_9
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_36

    move v8, v7

    .line 3568
    .end local v7    # "attempts":I
    .local v8, "attempts":I
    :goto_14
    :try_start_14
    iget v0, v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_3b

    if-ne v0, v10, :cond_2e

    add-int/lit8 v7, v8, -0x1

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    if-lez v8, :cond_2f

    .line 3570
    const-wide/16 v0, 0x1388

    :try_start_1e
    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_23
    .catchall {:try_start_1e .. :try_end_21} :catchall_36

    move v8, v7

    .line 3573
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_14

    .line 3571
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :catch_23
    move-exception v9

    .line 3572
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_24
    const-string v0, "AudioService"

    const-string/jumbo v1, "loadSoundEffects Interrupted while waiting sound pool loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 3573
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_14

    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_2e
    move v7, v8

    .line 3575
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :cond_2f
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_36

    .line 3576
    iget v0, v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    if-nez v0, :cond_39

    move v0, v10

    :goto_35
    return v0

    .line 3575
    :catchall_36
    move-exception v0

    :goto_37
    :try_start_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0

    :cond_39
    move v0, v11

    .line 3576
    goto :goto_35

    .line 3575
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    :catchall_3b
    move-exception v0

    move v7, v8

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    goto :goto_37
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .registers 6
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .prologue
    .line 8720
    const-string/jumbo v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, enforceVolumeController(Ljava/lang/String;)V

    .line 8723
    iget-object v0, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 8729
    :cond_e
    :goto_e
    return-void

    .line 8727
    :cond_f
    iget-object v0, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeController;->setVisible(Z)V

    .line 8728
    sget-boolean v0, DEBUG_VOL:Z

    if-eqz v0, :cond_e

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method onIndicateSystemReady()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 1245
    invoke-static {}, Landroid/media/AudioSystem;->systemReady()I

    move-result v0

    if-nez v0, :cond_8

    .line 1255
    :goto_7
    return-void

    .line 1248
    :cond_8
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x1a

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_7
.end method

.method public onMediaServerDied()V
    .registers 19

    .prologue
    .line 1258
    move-object/from16 v0, p0

    iget-boolean v1, v0, mSystemReady:Z

    if-eqz v1, :cond_c

    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v1

    if-eqz v1, :cond_22

    .line 1260
    :cond_c
    const-string v1, "AudioService"

    const-string v2, "Media server died."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    move-object/from16 v0, p0

    iget-object v1, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    invoke-static/range {v1 .. v7}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1421
    :goto_21
    return-void

    .line 1265
    :cond_22
    const-string v1, "AudioService"

    const-string v2, "Media server started."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    move-object/from16 v0, p0

    iget v1, v0, mMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_85

    .line 1279
    :cond_30
    :goto_30
    const-string/jumbo v1, "restarting=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1281
    invoke-static {}, readAndSetLowRamDevice()V

    .line 1285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UHQ_BT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, mUhqBtSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1288
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_59
    :try_start_59
    move-object/from16 v0, p0

    iget-object v1, v0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v8, v1, :cond_ad

    .line 1289
    move-object/from16 v0, p0

    iget-object v1, v0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 1293
    .local v13, "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v1, v13, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/high16 v3, 0x1000000

    if-ne v1, v3, :cond_78

    .line 1294
    iget-object v1, v13, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1298
    :cond_78
    iget v1, v13, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/4 v3, 0x1

    iget-object v4, v13, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    iget-object v5, v13, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceName:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_59 .. :try_end_82} :catchall_130

    .line 1288
    add-int/lit8 v8, v8, 0x1

    goto :goto_59

    .line 1273
    .end local v8    # "i":I
    .end local v13    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_85
    invoke-direct/range {p0 .. p0}, isInCommunication()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1275
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallState=2 in case of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const-string v1, "CallState=2"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_30

    .line 1305
    .restart local v8    # "i":I
    :cond_ad
    :try_start_ad
    move-object/from16 v0, p0

    iget-object v1, v0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v1, :cond_119

    .line 1306
    move-object/from16 v0, p0

    iget-object v1, v0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v1, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget-object v4, v4, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget-object v5, v5, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceName:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 1317
    :goto_c9
    monitor-exit v2
    :try_end_ca
    .catchall {:try_start_ad .. :try_end_ca} :catchall_130

    .line 1319
    move-object/from16 v0, p0

    iget v1, v0, mMode:I

    invoke-static {v1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    .line 1328
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, mForcedUseForComm:I

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1329
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, mForcedUseForComm:I

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1330
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v1, v0, mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_133

    const/16 v1, 0xb

    :goto_ee
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1333
    const/4 v1, 0x6

    move-object/from16 v0, p0

    iget v2, v0, mForcedUseForFMRadio:I

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1336
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v11

    .line 1337
    .local v11, "numStreamTypes":I
    add-int/lit8 v15, v11, -0x1

    .local v15, "streamType":I
    :goto_ff
    if-ltz v15, :cond_135

    .line 1338
    move-object/from16 v0, p0

    iget-object v1, v0, mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v1, v15

    .line 1339
    .local v14, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v1, 0x0

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$400(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-static {v15, v1, v2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 1341
    invoke-virtual {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1337
    add-int/lit8 v15, v15, -0x1

    goto :goto_ff

    .line 1311
    .end local v11    # "numStreamTypes":I
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v15    # "streamType":I
    :cond_119
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v3, 0x1

    :try_start_11c
    const-string/jumbo v4, "mediaserver_died"

    const-string v5, ""

    invoke-static {v1, v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 1313
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const-string/jumbo v4, "mediaserver_died"

    const-string v5, ""

    invoke-static {v1, v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    goto :goto_c9

    .line 1317
    :catchall_130
    move-exception v1

    monitor-exit v2
    :try_end_132
    .catchall {:try_start_11c .. :try_end_132} :catchall_130

    throw v1

    .line 1330
    :cond_133
    const/4 v1, 0x0

    goto :goto_ee

    .line 1344
    .restart local v11    # "numStreamTypes":I
    .restart local v15    # "streamType":I
    :cond_135
    invoke-virtual/range {p0 .. p0}, isFMPlayerActive()Z

    move-result v1

    if-eqz v1, :cond_146

    .line 1345
    const v1, -0x7fffe000

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_146
    invoke-virtual/range {p0 .. p0}, getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, setRingerModeInt(IZ)V

    .line 1352
    move-object/from16 v0, p0

    iget-boolean v1, v0, mMonitorOrientation:Z

    if-eqz v1, :cond_159

    .line 1353
    invoke-direct/range {p0 .. p0}, setOrientationForAudioSystem()V

    .line 1355
    :cond_159
    move-object/from16 v0, p0

    iget-boolean v1, v0, mMonitorRotation:Z

    if-eqz v1, :cond_162

    .line 1356
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 1359
    :cond_162
    move-object/from16 v0, p0

    iget-object v2, v0, mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1360
    const/4 v3, 0x1

    :try_start_168
    move-object/from16 v0, p0

    iget-boolean v1, v0, mBluetoothA2dpEnabled:Z

    if-eqz v1, :cond_1c4

    const/4 v1, 0x0

    :goto_16f
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1363
    monitor-exit v2
    :try_end_173
    .catchall {:try_start_168 .. :try_end_173} :catchall_1c7

    .line 1365
    move-object/from16 v0, p0

    iget-object v2, v0, mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1366
    const/4 v3, 0x3

    :try_start_179
    move-object/from16 v0, p0

    iget-boolean v1, v0, mDockAudioMediaEnabled:Z

    if-eqz v1, :cond_1ca

    const/16 v1, 0x8

    :goto_181
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1369
    monitor-exit v2
    :try_end_185
    .catchall {:try_start_179 .. :try_end_185} :catchall_1cc

    .line 1370
    move-object/from16 v0, p0

    iget-object v1, v0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_1a0

    .line 1371
    move-object/from16 v0, p0

    iget-object v2, v0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v2

    .line 1372
    :try_start_190
    move-object/from16 v0, p0

    iget-object v1, v0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_19f

    .line 1373
    move-object/from16 v0, p0

    iget-boolean v1, v0, mHdmiSystemAudioSupported:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, setHdmiSystemAudioSupported(Z)I

    .line 1375
    :cond_19f
    monitor-exit v2
    :try_end_1a0
    .catchall {:try_start_190 .. :try_end_1a0} :catchall_1cf

    .line 1378
    :cond_1a0
    move-object/from16 v0, p0

    iget-object v2, v0, mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    .line 1379
    :try_start_1a5
    move-object/from16 v0, p0

    iget-object v1, v0, mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1b1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 1380
    .local v12, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()V

    goto :goto_1b1

    .line 1382
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_1c1
    move-exception v1

    monitor-exit v2
    :try_end_1c3
    .catchall {:try_start_1a5 .. :try_end_1c3} :catchall_1c1

    throw v1

    .line 1360
    :cond_1c4
    const/16 v1, 0xa

    goto :goto_16f

    .line 1363
    :catchall_1c7
    move-exception v1

    :try_start_1c8
    monitor-exit v2
    :try_end_1c9
    .catchall {:try_start_1c8 .. :try_end_1c9} :catchall_1c7

    throw v1

    .line 1366
    :cond_1ca
    const/4 v1, 0x0

    goto :goto_181

    .line 1369
    :catchall_1cc
    move-exception v1

    :try_start_1cd
    monitor-exit v2
    :try_end_1ce
    .catchall {:try_start_1cd .. :try_end_1ce} :catchall_1cc

    throw v1

    .line 1375
    :catchall_1cf
    move-exception v1

    :try_start_1d0
    monitor-exit v2
    :try_end_1d1
    .catchall {:try_start_1d0 .. :try_end_1d1} :catchall_1cf

    throw v1

    .line 1382
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_1d2
    :try_start_1d2
    monitor-exit v2
    :try_end_1d3
    .catchall {:try_start_1d2 .. :try_end_1d3} :catchall_1c1

    .line 1384
    invoke-virtual/range {p0 .. p0}, onIndicateSystemReady()V

    .line 1387
    move-object/from16 v0, p0

    iget v1, v0, mMonoMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, setMonoMode(I)V

    .line 1390
    move-object/from16 v0, p0

    iget v1, v0, mMySoundEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, setGlobalMySound(I)V

    .line 1391
    move-object/from16 v0, p0

    iget v1, v0, mSoundAliveEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, setGlobalSoundAlive(I)V

    .line 1392
    move-object/from16 v0, p0

    iget v1, v0, mK2HDEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, setGlobalK2HD(I)V

    .line 1393
    move-object/from16 v0, p0

    iget v1, v0, mTubeAmpEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, setGlobalTubeAmp(I)V

    .line 1396
    new-instance v10, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.MEDIA_SERVER_REBOOTED"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1397
    .local v10, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1398
    const-string v1, "AudioService"

    const-string/jumbo v2, "mediaServer Restart Intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    move-object/from16 v0, p0

    iget v1, v0, mNbQualityMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, setNbQualityMode(I)V

    .line 1402
    move-object/from16 v0, p0

    iget v1, v0, mDualMicMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, setDualMicMode(I)V

    .line 1404
    invoke-direct/range {p0 .. p0}, setAllSoundMute()V

    .line 1406
    move-object/from16 v0, p0

    iget v1, v0, mNaturalSound:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, setNaturalSoundMode(I)V

    .line 1408
    invoke-direct/range {p0 .. p0}, setSoundBalance()V

    .line 1410
    const-string/jumbo v1, "persist.audio.voicetrig"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1411
    .local v16, "voicetrig":Ljava/lang/String;
    if-eqz v16, :cond_25c

    .line 1412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voice_trig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1414
    :cond_25c
    const-string/jumbo v1, "persist.audio.voicewakeup"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1415
    .local v17, "voicewakeup":Ljava/lang/String;
    if-eqz v17, :cond_294

    const-string/jumbo v1, "on"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27b

    const-string/jumbo v1, "off"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_294

    .line 1416
    :cond_27b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voice_wakeup_mic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1420
    :cond_294
    const-string/jumbo v1, "restarting=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_21
.end method

.method public onSystemReady()V
    .registers 11

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1188
    iget-boolean v0, p0, mSystemReady:Z

    if-nez v0, :cond_18

    .line 1189
    const-string/jumbo v0, "system_ready=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1190
    invoke-direct {p0}, checkFactoryMode()Z

    move-result v0

    iput-boolean v0, p0, mIsFactoryMode:Z

    .line 1191
    invoke-direct {p0}, checkFactorySim()Z

    move-result v0

    iput-boolean v0, p0, mIsFactorySim:Z

    .line 1194
    :cond_18
    invoke-direct {p0}, setWiredDeviceConnectionStateBeforeBoot()V

    .line 1196
    const/4 v0, 0x1

    iput-boolean v0, p0, mSystemReady:Z

    .line 1197
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1200
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1202
    const/4 v0, -0x1

    iput v0, p0, mScoConnectionState:I

    .line 1203
    invoke-direct {p0}, resetBluetoothSco()V

    .line 1204
    invoke-direct {p0}, getBluetoothHeadset()Z

    .line 1207
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1208
    .local v9, "newIntent":Landroid/content/Intent;
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1210
    invoke-direct {p0, v9}, sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 1212
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    .line 1213
    .local v8, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v8, :cond_59

    .line 1214
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v8, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1218
    :cond_59
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "hdmi_control"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v0, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    .line 1220
    iget-object v0, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_8d

    .line 1221
    iget-object v1, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 1222
    :try_start_6d
    iget-object v0, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v0

    iput-object v0, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 1223
    iget-object v0, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_81

    .line 1224
    iget v0, p0, mFixedVolumeDevices:I

    const v2, -0x2c0003

    and-int/2addr v0, v2

    iput v0, p0, mFixedVolumeDevices:I

    .line 1226
    :cond_81
    iget-object v0, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    iput-object v0, p0, mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 1227
    const/4 v0, 0x0

    iput-boolean v0, p0, mHdmiCecSink:Z

    .line 1228
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_6d .. :try_end_8d} :catchall_a8

    .line 1231
    :cond_8d
    iget-object v1, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x11

    const-string v6, "AudioService"

    const/16 v7, 0x7530

    move v4, v3

    move v5, v3

    invoke-static/range {v1 .. v7}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1239
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$StreamOverride;->init(Landroid/content/Context;)V

    .line 1240
    iget-object v0, p0, mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ControllerService;->init()V

    .line 1241
    invoke-virtual {p0}, onIndicateSystemReady()V

    .line 1242
    return-void

    .line 1228
    :catchall_a8
    move-exception v0

    :try_start_a9
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw v0
.end method

.method public playSoundEffect(I)V
    .registers 3
    .param p1, "effectType"    # I

    .prologue
    .line 3544
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, playSoundEffectVolume(IF)V

    .line 3545
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .registers 10
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .prologue
    .line 3549
    const/16 v0, 0x10

    if-ge p1, v0, :cond_6

    if-gez p1, :cond_25

    .line 3550
    :cond_6
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioService effectType value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    :goto_24
    return-void

    .line 3553
    :cond_25
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioService playSoundEffect Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", volume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p2

    float-to-int v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_24
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)Ljava/lang/String;
    .registers 13
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p3, "hasFocusListener"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 8934
    iget-object v5, p0, mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    invoke-static {v5}, Landroid/media/AudioSystem;->setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V

    .line 8936
    sget-boolean v5, DEBUG_AP:Z

    if-eqz v5, :cond_32

    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerAudioPolicy for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with config:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8938
    :cond_32
    const/4 v3, 0x0

    .line 8940
    .local v3, "regId":Ljava/lang/String;
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3e

    const/4 v2, 0x1

    .line 8943
    .local v2, "hasPermissionForPolicy":Z
    :cond_3e
    if-nez v2, :cond_71

    .line 8944
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t register audio policy for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8966
    :goto_70
    return-object v4

    .line 8949
    :cond_71
    iget-object v5, p0, mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v5

    .line 8951
    :try_start_74
    iget-object v6, p0, mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 8952
    const-string v6, "AudioService"

    const-string v7, "Cannot re-register policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_87} :catch_a9
    .catchall {:try_start_74 .. :try_end_87} :catchall_89

    .line 8953
    :try_start_87
    monitor-exit v5

    goto :goto_70

    .line 8965
    :catchall_89
    move-exception v4

    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_89

    throw v4

    .line 8955
    :cond_8c
    :try_start_8c
    new-instance v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V

    .line 8956
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v0, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 8957
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    move-result-object v3

    .line 8958
    iget-object v6, p0, mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_a6} :catch_a9
    .catchall {:try_start_8c .. :try_end_a6} :catchall_89

    .line 8965
    :try_start_a6
    monitor-exit v5

    move-object v4, v3

    .line 8966
    goto :goto_70

    .line 8959
    .end local v0    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catch_a9
    move-exception v1

    .line 8961
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Audio policy registration failed, could not link to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " binder death"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8963
    monitor-exit v5
    :try_end_c9
    .catchall {:try_start_a6 .. :try_end_c9} :catchall_89

    goto :goto_70
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .registers 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 8013
    iget-object v0, p0, mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z

    move-result v0

    return v0
.end method

.method public registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .registers 6
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 8009
    iget-object v0, p0, mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public reloadAudioSettings()V
    .registers 2

    .prologue
    .line 3645
    const/4 v0, 0x0

    invoke-direct {p0, v0}, readAudioSettings(Z)V

    .line 3646
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .registers 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 8021
    iget-object v0, p0, mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 8022
    return-void
.end method

.method public remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .registers 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 8026
    iget-object v0, p0, mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    .line 8027
    return-void
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 17
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "durationHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I
    .param p8, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 8042
    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_44

    .line 8043
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 8044
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_44

    .line 8046
    const-string v0, "AudioService"

    const-string v1, "Invalid permission to (un)lock audio focus"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8047
    const/4 v0, 0x0

    .line 8069
    :goto_24
    return v0

    .line 8051
    :cond_25
    iget-object v1, p0, mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v1

    .line 8057
    if-eqz p8, :cond_36

    :try_start_2a
    iget-object v0, p0, mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p8 .. p8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 8059
    :cond_36
    const-string v0, "AudioService"

    const-string v2, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8060
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_24

    .line 8062
    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_40

    throw v0

    :cond_43
    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_40

    .line 8067
    :cond_44
    invoke-direct {p0, p1, p6, p2}, checkAndSetSplitSound(Landroid/media/AudioAttributes;Ljava/lang/String;I)V

    .line 8069
    iget-object v0, p0, mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_24
.end method

.method public setAudioServiceConfig(Ljava/lang/String;)V
    .registers 9
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .prologue
    .line 9205
    new-instance v0, Landroid/media/AudioParameter;

    invoke-direct {v0, p1}, Landroid/media/AudioParameter;-><init>(Ljava/lang/String;)V

    .line 9206
    .local v0, "audioParam":Landroid/media/AudioParameter;
    const/4 v3, 0x0

    .line 9209
    .local v3, "strVal":Ljava/lang/String;
    const-string/jumbo v5, "fine_volume"

    invoke-virtual {v0, v5}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 9210
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 9211
    .local v2, "index":I
    invoke-direct {p0, v2}, setFineVolume(I)V

    .line 9236
    .end local v2    # "index":I
    :cond_16
    :goto_16
    return-void

    .line 9215
    :cond_17
    const-string v5, "bt_aoble_mode"

    invoke-virtual {v0, v5}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 9216
    invoke-direct {p0}, checkAobleDeviceConnected()V

    goto :goto_16

    .line 9220
    :cond_23
    const-string/jumbo v5, "setForceUseForMedia"

    invoke-virtual {v0, v5}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 9221
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 9222
    .local v1, "forced_config":I
    invoke-virtual {p0, v1}, setForceUseForMedia(I)V

    goto :goto_16

    .line 9226
    .end local v1    # "forced_config":I
    :cond_34
    const-string v5, "UHQ_BT"

    invoke-virtual {v0, v5}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 9227
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 9228
    .local v4, "uhqBtSampleRate":I
    if-nez v4, :cond_48

    .line 9229
    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, getDevicesForStream(IZ)I

    goto :goto_16

    .line 9231
    :cond_48
    iput v4, p0, mUhqBtSampleRate:I

    .line 9232
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_16
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .registers 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I

    .prologue
    const/4 v5, 0x7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 5220
    const/4 v6, 0x0

    .line 5221
    .local v6, "delay":I
    if-eq p3, v4, :cond_27

    const/16 v2, 0xb

    if-eq p3, v2, :cond_27

    if-eq p3, v5, :cond_27

    .line 5226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5228
    :cond_27
    iget-object v8, p0, mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 5229
    if-ne p3, v4, :cond_80

    .line 5230
    const/4 v2, 0x4

    if-ne p2, v2, :cond_58

    .line 5231
    const/4 p2, 0x0

    .line 5233
    :try_start_30
    iget v2, p0, mMode:I

    if-eq v2, v4, :cond_3e

    iget v2, p0, mMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3e

    iget v2, p0, mMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_46

    .line 5234
    :cond_3e
    const/16 v2, 0x80

    if-ne p2, v4, :cond_56

    :goto_42
    invoke-direct {p0, v2, v0}, checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 5257
    :cond_46
    :goto_46
    iget-object v1, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    if-ne p3, v4, :cond_8f

    const/16 v2, 0x66

    :goto_4c
    const/4 v4, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 5269
    monitor-exit v8

    move v7, v6

    .line 5270
    .end local v6    # "delay":I
    .local v7, "delay":I
    :goto_55
    return v7

    .end local v7    # "delay":I
    .restart local v6    # "delay":I
    :cond_56
    move v0, v1

    .line 5234
    goto :goto_42

    .line 5237
    :cond_58
    if-ne p2, v0, :cond_66

    const/16 v2, 0x80

    invoke-direct {p0, v2}, checkDeviceConnected(I)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 5239
    const/4 v6, 0x0

    .line 5240
    monitor-exit v8

    move v7, v6

    .end local v6    # "delay":I
    .restart local v7    # "delay":I
    goto :goto_55

    .line 5241
    .end local v7    # "delay":I
    .restart local v6    # "delay":I
    :cond_66
    const/4 v2, 0x3

    if-ne p2, v2, :cond_75

    const/16 v2, 0x80

    invoke-direct {p0, v2}, checkDeviceConnected(I)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 5243
    const/4 v6, 0x0

    .line 5244
    monitor-exit v8

    move v7, v6

    .end local v6    # "delay":I
    .restart local v7    # "delay":I
    goto :goto_55

    .line 5246
    .end local v7    # "delay":I
    .restart local v6    # "delay":I
    :cond_75
    const/16 v2, 0x80

    if-ne p2, v4, :cond_7e

    :goto_79
    invoke-direct {p0, v2, v0}, checkSendBecomingNoisyIntent(II)I

    move-result v6

    goto :goto_46

    :cond_7e
    move v0, v1

    goto :goto_79

    .line 5250
    :cond_80
    if-ne p3, v5, :cond_8d

    .line 5251
    const/16 v2, 0x80

    if-ne p2, v4, :cond_8b

    :goto_86
    invoke-direct {p0, v2, v0}, checkSendBecomingNoisyIntent(II)I

    move-result v6

    goto :goto_46

    :cond_8b
    move v0, v1

    goto :goto_86

    .line 5255
    :cond_8d
    const/4 v6, 0x0

    goto :goto_46

    .line 5257
    :cond_8f
    if-ne p3, v5, :cond_94

    const/16 v2, 0x71

    goto :goto_4c

    :cond_94
    const/16 v2, 0x65

    goto :goto_4c

    .line 5269
    :catchall_97
    move-exception v0

    monitor-exit v8
    :try_end_99
    .catchall {:try_start_30 .. :try_end_99} :catchall_97

    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .registers 10
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3870
    iget-object v7, p0, mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3871
    :try_start_4
    iput-boolean p1, p0, mBluetoothA2dpEnabled:Z

    .line 3872
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xd

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-boolean v5, p0, mBluetoothA2dpEnabled:Z

    if-eqz v5, :cond_42

    :goto_10
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3877
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothA2dpOn() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mBluetoothA2dpEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3878
    iget-boolean v0, p0, mBluetoothA2dpEnabled:Z

    if-eqz v0, :cond_45

    .line 3879
    iget-object v0, p0, mBluetoothA2dpOndump:[I

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    aput v2, v0, v1

    .line 3884
    :goto_3d
    monitor-exit v7
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_4f

    .line 3885
    invoke-direct {p0}, checkAndSendEarCareInfo()V

    .line 3886
    return-void

    .line 3872
    :cond_42
    const/16 v4, 0xa

    goto :goto_10

    .line 3881
    :cond_45
    :try_start_45
    iget-object v0, p0, mBluetoothA2dpOndump:[I

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    aput v2, v0, v1

    goto :goto_3d

    .line 3884
    :catchall_4f
    move-exception v0

    monitor-exit v7
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method public setBluetoothA2dpOnInt(Z)V
    .registers 6
    .param p1, "on"    # Z

    .prologue
    const/4 v0, 0x0

    .line 8200
    iget-object v1, p0, mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8201
    :try_start_4
    iput-boolean p1, p0, mBluetoothA2dpEnabled:Z

    .line 8202
    iget-object v2, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 8203
    const/4 v2, 0x1

    iget-boolean v3, p0, mBluetoothA2dpEnabled:Z

    if-eqz v3, :cond_24

    :goto_12
    invoke-direct {p0, v2, v0}, setForceUseInt_SyncDevices(II)V

    .line 8206
    iget-boolean v0, p0, mBluetoothA2dpEnabled:Z

    if-eqz v0, :cond_27

    .line 8207
    iget-object v0, p0, mBluetoothA2dpOndump:[I

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    aput v3, v0, v2

    .line 8212
    :goto_22
    monitor-exit v1

    .line 8213
    return-void

    .line 8203
    :cond_24
    const/16 v0, 0xa

    goto :goto_12

    .line 8209
    :cond_27
    iget-object v0, p0, mBluetoothA2dpOndump:[I

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    aput v3, v0, v2

    goto :goto_22

    .line 8212
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .registers 3
    .param p1, "on"    # Z

    .prologue
    .line 3802
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3806
    :goto_9
    return-void

    .line 3805
    :cond_a
    invoke-virtual {p0, p1}, setBluetoothScoOnInt(Z)V

    goto :goto_9
.end method

.method public setBluetoothScoOnInt(Z)V
    .registers 15
    .param p1, "on"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v6, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 3811
    invoke-direct {p0}, checkAobleDeviceConnected()V

    .line 3817
    if-eqz p1, :cond_56

    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_56

    .line 3818
    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-array v4, v6, [I

    fill-array-data v4, :array_a4

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v11

    .line 3822
    .local v11, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    .line 3823
    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v12

    .line 3824
    .local v12, "scoState":I
    const/16 v0, 0xb

    if-eq v12, v0, :cond_56

    const/16 v0, 0xc

    if-eq v12, v0, :cond_56

    .line 3826
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothScoOn() wrong sco state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScoAudioState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mScoAudioState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3861
    .end local v11    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v12    # "scoState":I
    :goto_55
    return-void

    .line 3832
    :cond_56
    if-eqz p1, :cond_89

    .line 3833
    iget-object v0, p0, mBluetoothScoOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    aput v4, v0, v3

    .line 3834
    iget-object v0, p0, mBluetoothScoOndump:[I

    aput v3, v0, v5

    .line 3840
    :goto_64
    if-eqz p1, :cond_92

    .line 3842
    iget-boolean v0, p0, mHasNxpAmp_LSI:Z

    if-eqz v0, :cond_71

    iget v0, p0, mForcedUseForComm:I

    if-ne v0, v5, :cond_71

    .line 3843
    invoke-virtual {p0, v3}, setSpeakerphoneOn(Z)V

    .line 3846
    :cond_71
    iput v6, p0, mForcedUseForComm:I

    .line 3857
    :cond_73
    :goto_73
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v4, p0, mForcedUseForComm:I

    const/4 v5, 0x0

    move v6, v3

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3859
    iget-object v4, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v8, p0, mForcedUseForComm:I

    const/4 v9, 0x0

    move v5, v1

    move v6, v2

    move v7, v2

    move v10, v3

    invoke-static/range {v4 .. v10}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_55

    .line 3836
    :cond_89
    iget-object v0, p0, mBluetoothScoOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    aput v4, v0, v5

    goto :goto_64

    .line 3847
    :cond_92
    iget v0, p0, mForcedUseForComm:I

    if-ne v0, v6, :cond_73

    .line 3848
    iput v3, p0, mForcedUseForComm:I

    .line 3850
    iget-boolean v0, p0, mHasNxpAmp_LSI:Z

    if-eqz v0, :cond_73

    .line 3852
    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_73

    .line 3818
    :array_a4
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 13
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4252
    if-nez p1, :cond_5

    .line 4315
    :cond_4
    :goto_4
    return-void

    .line 4256
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 4257
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 4258
    .local v1, "btClass":Landroid/bluetooth/BluetoothClass;
    const/16 v5, 0x10

    .line 4259
    .local v5, "outDevice":I
    const v4, -0x7ffffff8

    .line 4260
    .local v4, "inDevice":I
    if-eqz v1, :cond_1b

    .line 4261
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v9

    sparse-switch v9, :sswitch_data_86

    .line 4272
    :cond_1b
    :goto_1b
    iget-boolean v9, p0, mbAobleState:Z

    if-ne v9, v7, :cond_21

    .line 4274
    const/16 v5, 0x10

    .line 4278
    :cond_21
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_29

    .line 4279
    const-string v0, ""

    .line 4282
    :cond_29
    const/4 v9, 0x2

    if-ne p2, v9, :cond_76

    move v3, v7

    .line 4284
    .local v3, "connected":Z
    :goto_2d
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4285
    .local v2, "btDeviceName":Ljava/lang/String;
    invoke-direct {p0, v3, v5, v0, v2}, handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_78

    invoke-direct {p0, v3, v4, v0, v2}, handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_78

    move v6, v7

    .line 4288
    .local v6, "success":Z
    :goto_3e
    if-eqz v6, :cond_4

    .line 4289
    iget-object v8, p0, mScoClients:Ljava/util/ArrayList;

    monitor-enter v8

    .line 4290
    if-eqz v3, :cond_7a

    .line 4292
    :try_start_45
    iget-boolean v7, p0, mSplitSound:Z

    if-eqz v7, :cond_69

    .line 4293
    const/4 v7, 0x0

    iput-boolean v7, p0, mSplitSound:Z

    .line 4294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "audioParam;SplitSound="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mSplitSound:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4295
    const/16 v7, 0x20

    invoke-direct {p0, v7}, onSendBecomingNoisyIntent(I)V

    .line 4298
    :cond_69
    iput-object p1, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4313
    :cond_6b
    :goto_6b
    monitor-exit v8

    goto :goto_4

    :catchall_6d
    move-exception v7

    monitor-exit v8
    :try_end_6f
    .catchall {:try_start_45 .. :try_end_6f} :catchall_6d

    throw v7

    .line 4264
    .end local v2    # "btDeviceName":Ljava/lang/String;
    .end local v3    # "connected":Z
    .end local v6    # "success":Z
    :sswitch_70
    const/16 v5, 0x20

    .line 4265
    goto :goto_1b

    .line 4267
    :sswitch_73
    const/16 v5, 0x40

    goto :goto_1b

    :cond_76
    move v3, v8

    .line 4282
    goto :goto_2d

    .restart local v2    # "btDeviceName":Ljava/lang/String;
    .restart local v3    # "connected":Z
    :cond_78
    move v6, v8

    .line 4285
    goto :goto_3e

    .line 4302
    .restart local v6    # "success":Z
    :cond_7a
    :try_start_7a
    invoke-direct {p0}, checkAobleDeviceConnected()V

    .line 4303
    iget-object v7, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v7, :cond_6b

    .line 4304
    invoke-direct {p0}, resetBluetoothSco()V
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_6d

    goto :goto_6b

    .line 4261
    nop

    :sswitch_data_86
    .sparse-switch
        0x404 -> :sswitch_70
        0x408 -> :sswitch_70
        0x420 -> :sswitch_73
    .end sparse-switch
.end method

.method public setDeviceToForceByUser(ILjava/lang/String;)I
    .registers 21
    .param p1, "device"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 9983
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDeviceToForceByUser("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9984
    move-object/from16 v0, p0

    iget-object v0, v0, mConnectedDevices:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 9985
    const/4 v15, 0x0

    .line 9986
    .local v15, "status":I
    :try_start_35
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct/range {p0 .. p2}, makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 9987
    .local v14, "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    const/4 v11, 0x0

    .line 9988
    .local v11, "btName":Ljava/lang/String;
    if-eqz v14, :cond_139

    .line 9990
    invoke-static/range {p1 .. p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a6

    .line 9991
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    .line 9992
    .local v9, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v9, :cond_5e

    .line 9993
    const-string v2, "AudioService"

    const-string v3, "BluetoothAdapter is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9994
    const/4 v2, -0x1

    monitor-exit v16

    .line 10045
    .end local v9    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_5d
    return v2

    .line 9997
    .restart local v9    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_5e
    move-object/from16 v0, p0

    iget-object v2, v0, mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_a0

    .line 9998
    move-object/from16 v0, p0

    iget-object v2, v0, mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v12

    .line 9999
    .local v12, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v12, :cond_123

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_123

    .line 10000
    const/high16 v2, 0x20000000

    move/from16 v0, p1

    if-ne v0, v2, :cond_fe

    .line 10002
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_7f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 10003
    .local v10, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getLeDeviceType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_99

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getLeDeviceType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7f

    .line 10005
    :cond_99
    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothAdapter;->selectstream(Landroid/bluetooth/BluetoothDevice;)Z

    .line 10006
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v11

    .line 10026
    .end local v10    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v12    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_a0
    :goto_a0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, setBluetoothA2dpOnInt(Z)V

    .line 10031
    .end local v9    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_a6
    const/4 v2, 0x2

    const-string v3, ""

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 10032
    if-nez v15, :cond_c5

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, getDeviceForStream(I)I

    move-result v2

    move/from16 v0, p1

    if-ne v0, v2, :cond_c5

    .line 10033
    const-string v2, "AudioService"

    const-string v3, "Device is changed successfully by force"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10035
    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_cc
    .catchall {:try_start_35 .. :try_end_cc} :catchall_136

    .line 10036
    :try_start_cc
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send NEW_ROUTES MSG, BT Name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10037
    move-object/from16 v0, p0

    iget-object v2, v0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v11, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 10038
    move-object/from16 v0, p0

    iget-object v2, v0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 10040
    monitor-exit v17
    :try_end_fa
    .catchall {:try_start_cc .. :try_end_fa} :catchall_133

    .line 10045
    :goto_fa
    :try_start_fa
    monitor-exit v16

    move v2, v15

    goto/16 :goto_5d

    .line 10011
    .restart local v9    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v12    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_fe
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_102
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 10012
    .restart local v10    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    .line 10013
    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothAdapter;->selectstream(Landroid/bluetooth/BluetoothDevice;)Z

    .line 10014
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v11

    .line 10015
    goto/16 :goto_a0

    .line 10020
    .end local v10    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_123
    move-object/from16 v0, p0

    iget-object v2, v0, mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothA2dp;->getActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    .line 10021
    .restart local v10    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v10, :cond_a0

    .line 10022
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;
    :try_end_130
    .catchall {:try_start_fa .. :try_end_130} :catchall_136

    move-result-object v11

    goto/16 :goto_a0

    .line 10040
    .end local v9    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v10    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v12    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_133
    move-exception v2

    :try_start_134
    monitor-exit v17
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_133

    :try_start_135
    throw v2

    .line 10046
    .end local v11    # "btName":Ljava/lang/String;
    .end local v14    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :catchall_136
    move-exception v2

    monitor-exit v16
    :try_end_138
    .catchall {:try_start_135 .. :try_end_138} :catchall_136

    throw v2

    .line 10042
    .restart local v11    # "btName":Ljava/lang/String;
    .restart local v14    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_139
    :try_start_139
    const-string v2, "AudioService"

    const-string v3, "There is no device spec in connected devices"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_140
    .catchall {:try_start_139 .. :try_end_140} :catchall_136

    .line 10043
    const/4 v15, -0x1

    goto :goto_fa
.end method

.method public setEarphoneStateForSARTest(Z)V
    .registers 4
    .param p1, "on"    # Z

    .prologue
    .line 9852
    const/4 v1, 0x0

    .line 9853
    .local v1, "TRANSMIT_POWER_DEFAULT":I
    const/16 v0, 0x200

    .line 9879
    .local v0, "EARJECK_STATE":I
    return-void
.end method

.method public setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 13
    .param p1, "duckingBehavior"    # I
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 8986
    sget-boolean v7, DEBUG_AP:Z

    if-eqz v7, :cond_2e

    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setFocusPropertiesForPolicy() duck behavior="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " policy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8989
    :cond_2e
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6c

    move v1, v6

    .line 8992
    .local v1, "hasPermissionForPolicy":Z
    :goto_39
    if-nez v1, :cond_6e

    .line 8993
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot change audio policy ducking handling for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9018
    :goto_6b
    return v4

    .end local v1    # "hasPermissionForPolicy":Z
    :cond_6c
    move v1, v5

    .line 8989
    goto :goto_39

    .line 8999
    .restart local v1    # "hasPermissionForPolicy":Z
    :cond_6e
    iget-object v7, p0, mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v7

    .line 9000
    :try_start_71
    iget-object v8, p0, mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_89

    .line 9001
    const-string v5, "AudioService"

    const-string v6, "Cannot change audio policy focus properties, unregistered policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9002
    monitor-exit v7

    goto :goto_6b

    .line 9017
    :catchall_86
    move-exception v4

    monitor-exit v7
    :try_end_88
    .catchall {:try_start_71 .. :try_end_88} :catchall_86

    throw v4

    .line 9004
    :cond_89
    :try_start_89
    iget-object v8, p0, mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 9005
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-ne p1, v6, :cond_ba

    .line 9007
    iget-object v8, p0, mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_a1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ba

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 9008
    .local v3, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    iget v8, v3, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    if-ne v8, v6, :cond_a1

    .line 9009
    const-string v5, "AudioService"

    const-string v6, "Cannot change audio policy ducking behavior, already handled"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9010
    monitor-exit v7

    goto :goto_6b

    .line 9014
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_ba
    iput p1, v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 9015
    iget-object v8, p0, mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    if-ne p1, v6, :cond_c7

    move v4, v6

    :goto_c1
    invoke-virtual {v8, v4}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    .line 9017
    monitor-exit v7
    :try_end_c5
    .catchall {:try_start_89 .. :try_end_c5} :catchall_86

    move v4, v5

    .line 9018
    goto :goto_6b

    :cond_c7
    move v4, v5

    .line 9015
    goto :goto_c1
.end method

.method public setForceSpeakerOn(Z)V
    .registers 9
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 3737
    if-eqz p1, :cond_13

    move v0, v3

    :goto_5
    iput v0, p0, mForceSpeaker:I

    .line 3738
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    iget v4, p0, mForceSpeaker:I

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3739
    return-void

    :cond_13
    move v0, v6

    .line 3737
    goto :goto_5
.end method

.method public setForceUseForMedia(I)V
    .registers 9
    .param p1, "forced_config"    # I

    .prologue
    const/16 v1, 0xe

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 3747
    const-string/jumbo v0, "setForceUseForMedia()"

    invoke-virtual {p0, v0}, checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3759
    :goto_d
    return-void

    .line 3750
    :cond_e
    if-ne p1, v1, :cond_21

    .line 3751
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3752
    iput v1, p0, mForcedUseForMedia:I

    .line 3757
    :goto_15
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    iget v4, p0, mForcedUseForMedia:I

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_d

    .line 3754
    :cond_21
    invoke-static {v3, v6}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3755
    iput v6, p0, mForcedUseForMedia:I

    goto :goto_15
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .registers 8
    .param p1, "on"    # Z

    .prologue
    .line 8479
    const/4 v0, 0x0

    .line 8480
    .local v0, "device":I
    iget-object v2, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_2e

    .line 8481
    iget-object v3, p0, mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 8482
    :try_start_8
    iget-object v2, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_16

    .line 8483
    const-string v2, "AudioService"

    const-string v4, "Only Hdmi-Cec enabled TV device supports system audio mode."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8484
    monitor-exit v3

    move v1, v0

    .line 8498
    .end local v0    # "device":I
    .local v1, "device":I
    :goto_15
    return v1

    .line 8487
    .end local v1    # "device":I
    .restart local v0    # "device":I
    :cond_16
    iget-object v4, p0, mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_35

    .line 8488
    :try_start_19
    iget-boolean v2, p0, mHdmiSystemAudioSupported:Z

    if-eq v2, p1, :cond_27

    .line 8489
    iput-boolean p1, p0, mHdmiSystemAudioSupported:Z

    .line 8490
    const/4 v5, 0x5

    if-eqz p1, :cond_30

    const/16 v2, 0xc

    :goto_24
    invoke-static {v5, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 8494
    :cond_27
    const/4 v2, 0x3

    invoke-direct {p0, v2}, getDevicesForStream(I)I

    move-result v0

    .line 8495
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_32

    .line 8496
    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_35

    :cond_2e
    move v1, v0

    .line 8498
    .end local v0    # "device":I
    .restart local v1    # "device":I
    goto :goto_15

    .line 8490
    .end local v1    # "device":I
    .restart local v0    # "device":I
    :cond_30
    const/4 v2, 0x0

    goto :goto_24

    .line 8495
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw v2

    .line 8496
    :catchall_35
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public setMasterMute(ZILjava/lang/String;I)V
    .registers 11
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 2877
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, setMasterMuteInternal(ZILjava/lang/String;II)V

    .line 2879
    return-void
.end method

.method public setMediaSilentMode(Z)V
    .registers 9
    .param p1, "state"    # Z

    .prologue
    const/high16 v6, 0x2000000

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 3201
    iget-boolean v1, p0, mMediaSilentMode:Z

    if-eq p1, v1, :cond_36

    .line 3202
    invoke-virtual {p0, v4}, getStreamVolume(I)I

    move-result v0

    .line 3203
    .local v0, "musicLev":I
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMediaSilentMode musicLev"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    if-eqz p1, :cond_37

    .line 3205
    if-eqz v0, :cond_34

    .line 3206
    iput v0, p0, mMediaLastAudibleIndex:I

    .line 3207
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v5, v6, v1}, setStreamVolume(IIILjava/lang/String;)V

    .line 3213
    :cond_34
    :goto_34
    iput-boolean p1, p0, mMediaSilentMode:Z

    .line 3215
    .end local v0    # "musicLev":I
    :cond_36
    return-void

    .line 3210
    .restart local v0    # "musicLev":I
    :cond_37
    iget v1, p0, mMediaLastAudibleIndex:I

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v6, v2}, setStreamVolume(IIILjava/lang/String;)V

    .line 3211
    iput v5, p0, mMediaLastAudibleIndex:I

    goto :goto_34
.end method

.method public setMicrophoneMute(ZLjava/lang/String;I)V
    .registers 12
    .param p1, "on"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2965
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2966
    .local v7, "uid":I
    const/16 v0, 0x3e8

    if-ne v7, v0, :cond_11

    .line 2967
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p3, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 2969
    :cond_11
    iget-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1, v7, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 2991
    :cond_1b
    :goto_1b
    return-void

    .line 2973
    :cond_1c
    const-string/jumbo v0, "setMicrophoneMute()"

    invoke-virtual {p0, v0}, checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2976
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p3, v0, :cond_35

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 2985
    :cond_35
    invoke-direct {p0}, getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_3e

    .line 2986
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 2989
    :cond_3e
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x17

    if-eqz p1, :cond_4d

    const/4 v3, 0x1

    :goto_45
    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, p3

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_1b

    :cond_4d
    move v3, v2

    goto :goto_45
.end method

.method public setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 9
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 3271
    sget-boolean v1, DEBUG_MODE:Z

    if-eqz v1, :cond_2e

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode(mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    :cond_2e
    const-string/jumbo v1, "setMode()"

    invoke-virtual {p0, v1}, checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 3301
    :cond_37
    :goto_37
    return-void

    .line 3276
    :cond_38
    const/4 v1, 0x2

    if-ne p1, v1, :cond_70

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_70

    .line 3280
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 3285
    :cond_70
    if-lt p1, v4, :cond_37

    const/4 v1, 0x5

    if-ge p1, v1, :cond_37

    .line 3289
    const/4 v0, 0x0

    .line 3290
    .local v0, "newModeOwnerPid":I
    iget-object v2, p0, mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3291
    if-ne p1, v4, :cond_7d

    .line 3292
    :try_start_7b
    iget p1, p0, mMode:I

    .line 3294
    :cond_7d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, p1, p2, v1, p3}, setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    .line 3295
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_7b .. :try_end_86} :catchall_8c

    .line 3298
    if-eqz v0, :cond_37

    .line 3299
    invoke-direct {p0, v0}, disconnectBluetoothSco(I)V

    goto :goto_37

    .line 3295
    :catchall_8c
    move-exception v1

    :try_start_8d
    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method public setRadioSpeakerOn(Z)V
    .registers 6
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3764
    const-string/jumbo v0, "setRadioSpeakerOn()"

    invoke-virtual {p0, v0}, checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3774
    :goto_c
    return-void

    .line 3767
    :cond_d
    if-eqz p1, :cond_15

    .line 3768
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3769
    iput v2, p0, mForcedUseForFMRadio:I

    goto :goto_c

    .line 3771
    :cond_15
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3772
    iput v1, p0, mForcedUseForFMRadio:I

    goto :goto_c
.end method

.method public setRemoteStreamVolume(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 8031
    const-string/jumbo v0, "set the remote stream volume"

    invoke-direct {p0, v0}, enforceVolumeController(Ljava/lang/String;)V

    .line 8032
    iget-object v0, p0, mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->setRemoteStreamVolume(I)V

    .line 8033
    return-void
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .registers 4
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 3019
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, setRingerMode(ILjava/lang/String;Z)V

    .line 3020
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .registers 4
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 3023
    const-string/jumbo v0, "setRingerModeInternal"

    invoke-direct {p0, v0}, enforceVolumeController(Ljava/lang/String;)V

    .line 3024
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, setRingerMode(ILjava/lang/String;Z)V

    .line 3025
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .registers 5
    .param p1, "player"    # Landroid/media/IRingtonePlayer;

    .prologue
    .line 8251
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8252
    iput-object p1, p0, mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 8253
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 15
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 3695
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 3727
    :goto_f
    return-void

    .line 3700
    :cond_10
    if-eqz p1, :cond_49

    .line 3701
    iget-object v0, p0, mSpeakerOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    aput v3, v0, v4

    .line 3702
    iget-object v0, p0, mSpeakerOndump:[I

    aput v4, v0, v7

    .line 3708
    :goto_1e
    if-eqz p1, :cond_52

    .line 3709
    iget v0, p0, mForcedUseForComm:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3a

    .line 3711
    iget-boolean v0, p0, mHasNxpAmp_LSI:Z

    if-eqz v0, :cond_33

    .line 3712
    invoke-virtual {p0, v4}, setBluetoothScoOn(Z)V

    .line 3714
    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    .line 3717
    :cond_33
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    move v3, v2

    move v6, v4

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3720
    :cond_3a
    iput v7, p0, mForcedUseForComm:I

    .line 3725
    :cond_3c
    :goto_3c
    iget-object v6, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v10, p0, mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v4

    move-object v11, v5

    move v12, v4

    invoke-static/range {v6 .. v12}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_f

    .line 3704
    :cond_49
    iget-object v0, p0, mSpeakerOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    aput v3, v0, v7

    goto :goto_1e

    .line 3721
    :cond_52
    iget v0, p0, mForcedUseForComm:I

    if-ne v0, v7, :cond_3c

    .line 3722
    iput v4, p0, mForcedUseForComm:I

    goto :goto_3c
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .registers 12
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 2313
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 2315
    return-void
.end method

.method public setTogether(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 6861
    iput-boolean p1, p0, mIsTogether:Z

    .line 6862
    return-void
.end method

.method public setVibrateSetting(II)V
    .registers 4
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 3188
    iget-boolean v0, p0, mHasVibrator:Z

    if-nez v0, :cond_5

    .line 3196
    :goto_4
    return-void

    .line 3190
    :cond_5
    iget v0, p0, mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, mVibrateSetting:I

    .line 3194
    invoke-direct {p0, p1}, broadcastVibrateSetting(I)V

    goto :goto_4
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .registers 5
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 8689
    const-string/jumbo v0, "set the volume controller"

    invoke-direct {p0, v0}, enforceVolumeController(Ljava/lang/String;)V

    .line 8692
    iget-object v0, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 8716
    :cond_e
    :goto_e
    return-void

    .line 8697
    :cond_f
    iget-object v0, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    .line 8698
    if-eqz p1, :cond_23

    .line 8701
    :try_start_16
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$3;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_47

    .line 8714
    :cond_23
    :goto_23
    iget-object v0, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    .line 8715
    sget-boolean v0, DEBUG_VOL:Z

    if-eqz v0, :cond_e

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 8710
    :catch_47
    move-exception v0

    goto :goto_23
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .registers 5
    .param p1, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    .line 8733
    const-string/jumbo v0, "set volume policy"

    invoke-direct {p0, v0}, enforceVolumeController(Ljava/lang/String;)V

    .line 8734
    if-eqz p1, :cond_30

    iget-object v0, p0, mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p1, v0}, Landroid/media/VolumePolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 8735
    iput-object p1, p0, mVolumePolicy:Landroid/media/VolumePolicy;

    .line 8736
    sget-boolean v0, DEBUG_VOL:Z

    if-eqz v0, :cond_30

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume policy changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8738
    :cond_30
    return-void
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    .prologue
    .line 5177
    iget-object v9, p0, mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 5178
    :try_start_3
    sget-boolean v1, DEBUG_DEVICES:Z

    if-eqz v1, :cond_40

    .line 5179
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWiredDeviceConnectionState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " addr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5184
    :cond_40
    if-eqz p2, :cond_5c

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4e

    const/16 v1, 0x8

    if-eq p1, v1, :cond_4e

    const v1, -0x7ffffff0

    if-ne p1, v1, :cond_5c

    :cond_4e
    invoke-direct {p0}, isRestrictionHeadphone()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 5189
    invoke-direct {p0, p1}, checkDeviceConnected(I)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 5190
    const/16 p2, 0x0

    .line 5195
    :cond_5c
    invoke-direct/range {p0 .. p2}, checkSendBecomingNoisyIntent(II)I

    move-result v8

    .line 5196
    .local v8, "delay":I
    iget-object v10, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v11, 0x64

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v1, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 5202
    monitor-exit v9

    .line 5203
    .end local v8    # "delay":I
    :goto_7f
    return-void

    .line 5192
    :cond_80
    monitor-exit v9

    goto :goto_7f

    .line 5202
    :catchall_82
    move-exception v1

    monitor-exit v9
    :try_end_84
    .catchall {:try_start_3 .. :try_end_84} :catchall_82

    throw v1
.end method

.method public shouldVibrate(I)Z
    .registers 5
    .param p1, "vibrateType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3160
    iget-boolean v2, p0, mHasVibrator:Z

    if-nez v2, :cond_7

    .line 3175
    :goto_6
    :pswitch_6
    return v1

    .line 3162
    :cond_7
    invoke-virtual {p0, p1}, getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_24

    goto :goto_6

    .line 3165
    :pswitch_f
    invoke-virtual {p0}, getRingerModeExternal()I

    move-result v2

    if-eqz v2, :cond_17

    :goto_15
    move v1, v0

    goto :goto_6

    :cond_17
    move v0, v1

    goto :goto_15

    .line 3168
    :pswitch_19
    invoke-virtual {p0}, getRingerModeExternal()I

    move-result v2

    if-ne v2, v0, :cond_21

    :goto_1f
    move v1, v0

    goto :goto_6

    :cond_21
    move v0, v1

    goto :goto_1f

    .line 3162
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
        :pswitch_19
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"    # I

    .prologue
    .line 3897
    const/16 v1, 0x12

    if-ge p2, v1, :cond_9

    const/4 v0, 0x0

    .line 3900
    .local v0, "scoAudioMode":I
    :goto_5
    invoke-virtual {p0, p1, v0}, startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 3901
    return-void

    .line 3897
    .end local v0    # "scoAudioMode":I
    :cond_9
    const/4 v0, -0x1

    goto :goto_5
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;I)V
    .registers 7
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I

    .prologue
    .line 3909
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, mSystemReady:Z

    if-nez v1, :cond_e

    .line 3922
    :cond_d
    :goto_d
    return-void

    .line 3913
    :cond_e
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    move-result-object v0

    .line 3919
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3920
    .local v2, "ident":J
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$ScoClient;->incCount(I)V

    .line 3921
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 3905
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 3906
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 5
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .prologue
    .line 8262
    iget-object v2, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 8263
    :try_start_3
    new-instance v0, Landroid/media/AudioRoutesInfo;

    iget-object v1, p0, mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 8264
    .local v0, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v1, p0, mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 8265
    monitor-exit v2

    return-object v0

    .line 8266
    .end local v0    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 3926
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, mSystemReady:Z

    if-nez v1, :cond_e

    .line 3939
    :cond_d
    :goto_d
    return-void

    .line 3930
    :cond_e
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    move-result-object v0

    .line 3934
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3935
    .local v2, "ident":J
    if-eqz v0, :cond_1c

    .line 3936
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->decCount()V

    .line 3938
    :cond_1c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d
.end method

.method public systemReady()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 1182
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1184
    return-void
.end method

.method public unloadSoundEffects()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 3585
    iget-object v0, p0, mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3586
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 8078
    iget-object v0, p0, mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 8079
    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 7
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 8970
    sget-boolean v1, DEBUG_AP:Z

    if-eqz v1, :cond_21

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAudioPolicyAsync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8971
    :cond_21
    iget-object v2, p0, mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    .line 8972
    :try_start_24
    iget-object v1, p0, mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8973
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v0, :cond_5e

    .line 8974
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8976
    monitor-exit v2

    .line 8983
    :goto_5d
    return-void

    .line 8978
    :cond_5e
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 8980
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 8981
    monitor-exit v2

    goto :goto_5d

    .end local v0    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_6b
    move-exception v1

    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_24 .. :try_end_6d} :catchall_6b

    throw v1
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 3
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 8017
    iget-object v0, p0, mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 8018
    return-void
.end method
