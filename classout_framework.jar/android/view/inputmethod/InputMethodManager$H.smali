.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 444
    iput-object p1, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 445
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 446
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 450
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_1ec

    .line 603
    :cond_8
    :goto_8
    return-void

    .line 452
    :sswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 454
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_d
    iget-object v9, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/io/FileDescriptor;

    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/io/PrintWriter;

    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v9, v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_20} :catch_2f

    .line 459
    :goto_20
    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v7

    .line 460
    :try_start_23
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 461
    monitor-exit v7
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_4b

    .line 462
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_8

    .line 456
    :catch_2f
    move-exception v2

    .line 457
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_20

    .line 461
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catchall_4b
    move-exception v6

    :try_start_4c
    monitor-exit v7
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v6

    .line 466
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_4e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/InputBindResult;

    .line 470
    .local v3, "res":Lcom/android/internal/view/InputBindResult;
    iget-object v7, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 471
    :try_start_57
    iget-object v8, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v8, v8, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v8, :cond_65

    iget-object v8, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v8, v8, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget v9, v3, Lcom/android/internal/view/InputBindResult;->sequence:I

    if-eq v8, v9, :cond_a4

    .line 472
    :cond_65
    const-string v6, "InputMethodManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring onBind: cur seq="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v9, v9, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", given seq="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/view/InputBindResult;->sequence:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v6, v3, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v6, :cond_9e

    iget-object v6, v3, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v8, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v8, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v6, v8, :cond_9e

    .line 475
    iget-object v6, v3, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v6}, Landroid/view/InputChannel;->dispose()V

    .line 477
    :cond_9e
    monitor-exit v7

    goto/16 :goto_8

    .line 487
    :catchall_a1
    move-exception v6

    monitor-exit v7
    :try_end_a3
    .catchall {:try_start_57 .. :try_end_a3} :catchall_a1

    throw v6

    .line 480
    :cond_a4
    :try_start_a4
    iget-object v8, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    # setter for: Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I
    invoke-static {v8, v9}, Landroid/view/inputmethod/InputMethodManager;->access$002(Landroid/view/inputmethod/InputMethodManager;I)I

    .line 483
    iget-object v8, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v3, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 484
    iget-object v8, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v3, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v9, v8, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 485
    iget-object v8, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v3, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    iput-object v9, v8, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 486
    iget-object v8, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v9, v3, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput v9, v8, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 487
    monitor-exit v7
    :try_end_c4
    .catchall {:try_start_a4 .. :try_end_c4} :catchall_a1

    .line 488
    iget-object v7, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7, v10, v6, v6, v6}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    goto/16 :goto_8

    .line 492
    .end local v3    # "res":Lcom/android/internal/view/InputBindResult;
    :sswitch_cb
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 496
    .local v4, "sequence":I
    const/4 v5, 0x0

    .line 497
    .local v5, "startInput":Z
    iget-object v7, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 498
    :try_start_d3
    iget-object v8, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v8, v8, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ne v8, v4, :cond_fa

    .line 509
    iget-object v8, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    .line 513
    iget-object v8, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v8, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v8, :cond_f3

    iget-object v8, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v8, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_f3

    .line 514
    iget-object v8, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 516
    :cond_f3
    iget-object v8, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v8, v8, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    if-eqz v8, :cond_fa

    .line 517
    const/4 v5, 0x1

    .line 520
    :cond_fa
    monitor-exit v7
    :try_end_fb
    .catchall {:try_start_d3 .. :try_end_fb} :catchall_10f

    .line 521
    if-eqz v5, :cond_8

    .line 522
    sget-boolean v7, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SIMPLE_LOG:Z

    if-eqz v7, :cond_108

    .line 523
    const-string v7, "InputMethodManager"

    const-string v8, "MSG_UNBIND startInputInner is called with null IBinder "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_108
    iget-object v7, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7, v10, v6, v6, v6}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    goto/16 :goto_8

    .line 520
    :catchall_10f
    move-exception v6

    :try_start_110
    monitor-exit v7
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10f

    throw v6

    .line 531
    .end local v4    # "sequence":I
    .end local v5    # "startInput":Z
    :sswitch_112
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_193

    .line 532
    .local v0, "active":Z
    :goto_116
    sget-boolean v6, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SIMPLE_LOG:Z

    if-eqz v6, :cond_140

    .line 533
    const-string v6, "InputMethodManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage: MSG_SET_ACTIVE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v8, v8, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_140
    iget-object v6, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v6, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 536
    :try_start_145
    iget-object v6, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v0, v6, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 537
    iget-object v6, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v8, 0x0

    iput-boolean v8, v6, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 538
    if-nez v0, :cond_15c

    .line 542
    iget-object v6, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z
    :try_end_155
    .catchall {:try_start_145 .. :try_end_155} :catchall_190

    .line 546
    :try_start_155
    iget-object v6, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v6}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_15c
    .catch Landroid/os/RemoteException; {:try_start_155 .. :try_end_15c} :catch_1e8
    .catchall {:try_start_155 .. :try_end_15c} :catchall_190

    .line 552
    :cond_15c
    :goto_15c
    :try_start_15c
    iget-object v6, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v6, :cond_18d

    iget-object v6, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->hasWindowFocus()Z

    move-result v6

    if-eqz v6, :cond_18d

    .line 558
    iget-object v6, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v8, v8, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    const/4 v9, 0x0

    # invokes: Landroid/view/inputmethod/InputMethodManager;->checkFocusNoStartInput(ZZ)Z
    invoke-static {v6, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->access$100(Landroid/view/inputmethod/InputMethodManager;ZZ)Z

    move-result v6

    if-eqz v6, :cond_18d

    .line 559
    sget-boolean v6, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SIMPLE_LOG:Z

    if-eqz v6, :cond_184

    .line 560
    const-string v6, "InputMethodManager"

    const-string v8, "MSG_SET_ACTIVE startInputInner is called with null IBinder "

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_184
    iget-object v6, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    .line 565
    :cond_18d
    monitor-exit v7

    goto/16 :goto_8

    :catchall_190
    move-exception v6

    monitor-exit v7
    :try_end_192
    .catchall {:try_start_15c .. :try_end_192} :catchall_190

    throw v6

    .end local v0    # "active":Z
    :cond_193
    move v0, v6

    .line 531
    goto :goto_116

    .line 569
    :sswitch_195
    iget-object v7, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    invoke-virtual {v7, v6}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    goto/16 :goto_8

    .line 573
    :sswitch_1a0
    iget-object v7, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8, v6, v0}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    goto/16 :goto_8

    .line 577
    :sswitch_1a9
    iget-object v7, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8, v6, v6}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    goto/16 :goto_8

    .line 581
    :sswitch_1b2
    iget-object v6, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v6, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v7

    .line 582
    :try_start_1b7
    iget-object v6, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v8, p1, Landroid/os/Message;->arg1:I

    # setter for: Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I
    invoke-static {v6, v8}, Landroid/view/inputmethod/InputMethodManager;->access$202(Landroid/view/inputmethod/InputMethodManager;I)I

    .line 583
    monitor-exit v7

    goto/16 :goto_8

    :catchall_1c1
    move-exception v6

    monitor-exit v7
    :try_end_1c3
    .catchall {:try_start_1b7 .. :try_end_1c3} :catchall_1c1

    throw v6

    .line 590
    :sswitch_1c4
    :try_start_1c4
    iget-object v6, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v7, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_1d1
    .catch Landroid/os/RemoteException; {:try_start_1c4 .. :try_end_1d1} :catch_1d3

    goto/16 :goto_8

    .line 591
    :catch_1d3
    move-exception v6

    goto/16 :goto_8

    .line 597
    :sswitch_1d6
    :try_start_1d6
    iget-object v6, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v7, p0, this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_1e3
    .catch Landroid/os/RemoteException; {:try_start_1d6 .. :try_end_1e3} :catch_1e5

    goto/16 :goto_8

    .line 598
    :catch_1e5
    move-exception v6

    goto/16 :goto_8

    .line 547
    .restart local v0    # "active":Z
    :catch_1e8
    move-exception v6

    goto/16 :goto_15c

    .line 450
    nop

    :sswitch_data_1ec
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_4e
        0x3 -> :sswitch_cb
        0x4 -> :sswitch_112
        0x5 -> :sswitch_195
        0x6 -> :sswitch_1a0
        0x7 -> :sswitch_1a9
        0x9 -> :sswitch_1b2
        0x64 -> :sswitch_1c4
        0x65 -> :sswitch_1d6
    .end sparse-switch
.end method
