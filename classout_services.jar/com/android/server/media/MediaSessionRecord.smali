.class public Lcom/android/server/media/MediaSessionRecord;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionRecord$MessageHandler;,
        Lcom/android/server/media/MediaSessionRecord$ControllerStub;,
        Lcom/android/server/media/MediaSessionRecord$SessionCb;,
        Lcom/android/server/media/MediaSessionRecord$SessionStub;
    }
.end annotation


# static fields
.field private static final ACTIVE_BUFFER:I = 0x7530

.field private static final DEBUG:Z = false

.field private static final OPTIMISTIC_VOLUME_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MediaSessionRecord"


# instance fields
.field private isRequestLockCalled:Z

.field private mAudioAttrs:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private final mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

.field private final mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

.field private final mControllerCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/session/ISessionControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentVolume:I

.field private mDestroyed:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:J

.field private final mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

.field private mIsActive:Z

.field private mLastActiveTime:J

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private final mLock:Ljava/lang/Object;

.field private final mLockForDualScreen:Ljava/lang/Object;

.field private mMaxVolume:I

.field private mMediaButtonReceiver:Landroid/app/PendingIntent;

.field private mMetadata:Landroid/media/MediaMetadata;

.field private mOptimisticVolume:I

.field private final mOwnerPid:I

.field private final mOwnerUid:I

.field private final mPackageName:Ljava/lang/String;

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private mQueue:Landroid/content/pm/ParceledListSlice;

.field private mQueueTitle:Ljava/lang/CharSequence;

.field private mRatingType:I

.field private final mService:Lcom/android/server/media/MediaSessionService;

.field private final mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

.field private final mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I

.field private mVolumeControlType:I

