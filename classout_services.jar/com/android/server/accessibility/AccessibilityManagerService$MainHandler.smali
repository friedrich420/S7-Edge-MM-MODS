.class final Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# static fields
.field public static final MSG_ANNOUNCE_NEW_USER_IF_NEEDED:I = 0x5

.field public static final MSG_CLEAR_ACCESSIBILITY_FOCUS:I = 0x9

.field public static final MSG_SEND_ACCESSIBILITY_EVENT_TO_INPUT_FILTER:I = 0x1

.field public static final MSG_SEND_CLEARED_STATE_TO_CLIENTS_FOR_USER:I = 0x3

.field public static final MSG_SEND_KEY_EVENT_TO_INPUT_FILTER:I = 0x8

.field public static final MSG_SEND_STATE_TO_CLIENTS:I = 0x2

.field public static final MSG_SHOW_ENABLED_TOUCH_EXPLORATION_DIALOG:I = 0x7

.field public static final MSG_UPDATE_INPUT_FILTER:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3429
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3430
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3431
    return-void
.end method

.method private announceNewUserIfNeeded()V
    .registers 11

    .prologue
    .line 3496
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3497
    :try_start_7
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 3498
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v4, :cond_57

    .line 3499
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "user"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 3501
    .local v2, "userManager":Landroid/os/UserManager;
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v4

    const v6, 0x1040502

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3503
    .local v1, "message":Ljava/lang/String;
    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3505
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3506
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v6, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v6

    invoke-virtual {v4, v0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z

    .line 3508
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "userManager":Landroid/os/UserManager;
    :cond_57
    monitor-exit v5

    .line 3509
    return-void

    .line 3508
    .end local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_59
    move-exception v4

    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_7 .. :try_end_5b} :catchall_59

    throw v4
.end method

.method private sendStateToClients(ILandroid/os/RemoteCallbackList;)V
    .registers 7
    .param p1, "clientState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3522
    .local p2, "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/accessibility/IAccessibilityManagerClient;>;"
    :try_start_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 3523
    .local v2, "userClientCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v2, :cond_13

    .line 3524
    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/IAccessibilityManagerClient;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_17

    .line 3526
    .local v0, "client":Landroid/view/accessibility/IAccessibilityManagerClient;
    :try_start_d
    invoke-interface {v0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_1c
    .catchall {:try_start_d .. :try_end_10} :catchall_17

    .line 3523
    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3532
    .end local v0    # "client":Landroid/view/accessibility/IAccessibilityManagerClient;
    :cond_13
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3534
    return-void

    .line 3532
    .end local v1    # "i":I
    .end local v2    # "userClientCount":I
    :catchall_17
    move-exception v3

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3

    .line 3527
    .restart local v0    # "client":Landroid/view/accessibility/IAccessibilityManagerClient;
    .restart local v1    # "i":I
    .restart local v2    # "userClientCount":I
    :catch_1c
    move-exception v3

    goto :goto_10
.end method

.method private sendStateToClientsForUser(II)V
    .registers 6
    .param p1, "clientState"    # I
    .param p2, "userId"    # I

    .prologue
    .line 3513
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3514
    :try_start_7
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 3515
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    .line 3516
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, p1, v1}, sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 3517
    return-void

    .line 3515
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3435
    iget v5, p1, Landroid/os/Message;->what:I

    .line 3436
    .local v5, "type":I
    packed-switch v5, :pswitch_data_aa

    .line 3493
    :goto_5
    :pswitch_5
    return-void

    .line 3438
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/AccessibilityEvent;

    .line 3439
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 3440
    :try_start_11
    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v9

    if-eqz v9, :cond_2a

    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v9

    if-eqz v9, :cond_2a

    .line 3441
    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3443
    :cond_2a
    monitor-exit v10
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_2f

    .line 3444
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_5

    .line 3443
    :catchall_2f
    move-exception v9

    :try_start_30
    monitor-exit v10
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v9

    .line 3448
    .end local v2    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :pswitch_32
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    .line 3449
    .local v2, "event":Landroid/view/KeyEvent;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3450
    .local v3, "policyFlags":I
    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 3451
    :try_start_3f
    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v9

    if-eqz v9, :cond_58

    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v9

    if-eqz v9, :cond_58

    .line 3452
    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 3454
    :cond_58
    monitor-exit v10
    :try_end_59
    .catchall {:try_start_3f .. :try_end_59} :catchall_5d

    .line 3455
    invoke-virtual {v2}, Landroid/view/KeyEvent;->recycle()V

    goto :goto_5

    .line 3454
    :catchall_5d
    move-exception v9

    :try_start_5e
    monitor-exit v10
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v9

    .line 3459
    .end local v2    # "event":Landroid/view/KeyEvent;
    .end local v3    # "policyFlags":I
    :pswitch_60
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 3460
    .local v1, "clientState":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 3461
    .local v6, "userId":I
    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v9

    invoke-direct {p0, v1, v9}, sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 3462
    invoke-direct {p0, v1, v6}, sendStateToClientsForUser(II)V

    goto :goto_5

    .line 3466
    .end local v1    # "clientState":I
    .end local v6    # "userId":I
    :pswitch_71
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 3467
    .restart local v6    # "userId":I
    const/4 v9, 0x0

    invoke-direct {p0, v9, v6}, sendStateToClientsForUser(II)V

    goto :goto_5

    .line 3471
    .end local v6    # "userId":I
    :pswitch_78
    invoke-direct {p0}, announceNewUserIfNeeded()V

    goto :goto_5

    .line 3475
    :pswitch_7c
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 3476
    .local v7, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v9, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_5

    .line 3480
    .end local v7    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :pswitch_86
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 3481
    .local v4, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    invoke-static {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto/16 :goto_5

    .line 3485
    .end local v4    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :pswitch_91
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 3487
    .local v8, "windowId":I
    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 3488
    :try_start_9a
    iget-object v9, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridgeLocked()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v0

    .line 3489
    .local v0, "bridge":Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    monitor-exit v10
    :try_end_a1
    .catchall {:try_start_9a .. :try_end_a1} :catchall_a6

    .line 3490
    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->clearAccessibilityFocusNotLocked(I)V

    goto/16 :goto_5

    .line 3489
    .end local v0    # "bridge":Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    :catchall_a6
    move-exception v9

    :try_start_a7
    monitor-exit v10
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v9

    .line 3436
    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_6
        :pswitch_60
        :pswitch_71
        :pswitch_5
        :pswitch_78
        :pswitch_7c
        :pswitch_86
        :pswitch_32
        :pswitch_91
    .end packed-switch
.end method
