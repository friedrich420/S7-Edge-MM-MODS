.class public Landroid/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActivityChooserModel$1;,
        Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;,
        Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;,
        Landroid/widget/ActivityChooserModel$DefaultSorter;,
        Landroid/widget/ActivityChooserModel$ActivityResolveInfo;,
        Landroid/widget/ActivityChooserModel$HistoricalRecord;,
        Landroid/widget/ActivityChooserModel$OnChooseActivityListener;,
        Landroid/widget/ActivityChooserModel$ActivitySorter;,
        Landroid/widget/ActivityChooserModel$ActivityChooserModelClient;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field private static final ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ACTIVITY_INFLATION:I = 0x5

.field private static final DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f

.field public static final DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final DEFAULT_HISTORY_MAX_LENGTH:I = 0x32

.field private static final HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"

.field private static final TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

.field private mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

.field private mCanReadHistoricalData:Z

.field private final mContext:Landroid/content/Context;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field private final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntent:Landroid/content/Intent;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mReadShareHistoryCalled:Z

.field private mReloadActivities:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 165
    const-class v0, Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LOG_TAG:Ljava/lang/String;

    .line 226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sRegistryLock:Ljava/lang/Object;

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, sDataModelRegistry:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "historyFileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 359
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 237
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mInstanceLock:Ljava/lang/Object;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mActivities:Ljava/util/List;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mHistoricalRecords:Ljava/util/List;

    .line 252
    new-instance v0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;

    invoke-direct {v0, p0, v3}, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V

    iput-object v0, p0, mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 272
    new-instance v0, Landroid/widget/ActivityChooserModel$DefaultSorter;

    invoke-direct {v0, p0, v3}, Landroid/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V

    iput-object v0, p0, mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    .line 277
    const/16 v0, 0x32

    iput v0, p0, mHistoryMaxSize:I

    .line 287
    iput-boolean v2, p0, mCanReadHistoricalData:Z

    .line 298
    iput-boolean v1, p0, mReadShareHistoryCalled:Z

    .line 306
    iput-boolean v2, p0, mHistoricalRecordsChanged:Z

    .line 311
    iput-boolean v1, p0, mReloadActivities:Z

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 361
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mHistoryFileName:Ljava/lang/String;

    .line 367
    :goto_5e
    iget-object v0, p0, mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 368
    return-void

    .line 365
    :cond_66
    iput-object p2, p0, mHistoryFileName:Ljava/lang/String;

    goto :goto_5e
.end method

