.class public Lcom/android/server/content/SyncStorageEngine;
.super Landroid/os/Handler;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;,
        Lcom/android/server/content/SyncStorageEngine$DayStats;,
        Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;,
        Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;,
        Lcom/android/server/content/SyncStorageEngine$EndPoint;,
        Lcom/android/server/content/SyncStorageEngine$AccountInfo;,
        Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_VERSION:I = 0x2

.field private static final DEFAULT_FLEX_PERCENT_SYNC:D = 0.04

.field private static final DEFAULT_MIN_FLEX_ALLOWED_SECS:J = 0x5L

.field private static final DEFAULT_POLL_FREQUENCY_SECONDS:J = 0x15180L

.field public static final EVENTS:[Ljava/lang/String;

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field public static final MAX_HISTORY:I = 0x64

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field static final MILLIS_IN_4WEEKS:J = 0x90321000L

.field private static final MSG_WRITE_STATISTICS:I = 0x2

.field private static final MSG_WRITE_STATUS:I = 0x1

.field public static final NOT_IN_BACKOFF_MODE:J = -0x1L

.field private static final PENDING_FINISH_TO_WRITE:I = 0x4

.field public static final PENDING_OPERATION_VERSION:I = 0x3

.field public static final SOURCES:[Ljava/lang/String;

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_PERIODIC:I = 0x4

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_SERVER:I = 0x0

.field public static final SOURCE_SERVICE:I = 0x5

.field public static final SOURCE_USER:I = 0x3

.field public static final STATISTICS_FILE_END:I = 0x0

.field public static final STATISTICS_FILE_ITEM:I = 0x65

.field public static final STATISTICS_FILE_ITEM_OLD:I = 0x64

.field public static final STATUS_FILE_END:I = 0x0

.field public static final STATUS_FILE_ITEM:I = 0x64

.field private static final SYNC_ENABLED_DEFAULT:Z = false

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final TAG_FILE:Ljava/lang/String; = "SyncManagerFile"

.field private static final WRITE_STATISTICS_DELAY:J = 0x1b7740L

.field private static final WRITE_STATUS_DELAY:J = 0x927c0L

.field private static final XML_ATTR_AUTHORITYID:Ljava/lang/String; = "authority_id"

.field private static final XML_ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ATTR_EXPEDITED:Ljava/lang/String; = "expedited"

.field private static final XML_ATTR_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listen-for-tickles"

.field private static final XML_ATTR_NEXT_AUTHORITY_ID:Ljava/lang/String; = "nextAuthorityId"

.field private static final XML_ATTR_REASON:Ljava/lang/String; = "reason"

.field private static final XML_ATTR_SOURCE:Ljava/lang/String; = "source"

.field private static final XML_ATTR_SYNC_RANDOM_OFFSET:Ljava/lang/String; = "offsetInSeconds"

.field private static final XML_ATTR_USER:Ljava/lang/String; = "user"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listenForTickles"

.field private static sAuthorityRenames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;


# instance fields
.field private final mAccountInfoFile:Landroid/util/AtomicFile;

.field private final mAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/AccountAndUser;",
            "Lcom/android/server/content/SyncStorageEngine$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthorities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCal:Ljava/util/Calendar;

.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/ISyncStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCurrentSyncs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

.field private mDefaultMasterSyncAutomatically:Z

.field private mMasterSyncAutomatically:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAuthorityId:I

.field private mNextHistoryId:I

.field private mNumPendingFinished:I

.field private final mPendingFile:Landroid/util/AtomicFile;

.field private final mPendingOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$PendingOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatisticsFile:Landroid/util/AtomicFile;

.field private final mStatusFile:Landroid/util/AtomicFile;

.field private final mSyncHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRandomOffset:I

.field private mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

.field private final mSyncStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private mYearInDays:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "START"

    aput-object v1, v0, v2

    const-string v1, "STOP"

    aput-object v1, v0, v3

    sput-object v0, EVENTS:[Ljava/lang/String;

    .line 132
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SERVER"

    aput-object v1, v0, v2

    const-string v1, "LOCAL"

    aput-object v1, v0, v3

    const-string v1, "POLL"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "USER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PERIODIC"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SERVICE"

    aput-object v2, v0, v1

    sput-object v0, SOURCES:[Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, sAuthorityRenames:Ljava/util/HashMap;

    .line 160
    sget-object v0, sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "contacts"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "calendar"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const/4 v0, 0x0

    sput-object v0, sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataDir"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 507
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 433
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    .line 436
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, mAccounts:Ljava/util/HashMap;

    .line 439
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mPendingOperations:Ljava/util/ArrayList;

    .line 442
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, mCurrentSyncs:Landroid/util/SparseArray;

    .line 445
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, mSyncStatus:Landroid/util/SparseArray;

    .line 448
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mSyncHistory:Ljava/util/ArrayList;

    .line 451
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 455
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, mServices:Landroid/util/ArrayMap;

    .line 458
    iput v3, p0, mNextAuthorityId:I

    .line 461
    const/16 v2, 0x1c

    new-array v2, v2, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    iput-object v2, p0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 499
    iput v3, p0, mNumPendingFinished:I

    .line 501
    iput v3, p0, mNextHistoryId:I

    .line 502
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 508
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 509
    sput-object p0, sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 511
    const-string v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, mCal:Ljava/util/Calendar;

    .line 513
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, mDefaultMasterSyncAutomatically:Z

    .line 516
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 517
    .local v1, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "sync"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 518
    .local v0, "syncDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 520
    invoke-direct {p0, v0}, maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V

    .line 522
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "accounts.xml"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, mAccountInfoFile:Landroid/util/AtomicFile;

    .line 523
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "status.bin"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, mStatusFile:Landroid/util/AtomicFile;

    .line 524
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "pending.xml"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, mPendingFile:Landroid/util/AtomicFile;

    .line 525
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "stats.bin"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, mStatisticsFile:Landroid/util/AtomicFile;

    .line 527
    invoke-direct {p0}, readAccountInfoLocked()V

    .line 528
    invoke-direct {p0}, readStatusLocked()V

    .line 529
    invoke-direct {p0}, readPendingOperationsLocked()V

    .line 530
    invoke-direct {p0}, readStatisticsLocked()V

    .line 531
    invoke-direct {p0}, readAndDeleteLegacyAccountInfoLocked()V

    .line 532
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 533
    invoke-direct {p0}, writeStatusLocked()V

    .line 534
    invoke-direct {p0}, writePendingOperationsLocked()V

    .line 535
    invoke-direct {p0}, writeStatisticsLocked()V

    .line 536
    return-void
.end method

.method private appendPendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)V
    .registers 10
    .param p1, "op"    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .prologue
    const/4 v7, 0x2

    .line 2660
    const-string v4, "SyncManagerFile"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2661
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Appending to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    :cond_27
    const/4 v2, 0x0

    .line 2665
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_28
    iget-object v4, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openAppend()Ljava/io/FileOutputStream;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_4b

    move-result-object v2

    .line 2675
    :try_start_2e
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2676
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2677
    invoke-direct {p0, p1, v3}, writePendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2678
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2679
    iget-object v4, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_47} :catch_5f
    .catchall {:try_start_2e .. :try_end_47} :catchall_72

    .line 2685
    :try_start_47
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_77

    .line 2688
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_4a
    return-void

    .line 2666
    :catch_4b
    move-exception v0

    .line 2667
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "SyncManagerFile"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 2668
    const-string v4, "SyncManager"

    const-string v5, "Failed append; writing full file"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    :cond_5b
    invoke-direct {p0}, writePendingOperationsLocked()V

    goto :goto_4a

    .line 2680
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5f
    move-exception v1

    .line 2681
    .local v1, "e1":Ljava/io/IOException;
    :try_start_60
    const-string v4, "SyncManager"

    const-string v5, "Error writing appending operation"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2682
    iget-object v4, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_6c
    .catchall {:try_start_60 .. :try_end_6c} :catchall_72

    .line 2685
    :try_start_6c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_4a

    .line 2686
    :catch_70
    move-exception v4

    goto :goto_4a

    .line 2684
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_72
    move-exception v4

    .line 2685
    :try_start_73
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_79

    .line 2686
    :goto_76
    throw v4

    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_77
    move-exception v4

    goto :goto_4a

    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_79
    move-exception v5

    goto :goto_76
.end method

.method public static calculateDefaultFlexTime(J)J
    .registers 6
    .param p0, "syncTimeSeconds"    # J

    .prologue
    .line 602
    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    .line 606
    const-wide/16 v0, 0x0

    .line 611
    :goto_8
    return-wide v0

    .line 607
    :cond_9
    const-wide/32 v0, 0x15180

    cmp-long v0, p0, v0

    if-gez v0, :cond_19

    .line 608
    long-to-double v0, p0

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v0, v2

    double-to-long v0, v0

    goto :goto_8

    .line 611
    :cond_19
    const-wide/16 v0, 0xd80

    goto :goto_8
.end method

.method private createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    .prologue
    .line 1710
    if-gez p2, :cond_b

    .line 1711
    iget p2, p0, mNextAuthorityId:I

    .line 1712
    iget v1, p0, mNextAuthorityId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mNextAuthorityId:I

    .line 1713
    const/4 p3, 0x1

    .line 1715
    :cond_b
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1716
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "created a new AuthorityInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_2d
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    .line 1719
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1720
    if-eqz p3, :cond_3c

    .line 1721
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 1723
    :cond_3c
    return-object v0
.end method

.method private createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    .registers 5
    .param p1, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1605
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v1}, getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    .line 1606
    .local v0, "syncStatusInfo":Landroid/content/SyncStatusInfo;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v1, p1}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V

    new-instance v2, Landroid/content/SyncStatusInfo;

    invoke-direct {v2, v0}, Landroid/content/SyncStatusInfo;-><init>(Landroid/content/SyncStatusInfo;)V

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private extrasToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2691
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_dd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2692
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v3, "extra"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2693
    const-string/jumbo v3, "name"

    invoke-interface {p1, v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2694
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2695
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_43

    .line 2696
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "long"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2697
    const-string/jumbo v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2718
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3c
    :goto_3c
    const-string/jumbo v3, "extra"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9

    .line 2698
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_43
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_5b

    .line 2699
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "integer"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2700
    const-string/jumbo v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3c

    .line 2701
    :cond_5b
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_72

    .line 2702
    const-string/jumbo v3, "type"

    const-string v4, "boolean"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2703
    const-string/jumbo v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3c

    .line 2704
    :cond_72
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_8a

    .line 2705
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "float"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2706
    const-string/jumbo v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3c

    .line 2707
    :cond_8a
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_a2

    .line 2708
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "double"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2709
    const-string/jumbo v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3c

    .line 2710
    :cond_a2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_ba

    .line 2711
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "string"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2712
    const-string/jumbo v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3c

    .line 2713
    :cond_ba
    instance-of v3, v2, Landroid/accounts/Account;

    if-eqz v3, :cond_3c

    .line 2714
    const-string/jumbo v3, "type"

    const-string v4, "account"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2715
    const-string/jumbo v4, "value1"

    move-object v3, v2

    check-cast v3, Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {p1, v5, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2716
    const-string/jumbo v3, "value2"

    check-cast v2, Landroid/accounts/Account;

    .end local v2    # "value":Ljava/lang/Object;
    iget-object v4, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_3c

    .line 2720
    .end local v1    # "key":Ljava/lang/String;
    :cond_dd
    return-void
.end method

.method private static flattenBundle(Landroid/os/Bundle;)[B
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2570
    const/4 v0, 0x0

    .line 2571
    .local v0, "flatData":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2573
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2574
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_11

    move-result-object v0

    .line 2576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2578
    return-object v0

    .line 2576
    :catchall_11
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 11
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 1629
    iget-boolean v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v5, :cond_59

    .line 1630
    iget-object v5, p0, mServices:Landroid/util/ArrayMap;

    iget-object v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1631
    .local v0, "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    const/4 v3, 0x0

    .line 1632
    .local v3, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_1b

    .line 1633
    iget v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1635
    .restart local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1b
    if-nez v3, :cond_58

    .line 1636
    if-eqz p2, :cond_57

    .line 1637
    const-string v5, "SyncManager"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 1638
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " No authority info found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    move-object v3, v4

    .line 1668
    .end local v0    # "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_58
    :goto_58
    return-object v3

    .line 1645
    :cond_59
    iget-boolean v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v5, :cond_ce

    .line 1646
    new-instance v2, Landroid/accounts/AccountAndUser;

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v2, v5, v6}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1647
    .local v2, "au":Landroid/accounts/AccountAndUser;
    iget-object v5, p0, mAccounts:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1648
    .local v1, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-nez v1, :cond_98

    .line 1649
    if-eqz p2, :cond_96

    .line 1650
    const-string v5, "SyncManager"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 1651
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": unknown account "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    move-object v3, v4

    .line 1654
    goto :goto_58

    .line 1656
    :cond_98
    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1657
    .restart local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v3, :cond_58

    .line 1658
    if-eqz p2, :cond_cc

    .line 1659
    const-string v5, "SyncManager"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 1660
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": unknown provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    move-object v3, v4

    .line 1663
    goto :goto_58

    .line 1667
    .end local v1    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v2    # "au":Landroid/accounts/AccountAndUser;
    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_ce
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Authority : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", invalid target"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 1668
    goto/16 :goto_58
.end method

.method private getCurrentDayLocked()I
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 1610
    iget-object v1, p0, mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1611
    iget-object v1, p0, mCal:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1612
    .local v0, "dayOfYear":I
    iget v1, p0, mYear:I

    iget-object v2, p0, mCal:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_3c

    .line 1613
    iget-object v1, p0, mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, mYear:I

    .line 1614
    iget-object v1, p0, mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1615
    iget-object v1, p0, mCal:Ljava/util/Calendar;

    iget v2, p0, mYear:I

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 1616
    iget-object v1, p0, mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, mYearInDays:I

    .line 1618
    :cond_3c
    iget v1, p0, mYearInDays:I

    add-int/2addr v1, v0

    return v1
.end method

.method private getCurrentSyncs(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1456
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1457
    :try_start_3
    invoke-direct {p0, p1}, getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1458
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method private getCurrentSyncsLocked(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1477
    iget-object v1, p0, mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1478
    .local v0, "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    if-nez v0, :cond_14

    .line 1479
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1480
    .restart local v0    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    iget-object v1, p0, mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1482
    :cond_14
    return-object v0
.end method

.method static getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 3
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2258
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 4
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2262
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 10
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    .prologue
    .line 1680
    const/4 v3, 0x0

    .line 1681
    .local v3, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-boolean v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v4, :cond_31

    .line 1682
    iget-object v4, p0, mServices:Landroid/util/ArrayMap;

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1683
    .local v0, "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    if-nez v0, :cond_1d

    .line 1684
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1685
    .restart local v0    # "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v4, p0, mServices:Landroid/util/ArrayMap;

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    :cond_1d
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1688
    .restart local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v3, :cond_30

    .line 1689
    invoke-direct {p0, p1, p2, p3}, createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 1690
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1705
    .end local v0    # "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    :cond_30
    :goto_30
    return-object v3

    .line 1692
    :cond_31
    iget-boolean v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v4, :cond_30

    .line 1693
    new-instance v2, Landroid/accounts/AccountAndUser;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v2, v4, v5}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1694
    .local v2, "au":Landroid/accounts/AccountAndUser;
    iget-object v4, p0, mAccounts:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1695
    .local v1, "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-nez v1, :cond_52

    .line 1696
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .end local v1    # "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    invoke-direct {v1, v2}, Lcom/android/server/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/AccountAndUser;)V

    .line 1697
    .restart local v1    # "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v4, p0, mAccounts:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    :cond_52
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1700
    .restart local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v3, :cond_30

    .line 1701
    invoke-direct {p0, p1, p2, p3}, createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 1702
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30
.end method

.method private getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .registers 4
    .param p1, "authorityId"    # I

    .prologue
    .line 1788
    iget-object v1, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStatusInfo;

    .line 1789
    .local v0, "status":Landroid/content/SyncStatusInfo;
    if-nez v0, :cond_14

    .line 1790
    new-instance v0, Landroid/content/SyncStatusInfo;

    .end local v0    # "status":Landroid/content/SyncStatusInfo;
    invoke-direct {v0, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 1791
    .restart local v0    # "status":Landroid/content/SyncStatusInfo;
    iget-object v1, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1793
    :cond_14
    return-object v0
.end method

.method public static getSingleton()Lcom/android/server/content/SyncStorageEngine;
    .registers 2

    .prologue
    .line 553
    sget-object v0, sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-nez v0, :cond_d

    .line 554
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_d
    sget-object v0, sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 543
    sget-object v1, sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v1, :cond_5

    .line 550
    :goto_4
    return-void

    .line 548
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 549
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine;

    invoke-direct {v1, p0, v0}, <init>(Landroid/content/Context;Ljava/io/File;)V

    sput-object v1, sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    goto :goto_4
.end method

.method private maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V
    .registers 4
    .param p1, "syncDir"    # Ljava/io/File;

    .prologue
    .line 1946
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "pending.bin"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1947
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1952
    :goto_e
    return-void

    .line 1950
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_e
.end method

.method private maybeMigrateSettingsForRenamedAuthorities()Z
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 1959
    const/4 v9, 0x0

    .line 1961
    .local v9, "writeNeeded":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1962
    .local v1, "authoritiesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v10, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1963
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v0, :cond_55

    .line 1964
    iget-object v10, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1966
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v10, :cond_21

    .line 1963
    :cond_1e
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1970
    :cond_21
    sget-object v10, sAuthorityRenames:Ljava/util/HashMap;

    iget-object v11, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1971
    .local v7, "newAuthorityName":Ljava/lang/String;
    if-eqz v7, :cond_1e

    .line 1977
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1981
    iget-boolean v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v10, :cond_1e

    .line 1986
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v11, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v8, v10, v7, v11}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1990
    .local v8, "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-string v10, "cleanup"

    invoke-direct {p0, v8, v10}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    if-nez v10, :cond_1e

    .line 1994
    const/4 v10, -0x1

    invoke-direct {p0, v8, v10, v13}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 1996
    .local v6, "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1997
    const/4 v9, 0x1

    goto :goto_1e

    .line 2000
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v7    # "newAuthorityName":Ljava/lang/String;
    .end local v8    # "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_55
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_59
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_76

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2001
    .local v3, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v11, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v12, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-direct {p0, v10, v11, v12, v13}, removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 2006
    const/4 v9, 0x1

    .line 2007
    goto :goto_59

    .line 2009
    .end local v3    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_76
    return v9
.end method

.method public static newTestInstance(Landroid/content/Context;)Lcom/android/server/content/SyncStorageEngine;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 539
    new-instance v0, Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p0, v1}, <init>(Landroid/content/Context;Ljava/io/File;)V

    return-object v0
.end method

.method private parseAuthority(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 20
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "version"    # I

    .prologue
    .line 2028
    const/4 v3, 0x0

    .line 2029
    .local v3, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v8, -0x1

    .line 2031
    .local v8, "id":I
    const/4 v14, 0x0

    :try_start_3
    const-string/jumbo v15, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_f} :catch_11f
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_f} :catch_12a

    move-result v8

    .line 2037
    :goto_10
    if-ltz v8, :cond_11e

    .line 2038
    const/4 v14, 0x0

    const-string v15, "authority"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2039
    .local v4, "authorityName":Ljava/lang/String;
    const/4 v14, 0x0

    const-string/jumbo v15, "enabled"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2040
    .local v7, "enabled":Ljava/lang/String;
    const/4 v14, 0x0

    const-string/jumbo v15, "syncable"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2041
    .local v11, "syncable":Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "account"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2042
    .local v1, "accountName":Ljava/lang/String;
    const/4 v14, 0x0

    const-string/jumbo v15, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2043
    .local v2, "accountType":Ljava/lang/String;
    const/4 v14, 0x0

    const-string/jumbo v15, "user"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2044
    .local v12, "user":Ljava/lang/String;
    const/4 v14, 0x0

    const-string/jumbo v15, "package"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2045
    .local v10, "packageName":Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "class"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2046
    .local v5, "className":Ljava/lang/String;
    if-nez v12, :cond_135

    const/4 v13, 0x0

    .line 2047
    .local v13, "userId":I
    :goto_62
    if-nez v2, :cond_6d

    if-nez v10, :cond_6d

    .line 2048
    const-string v2, "com.google"

    .line 2049
    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 2051
    :cond_6d
    move-object/from16 v0, p0

    iget-object v14, v0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v14, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2052
    .restart local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const-string v14, "SyncManagerFile"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_de

    .line 2053
    const-string v14, "SyncManagerFile"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Adding authority: account="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " accountType="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " auth="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " package="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " class="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " user="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " enabled="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " syncable="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    :cond_de
    if-nez v3, :cond_10c

    .line 2064
    const-string v14, "SyncManagerFile"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_f0

    .line 2065
    const-string v14, "SyncManagerFile"

    const-string v15, "Creating authority entry"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    :cond_f0
    if-eqz v1, :cond_13b

    if-eqz v4, :cond_13b

    .line 2069
    new-instance v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v14, Landroid/accounts/Account;

    invoke-direct {v14, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v14, v4, v13}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2077
    .local v9, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :goto_fe
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8, v14}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 2083
    if-lez p2, :cond_10c

    .line 2084
    iget-object v14, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 2087
    .end local v9    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_10c
    if-eqz v3, :cond_167

    .line 2088
    if-eqz v7, :cond_116

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_146

    :cond_116
    const/4 v14, 0x1

    :goto_117
    iput-boolean v14, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 2090
    if-nez v11, :cond_148

    const/4 v14, -0x1

    :goto_11c
    :try_start_11c
    iput v14, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_11e
    .catch Ljava/lang/NumberFormatException; {:try_start_11c .. :try_end_11e} :catch_14d

    .line 2110
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v4    # "authorityName":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v7    # "enabled":Ljava/lang/String;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "syncable":Ljava/lang/String;
    .end local v12    # "user":Ljava/lang/String;
    .end local v13    # "userId":I
    :cond_11e
    :goto_11e
    return-object v3

    .line 2032
    :catch_11f
    move-exception v6

    .line 2033
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v14, "SyncManager"

    const-string/jumbo v15, "error parsing the id of the authority"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 2034
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :catch_12a
    move-exception v6

    .line 2035
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v14, "SyncManager"

    const-string/jumbo v15, "the id of the authority is null"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 2046
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "accountName":Ljava/lang/String;
    .restart local v2    # "accountType":Ljava/lang/String;
    .restart local v4    # "authorityName":Ljava/lang/String;
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v7    # "enabled":Ljava/lang/String;
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "syncable":Ljava/lang/String;
    .restart local v12    # "user":Ljava/lang/String;
    :cond_135
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_62

    .line 2073
    .restart local v13    # "userId":I
    :cond_13b
    new-instance v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v14, Landroid/content/ComponentName;

    invoke-direct {v14, v10, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v14, v13}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/content/ComponentName;I)V

    .restart local v9    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    goto :goto_fe

    .line 2088
    .end local v9    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_146
    const/4 v14, 0x0

    goto :goto_117

    .line 2090
    :cond_148
    :try_start_148
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14b
    .catch Ljava/lang/NumberFormatException; {:try_start_148 .. :try_end_14b} :catch_14d

    move-result v14

    goto :goto_11c

    .line 2092
    :catch_14d
    move-exception v6

    .line 2095
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v14, "unknown"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15b

    .line 2096
    const/4 v14, -0x1

    iput v14, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_11e

    .line 2098
    :cond_15b
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_165

    const/4 v14, 0x1

    :goto_162
    iput v14, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_11e

    :cond_165
    const/4 v14, 0x0

    goto :goto_162

    .line 2104
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_167
    const-string v14, "SyncManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failure adding authority: account="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " auth="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " enabled="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " syncable="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11e