.field private mVolumeType:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionService;Landroid/os/Handler;)V
    .registers 12
    .param p1, "ownerPid"    # I
    .param p2, "ownerUid"    # I
    .param p3, "userId"    # I
    .param p4, "ownerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "service"    # Lcom/android/server/media/MediaSessionService;
    .param p8, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mControllerCallbacks:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLockForDualScreen:Ljava/lang/Object;

    .line 97
    iput-boolean v1, p0, isRequestLockCalled:Z

    .line 118
    iput v2, p0, mVolumeType:I

    .line 119
    const/4 v0, 0x2

    iput v0, p0, mVolumeControlType:I

    .line 120
    iput v1, p0, mMaxVolume:I

    .line 121
    iput v1, p0, mCurrentVolume:I

    .line 122
    const/4 v0, -0x1

    iput v0, p0, mOptimisticVolume:I

    .line 125
    iput-boolean v1, p0, mIsActive:Z

    .line 126
    iput-boolean v1, p0, mDestroyed:Z

    .line 712
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$3;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionRecord$3;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v0, p0, mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    .line 130
    iput p1, p0, mOwnerPid:I

    .line 131
    iput p2, p0, mOwnerUid:I

    .line 132
    iput p3, p0, mUserId:I

    .line 133
    iput-object p4, p0, mPackageName:Ljava/lang/String;

    .line 134
    iput-object p6, p0, mTag:Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v0, p0, mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    .line 136
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$SessionStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$1;)V

    iput-object v0, p0, mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    .line 137
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-direct {v0, p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V

    iput-object v0, p0, mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 138
    iput-object p7, p0, mService:Lcom/android/server/media/MediaSessionService;

    .line 139
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    invoke-virtual {p8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 140
    invoke-virtual {p7}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    .line 141
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 142
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, mAudioAttrs:Landroid/media/AudioAttributes;

    .line 143
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/media/MediaSessionRecord;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-wide v0, p0, mFlags:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/server/media/MediaSessionRecord;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # J

    .prologue
    .line 64
    iput-wide p1, p0, mFlags:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 64
    iput-object p1, p0, mMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mLaunchIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 64
    iput-object p1, p0, mLaunchIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mMetadata:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/media/MediaMetadata;

    .prologue
    .line 64
    iput-object p1, p0, mMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mPlaybackState:Landroid/media/session/PlaybackState;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 64
    iput-object p1, p0, mPlaybackState:Landroid/media/session/PlaybackState;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/media/MediaSessionRecord;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # J

    .prologue
    .line 64
    iput-wide p1, p0, mLastActiveTime:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/pm/ParceledListSlice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mQueue:Landroid/content/pm/ParceledListSlice;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/media/MediaSessionRecord;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 64
    iput-object p1, p0, mQueue:Landroid/content/pm/ParceledListSlice;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mQueueTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 64
    iput-object p1, p0, mQueueTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 64
    iput-object p1, p0, mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget v0, p0, mRatingType:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, mRatingType:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget v0, p0, mVolumeType:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, mVolumeType:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioAttributes;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mAudioAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/media/AudioAttributes;

    .prologue
    .line 64
    iput-object p1, p0, mAudioAttrs:Landroid/media/AudioAttributes;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget v0, p0, mVolumeControlType:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, mVolumeControlType:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget v0, p0, mMaxVolume:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, mMaxVolume:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/media/MediaSessionRecord;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-boolean v0, p0, mDestroyed:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/media/session/ISessionControllerCallback;

    .prologue
    .line 64
    invoke-direct {p0, p1}, getControllerCbIndexForCb(Landroid/media/session/ISessionControllerCallback;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mControllerCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget v0, p0, mOptimisticVolume:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mLockForDualScreen:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, mOptimisticVolume:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/media/MediaSessionRecord;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-boolean v0, p0, isRequestLockCalled:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/media/MediaSessionRecord;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, isRequestLockCalled:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    invoke-direct {p0}, getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    invoke-direct {p0}, pushMetadataUpdate()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    invoke-direct {p0}, pushPlaybackStateUpdate()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    invoke-direct {p0}, pushQueueUpdate()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    invoke-direct {p0}, pushQueueTitleUpdate()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    invoke-direct {p0}, pushExtrasUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget v0, p0, mCurrentVolume:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, mCurrentVolume:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    invoke-direct {p0}, pushSessionDestroyed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    invoke-direct {p0}, pushVolumeUpdate()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mService:Lcom/android/server/media/MediaSessionService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 64
    iget-object v0, p0, mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/media/MediaSessionRecord;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, mIsActive:Z

    return p1
.end method

.method private getControllerCbIndexForCb(Landroid/media/session/ISessionControllerCallback;)I
    .registers 5
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;

    .prologue
    .line 703
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 704
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_24

    .line 705
    iget-object v2, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/ISessionControllerCallback;

    invoke-interface {v2}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 709
    .end local v1    # "i":I
    :goto_20
    return v1

    .line 704
    .restart local v1    # "i":I
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 709
    :cond_24
    const/4 v1, -0x1

    goto :goto_20
.end method

.method private getShortMetadataString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 488
    iget-object v2, p0, mMetadata:Landroid/media/MediaMetadata;

    if-nez v2, :cond_29

    const/4 v1, 0x0

    .line 489
    .local v1, "fields":I
    :goto_5
    iget-object v2, p0, mMetadata:Landroid/media/MediaMetadata;

    if-nez v2, :cond_30

    const/4 v0, 0x0

    .line 491
    .local v0, "description":Landroid/media/MediaDescription;
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", description="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 488
    .end local v0    # "description":Landroid/media/MediaDescription;
    .end local v1    # "fields":I
    :cond_29
    iget-object v2, p0, mMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v2}, Landroid/media/MediaMetadata;->size()I

    move-result v1

    goto :goto_5

    .line 489
    .restart local v1    # "fields":I
    :cond_30
    iget-object v2, p0, mMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v2}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    goto :goto_a
.end method

.method private getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;
    .registers 21

    .prologue
    .line 670
    const-wide/16 v10, -0x1

    .line 671
    .local v10, "duration":J
    move-object/from16 v0, p0

    iget-object v6, v0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 672
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, mPlaybackState:Landroid/media/session/PlaybackState;

    .line 673
    .local v12, "state":Landroid/media/session/PlaybackState;
    move-object/from16 v0, p0

    iget-object v3, v0, mMetadata:Landroid/media/MediaMetadata;

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, mMetadata:Landroid/media/MediaMetadata;

    const-string v13, "android.media.metadata.DURATION"

    invoke-virtual {v3, v13}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, mMetadata:Landroid/media/MediaMetadata;

    const-string v13, "android.media.metadata.DURATION"

    invoke-virtual {v3, v13}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 676
    :cond_27
    monitor-exit v6
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_83

    .line 677
    const/4 v9, 0x0

    .line 678
    .local v9, "result":Landroid/media/session/PlaybackState;
    if-eqz v12, :cond_80

    .line 679
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_40

    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_40

    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_80

    .line 682
    :cond_40
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v14

    .line 683
    .local v14, "updateTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 684
    .local v7, "currentTime":J
    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-lez v3, :cond_80

    .line 685
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v3

    sub-long v16, v7, v14

    move-wide/from16 v0, v16

    long-to-float v6, v0

    mul-float/2addr v3, v6

    float-to-long v0, v3

    move-wide/from16 v16, v0

    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v18

    add-long v4, v16, v18

    .line 687
    .local v4, "position":J
    const-wide/16 v16, 0x0

    cmp-long v3, v10, v16

    if-ltz v3, :cond_86

    cmp-long v3, v4, v10

    if-lez v3, :cond_86

    .line 688
    move-wide v4, v10

    .line 692
    :cond_6c
    :goto_6c
    new-instance v2, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v2, v12}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    .line 693
    .local v2, "builder":Landroid/media/session/PlaybackState$Builder;
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v6

    invoke-virtual/range {v2 .. v8}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 695
    invoke-virtual {v2}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v9

    .line 699
    .end local v2    # "builder":Landroid/media/session/PlaybackState$Builder;
    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v14    # "updateTime":J
    :cond_80
    if-nez v9, :cond_8f

    .end local v12    # "state":Landroid/media/session/PlaybackState;
    :goto_82
    return-object v12

    .line 676
    .end local v9    # "result":Landroid/media/session/PlaybackState;
    :catchall_83
    move-exception v3

    :try_start_84
    monitor-exit v6
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v3

    .line 689
    .restart local v4    # "position":J
    .restart local v7    # "currentTime":J
    .restart local v9    # "result":Landroid/media/session/PlaybackState;
    .restart local v12    # "state":Landroid/media/session/PlaybackState;
    .restart local v14    # "updateTime":J
    :cond_86
    const-wide/16 v16, 0x0

    cmp-long v3, v4, v16

    if-gez v3, :cond_6c

    .line 690
    const-wide/16 v4, 0x0

    goto :goto_6c

    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v14    # "updateTime":J
    :cond_8f
    move-object v12, v9

    .line 699
    goto :goto_82