.method static synthetic access$300(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserModel;

    .prologue
    .line 98
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 98
    sget-object v0, LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserModel;

    .prologue
    .line 98
    iget-object v0, p0, mHistoryFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Landroid/widget/ActivityChooserModel;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserModel;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, mCanReadHistoricalData:Z

    return p1
.end method

.method static synthetic access$702(Landroid/widget/ActivityChooserModel;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserModel;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, mReloadActivities:Z

    return p1
.end method

.method private addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z
    .registers 4
    .param p1, "historicalRecord"    # Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .prologue
    .line 752
    iget-object v1, p0, mHistoricalRecords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 753
    .local v0, "added":Z
    if-eqz v0, :cond_17

    .line 754
    const/4 v1, 0x1

    iput-boolean v1, p0, mHistoricalRecordsChanged:Z

    .line 755
    invoke-direct {p0}, pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 756
    invoke-direct {p0}, persistHistoricalDataIfNeeded()V

    .line 757
    invoke-direct {p0}, sortActivitiesIfNeeded()Z

    .line 758
    invoke-virtual {p0}, notifyChanged()V

    .line 760
    :cond_17
    return v0
.end method

.method private ensureConsistentState()V
    .registers 3

    .prologue
    .line 674
    invoke-direct {p0}, loadActivitiesIfNeeded()Z

    move-result v0

    .line 675
    .local v0, "stateChanged":Z
    invoke-direct {p0}, readHistoricalDataIfNeeded()Z

    move-result v1

    or-int/2addr v0, v1

    .line 676
    invoke-direct {p0}, pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 677
    if-eqz v0, :cond_14

    .line 678
    invoke-direct {p0}, sortActivitiesIfNeeded()Z

    .line 679
    invoke-virtual {p0}, notifyChanged()V

    .line 681
    :cond_14
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "historyFileName"    # Ljava/lang/String;

    .prologue
    .line 343
    sget-object v2, sRegistryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 344
    :try_start_3
    sget-object v1, sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel;

    .line 345
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    if-nez v0, :cond_17

    .line 346
    new-instance v0, Landroid/widget/ActivityChooserModel;

    .end local v0    # "dataModel":Landroid/widget/ActivityChooserModel;
    invoke-direct {v0, p0, p1}, <init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    .restart local v0    # "dataModel":Landroid/widget/ActivityChooserModel;
    sget-object v1, sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_17
    monitor-exit v2

    return-object v0

    .line 350
    .end local v0    # "dataModel":Landroid/widget/ActivityChooserModel;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private loadActivitiesIfNeeded()Z
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 707
    iget-boolean v6, p0, mReloadActivities:Z

    if-eqz v6, :cond_4b

    iget-object v6, p0, mIntent:Landroid/content/Intent;

    if-eqz v6, :cond_4b

    .line 708
    iput-boolean v5, p0, mReloadActivities:Z

    .line 709
    iget-object v6, p0, mActivities:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 710
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 712
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 713
    .local v3, "resolveInfoCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-ge v1, v3, :cond_4a

    .line 714
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 715
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 716
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v8, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v5, v6, v7, v8}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v5

    if-nez v5, :cond_47

    .line 719
    iget-object v5, p0, mActivities:Ljava/util/List;

    new-instance v6, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v6, p0, v2}, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 722
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4a
    const/4 v5, 0x1

    .line 724
    .end local v1    # "i":I
    .end local v3    # "resolveInfoCount":I
    .end local v4    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4b
    return v5
.end method

.method private persistHistoricalDataIfNeeded()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 580
    iget-boolean v0, p0, mReadShareHistoryCalled:Z

    if-nez v0, :cond_d

    .line 581
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_d
    iget-boolean v0, p0, mHistoricalRecordsChanged:Z

    if-nez v0, :cond_12

    .line 591
    :cond_11
    :goto_11
    return-void

    .line 586
    :cond_12
    iput-boolean v5, p0, mHistoricalRecordsChanged:Z

    .line 587
    iget-object v0, p0, mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 588
    new-instance v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, mHistoricalRecords:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, mHistoryFileName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_11
.end method

.method private pruneExcessiveHistoricalRecordsIfNeeded()V
    .registers 5

    .prologue
    .line 767
    iget-object v2, p0, mHistoricalRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, mHistoryMaxSize:I

    sub-int v1, v2, v3

    .line 768
    .local v1, "pruneCount":I
    if-gtz v1, :cond_d

    .line 778
    :cond_c
    return-void

    .line 771
    :cond_d
    const/4 v2, 0x1

    iput-boolean v2, p0, mHistoricalRecordsChanged:Z

    .line 772
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v1, :cond_c

    .line 773
    iget-object v2, p0, mHistoricalRecords:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 772
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method private readHistoricalDataIfNeeded()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 735
    iget-boolean v2, p0, mCanReadHistoricalData:Z

    if-eqz v2, :cond_1a

    iget-boolean v2, p0, mHistoricalRecordsChanged:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, mHistoryFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 737
    iput-boolean v1, p0, mCanReadHistoricalData:Z

    .line 738
    iput-boolean v0, p0, mReadShareHistoryCalled:Z

    .line 739
    invoke-direct {p0}, readHistoricalDataImpl()V

    .line 742
    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19
.end method

