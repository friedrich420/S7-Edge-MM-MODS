.class Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;
.super Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpellCheckerSessionListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    }
.end annotation


# static fields
.field private static final STATE_CLOSED_AFTER_CONNECTION:I = 0x2

.field private static final STATE_CLOSED_BEFORE_CONNECTION:I = 0x3

.field private static final STATE_CONNECTED:I = 0x1

.field private static final STATE_WAIT_CONNECTION:I = 0x0

.field private static final TASK_CANCEL:I = 0x1

.field private static final TASK_CLOSE:I = 0x3

.field private static final TASK_GET_SUGGESTIONS_MULTIPLE:I = 0x2

.field private static final TASK_GET_SUGGESTIONS_MULTIPLE_FOR_SENTENCE:I = 0x4


# instance fields
.field private mAsyncHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

.field private final mPendingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;-><init>()V

    .line 241
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, mPendingTasks:Ljava/util/Queue;

    .line 257
    const/4 v0, 0x0

    iput v0, p0, mState:I

    .line 264
    iput-object p1, p0, mHandler:Landroid/os/Handler;

    .line 265
    return-void
.end method

.method static synthetic access$300(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    .registers 4
    .param p0, "x0"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;
    .param p1, "x1"    # Lcom/android/internal/textservice/ISpellCheckerSession;
    .param p2, "x2"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    .param p3, "x3"    # Z

    .prologue
    .line 221
    invoke-direct {p0, p1, p2, p3}, processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    return-void
.end method

.method private processCloseLocked()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 347
    iput-object v1, p0, mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    .line 348
    iget-object v0, p0, mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_c

    .line 349
    iget-object v0, p0, mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 351
    :cond_c
    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 352
    iget-object v0, p0, mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 353
    iput-object v1, p0, mThread:Landroid/os/HandlerThread;

    .line 354
    iput-object v1, p0, mAsyncHandler:Landroid/os/Handler;

    .line 355
    iget v0, p0, mState:I

    packed-switch v0, :pswitch_data_46

    .line 363
    # getter for: Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processCloseLocked is called unexpectedly. mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mState:I

    invoke-static {v2}, stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_3d
    return-void

    .line 357
    :pswitch_3e
    const/4 v0, 0x3

    iput v0, p0, mState:I

    goto :goto_3d

    .line 360
    :pswitch_42
    const/4 v0, 0x2

    iput v0, p0, mState:I

    goto :goto_3d

    .line 355
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_42
    .end packed-switch
.end method

.method private processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V
    .registers 8
    .param p1, "scp"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 446
    monitor-enter p0

    .line 447
    :try_start_3
    iget v3, p0, mState:I

    if-eqz v3, :cond_3d

    iget v3, p0, mState:I

    if-eq v3, v4, :cond_3d

    .line 448
    # getter for: Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignoring processOrEnqueueTask due to unexpected mState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    invoke-static {v5}, taskToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scp.mWhat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    invoke-static {v5}, taskToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    monitor-exit p0

    .line 487
    :goto_3c
    return-void

    .line 454
    :cond_3d
    iget v3, p0, mState:I

    if-nez v3, :cond_76

    .line 456
    iget v3, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    if-ne v3, v5, :cond_4d

    .line 457
    invoke-direct {p0}, processCloseLocked()V

    .line 458
    monitor-exit p0

    goto :goto_3c

    .line 484
    :catchall_4a
    move-exception v3

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v3

    .line 461
    :cond_4d
    const/4 v0, 0x0

    .line 462
    .local v0, "closeTask":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    :try_start_4e
    iget v3, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    if-ne v3, v4, :cond_68

    .line 464
    :cond_52
    :goto_52
    iget-object v3, p0, mPendingTasks:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_68

    .line 465
    iget-object v3, p0, mPendingTasks:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    .line 466
    .local v2, "tmp":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    iget v3, v2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    if-ne v3, v5, :cond_52

    .line 469
    move-object v0, v2

    goto :goto_52

    .line 473
    .end local v2    # "tmp":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    :cond_68
    iget-object v3, p0, mPendingTasks:Ljava/util/Queue;

    invoke-interface {v3, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 474
    if-eqz v0, :cond_74

    .line 475
    iget-object v3, p0, mPendingTasks:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 480
    :cond_74
    monitor-exit p0

    goto :goto_3c

    .line 483
    .end local v0    # "closeTask":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    :cond_76
    iget-object v1, p0, mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    .line 484
    .local v1, "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_4e .. :try_end_79} :catchall_4a

    .line 486
    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, v3}, processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    goto :goto_3c
.end method

.method private processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    .registers 8
    .param p1, "session"    # Lcom/android/internal/textservice/ISpellCheckerSession;
    .param p2, "scp"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    .param p3, "async"    # Z

    .prologue
    .line 293
    if-nez p3, :cond_6

    iget-object v1, p0, mAsyncHandler:Landroid/os/Handler;

    if-nez v1, :cond_a1

    .line 294
    :cond_6
    iget v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    packed-switch v1, :pswitch_data_b4

    .line 333
    :goto_b
    iget v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_15

    .line 336
    monitor-enter p0

    .line 337
    :try_start_11
    invoke-direct {p0}, processCloseLocked()V

    .line 338
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_b1

    .line 340
    :cond_15
    return-void

    .line 297
    :pswitch_16
    :try_start_16
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->onCancel()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_b

    .line 298
    :catch_1a
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to cancel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_36
    :try_start_36
    iget-object v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mTextInfos:[Landroid/view/textservice/TextInfo;

    iget v2, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSuggestionsLimit:I

    iget-boolean v3, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSequentialWords:Z

    invoke-interface {p1, v1, v2, v3}, Lcom/android/internal/textservice/ISpellCheckerSession;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3f} :catch_40

    goto :goto_b

    .line 306
    :catch_40
    move-exception v0

    .line 307
    .restart local v0    # "e":Landroid/os/RemoteException;
    # getter for: Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get suggestions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 312
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_5c
    :try_start_5c
    iget-object v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mTextInfos:[Landroid/view/textservice/TextInfo;

    iget v2, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSuggestionsLimit:I

    invoke-interface {p1, v1, v2}, Lcom/android/internal/textservice/ISpellCheckerSession;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_63} :catch_64

    goto :goto_b

    .line 314
    :catch_64
    move-exception v0

    .line 315
    .restart local v0    # "e":Landroid/os/RemoteException;
    # getter for: Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get suggestions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 320
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_80
    :try_start_80
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->onClose()V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_b

    .line 321
    :catch_84
    move-exception v0

    .line 322
    .restart local v0    # "e":Landroid/os/RemoteException;
    # getter for: Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 329
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a1
    iput-object p1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    .line 330
    iget-object v1, p0, mAsyncHandler:Landroid/os/Handler;

    iget-object v2, p0, mAsyncHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_b

    .line 338
    :catchall_b1
    move-exception v1

    :try_start_b2
    monitor-exit p0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v1

    .line 294
    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_16
        :pswitch_36
        :pswitch_80
        :pswitch_5c
    .end packed-switch
.end method

.method private static stateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .prologue
    .line 249
    packed-switch p0, :pswitch_data_24

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    .line 250
    :pswitch_17
    const-string v0, "STATE_WAIT_CONNECTION"

    goto :goto_16

    .line 251
    :pswitch_1a
    const-string v0, "STATE_CONNECTED"

    goto :goto_16

    .line 252
    :pswitch_1d
    const-string v0, "STATE_CLOSED_AFTER_CONNECTION"

    goto :goto_16

    .line 253
    :pswitch_20
    const-string v0, "STATE_CLOSED_BEFORE_CONNECTION"

    goto :goto_16

    .line 249
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method private static taskToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "task"    # I

    .prologue
    .line 227
    packed-switch p0, :pswitch_data_24

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    .line 229
    :pswitch_17
    const-string v0, "TASK_CANCEL"

    goto :goto_16

    .line 231
    :pswitch_1a
    const-string v0, "TASK_GET_SUGGESTIONS_MULTIPLE"

    goto :goto_16

    .line 233
    :pswitch_1d
    const-string v0, "TASK_CLOSE"

    goto :goto_16

    .line 235
    :pswitch_20
    const-string v0, "TASK_GET_SUGGESTIONS_MULTIPLE_FOR_SENTENCE"

    goto :goto_16

    .line 227
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 418
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    .line 419
    return-void
.end method

.method public close()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 435
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    .line 436
    return-void
.end method

.method public getSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    .registers 6
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I

    .prologue
    .line 429
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    .line 432
    return-void
.end method

.method public getSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    .registers 6
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "sequentialWords"    # Z

    .prologue
    .line 423
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    .line 426
    return-void
.end method

.method public isDisconnected()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 439
    monitor-enter p0

    .line 440
    :try_start_2
    iget v1, p0, mState:I

    if-eq v1, v0, :cond_8

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 441
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .registers 5
    .param p1, "results"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    .prologue
    .line 501
    monitor-enter p0

    .line 502
    :try_start_1
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 503
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 506
    :cond_11
    monitor-exit p0

    .line 507
    return-void

    .line 506
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .registers 5
    .param p1, "results"    # [Landroid/view/textservice/SuggestionsInfo;

    .prologue
    .line 491
    monitor-enter p0

    .line 492
    :try_start_1
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 493
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 496
    :cond_11
    monitor-exit p0

    .line 497
    return-void

    .line 496
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .registers 5
    .param p1, "session"    # Lcom/android/internal/textservice/ISpellCheckerSession;

    .prologue
    .line 370
    monitor-enter p0

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_2f

    .line 371
    :try_start_2
    iget v0, p0, mState:I

    packed-switch v0, :pswitch_data_84

    .line 382
    :pswitch_7
    # getter for: Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring onServiceConnected due to unexpected mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mState:I

    invoke-static {v2}, stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_2c

    .line 415
    :cond_28
    :goto_28
    monitor-exit p0

    return-void

    .line 380
    :pswitch_2a
    :try_start_2a
    monitor-exit p0

    goto :goto_28

    .line 411
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    .line 370
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 386
    :pswitch_32
    if-nez p1, :cond_3f

    .line 387
    :try_start_34
    # getter for: Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignoring onServiceConnected due to session=null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    monitor-exit p0

    goto :goto_28

    .line 390
    :cond_3f
    iput-object p1, p0, mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    .line 391
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_6a

    iget-object v0, p0, mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_6a

    .line 395
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SpellCheckerSession"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, mThread:Landroid/os/HandlerThread;

    .line 397
    iget-object v0, p0, mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 398
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;

    iget-object v1, p0, mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;-><init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, mAsyncHandler:Landroid/os/Handler;

    .line 405
    :cond_6a
    const/4 v0, 0x1

    iput v0, p0, mState:I

    .line 411
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_34 .. :try_end_6e} :catchall_2c

    .line 412
    :goto_6e
    :try_start_6e
    iget-object v0, p0, mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 413
    iget-object v0, p0, mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    :try_end_82
    .catchall {:try_start_6e .. :try_end_82} :catchall_2f

    goto :goto_6e

    .line 371
    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_32
        :pswitch_7
        :pswitch_7
        :pswitch_2a
    .end packed-switch
.end method
