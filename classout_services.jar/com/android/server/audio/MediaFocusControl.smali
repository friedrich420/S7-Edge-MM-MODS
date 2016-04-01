.class public Lcom/android/server/audio/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;,
        Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;,
        Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;,
        Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;
    }
.end annotation


# static fields
.field protected static final DEBUG_RC:Z = false

.field protected static final DEBUG_VOL:Z = false

.field private static final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final MSG_DELAY_FOR_MYSPACE_EFFECT:I = 0xc

.field private static final MSG_RCC_NEW_PLAYBACK_INFO:I = 0x4

.field private static final MSG_RCC_NEW_PLAYBACK_STATE:I = 0x6

.field private static final MSG_RCC_NEW_VOLUME_OBS:I = 0x5

.field private static final MSG_RCC_SEEK_REQUEST:I = 0x7

.field private static final MSG_RCC_UPDATE_METADATA:I = 0x8

.field private static final MSG_RCDISPLAY_CLEAR:I = 0x1

.field private static final MSG_RCDISPLAY_INIT_INFO:I = 0x9

.field private static final MSG_RCDISPLAY_UPDATE:I = 0x2

.field private static final MSG_REEVALUATE_RCD:I = 0xa

.field private static final MSG_REEVALUATE_REMOTE:I = 0x3

.field private static final MSG_UNREGISTER_MEDIABUTTONINTENT:I = 0xb

.field private static final MYSPACE_EFFECT_ENABLED:Z = true

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.server.telecom"

.field private static final RCD_REG_FAILURE:I = 0x0

.field private static final RCD_REG_SUCCESS_ENABLED_NOTIF:I = 0x2

.field private static final RCD_REG_SUCCESS_PERMISSION:I = 0x1

.field private static final RC_INFO_ALL:I = 0xf

.field private static final RC_INFO_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final VOICEBUTTON_ACTION_DISCARD_CURRENT_KEY_PRESS:I = 0x1

.field private static final VOICEBUTTON_ACTION_SIMULATE_KEY_PRESS:I = 0x3

.field private static final VOICEBUTTON_ACTION_START_VOICE_INPUT:I = 0x2

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAudioService:Lcom/android/server/audio/AudioService;

.field private mCallClientId:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentRcClient:Landroid/media/IRemoteControlClient;

.field private mCurrentRcClientGen:I

.field private mCurrentRcClientIntent:Landroid/app/PendingIntent;

.field private final mCurrentRcLock:Ljava/lang/Object;

.field private mDumpEffectType:I

.field private mDumpStreamType:I

.field private final mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

.field private mFocusFollowers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/IAudioPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRemotePlayback:Z

.field private mIsMySpaceEffectFocus:Z

.field private mIsRinging:Z

.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

.field private mMainRemoteIsActive:Z

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaReceiverForCalls:Landroid/content/ComponentName;

.field private final mMySpaceManager:Landroid/media/MySpaceManager;

.field private final mNotifListenerObserver:Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;

.field private mNotifyFocusOwnerOnDuck:Z

.field private final mPRStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/PlayerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRcDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;",
            ">;"
        }
    .end annotation
.end field

.field private mRilState:I

.field private mSplitSoundService:Z

.field private mTmgr:Landroid/telephony/TelephonyManager;

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field private final mVoiceEventLock:Ljava/lang/Object;

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 171
    const-string/jumbo v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 451
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, mAudioFocusLock:Ljava/lang/Object;

    .line 453
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, mRingingLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/audio/AudioService$VolumeController;Lcom/android/server/audio/AudioService;)V
    .registers 12
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cntxt"    # Landroid/content/Context;
    .param p3, "volumeCtrl"    # Lcom/android/server/audio/AudioService$VolumeController;
    .param p4, "as"    # Lcom/android/server/audio/AudioService;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v4, p0, mIsRinging:Z

    .line 113
    iput-boolean v4, p0, mIsMySpaceEffectFocus:Z

    .line 114
    iput-boolean v4, p0, mSplitSoundService:Z

    .line 116
    iput-object v3, p0, mCallClientId:Ljava/lang/String;

    .line 117
    iput-object v3, p0, mTmgr:Landroid/telephony/TelephonyManager;

    .line 118
    iput v5, p0, mRilState:I

    .line 119
    new-instance v2, Landroid/media/MySpaceManager;

    invoke-direct {v2}, Landroid/media/MySpaceManager;-><init>()V

    iput-object v2, p0, mMySpaceManager:Landroid/media/MySpaceManager;

    .line 455
    new-instance v2, Lcom/android/server/audio/MediaFocusControl$1;

    invoke-direct {v2, p0}, Lcom/android/server/audio/MediaFocusControl$1;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    iput-object v2, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 546
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, mFocusStack:Ljava/util/Stack;

    .line 728
    iput-boolean v6, p0, mNotifyFocusOwnerOnDuck:Z

    .line 736
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mFocusFollowers:Ljava/util/ArrayList;

    .line 1202
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, mVoiceEventLock:Ljava/lang/Object;

    .line 1383
    new-instance v2, Lcom/android/server/audio/MediaFocusControl$3;

    invoke-direct {v2, p0}, Lcom/android/server/audio/MediaFocusControl$3;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    iput-object v2, p0, mKeyEventDone:Landroid/content/BroadcastReceiver;

    .line 1401
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, mCurrentRcLock:Ljava/lang/Object;

    .line 1407
    iput-object v3, p0, mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1412
    iput-object v3, p0, mCurrentRcClientIntent:Landroid/app/PendingIntent;

    .line 1426
    iput v4, p0, mCurrentRcClientGen:I

    .line 1452
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, mPRStack:Ljava/util/Stack;

    .line 1458
    iput-object v3, p0, mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1522
    iput v5, p0, mDumpEffectType:I

    .line 1523
    iput v5, p0, mDumpStreamType:I

    .line 2074
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, mRcDisplays:Ljava/util/ArrayList;

    .line 123
    new-instance v2, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    invoke-direct {v2, p0, p1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V

    iput-object v2, p0, mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    .line 124
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 125
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 126
    iput-object p3, p0, mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 127
    iput-object p4, p0, mAudioService:Lcom/android/server/audio/AudioService;

    .line 129
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 130
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v2, "handleMediaEvent"

    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 131
    const/4 v2, 0x3

    invoke-virtual {p4, v2}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v0

    .line 132
    .local v0, "maxMusicLevel":I
    new-instance v2, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    invoke-direct {v2, v5, v0, v0}, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;-><init>(III)V

    iput-object v2, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    .line 141
    invoke-virtual {p0, p2}, registerPhoneStateListener(Landroid/content/Context;)V

    .line 143
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, mAppOps:Landroid/app/AppOpsManager;

    .line 144
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    .line 146
    new-instance v2, Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;

    invoke-direct {v2, p0}, Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    iput-object v2, p0, mNotifListenerObserver:Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;

    .line 148
    iput-boolean v4, p0, mHasRemotePlayback:Z

    .line 149
    iput-boolean v4, p0, mMainRemoteIsActive:Z

    .line 151
    invoke-static {p0}, Lcom/android/server/audio/PlayerRecord;->setMediaFocusControl(Lcom/android/server/audio/MediaFocusControl;)V

    .line 153
    invoke-virtual {p0}, postReevaluateRemote()V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 90
    iget-object v0, p0, mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 90
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/PlayerRecord;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Lcom/android/server/audio/PlayerRecord;
    .param p2, "x2"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, onRcDisplayUpdate(Lcom/android/server/audio/PlayerRecord;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/audio/MediaFocusControl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 90
    invoke-direct {p0}, onReevaluateRemote()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/audio/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/audio/MediaFocusControl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 90
    invoke-direct {p0}, onReevaluateRemoteControlDisplays()V

    return-void
.end method

.method static synthetic access$1500()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 90
    sget-object v0, mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 90
    sget-object v0, mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/audio/MediaFocusControl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, mIsRinging:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 90
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/audio/MediaFocusControl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 90
    iget-boolean v0, p0, mSplitSoundService:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/audio/MediaFocusControl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, mSplitSoundService:Z

    return p1
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 90
    sget-object v0, ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/audio/MediaFocusControl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 90
    iget v0, p0, mRilState:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/audio/MediaFocusControl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, mRilState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 90
    invoke-direct {p0, p1}, removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 90
    iget-object v0, p0, mFocusStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/audio/MediaFocusControl;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 90
    iget-object v0, p0, mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 90
    iget-object v0, p0, mPRStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 90
    iget-object v0, p0, mRcDisplays:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/audio/MediaFocusControl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 90
    invoke-direct {p0}, postReevaluateRemoteControlDisplays()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/audio/MediaFocusControl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 90
    invoke-direct {p0}, onRcDisplayClear()V

    return-void
.end method

.method private addMySpaceEffectDelay()V
    .registers 9

    .prologue
    .line 853
    sget-object v7, mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v7

    .line 855
    :try_start_3
    iget-object v0, p0, mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xc

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, mAudioFocusLock:Ljava/lang/Object;

    iget-object v6, p0, mMySpaceManager:Landroid/media/MySpaceManager;

    const/16 v6, 0x3e8

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1e

    .line 860
    :try_start_13
    sget-object v0, mAudioFocusLock:Ljava/lang/Object;

    iget-object v1, p0, mMySpaceManager:Landroid/media/MySpaceManager;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1c} :catch_21
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1e

    .line 863
    :goto_1c
    :try_start_1c
    monitor-exit v7

    .line 864
    return-void

    .line 863
    :catchall_1e
    move-exception v0

    monitor-exit v7
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw v0

    .line 861
    :catch_21
    move-exception v0

    goto :goto_1c
.end method

.method private canReassignAudioFocus()Z
    .registers 2

    .prologue
    .line 659
    iget-object v0, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v0}, isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 660
    const/4 v0, 0x0

    .line 662
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method private checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I
    .registers 11
    .param p1, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 208
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v8, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v5, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_c

    .line 211
    const/4 v5, 0x1

    .line 245
    :goto_b
    return v5

    .line 215
    :cond_c
    if-eqz p1, :cond_48

    .line 217
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 219
    .local v6, "ident":J
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 220
    .local v2, "currentUser":I
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "enabled_notification_listeners"

    invoke-static {v5, v8, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "enabledNotifListeners":Ljava/lang/String;
    if-eqz v3, :cond_45

    .line 225
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "components":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2c
    array-length v5, v1

    if-ge v4, v5, :cond_45

    .line 227
    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 229
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_42

    .line 230
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_12 .. :try_end_3a} :catchall_4a

    move-result v5

    if-eqz v5, :cond_42

    .line 233
    const/4 v5, 0x2

    .line 241
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b

    .line 226
    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 241
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "components":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_45
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 245
    .end local v2    # "currentUser":I
    .end local v3    # "enabledNotifListeners":Ljava/lang/String;
    .end local v6    # "ident":J
    :cond_48
    const/4 v5, 0x0

    goto :goto_b

    .line 241
    .restart local v6    # "ident":J
    :catchall_4a
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private checkUpdateRemoteControlDisplay_syncPrs(I)V
    .registers 3
    .param p1, "infoChangedFlags"    # I

    .prologue
    .line 1844
    iget-object v0, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1845
    invoke-direct {p0}, clearRemoteControlDisplay_syncPrs()V

    .line 1854
    :goto_b
    return-void

    .line 1853
    :cond_c
    invoke-direct {p0, p1}, updateRemoteControlDisplay_syncPrs(I)V

    goto :goto_b