.method private readHistoricalDataImpl()V
    .registers 19

    .prologue
    .line 984
    const/4 v3, 0x0

    .line 986
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, mHistoryFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_e} :catch_28

    move-result-object v3

    .line 994
    :try_start_f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 995
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v15}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 997
    const/4 v12, 0x0

    .line 998
    .local v12, "type":I
    :goto_1d
    const/4 v15, 0x1

    if-eq v12, v15, :cond_2a

    const/4 v15, 0x2

    if-eq v12, v15, :cond_2a

    .line 999
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    goto :goto_1d

    .line 987
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_28
    move-exception v4

    .line 1052
    :cond_29
    :goto_29
    return-void

    .line 1002
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_2a
    const-string v15, "historical-records"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_67

    .line 1003
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v16, "Share records file does not start with historical-records tag."

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_3e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_3e} :catch_3e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3e} :catch_97
    .catchall {:try_start_f .. :try_end_3e} :catchall_f1

    .line 1039
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_3e
    move-exception v14

    .line 1040
    .local v14, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3f
    sget-object v15, LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error reading historical recrod file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, mHistoryFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_3f .. :try_end_5f} :catchall_f1

    .line 1044
    if-eqz v3, :cond_29

    .line 1046
    :try_start_61
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_29

    .line 1047
    :catch_65
    move-exception v15

    goto :goto_29

    .line 1007
    .end local v14    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_67
    :try_start_67
    move-object/from16 v0, p0

    iget-object v5, v0, mHistoricalRecords:Ljava/util/List;

    .line 1008
    .local v5, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1011
    :cond_6e
    :goto_6e
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_67 .. :try_end_71} :catch_3e
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_71} :catch_97
    .catchall {:try_start_67 .. :try_end_71} :catchall_f1

    move-result v12

    .line 1012
    const/4 v15, 0x1

    if-ne v12, v15, :cond_7d

    .line 1044
    if-eqz v3, :cond_29

    .line 1046
    :try_start_77
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_29

    .line 1047
    :catch_7b
    move-exception v15

    goto :goto_29

    .line 1015
    :cond_7d
    const/4 v15, 0x3

    if-eq v12, v15, :cond_6e

    const/4 v15, 0x4

    if-eq v12, v15, :cond_6e

    .line 1018
    :try_start_83
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1019
    .local v7, "nodeName":Ljava/lang/String;
    const-string v15, "historical-record"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c2

    .line 1020
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v16, "Share records file not well-formed."

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_97
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_83 .. :try_end_97} :catch_3e
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_97} :catch_97
    .catchall {:try_start_83 .. :try_end_97} :catchall_f1

    .line 1041
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_97
    move-exception v6

    .line 1042
    .local v6, "ioe":Ljava/io/IOException;
    :try_start_98
    sget-object v15, LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error reading historical recrod file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, mHistoryFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b8
    .catchall {:try_start_98 .. :try_end_b8} :catchall_f1

    .line 1044
    if-eqz v3, :cond_29

    .line 1046
    :try_start_ba
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_bf

    goto/16 :goto_29

    .line 1047
    :catch_bf
    move-exception v15

    goto/16 :goto_29

    .line 1023
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v7    # "nodeName":Ljava/lang/String;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_c2
    const/4 v15, 0x0

    :try_start_c3
    const-string v16, "activity"

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1024
    .local v2, "activity":Ljava/lang/String;
    const/4 v15, 0x0

    const-string/jumbo v16, "time"

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1026
    .local v10, "time":J
    const/4 v15, 0x0

    const-string/jumbo v16, "weight"

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 1028
    .local v13, "weight":F
    new-instance v9, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    invoke-direct {v9, v2, v10, v11, v13}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 1029
    .local v9, "readRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ef
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c3 .. :try_end_ef} :catch_3e
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_ef} :catch_97
    .catchall {:try_start_c3 .. :try_end_ef} :catchall_f1

    goto/16 :goto_6e

    .line 1044
    .end local v2    # "activity":Ljava/lang/String;
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "readRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v10    # "time":J
    .end local v12    # "type":I
    .end local v13    # "weight":F
    :catchall_f1
    move-exception v15

    if-eqz v3, :cond_f7

    .line 1046
    :try_start_f4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f8

    .line 1049
    :cond_f7
    :goto_f7
    throw v15

    .line 1047
    :catch_f8
    move-exception v16

    goto :goto_f7
.end method