.end method

.method private parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 2159
    const-string/jumbo v5, "name"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2160
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v5, "type"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2161
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v5, "value1"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2162
    .local v3, "value1":Ljava/lang/String;
    const-string/jumbo v5, "value2"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2165
    .local v4, "value2":Ljava/lang/String;
    :try_start_1d
    const-string/jumbo v5, "long"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 2166
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p2, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2185
    :cond_2d
    :goto_2d
    return-void

    .line 2167
    :cond_2e
    const-string/jumbo v5, "integer"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 2168
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_3e} :catch_3f
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_3e} :catch_5a

    goto :goto_2d

    .line 2180
    :catch_3f
    move-exception v0

    .line 2181
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SyncManager"

    const-string/jumbo v6, "error parsing bundle value"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 2169
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_49
    :try_start_49
    const-string/jumbo v5, "double"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 2170
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p2, v1, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_59} :catch_3f
    .catch Ljava/lang/NullPointerException; {:try_start_49 .. :try_end_59} :catch_5a

    goto :goto_2d

    .line 2182
    :catch_5a
    move-exception v0

    .line 2183
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "SyncManager"

    const-string/jumbo v6, "error parsing bundle value"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 2171
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_64
    :try_start_64
    const-string/jumbo v5, "float"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 2172
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_2d

    .line 2173
    :cond_75
    const-string v5, "boolean"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 2174
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2d

    .line 2175
    :cond_85
    const-string/jumbo v5, "string"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 2176
    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 2177
    :cond_92
    const-string v5, "account"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 2178
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_a2} :catch_3f
    .catch Ljava/lang/NullPointerException; {:try_start_64 .. :try_end_a2} :catch_5a

    goto :goto_2d
.end method