.end method

.method private postAdjustStreamVolume(IIILjava/lang/String;I)V
    .registers 14
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 478
    iget-object v7, p0, mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v0, Lcom/android/server/media/MediaSessionRecord$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionRecord$2;-><init>(Lcom/android/server/media/MediaSessionRecord;IIILjava/lang/String;I)V

    invoke-virtual {v7, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 485
    return-void
.end method

.method private postAdjustSuggestedStreamVolume(IIILjava/lang/String;I)V
    .registers 14
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 467
    iget-object v7, p0, mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v0, Lcom/android/server/media/MediaSessionRecord$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionRecord$1;-><init>(Lcom/android/server/media/MediaSessionRecord;IIILjava/lang/String;I)V

    invoke-virtual {v7, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 474
    return-void
.end method

.method private pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 627
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 628
    :try_start_3
    iget-boolean v3, p0, mDestroyed:Z

    if-eqz v3, :cond_9

    .line 629
    monitor-exit v4

    .line 643
    :goto_8
    return-void

    .line 631
    :cond_9
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_3c

    .line 632
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2f

    .line 634
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    invoke-interface {v0, p1, p2}, Landroid/media/session/ISessionControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1e
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_1e} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_32
    .catchall {:try_start_1b .. :try_end_1e} :catchall_2f

    .line 631
    :goto_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 635
    :catch_21
    move-exception v1

    .line 636
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_22
    const-string v3, "MediaSessionRecord"

    const-string v5, "Removing dead callback in pushEvent."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1e

    .line 642
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "i":I
    :catchall_2f
    move-exception v3

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_2f

    throw v3

    .line 638
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v2    # "i":I
    :catch_32
    move-exception v1

    .line 639
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_33
    const-string v3, "MediaSessionRecord"

    const-string/jumbo v5, "unexpected exception in pushEvent."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 642
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3c
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_2f

    goto :goto_8
.end method

.method private pushExtrasUpdate()V
    .registers 7

    .prologue
    .line 589
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 590
    :try_start_3
    iget-boolean v3, p0, mDestroyed:Z

    if-eqz v3, :cond_9

    .line 591
    monitor-exit v4

    .line 605
    :goto_8
    return-void

    .line 593
    :cond_9
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_3e

    .line 594
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_31

    .line 596
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    iget-object v3, p0, mExtras:Landroid/os/Bundle;

    invoke-interface {v0, v3}, Landroid/media/session/ISessionControllerCallback;->onExtrasChanged(Landroid/os/Bundle;)V
    :try_end_20
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_20} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_34
    .catchall {:try_start_1b .. :try_end_20} :catchall_31

    .line 593
    :goto_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 597
    :catch_23
    move-exception v1

    .line 598
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_24
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 599
    const-string v3, "MediaSessionRecord"

    const-string v5, "Removed dead callback in pushExtrasUpdate."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 604
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "i":I
    :catchall_31
    move-exception v3

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_31

    throw v3

    .line 600
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v2    # "i":I
    :catch_34
    move-exception v1

    .line 601
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_35
    const-string v3, "MediaSessionRecord"

    const-string/jumbo v5, "unexpected exception in pushExtrasUpdate."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 604
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_31

    goto :goto_8