.method private sortActivitiesIfNeeded()Z
    .registers 5

    .prologue
    .line 691
    iget-object v0, p0, mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    if-eqz v0, :cond_29

    iget-object v0, p0, mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_29

    iget-object v0, p0, mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 693
    iget-object v0, p0, mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    iget-object v1, p0, mIntent:Landroid/content/Intent;

    iget-object v2, p0, mActivities:Ljava/util/List;

    iget-object v3, p0, mHistoricalRecords:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/ActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 695
    const/4 v0, 0x1

    .line 697
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method


# virtual methods
.method public chooseActivity(I)Landroid/content/Intent;
    .registers 12
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 471
    iget-object v7, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v7

    .line 472
    :try_start_4
    iget-object v8, p0, mIntent:Landroid/content/Intent;

    if-nez v8, :cond_b

    .line 473
    monitor-exit v7

    move-object v0, v6

    .line 501
    :goto_a
    return-object v0

    .line 476
    :cond_b
    invoke-direct {p0}, ensureConsistentState()V

    .line 478
    iget-object v8, p0, mActivities:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 480
    .local v2, "chosenActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v8, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .local v3, "chosenName":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    iget-object v8, p0, mIntent:Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 485
    .local v0, "choiceIntent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 487
    iget-object v8, p0, mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    if-eqz v8, :cond_45

    .line 489
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 490
    .local v1, "choiceIntentCopy":Landroid/content/Intent;
    iget-object v8, p0, mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-interface {v8, p0, v1}, Landroid/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Landroid/widget/ActivityChooserModel;Landroid/content/Intent;)Z

    move-result v4

    .line 492
    .local v4, "handled":Z
    if-eqz v4, :cond_45

    .line 493
    monitor-exit v7

    move-object v0, v6

    goto :goto_a

    .line 497
    .end local v1    # "choiceIntentCopy":Landroid/content/Intent;
    .end local v4    # "handled":Z
    :cond_45
    new-instance v5, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v8, v9, v6}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 499
    .local v5, "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v5}, addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 501
    monitor-exit v7

    goto :goto_a

    .line 502
    .end local v0    # "choiceIntent":Landroid/content/Intent;
    .end local v2    # "chosenActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "chosenName":Landroid/content/ComponentName;
    .end local v5    # "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    :catchall_55
    move-exception v6

    monitor-exit v7
    :try_end_57
    .catchall {:try_start_4 .. :try_end_57} :catchall_55

    throw v6
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 663
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 664
    iget-object v0, p0, mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 665
    return-void
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 424
    iget-object v1, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_3
    invoke-direct {p0}, ensureConsistentState()V

    .line 426
    iget-object v0, p0, mActivities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    .line 427
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getActivityCount()I
    .registers 3

    .prologue
    .line 409
    iget-object v1, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_3
    invoke-direct {p0}, ensureConsistentState()V

    .line 411
    iget-object v0, p0, mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 412
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .registers 8
    .param p1, "activity"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 438
    iget-object v5, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 439
    :try_start_3
    invoke-direct {p0}, ensureConsistentState()V

    .line 440
    iget-object v0, p0, mActivities:Ljava/util/List;

    .line 441
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 442
    .local v1, "activityCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v1, :cond_1e

    .line 443
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 444
    .local v2, "currentActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v4, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v4, p1, :cond_1b

    .line 445
    monitor-exit v5

    .line 448
    .end local v2    # "currentActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "i":I
    :goto_1a
    return v3

    .line 442
    .restart local v2    # "currentActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .restart local v3    # "i":I
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 448
    .end local v2    # "currentActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    :cond_1e
    const/4 v3, -0x1

    monitor-exit v5

    goto :goto_1a

    .line 449
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .end local v1    # "activityCount":I
    .end local v3    # "i":I
    :catchall_21
    move-exception v4

    monitor-exit v5
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v4
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .registers 4

    .prologue
    .line 526
    iget-object v1, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 527
    :try_start_3
    invoke-direct {p0}, ensureConsistentState()V

    .line 528
    iget-object v0, p0, mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 529
    iget-object v0, p0, mActivities:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    .line 532
    :goto_1a
    return-object v0

    .line 531
    :cond_1b
    monitor-exit v1

    .line 532
    const/4 v0, 0x0

    goto :goto_1a

    .line 531
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getHistoryMaxSize()I
    .registers 3

    .prologue
    .line 644
    iget-object v1, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 645
    :try_start_3
    iget v0, p0, mHistoryMaxSize:I

    monitor-exit v1

    return v0

    .line 646
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getHistorySize()I
    .registers 3

    .prologue
    .line 655
    iget-object v1, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 656
    :try_start_3
    invoke-direct {p0}, ensureConsistentState()V

    .line 657
    iget-object v0, p0, mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 658
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 396
    iget-object v1, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_3
    iget-object v0, p0, mIntent:Landroid/content/Intent;

    monitor-exit v1

    return-object v0

    .line 398
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setActivitySorter(Landroid/widget/ActivityChooserModel$ActivitySorter;)V
    .registers 4
    .param p1, "activitySorter"    # Landroid/widget/ActivityChooserModel$ActivitySorter;

    .prologue
    .line 601
    iget-object v1, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 602
    :try_start_3
    iget-object v0, p0, mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    if-ne v0, p1, :cond_9

    .line 603
    monitor-exit v1

    .line 610
    :goto_8
    return-void

    .line 605
    :cond_9
    iput-object p1, p0, mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    .line 606
    invoke-direct {p0}, sortActivitiesIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 607
    invoke-virtual {p0}, notifyChanged()V

    .line 609
    :cond_14
    monitor-exit v1

    goto :goto_8

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public setDefaultActivity(I)V
    .registers 12
    .param p1, "index"    # I

    .prologue
    .line 546
    iget-object v6, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 547
    :try_start_3
    invoke-direct {p0}, ensureConsistentState()V

    .line 549
    iget-object v5, p0, mActivities:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 550
    .local v2, "newDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v5, p0, mActivities:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 553
    .local v3, "oldDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v3, :cond_41

    .line 555
    iget v5, v3, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v7, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    sub-float/2addr v5, v7

    const/high16 v7, 0x40a00000    # 5.0f

    add-float v4, v5, v7

    .line 561
    .local v4, "weight":F
    :goto_22
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .local v0, "defaultName":Landroid/content/ComponentName;
    new-instance v1, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v0, v8, v9, v4}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 566
    .local v1, "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v1}, addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 567
    monitor-exit v6

    .line 568
    return-void

    .line 558
    .end local v0    # "defaultName":Landroid/content/ComponentName;
    .end local v1    # "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v4    # "weight":F
    :cond_41
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "weight":F
    goto :goto_22

    .line 567
    .end local v2    # "newDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "oldDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v4    # "weight":F
    :catchall_44
    move-exception v5

    monitor-exit v6
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v5
.end method