.method private parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v7, 0x0

    .line 2013
    const-string/jumbo v5, "user"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2014
    .local v3, "user":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2016
    .local v4, "userId":I
    :try_start_9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_c} :catch_31

    move-result v4

    .line 2022
    :goto_d
    const-string/jumbo v5, "enabled"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2023
    .local v1, "enabled":Ljava/lang/String;
    if-eqz v1, :cond_1c

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    :cond_1c
    const/4 v2, 0x1

    .line 2024
    .local v2, "listen":Z
    :goto_1d
    iget-object v5, p0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2025
    return-void

    .line 2017
    .end local v1    # "enabled":Ljava/lang/String;
    .end local v2    # "listen":Z
    :catch_27
    move-exception v0

    .line 2018
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SyncManager"

    const-string/jumbo v6, "error parsing the user for listen-for-tickles"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 2019
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_31
    move-exception v0

    .line 2020
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "SyncManager"

    const-string/jumbo v6, "the user in listen-for-tickles is null"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 2023
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "enabled":Ljava/lang/String;
    :cond_3b
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;
    .registers 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .prologue
    const/4 v0, 0x0

    .line 2117
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2118
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "period"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2119
    .local v11, "periodValue":Ljava/lang/String;
    const-string/jumbo v1, "flex"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2123
    .local v10, "flexValue":Ljava/lang/String;
    :try_start_14
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_17} :catch_35
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_17} :catch_3f

    move-result-wide v4

    .line 2132
    .local v4, "period":J
    :try_start_18
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1b} :catch_49
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_1b} :catch_71

    move-result-wide v6

    .line 2144
    .local v6, "flextime":J
    :goto_1c
    iget-object v1, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v1, :cond_99

    .line 2145
    new-instance v0, Landroid/content/PeriodicSync;

    iget-object v1, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 2154
    .local v0, "periodicSync":Landroid/content/PeriodicSync;
    iget-object v1, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2155
    .end local v0    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v4    # "period":J
    .end local v6    # "flextime":J
    :goto_34
    return-object v0

    .line 2124
    :catch_35
    move-exception v8

    .line 2125
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string v1, "SyncManager"

    const-string/jumbo v2, "error parsing the period of a periodic sync"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 2127
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :catch_3f
    move-exception v8

    .line 2128
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string v1, "SyncManager"

    const-string/jumbo v2, "the period of a periodic sync is null"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 2133
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "period":J
    :catch_49
    move-exception v8

    .line 2134
    .local v8, "e":Ljava/lang/NumberFormatException;
    invoke-static {v4, v5}, calculateDefaultFlexTime(J)J

    move-result-wide v6

    .line 2135
    .restart local v6    # "flextime":J
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error formatting value parsed for periodic sync flex: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ", using default: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 2138
    .end local v6    # "flextime":J
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :catch_71
    move-exception v9

    .line 2139
    .local v9, "expected":Ljava/lang/NullPointerException;
    invoke-static {v4, v5}, calculateDefaultFlexTime(J)J

    move-result-wide v6

    .line 2140
    .restart local v6    # "flextime":J
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No flex time specified for this sync, using a default. period: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " flex: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 2151
    .end local v9    # "expected":Ljava/lang/NullPointerException;
    :cond_99
    const-string v1, "SyncManager"

    const-string v2, "Unknown target."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private readAccountInfoLocked()V
    .registers 24

    .prologue
    .line 1839
    const/4 v8, -0x1

    .line 1840
    .local v8, "highestAuthorityId":I
    const/4 v7, 0x0

    .line 1842
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    .line 1843
    const-string v19, "SyncManagerFile"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_38

    .line 1844
    const-string v19, "SyncManagerFile"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Reading "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    :cond_38
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 1847
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v19, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v19 .. v19}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v13, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1848
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 1849
    .local v6, "eventType":I
    :goto_4b
    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v6, v0, :cond_5c

    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_5c

    .line 1851
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_4b

    .line 1853
    :cond_5c
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_81

    .line 1854
    const-string v19, "SyncManager"

    const-string v20, "No initial accounts"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_69} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_69} :catch_200
    .catchall {:try_start_2 .. :try_end_69} :catchall_23a

    .line 1928
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mNextAuthorityId:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mNextAuthorityId:I

    .line 1929
    if-eqz v7, :cond_80

    .line 1931
    :try_start_7d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_2ab

    .line 1938
    .end local v6    # "eventType":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_80
    :goto_80
    return-void

    .line 1858
    .restart local v6    # "eventType":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_81
    :try_start_81
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1859
    .local v16, "tagName":Ljava/lang/String;
    const-string v19, "accounts"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_170

    .line 1860
    const/16 v19, 0x0

    const-string/jumbo v20, "listen-for-tickles"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1861
    .local v10, "listen":Ljava/lang/String;
    const/16 v19, 0x0

    const-string/jumbo v20, "version"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1864
    .local v18, "versionString":Ljava/lang/String;
    if-nez v18, :cond_18c

    const/16 v17, 0x0

    .line 1868
    .local v17, "version":I
    :goto_af
    const/16 v19, 0x0

    const-string/jumbo v20, "nextAuthorityId"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_bb} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_bb} :catch_200
    .catchall {:try_start_81 .. :try_end_bb} :catchall_23a

    move-result-object v11

    .line 1870
    .local v11, "nextIdString":Ljava/lang/String;
    if-nez v11, :cond_197

    const/4 v9, 0x0

    .line 1871
    .local v9, "id":I
    :goto_bf
    :try_start_bf
    move-object/from16 v0, p0

    iget v0, v0, mNextAuthorityId:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mNextAuthorityId:I
    :try_end_d1
    .catch Ljava/lang/NumberFormatException; {:try_start_bf .. :try_end_d1} :catch_2b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bf .. :try_end_d1} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_d1} :catch_200
    .catchall {:try_start_bf .. :try_end_d1} :catchall_23a

    .line 1875
    .end local v9    # "id":I
    :goto_d1
    const/16 v19, 0x0

    :try_start_d3
    const-string/jumbo v20, "offsetInSeconds"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_dd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d3 .. :try_end_dd} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_dd} :catch_200
    .catchall {:try_start_d3 .. :try_end_dd} :catchall_23a

    move-result-object v12

    .line 1877
    .local v12, "offsetString":Ljava/lang/String;
    if-nez v12, :cond_19d

    const/16 v19, 0x0

    :goto_e2
    :try_start_e2
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mSyncRandomOffset:I
    :try_end_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_e2 .. :try_end_e8} :catch_1a3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e2 .. :try_end_e8} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e8} :catch_200
    .catchall {:try_start_e2 .. :try_end_e8} :catchall_23a

    .line 1881
    :goto_e8
    :try_start_e8
    move-object/from16 v0, p0

    iget v0, v0, mSyncRandomOffset:I

    move/from16 v19, v0

    if-nez v19, :cond_10a

    .line 1882
    new-instance v15, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-direct {v15, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 1883
    .local v15, "random":Ljava/util/Random;
    const v19, 0x15180

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mSyncRandomOffset:I

    .line 1885
    .end local v15    # "random":Ljava/util/Random;
    :cond_10a
    move-object/from16 v0, p0

    iget-object v0, v0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    if-eqz v10, :cond_11a

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1d6

    :cond_11a
    const/16 v19, 0x1

    :goto_11c
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1886
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 1887
    const/4 v4, 0x0

    .line 1888
    .local v4, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v14, 0x0

    .line 1890
    .local v14, "periodicSync":Landroid/content/PeriodicSync;
    :cond_12f
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v6, v0, :cond_166

    .line 1891
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1892
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_253

    .line 1893
    const-string v19, "authority"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_226

    .line 1894
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v1}, parseAuthority(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v4

    .line 1895
    if-eqz v4, :cond_1da

    .line 1896
    const/4 v14, 0x0

    .line 1897
    iget v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v8, :cond_166

    .line 1898
    iget v8, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 1917
    :cond_166
    :goto_166
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_169
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e8 .. :try_end_169} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_169} :catch_200
    .catchall {:try_start_e8 .. :try_end_169} :catchall_23a

    move-result v6

    .line 1918
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_12f

    .line 1928
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v10    # "listen":Ljava/lang/String;
    .end local v11    # "nextIdString":Ljava/lang/String;
    .end local v12    # "offsetString":Ljava/lang/String;
    .end local v14    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v17    # "version":I
    .end local v18    # "versionString":Ljava/lang/String;
    :cond_170
    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, mNextAuthorityId:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mNextAuthorityId:I

    .line 1929
    if-eqz v7, :cond_187

    .line 1931
    :try_start_184
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_2ae

    .line 1937
    :cond_187
    :goto_187
    invoke-direct/range {p0 .. p0}, maybeMigrateSettingsForRenamedAuthorities()Z

    goto/16 :goto_80

    .line 1864
    .restart local v10    # "listen":Ljava/lang/String;
    .restart local v18    # "versionString":Ljava/lang/String;
    :cond_18c
    :try_start_18c
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_18f
    .catch Ljava/lang/NumberFormatException; {:try_start_18c .. :try_end_18f} :catch_192
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18c .. :try_end_18f} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_18f} :catch_200
    .catchall {:try_start_18c .. :try_end_18f} :catchall_23a

    move-result v17

    goto/16 :goto_af

    .line 1865
    :catch_192
    move-exception v5

    .line 1866
    .local v5, "e":Ljava/lang/NumberFormatException;
    const/16 v17, 0x0

    .restart local v17    # "version":I
    goto/16 :goto_af

    .line 1870
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v11    # "nextIdString":Ljava/lang/String;
    :cond_197
    :try_start_197
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_19a
    .catch Ljava/lang/NumberFormatException; {:try_start_197 .. :try_end_19a} :catch_2b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_197 .. :try_end_19a} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19a} :catch_200
    .catchall {:try_start_197 .. :try_end_19a} :catchall_23a

    move-result v9

    goto/16 :goto_bf

    .line 1877
    .restart local v12    # "offsetString":Ljava/lang/String;
    :cond_19d
    :try_start_19d
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1a0
    .catch Ljava/lang/NumberFormatException; {:try_start_19d .. :try_end_1a0} :catch_1a3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19d .. :try_end_1a0} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1a0} :catch_200
    .catchall {:try_start_19d .. :try_end_1a0} :catchall_23a

    move-result v19

    goto/16 :goto_e2

    .line 1878
    :catch_1a3
    move-exception v5

    .line 1879
    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    const/16 v19, 0x0

    :try_start_1a6
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mSyncRandomOffset:I
    :try_end_1ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a6 .. :try_end_1ac} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1ac} :catch_200
    .catchall {:try_start_1a6 .. :try_end_1ac} :catchall_23a

    goto/16 :goto_e8

    .line 1920
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "eventType":I
    .end local v10    # "listen":Ljava/lang/String;
    .end local v11    # "nextIdString":Ljava/lang/String;
    .end local v12    # "offsetString":Ljava/lang/String;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tagName":Ljava/lang/String;
    .end local v17    # "version":I
    .end local v18    # "versionString":Ljava/lang/String;
    :catch_1ae
    move-exception v5

    .line 1921
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1af
    const-string v19, "SyncManager"

    const-string v20, "Error reading accounts"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ba
    .catchall {:try_start_1af .. :try_end_1ba} :catchall_23a

    .line 1928
    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, mNextAuthorityId:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mNextAuthorityId:I

    .line 1929
    if-eqz v7, :cond_80

    .line 1931
    :try_start_1ce
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1d1
    .catch Ljava/io/IOException; {:try_start_1ce .. :try_end_1d1} :catch_1d3

    goto/16 :goto_80

    .line 1932
    :catch_1d3
    move-exception v19

    goto/16 :goto_80

    .line 1885
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "eventType":I
    .restart local v10    # "listen":Ljava/lang/String;
    .restart local v11    # "nextIdString":Ljava/lang/String;
    .restart local v12    # "offsetString":Ljava/lang/String;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "tagName":Ljava/lang/String;
    .restart local v17    # "version":I
    .restart local v18    # "versionString":Ljava/lang/String;
    :cond_1d6
    const/16 v19, 0x0

    goto/16 :goto_11c

    .line 1901
    .restart local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v14    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_1da
    const v19, 0x534e4554

    const/16 v20, 0x3

    :try_start_1df
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "26513719"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "Malformed authority"

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1fe
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1df .. :try_end_1fe} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_1df .. :try_end_1fe} :catch_200
    .catchall {:try_start_1df .. :try_end_1fe} :catchall_23a

    goto/16 :goto_166

    .line 1923
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "eventType":I
    .end local v10    # "listen":Ljava/lang/String;
    .end local v11    # "nextIdString":Ljava/lang/String;
    .end local v12    # "offsetString":Ljava/lang/String;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v16    # "tagName":Ljava/lang/String;
    .end local v17    # "version":I
    .end local v18    # "versionString":Ljava/lang/String;
    :catch_200
    move-exception v5

    .line 1924
    .local v5, "e":Ljava/io/IOException;
    if-nez v7, :cond_29e

    :try_start_203
    const-string v19, "SyncManager"

    const-string v20, "No initial accounts"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20a
    .catchall {:try_start_203 .. :try_end_20a} :catchall_23a

    .line 1928
    :goto_20a
    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, mNextAuthorityId:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mNextAuthorityId:I

    .line 1929
    if-eqz v7, :cond_80

    .line 1931
    :try_start_21e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_221
    .catch Ljava/io/IOException; {:try_start_21e .. :try_end_221} :catch_223

    goto/16 :goto_80

    .line 1932
    :catch_223
    move-exception v19

    goto/16 :goto_80

    .line 1904
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v6    # "eventType":I
    .restart local v10    # "listen":Ljava/lang/String;
    .restart local v11    # "nextIdString":Ljava/lang/String;
    .restart local v12    # "offsetString":Ljava/lang/String;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "periodicSync":Landroid/content/PeriodicSync;
    .restart local v16    # "tagName":Ljava/lang/String;
    .restart local v17    # "version":I
    .restart local v18    # "versionString":Ljava/lang/String;
    :cond_226
    :try_start_226
    const-string/jumbo v19, "listenForTickles"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_166

    .line 1905
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_238
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_226 .. :try_end_238} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_238} :catch_200
    .catchall {:try_start_226 .. :try_end_238} :catchall_23a

    goto/16 :goto_166

    .line 1928
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "eventType":I
    .end local v10    # "listen":Ljava/lang/String;
    .end local v11    # "nextIdString":Ljava/lang/String;
    .end local v12    # "offsetString":Ljava/lang/String;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v16    # "tagName":Ljava/lang/String;
    .end local v17    # "version":I
    .end local v18    # "versionString":Ljava/lang/String;
    :catchall_23a
    move-exception v19

    add-int/lit8 v20, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, mNextAuthorityId:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mNextAuthorityId:I

    .line 1929
    if-eqz v7, :cond_252

    .line 1931
    :try_start_24f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_252
    .catch Ljava/io/IOException; {:try_start_24f .. :try_end_252} :catch_2b1

    .line 1933
    :cond_252
    :goto_252
    throw v19

    .line 1907
    .restart local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v6    # "eventType":I
    .restart local v10    # "listen":Ljava/lang/String;
    .restart local v11    # "nextIdString":Ljava/lang/String;
    .restart local v12    # "offsetString":Ljava/lang/String;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "periodicSync":Landroid/content/PeriodicSync;
    .restart local v16    # "tagName":Ljava/lang/String;
    .restart local v17    # "version":I
    .restart local v18    # "versionString":Ljava/lang/String;
    :cond_253
    :try_start_253
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_276

    .line 1908
    const-string/jumbo v19, "periodicSync"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_166

    if-eqz v4, :cond_166

    .line 1909
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;

    move-result-object v14

    goto/16 :goto_166

    .line 1911
    :cond_276
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_166

    if-eqz v14, :cond_166

    .line 1912
    const-string/jumbo v19, "extra"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_166

    .line 1913
    iget-object v0, v14, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_29c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_253 .. :try_end_29c} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_253 .. :try_end_29c} :catch_200
    .catchall {:try_start_253 .. :try_end_29c} :catchall_23a

    goto/16 :goto_166

    .line 1925
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "eventType":I
    .end local v10    # "listen":Ljava/lang/String;
    .end local v11    # "nextIdString":Ljava/lang/String;
    .end local v12    # "offsetString":Ljava/lang/String;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v16    # "tagName":Ljava/lang/String;
    .end local v17    # "version":I
    .end local v18    # "versionString":Ljava/lang/String;
    .restart local v5    # "e":Ljava/io/IOException;
    :cond_29e
    :try_start_29e
    const-string v19, "SyncManager"

    const-string v20, "Error reading accounts"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a9
    .catchall {:try_start_29e .. :try_end_2a9} :catchall_23a

    goto/16 :goto_20a

    .line 1932
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v6    # "eventType":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2ab
    move-exception v19

    goto/16 :goto_80

    .restart local v16    # "tagName":Ljava/lang/String;
    :catch_2ae
    move-exception v19

    goto/16 :goto_187

    .end local v6    # "eventType":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tagName":Ljava/lang/String;
    :catch_2b1
    move-exception v20

    goto :goto_252

    .line 1872
    .restart local v6    # "eventType":I
    .restart local v10    # "listen":Ljava/lang/String;
    .restart local v11    # "nextIdString":Ljava/lang/String;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "tagName":Ljava/lang/String;
    .restart local v17    # "version":I
    .restart local v18    # "versionString":Ljava/lang/String;
    :catch_2b3
    move-exception v19

    goto/16 :goto_d1
.end method