.end method

.method private clearRemoteControlDisplay_syncPrs()V
    .registers 4

    .prologue
    .line 1795
    iget-object v1, p0, mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1796
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1797
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_14

    .line 1799
    iget-object v0, p0, mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    iget-object v1, p0, mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1800
    return-void

    .line 1797
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 20
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 1151
    if-eqz p2, :cond_9

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1154
    :cond_9
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1155
    .local v5, "keyIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1157
    const/high16 v2, 0x10000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1160
    :try_start_24
    move-object/from16 v0, p0

    iget-object v2, v0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_76

    move-result v2

    if-nez v2, :cond_79

    .line 1163
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v2, v0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    if-eqz p2, :cond_4f

    const/16 v4, 0x7bc

    :goto_44
    move-object/from16 v0, p0

    iget-object v7, v0, mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    move-object/from16 v6, p0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_4d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2e .. :try_end_4d} :catch_51
    .catchall {:try_start_2e .. :try_end_4d} :catchall_76

    .line 1192
    :goto_4d
    :try_start_4d
    monitor-exit v16

    .line 1193
    return-void

    .line 1163
    :cond_4f
    const/4 v4, 0x0

    goto :goto_44

    .line 1166
    :catch_51
    move-exception v13

    .line 1167
    .local v13, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending pending intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-virtual {v13}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_4d

    .line 1192
    .end local v13    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_76
    move-exception v2

    monitor-exit v16
    :try_end_78
    .catchall {:try_start_4d .. :try_end_78} :catchall_76

    throw v2

    .line 1173
    :cond_79
    if-eqz p2, :cond_82

    .line 1174
    :try_start_7b
    const-string v2, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v3, 0x7bc

    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1176
    :cond_82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_85
    .catchall {:try_start_7b .. :try_end_85} :catchall_76

    move-result-wide v14

    .line 1184
    .local v14, "ident":J
    :try_start_86
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mKeyEventDone:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v9, v0, mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_9b
    .catchall {:try_start_86 .. :try_end_9b} :catchall_9f

    .line 1189
    :try_start_9b
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4d

    :catchall_9f
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_a4
    .catchall {:try_start_9b .. :try_end_a4} :catchall_76
.end method

