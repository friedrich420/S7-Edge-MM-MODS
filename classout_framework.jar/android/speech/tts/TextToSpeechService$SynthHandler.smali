.class Landroid/speech/tts/TextToSpeechService$SynthHandler;
.super Landroid/os/Handler;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthHandler"
.end annotation


# instance fields
.field private mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

.field private mFlushAll:Z

.field private mFlushedObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 470
    iput-object p1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    .line 471
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mFlushedObjects:Ljava/util/ArrayList;

    .line 472
    return-void
.end method

.method static synthetic access$100(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .registers 3
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService$SynthHandler;
    .param p1, "x1"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .prologue
    .line 464
    invoke-direct {p0, p1}, isFlushed(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 3
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService$SynthHandler;
    .param p1, "x1"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .prologue
    .line 464
    invoke-direct {p0, p1}, setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeechService$SynthHandler;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 464
    invoke-direct {p0, p1}, endFlushingSpeechItems(Ljava/lang/Object;)V

    return-void
.end method

.method private endFlushingSpeechItems(Ljava/lang/Object;)V
    .registers 4
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .prologue
    .line 484
    iget-object v1, p0, mFlushedObjects:Ljava/util/ArrayList;

    monitor-enter v1

    .line 485
    if-nez p1, :cond_a

    .line 486
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, mFlushAll:Z

    .line 490
    :goto_8
    monitor-exit v1

    .line 491
    return-void

    .line 488
    :cond_a
    iget-object v0, p0, mFlushedObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 490
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private declared-synchronized getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 2

    .prologue
    .line 499
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isFlushed(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .registers 5
    .param p1, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .prologue
    .line 493
    iget-object v1, p0, mFlushedObjects:Ljava/util/ArrayList;

    monitor-enter v1

    .line 494
    :try_start_3
    iget-boolean v0, p0, mFlushAll:Z

    if-nez v0, :cond_13

    iget-object v0, p0, mFlushedObjects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_13
    const/4 v0, 0x1

    :goto_14
    monitor-exit v1

    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_14

    .line 495
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private declared-synchronized maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 4
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 509
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    if-eqz v1, :cond_13

    iget-object v1, p0, mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_13

    .line 511
    iget-object v0, p0, mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 512
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    const/4 v1, 0x0

    iput-object v1, p0, mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_15

    .line 516
    .end local v0    # "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :cond_13
    monitor-exit p0

    return-object v0

    .line 509
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 4
    .param p1, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .prologue
    .line 503
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 504
    .local v0, "old":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iput-object p1, p0, mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 505
    monitor-exit p0

    return-object v0

    .line 503
    .end local v0    # "old":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :catchall_7
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private startFlushingSpeechItems(Ljava/lang/Object;)V
    .registers 4
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .prologue
    .line 475
    iget-object v1, p0, mFlushedObjects:Ljava/util/ArrayList;

    monitor-enter v1

    .line 476
    if-nez p1, :cond_a

    .line 477
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, mFlushAll:Z

    .line 481
    :goto_8
    monitor-exit v1

    .line 482
    return-void

    .line 479
    :cond_a
    iget-object v0, p0, mFlushedObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 481
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v0
.end method


# virtual methods
.method public enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I
    .registers 9
    .param p1, "queueMode"    # I
    .param p2, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .prologue
    const/4 v3, -0x1

    .line 540
    const/4 v2, 0x0

    .line 541
    .local v2, "utterenceProgress":Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    instance-of v4, p2, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    if-eqz v4, :cond_9

    move-object v2, p2

    .line 542
    check-cast v2, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 545
    :cond_9
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->isValid()Z

    move-result v4

    if-nez v4, :cond_16

    .line 546
    if-eqz v2, :cond_15

    .line 547
    const/4 v4, -0x8

    invoke-interface {v2, v4}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 585
    :cond_15
    :goto_15
    return v3

    .line 553
    :cond_16
    if-nez p1, :cond_36

    .line 554
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, stopForApp(Ljava/lang/Object;)I

    .line 558
    :cond_1f
    :goto_1f
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;

    invoke-direct {v1, p0, p2}, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)V

    .line 570
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 576
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 578
    invoke-virtual {p0, v0}, sendMessage(Landroid/os/Message;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 579
    const/4 v3, 0x0

    goto :goto_15

    .line 555
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_36
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1f

    .line 556
    invoke-virtual {p0}, stopAll()I

    goto :goto_1f

    .line 581
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "runnable":Ljava/lang/Runnable;
    :cond_3d
    const-string v4, "TextToSpeechService"

    const-string v5, "SynthThread has quit"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    if-eqz v2, :cond_15

    .line 583
    const/4 v4, -0x4

    invoke-interface {v2, v4}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    goto :goto_15
.end method

.method public isSpeaking()Z
    .registers 2

    .prologue
    .line 520
    invoke-direct {p0}, getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public quit()V
    .registers 3

    .prologue
    .line 525
    invoke-virtual {p0}, getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 527
    const/4 v1, 0x0

    invoke-direct {p0, v1}, setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 528
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_11

    .line 529
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 532
    :cond_11
    return-void
.end method

.method public stopAll()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 631
    invoke-direct {p0, v2}, startFlushingSpeechItems(Ljava/lang/Object;)V

    .line 634
    invoke-direct {p0, v2}, setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 635
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_d

    .line 636
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 639
    :cond_d
    iget-object v2, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;
    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/speech/tts/AudioPlaybackHandler;->stop()V

    .line 642
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;

    invoke-direct {v1, p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;)V

    .line 648
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, sendMessage(Landroid/os/Message;)Z

    .line 651
    const/4 v2, 0x0

    return v2
.end method

.method public stopForApp(Ljava/lang/Object;)I
    .registers 5
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .prologue
    .line 596
    if-nez p1, :cond_4

    .line 597
    const/4 v2, -0x1

    .line 626
    :goto_3
    return v2

    .line 601
    :cond_4
    invoke-direct {p0, p1}, startFlushingSpeechItems(Ljava/lang/Object;)V

    .line 610
    invoke-direct {p0, p1}, maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 611
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_10

    .line 612
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 616
    :cond_10
    iget-object v2, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;
    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/speech/tts/AudioPlaybackHandler;->stopForApp(Ljava/lang/Object;)V

    .line 619
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;

    invoke-direct {v1, p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V

    .line 625
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, sendMessage(Landroid/os/Message;)Z

    .line 626
    const/4 v2, 0x0

    goto :goto_3
.end method
