.class final Lcom/android/server/audio/AudioService$SoundPoolCallback;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SoundPoolCallback"
.end annotation


# instance fields
.field mSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mStatus:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 3

    .prologue
    .line 3610
    iput-object p1, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3613
    const/4 v0, 0x1

    iput v0, p0, mStatus:I

    .line 3614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mSamples:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .prologue
    .line 3610
    invoke-direct {p0, p1}, <init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 8
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    .line 3630
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3631
    :try_start_7
    iget-object v1, p0, mSamples:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3632
    .local v0, "i":I
    if-ltz v0, :cond_18

    .line 3633
    iget-object v1, p0, mSamples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3635
    :cond_18
    if-nez p3, :cond_22

    iget-object v1, p0, mSamples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 3636
    :cond_22
    iput p3, p0, mStatus:I

    .line 3637
    iget-object v1, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 3639
    :cond_2d
    monitor-exit v2

    .line 3640
    return-void

    .line 3639
    .end local v0    # "i":I
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public setSamples([I)V
    .registers 5
    .param p1, "samples"    # [I

    .prologue
    .line 3621
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 3623
    aget v1, p1, v0

    if-lez v1, :cond_13

    .line 3624
    iget-object v1, p0, mSamples:Ljava/util/List;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3621
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3627
    :cond_16
    return-void
.end method

.method public status()I
    .registers 2

    .prologue
    .line 3617
    iget v0, p0, mStatus:I

    return v0
.end method