.end method

.method private pushMetadataUpdate()V
    .registers 7

    .prologue
    .line 532
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 533
    :try_start_3
    iget-boolean v3, p0, mDestroyed:Z

    if-eqz v3, :cond_9

    .line 534
    monitor-exit v4

    .line 548
    :goto_8
    return-void

    .line 536
    :cond_9
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_3e

    .line 537
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_31

    .line 539
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    iget-object v3, p0, mMetadata:Landroid/media/MediaMetadata;

    invoke-interface {v0, v3}, Landroid/media/session/ISessionControllerCallback;->onMetadataChanged(Landroid/media/MediaMetadata;)V
    :try_end_20
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_20} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_34
    .catchall {:try_start_1b .. :try_end_20} :catchall_31

    .line 536
    :goto_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 540
    :catch_23
    move-exception v1

    .line 541
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_24
    const-string v3, "MediaSessionRecord"

    const-string v5, "Removing dead callback in pushMetadataUpdate. "

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_20

    .line 547
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "i":I
    :catchall_31
    move-exception v3

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_31

    throw v3

    .line 543
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v2    # "i":I
    :catch_34
    move-exception v1

    .line 544
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_35
    const-string v3, "MediaSessionRecord"

    const-string/jumbo v5, "unexpected exception in pushMetadataUpdate. "

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 547
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_31

    goto :goto_8
.end method

