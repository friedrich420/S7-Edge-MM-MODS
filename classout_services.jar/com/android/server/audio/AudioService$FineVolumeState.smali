.class Lcom/android/server/audio/AudioService$FineVolumeState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FineVolumeState"
.end annotation


# instance fields
.field private final mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexMax:I

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 9

    .prologue
    .line 5279
    iput-object p1, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5277
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x8

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v3, p0, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5280
    const v2, 0x7fffffff

    .line 5281
    .local v2, "remainingDevices":I
    const/16 v3, 0x9

    iput v3, p0, mIndexMax:I

    .line 5282
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    if-eqz v2, :cond_37

    .line 5283
    const/4 v3, 0x1

    shl-int v0, v3, v1

    .line 5284
    .local v0, "device":I
    and-int v3, v0, v2

    if-nez v3, :cond_25

    .line 5282
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 5287
    :cond_25
    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    .line 5288
    iget-object v3, p0, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 5290
    .end local v0    # "device":I
    :cond_37
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .prologue
    .line 5274
    invoke-direct {p0, p1}, <init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method private getValidIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 5319
    if-gez p1, :cond_4

    .line 5320
    const/4 p1, 0x0

    .line 5324
    .end local p1    # "index":I
    :cond_3
    :goto_3
    return p1

    .line 5321
    .restart local p1    # "index":I
    :cond_4
    iget v0, p0, mIndexMax:I

    if-le p1, v0, :cond_3

    .line 5322
    iget p1, p0, mIndexMax:I

    goto :goto_3
.end method


# virtual methods
.method public applyFineVolume(I)V
    .registers 4
    .param p1, "device"    # I

    .prologue
    .line 5329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioParam;fine_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, getIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5330
    return-void
.end method

.method public getIndex(I)I
    .registers 6
    .param p1, "device"    # I

    .prologue
    .line 5305
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 5306
    :try_start_3
    iget-object v1, p0, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5307
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_1f

    .line 5309
    iget-object v1, p0, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "index":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 5311
    .restart local v0    # "index":Ljava/lang/Integer;
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    return v1

    .line 5312
    .end local v0    # "index":Ljava/lang/Integer;
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public getMaxIndex()I
    .registers 2

    .prologue
    .line 5315
    iget v0, p0, mIndexMax:I

    return v0
.end method

.method public setIndex(II)Z
    .registers 8
    .param p1, "index"    # I
    .param p2, "device"    # I

    .prologue
    .line 5293
    const-class v2, Lcom/android/server/audio/AudioService$FineVolumeState;

    monitor-enter v2

    .line 5294
    :try_start_3
    invoke-virtual {p0, p2}, getIndex(I)I

    move-result v0

    .line 5295
    .local v0, "oldIndex":I
    invoke-direct {p0, p1}, getValidIndex(I)I

    move-result p1

    .line 5297
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_20

    .line 5298
    :try_start_c
    iget-object v1, p0, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5299
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1d

    .line 5300
    const/4 v1, 0x1

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_20

    return v1

    .line 5299
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v1

    .line 5301
    .end local v0    # "oldIndex":I
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_20

    throw v1
.end method