.method private readAndDeleteLegacyAccountInfoLocked()V
    .registers 26

    .prologue
    .line 2272
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "syncmanager.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 2273
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_12

    .line 2395
    :cond_11
    :goto_11
    return-void

    .line 2276
    :cond_12
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 2277
    .local v21, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2279
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_19
    move-object/from16 v0, v21

    invoke-static {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_1e} :catch_2da

    move-result-object v3

    .line 2284
    :goto_1f
    if-eqz v3, :cond_11

    .line 2285
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_21b

    const/16 v17, 0x1

    .line 2288
    .local v17, "hasType":Z
    :goto_2b
    const-string v4, "SyncManagerFile"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 2289
    const-string v4, "SyncManagerFile"

    const-string v5, "Reading legacy sync accounts db"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    :cond_3b
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2292
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v4, "stats, status"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2293
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 2294
    .local v19, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "_id"

    const-string/jumbo v5, "status._id as _id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    const-string v4, "account"

    const-string/jumbo v5, "stats.account as account"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2296
    if-eqz v17, :cond_6b

    .line 2297
    const-string v4, "account_type"

    const-string/jumbo v5, "stats.account_type as account_type"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2299
    :cond_6b
    const-string v4, "authority"

    const-string/jumbo v5, "stats.authority as authority"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    const-string/jumbo v4, "totalElapsedTime"

    const-string/jumbo v5, "totalElapsedTime"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2301
    const-string/jumbo v4, "numSyncs"

    const-string/jumbo v5, "numSyncs"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    const-string/jumbo v4, "numSourceLocal"

    const-string/jumbo v5, "numSourceLocal"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    const-string/jumbo v4, "numSourcePoll"

    const-string/jumbo v5, "numSourcePoll"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2304
    const-string/jumbo v4, "numSourceServer"

    const-string/jumbo v5, "numSourceServer"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2305
    const-string/jumbo v4, "numSourceUser"

    const-string/jumbo v5, "numSourceUser"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2306
    const-string/jumbo v4, "lastSuccessSource"

    const-string/jumbo v5, "lastSuccessSource"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2307
    const-string/jumbo v4, "lastSuccessTime"

    const-string/jumbo v5, "lastSuccessTime"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    const-string/jumbo v4, "lastFailureSource"

    const-string/jumbo v5, "lastFailureSource"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2309
    const-string/jumbo v4, "lastFailureTime"

    const-string/jumbo v5, "lastFailureTime"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2310
    const-string/jumbo v4, "lastFailureMesg"

    const-string/jumbo v5, "lastFailureMesg"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2311
    const-string/jumbo v4, "pending"

    const-string/jumbo v5, "pending"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2313
    const-string/jumbo v4, "stats._id = status.stats_id"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2314
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2315
    .local v14, "c":Landroid/database/Cursor;
    :cond_10e
    :goto_10e
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_224

    .line 2316
    const-string v4, "account"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2317
    .local v10, "accountName":Ljava/lang/String;
    if-eqz v17, :cond_21f

    const-string v4, "account_type"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2319
    .local v11, "accountType":Ljava/lang/String;
    :goto_12a
    if-nez v11, :cond_12e

    .line 2320
    const-string v11, "com.google"

    .line 2322
    :cond_12e
    const-string v4, "authority"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2323
    .local v13, "authorityName":Ljava/lang/String;
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {v4, v5, v13, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v12

    .line 2330
    .local v12, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v12, :cond_10e

    .line 2331
    move-object/from16 v0, p0

    iget-object v4, v0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 2332
    .local v18, "i":I
    const/16 v16, 0x0

    .line 2333
    .local v16, "found":Z
    const/16 v23, 0x0

    .line 2334
    .local v23, "st":Landroid/content/SyncStatusInfo;
    :cond_159
    if-lez v18, :cond_173

    .line 2335
    add-int/lit8 v18, v18, -0x1

    .line 2336
    move-object/from16 v0, p0

    iget-object v4, v0, mSyncStatus:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "st":Landroid/content/SyncStatusInfo;
    check-cast v23, Landroid/content/SyncStatusInfo;

    .line 2337
    .restart local v23    # "st":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v23

    iget v4, v0, Landroid/content/SyncStatusInfo;->authorityId:I

    iget v5, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-ne v4, v5, :cond_159

    .line 2338
    const/16 v16, 0x1

    .line 2342
    :cond_173
    if-nez v16, :cond_189

    .line 2343
    new-instance v23, Landroid/content/SyncStatusInfo;

    .end local v23    # "st":Landroid/content/SyncStatusInfo;
    iget v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 2344
    .restart local v23    # "st":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, mSyncStatus:Landroid/util/SparseArray;

    iget v5, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2346
    :cond_189
    const-string/jumbo v4, "totalElapsedTime"

    invoke-static {v14, v4}, getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v23

    iput-wide v4, v0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 2347
    const-string/jumbo v4, "numSyncs"

    invoke-static {v14, v4}, getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 2348
    const-string/jumbo v4, "numSourceLocal"

    invoke-static {v14, v4}, getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    .line 2349
    const-string/jumbo v4, "numSourcePoll"

    invoke-static {v14, v4}, getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    .line 2350
    const-string/jumbo v4, "numSourceServer"

    invoke-static {v14, v4}, getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    .line 2351
    const-string/jumbo v4, "numSourceUser"

    invoke-static {v14, v4}, getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    .line 2352
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    .line 2353
    const-string/jumbo v4, "lastSuccessSource"

    invoke-static {v14, v4}, getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 2354
    const-string/jumbo v4, "lastSuccessTime"

    invoke-static {v14, v4}, getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v23

    iput-wide v4, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 2355
    const-string/jumbo v4, "lastFailureSource"

    invoke-static {v14, v4}, getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 2356
    const-string/jumbo v4, "lastFailureTime"

    invoke-static {v14, v4}, getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v23

    iput-wide v4, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 2357
    const-string/jumbo v4, "lastFailureMesg"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 2358
    const-string/jumbo v4, "pending"

    invoke-static {v14, v4}, getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_222

    const/4 v4, 0x1

    :goto_215
    move-object/from16 v0, v23

    iput-boolean v4, v0, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_10e

    .line 2285
    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v13    # "authorityName":Ljava/lang/String;
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v16    # "found":Z
    .end local v17    # "hasType":Z
    .end local v18    # "i":I
    .end local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "st":Landroid/content/SyncStatusInfo;
    :cond_21b
    const/16 v17, 0x0

    goto/16 :goto_2b

    .line 2317
    .restart local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v10    # "accountName":Ljava/lang/String;
    .restart local v14    # "c":Landroid/database/Cursor;
    .restart local v17    # "hasType":Z
    .restart local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_21f
    const/4 v11, 0x0

    goto/16 :goto_12a

    .line 2358
    .restart local v11    # "accountType":Ljava/lang/String;
    .restart local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v13    # "authorityName":Ljava/lang/String;
    .restart local v16    # "found":Z
    .restart local v18    # "i":I
    .restart local v23    # "st":Landroid/content/SyncStatusInfo;
    :cond_222
    const/4 v4, 0x0

    goto :goto_215

    .line 2362
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v13    # "authorityName":Ljava/lang/String;
    .end local v16    # "found":Z
    .end local v18    # "i":I
    .end local v23    # "st":Landroid/content/SyncStatusInfo;
    :cond_224
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2365
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2366
    .restart local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v4, "settings"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2367
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2368
    :cond_23c
    :goto_23c
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2c8

    .line 2369
    const-string/jumbo v4, "name"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 2370
    .local v20, "name":Ljava/lang/String;
    const-string/jumbo v4, "value"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 2371
    .local v24, "value":Ljava/lang/String;
    if-eqz v20, :cond_23c

    .line 2372
    const-string/jumbo v4, "listen_for_tickles"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_277

    .line 2373
    if-eqz v24, :cond_26d

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_275

    :cond_26d
    const/4 v4, 0x1

    :goto_26e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, setMasterSyncAutomatically(ZI)V

    goto :goto_23c

    :cond_275
    const/4 v4, 0x0

    goto :goto_26e

    .line 2374
    :cond_277
    const-string/jumbo v4, "sync_provider_"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23c

    .line 2375
    const-string/jumbo v4, "sync_provider_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 2377
    .local v22, "provider":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 2378
    .restart local v18    # "i":I
    :cond_29b
    :goto_29b
    if-lez v18, :cond_23c

    .line 2379
    add-int/lit8 v18, v18, -0x1

    .line 2380
    move-object/from16 v0, p0

    iget-object v4, v0, mAuthorities:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2381
    .restart local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29b

    .line 2382
    if-eqz v24, :cond_2bf

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c6

    :cond_2bf
    const/4 v4, 0x1

    :goto_2c0
    iput-boolean v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 2383
    const/4 v4, 0x1

    iput v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_29b

    .line 2382
    :cond_2c6
    const/4 v4, 0x0

    goto :goto_2c0

    .line 2389
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v18    # "i":I
    .end local v20    # "name":Ljava/lang/String;
    .end local v22    # "provider":Ljava/lang/String;
    .end local v24    # "value":Ljava/lang/String;
    :cond_2c8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2391
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2393
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_11

    .line 2281
    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v17    # "hasType":Z
    .end local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2da
    move-exception v4

    goto/16 :goto_1f
.end method

.method private readPendingOperationsLocked()V
    .registers 18

    .prologue
    .line 2473
    const/4 v10, 0x0

    .line 2474
    .local v10, "fis":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v5, v0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_20

    .line 2475
    const-string v5, "SyncManagerFile"

    const/4 v15, 0x2

    invoke-static {v5, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 2476
    const-string v5, "SyncManagerFile"

    const-string v15, "No pending operation file."

    invoke-static {v5, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    :cond_1f
    :goto_1f
    return-void

    .line 2481
    :cond_20
    :try_start_20
    move-object/from16 v0, p0

    iget-object v5, v0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    .line 2482
    const-string v5, "SyncManagerFile"

    const/4 v15, 0x2

    invoke-static {v5, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 2483
    const-string v5, "SyncManagerFile"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Reading "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, mPendingFile:Landroid/util/AtomicFile;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    :cond_53
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 2487
    .local v11, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v10, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2489
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 2490
    .local v9, "eventType":I
    :goto_64
    const/4 v5, 0x2

    if-eq v9, v5, :cond_6f

    const/4 v5, 0x1

    if-eq v9, v5, :cond_6f

    .line 2492
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_6d} :catch_1f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_6d} :catch_221
    .catchall {:try_start_20 .. :try_end_6d} :catchall_23c

    move-result v9

    goto :goto_64

    .line 2494
    :cond_6f
    const/4 v5, 0x1

    if-ne v9, v5, :cond_7a

    .line 2561
    if-eqz v10, :cond_1f

    .line 2563
    :try_start_74
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_1f

    .line 2564
    :catch_78
    move-exception v5

    goto :goto_1f

    .line 2497
    :cond_7a
    const/4 v12, 0x0

    .line 2498
    .local v12, "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    const/4 v5, 0x2

    if-ne v9, v5, :cond_21e

    .line 2500
    :try_start_7e
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2501
    .local v13, "tagName":Ljava/lang/String;
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    const/4 v15, 0x1

    if-ne v5, v15, :cond_205

    const-string/jumbo v5, "op"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_205

    .line 2503
    const/4 v5, 0x0

    const-string/jumbo v15, "version"

    invoke-interface {v11, v5, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2505
    .local v14, "versionString":Ljava/lang/String;
    if-eqz v14, :cond_a3

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v15, 0x3

    if-eq v5, v15, :cond_dd

    .line 2507
    :cond_a3
    const-string v5, "SyncManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown pending operation version "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    new-instance v5, Ljava/io/IOException;

    const-string v15, "Unknown version."

    invoke-direct {v5, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_7e .. :try_end_c3} :catch_c3
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_c3} :catch_1f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7e .. :try_end_c3} :catch_221
    .catchall {:try_start_7e .. :try_end_c3} :catchall_23c

    .line 2548
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "versionString":Ljava/lang/String;
    :catch_c3
    move-exception v8

    move-object v1, v12

    .line 2549
    .end local v12    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .local v1, "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .local v8, "e":Ljava/lang/NumberFormatException;
    :goto_c5
    :try_start_c5
    const-string v5, "SyncManager"

    const-string v15, "Invalid data in xml file."

    invoke-static {v5, v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2552
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_cc
    :goto_cc
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_cf} :catch_1f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c5 .. :try_end_cf} :catch_221
    .catchall {:try_start_c5 .. :try_end_cf} :catchall_23c

    move-result v9

    .line 2553
    const/4 v5, 0x1

    if-ne v9, v5, :cond_7a

    .line 2561
    if-eqz v10, :cond_1f

    .line 2563
    :try_start_d5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_da

    goto/16 :goto_1f

    .line 2564
    :catch_da
    move-exception v5

    goto/16 :goto_1f

    .line 2510
    .end local v1    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v12    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v14    # "versionString":Ljava/lang/String;
    :cond_dd
    const/4 v5, 0x0

    :try_start_de
    const-string v15, "authority_id"

    invoke-interface {v11, v5, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2512
    .local v7, "authorityId":I
    const/4 v5, 0x0

    const-string/jumbo v15, "expedited"

    invoke-interface {v11, v5, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 2514
    .local v6, "expedited":Z
    const/4 v5, 0x0

    const-string/jumbo v15, "source"

    invoke-interface {v11, v5, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2516
    .local v4, "syncSource":I
    const/4 v5, 0x0

    const-string/jumbo v15, "reason"

    invoke-interface {v11, v5, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2518
    .local v3, "reason":I
    move-object/from16 v0, p0

    iget-object v5, v0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2519
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const-string v5, "SyncManagerFile"

    const/4 v15, 0x2

    invoke-static {v5, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_15f

    .line 2520
    const-string v5, "SyncManagerFile"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    :cond_15f
    if-eqz v2, :cond_1c9

    .line 2524
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncStorageEngine$PendingOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;IILandroid/os/Bundle;Z)V
    :try_end_16b
    .catch Ljava/lang/NumberFormatException; {:try_start_de .. :try_end_16b} :catch_c3
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_16b} :catch_1f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_de .. :try_end_16b} :catch_221
    .catchall {:try_start_de .. :try_end_16b} :catchall_23c

    .line 2526
    .end local v12    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v1    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    const/4 v5, 0x0

    :try_start_16c
    iput-object v5, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    .line 2527
    move-object/from16 v0, p0

    iget-object v5, v0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2528
    const-string v5, "SyncManagerFile"

    const/4 v15, 0x2

    invoke-static {v5, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 2529
    const-string v5, "SyncManagerFile"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Adding pending op: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " src="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " reason="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " expedited="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-boolean v0, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cc

    .line 2548
    :catch_1c6
    move-exception v8

    goto/16 :goto_c5

    .line 2537
    .end local v1    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v12    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :cond_1c9
    const/4 v1, 0x0

    .line 2538
    .end local v12    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v1    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    const-string v5, "SyncManagerFile"

    const/4 v15, 0x2

    invoke-static {v5, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 2539
    const-string v5, "SyncManagerFile"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No authority found for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", skipping"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f1
    .catch Ljava/lang/NumberFormatException; {:try_start_16c .. :try_end_1f1} :catch_1c6
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_1f1} :catch_1f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16c .. :try_end_1f1} :catch_221
    .catchall {:try_start_16c .. :try_end_1f1} :catchall_23c

    goto/16 :goto_cc

    .line 2554
    .end local v1    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v3    # "reason":I
    .end local v4    # "syncSource":I
    .end local v6    # "expedited":Z
    .end local v7    # "authorityId":I
    .end local v9    # "eventType":I
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "versionString":Ljava/lang/String;
    :catch_1f3
    move-exception v8

    .line 2555
    .local v8, "e":Ljava/io/IOException;
    :try_start_1f4
    const-string v5, "SyncManagerFile"

    const-string v15, "Error reading pending data."

    invoke-static {v5, v15, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1fb
    .catchall {:try_start_1f4 .. :try_end_1fb} :catchall_23c

    .line 2561
    if-eqz v10, :cond_1f

    .line 2563
    :try_start_1fd
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_200
    .catch Ljava/io/IOException; {:try_start_1fd .. :try_end_200} :catch_202

    goto/16 :goto_1f

    .line 2564
    :catch_202
    move-exception v5

    goto/16 :goto_1f

    .line 2543
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v9    # "eventType":I
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_205
    :try_start_205
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    const/4 v15, 0x2

    if-ne v5, v15, :cond_21e

    if-eqz v12, :cond_21e

    const-string/jumbo v5, "extra"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21e

    .line 2546
    iget-object v5, v12, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v5}, parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_21e
    .catch Ljava/lang/NumberFormatException; {:try_start_205 .. :try_end_21e} :catch_c3
    .catch Ljava/io/IOException; {:try_start_205 .. :try_end_21e} :catch_1f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_205 .. :try_end_21e} :catch_221
    .catchall {:try_start_205 .. :try_end_21e} :catchall_23c

    .end local v13    # "tagName":Ljava/lang/String;
    :cond_21e
    move-object v1, v12

    .end local v12    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v1    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    goto/16 :goto_cc

    .line 2556
    .end local v1    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .end local v9    # "eventType":I
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_221
    move-exception v8

    .line 2557
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_222
    const-string v5, "SyncManagerFile"

    const/4 v15, 0x2

    invoke-static {v5, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_232

    .line 2558
    const-string v5, "SyncManagerFile"

    const-string v15, "Error parsing pending ops xml."

    invoke-static {v5, v15, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_232
    .catchall {:try_start_222 .. :try_end_232} :catchall_23c

    .line 2561
    :cond_232
    if-eqz v10, :cond_1f

    .line 2563
    :try_start_234
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_237
    .catch Ljava/io/IOException; {:try_start_234 .. :try_end_237} :catch_239

    goto/16 :goto_1f

    .line 2564
    :catch_239
    move-exception v5

    goto/16 :goto_1f

    .line 2561
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_23c
    move-exception v5

    if-eqz v10, :cond_242

    .line 2563
    :try_start_23f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_242
    .catch Ljava/io/IOException; {:try_start_23f .. :try_end_242} :catch_243

    .line 2564
    :cond_242
    :goto_242
    throw v5

    :catch_243
    move-exception v15

    goto :goto_242
.end method

.method private readStatisticsLocked()V
    .registers 12

    .prologue
    const/16 v10, 0x64

    .line 2769
    :try_start_2
    iget-object v7, p0, mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 2770
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2771
    .local v4, "in":Landroid/os/Parcel;
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v4, v0, v7, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2772
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2774
    const/4 v5, 0x0

    .line 2775
    .local v5, "index":I
    :cond_16
    :goto_16
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "token":I
    if-eqz v6, :cond_6d

    .line 2776
    const/16 v7, 0x65

    if-eq v6, v7, :cond_22

    if-ne v6, v10, :cond_55

    .line 2778
    :cond_22
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2779
    .local v1, "day":I
    if-ne v6, v10, :cond_2c

    .line 2780
    add-int/lit16 v7, v1, -0x7d9

    add-int/lit16 v1, v7, 0x37a5

    .line 2782
    :cond_2c
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v2, v1}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2783
    .local v2, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2784
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2785
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2786
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2787
    iget-object v7, p0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v7, v7

    if-ge v5, v7, :cond_16

    .line 2788
    iget-object v7, p0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aput-object v2, v7, v5

    .line 2789
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 2793
    .end local v1    # "day":I
    .end local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_55
    const-string v7, "SyncManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown stats token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6d} :catch_6e

    .line 2800
    .end local v0    # "data":[B
    .end local v4    # "in":Landroid/os/Parcel;
    .end local v5    # "index":I
    .end local v6    # "token":I
    :cond_6d
    :goto_6d
    return-void

    .line 2797
    :catch_6e
    move-exception v3

    .line 2798
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "SyncManager"

    const-string v8, "No initial statistics"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method

.method private readStatusLocked()V
    .registers 9

    .prologue
    const/4 v6, 0x2

    .line 2404
    const-string v5, "SyncManagerFile"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 2405
    const-string v5, "SyncManagerFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    :cond_27
    :try_start_27
    iget-object v5, p0, mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 2409
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2410
    .local v2, "in":Landroid/os/Parcel;
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2411
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2413
    :cond_3a
    :goto_3a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "token":I
    if-eqz v4, :cond_89

    .line 2414
    const/16 v5, 0x64

    if-ne v4, v5, :cond_8a

    .line 2415
    new-instance v3, Landroid/content/SyncStatusInfo;

    invoke-direct {v3, v2}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    .line 2416
    .local v3, "status":Landroid/content/SyncStatusInfo;
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_3a

    .line 2417
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2418
    const-string v5, "SyncManagerFile"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 2419
    const-string v5, "SyncManagerFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding status for id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    :cond_79
    iget-object v5, p0, mSyncStatus:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_80} :catch_81

    goto :goto_3a

    .line 2429
    .end local v0    # "data":[B
    .end local v2    # "in":Landroid/os/Parcel;
    .end local v3    # "status":Landroid/content/SyncStatusInfo;
    .end local v4    # "token":I
    :catch_81
    move-exception v1

    .line 2430
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "SyncManager"

    const-string v6, "No initial status"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    .end local v1    # "e":Ljava/io/IOException;
    :cond_89
    :goto_89
    return-void

    .line 2425
    .restart local v0    # "data":[B
    .restart local v2    # "in":Landroid/os/Parcel;
    .restart local v4    # "token":I
    :cond_8a
    :try_start_8a
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown status token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_a2} :catch_81

    goto :goto_89