.method private dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V
    .registers 15
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1121
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1122
    .local v1, "keyIntent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1123
    iget-object v0, p0, mMediaReceiverForCalls:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    if-eqz p2, :cond_24

    .line 1125
    iget-object v0, p0, mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1126
    const-string v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v2, 0x7bc

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1128
    :cond_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1135
    .local v10, "ident":J
    :try_start_28
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, mKeyEventDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_3b

    .line 1139
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1141
    return-void

    .line 1139
    :catchall_3b
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 553
    const-string v1, "\nAudio Focus stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    sget-object v2, mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 555
    :try_start_8
    iget-object v1, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 556
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 557
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_e

    .line 559
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v1

    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_21
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1e

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n Notify on duck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mNotifyFocusOwnerOnDuck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method private dumpMSEffect(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  MyspaceEffect:   -- effectType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDumpEffectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- streamType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDumpStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1533
    return-void
.end method

.method private dumpRCCStack(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1480
    const-string v1, "\nRemote Control Client stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1481
    iget-object v2, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1482
    :try_start_8
    iget-object v1, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1483
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1484
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/android/server/audio/PlayerRecord;->dump(Ljava/io/PrintWriter;Z)V

    goto :goto_e

    .line 1489
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1f

    throw v1

    .line 1486
    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_22
    :try_start_22
    iget-object v3, p0, mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    .line 1487
    :try_start_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nCurrent remote control generation ID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, mCurrentRcClientGen:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1488
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_e5

    .line 1489
    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_1f

    .line 1490
    iget-object v2, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v2

    .line 1491
    :try_start_42
    const-string v1, "\nRemote Volume State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  has remote: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, mHasRemotePlayback:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  is remote active: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, mMainRemoteIsActive:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  rccId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  volume handling: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v1, v1, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeHandling:I

    if-nez v1, :cond_e8

    const-string v1, "PLAYBACK_VOLUME_FIXED(0)"

    :goto_a4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  volume: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolume:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  volume steps: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    monitor-exit v2
    :try_end_e4
    .catchall {:try_start_42 .. :try_end_e4} :catchall_eb

    .line 1501
    return-void

    .line 1488
    :catchall_e5
    move-exception v1

    :try_start_e6
    monitor-exit v3
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    :try_start_e7
    throw v1
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_1f

    .line 1495
    :cond_e8
    :try_start_e8
    const-string v1, "PLAYBACK_VOLUME_VARIABLE(1)"

    goto :goto_a4

    .line 1500
    :catchall_eb
    move-exception v1

    monitor-exit v2
    :try_end_ed
    .catchall {:try_start_e8 .. :try_end_ed} :catchall_eb

    throw v1
.end method

.method private dumpRCDList(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1508
    const-string v2, "\nRemote Control Display list entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    iget-object v3, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v3

    .line 1510
    :try_start_8
    iget-object v2, p0, mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1511
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 1512
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 1513
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  IRCD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- w:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$700(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- h:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$800(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- wantsPosSync:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$2400(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string/jumbo v2, "enabled"

    :goto_66
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 1519
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :catchall_72
    move-exception v2

    monitor-exit v3
    :try_end_74
    .catchall {:try_start_8 .. :try_end_74} :catchall_72

    throw v2

    .line 1513
    .restart local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_75
    :try_start_75
    const-string/jumbo v2, "disabled"

    goto :goto_66

    .line 1519
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_79
    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_72

    .line 1520
    return-void
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1465
    const-string v1, "\nRemote Control stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    iget-object v2, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1467
    :try_start_8
    iget-object v1, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1468
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1469
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/android/server/audio/PlayerRecord;->dump(Ljava/io/PrintWriter;Z)V

    goto :goto_e

    .line 1471
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1f

    throw v1

    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_22
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1f

    .line 1472
    return-void
.end method

.method private enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V
    .registers 8
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "enabled"    # Z

    .prologue
    .line 2100
    iget-object v3, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2101
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 2102
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    .line 2103
    .local v1, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 2105
    :try_start_18
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/media/IRemoteControlClient;->enableRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_6

    .line 2106
    :catch_20
    move-exception v0

    .line 2107
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Error connecting RCD to client: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 2111
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_29
    return-void
.end method

.method private filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 7
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 1088
    invoke-static {p1}, isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1089
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not dispatching invalid media key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :goto_1f
    return-void

    .line 1093
    :cond_20
    sget-object v1, mRingingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1094
    :try_start_23
    iget-object v2, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_55

    .line 1095
    :try_start_26
    iget-object v0, p0, mMediaReceiverForCalls:Landroid/content/ComponentName;

    if-eqz v0, :cond_58

    iget-object v0, p0, mAudioService:Lcom/android/server/audio/AudioService;

    iget-boolean v0, v0, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    if-nez v0, :cond_58

    iget-boolean v0, p0, mIsRinging:Z

    if-nez v0, :cond_4f

    iget-object v0, p0, mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4f

    iget-object v0, p0, mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4f

    iget-object v0, p0, mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_58

    .line 1100
    :cond_4f
    invoke-direct {p0, p1, p2}, dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V

    .line 1101
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_26 .. :try_end_53} :catchall_68

    :try_start_53
    monitor-exit v1

    goto :goto_1f

    .line 1104
    :catchall_55
    move-exception v0

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_55

    throw v0

    .line 1103
    :cond_58
    :try_start_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_68

    .line 1104
    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_55

    .line 1106
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, isValidVoiceInputKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1107
    invoke-direct {p0, p1, p2}, filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1f

    .line 1103
    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    :try_start_6a
    throw v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_55

    .line 1109
    :cond_6b
    invoke-direct {p0, p1, p2}, dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1f
.end method

.method private filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 7
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1223
    const/4 v1, 0x1

    .line 1224
    .local v1, "voiceButtonAction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1225
    .local v0, "keyAction":I
    iget-object v3, p0, mVoiceEventLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1226
    if-nez v0, :cond_31

    .line 1227
    :try_start_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1c

    .line 1229
    const/4 v2, 0x1

    iput-boolean v2, p0, mVoiceButtonDown:Z

    .line 1230
    const/4 v2, 0x0

    iput-boolean v2, p0, mVoiceButtonHandled:Z

    .line 1246
    :cond_17
    :goto_17
    monitor-exit v3

    .line 1249
    packed-switch v1, :pswitch_data_60

    .line 1273
    :cond_1b
    :goto_1b
    :pswitch_1b
    return-void

    .line 1231
    :cond_1c
    iget-boolean v2, p0, mVoiceButtonDown:Z

    if-eqz v2, :cond_17

    iget-boolean v2, p0, mVoiceButtonHandled:Z

    if-nez v2, :cond_17

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_17

    .line 1234
    const/4 v2, 0x1

    iput-boolean v2, p0, mVoiceButtonHandled:Z

    .line 1235
    const/4 v1, 0x2

    goto :goto_17

    .line 1237
    :cond_31
    if-ne v0, v2, :cond_17

    .line 1238
    iget-boolean v2, p0, mVoiceButtonDown:Z

    if-eqz v2, :cond_17

    .line 1240
    const/4 v2, 0x0

    iput-boolean v2, p0, mVoiceButtonDown:Z

    .line 1241
    iget-boolean v2, p0, mVoiceButtonHandled:Z

    if-nez v2, :cond_17

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1242
    const/4 v1, 0x3

    goto :goto_17

    .line 1246
    :catchall_46
    move-exception v2

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_46

    throw v2

    .line 1257
    :pswitch_49
    invoke-direct {p0}, isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1261
    iget-object v2, p0, mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getTogether()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1266
    invoke-direct {p0, p2}, startVoiceBasedInteractions(Z)V

    goto :goto_1b

    .line 1270
    :pswitch_5b
    invoke-direct {p0, p1, p2}, sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1b

    .line 1249
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_49
        :pswitch_5b
    .end packed-switch
.end method

.method private isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z
    .registers 7
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "enabledArray"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 337
    if-eqz p2, :cond_6

    array-length v3, p2

    if-nez v3, :cond_7

    .line 349
    :cond_6
    :goto_6
    return v2

    .line 341
    :cond_7
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "compString":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v3, p2

    if-ge v1, v3, :cond_6

    .line 343
    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 345
    const/4 v2, 0x1

    goto :goto_6

    .line 342
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private isCurrentRcController(Landroid/app/PendingIntent;)Z
    .registers 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1641
    iget-object v0, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlayerRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1642
    const/4 v0, 0x1

    .line 1644
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1207
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .registers 3
    .param p1, "fr"    # Lcom/android/server/audio/FocusRequester;

    .prologue
    .line 666
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p1, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isLockedFocusOwner()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected static isPlaystateActive(I)Z
    .registers 2
    .param p0, "playState"    # I

    .prologue
    .line 2383
    packed-switch p0, :pswitch_data_8

    .line 2392
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2390
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 2383
    nop

    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1286
    if-nez p0, :cond_4

    .line 1287
    const/4 v0, 0x0

    .line 1289
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v0

    goto :goto_3
.end method

.method private static isValidVoiceInputKeyCode(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 1299
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_6

    .line 1300
    const/4 v0, 0x1

    .line 1302
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private notifyTopOfAudioFocusStack()V
    .registers 3

    .prologue
    .line 526
    iget-object v0, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 527
    invoke-direct {p0}, canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 528
    iget-object v0, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    .line 531
    :cond_1a
    return-void
.end method

.method private onRcDisplayClear()V
    .registers 6

    .prologue
    .line 1716
    iget-object v1, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1717
    :try_start_3
    iget-object v2, p0, mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    .line 1718
    :try_start_6
    iget v0, p0, mCurrentRcClientGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mCurrentRcClientGen:I

    .line 1720
    iget v0, p0, mCurrentRcClientGen:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 1722
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_16

    .line 1723
    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_19

    .line 1724
    return-void

    .line 1722
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v0

    .line 1723
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V
    .registers 10
    .param p1, "newRcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1765
    iget-object v2, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1766
    :try_start_3
    iget-object v3, p0, mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_32

    .line 1767
    :try_start_6
    iget-object v1, p0, mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_2f

    if-eqz v1, :cond_17

    .line 1772
    :try_start_a
    iget v1, p0, mCurrentRcClientGen:I

    iget-object v4, p0, mCurrentRcClientIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-interface {p1, v1, v4, v5}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_26
    .catchall {:try_start_a .. :try_end_12} :catchall_2f

    .line 1777
    :try_start_12
    iget-object v1, p0, mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlClient;->informationRequestForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_1a
    .catchall {:try_start_12 .. :try_end_17} :catchall_2f

    .line 1786
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_2f

    .line 1787
    :try_start_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_32

    .line 1788
    return-void

    .line 1778
    :catch_1a
    move-exception v0

    .line 1779
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1b
    const-string v1, "MediaFocusControl"

    const-string v4, "Current valid remote client is dead: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1780
    const/4 v1, 0x0

    iput-object v1, p0, mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_25} :catch_26
    .catchall {:try_start_1b .. :try_end_25} :catchall_2f

    goto :goto_17

    .line 1782
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_26
    move-exception v0

    .line 1783
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_27
    const-string v1, "MediaFocusControl"

    const-string v4, "Dead display in onRcDisplayInitInfo()"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 1786
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2f
    move-exception v1

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v1

    .line 1787
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private onRcDisplayUpdate(Lcom/android/server/audio/PlayerRecord;I)V
    .registers 9
    .param p1, "prse"    # Lcom/android/server/audio/PlayerRecord;
    .param p2, "flags"    # I

    .prologue
    .line 1730
    iget-object v2, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1731
    :try_start_3
    iget-object v3, p0, mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_57

    .line 1732
    :try_start_6
    iget-object v1, p0, mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_34

    iget-object v1, p0, mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1734
    const-string v1, "MediaFocusControl"

    const-string v4, "Display/update remote control "

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    iget v1, p0, mCurrentRcClientGen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mCurrentRcClientGen:I

    .line 1738
    iget v1, p0, mCurrentRcClientGen:I

    invoke-virtual {p1}, Lcom/android/server/audio/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_54

    .line 1745
    :try_start_2d
    iget-object v1, p0, mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget v4, p0, mCurrentRcClientGen:I

    invoke-interface {v1, v4, p2}, Landroid/media/IRemoteControlClient;->onInformationRequested(II)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_37
    .catchall {:try_start_2d .. :try_end_34} :catchall_54

    .line 1755
    :cond_34
    :goto_34
    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_54

    .line 1756
    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_57

    .line 1757
    return-void

    .line 1746
    :catch_37
    move-exception v0

    .line 1747
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_38
    const-string v1, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    const/4 v1, 0x0

    iput-object v1, p0, mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_34

    .line 1755
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_54
    move-exception v1

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_38 .. :try_end_56} :catchall_54

    :try_start_56
    throw v1

    .line 1756
    :catchall_57
    move-exception v1

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_57

    throw v1
.end method

.method private onReevaluateRemote()V
    .registers 1

    .prologue
    .line 2498
    return-void
.end method

.method private onReevaluateRemoteControlDisplays()V
    .registers 18

    .prologue
    .line 281
    const-string v1, "MediaFocusControl"

    const-string/jumbo v2, "onReevaluateRemoteControlDisplays()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 284
    .local v8, "currentUser":I
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "enabled_notification_listeners"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 289
    .local v13, "enabledNotifListeners":Ljava/lang/String;
    sget-object v15, mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 290
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_9b

    .line 294
    if-nez v13, :cond_9e

    .line 295
    const/4 v12, 0x0

    .line 299
    .local v12, "enabledComponents":[Ljava/lang/String;
    :goto_28
    :try_start_28
    move-object/from16 v0, p0

    iget-object v1, v0, mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 300
    .local v10, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_30
    :goto_30
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 301
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 303
    .local v9, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$400(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 304
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v14

    .line 305
    .local v14, "wasEnabled":Z
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$400(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v12}, isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9, v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$502(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 307
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z
    :try_end_56
    .catchall {:try_start_28 .. :try_end_56} :catchall_98

    move-result v1

    if-eq v14, v1, :cond_30

    .line 310
    :try_start_59
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/IRemoteControlDisplay;->setEnabled(Z)V

    .line 312
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V

    .line 315
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v2, 0x9

    const/4 v3, 0x2

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$700(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$800(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_8e} :catch_8f
    .catchall {:try_start_59 .. :try_end_8e} :catchall_98

    goto :goto_30

    .line 321
    :catch_8f
    move-exception v11

    .line 322
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_90
    const-string v1, "MediaFocusControl"

    const-string v2, "Error en/disabling RCD: "

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 327
    .end local v9    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v12    # "enabledComponents":[Ljava/lang/String;
    .end local v14    # "wasEnabled":Z
    :catchall_98
    move-exception v1

    monitor-exit v16
    :try_end_9a
    .catchall {:try_start_90 .. :try_end_9a} :catchall_98

    :try_start_9a
    throw v1

    .line 328
    :catchall_9b
    move-exception v1

    monitor-exit v15
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9b

    throw v1

    .line 297
    :cond_9e
    :try_start_9e
    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "enabledComponents":[Ljava/lang/String;
    goto :goto_28

    .line 327
    .restart local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_a5
    monitor-exit v16
    :try_end_a6
    .catchall {:try_start_9e .. :try_end_a6} :catchall_98

    .line 328
    :try_start_a6
    monitor-exit v15
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_9b

    .line 329
    return-void
.end method

.method private onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .registers 9
    .param p1, "rccId"    # I
    .param p2, "rvo"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    .line 2319
    iget-object v4, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v4

    .line 2324
    :try_start_3
    iget-object v3, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_b
    if-ltz v1, :cond_1d

    .line 2325
    iget-object v3, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 2326
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v3

    if-ne v3, p1, :cond_1f

    .line 2327
    iput-object p2, v2, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_1d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_1d} :catch_22
    .catchall {:try_start_3 .. :try_end_1d} :catchall_2b

    .line 2335
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1d
    :goto_1d
    :try_start_1d
    monitor-exit v4

    .line 2336
    return-void

    .line 2324
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 2331
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_22
    move-exception v0

    .line 2333
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "MediaFocusControl"

    const-string v5, "Wrong index accessing media button stack, lock error? "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 2335
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_2b
    move-exception v3

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2b

    throw v3
.end method

.method private plugRemoteControlDisplaysIntoClient_syncPrs(Landroid/media/IRemoteControlClient;)V
    .registers 8
    .param p1, "rcc"    # Landroid/media/IRemoteControlClient;

    .prologue
    .line 2081
    iget-object v3, p0, mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2082
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2083
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 2085
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :try_start_12
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$700(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$800(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    invoke-interface {p1, v3, v4, v5}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    .line 2087
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$2400(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2088
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_2f} :catch_30

    goto :goto_6

    .line 2090
    :catch_30
    move-exception v2

    .line 2091
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Error connecting RCD to RCC in RCC registration"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 2094
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_39
    return-void
.end method

.method private postReevaluateRemoteControlDisplays()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 276
    iget-object v0, p0, mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 277
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(I)V
    .registers 4
    .param p1, "focusGain"    # I

    .prologue
    .line 540
    iget-object v1, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 541
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 542
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(I)V

    goto :goto_6

    .line 544
    :cond_16
    return-void
.end method

.method private pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I
    .registers 7
    .param p1, "nfr"    # Lcom/android/server/audio/FocusRequester;

    .prologue
    .line 679
    iget-object v2, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    .line 680
    .local v1, "lastLockedFocusOwnerIndex":I
    iget-object v2, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_e
    if-ltz v0, :cond_22

    .line 681
    iget-object v2, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v2}, isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 682
    move v1, v0

    .line 680
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 685
    :cond_22
    iget-object v2, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ne v1, v2, :cond_44

    .line 687
    const-string v2, "MediaFocusControl"

    const-string v3, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v2

    invoke-direct {p0, v2}, propagateFocusLossFromGain_syncAf(I)V

    .line 691
    iget-object v2, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const/4 v2, 0x1

    .line 695
    :goto_43
    return v2

    .line 694
    :cond_44
    iget-object v2, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1, v1}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 695
    const/4 v2, 0x2

    goto :goto_43
.end method

.method private pushMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .registers 16
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1548
    iget-object v8, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1549
    iget-object v8, p0, mPRStack:Ljava/util/Stack;

    new-instance v9, Lcom/android/server/audio/PlayerRecord;

    invoke-direct {v9, p1, p2, p3}, Lcom/android/server/audio/PlayerRecord;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    const/4 v7, 0x1

    .line 1610
    :goto_13
    return v7

    .line 1551
    :cond_14
    iget-object v8, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/audio/PlayerRecord;

    invoke-virtual {v8, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 1553
    const/4 v7, 0x0

    goto :goto_13

    .line 1555
    :cond_24
    iget-object v8, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v9, 0x1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_38

    .line 1557
    const/4 v7, 0x0

    goto :goto_13

    .line 1559
    :cond_38
    iget-object v8, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/PlayerRecord;

    .line 1560
    .local v4, "oldTopPrse":Lcom/android/server/audio/PlayerRecord;
    const/4 v7, 0x0

    .line 1561
    .local v7, "topChanged":Z
    const/4 v5, 0x0

    .line 1562
    .local v5, "prse":Lcom/android/server/audio/PlayerRecord;
    iget-object v8, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v3

    .line 1563
    .local v3, "lastPlayingIndex":I
    const/4 v1, -0x1

    .line 1567
    .local v1, "inStackIndex":I
    :try_start_49
    iget-object v8, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I
    :try_end_4e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_49 .. :try_end_4e} :catch_7c

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "index":I
    move-object v6, v5

    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .local v6, "prse":Lcom/android/server/audio/PlayerRecord;
    :goto_52
    if-ltz v2, :cond_6e

    .line 1568
    :try_start_54
    iget-object v8, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/PlayerRecord;
    :try_end_5c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_54 .. :try_end_5c} :catch_ec

    .line 1569
    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :try_start_5c
    invoke-virtual {v5}, Lcom/android/server/audio/PlayerRecord;->isPlaybackActive()Z

    move-result v8

    if-eqz v8, :cond_63

    .line 1570
    move v3, v2

    .line 1572
    :cond_63
    invoke-virtual {v5, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z
    :try_end_66
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5c .. :try_end_66} :catch_7c

    move-result v8

    if-eqz v8, :cond_6a

    .line 1573
    move v1, v2

    .line 1567
    :cond_6a
    add-int/lit8 v2, v2, -0x1

    move-object v6, v5

    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    goto :goto_52

    .line 1577
    :cond_6e
    const/4 v8, -0x1

    if-ne v1, v8, :cond_b7

    .line 1579
    :try_start_71
    new-instance v5, Lcom/android/server/audio/PlayerRecord;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/audio/PlayerRecord;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_76
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_71 .. :try_end_76} :catch_ec

    .line 1582
    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :try_start_76
    iget-object v8, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v3, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V
    :try_end_7b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_76 .. :try_end_7b} :catch_7c

    goto :goto_13

    .line 1603
    .end local v2    # "index":I
    :catch_7c
    move-exception v0

    .line 1605
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_7d
    const-string v8, "MediaFocusControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong index (inStack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " lastPlaying="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v10}, Ljava/util/Stack;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " accessing media button stack"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .line 1585
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v2    # "index":I
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_b7
    :try_start_b7
    iget-object v8, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_ef

    .line 1586
    iget-object v8, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/PlayerRecord;
    :try_end_c8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b7 .. :try_end_c8} :catch_ec

    .line 1588
    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :try_start_c8
    iget-object v8, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->removeElementAt(I)V

    .line 1589
    invoke-virtual {v5}, Lcom/android/server/audio/PlayerRecord;->isPlaybackActive()Z

    move-result v8

    if-eqz v8, :cond_da

    .line 1591
    iget-object v8, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    .line 1594
    :cond_da
    if-le v1, v3, :cond_e3

    .line 1595
    iget-object v8, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v3, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V

    goto/16 :goto_13

    .line 1597
    :cond_e3
    iget-object v8, p0, mPRStack:Ljava/util/Stack;

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v8, v9, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V
    :try_end_ea
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c8 .. :try_end_ea} :catch_7c

    goto/16 :goto_13

    .line 1603
    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_ec
    move-exception v0

    move-object v5, v6

    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    goto :goto_7d

    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_ef
    move-object v5, v6

    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    goto/16 :goto_13
.end method

.method private rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z
    .registers 6
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 2119
    iget-object v2, p0, mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2120
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 2122
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2123
    const/4 v2, 0x1

    .line 2126
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :goto_25
    return v2

    :cond_26
    const/4 v2, 0x0

    goto :goto_25
.end method

.method private registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V
    .registers 22
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 2145
    const-string v4, "MediaFocusControl"

    const-string v5, ">>> registerRemoteControlDisplay"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    sget-object v15, mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2147
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_3b

    .line 2148
    if-eqz p1, :cond_19

    :try_start_13
    invoke-direct/range {p0 .. p1}, rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2149
    :cond_19
    monitor-exit v16
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_76

    :try_start_1a
    monitor-exit v15
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_3b

    .line 2183
    :goto_1b
    return-void

    .line 2151
    :cond_1c
    :try_start_1c
    new-instance v11, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    .line 2152
    .local v11, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    const/4 v4, 0x1

    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v11, v4}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$502(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 2153
    move-object/from16 v0, p4

    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v11, v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$402(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 2154
    invoke-virtual {v11}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->init()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 2156
    monitor-exit v16
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_76

    :try_start_39
    monitor-exit v15

    goto :goto_1b

    .line 2182
    .end local v11    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :catchall_3b
    move-exception v4

    monitor-exit v15
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3b

    throw v4

    .line 2159
    .restart local v11    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_3e
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v4, v0, mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2163
    move-object/from16 v0, p0

    iget-object v4, v0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 2164
    .local v14, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_4d
    :goto_4d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 2165
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/audio/PlayerRecord;

    .line 2166
    .local v13, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v13}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_5c
    .catchall {:try_start_3e .. :try_end_5c} :catchall_76

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 2168
    :try_start_5f
    invoke-virtual {v13}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v4, v0, v1, v2}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_6c} :catch_6d
    .catchall {:try_start_5f .. :try_end_6c} :catchall_76

    goto :goto_4d

    .line 2169
    :catch_6d
    move-exception v12

    .line 2170
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_6e
    const-string v4, "MediaFocusControl"

    const-string v5, "Error connecting RCD to client: "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 2181
    .end local v11    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v13    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_76
    move-exception v4

    monitor-exit v16
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_76

    :try_start_78
    throw v4
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_3b

    .line 2178
    .restart local v11    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .restart local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_79
    :try_start_79
    move-object/from16 v0, p0

    iget-object v4, v0, mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/4 v10, 0x0

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v10}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2181
    monitor-exit v16
    :try_end_8b
    .catchall {:try_start_79 .. :try_end_8b} :catchall_76

    .line 2182
    :try_start_8b
    monitor-exit v15
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_3b

    goto :goto_1b