.method private pushPlaybackStateUpdate()V
    .registers 8

    .prologue
    .line 496
    iget-object v4, p0, mLockForDualScreen:Ljava/lang/Object;

    monitor-enter v4

    .line 497
    :try_start_3
    iget-boolean v3, p0, isRequestLockCalled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_34

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1d

    .line 499
    :try_start_8
    const-string v3, "MediaSessionRecord"

    const-string/jumbo v5, "mLockForDualScreen.wait(), before"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v3, p0, mLockForDualScreen:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 501
    const-string v3, "MediaSessionRecord"

    const-string/jumbo v5, "mLockForDualScreen.wait(), after"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_1d} :catch_2b
    .catchall {:try_start_8 .. :try_end_1d} :catchall_34

    .line 506
    :cond_1d
    :goto_1d
    :try_start_1d
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_34

    .line 508
    iget-object v4, p0, mLockForDualScreen:Ljava/lang/Object;

    monitor-enter v4

    .line 510
    :try_start_21
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_62

    .line 511
    :try_start_24
    iget-boolean v3, p0, mDestroyed:Z

    if-eqz v3, :cond_37

    .line 512
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_5f

    :try_start_29
    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_62

    .line 529
    :goto_2a
    return-void

    .line 502
    :catch_2b
    move-exception v1

    .line 503
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2c
    const-string v3, "MediaSessionRecord"

    const-string v5, "Interrupted in pushPlaybackStateUpdate"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 506
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_34
    move-exception v3

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_34

    throw v3

    .line 514
    :cond_37
    :try_start_37
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_3f
    if-ltz v2, :cond_6f

    .line 515
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_49
    .catchall {:try_start_37 .. :try_end_49} :catchall_5f

    .line 517
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_49
    iget-object v3, p0, mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-interface {v0, v3}, Landroid/media/session/ISessionControllerCallback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    :try_end_4e
    .catch Landroid/os/DeadObjectException; {:try_start_49 .. :try_end_4e} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4e} :catch_65
    .catchall {:try_start_49 .. :try_end_4e} :catchall_5f

    .line 514
    :goto_4e
    add-int/lit8 v2, v2, -0x1

    goto :goto_3f

    .line 518
    :catch_51
    move-exception v1

    .line 519
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_52
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 520
    const-string v3, "MediaSessionRecord"

    const-string v6, "Removed dead callback in pushPlaybackStateUpdate."

    invoke-static {v3, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 525
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "i":I
    :catchall_5f
    move-exception v3

    monitor-exit v5
    :try_end_61
    .catchall {:try_start_52 .. :try_end_61} :catchall_5f

    :try_start_61
    throw v3

    .line 527
    :catchall_62
    move-exception v3

    monitor-exit v4
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_62

    throw v3

    .line 521
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v2    # "i":I
    :catch_65
    move-exception v1

    .line 522
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_66
    const-string v3, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushPlaybackStateUpdate."

    invoke-static {v3, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 525
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6f
    monitor-exit v5
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_5f

    .line 527
    :try_start_70
    monitor-exit v4
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_62

    goto :goto_2a
.end method

.method private pushQueueTitleUpdate()V
    .registers 7

    .prologue
    .line 570
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 571
    :try_start_3
    iget-boolean v3, p0, mDestroyed:Z

    if-eqz v3, :cond_9

    .line 572
    monitor-exit v4

    .line 586
    :goto_8
    return-void

    .line 574
    :cond_9
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_3e

    .line 575
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_31

    .line 577
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    iget-object v3, p0, mQueueTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Landroid/media/session/ISessionControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_20
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_20} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_34
    .catchall {:try_start_1b .. :try_end_20} :catchall_31

    .line 574
    :goto_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 578
    :catch_23
    move-exception v1

    .line 579
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_24
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 580
    const-string v3, "MediaSessionRecord"

    const-string v5, "Removed dead callback in pushQueueTitleUpdate."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 585
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "i":I
    :catchall_31
    move-exception v3

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_31

    throw v3

    .line 581
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v2    # "i":I
    :catch_34
    move-exception v1

    .line 582
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_35
    const-string v3, "MediaSessionRecord"

    const-string/jumbo v5, "unexpected exception in pushQueueTitleUpdate."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 585
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_31

    goto :goto_8
.end method

.method private pushQueueUpdate()V
    .registers 7

    .prologue
    .line 551
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 552
    :try_start_3
    iget-boolean v3, p0, mDestroyed:Z

    if-eqz v3, :cond_9

    .line 553
    monitor-exit v4

    .line 567
    :goto_8
    return-void

    .line 555
    :cond_9
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_3e

    .line 556
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_31

    .line 558
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    iget-object v3, p0, mQueue:Landroid/content/pm/ParceledListSlice;

    invoke-interface {v0, v3}, Landroid/media/session/ISessionControllerCallback;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    :try_end_20
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_20} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_34
    .catchall {:try_start_1b .. :try_end_20} :catchall_31

    .line 555
    :goto_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 559
    :catch_23
    move-exception v1

    .line 560
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_24
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 561
    const-string v3, "MediaSessionRecord"

    const-string v5, "Removed dead callback in pushQueueUpdate."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 566
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "i":I
    :catchall_31
    move-exception v3

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_31

    throw v3

    .line 562
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v2    # "i":I
    :catch_34
    move-exception v1

    .line 563
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_35
    const-string v3, "MediaSessionRecord"

    const-string/jumbo v5, "unexpected exception in pushQueueUpdate."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 566
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_31

    goto :goto_8