.end method

.method private removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authorityName"    # Ljava/lang/String;
    .param p4, "doWrite"    # Z

    .prologue
    .line 1751
    iget-object v2, p0, mAccounts:Ljava/util/HashMap;

    new-instance v3, Landroid/accounts/AccountAndUser;

    invoke-direct {v3, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1752
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz v0, :cond_25

    .line 1753
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1754
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_25

    .line 1755
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1756
    if-eqz p4, :cond_25

    .line 1757
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 1761
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_25
    return-void
.end method

.method private reportChange(I)V
    .registers 9
    .param p1, "which"    # I

    .prologue
    .line 616
    const/4 v2, 0x0

    .line 617
    .local v2, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 618
    :try_start_4
    iget-object v4, p0, mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_78

    move-result v0

    .local v0, "i":I
    move-object v3, v2

    .line 619
    .end local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .local v3, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_b
    :goto_b
    if-lez v0, :cond_30

    .line 620
    add-int/lit8 v0, v0, -0x1

    .line 621
    :try_start_f
    iget-object v4, p0, mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 622
    .local v1, "mask":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_b

    .line 625
    if-nez v3, :cond_7f

    .line 626
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_7c

    .line 628
    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :goto_25
    :try_start_25
    iget-object v4, p0, mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_78

    move-object v3, v2

    .line 629
    .end local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_b

    .line 630
    .end local v1    # "mask":Ljava/lang/Integer;
    :cond_30
    :try_start_30
    iget-object v4, p0, mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 631
    monitor-exit v5
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_7c

    .line 633
    const-string v4, "SyncManager"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 634
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reportChange "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_62
    if-eqz v3, :cond_7b

    .line 638
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 639
    :goto_68
    if-lez v0, :cond_7b

    .line 640
    add-int/lit8 v0, v0, -0x1

    .line 642
    :try_start_6c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ISyncStatusObserver;

    invoke-interface {v4, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_75} :catch_76

    goto :goto_68

    .line 643
    :catch_76
    move-exception v4

    goto :goto_68

    .line 631
    .end local v0    # "i":I
    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :catchall_78
    move-exception v4

    :goto_79
    :try_start_79
    monitor-exit v5
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v4

    .line 648
    .end local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v0    # "i":I
    .restart local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_7b
    return-void

    .line 631
    :catchall_7c
    move-exception v4

    move-object v2, v3

    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_79

    .end local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v1    # "mask":Ljava/lang/Integer;
    .restart local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_7f
    move-object v2, v3

    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_25
.end method

.method private requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2749
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_17

    iget-object v0, p0, mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v0, :cond_17

    .line 2751
    iget-object v0, p0, mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, p1, p4, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-interface {v0, v1, p3, p5}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;)V

    .line 2758
    :goto_16
    return-void

    .line 2756
    :cond_17
    invoke-static {p1, p4, p5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_16
.end method

.method private requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .param p2, "reason"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2723
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_14

    iget-object v1, p0, mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v1, :cond_14

    .line 2725
    iget-object v1, p0, mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v1, v2, p2, p3}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;)V

    .line 2741
    :cond_13
    :goto_13
    return-void

    .line 2727
    :cond_14
    new-instance v1, Landroid/content/SyncRequest$Builder;

    invoke-direct {v1}, Landroid/content/SyncRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 2731
    .local v0, "req":Landroid/content/SyncRequest$Builder;
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v1, :cond_3a

    .line 2732
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    .line 2739
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentResolver;->requestSync(Landroid/content/SyncRequest;)V

    goto :goto_13

    .line 2734
    :cond_3a
    const-string v1, "SyncManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2735
    const-string v1, "SyncManager"

    const-string v2, "Unknown target, skipping sync request."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z
    .registers 16
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "nextSyncTime"    # J
    .param p6, "nextDelay"    # J

    .prologue
    .line 847
    const/4 v2, 0x0

    .line 848
    .local v2, "changed":Z
    iget-object v5, p0, mAccounts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 849
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz p1, :cond_29

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v5, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v5, v5, Landroid/accounts/AccountAndUser;->userId:I

    if-ne p2, v5, :cond_b

    .line 853
    :cond_29
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_33
    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 854
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz p3, :cond_4b

    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 858
    :cond_4b
    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v5, v6, p4

    if-nez v5, :cond_57

    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v5, v6, p6

    if-eqz v5, :cond_33

    .line 860
    :cond_57
    iput-wide p4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 861
    iput-wide p6, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 862
    const/4 v2, 0x1

    goto :goto_33

    .line 866
    .end local v0    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5d
    return v2
.end method

.method private setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V
    .registers 9
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "syncable"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 765
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 766
    const/4 v1, -0x1

    const/4 v3, 0x0

    :try_start_7
    invoke-direct {p0, p1, v1, v3}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 767
    .local v0, "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-ge p2, v4, :cond_e

    .line 768
    const/4 p2, -0x1

    .line 770
    :cond_e
    const-string v1, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 771
    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIsSyncable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_3e
    iget v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v1, p2, :cond_6c

    .line 774
    const-string v1, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 775
    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIsSyncable: already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", doing nothing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_6a
    monitor-exit v2

    .line 786
    :goto_6b
    return-void

    .line 779
    :cond_6c
    iput p2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 780
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 781
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_7 .. :try_end_72} :catchall_81

    .line 782
    if-ne p2, v5, :cond_7d

    .line 783
    const/4 v1, -0x5

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, v1, v2}, requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;)V

    .line 785
    :cond_7d
    invoke-direct {p0, v5}, reportChange(I)V

    goto :goto_6b

    .line 781
    .end local v0    # "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_81
    move-exception v1

    :try_start_82
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v1
.end method

.method private static unflattenBundle([B)Landroid/os/Bundle;
    .registers 6
    .param p0, "flatData"    # [B

    .prologue
    .line 2583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2585
    .local v2, "parcel":Landroid/os/Parcel;
    const/4 v3, 0x0

    :try_start_5
    array-length v4, p0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2586
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2587
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_10} :catch_15
    .catchall {:try_start_5 .. :try_end_10} :catchall_1f

    move-result-object v0

    .line 2593
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2595
    :goto_14
    return-object v0

    .line 2588
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_15
    move-exception v1

    .line 2591
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1f

    .line 2593
    .restart local v0    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_14

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_1f
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private writeAccountInfoLocked()V
    .registers 23

    .prologue
    .line 2191
    const-string v18, "SyncManagerFile"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_2c

    .line 2192
    const-string v18, "SyncManagerFile"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Writing new "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    :cond_2c
    const/4 v9, 0x0

    .line 2197
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v9

    .line 2198
    new-instance v15, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v15}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2199
    .local v15, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v18, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v18 .. v18}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2200
    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2201
    const-string/jumbo v18, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2203
    const/16 v18, 0x0

    const-string v19, "accounts"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2204
    const/16 v18, 0x0

    const-string/jumbo v19, "version"

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2205
    const/16 v18, 0x0

    const-string/jumbo v19, "nextAuthorityId"

    move-object/from16 v0, p0

    iget v0, v0, mNextAuthorityId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2206
    const/16 v18, 0x0

    const-string/jumbo v19, "offsetInSeconds"

    move-object/from16 v0, p0

    iget v0, v0, mSyncRandomOffset:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2209
    move-object/from16 v0, p0

    iget-object v0, v0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 2210
    .local v4, "M":I
    const/4 v14, 0x0

    .local v14, "m":I
    :goto_bc
    if-ge v14, v4, :cond_11b

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    .line 2212
    .local v17, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    .line 2213
    .local v13, "listen":Ljava/lang/Boolean;
    const/16 v18, 0x0

    const-string/jumbo v19, "listenForTickles"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2214
    const/16 v18, 0x0

    const-string/jumbo v19, "user"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2215
    const/16 v18, 0x0

    const-string/jumbo v19, "enabled"

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2216
    const/16 v18, 0x0

    const-string/jumbo v19, "listenForTickles"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2210
    add-int/lit8 v14, v14, 0x1

    goto :goto_bc

    .line 2219
    .end local v13    # "listen":Ljava/lang/Boolean;
    .end local v17    # "userId":I
    :cond_11b
    move-object/from16 v0, p0

    iget-object v0, v0, mAuthorities:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 2220
    .local v5, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_126
    if-ge v10, v5, :cond_29d

    .line 2221
    move-object/from16 v0, p0

    iget-object v0, v0, mAuthorities:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2222
    .local v6, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v12, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2223
    .local v12, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const/16 v18, 0x0

    const-string v19, "authority"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2224
    const/16 v18, 0x0

    const-string/jumbo v19, "id"

    iget v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2225
    const/16 v18, 0x0

    const-string/jumbo v19, "user"

    iget v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2226
    const/16 v18, 0x0

    const-string/jumbo v19, "enabled"

    iget-boolean v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2227
    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-nez v18, :cond_261

    .line 2228
    const/16 v18, 0x0

    const-string v19, "account"

    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2229
    const/16 v18, 0x0

    const-string/jumbo v19, "type"

    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2230
    const/16 v18, 0x0

    const-string v19, "authority"

    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2235
    :goto_1cb
    const/16 v18, 0x0

    const-string/jumbo v19, "syncable"

    iget v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2236
    iget-object v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1e9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_28e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/PeriodicSync;

    .line 2237
    .local v16, "periodicSync":Landroid/content/PeriodicSync;
    const/16 v18, 0x0

    const-string/jumbo v19, "periodicSync"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2238
    const/16 v18, 0x0

    const-string/jumbo v19, "period"

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/PeriodicSync;->period:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2239
    const/16 v18, 0x0

    const-string/jumbo v19, "flex"

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/PeriodicSync;->flexTime:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2240
    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    .line 2241
    .local v8, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, extrasToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    .line 2242
    const/16 v18, 0x0

    const-string/jumbo v19, "periodicSync"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_246
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_246} :catch_247

    goto :goto_1e9

    .line 2249
    .end local v4    # "M":I
    .end local v5    # "N":I
    .end local v6    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v14    # "m":I
    .end local v15    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v16    # "periodicSync":Landroid/content/PeriodicSync;
    :catch_247
    move-exception v7

    .line 2250
    .local v7, "e1":Ljava/io/IOException;
    const-string v18, "SyncManager"

    const-string v19, "Error writing accounts"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2251
    if-eqz v9, :cond_260

    .line 2252
    move-object/from16 v0, p0

    iget-object v0, v0, mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2255
    .end local v7    # "e1":Ljava/io/IOException;
    :cond_260
    :goto_260
    return-void

    .line 2232
    .restart local v4    # "M":I
    .restart local v5    # "N":I
    .restart local v6    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v10    # "i":I
    .restart local v12    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v14    # "m":I
    .restart local v15    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_261
    const/16 v18, 0x0

    :try_start_263
    const-string/jumbo v19, "package"

    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2233
    const/16 v18, 0x0

    const-string v19, "class"

    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1cb

    .line 2244
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_28e
    const/16 v18, 0x0

    const-string v19, "authority"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2220
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_126

    .line 2246
    .end local v6    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_29d
    const/16 v18, 0x0

    const-string v19, "accounts"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2247
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2248
    move-object/from16 v0, p0

    iget-object v0, v0, mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2b6
    .catch Ljava/io/IOException; {:try_start_263 .. :try_end_2b6} :catch_247

    goto :goto_260
.end method

.method private writePendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1, "pop"    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2643
    const-string/jumbo v0, "op"

    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2645
    const-string/jumbo v0, "version"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2646
    const-string v0, "authority_id"

    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authorityId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2647
    const-string/jumbo v0, "source"

    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2648
    const-string/jumbo v0, "expedited"

    iget-boolean v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2649
    const-string/jumbo v0, "reason"

    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2650
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    invoke-direct {p0, p2, v0}, extrasToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    .line 2652
    const-string/jumbo v0, "op"

    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2653
    return-void
.end method

.method private writePendingOperationsLocked()V
    .registers 10

    .prologue
    .line 2608
    iget-object v6, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2609
    .local v0, "N":I
    const/4 v2, 0x0

    .line 2611
    .local v2, "fos":Ljava/io/FileOutputStream;
    if-nez v0, :cond_36

    .line 2612
    :try_start_9
    const-string v6, "SyncManagerFile"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 2613
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Truncating "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    :cond_30
    iget-object v6, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->truncate()V

    .line 2637
    :cond_35
    :goto_35
    return-void

    .line 2618
    :cond_36
    const-string v6, "SyncManagerFile"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 2619
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing new "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    :cond_5d
    iget-object v6, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2622
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2623
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2625
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_72
    if-ge v3, v0, :cond_82

    .line 2626
    iget-object v6, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .line 2627
    .local v5, "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    invoke-direct {p0, v5, v4}, writePendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2625
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 2629
    .end local v5    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :cond_82
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2630
    iget-object v6, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_8a} :catch_8b

    goto :goto_35

    .line 2631
    .end local v3    # "i":I
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_8b
    move-exception v1

    .line 2632
    .local v1, "e1":Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing pending operations"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2633
    if-eqz v2, :cond_35

    .line 2634
    iget-object v6, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_35
.end method

.method private writeStatisticsLocked()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    .line 2806
    const-string v6, "SyncManagerFile"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 2807
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing new "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    :cond_27
    invoke-virtual {p0, v9}, removeMessages(I)V

    .line 2814
    const/4 v3, 0x0

    .line 2816
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2b
    iget-object v6, p0, mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 2817
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 2818
    .local v5, "out":Landroid/os/Parcel;
    iget-object v6, p0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v0, v6

    .line 2819
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_39
    if-ge v4, v0, :cond_41

    .line 2820
    iget-object v6, p0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v1, v6, v4

    .line 2821
    .local v1, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v1, :cond_55

    .line 2831
    .end local v1    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_41
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2832
    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 2833
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 2835
    iget-object v6, p0, mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 2842
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v5    # "out":Landroid/os/Parcel;
    :cond_54
    :goto_54
    return-void

    .line 2824
    .restart local v0    # "N":I
    .restart local v1    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .restart local v4    # "i":I
    .restart local v5    # "out":Landroid/os/Parcel;
    :cond_55
    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2825
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2826
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2827
    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2828
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2829
    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_73} :catch_76

    .line 2819
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 2836
    .end local v0    # "N":I
    .end local v1    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v4    # "i":I
    .end local v5    # "out":Landroid/os/Parcel;
    :catch_76
    move-exception v2

    .line 2837
    .local v2, "e1":Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing stats"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2838
    if-eqz v3, :cond_54

    .line 2839
    iget-object v6, p0, mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_54
.end method

.method private writeStatusLocked()V
    .registers 10

    .prologue
    .line 2438
    const-string v6, "SyncManagerFile"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 2439
    const-string v6, "SyncManagerFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing new "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    :cond_27
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, removeMessages(I)V

    .line 2446
    const/4 v2, 0x0

    .line 2448
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2c
    iget-object v6, p0, mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2450
    .local v4, "out":Landroid/os/Parcel;
    iget-object v6, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2451
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3d
    if-ge v3, v0, :cond_53

    .line 2452
    iget-object v6, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 2453
    .local v5, "status":Landroid/content/SyncStatusInfo;
    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2454
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2451
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 2456
    .end local v5    # "status":Landroid/content/SyncStatusInfo;
    :cond_53
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2457
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 2458
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2460
    iget-object v6, p0, mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_66} :catch_67

    .line 2467
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "out":Landroid/os/Parcel;
    :cond_66
    :goto_66
    return-void

    .line 2461
    :catch_67
    move-exception v1

    .line 2462
    .local v1, "e1":Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing status"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2463
    if-eqz v2, :cond_66

    .line 2464
    iget-object v6, p0, mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_66