.end method

.method private removeFocusStackEntry(Ljava/lang/String;ZZ)V
    .registers 10
    .param p1, "clientToRemove"    # Ljava/lang/String;
    .param p2, "signal"    # Z
    .param p3, "notifyFocusFollowers"    # Z

    .prologue
    .line 574
    iget-object v3, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 577
    iget-object v3, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 578
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 579
    if-eqz p3, :cond_2e

    .line 580
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    .line 581
    .local v0, "afi":Landroid/media/AudioFocusInfo;
    invoke-virtual {v0}, Landroid/media/AudioFocusInfo;->clearLossReceived()V

    .line 582
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 584
    .end local v0    # "afi":Landroid/media/AudioFocusInfo;
    :cond_2e
    if-eqz p2, :cond_33

    .line 586
    invoke-direct {p0}, notifyTopOfAudioFocusStack()V

    .line 604
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_33
    return-void

    .line 593
    :cond_34
    iget-object v3, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 594
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_3a
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 595
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 596
    .restart local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 597
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 600
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_3a
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .registers 10
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 613
    iget-object v3, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_91

    iget-object v3, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_91

    move v1, v4

    .line 617
    .local v1, "isTopOfStackForClientToRemove":Z
    :goto_19
    iget-object v3, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 618
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 619
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 620
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 621
    const-string v3, "MediaFocusControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.sec.android.app.sommers"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 625
    const-string v3, "bt_aoble_remote_mic=off"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 628
    :cond_5a
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.sec.android.app.voicenote"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.sec.android.app.voicerecorder"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 630
    :cond_72
    invoke-static {v4, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 631
    const-string v3, "MediaFocusControl"

    const-string v6, "FORCE_NONE for Media(Voice recorder FC)."

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_7c
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.sec.android.app.dmb"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 634
    const-string v3, "audioParam;DMB_FORCE_SPEAKER=off"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 637
    :cond_8d
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    .end local v1    # "isTopOfStackForClientToRemove":Z
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_91
    move v1, v5

    .line 613
    goto :goto_19

    .line 641
    .restart local v1    # "isTopOfStackForClientToRemove":Z
    .restart local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_93
    if-eqz v1, :cond_98

    .line 644
    invoke-direct {p0}, notifyTopOfAudioFocusStack()V

    .line 646
    :cond_98
    return-void
.end method

.method private removeMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1621
    :try_start_0
    iget-object v3, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_8
    if-ltz v1, :cond_20

    .line 1622
    iget-object v3, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 1623
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1624
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->destroy()V

    .line 1626
    iget-object v3, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->removeElementAt(I)V
    :try_end_20
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_20} :catch_24

    .line 1634
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_20
    :goto_20
    return-void

    .line 1621
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1630
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_24
    move-exception v0

    .line 1632
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Wrong index accessing media button stack, lock error? "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 11
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 383
    if-nez p2, :cond_e

    .line 384
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    :cond_5
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p6

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 390
    :goto_d
    return-void

    .line 385
    :cond_e
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_d
.end method