.end method

.method private pushSessionDestroyed()V
    .registers 7

    .prologue
    .line 646
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 649
    :try_start_3
    iget-boolean v3, p0, mDestroyed:Z

    if-nez v3, :cond_9

    .line 650
    monitor-exit v4

    .line 666
    :goto_8
    return-void

    .line 652
    :cond_9
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_3c

    .line 653
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2f

    .line 655
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_1b
    invoke-interface {v0}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_1e
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_1e} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_32
    .catchall {:try_start_1b .. :try_end_1e} :catchall_2f

    .line 652
    :goto_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 656
    :catch_21
    move-exception v1

    .line 657
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_22
    const-string v3, "MediaSessionRecord"

    const-string v5, "Removing dead callback in pushEvent."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 658
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1e

    .line 665
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "i":I
    :catchall_2f
    move-exception v3

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_2f

    throw v3

    .line 659
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v2    # "i":I
    :catch_32
    move-exception v1

    .line 660
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_33
    const-string v3, "MediaSessionRecord"

    const-string/jumbo v5, "unexpected exception in pushEvent."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 664
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3c
    iget-object v3, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 665
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_2f

    goto :goto_8
.end method

.method private pushVolumeUpdate()V
    .registers 8

    .prologue
    .line 608
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 609
    :try_start_3
    iget-boolean v4, p0, mDestroyed:Z

    if-eqz v4, :cond_9

    .line 610
    monitor-exit v5

    .line 624
    :goto_8
    return-void

    .line 612
    :cond_9
    iget-object v4, p0, mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->getVolumeAttributes()Landroid/media/session/ParcelableVolumeInfo;

    move-result-object v3

    .line 613
    .local v3, "info":Landroid/media/session/ParcelableVolumeInfo;
    iget-object v4, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_17
    if-ltz v2, :cond_3c

    .line 614
    iget-object v4, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_30

    .line 616
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_21
    invoke-interface {v0, v3}, Landroid/media/session/ISessionControllerCallback;->onVolumeInfoChanged(Landroid/media/session/ParcelableVolumeInfo;)V
    :try_end_24
    .catch Landroid/os/DeadObjectException; {:try_start_21 .. :try_end_24} :catch_27
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_33
    .catchall {:try_start_21 .. :try_end_24} :catchall_30

    .line 613
    :goto_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 617
    :catch_27
    move-exception v1

    .line 618
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_28
    const-string v4, "MediaSessionRecord"

    const-string v6, "Removing dead callback in pushVolumeUpdate. "

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 623
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/media/session/ParcelableVolumeInfo;
    :catchall_30
    move-exception v4

    monitor-exit v5
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_30

    throw v4

    .line 619
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v2    # "i":I
    .restart local v3    # "info":Landroid/media/session/ParcelableVolumeInfo;
    :catch_33
    move-exception v1

    .line 620
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_34
    const-string v4, "MediaSessionRecord"

    const-string v6, "Unexpected exception in pushVolumeUpdate. "

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 623
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_30

    goto :goto_8
.end method