.end method


# virtual methods
.method public addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;
    .registers 11
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 1261
    iget-object v8, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1262
    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1263
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActiveSync: account= auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_45
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1269
    .local v7, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v7, v1, v2}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 1273
    .local v6, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v0, Landroid/content/SyncInfo;

    iget v1, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iget-object v2, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    .line 1278
    .local v0, "syncInfo":Landroid/content/SyncInfo;
    iget-object v1, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v1}, getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1279
    monitor-exit v8
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_70

    .line 1280
    invoke-virtual {p0}, reportActiveChange()V

    .line 1281
    return-object v0

    .line 1279
    .end local v0    # "syncInfo":Landroid/content/SyncInfo;
    .end local v6    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v7    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v8
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v1
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 6
    .param p1, "mask"    # I
    .param p2, "callback"    # Landroid/content/ISyncStatusObserver;

    .prologue
    .line 582
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 583
    :try_start_3
    iget-object v0, p0, mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 584
    monitor-exit v1

    .line 585
    return-void

    .line 584
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public clearAllBackoffsLocked(Lcom/android/server/content/SyncQueue;)V
    .registers 16
    .param p1, "syncQueue"    # Lcom/android/server/content/SyncQueue;

    .prologue
    .line 870
    const/4 v3, 0x0

    .line 871
    .local v3, "changed":Z
    iget-object v9, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v9

    .line 873
    :try_start_4
    iget-object v8, p0, mAccounts:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 874
    .local v1, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v8, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 875
    .local v2, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-nez v8, :cond_40

    iget-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-eqz v8, :cond_24

    .line 877
    :cond_40
    const-string v8, "SyncManager"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 878
    const-string v8, "SyncManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "clearAllBackoffsLocked: authority:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " account:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v11, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v11, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " user:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v11, v11, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " backoffTime was: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " backoffDelay was: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_99
    const-wide/16 v10, -0x1

    iput-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 886
    const-wide/16 v10, -0x1

    iput-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 887
    const/4 v3, 0x1

    goto :goto_24

    .line 892
    .end local v1    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v2    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_a3
    iget-object v8, p0, mServices:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_ad
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 893
    .local v7, "service":Landroid/content/ComponentName;
    iget-object v8, p0, mServices:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 894
    .local v0, "aInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_e9

    .line 895
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 896
    .restart local v2    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-nez v8, :cond_de

    iget-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-eqz v8, :cond_e6

    .line 898
    :cond_de
    const-wide/16 v10, -0x1

    iput-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 899
    const-wide/16 v10, -0x1

    iput-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 894
    :cond_e6
    add-int/lit8 v4, v4, 0x1

    goto :goto_c2

    .line 902
    .end local v2    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_e9
    invoke-virtual {p1}, Lcom/android/server/content/SyncQueue;->clearBackoffs()V

    goto :goto_ad

    .line 904
    .end local v0    # "aInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "service":Landroid/content/ComponentName;
    :catchall_ed
    move-exception v8

    monitor-exit v9
    :try_end_ef
    .catchall {:try_start_4 .. :try_end_ef} :catchall_ed

    throw v8

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_f0
    :try_start_f0
    monitor-exit v9
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ed

    .line 906
    if-eqz v3, :cond_f7

    .line 907
    const/4 v8, 0x1

    invoke-direct {p0, v8}, reportChange(I)V

    .line 909
    :cond_f7
    return-void
.end method

.method public clearAndReadState()V
    .registers 3

    .prologue
    .line 1815
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1816
    :try_start_3
    iget-object v0, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1817
    iget-object v0, p0, mAccounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1818
    iget-object v0, p0, mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1819
    iget-object v0, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1820
    iget-object v0, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1821
    iget-object v0, p0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1823
    invoke-direct {p0}, readAccountInfoLocked()V

    .line 1824
    invoke-direct {p0}, readStatusLocked()V

    .line 1825
    invoke-direct {p0}, readPendingOperationsLocked()V

    .line 1826
    invoke-direct {p0}, readStatisticsLocked()V

    .line 1827
    invoke-direct {p0}, readAndDeleteLegacyAccountInfoLocked()V

    .line 1828
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 1829
    invoke-direct {p0}, writeStatusLocked()V

    .line 1830
    invoke-direct {p0}, writePendingOperationsLocked()V

    .line 1831
    invoke-direct {p0}, writeStatisticsLocked()V

    .line 1832
    monitor-exit v1

    .line 1833
    return-void

    .line 1832
    :catchall_3e
    move-exception v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z
    .registers 14
    .param p1, "op"    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .prologue
    const/4 v11, 0x2

    .line 1137
    const/4 v5, 0x0

    .line 1138
    .local v5, "res":Z
    iget-object v8, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1139
    :try_start_5
    const-string v7, "SyncManager"

    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 1140
    const-string v7, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "deleteFromPending: account="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_2b
    iget-object v7, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ad

    .line 1143
    iget-object v7, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_40

    iget v7, p0, mNumPendingFinished:I

    const/4 v9, 0x4

    if-lt v7, v9, :cond_b2

    .line 1145
    :cond_40
    invoke-direct {p0}, writePendingOperationsLocked()V

    .line 1146
    const/4 v7, 0x0

    iput v7, p0, mNumPendingFinished:I

    .line 1150
    :goto_46
    iget-object v7, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v9, "deleteFromPending"

    invoke-direct {p0, v7, v9}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1151
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_ac

    .line 1152
    const-string v7, "SyncManager"

    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 1153
    const-string v7, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removing - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_77
    iget-object v7, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1156
    .local v0, "N":I
    const/4 v4, 0x0

    .line 1157
    .local v4, "morePending":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7f
    if-ge v3, v0, :cond_90

    .line 1158
    iget-object v7, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .line 1159
    .local v2, "cur":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->equals(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 1160
    const/4 v4, 0x1

    .line 1165
    .end local v2    # "cur":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :cond_90
    if-nez v4, :cond_ac

    .line 1166
    const-string v7, "SyncManager"

    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_a3

    const-string v7, "SyncManager"

    const-string/jumbo v9, "no more pending!"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_a3
    iget v7, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v7}, getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v6

    .line 1168
    .local v6, "status":Landroid/content/SyncStatusInfo;
    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/content/SyncStatusInfo;->pending:Z

    .line 1171
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "morePending":Z
    .end local v6    # "status":Landroid/content/SyncStatusInfo;
    :cond_ac
    const/4 v5, 0x1

    .line 1173
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_ad
    monitor-exit v8
    :try_end_ae
    .catchall {:try_start_5 .. :try_end_ae} :catchall_b9

    .line 1175
    invoke-direct {p0, v11}, reportChange(I)V

    .line 1176
    return v5

    .line 1148
    :cond_b2
    :try_start_b2
    iget v7, p0, mNumPendingFinished:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, mNumPendingFinished:I

    goto :goto_46

    .line 1173
    :catchall_b9
    move-exception v7

    monitor-exit v8
    :try_end_bb
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_b9

    throw v7

    .line 1157
    .restart local v0    # "N":I
    .restart local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v2    # "cur":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v3    # "i":I
    .restart local v4    # "morePending":Z
    :cond_bc
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f
.end method