.method private sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .registers 5
    .param p1, "originalKeyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 1277
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1278
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v0, p2}, dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 1280
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1281
    invoke-direct {p0, v0, p2}, dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 1283
    return-void
.end method

.method private sendVolumeUpdateToRemote(II)V
    .registers 10
    .param p1, "rccId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 2398
    if-nez p2, :cond_3

    .line 2428
    :cond_2
    :goto_2
    return-void

    .line 2402
    :cond_3
    const/4 v3, 0x0

    .line 2403
    .local v3, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v5, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 2408
    :try_start_7
    iget-object v4, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_f
    if-ltz v1, :cond_21

    .line 2409
    iget-object v4, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 2411
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v4

    if-ne v4, p1, :cond_32

    .line 2412
    iget-object v3, v2, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_21
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_21} :catch_35
    .catchall {:try_start_7 .. :try_end_21} :catchall_3e

    .line 2420
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_21
    :goto_21
    :try_start_21
    monitor-exit v5
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_3e

    .line 2421
    if-eqz v3, :cond_2

    .line 2423
    const/4 v4, -0x1

    :try_start_25
    invoke-interface {v3, p2, v4}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2

    .line 2424
    :catch_29
    move-exception v0

    .line 2425
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MediaFocusControl"

    const-string v5, "Error dispatching relative volume update"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2408
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 2416
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_35
    move-exception v0

    .line 2418
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_36
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing media button stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 2420
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_3e
    move-exception v4

    monitor-exit v5
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_3e

    throw v4
.end method

.method private setNewRcClientGenerationOnClients_syncRcsCurrc(I)V
    .registers 7
    .param p1, "newClientGeneration"    # I

    .prologue
    .line 1679
    iget-object v3, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1680
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1681
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    .line 1682
    .local v1, "se":Lcom/android/server/audio/PlayerRecord;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1684
    :try_start_1a
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->setCurrentClientGenerationId(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_22

    goto :goto_6

    .line 1685
    :catch_22
    move-exception v0

    .line 1686
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1687
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1688
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->unlinkToRcClientDeath()V

    goto :goto_6

    .line 1692
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "se":Lcom/android/server/audio/PlayerRecord;
    :cond_31
    return-void
.end method

.method private setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .registers 10
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    .line 1655
    iget-object v4, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v4

    .line 1656
    :try_start_3
    iget-object v3, p0, mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_37

    .line 1657
    iget-object v3, p0, mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1658
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1659
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_34

    .line 1661
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :try_start_1d
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25
    .catchall {:try_start_1d .. :try_end_24} :catchall_34

    goto :goto_11

    .line 1663
    :catch_25
    move-exception v2

    .line 1664
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_26
    const-string v3, "MediaFocusControl"

    const-string v5, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc()"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1665
    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->release()V

    .line 1666
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    .line 1670
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_34
    move-exception v3

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_34

    throw v3

    :cond_37
    :try_start_37
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_34

    .line 1671
    return-void
.end method

.method private setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .registers 4
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    .line 1705
    invoke-direct {p0, p1, p2, p3}, setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 1707
    invoke-direct {p0, p1}, setNewRcClientGenerationOnClients_syncRcsCurrc(I)V

    .line 1708
    return-void
.end method

.method private startVoiceBasedInteractions(Z)V
    .registers 15
    .param p1, "needWakeLock"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1310
    const/4 v8, 0x0

    .line 1315
    .local v8, "voiceIntent":Landroid/content/Intent;
    iget-object v11, p0, mContext:Landroid/content/Context;

    const-string/jumbo v12, "power"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 1316
    .local v7, "pm":Landroid/os/PowerManager;
    iget-object v11, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v11, :cond_6d

    iget-object v11, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v11}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v11

    if-eqz v11, :cond_6d

    move v3, v9

    .line 1317
    .local v3, "isLocked":Z
    :goto_1b
    if-nez v3, :cond_7f

    invoke-virtual {v7}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v11

    if-eqz v11, :cond_7f

    .line 1324
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1325
    .local v6, "pkm":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v11, "com.sec.action.SVOICE"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1326
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_6f

    .line 1327
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "voiceIntent":Landroid/content/Intent;
    const-string v9, "android.speech.action.WEB_SEARCH"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1328
    .restart local v8    # "voiceIntent":Landroid/content/Intent;
    const-string v9, "MediaFocusControl"

    const-string/jumbo v10, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "pkm":Landroid/content/pm/PackageManager;
    :goto_49
    if-eqz p1, :cond_50

    .line 1351
    iget-object v9, p0, mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1353
    :cond_50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1355
    .local v4, "identity":J
    if-eqz v8, :cond_62

    .line 1356
    const/high16 v9, 0x10800000

    :try_start_58
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1358
    iget-object v9, p0, mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v8, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_62
    .catch Landroid/content/ActivityNotFoundException; {:try_start_58 .. :try_end_62} :catch_b3
    .catchall {:try_start_58 .. :try_end_62} :catchall_d7

    .line 1363
    :cond_62
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1364
    if-eqz p1, :cond_6c

    .line 1365
    iget-object v9, p0, mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1368
    :cond_6c
    :goto_6c
    return-void

    .end local v3    # "isLocked":Z
    .end local v4    # "identity":J
    :cond_6d
    move v3, v10

    .line 1316
    goto :goto_1b

    .line 1330
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "isLocked":Z
    .restart local v6    # "pkm":Landroid/content/pm/PackageManager;
    :cond_6f
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "voiceIntent":Landroid/content/Intent;
    const-string v9, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1331
    .restart local v8    # "voiceIntent":Landroid/content/Intent;
    const-string v9, "MediaFocusControl"

    const-string/jumbo v10, "voice-based interactions: about to use SVOICE"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 1336
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "pkm":Landroid/content/pm/PackageManager;
    :cond_7f
    const-string/jumbo v11, "deviceidle"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v1

    .line 1338
    .local v1, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v1, :cond_92

    .line 1340
    :try_start_8c
    const-string/jumbo v11, "voice-search"

    invoke-interface {v1, v11}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_92} :catch_e3

    .line 1344
    :cond_92
    :goto_92
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "voiceIntent":Landroid/content/Intent;
    const-string v11, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1345
    .restart local v8    # "voiceIntent":Landroid/content/Intent;
    const-string v11, "android.speech.extras.EXTRA_SECURE"

    if-eqz v3, :cond_b1

    iget-object v12, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v12}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v12

    if-eqz v12, :cond_b1

    :goto_a5
    invoke-virtual {v8, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1347
    const-string v9, "MediaFocusControl"

    const-string/jumbo v10, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_b1
    move v9, v10

    .line 1345
    goto :goto_a5

    .line 1360
    .end local v1    # "dic":Landroid/os/IDeviceIdleController;
    .restart local v4    # "identity":J
    :catch_b3
    move-exception v2

    .line 1361
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    :try_start_b4
    const-string v9, "MediaFocusControl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No activity for search: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catchall {:try_start_b4 .. :try_end_cc} :catchall_d7

    .line 1363
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1364
    if-eqz p1, :cond_6c

    .line 1365
    iget-object v9, p0, mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6c

    .line 1363
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_d7
    move-exception v9

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1364
    if-eqz p1, :cond_e2

    .line 1365
    iget-object v10, p0, mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_e2
    throw v9

    .line 1341
    .end local v4    # "identity":J
    .restart local v1    # "dic":Landroid/os/IDeviceIdleController;
    :catch_e3
    move-exception v11

    goto :goto_92
.end method

.method private updateRemoteControlDisplay_syncPrs(I)V
    .registers 8
    .param p1, "infoChangedFlags"    # I

    .prologue
    .line 1811
    iget-object v2, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    .line 1812
    .local v1, "prse":Lcom/android/server/audio/PlayerRecord;
    move v0, p1

    .line 1815
    .local v0, "infoFlagsAboutToBeUsed":I
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    if-nez v2, :cond_13

    .line 1817
    invoke-direct {p0}, clearRemoteControlDisplay_syncPrs()V

    .line 1831
    :goto_12
    return-void

    .line 1820
    :cond_13
    iget-object v3, p0, mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1821
    :try_start_16
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    iget-object v4, p0, mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1823
    const/16 v0, 0xf

    .line 1825
    :cond_24
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    iput-object v2, p0, mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1826
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, mCurrentRcClientIntent:Landroid/app/PendingIntent;

    .line 1827
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_3f

    .line 1829
    iget-object v2, p0, mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    iget-object v3, p0, mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_12

    .line 1827
    :catchall_3f
    move-exception v2

    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v2
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .registers 10
    .param p1, "fl"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    const/4 v5, 0x1

    .line 1022
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :try_start_19
    sget-object v2, mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1c
    .catch Ljava/util/ConcurrentModificationException; {:try_start_19 .. :try_end_1c} :catch_6d

    .line 1027
    :try_start_1c
    iget-object v1, p0, mAudioService:Lcom/android/server/audio/AudioService;

    iget-boolean v1, v1, Lcom/android/server/audio/AudioService;->mHMTstate:Z

    if-nez v1, :cond_58

    .line 1032
    iget-boolean v1, p0, mIsMySpaceEffectFocus:Z

    if-eqz v1, :cond_58

    iget-object v1, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_58

    iget-object v1, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1035
    iget-object v1, p0, mMySpaceManager:Landroid/media/MySpaceManager;

    iget-object v3, p0, mMySpaceManager:Landroid/media/MySpaceManager;

    iget-object v3, v3, Landroid/media/MySpaceManager;->mMusicAttributes:Landroid/media/AudioAttributes;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/media/MySpaceManager;->playMySpaceEffect(Landroid/media/AudioAttributes;I)V

    .line 1036
    const/4 v1, 0x0

    iput-boolean v1, p0, mIsMySpaceEffectFocus:Z

    .line 1037
    const-string v1, "MediaFocusControl"

    const-string v3, "AudioFocus playMySpaceEffect MUSIC FADE IN"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_58
    iget-object v1, p0, mCallClientId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1042
    const/4 v1, 0x0

    iput-object v1, p0, mCallClientId:Ljava/lang/String;

    .line 1044
    :cond_63
    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, p2, v1, v3}, removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 1045
    monitor-exit v2

    .line 1054
    :goto_69
    return v5

    .line 1045
    :catchall_6a
    move-exception v1

    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_1c .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw v1
    :try_end_6d
    .catch Ljava/util/ConcurrentModificationException; {:try_start_6c .. :try_end_6d} :catch_6d

    .line 1046
    :catch_6d
    move-exception v0

    .line 1050
    .local v0, "cme":Ljava/util/ConcurrentModificationException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_69