# virtual methods
.method public adjustVolume(IILjava/lang/String;IZ)V
    .registers 16
    .param p1, "direction"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "useSuggested"    # Z

    .prologue
    const/4 v3, 0x0

    .line 242
    and-int/lit8 v8, p2, 0x4

    .line 243
    .local v8, "previousFlagPlaySound":I
    invoke-virtual {p0, v3}, isPlaybackActive(Z)Z

    move-result v0

    if-nez v0, :cond_11

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 244
    :cond_11
    and-int/lit8 p2, p2, -0x5

    .line 246
    :cond_13
    iget v0, p0, mVolumeType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_44

    .line 247
    iget-object v0, p0, mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 249
    .local v1, "stream":I
    if-eqz p5, :cond_3b

    .line 250
    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_2f

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 251
    invoke-direct/range {v0 .. v5}, postAdjustSuggestedStreamVolume(IIILjava/lang/String;I)V

    .line 288
    .end local v1    # "stream":I
    :cond_2e
    :goto_2e
    return-void

    .line 253
    .restart local v1    # "stream":I
    :cond_2f
    or-int/2addr p2, v8

    .line 254
    const/high16 v3, -0x80000000

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, postAdjustSuggestedStreamVolume(IIILjava/lang/String;I)V

    goto :goto_2e

    :cond_3b
    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 258
    invoke-direct/range {v0 .. v5}, postAdjustStreamVolume(IIILjava/lang/String;I)V

    goto :goto_2e

    .line 261
    .end local v1    # "stream":I
    :cond_44
    iget v0, p0, mVolumeControlType:I

    if-eqz v0, :cond_2e

    .line 265
    const/16 v0, 0x65

    if-eq p1, v0, :cond_54

    const/16 v0, -0x64

    if-eq p1, v0, :cond_54

    const/16 v0, 0x64

    if-ne p1, v0, :cond_5c

    .line 268
    :cond_54
    const-string v0, "MediaSessionRecord"

    const-string v2, "Muting remote playback is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 271
    :cond_5c
    iget-object v0, p0, mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->adjustVolume(I)V

    .line 273
    iget v0, p0, mOptimisticVolume:I

    if-gez v0, :cond_96

    iget v9, p0, mCurrentVolume:I

    .line 274
    .local v9, "volumeBefore":I
    :goto_67
    add-int v0, v9, p1

    iput v0, p0, mOptimisticVolume:I

    .line 275
    iget v0, p0, mOptimisticVolume:I

    iget v2, p0, mMaxVolume:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, mOptimisticVolume:I

    .line 276
    iget-object v0, p0, mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 277
    iget-object v0, p0, mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    iget v0, p0, mOptimisticVolume:I

    if-eq v9, v0, :cond_90

    .line 279
    invoke-direct {p0}, pushVolumeUpdate()V

    .line 281
    :cond_90
    iget-object v0, p0, mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p2, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    goto :goto_2e

    .line 273
    .end local v9    # "volumeBefore":I
    :cond_96
    iget v9, p0, mOptimisticVolume:I

    goto :goto_67
.end method

.method public binderDied()V
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->sessionDied(Lcom/android/server/media/MediaSessionRecord;)V

    .line 414
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "indent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ownerPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mOwnerPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ownerUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mOwnerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "launchIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mLaunchIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mediaButtonReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mMediaButtonReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mIsActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, mFlags:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "rating type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mRatingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "controllers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v1, :cond_1fe

    const/4 v1, 0x0

    :goto_14a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "audioAttrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "volumeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mVolumeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", controlType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mVolumeControlType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mMaxVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCurrentVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "metadata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, getShortMetadataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "queueTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mQueueTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, mQueue:Landroid/content/pm/ParceledListSlice;

    if-nez v1, :cond_206

    const/4 v1, 0x0

    :goto_1f2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    return-void

    .line 451
    :cond_1fe
    iget-object v1, p0, mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_14a

    .line 456
    :cond_206
    iget-object v1, p0, mQueue:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1f2
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, mAudioAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getCallback()Landroid/media/session/ISessionCallback;
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    # getter for: Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->access$100(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;

    move-result-object v0

    return-object v0
.end method

.method public getControllerBinder()Landroid/media/session/ISessionController;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object v0
.end method

.method public getCurrentVolume()I
    .registers 2

    .prologue
    .line 394
    iget v0, p0, mCurrentVolume:I

    return v0
.end method

.method public getFlags()J
    .registers 3

    .prologue
    .line 196
    iget-wide v0, p0, mFlags:J

    return-wide v0
.end method

.method public getMaxVolume()I
    .registers 2

    .prologue
    .line 384
    iget v0, p0, mMaxVolume:I

    return v0
.end method

