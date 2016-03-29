.class public Lcom/android/settings/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageMeasurement$1;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MainHandler;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final LOGV:Z

.field public static final URI_AUDIO_FILE:Landroid/net/Uri;

.field public static final URI_IMAGE_FILE:Landroid/net/Uri;

.field public static final URI_VIDEO_FILE:Landroid/net/Uri;

.field private static final sMeasureMediaTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvailSize:J

.field private final mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mMainHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MainHandler;

.field private final mMeasurementHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private mSystemMemSize:J

.field private mTotalSize:J

.field private final mVolume:Landroid/os/storage/VolumeInfo;

.field private totalMediaSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 80
    const-string v0, "StorageMeasurement"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    .line 84
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_AUDIO_FILE:Landroid/net/Uri;

    .line 85
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_IMAGE_FILE:Landroid/net/Uri;

    .line 86
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_VIDEO_FILE:Landroid/net/Uri;

    .line 99
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 103
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Android"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/VolumeInfo;
    .param p3, "sharedVolume"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->totalMediaSize:J

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    .line 195
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 196
    iput-object p3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    .line 199
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandlerThread:Landroid/os/HandlerThread;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 204
    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MainHandler;-><init>(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/settings/deviceinfo/StorageMeasurement$1;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMainHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MainHandler;

    .line 205
    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/android/settings/deviceinfo/StorageMeasurement;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    .line 206
    return-void
.end method

.method static synthetic access$100(Landroid/util/SparseLongArray;IJ)V
    .locals 0
    .param p0, "x0"    # Landroid/util/SparseLongArray;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 76
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/StorageMeasurement;->addValueIfKeyExists(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method static synthetic access$200(Landroid/util/SparseLongArray;IJ)V
    .locals 0
    .param p0, "x0"    # Landroid/util/SparseLongArray;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 76
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/StorageMeasurement;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/StorageMeasurement;)Lcom/android/settings/deviceinfo/StorageMeasurement$MainHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMainHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MainHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageMeasurement;
    .param p1, "x1"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->setMetaSize(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method private static addValue(Landroid/util/SparseLongArray;IJ)V
    .locals 2
    .param p0, "array"    # Landroid/util/SparseLongArray;
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 600
    return-void
.end method

.method private static addValueIfKeyExists(Landroid/util/SparseLongArray;IJ)V
    .locals 4
    .param p0, "array"    # Landroid/util/SparseLongArray;
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    .line 604
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 605
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {p0, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 607
    :cond_0
    return-void
.end method

.method private static getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 6
    .param p0, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 551
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v2

    .line 552
    .local v2, "size":J
    const-string v1, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDirectorySize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .end local v2    # "size":J
    :goto_0
    return-wide v2

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read memory from default container service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private invalidate()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 233
    return-void
.end method

.method private measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 36
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 410
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/UserManager;

    .line 411
    .local v30, "userManager":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 413
    .local v22, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {v30 .. v30}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v32

    .line 414
    .local v32, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v8

    .line 417
    .local v8, "currentProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v6}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    .line 418
    .local v6, "details":Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v7, 0x4

    invoke-virtual {v5, v7, v6}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 421
    .local v9, "finished":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 422
    :cond_0
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 520
    :cond_1
    :goto_0
    return-void

    .line 426
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 427
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/UserInfo;

    .line 428
    .local v14, "currentUserInfo":Landroid/content/pm/UserInfo;
    iget v0, v14, Landroid/content/pm/UserInfo;->id:I

    move/from16 v29, v0

    .line 429
    .local v29, "userId":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v13

    .line 430
    .local v13, "basePath":Ljava/io/File;
    new-instance v19, Ljava/util/HashMap;

    sget-object v5, Lcom/android/settings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 431
    .local v19, "mediaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v5, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Landroid/util/SparseArray;

    move/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    sget-object v5, Lcom/android/settings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 436
    .local v27, "type":Ljava/lang/String;
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-direct {v0, v13, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 437
    .local v23, "path":Ljava/io/File;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v24

    .line 438
    .local v24, "size":J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 442
    .end local v23    # "path":Ljava/io/File;
    .end local v24    # "size":J
    .end local v27    # "type":Ljava/lang/String;
    :cond_3
    iget-object v5, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->audioSize:Landroid/util/SparseLongArray;

    sget-object v7, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_AUDIO_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v7, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getMediaSize(Landroid/net/Uri;I)J

    move-result-wide v34

    move/from16 v0, v29

    move-wide/from16 v1, v34

    invoke-static {v5, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 444
    iget-object v5, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->imageSize:Landroid/util/SparseLongArray;

    sget-object v7, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_IMAGE_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v7, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getMediaSize(Landroid/net/Uri;I)J

    move-result-wide v34

    move/from16 v0, v29

    move-wide/from16 v1, v34

    invoke-static {v5, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 446
    iget-object v5, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->videoSize:Landroid/util/SparseLongArray;

    sget-object v7, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_VIDEO_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v7, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getMediaSize(Landroid/net/Uri;I)J

    move-result-wide v34

    move/from16 v0, v29

    move-wide/from16 v1, v34

    invoke-static {v5, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    .line 449
    iget-object v5, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-direct {v0, v1, v13, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;I)J

    move-result-wide v34

    move/from16 v0, v29

    move-wide/from16 v1, v34

    invoke-static {v5, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    goto/16 :goto_1

    .line 452
    .end local v13    # "basePath":Ljava/io/File;
    .end local v14    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v19    # "mediaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v29    # "userId":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_5

    .line 455
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/UserInfo;

    .line 456
    .local v28, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v0, v28

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v7}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v31

    .line 457
    .local v31, "userPath":Ljava/io/File;
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v24

    .line 458
    .restart local v24    # "size":J
    iget-object v5, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v0, v28

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    move-wide/from16 v0, v24

    invoke-static {v5, v7, v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    goto :goto_3

    .line 463
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v24    # "size":J
    .end local v28    # "user":Landroid/content/pm/UserInfo;
    .end local v31    # "userPath":Ljava/io/File;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v16

    .line 464
    .local v16, "file":Ljava/io/File;
    if-eqz v16, :cond_6

    .line 465
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v34

    move-wide/from16 v0, v34

    iput-wide v0, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    .line 469
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    .line 473
    .local v23, "path":Ljava/lang/String;
    :goto_4
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v26

    .line 474
    .local v26, "stats":[J
    const/4 v5, 0x0

    aget-wide v34, v26, v5

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    .line 475
    const/4 v5, 0x1

    aget-wide v34, v26, v5

    move-wide/from16 v0, v34

    iput-wide v0, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v26    # "stats":[J
    :goto_5
    iget-wide v0, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDeviceTotalSize(J)J

    move-result-wide v20

    .line 481
    .local v20, "mTempTotalSize":J
    iget-wide v0, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-wide/from16 v34, v0

    sub-long v34, v20, v34

    move-wide/from16 v0, v34

    iput-wide v0, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->systemSize:J

    .line 482
    move-wide/from16 v0, v20

    iput-wide v0, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->deviceTotalSize:J

    .line 483
    iget-wide v0, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->deviceTotalSize:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    .line 484
    iget-wide v0, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    .line 485
    iget-wide v0, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->systemSize:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->mSystemMemSize:J

    .line 490
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_c

    .line 491
    const/16 v5, 0x2200

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v12

    .line 495
    .local v12, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v33, "volumeApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 497
    .local v11, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 498
    move-object/from16 v0, v33

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 469
    .end local v11    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v20    # "mTempTotalSize":J
    .end local v23    # "path":Ljava/lang/String;
    .end local v33    # "volumeApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_8
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_4

    .line 476
    .restart local v23    # "path":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 477
    .local v15, "e":Ljava/lang/Exception;
    const-string v5, "StorageMeasurement"

    const-string v7, "Problem in container service"

    invoke-static {v5, v7, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 502
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v12    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v20    # "mTempTotalSize":J
    .restart local v33    # "volumeApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_9
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v7

    mul-int v10, v5, v7

    .line 503
    .local v10, "count":I
    if-nez v10, :cond_a

    .line 504
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 508
    :cond_a
    new-instance v4, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;

    const/4 v5, 0x1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;-><init>(ZLcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;ILjava/util/List;Landroid/os/Message;I)V

    .line 510
    .local v4, "observer":Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/UserInfo;

    .line 511
    .restart local v28    # "user":Landroid/content/pm/UserInfo;
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 512
    .restart local v11    # "app":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v28

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v7, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_7

    .line 517
    .end local v4    # "observer":Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;
    .end local v10    # "count":I
    .end local v11    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v28    # "user":Landroid/content/pm/UserInfo;
    .end local v33    # "volumeApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_c
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method private measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;I)J
    .locals 20
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "userId"    # I

    .prologue
    .line 561
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 562
    .local v6, "files":[Ljava/io/File;
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-wide/16 v10, 0x0

    .line 595
    :goto_0
    return-wide v10

    .line 565
    :cond_0
    const-wide/16 v10, 0x0

    .line 567
    .local v10, "miscSize":J
    move-object v2, v6

    .local v2, "arr$":[Ljava/io/File;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v3, v2, v7

    .line 568
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 569
    .local v12, "path":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 576
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 577
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v10, v10, v16

    .line 567
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 578
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 579
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-lez v13, :cond_1

    .line 583
    const-string v13, "/mnt/sdcard/extStorages"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 586
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v4

    .line 587
    .local v4, "dirSize":J
    add-long/2addr v10, v4

    goto :goto_2

    .line 591
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "dirSize":J
    .end local v9    # "name":Ljava/lang/String;
    .end local v12    # "path":Ljava/lang/String;
    :cond_3
    sget-object v13, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_IMAGE_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v13, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getMediaSize(Landroid/net/Uri;I)J

    move-result-wide v16

    sget-object v13, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_VIDEO_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v13, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getMediaSize(Landroid/net/Uri;I)J

    move-result-wide v18

    add-long v16, v16, v18

    sget-object v13, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_AUDIO_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v13, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getMediaSize(Landroid/net/Uri;I)J

    move-result-wide v18

    add-long v14, v16, v18

    .line 593
    .local v14, "totalMediaSize":J
    sub-long/2addr v10, v14

    .line 595
    goto :goto_0
.end method

.method private setMetaSize(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 12
    .param p1, "details"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 523
    iget-object v8, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    const-class v9, Landroid/os/UserManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 526
    .local v6, "userManager":Landroid/os/UserManager;
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 527
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 530
    .local v0, "currentProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v8, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 531
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 532
    .local v1, "currentUserInfo":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    .line 533
    .local v3, "userId":I
    iget-wide v8, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->deviceTotalSize:J

    iget-wide v10, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    sub-long/2addr v8, v10

    iget-wide v10, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->systemSize:J

    sub-long/2addr v8, v10

    iget-object v10, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->audioSize:Landroid/util/SparseLongArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iget-object v10, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->videoSize:Landroid/util/SparseLongArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iget-object v10, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->imageSize:Landroid/util/SparseLongArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iget-object v10, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iget-object v10, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iget-wide v10, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    sub-long v4, v8, v10

    .line 537
    .local v4, "metaSize":J
    const-string v8, "StorageMeasurement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "metaSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v8, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->metaSize:Landroid/util/SparseLongArray;

    invoke-static {v8, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    goto :goto_0

    .line 547
    .end local v1    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "userId":I
    .end local v4    # "metaSize":J
    :cond_0
    return-void
.end method


# virtual methods
.method public forceMeasure()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measure()V

    .line 217
    return-void
.end method

.method public getDeviceTotalSize(J)J
    .locals 13
    .param p1, "totalSize"    # J

    .prologue
    .line 686
    const/4 v4, 0x2

    .line 687
    .local v4, "power":I
    const-wide/16 v2, 0x0

    .line 689
    .local v2, "mTempTotalSize":J
    new-instance v5, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 690
    .local v5, "statFs":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v6

    add-long v0, p1, v6

    .line 693
    .local v0, "mRealTotalSize":J
    :goto_0
    const-wide/32 v6, 0x40000000

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    int-to-double v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-long v8, v8

    mul-long v2, v6, v8

    .line 695
    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    .line 702
    iput-wide v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    .line 703
    return-wide v2

    .line 698
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getMediaSize(Landroid/net/Uri;I)J
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 610
    const-wide/16 v10, 0x0

    .line 612
    .local v10, "size":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/storage/emulated/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 613
    .local v7, "INTERNAL_ROOT":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 614
    .local v8, "WHERE_ARG":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "SUM(_size)"

    aput-object v0, v2, v12

    .line 615
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 616
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 618
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 619
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 624
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 627
    :cond_1
    return-wide v10
.end method

.method public measure()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 220
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 223
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 227
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMeasurementHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 229
    return-void
.end method

.method public setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 212
    :cond_1
    return-void
.end method
