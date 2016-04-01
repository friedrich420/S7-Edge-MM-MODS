.class abstract Landroid/speech/tts/TextToSpeechService$SpeechItem;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SpeechItem"
.end annotation


# instance fields
.field private final mCallerIdentity:Ljava/lang/Object;

.field private final mCallerPid:I

.field private final mCallerUid:I

.field private mStarted:Z

.field private mStopped:Z

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V
    .registers 6
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I

    .prologue
    const/4 v0, 0x0

    .line 752
    iput-object p1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput-boolean v0, p0, mStarted:Z

    .line 750
    iput-boolean v0, p0, mStopped:Z

    .line 753
    iput-object p2, p0, mCallerIdentity:Ljava/lang/Object;

    .line 754
    iput p3, p0, mCallerUid:I

    .line 755
    iput p4, p0, mCallerPid:I

    .line 756
    return-void
.end method


# virtual methods
.method public getCallerIdentity()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 759
    iget-object v0, p0, mCallerIdentity:Ljava/lang/Object;

    return-object v0
.end method

.method public getCallerPid()I
    .registers 2

    .prologue
    .line 767
    iget v0, p0, mCallerPid:I

    return v0
.end method

.method public getCallerUid()I
    .registers 2

    .prologue
    .line 763
    iget v0, p0, mCallerUid:I

    return v0
.end method

.method protected declared-synchronized isStarted()Z
    .registers 2

    .prologue
    .line 817
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, mStarted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized isStopped()Z
    .registers 2

    .prologue
    .line 813
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, mStopped:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract isValid()Z
.end method

.method public play()V
    .registers 3

    .prologue
    .line 783
    monitor-enter p0

    .line 784
    :try_start_1
    iget-boolean v0, p0, mStarted:Z

    if-eqz v0, :cond_11

    .line 785
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "play() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0

    .line 787
    :cond_11
    const/4 v0, 0x1

    :try_start_12
    iput-boolean v0, p0, mStarted:Z

    .line 788
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_e

    .line 789
    invoke-virtual {p0}, playImpl()V

    .line 790
    return-void
.end method

.method protected abstract playImpl()V
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 801
    monitor-enter p0

    .line 802
    :try_start_1
    iget-boolean v0, p0, mStopped:Z

    if-eqz v0, :cond_11

    .line 803
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0

    .line 805
    :cond_11
    const/4 v0, 0x1

    :try_start_12
    iput-boolean v0, p0, mStopped:Z

    .line 806
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_e

    .line 807
    invoke-virtual {p0}, stopImpl()V

    .line 808
    return-void
.end method

.method protected abstract stopImpl()V
.end method
