.class Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Service"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;
    }
.end annotation


# instance fields
.field mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field mComponentName:Landroid/content/ComponentName;

.field public mEventDispatchHandler:Landroid/os/Handler;

.field mEventTypes:I

.field mFeedbackType:I

.field mFetchFlags:I

.field mId:I

.field mIntent:Landroid/content/Intent;

.field public mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

.field mIsAutomation:Z

.field mIsDefault:Z

.field final mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

.field mNotificationTimeout:J

.field final mOverlayWindowToken:Landroid/os/IBinder;

.field mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field mRequestEnhancedWebAccessibility:Z

.field mRequestFilterKeyEvents:Z

.field mRequestTouchExplorationMode:Z

.field final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field mRetrieveInteractiveWindows:Z

.field mService:Landroid/os/IBinder;

.field mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field final mUserId:I

.field mWasConnectedAndDied:Z

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 11
    .param p2, "userId"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    const/4 v5, 0x0

    .line 3714
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>()V

    .line 3653
    iput v5, p0, mId:I

    .line 3665
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mPackageNames:Ljava/util/Set;

    .line 3689
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, mOverlayWindowToken:Landroid/os/IBinder;

    .line 3692
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mPendingEvents:Landroid/util/SparseArray;

    .line 3695
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V

    iput-object v0, p0, mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    .line 3701
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;

    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V

    iput-object v0, p0, mEventDispatchHandler:Landroid/os/Handler;

    .line 3710
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V

    iput-object v0, p0, mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    .line 3715
    iput p2, p0, mUserId:I

    .line 3716
    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3717
    # operator++ for: Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3708()I

    move-result v0

    iput v0, p0, mId:I

    .line 3718
    iput-object p3, p0, mComponentName:Landroid/content/ComponentName;

    .line 3719
    iput-object p4, p0, mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 3720
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->sFakeAccessibilityServiceComponentName:Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3800()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, mIsAutomation:Z

    .line 3721
    iget-boolean v0, p0, mIsAutomation:Z

    if-nez v0, :cond_94

    .line 3722
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, mIntent:Landroid/content/Intent;

    .line 3723
    iget-object v0, p0, mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.client_label"

    const v2, 0x1040441

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3725
    iget-object v0, p0, mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.client_intent"

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3728
    :cond_94
    invoke-virtual {p0, p4}, setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 3729
    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p1, "x1"    # I

    .prologue
    .line 3648
    invoke-direct {p0, p1}, notifyAccessibilityEventInternal(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p1, "x1"    # I

    .prologue
    .line 3648
    invoke-direct {p0, p1}, notifyGestureInternal(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/KeyEvent;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p1, "x1"    # Landroid/view/KeyEvent;
    .param p2, "x2"    # I

    .prologue
    .line 3648
    invoke-direct {p0, p1, p2}, notifyKeyEventInternal(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    .line 3648
    invoke-direct {p0}, notifyClearAccessibilityCacheInternal()V

    return-void
.end method

.method private expandNotifications()V
    .registers 6

    .prologue
    .line 4575
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4577
    .local v2, "token":J
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "statusbar"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 4579
    .local v0, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V

    .line 4581
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4582
    return-void
.end method

.method private expandQuickSettings()V
    .registers 6

    .prologue
    .line 4585
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4587
    .local v2, "token":J
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "statusbar"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 4589
    .local v0, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expandSettingsPanel()V

    .line 4591
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4592
    return-void
.end method

.method private getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .registers 4
    .param p1, "windowId"    # I

    .prologue
    .line 4616
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 4617
    .local v0, "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    if-nez v0, :cond_1c

    .line 4618
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 4620
    .restart local v0    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :cond_1c
    if-eqz v0, :cond_29

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->access$4600(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 4621
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->access$4600(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    .line 4626
    :goto_28
    return-object v1

    :cond_29
    const/4 v1, 0x0

    goto :goto_28
.end method

.method private notifyAccessibilityEventInternal(I)V
    .registers 8
    .param p1, "eventType"    # I

    .prologue
    .line 4450
    iget-object v3, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4451
    :try_start_7
    iget-object v1, p0, mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 4455
    .local v1, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-nez v1, :cond_d

    .line 4456
    monitor-exit v4

    .line 4499
    :goto_c
    return-void

    .line 4459
    :cond_d
    iget-object v3, p0, mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 4476
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-nez v0, :cond_1c

    .line 4477
    monitor-exit v4

    goto :goto_c

    .line 4487
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_19
    move-exception v3

    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v3

    .line 4480
    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v1    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :cond_1c
    :try_start_1c
    iget-object v3, p0, mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4481
    iget-object v3, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 4482
    iget v3, p0, mId:I

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    .line 4486
    :goto_32
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    .line 4487
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_1c .. :try_end_37} :catchall_19

    .line 4490
    :try_start_37
    invoke-interface {v1, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3a} :catch_43
    .catchall {:try_start_37 .. :try_end_3a} :catchall_6a

    .line 4497
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_c

    .line 4484
    :cond_3e
    const/4 v3, 0x0

    :try_start_3f
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_19

    goto :goto_32

    .line 4494
    :catch_43
    move-exception v2

    .line 4495
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_44
    const-string v3, "AccessibilityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error during sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_44 .. :try_end_66} :catchall_6a

    .line 4497
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_c

    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_6a
    move-exception v3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    throw v3
.end method

.method private notifyClearAccessibilityCacheInternal()V
    .registers 5

    .prologue
    .line 4537
    iget-object v2, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4538
    :try_start_7
    iget-object v0, p0, mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 4539
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_10

    .line 4540
    if-eqz v0, :cond_f

    .line 4542
    :try_start_c
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->clearAccessibilityCache()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_13

    .line 4548
    :cond_f
    :goto_f
    return-void

    .line 4539
    .end local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_10
    move-exception v2

    :try_start_11
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v2

    .line 4543
    .restart local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catch_13
    move-exception v1

    .line 4544
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManagerService"

    const-string v3, "Error during requesting accessibility info cache to be cleared."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method private notifyGestureInternal(I)V
    .registers 7
    .param p1, "gestureId"    # I

    .prologue
    .line 4518
    iget-object v2, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4519
    :try_start_7
    iget-object v0, p0, mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 4520
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_10

    .line 4521
    if-eqz v0, :cond_f

    .line 4523
    :try_start_c
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onGesture(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_13

    .line 4529
    :cond_f
    :goto_f
    return-void

    .line 4520
    .end local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_10
    move-exception v2

    :try_start_11
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v2

    .line 4524
    .restart local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catch_13
    move-exception v1

    .line 4525
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during sending gesture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mService:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method private notifyKeyEventInternal(Landroid/view/KeyEvent;I)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 4532
    iget-object v0, p0, mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->notifyKeyEvent(Landroid/view/KeyEvent;I)V

    .line 4533
    return-void
.end method

.method private openRecents()V
    .registers 7

    .prologue
    .line 4595
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4597
    .local v2, "token":J
    const-string/jumbo v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 4600
    .local v1, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :try_start_f
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_16

    .line 4605
    :goto_12
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4606
    return-void

    .line 4601
    :catch_16
    move-exception v0

    .line 4602
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "AccessibilityManagerService"

    const-string v5, "Error toggling recent apps."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private resolveAccessibilityWindowIdForFindFocusLocked(II)I
    .registers 4
    .param p1, "windowId"    # I
    .param p2, "focusType"    # I

    .prologue
    .line 4637
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_e

    .line 4638
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    iget p1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 4647
    .end local p1    # "windowId":I
    :cond_d
    :goto_d
    return p1

    .line 4640
    .restart local p1    # "windowId":I
    :cond_e
    const/4 v0, -0x2

    if-ne p1, v0, :cond_d

    .line 4641
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1d

    .line 4642
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    iget p1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    goto :goto_d

    .line 4643
    :cond_1d
    const/4 v0, 0x2

    if-ne p2, v0, :cond_d

    .line 4644
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    iget p1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    goto :goto_d
.end method

.method private resolveAccessibilityWindowIdLocked(I)I
    .registers 3
    .param p1, "accessibilityWindowId"    # I

    .prologue
    .line 4630
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_f

    .line 4631
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getActiveWindowId()I

    move-result p1

    .line 4633
    .end local p1    # "accessibilityWindowId":I
    :cond_f
    return p1
.end method

.method private sendDownAndUpKeyEvents(I)V
    .registers 21
    .param p1, "keyCode"    # I

    .prologue
    .line 4551
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 4554
    .local v16, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 4555
    .local v2, "downTime":J
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/16 v13, 0x101

    const/4 v14, 0x0

    move-wide v4, v2

    move/from16 v7, p1

    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v15

    .line 4558
    .local v15, "down":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v15, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 4560
    invoke-virtual {v15}, Landroid/view/KeyEvent;->recycle()V

    .line 4563
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4564
    .local v4, "upTime":J
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/16 v13, 0x101

    const/4 v14, 0x0

    move/from16 v7, p1

    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    .line 4567
    .local v18, "up":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 4569
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    .line 4571
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4572
    return-void
.end method

.method private showGlobalActions()V
    .registers 2

    .prologue
    .line 4609
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/WindowManagerInternal;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->showGlobalActions()V

    .line 4610
    return-void
.end method


# virtual methods
.method public bindLocked()Z
    .registers 7

    .prologue
    .line 3772
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v2, p0, mUserId:I

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 3773
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v1, p0, mIsAutomation:Z

    if-nez v1, :cond_31

    .line 3774
    iget-object v1, p0, mService:Landroid/os/IBinder;

    if-nez v1, :cond_2f

    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, mIntent:Landroid/content/Intent;

    const v3, 0x2000001

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, p0, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 3778
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    iget-object v2, p0, mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3794
    :cond_2f
    :goto_2f
    const/4 v1, 0x0

    return v1

    .line 3781
    :cond_31
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    iget-object v2, p0, mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3782
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, mService:Landroid/os/IBinder;

    .line 3783
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 3792
    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1002(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    goto :goto_2f
.end method

.method public binderDied()V
    .registers 5

    .prologue
    .line 4388
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4393
    :try_start_7
    invoke-virtual {p0}, isConnectedLocked()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4394
    monitor-exit v2

    .line 4413
    :goto_e
    return-void

    .line 4396
    :cond_f
    const/4 v1, 0x1

    iput-boolean v1, p0, mWasConnectedAndDied:Z

    .line 4397
    iget-object v1, p0, mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->flush()V

    .line 4398
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v3, p0, mUserId:I

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 4400
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v1, p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 4401
    invoke-virtual {p0}, resetLocked()V

    .line 4402
    iget-boolean v1, p0, mIsAutomation:Z

    if-eqz v1, :cond_49

    .line 4405
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    iget-object v3, p0, mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4406
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v3, p0, mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4407
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->destroyUiAutomationService()V

    .line 4408
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 4409
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 4412
    :cond_49
    monitor-exit v2

    goto :goto_e

    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_4b
    move-exception v1

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public canReceiveEventsLocked()Z
    .registers 2

    .prologue
    .line 3820
    iget v0, p0, mEventTypes:I

    if-eqz v0, :cond_e

    iget v0, p0, mFeedbackType:I

    if-eqz v0, :cond_e

    iget-object v0, p0, mService:Landroid/os/IBinder;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public canRetrieveInteractiveWindowsLocked()Z
    .registers 2

    .prologue
    .line 3836
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, mRetrieveInteractiveWindows:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4322
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "dump"

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 4323
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4324
    :try_start_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service[label="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", componantname="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", feedbackType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mFeedbackType:I

    invoke-static {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", capabilities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventTypes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mEventTypes:I

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", notificationTimeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, mNotificationTimeout:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4333
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4334
    monitor-exit v1

    .line 4335
    return-void

    .line 4334
    :catchall_ce
    move-exception v0

    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_15 .. :try_end_d0} :catchall_ce

    throw v0
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z
    .registers 27
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4069
    const/4 v2, 0x0

    .line 4070
    .local v2, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v5

    .line 4071
    .local v5, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4075
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    const/4 v6, -0x2

    invoke-virtual {v3, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v16

    .line 4078
    .local v16, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    move/from16 v0, v16

    if-eq v0, v3, :cond_2a

    .line 4079
    const/4 v3, 0x0

    monitor-exit v4

    .line 4117
    :cond_29
    :goto_29
    return v3

    .line 4081
    :cond_2a
    invoke-direct/range {p0 .. p1}, resolveAccessibilityWindowIdLocked(I)I

    move-result v17

    .line 4082
    .local v17, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v13

    .line 4084
    .local v13, "permissionGranted":Z
    if-nez v13, :cond_46

    .line 4085
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_29

    .line 4097
    .end local v13    # "permissionGranted":Z
    .end local v16    # "resolvedUserId":I
    .end local v17    # "resolvedWindowId":I
    :catchall_43
    move-exception v3

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_e .. :try_end_45} :catchall_43

    throw v3

    .line 4087
    .restart local v13    # "permissionGranted":Z
    .restart local v16    # "resolvedUserId":I
    .restart local v17    # "resolvedWindowId":I
    :cond_46
    :try_start_46
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    .line 4088
    if-nez v2, :cond_53

    .line 4089
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_29

    .line 4092
    :cond_53
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v3

    if-nez v3, :cond_67

    .line 4094
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    .line 4095
    const/4 v5, 0x0

    .line 4097
    :cond_67
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_46 .. :try_end_68} :catchall_43

    .line 4098
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 4099
    .local v9, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4100
    .local v14, "identityToken":J
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v17

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    invoke-static {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v12

    .line 4102
    .local v12, "spec":Landroid/view/MagnificationSpec;
    :try_start_7a
    move-object/from16 v0, p0

    iget v3, v0, mFetchFlags:I

    or-int v8, v3, p6

    move-wide/from16 v3, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v10, p7

    invoke-interface/range {v2 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_8b} :catch_9b
    .catchall {:try_start_7a .. :try_end_8b} :catchall_ad

    .line 4105
    const/4 v3, 0x1

    .line 4111
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4113
    if-eqz v5, :cond_29

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 4114
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    goto :goto_29

    .line 4106
    :catch_9b
    move-exception v3

    .line 4111
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4113
    if-eqz v5, :cond_aa

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 4114
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    .line 4117
    :cond_aa
    const/4 v3, 0x0

    goto/16 :goto_29

    .line 4111
    :catchall_ad
    move-exception v3

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4113
    if-eqz v5, :cond_bc

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 4114
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    :cond_bc
    throw v3
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .registers 28
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4012
    const/4 v3, 0x0

    .line 4013
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v7

    .line 4014
    .local v7, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4018
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    const/4 v6, -0x2

    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v15

    .line 4021
    .local v15, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v4

    if-eq v15, v4, :cond_28

    .line 4022
    const/4 v4, 0x0

    monitor-exit v5

    .line 4060
    :cond_27
    :goto_27
    return v4

    .line 4024
    :cond_28
    invoke-direct/range {p0 .. p1}, resolveAccessibilityWindowIdLocked(I)I

    move-result v18

    .line 4025
    .local v18, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v2

    .line 4027
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_44

    .line 4028
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_27

    .line 4040
    .end local v2    # "permissionGranted":Z
    .end local v15    # "resolvedUserId":I
    .end local v18    # "resolvedWindowId":I
    :catchall_41
    move-exception v4

    monitor-exit v5
    :try_end_43
    .catchall {:try_start_e .. :try_end_43} :catchall_41

    throw v4

    .line 4030
    .restart local v2    # "permissionGranted":Z
    .restart local v15    # "resolvedUserId":I
    .restart local v18    # "resolvedWindowId":I
    :cond_44
    :try_start_44
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v3

    .line 4031
    if-nez v3, :cond_51

    .line 4032
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_27

    .line 4035
    :cond_51
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 4037
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 4038
    const/4 v7, 0x0

    .line 4040
    :cond_65
    monitor-exit v5
    :try_end_66
    .catchall {:try_start_44 .. :try_end_66} :catchall_41

    .line 4041
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 4042
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 4043
    .local v16, "identityToken":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v18

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    invoke-static {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v14

    .line 4045
    .local v14, "spec":Landroid/view/MagnificationSpec;
    :try_start_78
    move-object/from16 v0, p0

    iget v10, v0, mFetchFlags:I

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    invoke-interface/range {v3 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_89} :catch_99
    .catchall {:try_start_78 .. :try_end_89} :catchall_ab

    .line 4048
    const/4 v4, 0x1

    .line 4054
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4056
    if-eqz v7, :cond_27

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 4057
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    goto :goto_27

    .line 4049
    :catch_99
    move-exception v4

    .line 4054
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4056
    if-eqz v7, :cond_a8

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 4057
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 4060
    :cond_a8
    const/4 v4, 0x0

    goto/16 :goto_27

    .line 4054
    :catchall_ab
    move-exception v4

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4056
    if-eqz v7, :cond_ba

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 4057
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    :cond_ba
    throw v4
.end method

.method public findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .registers 28
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "viewIdResName"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3955
    const/4 v3, 0x0

    .line 3956
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v7

    .line 3957
    .local v7, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3961
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    const/4 v6, -0x2

    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v15

    .line 3964
    .local v15, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v4

    if-eq v15, v4, :cond_28

    .line 3965
    const/4 v4, 0x0

    monitor-exit v5

    .line 4003
    :cond_27
    :goto_27
    return v4

    .line 3967
    :cond_28
    invoke-direct/range {p0 .. p1}, resolveAccessibilityWindowIdLocked(I)I

    move-result v18

    .line 3968
    .local v18, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v2

    .line 3970
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_44

    .line 3971
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_27

    .line 3983
    .end local v2    # "permissionGranted":Z
    .end local v15    # "resolvedUserId":I
    .end local v18    # "resolvedWindowId":I
    :catchall_41
    move-exception v4

    monitor-exit v5
    :try_end_43
    .catchall {:try_start_e .. :try_end_43} :catchall_41

    throw v4

    .line 3973
    .restart local v2    # "permissionGranted":Z
    .restart local v15    # "resolvedUserId":I
    .restart local v18    # "resolvedWindowId":I
    :cond_44
    :try_start_44
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v3

    .line 3974
    if-nez v3, :cond_51

    .line 3975
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_27

    .line 3978
    :cond_51
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 3980
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 3981
    const/4 v7, 0x0

    .line 3983
    :cond_65
    monitor-exit v5
    :try_end_66
    .catchall {:try_start_44 .. :try_end_66} :catchall_41

    .line 3984
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 3985
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3986
    .local v16, "identityToken":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v18

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    invoke-static {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v14

    .line 3988
    .local v14, "spec":Landroid/view/MagnificationSpec;
    :try_start_78
    move-object/from16 v0, p0

    iget v10, v0, mFetchFlags:I

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    invoke-interface/range {v3 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_89} :catch_99
    .catchall {:try_start_78 .. :try_end_89} :catchall_ab

    .line 3991
    const/4 v4, 0x1

    .line 3997
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3999
    if-eqz v7, :cond_27

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 4000
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    goto :goto_27

    .line 3992
    :catch_99
    move-exception v4

    .line 3997
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3999
    if-eqz v7, :cond_a8

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 4000
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 4003
    :cond_a8
    const/4 v4, 0x0

    goto/16 :goto_27

    .line 3997
    :catchall_ab
    move-exception v4

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3999
    if-eqz v7, :cond_ba

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 4000
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    :cond_ba
    throw v4
.end method

.method public findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .registers 30
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "focusType"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4126
    const/4 v5, 0x0

    .line 4127
    .local v5, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v9

    .line 4128
    .local v9, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 4132
    :try_start_e
    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    const/4 v8, -0x2

    invoke-virtual {v6, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v17

    .line 4135
    .local v17, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v6

    move/from16 v0, v17

    if-eq v0, v6, :cond_2a

    .line 4136
    const/4 v6, 0x0

    monitor-exit v7

    .line 4175
    :cond_29
    :goto_29
    return v6

    .line 4138
    :cond_2a
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, resolveAccessibilityWindowIdForFindFocusLocked(II)I

    move-result v20

    .line 4140
    .local v20, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v4

    .line 4142
    .local v4, "permissionGranted":Z
    if-nez v4, :cond_4c

    .line 4143
    const/4 v6, 0x0

    monitor-exit v7

    goto :goto_29

    .line 4155
    .end local v4    # "permissionGranted":Z
    .end local v17    # "resolvedUserId":I
    .end local v20    # "resolvedWindowId":I
    :catchall_49
    move-exception v6

    monitor-exit v7
    :try_end_4b
    .catchall {:try_start_e .. :try_end_4b} :catchall_49

    throw v6

    .line 4145
    .restart local v4    # "permissionGranted":Z
    .restart local v17    # "resolvedUserId":I
    .restart local v20    # "resolvedWindowId":I
    :cond_4c
    :try_start_4c
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v5

    .line 4146
    if-nez v5, :cond_59

    .line 4147
    const/4 v6, 0x0

    monitor-exit v7

    goto :goto_29

    .line 4150
    :cond_59
    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v6

    if-nez v6, :cond_6d

    .line 4152
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    .line 4153
    const/4 v9, 0x0

    .line 4155
    :cond_6d
    monitor-exit v7
    :try_end_6e
    .catchall {:try_start_4c .. :try_end_6e} :catchall_49

    .line 4156
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 4157
    .local v13, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 4158
    .local v18, "identityToken":J
    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v20

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    invoke-static {v6, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v16

    .line 4160
    .local v16, "spec":Landroid/view/MagnificationSpec;
    :try_start_80
    move-object/from16 v0, p0

    iget v12, v0, mFetchFlags:I

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-wide/from16 v14, p7

    invoke-interface/range {v5 .. v16}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_91} :catch_a1
    .catchall {:try_start_80 .. :try_end_91} :catchall_b3

    .line 4163
    const/4 v6, 0x1

    .line 4169
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4171
    if-eqz v9, :cond_29

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 4172
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    goto :goto_29

    .line 4164
    :catch_a1
    move-exception v6

    .line 4169
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4171
    if-eqz v9, :cond_b0

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 4172
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    .line 4175
    :cond_b0
    const/4 v6, 0x0

    goto/16 :goto_29

    .line 4169
    :catchall_b3
    move-exception v6

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4171
    if-eqz v9, :cond_c2

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 4172
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    :cond_c2
    throw v6
.end method

.method public focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .registers 28
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "direction"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4184
    const/4 v3, 0x0

    .line 4185
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v7

    .line 4186
    .local v7, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4190
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    const/4 v6, -0x2

    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v15

    .line 4193
    .local v15, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v4

    if-eq v15, v4, :cond_28

    .line 4194
    const/4 v4, 0x0

    monitor-exit v5

    .line 4232
    :cond_27
    :goto_27
    return v4

    .line 4196
    :cond_28
    invoke-direct/range {p0 .. p1}, resolveAccessibilityWindowIdLocked(I)I

    move-result v18

    .line 4197
    .local v18, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v2

    .line 4199
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_44

    .line 4200
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_27

    .line 4212
    .end local v2    # "permissionGranted":Z
    .end local v15    # "resolvedUserId":I
    .end local v18    # "resolvedWindowId":I
    :catchall_41
    move-exception v4

    monitor-exit v5
    :try_end_43
    .catchall {:try_start_e .. :try_end_43} :catchall_41

    throw v4

    .line 4202
    .restart local v2    # "permissionGranted":Z
    .restart local v15    # "resolvedUserId":I
    .restart local v18    # "resolvedWindowId":I
    :cond_44
    :try_start_44
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v3

    .line 4203
    if-nez v3, :cond_51

    .line 4204
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_27

    .line 4207
    :cond_51
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 4209
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 4210
    const/4 v7, 0x0

    .line 4212
    :cond_65
    monitor-exit v5
    :try_end_66
    .catchall {:try_start_44 .. :try_end_66} :catchall_41

    .line 4213
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 4214
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 4215
    .local v16, "identityToken":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v18

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    invoke-static {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v14

    .line 4217
    .local v14, "spec":Landroid/view/MagnificationSpec;
    :try_start_78
    move-object/from16 v0, p0

    iget v10, v0, mFetchFlags:I

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    invoke-interface/range {v3 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_89} :catch_99
    .catchall {:try_start_78 .. :try_end_89} :catchall_ab

    .line 4220
    const/4 v4, 0x1

    .line 4226
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4228
    if-eqz v7, :cond_27

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 4229
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    goto :goto_27

    .line 4221
    :catch_99
    move-exception v4

    .line 4226
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4228
    if-eqz v7, :cond_a8

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 4229
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 4232
    :cond_a8
    const/4 v4, 0x0

    goto/16 :goto_27

    .line 4226
    :catchall_ab
    move-exception v4

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4228
    if-eqz v7, :cond_ba

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 4229
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    :cond_ba
    throw v4
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 3

    .prologue
    .line 3830
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3831
    :try_start_7
    iget-object v0, p0, mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    monitor-exit v1

    return-object v0

    .line 3832
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 9
    .param p1, "windowId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3923
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->ensureWindowsAvailableTimed()V
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4200(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 3924
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3928
    :try_start_d
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    const/4 v6, -0x2

    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 3931
    .local v1, "resolvedUserId":I
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v4

    if-eq v1, v4, :cond_22

    .line 3932
    monitor-exit v5

    .line 3945
    :goto_21
    return-object v3

    .line 3934
    :cond_22
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    .line 3936
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_33

    .line 3937
    monitor-exit v5

    goto :goto_21

    .line 3946
    .end local v0    # "permissionGranted":Z
    .end local v1    # "resolvedUserId":I
    :catchall_30
    move-exception v4

    monitor-exit v5
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_30

    throw v4

    .line 3939
    .restart local v0    # "permissionGranted":Z
    .restart local v1    # "resolvedUserId":I
    :cond_33
    :try_start_33
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findWindowById(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-static {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$2500(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    .line 3940
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v2, :cond_4a

    .line 3941
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    .line 3942
    .local v3, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v4, p0, mId:I

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 3943
    monitor-exit v5

    goto :goto_21

    .line 3945
    .end local v3    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_4a
    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_30

    goto :goto_21
.end method

.method public getWindows()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3889
    iget-object v7, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->ensureWindowsAvailableTimed()V
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4200(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 3890
    iget-object v7, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 3894
    :try_start_d
    iget-object v7, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v7

    const/4 v9, -0x2

    invoke-virtual {v7, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 3897
    .local v2, "resolvedUserId":I
    iget-object v7, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v7

    if-eq v2, v7, :cond_22

    .line 3898
    monitor-exit v8

    .line 3917
    :goto_21
    return-object v6

    .line 3900
    :cond_22
    iget-object v7, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v1

    .line 3902
    .local v1, "permissionGranted":Z
    if-nez v1, :cond_33

    .line 3903
    monitor-exit v8

    goto :goto_21

    .line 3918
    .end local v1    # "permissionGranted":Z
    .end local v2    # "resolvedUserId":I
    :catchall_30
    move-exception v7

    monitor-exit v8
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_30

    throw v7

    .line 3905
    .restart local v1    # "permissionGranted":Z
    .restart local v2    # "resolvedUserId":I
    :cond_33
    :try_start_33
    iget-object v7, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v7, :cond_3f

    .line 3906
    monitor-exit v8

    goto :goto_21

    .line 3908
    :cond_3f
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3909
    .local v6, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v7, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 3910
    .local v5, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_51
    if-ge v0, v5, :cond_70

    .line 3911
    iget-object v7, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3912
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    .line 3914
    .local v4, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v7, p0, mId:I

    invoke-virtual {v4, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 3915
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3910
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 3917
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v4    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_70
    monitor-exit v8
    :try_end_71
    .catchall {:try_start_33 .. :try_end_71} :catchall_30

    goto :goto_21
.end method

.method public isConnectedLocked()Z
    .registers 2

    .prologue
    .line 4384
    iget-object v0, p0, mService:Landroid/os/IBinder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public linkToOwnDeathLocked()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4364
    iget-object v0, p0, mService:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4365
    return-void
.end method

.method public notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4421
    iget-object v5, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 4422
    :try_start_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 4426
    .local v0, "eventType":I
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 4427
    .local v2, "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v5, p0, mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    .line 4428
    .local v3, "oldEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v5, p0, mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4430
    move v4, v0

    .line 4431
    .local v4, "what":I
    if-eqz v3, :cond_27

    .line 4432
    iget-object v5, p0, mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4433
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 4436
    :cond_27
    iget-object v5, p0, mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4437
    .local v1, "message":Landroid/os/Message;
    iget-object v5, p0, mEventDispatchHandler:Landroid/os/Handler;

    iget-wide v8, p0, mNotificationTimeout:J

    invoke-virtual {v5, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4438
    monitor-exit v6

    .line 4439
    return-void

    .line 4438
    .end local v0    # "eventType":I
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "oldEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v4    # "what":I
    :catchall_36
    move-exception v5

    monitor-exit v6
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v5
.end method

.method public notifyClearAccessibilityNodeInfoCache()V
    .registers 3

    .prologue
    .line 4512
    iget-object v0, p0, mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->sendEmptyMessage(I)Z

    .line 4514
    return-void
.end method

.method public notifyGesture(I)V
    .registers 5
    .param p1, "gestureId"    # I

    .prologue
    .line 4502
    iget-object v0, p0, mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4504
    return-void
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 4507
    iget-object v0, p0, mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4509
    return-void
.end method

.method public onAdded()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4343
    invoke-virtual {p0}, linkToOwnDeathLocked()V

    .line 4344
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4346
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/WindowManagerInternal;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v2

    iget-object v3, p0, mOverlayWindowToken:Landroid/os/IBinder;

    const/16 v4, 0x7f0

    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 4349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4351
    return-void

    .line 4349
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onRemoved()V
    .registers 6

    .prologue
    .line 4354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4356
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/WindowManagerInternal;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v2

    iget-object v3, p0, mOverlayWindowToken:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;Z)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_17

    .line 4358
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4360
    invoke-virtual {p0}, unlinkToOwnDeathLocked()V

    .line 4361
    return-void

    .line 4358
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 3865
    iget-object v2, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3866
    :try_start_7
    iput-object p2, p0, mService:Landroid/os/IBinder;

    .line 3867
    invoke-static {p2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v2

    iput-object v2, p0, mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 3868
    iget-object v2, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v4, p0, mUserId:I

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 3869
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->addServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v2, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 3870
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    iget-object v4, p0, mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-boolean v2, p0, mWasConnectedAndDied:Z

    if-eqz v2, :cond_64

    .line 3871
    :cond_2a
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    iget-object v4, p0, mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3872
    const/4 v2, 0x0

    iput-boolean v2, p0, mWasConnectedAndDied:Z
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_61

    .line 3874
    :try_start_34
    iget-object v2, p0, mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v4, p0, mId:I

    iget-object v5, p0, mOverlayWindowToken:Landroid/os/IBinder;

    invoke-interface {v2, p0, v4, v5}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

    .line 3875
    iget-object v2, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_42} :catch_44
    .catchall {:try_start_34 .. :try_end_42} :catchall_61

    .line 3884
    :goto_42
    :try_start_42
    monitor-exit v3

    .line 3885
    return-void

    .line 3876
    :catch_44
    move-exception v0

    .line 3877
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while setting connection for service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3879
    invoke-virtual {p0}, binderDied()V

    goto :goto_42

    .line 3884
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_61
    move-exception v2

    monitor-exit v3
    :try_end_63
    .catchall {:try_start_42 .. :try_end_63} :catchall_61

    throw v2

    .line 3882
    .restart local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_64
    :try_start_64
    invoke-virtual {p0}, binderDied()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_61

    goto :goto_42
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 4340
    return-void
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .registers 28
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "action"    # I
    .param p5, "arguments"    # Landroid/os/Bundle;
    .param p6, "interactionId"    # I
    .param p7, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p8, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4241
    const/4 v3, 0x0

    .line 4242
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4246
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    const/4 v6, -0x2

    invoke-virtual {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v16

    .line 4249
    .local v16, "resolvedUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v4

    move/from16 v0, v16

    if-eq v0, v4, :cond_26

    .line 4250
    const/4 v4, 0x0

    monitor-exit v5

    .line 4276
    :goto_25
    return v4

    .line 4252
    :cond_26
    invoke-direct/range {p0 .. p1}, resolveAccessibilityWindowIdLocked(I)I

    move-result v17

    .line 4253
    .local v17, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z

    move-result v2

    .line 4255
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_42

    .line 4256
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_25

    .line 4263
    .end local v2    # "permissionGranted":Z
    .end local v16    # "resolvedUserId":I
    .end local v17    # "resolvedWindowId":I
    :catchall_3f
    move-exception v4

    monitor-exit v5
    :try_end_41
    .catchall {:try_start_a .. :try_end_41} :catchall_3f

    throw v4

    .line 4258
    .restart local v2    # "permissionGranted":Z
    .restart local v16    # "resolvedUserId":I
    .restart local v17    # "resolvedWindowId":I
    :cond_42
    :try_start_42
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v3

    .line 4259
    if-nez v3, :cond_4f

    .line 4260
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_25

    .line 4263
    :cond_4f
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_3f

    .line 4264
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 4265
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4267
    .local v14, "identityToken":J
    :try_start_58
    move-object/from16 v0, p0

    iget v10, v0, mFetchFlags:I

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v12, p8

    invoke-interface/range {v3 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_6b} :catch_70
    .catchall {:try_start_58 .. :try_end_6b} :catchall_75

    .line 4274
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4276
    :goto_6e
    const/4 v4, 0x1

    goto :goto_25

    .line 4269
    :catch_70
    move-exception v4

    .line 4274
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6e

    :catchall_75
    move-exception v4

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public performGlobalAction(I)Z
    .registers 10
    .param p1, "action"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4281
    iget-object v5, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4285
    :try_start_9
    iget-object v6, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 4288
    .local v2, "resolvedUserId":I
    iget-object v6, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v6

    if-eq v2, v6, :cond_1e

    .line 4289
    monitor-exit v5

    .line 4316
    :goto_1d
    return v3

    .line 4291
    :cond_1e
    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    .line 4292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4294
    .local v0, "identity":J
    packed-switch p1, :pswitch_data_64

    .line 4316
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    .line 4291
    .end local v0    # "identity":J
    .end local v2    # "resolvedUserId":I
    :catchall_2a
    move-exception v3

    :try_start_2b
    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v3

    .line 4296
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedUserId":I
    :pswitch_2d
    const/4 v3, 0x4

    :try_start_2e
    invoke-direct {p0, v3}, sendDownAndUpKeyEvents(I)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_5f

    .line 4316
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_1d

    .line 4299
    :pswitch_36
    const/4 v3, 0x3

    :try_start_37
    invoke-direct {p0, v3}, sendDownAndUpKeyEvents(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_5f

    .line 4316
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_1d

    .line 4302
    :pswitch_3f
    :try_start_3f
    invoke-direct {p0}, openRecents()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_5f

    .line 4316
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_1d

    .line 4305
    :pswitch_47
    :try_start_47
    invoke-direct {p0}, expandNotifications()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_5f

    .line 4316
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_1d

    .line 4308
    :pswitch_4f
    :try_start_4f
    invoke-direct {p0}, expandQuickSettings()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_5f

    .line 4316
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_1d

    .line 4311
    :pswitch_57
    :try_start_57
    invoke-direct {p0}, showGlobalActions()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5f

    .line 4316
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    goto :goto_1d

    :catchall_5f
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4294
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_36
        :pswitch_3f
        :pswitch_47
        :pswitch_4f
        :pswitch_57
    .end packed-switch
.end method

.method public resetLocked()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 4375
    :try_start_1
    iget-object v0, p0, mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    const/4 v1, 0x0

    iget v2, p0, mId:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_f

    .line 4379
    :goto_a
    iput-object v4, p0, mService:Landroid/os/IBinder;

    .line 4380
    iput-object v4, p0, mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 4381
    return-void

    .line 4376
    :catch_f
    move-exception v0

    goto :goto_a
.end method

.method public setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 8
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3732
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v1, p0, mEventTypes:I

    .line 3733
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v1, p0, mFeedbackType:I

    .line 3734
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 3735
    .local v0, "packageNames":[Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 3736
    iget-object v1, p0, mPackageNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3738
    :cond_17
    iget-wide v4, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v4, p0, mNotificationTimeout:J

    .line 3739
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_72

    move v1, v2

    :goto_22
    iput-boolean v1, p0, mIsDefault:Z

    .line 3741
    iget-boolean v1, p0, mIsAutomation:Z

    if-nez v1, :cond_36

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_42

    .line 3743
    :cond_36
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_74

    .line 3744
    iget v1, p0, mFetchFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, mFetchFlags:I

    .line 3750
    :cond_42
    :goto_42
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7b

    .line 3751
    iget v1, p0, mFetchFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, mFetchFlags:I

    .line 3756
    :goto_4e
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_82

    move v1, v2

    :goto_55
    iput-boolean v1, p0, mRequestTouchExplorationMode:Z

    .line 3758
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_84

    move v1, v2

    :goto_5e
    iput-boolean v1, p0, mRequestEnhancedWebAccessibility:Z

    .line 3760
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_86

    move v1, v2

    :goto_67
    iput-boolean v1, p0, mRequestFilterKeyEvents:Z

    .line 3762
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_88

    :goto_6f
    iput-boolean v2, p0, mRetrieveInteractiveWindows:Z

    .line 3764
    return-void

    :cond_72
    move v1, v3

    .line 3739
    goto :goto_22

    .line 3746
    :cond_74
    iget v1, p0, mFetchFlags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, mFetchFlags:I

    goto :goto_42

    .line 3753
    :cond_7b
    iget v1, p0, mFetchFlags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, mFetchFlags:I

    goto :goto_4e

    :cond_82
    move v1, v3

    .line 3756
    goto :goto_55

    :cond_84
    move v1, v3

    .line 3758
    goto :goto_5e

    :cond_86
    move v1, v3

    .line 3760
    goto :goto_67

    :cond_88
    move v2, v3

    .line 3762
    goto :goto_6f
.end method

.method public setOnKeyEventResult(ZI)V
    .registers 4
    .param p1, "handled"    # Z
    .param p2, "sequence"    # I

    .prologue
    .line 3825
    iget-object v0, p0, mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->setOnKeyEventResult(ZI)V

    .line 3826
    return-void
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 9
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 3842
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3844
    .local v0, "identity":J
    :try_start_4
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_2e

    .line 3848
    :try_start_b
    iget-object v2, p0, mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 3849
    .local v2, "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v2, :cond_27

    .line 3850
    invoke-virtual {v2, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 3851
    invoke-virtual {p0, v2}, setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 3855
    :goto_15
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v6, p0, mUserId:I

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 3856
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 3857
    monitor-exit v5
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_2b

    .line 3859
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3861
    return-void

    .line 3853
    .end local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_27
    :try_start_27
    invoke-virtual {p0, p1}, setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    goto :goto_15

    .line 3857
    .end local v2    # "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catchall_2b
    move-exception v4

    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 3859
    :catchall_2e
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public unbindLocked()Z
    .registers 4

    .prologue
    .line 3804
    iget-object v1, p0, mService:Landroid/os/IBinder;

    if-nez v1, :cond_6

    .line 3805
    const/4 v1, 0x0

    .line 3816
    :goto_5
    return v1

    .line 3807
    :cond_6
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v2, p0, mUserId:I

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 3808
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, p0, mKeyEventDispatcher:Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->flush()V

    .line 3809
    iget-boolean v1, p0, mIsAutomation:Z

    if-nez v1, :cond_2a

    .line 3810
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3814
    :goto_20
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v1, p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 3815
    invoke-virtual {p0}, resetLocked()V

    .line 3816
    const/4 v1, 0x1

    goto :goto_5

    .line 3812
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->destroyUiAutomationService()V

    goto :goto_20
.end method

.method public unlinkToOwnDeathLocked()V
    .registers 3

    .prologue
    .line 4368
    iget-object v0, p0, mService:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4369
    return-void
.end method