.method public setHistoryMaxSize(I)V
    .registers 4
    .param p1, "historyMaxSize"    # I

    .prologue
    .line 626
    iget-object v1, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 627
    :try_start_3
    iget v0, p0, mHistoryMaxSize:I

    if-ne v0, p1, :cond_9

    .line 628
    monitor-exit v1

    .line 636
    :goto_8
    return-void

    .line 630
    :cond_9
    iput p1, p0, mHistoryMaxSize:I

    .line 631
    invoke-direct {p0}, pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 632
    invoke-direct {p0}, sortActivitiesIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 633
    invoke-virtual {p0}, notifyChanged()V

    .line 635
    :cond_17
    monitor-exit v1

    goto :goto_8

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 380
    iget-object v1, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_3
    iget-object v0, p0, mIntent:Landroid/content/Intent;

    if-ne v0, p1, :cond_9

    .line 382
    monitor-exit v1

    .line 388
    :goto_8
    return-void

    .line 384
    :cond_9
    iput-object p1, p0, mIntent:Landroid/content/Intent;

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, mReloadActivities:Z

    .line 386
    invoke-direct {p0}, ensureConsistentState()V

    .line 387
    monitor-exit v1

    goto :goto_8

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public setOnChooseActivityListener(Landroid/widget/ActivityChooserModel$OnChooseActivityListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    .prologue
    .line 511
    iget-object v1, p0, mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_3
    iput-object p1, p0, mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 513
    monitor-exit v1

    .line 514
    return-void

    .line 513
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