.end method

.method addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 8
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 739
    if-nez p1, :cond_3

    .line 757
    :goto_2
    return-void

    .line 742
    :cond_3
    sget-object v4, mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 743
    const/4 v0, 0x0

    .line 744
    .local v0, "found":Z
    :try_start_7
    iget-object v3, p0, mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 745
    .local v2, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 746
    const/4 v0, 0x1

    .line 750
    .end local v2    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_28
    if-eqz v0, :cond_2f

    .line 751
    monitor-exit v4

    goto :goto_2

    .line 756
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_2c
    move-exception v3

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2c

    throw v3

    .line 753
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2f
    :try_start_2f
    iget-object v3, p0, mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-virtual {p0, p1}, notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 756
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_2c

    goto :goto_2
.end method

.method protected checkUpdateRemoteStateIfActive(I)Z
    .registers 11
    .param p1, "streamType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2345
    iget-object v5, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 2348
    :try_start_5
    iget-object v6, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "index":I
    :goto_d
    if-ltz v1, :cond_57

    .line 2349
    iget-object v6, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v6, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 2350
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    iget v6, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackType:I

    if-ne v6, v3, :cond_61

    iget-object v6, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackState:Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

    iget v6, v6, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mState:I

    invoke-static {v6}, isPlaystateActive(I)Z

    move-result v6

    if-eqz v6, :cond_61

    iget v6, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackStream:I

    if-ne v6, p1, :cond_61

    .line 2355
    iget-object v6, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v6
    :try_end_2c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_2c} :catch_4f
    .catchall {:try_start_5 .. :try_end_2c} :catchall_64

    .line 2356
    :try_start_2c
    iget-object v7, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v8

    iput v8, v7, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    .line 2357
    iget-object v7, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v8, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolume:I

    iput v8, v7, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolume:I

    .line 2358
    iget-object v7, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v8, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeMax:I

    iput v8, v7, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    .line 2359
    iget-object v7, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v8, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeHandling:I

    iput v8, v7, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeHandling:I

    .line 2360
    const/4 v7, 0x1

    iput-boolean v7, p0, mMainRemoteIsActive:Z

    .line 2361
    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_2c .. :try_end_4a} :catchall_4c

    .line 2362
    :try_start_4a
    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_64

    .line 2373
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :goto_4b
    return v3

    .line 2361
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catchall_4c
    move-exception v3

    :try_start_4d
    monitor-exit v6
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v3
    :try_end_4f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4e .. :try_end_4f} :catch_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_64

    .line 2365
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_4f
    move-exception v0

    .line 2367
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_50
    const-string v3, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2369
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_57
    monitor-exit v5
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_64

    .line 2370
    iget-object v5, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v5

    .line 2371
    const/4 v3, 0x0

    :try_start_5c
    iput-boolean v3, p0, mMainRemoteIsActive:Z

    .line 2372
    monitor-exit v5
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_67

    move v3, v4

    .line 2373
    goto :goto_4b

    .line 2348
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_61
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 2369
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catchall_64
    move-exception v3

    :try_start_65
    monitor-exit v5
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v3

    .line 2372
    :catchall_67
    move-exception v3

    :try_start_68
    monitor-exit v5
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v3
.end method

.method protected discardAudioFocusOwner()V
    .registers 4

    .prologue
    .line 511
    sget-object v2, mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 512
    :try_start_3
    iget-object v1, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 514
    iget-object v1, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 515
    .local v0, "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(I)V

    .line 516
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 518
    .end local v0    # "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    :cond_1a
    monitor-exit v2

    .line 519
    return-void

    .line 518
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method protected dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1074
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 1075
    return-void
.end method

.method protected dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1083
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 1084
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nMediaFocusControl dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1}, dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 160
    invoke-direct {p0, p1}, dumpRCStack(Ljava/io/PrintWriter;)V

    .line 161
    invoke-direct {p0, p1}, dumpRCCStack(Ljava/io/PrintWriter;)V

    .line 162
    invoke-direct {p0, p1}, dumpRCDList(Ljava/io/PrintWriter;)V

    .line 164
    invoke-direct {p0, p1}, dumpMSEffect(Ljava/io/PrintWriter;)V

    .line 166
    return-void
.end method

.method protected getCurrentAudioFocus()I
    .registers 3

    .prologue
    .line 830
    sget-object v1, mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 831
    :try_start_3
    iget-object v0, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 832
    const/4 v0, 0x0

    monitor-exit v1

    .line 834
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v0

    monitor-exit v1

    goto :goto_d

    .line 836
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method protected getCurrentAudioFocusPackageName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 840
    sget-object v1, mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 841
    :try_start_3
    iget-object v0, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 842
    const/4 v0, 0x0

    monitor-exit v1

    .line 844
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_d

    .line 846
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method protected getGainRequestForCurrentAudioFocus()I
    .registers 3

    .prologue
    .line 2512
    sget-object v1, mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2513
    :try_start_3
    iget-object v0, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2514
    const/4 v0, 0x0

    monitor-exit v1

    .line 2516
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v0

    monitor-exit v1

    goto :goto_d

    .line 2518
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method protected getRemoteStreamMaxVolume()I
    .registers 4

    .prologue
    .line 2431
    iget-object v1, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v1

    .line 2432
    :try_start_3
    iget-object v0, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    .line 2433
    const/4 v0, 0x0

    monitor-exit v1

    .line 2435
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    monitor-exit v1

    goto :goto_c

    .line 2436
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method protected getRemoteStreamVolume()I
    .registers 4

    .prologue
    .line 2440
    iget-object v1, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v1

    .line 2441
    :try_start_3
    iget-object v0, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    .line 2442
    const/4 v0, 0x0

    monitor-exit v1

    .line 2444
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolume:I

    monitor-exit v1

    goto :goto_c

    .line 2445
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method protected getUserIdForCurrentAudioFocus()I
    .registers 3

    .prologue
    .line 2503
    sget-object v1, mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2504
    :try_start_3
    iget-object v0, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2505
    const/4 v0, -0x1

    monitor-exit v1

    .line 2507
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getUserId()I

    move-result v0

    monitor-exit v1

    goto :goto_d

    .line 2509
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method mustNotifyFocusOwnerOnDuck()Z
    .registers 2

    .prologue
    .line 734
    iget-boolean v0, p0, mNotifyFocusOwnerOnDuck:Z

    return v0
.end method

.method notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 4
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 777
    move-object v0, p1

    .line 778
    .local v0, "pcb2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    new-instance v1, Lcom/android/server/audio/MediaFocusControl$2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/audio/MediaFocusControl$2;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 796
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 797
    return-void
.end method

.method notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    .registers 9
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .prologue
    .line 803
    iget-object v3, p0, mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 806
    .local v2, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_12
    invoke-interface {v2, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    .line 807
    :catch_16
    move-exception v0

    .line 808
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 812
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_34
    return-void
.end method

.method notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V
    .registers 9
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasDispatched"    # Z

    .prologue
    .line 818
    iget-object v3, p0, mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 821
    .local v2, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_12
    invoke-interface {v2, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    .line 822
    :catch_16
    move-exception v0

    .line 823
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call notifyAudioFocusLoss() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 827
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_34
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1378
    const/16 v0, 0x7bc

    if-ne p3, v0, :cond_9

    .line 1379
    iget-object v0, p0, mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1381
    :cond_9
    return-void
.end method

.method protected postReevaluateRemote()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 2491
    iget-object v0, p0, mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2492
    return-void
.end method

.method protected registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "c"    # Landroid/content/ComponentName;

    .prologue
    .line 1901
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 1903
    const-string v0, "MediaFocusControl"

    const-string v1, "Invalid permissions to register media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    :goto_11
    return-void

    .line 1906
    :cond_12
    iget-object v1, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1907
    :try_start_15
    iput-object p1, p0, mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1908
    monitor-exit v1

    goto :goto_11

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method protected registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1862
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonIntent() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    iget-object v1, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1865
    :try_start_1b
    invoke-direct {p0, p1, p2, p3}, pushMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1867
    const/16 v0, 0xf

    invoke-direct {p0, v0}, checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1869
    :cond_26
    monitor-exit v1

    .line 1870
    return-void

    .line 1869
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_28

    throw v0
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2522
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, mTmgr:Landroid/telephony/TelephonyManager;

    .line 2523
    iget-object v0, p0, mTmgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2534
    const-string v0, "MediaFocusControl"

    const-string v1, "call registerPhoneStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    return-void
.end method

.method protected registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
    .registers 11
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;
    .param p3, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 1935
    const-string v4, "MediaFocusControl"

    const-string v5, "Register remote control client"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const/4 v3, -0x1

    .line 1937
    .local v3, "rccId":I
    iget-object v5, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 1940
    :try_start_b
    iget-object v4, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_13
    if-ltz v1, :cond_2c

    .line 1941
    iget-object v4, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 1942
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1943
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, p2, p3, v4}, Lcom/android/server/audio/PlayerRecord;->resetControllerInfoForRcc(Landroid/media/IRemoteControlClient;Ljava/lang/String;I)V
    :try_end_2a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_2a} :catch_4d
    .catchall {:try_start_b .. :try_end_2a} :catchall_56

    .line 1946
    if-nez p2, :cond_39

    .line 1967
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-direct {p0, p1}, isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1968
    const/16 v4, 0xf

    invoke-direct {p0, v4}, checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1970
    :cond_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_56

    .line 1971
    return v3

    .line 1950
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_39
    :try_start_39
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v3

    .line 1954
    iget-object v4, p0, mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2c

    .line 1955
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    invoke-direct {p0, v4}, plugRemoteControlDisplaysIntoClient_syncPrs(Landroid/media/IRemoteControlClient;)V
    :try_end_4c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_39 .. :try_end_4c} :catch_4d
    .catchall {:try_start_39 .. :try_end_4c} :catchall_56

    goto :goto_2c

    .line 1960
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_4d
    move-exception v0

    .line 1962
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4e
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 1970
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_56
    move-exception v4

    monitor-exit v5
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_56

    throw v4

    .line 1940
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_59
    add-int/lit8 v1, v1, -0x1

    goto :goto_13
