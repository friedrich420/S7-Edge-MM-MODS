.class public Lcom/android/server/AssetAtlasService;
.super Landroid/view/IAssetAtlas$Stub;
.source "AssetAtlasService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AssetAtlasService$ComputeWorker;,
        Lcom/android/server/AssetAtlasService$WorkerResult;,
        Lcom/android/server/AssetAtlasService$Configuration;,
        Lcom/android/server/AssetAtlasService$Renderer;
    }
.end annotation


# static fields
.field public static final ASSET_ATLAS_SERVICE:Ljava/lang/String; = "assetatlas"

.field private static final ATLAS_MAP_ENTRY_FIELD_COUNT:I = 0x3

.field private static final DEBUG_ATLAS:Z = true

.field private static final DEBUG_ATLAS_TEXTURE:Z = false

.field private static final GRAPHIC_BUFFER_USAGE:I = 0x100

.field private static final LOG_TAG:Ljava/lang/String; = "AssetAtlas"

.field private static final MAX_SIZE:I = 0x800

.field private static final MIN_SIZE:I = 0x300

.field private static final PACKING_THRESHOLD:F = 0.8f

.field private static final STEP:I = 0x40


# instance fields
.field private mAtlasMap:[J

.field private final mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBuffer:Landroid/view/GraphicBuffer;

.field private final mContext:Landroid/content/Context;

.field private final mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/view/IAssetAtlas$Stub;-><init>()V

    .line 106
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v8, p0, mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 133
    invoke-static {p1}, queryVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, mVersionName:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/util/HashSet;

    const/16 v8, 0x12c

    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 136
    .local v0, "bitmaps":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    const/4 v7, 0x0

    .line 139
    .local v7, "totalPixelCount":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 140
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v2

    .line 142
    .local v2, "drawables":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 143
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    if-ge v3, v1, :cond_41

    .line 145
    :try_start_2a
    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->addAtlasableBitmaps(Ljava/util/Collection;)I
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_33} :catch_38

    move-result v8

    add-int/2addr v7, v8

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 146
    :catch_38
    move-exception v6

    .line 147
    .local v6, "t":Ljava/lang/Throwable;
    const-string v8, "AssetAtlas"

    const-string v9, "Failed to fetch preloaded drawable state"

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    throw v6

    .line 152
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_41
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 155
    .local v5, "sortedBitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    new-instance v8, Lcom/android/server/AssetAtlasService$1;

    invoke-direct {v8, p0}, Lcom/android/server/AssetAtlasService$1;-><init>(Lcom/android/server/AssetAtlasService;)V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 166
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/server/AssetAtlasService$Renderer;

    invoke-direct {v9, p0, v5, v7}, Lcom/android/server/AssetAtlasService$Renderer;-><init>(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;I)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AssetAtlasService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;

    .prologue
    .line 65
    iget-object v0, p0, mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, chooseConfiguration(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;

    .prologue
    .line 65
    iget-object v0, p0, mBuffer:Landroid/view/GraphicBuffer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/AssetAtlasService;Landroid/view/GraphicBuffer;)Landroid/view/GraphicBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;
    .param p1, "x1"    # Landroid/view/GraphicBuffer;

    .prologue
    .line 65
    iput-object p1, p0, mBuffer:Landroid/view/GraphicBuffer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/AssetAtlasService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;

    .prologue
    .line 65
    iget-object v0, p0, mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/AssetAtlasService;)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;

    .prologue
    .line 65
    iget-object v0, p0, mAtlasMap:[J

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/AssetAtlasService;[J)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AssetAtlasService;
    .param p1, "x1"    # [J

    .prologue
    .line 65
    iput-object p1, p0, mAtlasMap:[J

    return-object p1
.end method

.method static synthetic access$500()V
    .registers 0

    .prologue
    .line 65
    invoke-static {}, deleteDataFile()V

    return-void
.end method

.method static synthetic access$600(Landroid/view/GraphicBuffer;Landroid/graphics/Bitmap;)Z
    .registers 3
    .param p0, "x0"    # Landroid/view/GraphicBuffer;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 65
    invoke-static {p0, p1}, nUploadAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method private checkBuildIdentifier(Ljava/io/BufferedReader;Ljava/lang/String;)Z
    .registers 6
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "versionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-direct {p0, p2}, getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "deviceBuildId":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "buildId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private chooseConfiguration(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .registers 7
    .param p2, "pixelCount"    # I
    .param p3, "versionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/AssetAtlasService$Configuration;"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 443
    .local v0, "config":Lcom/android/server/AssetAtlasService$Configuration;
    invoke-static {}, getDataFile()Ljava/io/File;

    move-result-object v1

    .line 444
    .local v1, "dataFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 445
    invoke-direct {p0, v1, p3}, readConfiguration(Ljava/io/File;Ljava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v0

    .line 448
    :cond_f
    if-nez v0, :cond_1a

    .line 449
    invoke-static {p1, p2}, computeBestConfiguration(Ljava/util/ArrayList;I)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_1a

    invoke-direct {p0, v0, v1, p3}, writeConfiguration(Lcom/android/server/AssetAtlasService$Configuration;Ljava/io/File;Ljava/lang/String;)V

    .line 453
    :cond_1a
    return-object v0
.end method

.method private static computeBestConfiguration(Ljava/util/ArrayList;I)Lcom/android/server/AssetAtlasService$Configuration;
    .registers 25
    .param p1, "pixelCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)",
            "Lcom/android/server/AssetAtlasService$Configuration;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const-string v8, "AssetAtlas"

    const-string v9, "Computing best atlas configuration..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 359
    .local v12, "begin":J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 362
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/AssetAtlasService$WorkerResult;>;"
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v14

    .line 363
    .local v14, "cpuCount":I
    const/4 v8, 0x1

    if-ne v14, v8, :cond_9c

    .line 364
    new-instance v4, Lcom/android/server/AssetAtlasService$ComputeWorker;

    const/16 v5, 0x300

    const/16 v6, 0x800

    const/16 v7, 0x40

    const/4 v11, 0x0

    move-object/from16 v8, p0

    move/from16 v9, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/AssetAtlasService$ComputeWorker;-><init>(IIILjava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4}, Lcom/android/server/AssetAtlasService$ComputeWorker;->run()V

    .line 395
    :cond_32
    new-instance v8, Lcom/android/server/AssetAtlasService$2;

    invoke-direct {v8}, Lcom/android/server/AssetAtlasService$2;-><init>()V

    invoke-static {v10, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 405
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v12

    long-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float v15, v8, v9

    .line 406
    .local v15, "delay":F
    const-string v8, "AssetAtlas"

    const-string v9, "Found best atlas configuration (out of %d) in %.2fs"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v8, 0x0

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/AssetAtlasService$WorkerResult;

    .line 411
    .local v19, "result":Lcom/android/server/AssetAtlasService$WorkerResult;
    new-instance v8, Lcom/android/server/AssetAtlasService$Configuration;

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->type:Landroid/graphics/Atlas$Type;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->width:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->height:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/AssetAtlasService$WorkerResult;->count:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v8, v9, v0, v1, v2}, Lcom/android/server/AssetAtlasService$Configuration;-><init>(Landroid/graphics/Atlas$Type;III)V

    .end local v15    # "delay":F
    .end local v19    # "result":Lcom/android/server/AssetAtlasService$WorkerResult;
    :goto_9b
    return-object v8

    .line 366
    :cond_9c
    add-int/lit8 v8, v14, -0x1

    mul-int/lit8 v8, v8, 0x40

    add-int/lit16 v5, v8, 0x300

    .line 367
    .local v5, "start":I
    const/16 v6, 0x800

    .line 368
    .local v6, "end":I
    mul-int/lit8 v7, v14, 0x40

    .line 370
    .local v7, "step":I
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v11, v14}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 372
    .local v11, "signal":Ljava/util/concurrent/CountDownLatch;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_ad
    move/from16 v0, v17

    if-ge v0, v14, :cond_e2

    .line 373
    new-instance v4, Lcom/android/server/AssetAtlasService$ComputeWorker;

    move-object/from16 v8, p0

    move/from16 v9, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/AssetAtlasService$ComputeWorker;-><init>(IIILjava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    .line 375
    .local v4, "worker":Lcom/android/server/AssetAtlasService$ComputeWorker;
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Atlas Worker #"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 372
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v5, v5, -0x40

    add-int/lit8 v6, v6, -0x40

    goto :goto_ad

    .line 380
    .end local v4    # "worker":Lcom/android/server/AssetAtlasService$ComputeWorker;
    :cond_e2
    const-wide/16 v8, 0xa

    :try_start_e4
    sget-object v20, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v20

    invoke-virtual {v11, v8, v9, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_eb
    .catch Ljava/lang/InterruptedException; {:try_start_e4 .. :try_end_eb} :catch_f7

    move-result v18

    .line 386
    .local v18, "isAllWorkerFinished":Z
    if-nez v18, :cond_32

    .line 389
    const-string v8, "AssetAtlas"

    const-string v9, "Could not complete configuration computation before timeout."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v8, 0x0

    goto :goto_9b

    .line 381
    .end local v18    # "isAllWorkerFinished":Z
    :catch_f7
    move-exception v16

    .line 382
    .local v16, "e":Ljava/lang/InterruptedException;
    const-string v8, "AssetAtlas"

    const-string v9, "Could not complete configuration computation"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v8, 0x0

    goto :goto_9b
.end method

.method private static deleteDataFile()V
    .registers 2

    .prologue
    .line 424
    const-string v0, "AssetAtlas"

    const-string v1, "Current configuration inconsistent with assets list"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {}, getDataFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_18

    .line 426
    const-string v0, "AssetAtlas"

    const-string v1, "Could not delete the current configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_18
    return-void
.end method

.method private getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2f

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.build.fingerprint"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, getFrameworkResourcesFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDataFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 419
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 420
    .local v0, "systemDirectory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "framework_atlas.config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getFrameworkResourcesFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 431
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static native nUploadAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Bitmap;)Z
.end method

.method private static queryVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 180
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    .line 184
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_f
    return-object v3

    .line 181
    :catch_10
    move-exception v0

    .line 182
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "AssetAtlas"

    const-string v4, "Could not get package info"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const/4 v3, 0x0

    goto :goto_f
.end method

.method private readConfiguration(Ljava/io/File;Ljava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    .registers 16
    .param p1, "file"    # Ljava/io/File;
    .param p2, "versionName"    # Ljava/lang/String;

    .prologue
    .line 495
    const/4 v8, 0x0

    .line 496
    .local v8, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 498
    .local v6, "config":Lcom/android/server/AssetAtlasService$Configuration;
    :try_start_2
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_11} :catch_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_11} :catch_72
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_95
    .catchall {:try_start_2 .. :try_end_11} :catchall_b8

    .line 500
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_11
    invoke-direct {p0, v9, p2}, checkBuildIdentifier(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d3

    .line 501
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Atlas$Type;->valueOf(Ljava/lang/String;)Landroid/graphics/Atlas$Type;

    move-result-object v1

    .line 502
    .local v1, "type":Landroid/graphics/Atlas$Type;
    const/16 v10, 0x300

    const/16 v11, 0x800

    invoke-static {v9, v10, v11}, readInt(Ljava/io/BufferedReader;II)I

    move-result v2

    .line 503
    .local v2, "width":I
    const/16 v10, 0x300

    const/16 v11, 0x800

    invoke-static {v9, v10, v11}, readInt(Ljava/io/BufferedReader;II)I

    move-result v3

    .line 504
    .local v3, "height":I
    const/4 v10, 0x0

    const v11, 0x7fffffff

    invoke-static {v9, v10, v11}, readInt(Ljava/io/BufferedReader;II)I

    move-result v4

    .line 505
    .local v4, "count":I
    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    invoke-static {v9, v10, v11}, readInt(Ljava/io/BufferedReader;II)I

    move-result v5

    .line 507
    .local v5, "flags":I
    new-instance v0, Lcom/android/server/AssetAtlasService$Configuration;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AssetAtlasService$Configuration;-><init>(Landroid/graphics/Atlas$Type;IIII)V
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_45} :catch_ca
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_45} :catch_c7
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_45} :catch_c4
    .catchall {:try_start_11 .. :try_end_45} :catchall_c1

    .line 516
    .end local v1    # "type":Landroid/graphics/Atlas$Type;
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "count":I
    .end local v5    # "flags":I
    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .local v0, "config":Lcom/android/server/AssetAtlasService$Configuration;
    :goto_45
    if-eqz v9, :cond_d0

    .line 518
    :try_start_47
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4c

    move-object v8, v9

    .line 524
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :goto_4b
    return-object v0

    .line 519
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_4c
    move-exception v10

    move-object v8, v9

    .line 521
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_4b

    .line 509
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_4f
    move-exception v7

    .line 510
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :goto_50
    :try_start_50
    const-string v10, "AssetAtlas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid parameter value in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_b8

    .line 516
    if-eqz v8, :cond_cd

    .line 518
    :try_start_6a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6f

    move-object v0, v6

    .line 521
    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_4b

    .line 519
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_6f
    move-exception v10

    move-object v0, v6

    .line 521
    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_4b

    .line 511
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_72
    move-exception v7

    .line 512
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_73
    :try_start_73
    const-string v10, "AssetAtlas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not read "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_73 .. :try_end_8b} :catchall_b8

    .line 516
    if-eqz v8, :cond_cd

    .line 518
    :try_start_8d
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_92

    move-object v0, v6

    .line 521
    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_4b

    .line 519
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_92
    move-exception v10

    move-object v0, v6

    .line 521
    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_4b

    .line 513
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_95
    move-exception v7

    .line 514
    .local v7, "e":Ljava/io/IOException;
    :goto_96
    :try_start_96
    const-string v10, "AssetAtlas"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not read "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ae
    .catchall {:try_start_96 .. :try_end_ae} :catchall_b8

    .line 516
    if-eqz v8, :cond_cd

    .line 518
    :try_start_b0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b5

    move-object v0, v6

    .line 521
    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_4b

    .line 519
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catch_b5
    move-exception v10

    move-object v0, v6

    .line 521
    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto :goto_4b

    .line 516
    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    :catchall_b8
    move-exception v10

    :goto_b9
    if-eqz v8, :cond_be

    .line 518
    :try_start_bb
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf

    .line 521
    :cond_be
    :goto_be
    throw v10

    .line 519
    :catch_bf
    move-exception v11

    goto :goto_be

    .line 516
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catchall_c1
    move-exception v10

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_b9

    .line 513
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_c4
    move-exception v7

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_96

    .line 511
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_c7
    move-exception v7

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_73

    .line 509
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_ca
    move-exception v7

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_50

    :cond_cd
    move-object v0, v6

    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto/16 :goto_4b

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_d0
    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_4b

    .end local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_d3
    move-object v0, v6

    .end local v6    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    .restart local v0    # "config":Lcom/android/server/AssetAtlasService$Configuration;
    goto/16 :goto_45