.method public doDatabaseCleanup([Landroid/accounts/Account;I)V
    .registers 15
    .param p1, "accounts"    # [Landroid/accounts/Account;
    .param p2, "userId"    # I

    .prologue
    .line 1204
    iget-object v9, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v9

    .line 1205
    :try_start_3
    const-string v8, "SyncManager"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1206
    const-string v8, "SyncManager"

    const-string v10, "Updating for new accounts..."

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_13
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 1209
    .local v7, "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v8, p0, mAccounts:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1210
    .local v1, "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_84

    .line 1211
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1212
    .local v0, "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v8, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-static {p1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v8, v8, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v8, p2, :cond_22

    .line 1215
    const-string v8, "SyncManager"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 1216
    const-string v8, "SyncManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Account removed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_61
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1219
    .local v2, "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v7, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6b

    .line 1252
    .end local v0    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v1    # "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    .end local v2    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    :catchall_7d
    move-exception v8

    monitor-exit v9
    :try_end_7f
    .catchall {:try_start_3 .. :try_end_7f} :catchall_7d

    throw v8

    .line 1221
    .restart local v0    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .restart local v1    # "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    :cond_80
    :try_start_80
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_22

    .line 1226
    .end local v0    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_84
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1227
    .local v3, "i":I
    if-lez v3, :cond_dd

    .line 1228
    :cond_8a
    if-lez v3, :cond_d1

    .line 1229
    add-int/lit8 v3, v3, -0x1

    .line 1230
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1231
    .local v5, "ident":I
    iget-object v8, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 1232
    iget-object v8, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1233
    .local v6, "j":I
    :cond_9d
    :goto_9d
    if-lez v6, :cond_b5

    .line 1234
    add-int/lit8 v6, v6, -0x1

    .line 1235
    iget-object v8, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    if-ne v8, v5, :cond_9d

    .line 1236
    iget-object v8, p0, mSyncStatus:Landroid/util/SparseArray;

    iget-object v10, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_9d

    .line 1239
    :cond_b5
    iget-object v8, p0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1240
    :cond_bb
    :goto_bb
    if-lez v6, :cond_8a

    .line 1241
    add-int/lit8 v6, v6, -0x1

    .line 1242
    iget-object v8, p0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    iget v8, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    if-ne v8, v5, :cond_bb

    .line 1243
    iget-object v8, p0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_bb

    .line 1247
    .end local v5    # "ident":I
    .end local v6    # "j":I
    :cond_d1
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 1248
    invoke-direct {p0}, writeStatusLocked()V

    .line 1249
    invoke-direct {p0}, writePendingOperationsLocked()V

    .line 1250
    invoke-direct {p0}, writeStatisticsLocked()V

    .line 1252
    :cond_dd
    monitor-exit v9
    :try_end_de
    .catchall {:try_start_80 .. :try_end_de} :catchall_7d

    .line 1253
    return-void
.end method

.method public dumpPendingOperations(Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2848
    const-string v2, "Pending Ops: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " operation(s)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2849
    iget-object v2, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .line 2850
    .local v1, "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", extras: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 2854
    .end local v1    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :cond_63
    return-void
.end method

.method public getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 4
    .param p1, "authorityId"    # I

    .prologue
    .line 1081
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1082
    :try_start_3
    iget-object v0, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    monitor-exit v1

    return-object v0

    .line 1083
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .registers 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 789
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 790
    :try_start_3
    const-string/jumbo v1, "getBackoff"

    invoke-direct {p0, p1, v1}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 791
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_1e

    .line 792
    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    monitor-exit v2

    .line 794
    :goto_1d
    return-object v1

    :cond_1e
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1d

    .line 795
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public getCopyOfAllAuthoritiesWithSyncStatus()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1517
    iget-object v3, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1518
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1520
    .local v1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 1521
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {p0, v2}, createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1523
    :cond_29
    monitor-exit v3

    return-object v1

    .line 1524
    .end local v0    # "i":I
    .end local v1    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    :catchall_2b
    move-exception v2

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .registers 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1505
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1506
    const/4 v1, -0x1

    const/4 v3, 0x1

    :try_start_5
    invoke-direct {p0, p1, v1, v3}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1509
    .local v0, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    invoke-direct {p0, v0}, createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 1510
    .end local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_f
    move-exception v1

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getCurrentSyncsCopy(I)Ljava/util/List;
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1466
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1467
    :try_start_3
    invoke-direct {p0, p1}, getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object v2

    .line 1468
    .local v2, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1469
    .local v3, "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 1470
    .local v1, "sync":Landroid/content/SyncInfo;
    new-instance v4, Landroid/content/SyncInfo;

    invoke-direct {v4, v1}, Landroid/content/SyncInfo;-><init>(Landroid/content/SyncInfo;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1473
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sync":Landroid/content/SyncInfo;
    .end local v2    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    .end local v3    # "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :catchall_25
    move-exception v4

    monitor-exit v5
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v4

    .line 1472
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    .restart local v3    # "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :cond_28
    :try_start_28
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    return-object v3
.end method

.method public getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;
    .registers 7

    .prologue
    .line 1596
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1597
    :try_start_3
    iget-object v1, p0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v1, v1

    new-array v0, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1598
    .local v0, "ds":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-object v1, p0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1599
    monitor-exit v2

    return-object v0

    .line 1600
    .end local v0    # "ds":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J
    .registers 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 912
    iget-object v4, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 913
    :try_start_3
    const-string/jumbo v1, "getDelayUntil"

    invoke-direct {p0, p1, v1}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 914
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_10

    .line 915
    const-wide/16 v2, 0x0

    monitor-exit v4

    .line 917
    :goto_f
    return-wide v2

    :cond_10
    iget-wide v2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    monitor-exit v4

    goto :goto_f

    .line 918
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_14
    move-exception v1

    monitor-exit v4
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 709
    iget-object v4, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 710
    if-eqz p1, :cond_1d

    .line 711
    :try_start_6
    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v5, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string/jumbo v6, "get authority syncable"

    invoke-direct {p0, v5, v6}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 714
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_16

    .line 715
    monitor-exit v4

    .line 729
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :goto_15
    return v3

    .line 717
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_16
    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v4

    goto :goto_15

    .line 730
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_1a
    move-exception v3

    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw v3

    .line 720
    :cond_1d
    :try_start_1d
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 721
    .local v2, "i":I
    :cond_23
    if-lez v2, :cond_41

    .line 722
    add-int/lit8 v2, v2, -0x1

    .line 723
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 724
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v5, :cond_23

    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 726
    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v4

    goto :goto_15

    .line 729
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_41
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_1a

    goto :goto_15
.end method

.method public getIsTargetServiceActive(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "cname"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 738
    iget-object v3, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 739
    if-eqz p1, :cond_21

    .line 740
    :try_start_7
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v4, p1, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/content/ComponentName;I)V

    const-string/jumbo v5, "get service active"

    invoke-direct {p0, v4, v5}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 743
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_17

    .line 744
    monitor-exit v3

    .line 748
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :goto_16
    return v1

    .line 746
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_17
    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v4, v2, :cond_1c

    move v1, v2

    :cond_1c
    monitor-exit v3

    goto :goto_16

    .line 749
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_1e
    move-exception v1

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1

    .line 748
    :cond_21
    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1e

    goto :goto_16
.end method

.method public getMasterSyncAutomatically(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1074
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1075
    :try_start_3
    iget-object v1, p0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1076
    .local v0, "auto":Ljava/lang/Boolean;
    if-nez v0, :cond_11

    iget-boolean v1, p0, mDefaultMasterSyncAutomatically:Z

    :goto_f
    monitor-exit v2

    return v1

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_f

    .line 1077
    .end local v0    # "auto":Ljava/lang/Boolean;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getPendingOperationCount()I
    .registers 3

    .prologue
    .line 1194
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1195
    :try_start_3
    iget-object v0, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1196
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getPendingOperations()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$PendingOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1185
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1186
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 1187
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;
    .registers 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1042
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1043
    :try_start_3
    const-string/jumbo v4, "getPeriodicSyncs"

    invoke-direct {p0, p1, v4}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1044
    .local v0, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    .local v3, "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/PeriodicSync;>;"
    if-eqz v0, :cond_2f

    .line 1046
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/PeriodicSync;

    .line 1048
    .local v2, "item":Landroid/content/PeriodicSync;
    new-instance v4, Landroid/content/PeriodicSync;

    invoke-direct {v4, v2}, Landroid/content/PeriodicSync;-><init>(Landroid/content/PeriodicSync;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 1052
    .end local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Landroid/content/PeriodicSync;
    .end local v3    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/PeriodicSync;>;"
    :catchall_2c
    move-exception v4

    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v4

    .line 1051
    .restart local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v3    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/PeriodicSync;>;"
    :cond_2f
    :try_start_2f
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    return-object v3
.end method

.method public getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;
    .registers 10
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    const/4 v4, 0x0

    .line 1534
    iget-boolean v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v5, :cond_f

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-eqz v5, :cond_d

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v5, :cond_f

    :cond_d
    move-object v2, v4

    .line 1549
    :goto_e
    return-object v2

    .line 1536
    :cond_f
    iget-boolean v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v5, :cond_19

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    if-nez v5, :cond_19

    move-object v2, v4

    .line 1537
    goto :goto_e

    .line 1539
    :cond_19
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1540
    :try_start_1c
    iget-object v6, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1541
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23
    if-ge v3, v0, :cond_49

    .line 1542
    iget-object v6, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStatusInfo;

    .line 1543
    .local v2, "cur":Landroid/content/SyncStatusInfo;
    iget-object v6, p0, mAuthorities:Landroid/util/SparseArray;

    iget v7, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1544
    .local v1, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_46

    iget-object v6, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v6, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 1546
    monitor-exit v5

    goto :goto_e

    .line 1550
    .end local v0    # "N":I
    .end local v1    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "cur":Landroid/content/SyncStatusInfo;
    .end local v3    # "i":I
    :catchall_43
    move-exception v4

    monitor-exit v5
    :try_end_45
    .catchall {:try_start_1c .. :try_end_45} :catchall_43

    throw v4

    .line 1541
    .restart local v0    # "N":I
    .restart local v1    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v2    # "cur":Landroid/content/SyncStatusInfo;
    .restart local v3    # "i":I
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 1549
    .end local v1    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "cur":Landroid/content/SyncStatusInfo;
    :cond_49
    :try_start_49
    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_43

    move-object v2, v4

    goto :goto_e
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 651
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 652
    if-eqz p1, :cond_1d

    .line 653
    :try_start_7
    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v6, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string/jumbo v7, "getSyncAutomatically"

    invoke-direct {p0, v6, v7}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 656
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_1b

    iget-boolean v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v6, :cond_1b

    :goto_19
    monitor-exit v5

    .line 668
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :goto_1a
    return v3

    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1b
    move v3, v4

    .line 656
    goto :goto_19

    .line 659
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1d
    iget-object v6, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 660
    .local v2, "i":I
    :cond_23
    if-lez v2, :cond_45

    .line 661
    add-int/lit8 v2, v2, -0x1

    .line 662
    iget-object v6, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 663
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v6, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v7, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v6

    if-eqz v6, :cond_23

    iget-boolean v6, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v6, :cond_23

    .line 665
    monitor-exit v5

    goto :goto_1a

    .line 669
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "i":I
    :catchall_42
    move-exception v3

    monitor-exit v5
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw v3

    .line 668
    .restart local v2    # "i":I
    :cond_45
    :try_start_45
    monitor-exit v5
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_42

    move v3, v4

    goto :goto_1a
.end method

.method public getSyncHistory()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1580
    iget-object v4, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1581
    :try_start_3
    iget-object v3, p0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1582
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1583
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 1584
    iget-object v3, p0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1586
    :cond_1d
    monitor-exit v4

    return-object v2

    .line 1587
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :catchall_1f
    move-exception v3

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method public getSyncRandomOffset()I
    .registers 2

    .prologue
    .line 578
    iget v0, p0, mSyncRandomOffset:I

    return v0
.end method

.method public getSyncStatus()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1491
    iget-object v4, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1492
    :try_start_3
    iget-object v3, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1493
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1494
    .local v2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncStatusInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 1495
    iget-object v3, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1494
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1497
    :cond_1d
    monitor-exit v4

    return-object v2

    .line 1498
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncStatusInfo;>;"
    :catchall_1f
    move-exception v3

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 566
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 567
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 568
    :try_start_8
    invoke-direct {p0}, writeStatusLocked()V

    .line 569
    monitor-exit v1

    .line 575
    :cond_c
    :goto_c
    return-void

    .line 569
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v0

    .line 570
    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 571
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 572
    :try_start_18
    invoke-direct {p0}, writeStatisticsLocked()V

    .line 573
    monitor-exit v1

    goto :goto_c

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public insertIntoPending(Lcom/android/server/content/SyncOperation;)Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .registers 12
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    .prologue
    const/4 v9, 0x2

    .line 1104
    iget-object v8, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1105
    :try_start_4
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1106
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertIntoPending: authority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extras="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_34
    iget-object v6, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1110
    .local v6, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, v6, v2, v3}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1114
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_41

    .line 1115
    const/4 v0, 0x0

    monitor-exit v8

    .line 1127
    :goto_40
    return-object v0

    .line 1118
    :cond_41
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    iget v2, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iget v3, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine$PendingOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;IILandroid/os/Bundle;Z)V

    .line 1120
    .local v0, "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    iget-object v2, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    invoke-direct {p0, v0}, appendPendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)V

    .line 1123
    iget v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v2}, getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v7

    .line 1124
    .local v7, "status":Landroid/content/SyncStatusInfo;
    const/4 v2, 0x1

    iput-boolean v2, v7, Landroid/content/SyncStatusInfo;->pending:Z

    .line 1125
    monitor-exit v8
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_66

    .line 1126
    invoke-direct {p0, v9}, reportChange(I)V

    goto :goto_40

    .line 1125
    .end local v0    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v7    # "status":Landroid/content/SyncStatusInfo;
    :catchall_66
    move-exception v2

    :try_start_67
    monitor-exit v8
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v2
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J
    .registers 12
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "now"    # J

    .prologue
    .line 1312
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1313
    :try_start_3
    const-string v4, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1314
    const-string v4, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertStartSyncEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_25
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v6, "insertStartSyncEvent"

    invoke-direct {p0, v4, v6}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1317
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_34

    .line 1318
    const-wide/16 v2, -0x1

    monitor-exit v5

    .line 1339
    :goto_33
    return-wide v2

    .line 1320
    :cond_34
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-direct {v1}, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    .line 1321
    .local v1, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->initialization:Z

    .line 1322
    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 1323
    iget v4, p0, mNextHistoryId:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, mNextHistoryId:I

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 1324
    iget v4, p0, mNextHistoryId:I

    if-gez v4, :cond_52

    const/4 v4, 0x0

    iput v4, p0, mNextHistoryId:I

    .line 1325
    :cond_52
    iput-wide p2, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 1326
    iget v4, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1327
    iget v4, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 1328
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iput-object v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 1329
    const/4 v4, 0x0

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1330
    iget-object v4, p0, mSyncHistory:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1331
    :goto_69
    iget-object v4, p0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v6, 0x64

    if-le v4, v6, :cond_84

    .line 1332
    iget-object v4, p0, mSyncHistory:Ljava/util/ArrayList;

    iget-object v6, p0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_69

    .line 1336
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :catchall_81
    move-exception v4

    monitor-exit v5
    :try_end_83
    .catchall {:try_start_3 .. :try_end_83} :catchall_81

    throw v4

    .line 1334
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v1    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_84
    :try_start_84
    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v2, v4

    .line 1335
    .local v2, "id":J
    const-string v4, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a9

    const-string v4, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "returning historyId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_a9
    monitor-exit v5
    :try_end_aa
    .catchall {:try_start_84 .. :try_end_aa} :catchall_81

    .line 1338
    const/16 v4, 0x8

    invoke-direct {p0, v4}, reportChange(I)V

    goto :goto_33
.end method

.method public isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 1091
    iget-object v4, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1092
    :try_start_3
    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v3}, getCurrentSyncs(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    .line 1093
    .local v2, "syncInfo":Landroid/content/SyncInfo;
    iget v3, v2, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p0, v3}, getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1094
    .local v0, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_d

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1095
    const/4 v3, 0x1

    monitor-exit v4

    .line 1099
    .end local v0    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "syncInfo":Landroid/content/SyncInfo;
    :goto_2b
    return v3

    .line 1098
    :cond_2c
    monitor-exit v4

    .line 1099
    const/4 v3, 0x0

    goto :goto_2b

    .line 1098
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_2f
    move-exception v3

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v3
.end method

.method public isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 1555
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1556
    :try_start_3
    iget-object v4, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1557
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v0, :cond_32

    .line 1558
    iget-object v4, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStatusInfo;

    .line 1559
    .local v2, "cur":Landroid/content/SyncStatusInfo;
    iget-object v4, p0, mAuthorities:Landroid/util/SparseArray;

    iget v6, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1560
    .local v1, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_23

    .line 1557
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1563
    :cond_23
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1566
    iget-boolean v4, v2, Landroid/content/SyncStatusInfo;->pending:Z

    if-eqz v4, :cond_20

    .line 1567
    const/4 v4, 0x1

    monitor-exit v5

    .line 1570
    .end local v1    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "cur":Landroid/content/SyncStatusInfo;
    :goto_31
    return v4

    :cond_32
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_31

    .line 1571
    .end local v0    # "N":I
    .end local v3    # "i":I
    :catchall_35
    move-exception v4

    monitor-exit v5
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v4
.end method

.method public queueBackup()V
    .registers 2

    .prologue
    .line 2861
    const-string v0, "android"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 2862
    return-void
.end method

.method public removeActiveSync(Landroid/content/SyncInfo;I)V
    .registers 7
    .param p1, "syncInfo"    # Landroid/content/SyncInfo;
    .param p2, "userId"    # I

    .prologue
    .line 1288
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1289
    :try_start_3
    const-string v0, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1290
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActiveSync: account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_3d
    invoke-direct {p0, p2}, getCurrentSyncs(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1295
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_49

    .line 1297
    invoke-virtual {p0}, reportActiveChange()V

    .line 1298
    return-void

    .line 1295
    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 1727
    iget-object v3, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1728
    :try_start_3
    iget-boolean v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v2, :cond_13

    .line 1729
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {p0, v2, v4, v5, v6}, removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1742
    :cond_11
    :goto_11
    monitor-exit v3

    .line 1743
    return-void

    .line 1731
    :cond_13
    iget-object v2, p0, mServices:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1732
    .local v0, "aInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    if-eqz v0, :cond_11

    .line 1733
    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1734
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_11

    .line 1735
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1736
    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 1737
    invoke-direct {p0}, writeAccountInfoLocked()V

    goto :goto_11

    .line 1742
    .end local v0    # "aInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 998
    iget-object v7, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    .line 1000
    const/4 v6, -0x1

    const/4 v8, 0x0

    :try_start_6
    invoke-direct {p0, p1, v6, v8}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1003
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v6, p0, mSyncStatus:Landroid/util/SparseArray;

    iget v8, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 1004
    .local v4, "status":Landroid/content/SyncStatusInfo;
    const/4 v1, 0x0

    .line 1005
    .local v1, "changed":Z
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1006
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/PeriodicSync;>;"
    const/4 v2, 0x0

    .line 1007
    .local v2, "i":I
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 1008
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/PeriodicSync;

    .line 1009
    .local v5, "syncInfo":Landroid/content/PeriodicSync;
    iget-object v6, v5, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    const/4 v8, 0x1

    invoke-static {v6, p2, v8}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 1012
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1013
    const/4 v1, 0x1

    .line 1016
    if-eqz v4, :cond_46

    .line 1017
    invoke-virtual {v4, v2}, Landroid/content/SyncStatusInfo;->removePeriodicSyncTime(I)V
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_3b

    goto :goto_1c

    .line 1030
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "changed":Z
    .end local v2    # "i":I
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/PeriodicSync;>;"
    .end local v4    # "status":Landroid/content/SyncStatusInfo;
    .end local v5    # "syncInfo":Landroid/content/PeriodicSync;
    :catchall_3b
    move-exception v6

    :try_start_3c
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 1031
    invoke-direct {p0}, writeStatusLocked()V

    throw v6

    .line 1033
    :catchall_43
    move-exception v6

    monitor-exit v7
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_43

    throw v6

    .line 1019
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v1    # "changed":Z
    .restart local v2    # "i":I
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/PeriodicSync;>;"
    .restart local v4    # "status":Landroid/content/SyncStatusInfo;
    .restart local v5    # "syncInfo":Landroid/content/PeriodicSync;
    :cond_46
    :try_start_46
    const-string v6, "SyncManager"

    const-string v8, "Tried removing sync status on remove periodic sync but did not find it."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_3b

    goto :goto_1c

    .line 1023
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1026
    .end local v5    # "syncInfo":Landroid/content/PeriodicSync;
    :cond_51
    if-nez v1, :cond_5b

    .line 1030
    :try_start_53
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 1031
    invoke-direct {p0}, writeStatusLocked()V

    monitor-exit v7

    .line 1035
    :goto_5a
    return-void

    .line 1030
    :cond_5b
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 1031
    invoke-direct {p0}, writeStatusLocked()V

    .line 1033
    monitor-exit v7
    :try_end_62
    .catchall {:try_start_53 .. :try_end_62} :catchall_43

    .line 1034
    invoke-direct {p0, v9}, reportChange(I)V

    goto :goto_5a
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 4
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    .prologue
    .line 588
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 589
    :try_start_3
    iget-object v0, p0, mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 590
    monitor-exit v1

    .line 591
    return-void

    .line 590
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public reportActiveChange()V
    .registers 2

    .prologue
    .line 1304
    const/4 v0, 0x4

    invoke-direct {p0, v0}, reportChange(I)V

    .line 1305
    return-void
.end method

.method public setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V
    .registers 20
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "nextSyncTime"    # J
    .param p4, "nextDelay"    # J

    .prologue
    .line 803
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 804
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBackoff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> nextSyncTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nextDelay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_3a
    iget-object v12, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v12

    .line 809
    :try_start_3d
    iget-boolean v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v2, :cond_60

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-eqz v2, :cond_49

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v2, :cond_60

    .line 813
    :cond_49
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object v2, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v2 .. v9}, setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z

    move-result v11

    .line 830
    .local v11, "changed":Z
    :goto_58
    monitor-exit v12
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_7e

    .line 831
    if-eqz v11, :cond_5f

    .line 832
    const/4 v2, 0x1

    invoke-direct {p0, v2}, reportChange(I)V

    .line 834
    :cond_5f
    return-void

    .line 819
    .end local v11    # "changed":Z
    :cond_60
    const/4 v2, -0x1

    const/4 v3, 0x1

    :try_start_62
    invoke-direct {p0, p1, v2, v3}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    .line 821
    .local v10, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_74

    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v2, v2, p4

    if-nez v2, :cond_74

    .line 823
    const/4 v11, 0x0

    .restart local v11    # "changed":Z
    goto :goto_58

    .line 825
    .end local v11    # "changed":Z
    :cond_74
    move-wide/from16 v0, p2

    iput-wide v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 826
    move-wide/from16 v0, p4

    iput-wide v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 827
    const/4 v11, 0x1

    .restart local v11    # "changed":Z
    goto :goto_58

    .line 830
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "changed":Z
    :catchall_7e
    move-exception v2

    monitor-exit v12
    :try_end_80
    .catchall {:try_start_62 .. :try_end_80} :catchall_7e

    throw v2
.end method

.method public setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .registers 12
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntil"    # J

    .prologue
    const/4 v6, 0x1

    .line 922
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 923
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDelayUntil: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> delayUntil "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_2d
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 927
    const/4 v1, -0x1

    const/4 v3, 0x1

    :try_start_32
    invoke-direct {p0, p1, v1, v3}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 928
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v1, v4, p2

    if-nez v1, :cond_3e

    .line 929
    monitor-exit v2

    .line 934
    :goto_3d
    return-void

    .line 931
    :cond_3e
    iput-wide p2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 932
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_45

    .line 933
    invoke-direct {p0, v6}, reportChange(I)V

    goto :goto_3d

    .line 932
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "syncable"    # I

    .prologue
    .line 734
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-direct {p0, v0, p4}, setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    .line 735
    return-void
.end method

.method public setIsTargetServiceActive(Landroid/content/ComponentName;IZ)V
    .registers 6
    .param p1, "cname"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "active"    # Z

    .prologue
    .line 753
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, p1, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/content/ComponentName;I)V

    if-eqz p3, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-direct {p0, v1, v0}, setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    .line 755
    return-void

    .line 753
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setMasterSyncAutomatically(ZI)V
    .registers 10
    .param p1, "flag"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1056
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1057
    :try_start_4
    iget-object v0, p0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 1058
    .local v6, "auto":Ljava/lang/Boolean;
    if-eqz v6, :cond_1a

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1059
    monitor-exit v2

    .line 1071
    :goto_19
    return-void

    .line 1061
    :cond_1a
    iget-object v0, p0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1062
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 1063
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_44

    .line 1064
    if-eqz p1, :cond_35

    .line 1065
    const/4 v3, -0x7

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    move v2, p2

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 1068
    :cond_35
    const/4 v0, 0x1

    invoke-direct {p0, v0}, reportChange(I)V

    .line 1069
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1070
    invoke-virtual {p0}, queueBackup()V

    goto :goto_19

    .line 1063
    .end local v6    # "auto":Ljava/lang/Boolean;
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0
.end method