.end method

.method protected registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .registers 8
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-direct {p0, v1}, checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    .line 264
    .local v0, "reg":I
    if-eqz v0, :cond_c

    .line 265
    invoke-direct {p0, p1, p2, p3, v1}, registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    .line 266
    const/4 v1, 0x1

    .line 271
    :goto_b
    return v1

    .line 268
    :cond_c
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", must have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to register IRemoteControlDisplay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v1, 0x0

    goto :goto_b
.end method

.method protected registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .registers 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 250
    invoke-direct {p0, p4}, checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    .line 251
    .local v0, "reg":I
    if-eqz v0, :cond_b

    .line 252
    invoke-direct {p0, p1, p2, p3, p4}, registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    .line 253
    const/4 v1, 0x1

    .line 258
    :goto_a
    return v1

    .line 255
    :cond_b
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", must have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or be an enabled NotificationListenerService for registerRemoteController"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .registers 13
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 2240
    iget-object v7, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 2241
    :try_start_3
    iget-object v6, p0, mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2242
    .local v2, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    const/4 v0, 0x0

    .line 2243
    .local v0, "artworkSizeUpdate":Z
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    if-nez v0, :cond_3e

    .line 2244
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 2245
    .local v1, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2246
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$700(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-ne v6, p2, :cond_36

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$800(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-eq v6, p3, :cond_a

    .line 2247
    :cond_36
    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v1, p2}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$702(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;I)I

    .line 2248
    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v1, p3}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$802(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;I)I

    .line 2249
    const/4 v0, 0x1

    goto :goto_a

    .line 2253
    .end local v1    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_3e
    if-eqz v0, :cond_6c

    .line 2256
    iget-object v6, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2257
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_46
    :goto_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 2258
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/PlayerRecord;

    .line 2259
    .local v4, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_69

    move-result-object v6

    if-eqz v6, :cond_46

    .line 2261
    :try_start_58
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1, p2, p3}, Landroid/media/IRemoteControlClient;->setBitmapSizeForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5f} :catch_60
    .catchall {:try_start_58 .. :try_end_5f} :catchall_69

    goto :goto_46

    .line 2262
    :catch_60
    move-exception v3

    .line 2263
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_61
    const-string v6, "MediaFocusControl"

    const-string v8, "Error setting bitmap size for RCD on RCC: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    .line 2268
    .end local v0    # "artworkSizeUpdate":Z
    .end local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_69
    move-exception v6

    monitor-exit v7
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_69

    throw v6

    .restart local v0    # "artworkSizeUpdate":Z
    .restart local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_6c
    :try_start_6c
    monitor-exit v7
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_69

    .line 2269
    return-void
.end method

.method protected remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .registers 12
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 2285
    iget-object v7, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 2286
    const/4 v4, 0x0

    .line 2289
    .local v4, "rcdRegistered":Z
    :try_start_4
    iget-object v6, p0, mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2290
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 2291
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 2292
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2293
    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0, p2}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$2402(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 2294
    const/4 v4, 0x1

    .line 2298
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_2c
    if-nez v4, :cond_30

    .line 2299
    monitor-exit v7

    .line 2315
    :goto_2f
    return-void

    .line 2303
    :cond_30
    iget-object v6, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2304
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_36
    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 2305
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/PlayerRecord;

    .line 2306
    .local v3, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v3}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_59

    move-result-object v6

    if-eqz v6, :cond_36

    .line 2308
    :try_start_48
    invoke-virtual {v3}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4f} :catch_50
    .catchall {:try_start_48 .. :try_end_4f} :catchall_59

    goto :goto_36

    .line 2309
    :catch_50
    move-exception v2

    .line 2310
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_51
    const-string v6, "MediaFocusControl"

    const-string v8, "Error setting position sync flag for RCD on RCC: "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 2314
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_59
    move-exception v6

    monitor-exit v7
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_59

    throw v6

    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .restart local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_5c
    :try_start_5c
    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_59

    goto :goto_2f
.end method

.method removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 7
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 760
    if-nez p1, :cond_3

    .line 771
    :goto_2
    return-void

    .line 763
    :cond_3
    sget-object v3, mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 764
    :try_start_6
    iget-object v2, p0, mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 765
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 766
    iget-object v2, p0, mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 770
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2b
    monitor-exit v3

    goto :goto_2

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_2d
    move-exception v2

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method protected requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 28
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "focusChangeHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I

    .prologue
    .line 870
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " req="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v3

    if-nez v3, :cond_45

    .line 874
    const-string v3, "MediaFocusControl"

    const-string v4, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/16 v17, 0x0

    .line 1014
    :goto_44
    return v17

    .line 878
    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p6

    invoke-virtual {v3, v4, v5, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5a

    .line 880
    const/16 v17, 0x0

    goto :goto_44

    .line 883
    :cond_5a
    sget-object v19, mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v19

    .line 884
    const/4 v14, 0x0

    .line 886
    .local v14, "focusGrantDelayed":Z
    :try_start_5e
    const-string v3, "com.android.server.telecom"

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 887
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, mCallClientId:Ljava/lang/String;

    .line 890
    :cond_6e
    const-string v3, "com.android.server.telecom"

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_8d

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_8d

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9c

    :cond_8d
    move-object/from16 v0, p0

    iget-object v3, v0, mAudioService:Lcom/android/server/audio/AudioService;

    iget-boolean v3, v3, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    if-eqz v3, :cond_9c

    .line 892
    const/16 v17, 0x1

    monitor-exit v19

    goto :goto_44

    .line 999
    :catchall_99
    move-exception v3

    monitor-exit v19
    :try_end_9b
    .catchall {:try_start_5e .. :try_end_9b} :catchall_99

    throw v3

    .line 896
    :cond_9c
    :try_start_9c
    invoke-direct/range {p0 .. p0}, canReassignAudioFocus()Z

    move-result v3

    if-nez v3, :cond_ab

    .line 897
    and-int/lit8 v3, p7, 0x1

    if-nez v3, :cond_aa

    .line 898
    const/16 v17, 0x0

    monitor-exit v19

    goto :goto_44

    .line 903
    :cond_aa
    const/4 v14, 0x1

    .line 910
    :cond_ab
    new-instance v9, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v9, v0, v1}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_b4
    .catchall {:try_start_9c .. :try_end_b4} :catchall_99

    .line 912
    .local v9, "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    const/4 v3, 0x0

    :try_start_b5
    move-object/from16 v0, p3

    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_ba} :catch_185
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_99

    .line 920
    :try_start_ba
    move-object/from16 v0, p0

    iget-object v3, v0, mAudioService:Lcom/android/server/audio/AudioService;

    iget-boolean v3, v3, Lcom/android/server/audio/AudioService;->mHMTstate:Z

    if-nez v3, :cond_fb

    .line 925
    const-string v3, "AudioFocus_For_Phone_Ring_And_Calls"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fb

    move-object/from16 v0, p0

    iget-object v3, v0, mMySpaceManager:Landroid/media/MySpaceManager;

    invoke-virtual {v3}, Landroid/media/MySpaceManager;->checkEnableCondition()Z

    move-result v3

    if-nez v3, :cond_fb

    .line 926
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 927
    move-object/from16 v0, p0

    iget-object v3, v0, mMySpaceManager:Landroid/media/MySpaceManager;

    move-object/from16 v0, p0

    iget-object v4, v0, mMySpaceManager:Landroid/media/MySpaceManager;

    iget-object v4, v4, Landroid/media/MySpaceManager;->mMusicAttributes:Landroid/media/AudioAttributes;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MySpaceManager;->playMySpaceEffect(Landroid/media/AudioAttributes;I)V

    .line 928
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, mIsMySpaceEffectFocus:Z

    .line 929
    invoke-direct/range {p0 .. p0}, addMySpaceEffectDelay()V

    .line 930
    const-string v3, "MediaFocusControl"

    const-string v4, "AudioFocus playMySpaceEffect MUSIC FADE OUT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_fb
    const/4 v3, 0x2

    move/from16 v0, p2

    if-eq v0, v3, :cond_132

    const/4 v3, 0x3

    move/from16 v0, p2

    if-eq v0, v3, :cond_132

    const/4 v3, 0x4

    move/from16 v0, p2

    if-eq v0, v3, :cond_132

    .line 938
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const v4, 0x186a0

    div-int v18, v3, v4

    .line 940
    .local v18, "userId":I
    move-object/from16 v0, p0

    iget-object v3, v0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_132

    move-object/from16 v0, p0

    iget-object v3, v0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getUserId()I

    move-result v3

    move/from16 v0, v18

    if-eq v3, v0, :cond_132

    .line 941
    invoke-virtual/range {p0 .. p0}, discardAudioFocusOwner()V

    .line 946
    .end local v18    # "userId":I
    :cond_132
    move-object/from16 v0, p0

    iget-object v3, v0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_1b7

    move-object/from16 v0, p0

    iget-object v3, v0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b7

    .line 949
    move-object/from16 v0, p0

    iget-object v3, v0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/audio/FocusRequester;

    .line 950
    .local v15, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v3

    move/from16 v0, p2

    if-ne v3, v0, :cond_1ab

    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v3

    move/from16 v0, p7

    if-ne v3, v0, :cond_1ab

    .line 953
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 954
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 959
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_180

    .line 960
    invoke-direct/range {p0 .. p0}, notifyTopOfAudioFocusStack()V

    .line 963
    :cond_180
    const/16 v17, 0x1

    monitor-exit v19

    goto/16 :goto_44

    .line 913
    .end local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :catch_185
    move-exception v13

    .line 915
    .local v13, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " binder death"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/16 v17, 0x0

    monitor-exit v19

    goto/16 :goto_44

    .line 967
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_1ab
    if-nez v14, :cond_1b7

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 970
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 975
    .end local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_1b7
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 977
    new-instance v2, Lcom/android/server/audio/FocusRequester;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p7

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p0

    invoke-direct/range {v2 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;)V

    .line 979
    .local v2, "nfr":Lcom/android/server/audio/FocusRequester;
    if-eqz v14, :cond_1f1

    .line 982
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I

    move-result v17

    .line 983
    .local v17, "requestResult":I
    if-eqz v17, :cond_1ee

    .line 984
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 986
    :cond_1ee
    monitor-exit v19

    goto/16 :goto_44

    .line 989
    .end local v17    # "requestResult":I
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v3, v0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_202

    .line 990
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, propagateFocusLossFromGain_syncAf(I)V

    .line 994
    :cond_202
    move-object/from16 v0, p0

    iget-object v3, v0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 999
    monitor-exit v19
    :try_end_214
    .catchall {:try_start_ba .. :try_end_214} :catchall_99

    .line 1002
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const v4, 0x186a0

    div-int v18, v3, v4

    .line 1003
    .restart local v18    # "userId":I
    const/16 v3, 0x64

    move/from16 v0, v18

    if-lt v0, v3, :cond_268

    .line 1004
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PersonaManager;

    .line 1005
    .local v16, "personaManager":Landroid/os/PersonaManager;
    if-eqz v16, :cond_268

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v3

    sget-object v4, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v3

    if-nez v3, :cond_268

    .line 1006
    const-string v3, "MediaFocusControl"

    const-string v4, "Persona is locked"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    move-object/from16 v0, p0

    iget-object v3, v0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_268

    move-object/from16 v0, p0

    iget-object v3, v0, mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getUserId()I

    move-result v3

    move/from16 v0, v18

    if-ne v3, v0, :cond_268

    .line 1008
    invoke-virtual/range {p0 .. p0}, discardAudioFocusOwner()V

    .line 1014
    .end local v16    # "personaManager":Landroid/os/PersonaManager;
    :cond_268
    const/16 v17, 0x1

    goto/16 :goto_44