.method public getMediaButtonReceiver()Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, mMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getOptimisticVolume()I
    .registers 2

    .prologue
    .line 404
    iget v0, p0, mOptimisticVolume:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackType()I
    .registers 2

    .prologue
    .line 355
    iget v0, p0, mVolumeType:I

    return v0
.end method

.method public getSessionBinder()Landroid/media/session/ISession;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .prologue
    .line 215
    iget v0, p0, mUserId:I

    return v0
.end method

.method public getVolumeControl()I
    .registers 2

    .prologue
    .line 374
    iget v0, p0, mVolumeControlType:I

    return v0
.end method

.method public hasFlag(I)Z
    .registers 6
    .param p1, "flag"    # I

    .prologue
    .line 206
    iget-wide v0, p0, mFlags:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 324
    iget-boolean v0, p0, mIsActive:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, mDestroyed:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isPlaybackActive(Z)Z
    .registers 12
    .param p1, "includeRecentlyActive"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 336
    iget-object v5, p0, mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v5, :cond_f

    move v2, v3

    .line 337
    .local v2, "state":I
    :goto_7
    invoke-static {v2}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v5

    if-eqz v5, :cond_16

    move v3, v4

    .line 346
    :cond_e
    :goto_e
    return v3

    .line 336
    .end local v2    # "state":I
    :cond_f
    iget-object v5, p0, mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    goto :goto_7

    .line 340
    .restart local v2    # "state":I
    :cond_16
    if-eqz p1, :cond_e

    iget-object v5, p0, mPlaybackState:Landroid/media/session/PlaybackState;

    const/4 v5, 0x2

    if-ne v2, v5, :cond_e

    .line 341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, mLastActiveTime:J

    sub-long v0, v6, v8

    .line 342
    .local v0, "inactiveTime":J
    const-wide/16 v6, 0x7530

    cmp-long v5, v0, v6

    if-gez v5, :cond_e

    move v3, v4

    .line 343
    goto :goto_e
.end method

.method public isSystemPriority()Z
    .registers 5

    .prologue
    .line 225
    iget-wide v0, p0, mFlags:J

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTransportControlEnabled()Z
    .registers 2

    .prologue
    .line 408
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 421
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 422
    :try_start_3
    iget-boolean v0, p0, mDestroyed:Z

    if-eqz v0, :cond_9

    .line 423
    monitor-exit v1

    .line 428
    :goto_8
    return-void

    .line 425
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, mDestroyed:Z

    .line 426
    iget-object v0, p0, mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 427
    monitor-exit v1

    goto :goto_8

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;)V
    .registers 5
    .param p1, "ke"    # Landroid/view/KeyEvent;
    .param p2, "sequenceId"    # I
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 435
    iget-object v0, p0, mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    .line 436
    return-void
.end method

.method public setVolumeTo(IILjava/lang/String;I)V
    .registers 12
    .param p1, "value"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 291
    iget v0, p0, mVolumeType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    .line 292
    iget-object v0, p0, mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 293
    .local v1, "stream":I
    iget-object v0, p0, mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->setStreamVolumeForUid(IIILjava/lang/String;I)V

    .line 316
    .end local v1    # "stream":I
    :cond_15
    :goto_15
    return-void

    .line 295
    :cond_16
    iget v0, p0, mVolumeControlType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    .line 299
    iget v0, p0, mMaxVolume:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 300
    iget-object v0, p0, mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setVolumeTo(I)V

    .line 302
    iget v0, p0, mOptimisticVolume:I

    if-gez v0, :cond_59

    iget v6, p0, mCurrentVolume:I

    .line 303
    .local v6, "volumeBefore":I
    :goto_30
    iget v0, p0, mMaxVolume:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, mOptimisticVolume:I

    .line 304
    iget-object v0, p0, mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 305
    iget-object v0, p0, mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    iget v0, p0, mOptimisticVolume:I

    if-eq v6, v0, :cond_53

    .line 307
    invoke-direct {p0}, pushVolumeUpdate()V

    .line 309
    :cond_53
    iget-object v0, p0, mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p2, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    goto :goto_15

    .line 302
    .end local v6    # "volumeBefore":I
    :cond_59
    iget v6, p0, mOptimisticVolume:I

    goto :goto_30
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