.method protected setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .prologue
    .line 560
    iget-object v0, p0, mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-nez v0, :cond_6

    .line 561
    iput-object p1, p0, mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .line 563
    :cond_6
    return-void
.end method

.method public setPeriodicSyncTime(ILandroid/content/PeriodicSync;J)V
    .registers 12
    .param p1, "authorityId"    # I
    .param p2, "targetPeriodicSync"    # Landroid/content/PeriodicSync;
    .param p3, "when"    # J

    .prologue
    .line 1768
    const/4 v1, 0x0

    .line 1770
    .local v1, "found":Z
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1771
    :try_start_4
    iget-object v4, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1772
    .local v0, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2f

    .line 1773
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/PeriodicSync;

    .line 1774
    .local v3, "periodicSync":Landroid/content/PeriodicSync;
    invoke-virtual {p2, v3}, Landroid/content/PeriodicSync;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1775
    iget-object v4, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    invoke-virtual {v4, v2, p3, p4}, Landroid/content/SyncStatusInfo;->setPeriodicSyncTime(IJ)V

    .line 1776
    const/4 v1, 0x1

    .line 1780
    .end local v3    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_2f
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_50

    .line 1781
    if-nez v1, :cond_4c

    .line 1782
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring setPeriodicSyncTime request for a sync that does not exist. Authority: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :cond_4c
    return-void

    .line 1772
    .restart local v3    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1780
    .end local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "i":I
    .end local v3    # "periodicSync":Landroid/content/PeriodicSync;
    :catchall_50
    move-exception v4

    :try_start_51
    monitor-exit v5
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v4
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "sync"    # Z

    .prologue
    const/4 v4, 0x2

    .line 674
    const-string v0, "SyncManager"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 675
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSyncAutomatically:  provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_36
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 679
    :try_start_39
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 684
    .local v6, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-boolean v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-ne v0, p4, :cond_72

    .line 685
    const-string v0, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 686
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSyncAutomatically: already set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", doing nothing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_70
    monitor-exit v1

    .line 706
    :goto_71
    return-void

    .line 693
    :cond_72
    if-eqz p4, :cond_7b

    iget v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v0, v4, :cond_7b

    .line 694
    const/4 v0, -0x1

    iput v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 696
    :cond_7b
    iput-boolean p4, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 697
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 698
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_39 .. :try_end_81} :catchall_98

    .line 700
    if-eqz p4, :cond_90

    .line 701
    const/4 v3, -0x6

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 704
    :cond_90
    const/4 v0, 0x1

    invoke-direct {p0, v0}, reportChange(I)V

    .line 705
    invoke-virtual {p0}, queueBackup()V

    goto :goto_71

    .line 698
    .end local v6    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_98
    move-exception v0

    :try_start_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v0
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJ)V
    .registers 29
    .param p1, "historyId"    # J
    .param p3, "elapsedTime"    # J
    .param p5, "resultMessage"    # Ljava/lang/String;
    .param p6, "downstreamActivity"    # J
    .param p8, "upstreamActivity"    # J

    .prologue
    .line 1344
    move-object/from16 v0, p0

    iget-object v12, v0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v12

    .line 1345
    :try_start_5
    const-string v11, "SyncManager"

    const/4 v13, 0x2

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_29

    .line 1346
    const-string v11, "SyncManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "stopSyncEvent: historyId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_29
    const/4 v5, 0x0

    .line 1349
    .local v5, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v11, v0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1350
    .local v4, "i":I
    :goto_32
    if-lez v4, :cond_47

    .line 1351
    add-int/lit8 v4, v4, -0x1

    .line 1352
    move-object/from16 v0, p0

    iget-object v11, v0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    check-cast v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 1353
    .restart local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v14, v11

    cmp-long v11, v14, p1

    if-nez v11, :cond_66

    .line 1359
    :cond_47
    if-nez v5, :cond_68

    .line 1360
    const-string v11, "SyncManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "stopSyncEvent: no history for id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    monitor-exit v12

    .line 1448
    :goto_65
    return-void

    .line 1356
    :cond_66
    const/4 v5, 0x0

    goto :goto_32

    .line 1364
    :cond_68
    move-wide/from16 v0, p3

    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 1365
    const/4 v11, 0x1

    iput v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1366
    move-object/from16 v0, p5

    iput-object v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 1367
    move-wide/from16 v0, p6

    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 1368
    move-wide/from16 v0, p8

    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 1370
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v8

    .line 1372
    .local v8, "status":Landroid/content/SyncStatusInfo;
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSyncs:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 1373
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    add-long v14, v14, p3

    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 1374
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    packed-switch v11, :pswitch_data_1de

    .line 1392
    :goto_94
    const/4 v9, 0x0

    .line 1393
    .local v9, "writeStatisticsNow":Z
    invoke-direct/range {p0 .. p0}, getCurrentDayLocked()I

    move-result v2

    .line 1394
    .local v2, "day":I
    move-object/from16 v0, p0

    iget-object v11, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    if-nez v11, :cond_134

    .line 1395
    move-object/from16 v0, p0

    iget-object v11, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    new-instance v14, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v14, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v14, v11, v13

    .line 1402
    :cond_ae
    :goto_ae
    move-object/from16 v0, p0

    iget-object v11, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v3, v11, v13

    .line 1404
    .local v3, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-wide v14, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-long v6, v14, p3

    .line 1405
    .local v6, "lastSyncTime":J
    const/4 v10, 0x0

    .line 1406
    .local v10, "writeStatusNow":Z
    const-string/jumbo v11, "success"

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_175

    .line 1408
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_d5

    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_d6

    .line 1409
    :cond_d5
    const/4 v10, 0x1

    .line 1411
    :cond_d6
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 1412
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 1413
    const-wide/16 v14, 0x0

    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1414
    const/4 v11, -0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1415
    const/4 v11, 0x0

    iput-object v11, v8, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1416
    const-wide/16 v14, 0x0

    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 1417
    iget v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1418
    iget-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long v14, v14, p3

    iput-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1433
    :cond_f6
    :goto_f6
    if-eqz v10, :cond_1aa

    .line 1434
    invoke-direct/range {p0 .. p0}, writeStatusLocked()V

    .line 1439
    :cond_fb
    :goto_fb
    if-eqz v9, :cond_1c4

    .line 1440
    invoke-direct/range {p0 .. p0}, writeStatisticsLocked()V

    .line 1445
    :cond_100
    :goto_100
    monitor-exit v12
    :try_end_101
    .catchall {:try_start_5 .. :try_end_101} :catchall_111

    .line 1447
    const/16 v11, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, reportChange(I)V

    goto/16 :goto_65

    .line 1376
    .end local v2    # "day":I
    .end local v3    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v6    # "lastSyncTime":J
    .end local v9    # "writeStatisticsNow":Z
    .end local v10    # "writeStatusNow":Z
    :pswitch_10a
    :try_start_10a
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    goto :goto_94

    .line 1445
    .end local v4    # "i":I
    .end local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v8    # "status":Landroid/content/SyncStatusInfo;
    :catchall_111
    move-exception v11

    monitor-exit v12
    :try_end_113
    .catchall {:try_start_10a .. :try_end_113} :catchall_111

    throw v11

    .line 1379
    .restart local v4    # "i":I
    .restart local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .restart local v8    # "status":Landroid/content/SyncStatusInfo;
    :pswitch_114
    :try_start_114
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    goto/16 :goto_94

    .line 1382
    :pswitch_11c
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceUser:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceUser:I

    goto/16 :goto_94

    .line 1385
    :pswitch_124
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceServer:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceServer:I

    goto/16 :goto_94

    .line 1388
    :pswitch_12c
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    goto/16 :goto_94

    .line 1396
    .restart local v2    # "day":I
    .restart local v9    # "writeStatisticsNow":Z
    :cond_134
    move-object/from16 v0, p0

    iget-object v11, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    if-eq v2, v11, :cond_16a

    .line 1397
    move-object/from16 v0, p0

    iget-object v11, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v11, v13, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v11, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    new-instance v14, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v14, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v14, v11, v13

    .line 1399
    const/4 v9, 0x1

    goto/16 :goto_ae

    .line 1400
    :cond_16a
    move-object/from16 v0, p0

    iget-object v11, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    if-nez v11, :cond_ae

    goto/16 :goto_ae

    .line 1419
    .restart local v3    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .restart local v6    # "lastSyncTime":J
    .restart local v10    # "writeStatusNow":Z
    :cond_175
    const-string v11, "canceled"

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f6

    .line 1420
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_188

    .line 1421
    const/4 v10, 0x1

    .line 1423
    :cond_188
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1424
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1425
    move-object/from16 v0, p5

    iput-object v0, v8, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1426
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_19c

    .line 1427
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 1429
    :cond_19c
    iget v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1430
    iget-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long v14, v14, p3

    iput-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto/16 :goto_f6

    .line 1435
    :cond_1aa
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_fb

    .line 1436
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/32 v14, 0x927c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_fb

    .line 1441
    :cond_1c4
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_100

    .line 1442
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/32 v14, 0x1b7740

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1dc
    .catchall {:try_start_114 .. :try_end_1dc} :catchall_111

    goto/16 :goto_100

    .line 1374
    :pswitch_data_1de
    .packed-switch 0x0
        :pswitch_124
        :pswitch_10a
        :pswitch_114
        :pswitch_11c
        :pswitch_12c
    .end packed-switch
.end method

.method public updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .registers 25
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "period"    # J
    .param p4, "flextime"    # J
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 937
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 938
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPeriodicSync: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> period "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", flex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extras "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, mAuthorities:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 943
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_5e

    .line 944
    :try_start_56
    const-string v3, "SyncManager"

    const-string/jumbo v4, "period < 0, should never happen in updateOrAddPeriodicSync"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_5e
    if-nez p6, :cond_68

    .line 947
    const-string v3, "SyncManager"

    const-string/jumbo v4, "null extras, should never happen in updateOrAddPeriodicSync:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_56 .. :try_end_68} :catchall_c4

    .line 951
    :cond_68
    :try_start_68
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v3, :cond_bc

    .line 952
    new-instance v2, Landroid/content/PeriodicSync;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v5, p6

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v2 .. v9}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 960
    .local v2, "toUpdate":Landroid/content/PeriodicSync;
    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v12

    .line 963
    .local v12, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v11, 0x0

    .line 964
    .local v11, "alreadyPresent":Z
    const/4 v13, 0x0

    .local v13, "i":I
    iget-object v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, "N":I
    :goto_93
    if-ge v13, v10, :cond_cd

    .line 965
    iget-object v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/PeriodicSync;

    .line 966
    .local v15, "syncInfo":Landroid/content/PeriodicSync;
    iget-object v3, v15, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    const/4 v4, 0x1

    move-object/from16 v0, p6

    invoke-static {v3, v0, v4}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 969
    iget-wide v4, v15, Landroid/content/PeriodicSync;->period:J

    cmp-long v3, p2, v4

    if-nez v3, :cond_c7

    iget-wide v4, v15, Landroid/content/PeriodicSync;->flexTime:J
    :try_end_b0
    .catchall {:try_start_68 .. :try_end_b0} :catchall_fc

    cmp-long v3, p4, v4

    if-nez v3, :cond_c7

    .line 990
    :try_start_b4
    invoke-direct/range {p0 .. p0}, writeAccountInfoLocked()V

    .line 991
    invoke-direct/range {p0 .. p0}, writeStatusLocked()V

    monitor-exit v16

    .line 995
    .end local v2    # "toUpdate":Landroid/content/PeriodicSync;
    .end local v10    # "N":I
    .end local v11    # "alreadyPresent":Z
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v13    # "i":I
    .end local v15    # "syncInfo":Landroid/content/PeriodicSync;
    :goto_bb
    return-void

    .line 990
    :cond_bc
    invoke-direct/range {p0 .. p0}, writeAccountInfoLocked()V

    .line 991
    invoke-direct/range {p0 .. p0}, writeStatusLocked()V

    monitor-exit v16

    goto :goto_bb

    .line 993
    :catchall_c4
    move-exception v3

    monitor-exit v16
    :try_end_c6
    .catchall {:try_start_b4 .. :try_end_c6} :catchall_c4

    throw v3

    .line 974
    .restart local v2    # "toUpdate":Landroid/content/PeriodicSync;
    .restart local v10    # "N":I
    .restart local v11    # "alreadyPresent":Z
    .restart local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v13    # "i":I
    .restart local v15    # "syncInfo":Landroid/content/PeriodicSync;
    :cond_c7
    :try_start_c7
    iget-object v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3, v13, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 975
    const/4 v11, 0x1

    .line 981
    .end local v15    # "syncInfo":Landroid/content/PeriodicSync;
    :cond_cd
    if-nez v11, :cond_eb

    .line 982
    iget-object v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    iget v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v14

    .line 985
    .local v14, "status":Landroid/content/SyncStatusInfo;
    iget-object v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v14, v3, v4, v5}, Landroid/content/SyncStatusInfo;->setPeriodicSyncTime(IJ)V
    :try_end_eb
    .catchall {:try_start_c7 .. :try_end_eb} :catchall_fc

    .line 990
    .end local v14    # "status":Landroid/content/SyncStatusInfo;
    :cond_eb
    :try_start_eb
    invoke-direct/range {p0 .. p0}, writeAccountInfoLocked()V

    .line 991
    invoke-direct/range {p0 .. p0}, writeStatusLocked()V

    .line 993
    monitor-exit v16
    :try_end_f2
    .catchall {:try_start_eb .. :try_end_f2} :catchall_c4

    .line 994
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, reportChange(I)V

    goto :goto_bb

    .line 964
    .restart local v15    # "syncInfo":Landroid/content/PeriodicSync;
    :cond_f9
    add-int/lit8 v13, v13, 0x1

    goto :goto_93

    .line 990
    .end local v2    # "toUpdate":Landroid/content/PeriodicSync;
    .end local v10    # "N":I
    .end local v11    # "alreadyPresent":Z
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v13    # "i":I
    .end local v15    # "syncInfo":Landroid/content/PeriodicSync;
    :catchall_fc
    move-exception v3

    :try_start_fd
    invoke-direct/range {p0 .. p0}, writeAccountInfoLocked()V

    .line 991
    invoke-direct/range {p0 .. p0}, writeStatusLocked()V

    throw v3
    :try_end_104
    .catchall {:try_start_fd .. :try_end_104} :catchall_c4
.end method

.method public writeAllState()V
    .registers 3

    .prologue
    .line 1797
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1800
    :try_start_3
    iget v0, p0, mNumPendingFinished:I

    if-lez v0, :cond_a

    .line 1802
    invoke-direct {p0}, writePendingOperationsLocked()V

    .line 1806
    :cond_a
    invoke-direct {p0}, writeStatusLocked()V

    .line 1807
    invoke-direct {p0}, writeStatisticsLocked()V

    .line 1808
    monitor-exit v1

    .line 1809
    return-void

    .line 1808
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method