.end method

.method protected setDuckingInExtPolicyAvailable(Z)V
    .registers 3
    .param p1, "available"    # Z

    .prologue
    .line 731
    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, mNotifyFocusOwnerOnDuck:Z

    .line 732
    return-void

    .line 731
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected setRemoteStreamVolume(I)V
    .registers 10
    .param p1, "vol"    # I

    .prologue
    .line 2450
    const/4 v3, -0x1

    .line 2451
    .local v3, "rccId":I
    iget-object v6, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v6

    .line 2452
    :try_start_4
    iget-object v5, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v5, v5, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_d

    .line 2453
    monitor-exit v6

    .line 2483
    :cond_c
    :goto_c
    return-void

    .line 2455
    :cond_d
    iget-object v5, p0, mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v3, v5, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    .line 2456
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_41

    .line 2457
    const/4 v4, 0x0

    .line 2458
    .local v4, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v6, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v6

    .line 2463
    :try_start_16
    iget-object v5, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "index":I
    :goto_1e
    if-ltz v1, :cond_30

    .line 2464
    iget-object v5, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v5, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 2466
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v5

    if-ne v5, v3, :cond_44

    .line 2467
    iget-object v4, v2, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_30
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_16 .. :try_end_30} :catch_47
    .catchall {:try_start_16 .. :try_end_30} :catchall_50

    .line 2475
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_30
    :goto_30
    :try_start_30
    monitor-exit v6
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_50

    .line 2476
    if-eqz v4, :cond_c

    .line 2478
    const/4 v5, 0x0

    :try_start_34
    invoke-interface {v4, v5, p1}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_c

    .line 2479
    :catch_38
    move-exception v0

    .line 2480
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "MediaFocusControl"

    const-string v6, "Error dispatching absolute volume update"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 2456
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :catchall_41
    move-exception v5

    :try_start_42
    monitor-exit v6
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v5

    .line 2463
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :cond_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    .line 2471
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_47
    move-exception v0

    .line 2473
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_48
    const-string v5, "MediaFocusControl"

    const-string v7, "Wrong index accessing media button stack, lock error? "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 2475
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_50
    move-exception v5

    monitor-exit v6
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_50

    throw v5
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 5
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 1059
    sget-object v1, mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1060
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, p1, v0, v2}, removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 1061
    monitor-exit v1

    .line 1062
    return-void

    .line 1061
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected unregisterMediaButtonEventReceiverForCalls()V
    .registers 3

    .prologue
    .line 1915
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 1917
    const-string v0, "MediaFocusControl"

    const-string v1, "Invalid permissions to unregister media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    :goto_11
    return-void

    .line 1920
    :cond_12
    iget-object v1, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1921
    const/4 v0, 0x0

    :try_start_16
    iput-object v0, p0, mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1922
    monitor-exit v1

    goto :goto_11

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method protected unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1878
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remote Control   unregisterMediaButtonIntent() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    iget-object v2, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1881
    :try_start_1b
    invoke-direct {p0, p1}, isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 1882
    .local v0, "topOfStackWillChange":Z
    invoke-direct {p0, p1}, removeMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;)V

    .line 1883
    if-eqz v0, :cond_29

    .line 1885
    const/16 v1, 0xf

    invoke-direct {p0, v1}, checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1887
    :cond_29
    monitor-exit v2

    .line 1888
    return-void

    .line 1887
    .end local v0    # "topOfStackWillChange":Z
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method protected unregisterMediaButtonIntentAsync(Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v3, 0x0

    .line 1891
    iget-object v0, p0, mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    iget-object v1, p0, mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1894
    return-void
.end method

.method protected unregisterPhoneStateListener(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2538
    iget-object v0, p0, mTmgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_16

    .line 2539
    iget-object v0, p0, mTmgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2540
    const/4 v0, -0x1

    iput v0, p0, mRilState:I

    .line 2541
    const-string v0, "MediaFocusControl"

    const-string v1, "call unregisterPhoneStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    :cond_16
    return-void
.end method

.method protected unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .registers 10
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;

    .prologue
    .line 1981
    const-string v4, "MediaFocusControl"

    const-string v5, "Unregister remote control client"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    iget-object v5, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 1983
    const/4 v3, 0x0

    .line 1985
    .local v3, "topRccChange":Z
    :try_start_b
    iget-object v4, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_13
    if-ltz v1, :cond_3b

    .line 1986
    iget-object v4, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 1987
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 1990
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->resetControllerInfoForNoRcc()V

    .line 1991
    iget-object v4, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I
    :try_end_35
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_35} :catch_49
    .catchall {:try_start_b .. :try_end_35} :catchall_52

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_44

    const/4 v3, 0x1

    .line 2000
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_3b
    :goto_3b
    if-eqz v3, :cond_42

    .line 2002
    const/16 v4, 0xf

    :try_start_3f
    invoke-direct {p0, v4}, checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 2004
    :cond_42
    monitor-exit v5

    .line 2005
    return-void

    .line 1991
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_44
    const/4 v3, 0x0

    goto :goto_3b

    .line 1985
    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 1996
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_49
    move-exception v0

    .line 1998
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 2004
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_52
    move-exception v4

    monitor-exit v5
    :try_end_54
    .catchall {:try_start_3f .. :try_end_54} :catchall_52

    throw v4
.end method

.method protected unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 11
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 2193
    const-string v6, "MediaFocusControl"

    const-string v7, "<<< unregisterRemoteControlDisplay"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    iget-object v7, p0, mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 2195
    if-nez p1, :cond_e

    .line 2196
    :try_start_c
    monitor-exit v7

    .line 2228
    :goto_d
    return-void

    .line 2199
    :cond_e
    const/4 v2, 0x0

    .line 2200
    .local v2, "displayWasPluggedIn":Z
    iget-object v6, p0, mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2201
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    if-nez v2, :cond_40

    .line 2202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 2203
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 2204
    const/4 v2, 0x1

    .line 2205
    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->release()V

    .line 2206
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    .line 2227
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "displayWasPluggedIn":Z
    :catchall_3d
    move-exception v6

    monitor-exit v7
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_3d

    throw v6

    .line 2210
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .restart local v2    # "displayWasPluggedIn":Z
    :cond_40
    if-eqz v2, :cond_6b

    .line 2213
    :try_start_42
    iget-object v6, p0, mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2214
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_48
    :goto_48
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 2215
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/PlayerRecord;

    .line 2216
    .local v4, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_57
    .catchall {:try_start_42 .. :try_end_57} :catchall_3d

    move-result-object v6

    if-eqz v6, :cond_48

    .line 2218
    :try_start_5a
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/media/IRemoteControlClient;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_61} :catch_62
    .catchall {:try_start_5a .. :try_end_61} :catchall_3d

    goto :goto_48

    .line 2219
    :catch_62
    move-exception v3

    .line 2220
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_63
    const-string v6, "MediaFocusControl"

    const-string v8, "Error disconnecting remote control display to client: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    .line 2227
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_6b
    monitor-exit v7
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_3d

    goto :goto_d
.end method