.end method

.method private static readInt(Ljava/io/BufferedReader;II)I
    .registers 4
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .param p1, "min"    # I
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private writeConfiguration(Lcom/android/server/AssetAtlasService$Configuration;Ljava/io/File;Ljava/lang/String;)V
    .registers 10
    .param p1, "config"    # Lcom/android/server/AssetAtlasService$Configuration;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "versionName"    # Ljava/lang/String;

    .prologue
    .line 460
    const/4 v1, 0x0

    .line 462
    .local v1, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_10} :catch_60
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_81
    .catchall {:try_start_1 .. :try_end_10} :catchall_a2

    .line 463
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_10
    invoke-direct {p0, p3}, getBuildIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 465
    iget-object v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->type:Landroid/graphics/Atlas$Type;

    invoke-virtual {v3}, Landroid/graphics/Atlas$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 467
    iget v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 469
    iget v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 471
    iget v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->count:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 473
    iget v3, p1, Lcom/android/server/AssetAtlasService$Configuration;->flags:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_56
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_56} :catch_b1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_56} :catch_ae
    .catchall {:try_start_10 .. :try_end_56} :catchall_ab

    .line 480
    if-eqz v2, :cond_b4

    .line 482
    :try_start_58
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5d

    move-object v1, v2

    .line 488
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    :cond_5c
    :goto_5c
    return-void

    .line 483
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_5d
    move-exception v3

    move-object v1, v2

    .line 485
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_5c

    .line 475
    :catch_60
    move-exception v0

    .line 476
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_61
    :try_start_61
    const-string v3, "AssetAtlas"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_61 .. :try_end_79} :catchall_a2

    .line 480
    if-eqz v1, :cond_5c

    .line 482
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_5c

    .line 483
    :catch_7f
    move-exception v3

    goto :goto_5c

    .line 477
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_81
    move-exception v0

    .line 478
    .local v0, "e":Ljava/io/IOException;
    :goto_82
    :try_start_82
    const-string v3, "AssetAtlas"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_82 .. :try_end_9a} :catchall_a2

    .line 480
    if-eqz v1, :cond_5c

    .line 482
    :try_start_9c
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_5c

    .line 483
    :catch_a0
    move-exception v3

    goto :goto_5c

    .line 480
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_a2
    move-exception v3

    :goto_a3
    if-eqz v1, :cond_a8

    .line 482
    :try_start_a5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    .line 485
    :cond_a8
    :goto_a8
    throw v3

    .line 483
    :catch_a9
    move-exception v4

    goto :goto_a8

    .line 480
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catchall_ab
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_a3

    .line 477
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_ae
    move-exception v0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_82

    .line 475
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_b1
    move-exception v0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_61

    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :cond_b4
    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_5c
.end method


# virtual methods
.method public getBuffer()Landroid/view/GraphicBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, mBuffer:Landroid/view/GraphicBuffer;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMap()[J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, mAtlasMap:[J

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isCompatible(I)Z
    .registers 3
    .param p1, "ppid"    # I

    .prologue
    .line 336
    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public systemRunning()V
    .registers 1

    .prologue
    .line 192
    return-void
.end method
