.class final Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SecurityPolicy"
.end annotation


# static fields
.field public static final INVALID_WINDOW_ID:I = -0x1

.field private static final RETRIEVAL_ALLOWING_EVENT_TYPES:I = 0x3b9bf


# instance fields
.field public mAccessibilityFocusNodeId:J

.field public mAccessibilityFocusedWindowId:I

.field public mActiveWindowId:I

.field public mFocusedWindowId:I

.field private mTouchInteractionInProgress:Z

.field public mWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 5028
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5049
    iput v0, p0, mActiveWindowId:I

    .line 5050
    iput v0, p0, mFocusedWindowId:I

    .line 5051
    iput v0, p0, mAccessibilityFocusedWindowId:I

    .line 5052
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, mAccessibilityFocusNodeId:J

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1, "x1"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5028
    invoke-direct {p0, p1}, canDispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 5028
    invoke-direct {p0, p1}, findWindowById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 5028
    invoke-direct {p0, p1, p2}, enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private canDispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5057
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 5058
    .local v0, "eventType":I
    sparse-switch v0, :sswitch_data_12

    .line 5085
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    invoke-direct {p0, v1}, isRetrievalAllowingWindow(I)Z

    move-result v1

    :goto_f
    return v1

    .line 5078
    :sswitch_10
    const/4 v1, 0x1

    goto :goto_f

    .line 5058
    :sswitch_data_12
    .sparse-switch
        0x20 -> :sswitch_10
        0x40 -> :sswitch_10
        0x80 -> :sswitch_10
        0x100 -> :sswitch_10
        0x200 -> :sswitch_10
        0x400 -> :sswitch_10
        0x4000 -> :sswitch_10
        0x40000 -> :sswitch_10
        0x80000 -> :sswitch_10
        0x100000 -> :sswitch_10
        0x200000 -> :sswitch_10
        0x400000 -> :sswitch_10
        0x1000000 -> :sswitch_10
    .end sparse-switch
.end method

.method private enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .prologue
    .line 5444
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5800()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 5452
    :cond_a
    return-void

    .line 5447
    :cond_b
    invoke-direct {p0, p1}, hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 5448
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You do not have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findWindowById(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 6
    .param p1, "windowId"    # I

    .prologue
    .line 5431
    iget-object v3, p0, mWindows:Ljava/util/List;

    if-eqz v3, :cond_1f

    .line 5432
    iget-object v3, p0, mWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 5433
    .local v2, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v2, :cond_1f

    .line 5434
    iget-object v3, p0, mWindows:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 5435
    .local v1, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1c

    .line 5440
    .end local v0    # "i":I
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v2    # "windowCount":I
    :goto_1b
    return-object v1

    .line 5433
    .restart local v0    # "i":I
    .restart local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v2    # "windowCount":I
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 5440
    .end local v0    # "i":I
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v2    # "windowCount":I
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private getFocusedWindowId()I
    .registers 4

    .prologue
    .line 5459
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/WindowManagerInternal;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 5460
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 5461
    :try_start_11
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowIdLocked(Landroid/os/IBinder;)I
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5200(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 5462
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 5455
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isRetrievalAllowingWindow(I)Z
    .registers 5
    .param p1, "windowId"    # I

    .prologue
    const/4 v0, 0x1

    .line 5421
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_a

    .line 5427
    :cond_9
    :goto_9
    return v0

    .line 5424
    :cond_a
    iget v1, p0, mActiveWindowId:I

    if-eq p1, v1, :cond_9

    .line 5427
    invoke-direct {p0, p1}, findWindowById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private notifyWindowsChanged()V
    .registers 7

    .prologue
    .line 5333
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v1

    if-nez v1, :cond_9

    .line 5346
    :goto_8
    return-void

    .line 5336
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5339
    .local v2, "identity":J
    const/high16 v1, 0x400000

    :try_start_f
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 5341
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 5342
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_29

    .line 5344
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :catchall_29
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private resolveProfileParentLocked(I)I
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 5362
    iget-object v3, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    if-eq p1, v3, :cond_23

    .line 5363
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5365
    .local v0, "identity":J
    :try_start_c
    iget-object v3, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 5366
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_24

    .line 5367
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_28

    move-result p1

    .line 5370
    .end local p1    # "userId":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5373
    .end local v0    # "identity":J
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :cond_23
    :goto_23
    return p1

    .line 5370
    .restart local v0    # "identity":J
    .restart local v2    # "parent":Landroid/content/pm/UserInfo;
    .restart local p1    # "userId":I
    :cond_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_28
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setAccessibilityFocusedWindowLocked(I)V
    .registers 6
    .param p1, "windowId"    # I

    .prologue
    .line 5318
    iget v3, p0, mAccessibilityFocusedWindowId:I

    if-eq v3, p1, :cond_2d

    .line 5319
    iput p1, p0, mAccessibilityFocusedWindowId:I

    .line 5320
    iget-object v3, p0, mWindows:Ljava/util/List;

    if-eqz v3, :cond_2a

    .line 5321
    iget-object v3, p0, mWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 5322
    .local v2, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v2, :cond_2a

    .line 5323
    iget-object v3, p0, mWindows:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 5324
    .local v1, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_28

    const/4 v3, 0x1

    :goto_22
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 5322
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 5324
    :cond_28
    const/4 v3, 0x0

    goto :goto_22

    .line 5328
    .end local v0    # "i":I
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v2    # "windowCount":I
    :cond_2a
    invoke-direct {p0}, notifyWindowsChanged()V

    .line 5330
    :cond_2d
    return-void
.end method

.method private setActiveWindowLocked(I)V
    .registers 6
    .param p1, "windowId"    # I

    .prologue
    .line 5304
    iget v3, p0, mActiveWindowId:I

    if-eq v3, p1, :cond_2d

    .line 5305
    iput p1, p0, mActiveWindowId:I

    .line 5306
    iget-object v3, p0, mWindows:Ljava/util/List;

    if-eqz v3, :cond_2a

    .line 5307
    iget-object v3, p0, mWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 5308
    .local v2, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v2, :cond_2a

    .line 5309
    iget-object v3, p0, mWindows:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 5310
    .local v1, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_28

    const/4 v3, 0x1

    :goto_22
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 5308
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 5310
    :cond_28
    const/4 v3, 0x0

    goto :goto_22

    .line 5313
    .end local v0    # "i":I
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v2    # "windowCount":I
    :cond_2a
    invoke-direct {p0}, notifyWindowsChanged()V

    .line 5315
    :cond_2d
    return-void
.end method


# virtual methods
.method public canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    .registers 4
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "windowId"    # I

    .prologue
    .line 5349
    invoke-virtual {p0, p1}, canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p2}, isRetrievalAllowingWindow(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .registers 3
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    .line 5357
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public canRetrieveWindowsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .registers 3
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    .line 5353
    invoke-virtual {p0, p1}, canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRetrieveInteractiveWindows:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public clearWindowsLocked()V
    .registers 4

    .prologue
    .line 5091
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 5092
    .local v1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget v0, p0, mActiveWindowId:I

    .line 5093
    .local v0, "activeWindowId":I
    invoke-virtual {p0, v1}, updateWindowsLocked(Ljava/util/List;)V

    .line 5094
    iput v0, p0, mActiveWindowId:I

    .line 5095
    const/4 v2, 0x0

    iput-object v2, p0, mWindows:Ljava/util/List;

    .line 5096
    return-void
.end method

.method public computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z
    .registers 11
    .param p1, "windowId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .prologue
    .line 5159
    iget-object v6, p0, mWindows:Ljava/util/List;

    if-nez v6, :cond_6

    .line 5160
    const/4 v5, 0x0

    .line 5191
    :cond_5
    return v5

    .line 5167
    :cond_6
    const/4 v4, 0x0

    .line 5168
    .local v4, "windowInteractiveRegion":Landroid/graphics/Region;
    const/4 v5, 0x0

    .line 5170
    .local v5, "windowInteractiveRegionChanged":Z
    iget-object v6, p0, mWindows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 5171
    .local v3, "windowCount":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_10
    if-ltz v2, :cond_5

    .line 5172
    iget-object v6, p0, mWindows:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 5173
    .local v0, "currentWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v4, :cond_32

    .line 5174
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    if-ne v6, p1, :cond_2f

    .line 5175
    iget-object v6, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v1

    .line 5176
    .local v1, "currentWindowBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 5177
    invoke-virtual {p2, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 5178
    move-object v4, p2

    .line 5171
    .end local v1    # "currentWindowBounds":Landroid/graphics/Rect;
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 5181
    :cond_32
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2f

    .line 5183
    iget-object v6, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v1

    .line 5184
    .restart local v1    # "currentWindowBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 5185
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v1, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 5186
    const/4 v5, 0x1

    goto :goto_2f
.end method

.method public getActiveWindowId()I
    .registers 3

    .prologue
    .line 5297
    iget v0, p0, mActiveWindowId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, mTouchInteractionInProgress:Z

    if-nez v0, :cond_f

    .line 5298
    invoke-direct {p0}, getFocusedWindowId()I

    move-result v0

    iput v0, p0, mActiveWindowId:I

    .line 5300
    :cond_f
    iget v0, p0, mActiveWindowId:I

    return v0
.end method

.method public isCallerInteractingAcrossUsers(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 5412
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5413
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_18

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_18

    const/4 v1, -0x2

    if-eq p1, v1, :cond_18

    const/4 v1, -0x3

    if-ne p1, v1, :cond_1a

    :cond_18
    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public onTouchInteractionEnd()V
    .registers 6

    .prologue
    .line 5270
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 5271
    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p0, mTouchInteractionInProgress:Z

    .line 5280
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    iget v0, v1, mActiveWindowId:I

    .line 5281
    .local v0, "oldActiveWindow":I
    iget v1, p0, mFocusedWindowId:I

    invoke-direct {p0, v1}, setActiveWindowLocked(I)V

    .line 5287
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    iget v1, v1, mActiveWindowId:I

    if-eq v0, v1, :cond_3f

    iget v1, p0, mAccessibilityFocusedWindowId:I

    if-ne v1, v0, :cond_3f

    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    if-eqz v1, :cond_3f

    .line 5290
    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v1

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 5293
    :cond_3f
    monitor-exit v2

    .line 5294
    return-void

    .line 5293
    .end local v0    # "oldActiveWindow":I
    :catchall_41
    move-exception v1

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public onTouchInteractionStart()V
    .registers 3

    .prologue
    .line 5264
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5265
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, mTouchInteractionInProgress:Z

    .line 5266
    monitor-exit v1

    .line 5267
    return-void

    .line 5266
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x3

    .line 5377
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5378
    .local v0, "callingUid":I
    if-eqz v0, :cond_10

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_10

    const/16 v3, 0x7d0

    if-ne v0, v3, :cond_20

    .line 5381
    :cond_10
    if-eq p1, v5, :cond_14

    if-ne p1, v4, :cond_1b

    .line 5383
    :cond_14
    iget-object v3, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    .line 5405
    :goto_1a
    return v3

    .line 5385
    :cond_1b
    invoke-direct {p0, p1}, resolveProfileParentLocked(I)I

    move-result v3

    goto :goto_1a

    .line 5387
    :cond_20
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5388
    .local v1, "callingUserId":I
    if-ne v1, p1, :cond_2b

    .line 5389
    invoke-direct {p0, p1}, resolveProfileParentLocked(I)I

    move-result v3

    goto :goto_1a

    .line 5391
    :cond_2b
    invoke-direct {p0, v1}, resolveProfileParentLocked(I)I

    move-result v2

    .line 5392
    .local v2, "callingUserParentId":I
    iget-object v3, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    if-ne v2, v3, :cond_42

    if-eq p1, v5, :cond_3b

    if-ne p1, v4, :cond_42

    .line 5395
    :cond_3b
    iget-object v3, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    goto :goto_1a

    .line 5397
    :cond_42
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v3}, hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_81

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v3}, hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_81

    .line 5399
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call from user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " without permission INTERACT_ACROSS_USERS or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "INTERACT_ACROSS_USERS_FULL not allowed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5403
    :cond_81
    if-eq p1, v5, :cond_85

    if-ne p1, v4, :cond_8c

    .line 5405
    :cond_85
    iget-object v3, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    goto :goto_1a

    .line 5407
    :cond_8c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Calling user can be changed to only UserHandle.USER_CURRENT or UserHandle.USER_CURRENT_OR_SELF."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public updateActiveAndAccessibilityFocusedWindowLocked(IJI)V
    .registers 11
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J
    .param p4, "eventType"    # I

    .prologue
    const-wide/32 v4, 0x7fffffff

    .line 5210
    sparse-switch p4, :sswitch_data_90

    .line 5261
    :goto_6
    return-void

    .line 5218
    :sswitch_7
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5219
    :try_start_e
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v0

    if-nez v0, :cond_22

    .line 5220
    invoke-direct {p0}, getFocusedWindowId()I

    move-result v0

    iput v0, p0, mFocusedWindowId:I

    .line 5221
    iget v0, p0, mFocusedWindowId:I

    if-ne p1, v0, :cond_22

    .line 5222
    iput p1, p0, mActiveWindowId:I

    .line 5225
    :cond_22
    monitor-exit v1

    goto :goto_6

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_24

    throw v0

    .line 5231
    :sswitch_27
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5232
    :try_start_2e
    iget-boolean v0, p0, mTouchInteractionInProgress:Z

    if-eqz v0, :cond_39

    iget v0, p0, mActiveWindowId:I

    if-eq v0, p1, :cond_39

    .line 5233
    invoke-direct {p0, p1}, setActiveWindowLocked(I)V

    .line 5235
    :cond_39
    monitor-exit v1

    goto :goto_6

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_3b

    throw v0

    .line 5239
    :sswitch_3e
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5240
    :try_start_45
    iget v0, p0, mAccessibilityFocusedWindowId:I

    if-eq v0, p1, :cond_66

    .line 5241
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v0

    const/16 v2, 0x9

    iget v3, p0, mAccessibilityFocusedWindowId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5243
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    invoke-direct {v0, p1}, setAccessibilityFocusedWindowLocked(I)V

    .line 5244
    iput-wide p2, p0, mAccessibilityFocusNodeId:J

    .line 5246
    :cond_66
    monitor-exit v1

    goto :goto_6

    :catchall_68
    move-exception v0

    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_45 .. :try_end_6a} :catchall_68

    throw v0

    .line 5250
    :sswitch_6b
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5251
    :try_start_72
    iget-wide v2, p0, mAccessibilityFocusNodeId:J

    cmp-long v0, v2, p2

    if-nez v0, :cond_7d

    .line 5252
    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, mAccessibilityFocusNodeId:J

    .line 5254
    :cond_7d
    iget-wide v2, p0, mAccessibilityFocusNodeId:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_8a

    iget v0, p0, mAccessibilityFocusedWindowId:I

    if-ne v0, p1, :cond_8a

    .line 5256
    const/4 v0, -0x1

    iput v0, p0, mAccessibilityFocusedWindowId:I

    .line 5258
    :cond_8a
    monitor-exit v1

    goto/16 :goto_6

    :catchall_8d
    move-exception v0

    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_72 .. :try_end_8f} :catchall_8d

    throw v0

    .line 5210
    :sswitch_data_90
    .sparse-switch
        0x20 -> :sswitch_7
        0x80 -> :sswitch_27
        0x8000 -> :sswitch_3e
        0x10000 -> :sswitch_6b
    .end sparse-switch
.end method

.method public updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 5195
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x3b9bf

    and-int/2addr v0, v1

    if-nez v0, :cond_e

    .line 5196
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 5198
    :cond_e
    return-void
.end method

.method public updateWindowsLocked(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 5099
    iget-object v6, p0, mWindows:Ljava/util/List;

    if-nez v6, :cond_d

    .line 5100
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, mWindows:Ljava/util/List;

    .line 5103
    :cond_d
    iget-object v6, p0, mWindows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 5104
    .local v2, "oldWindowCount":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_15
    if-ltz v1, :cond_25

    .line 5105
    iget-object v6, p0, mWindows:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 5104
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 5108
    :cond_25
    iput v7, p0, mFocusedWindowId:I

    .line 5109
    iget-boolean v6, p0, mTouchInteractionInProgress:Z

    if-nez v6, :cond_2d

    .line 5110
    iput v7, p0, mActiveWindowId:I

    .line 5118
    :cond_2d
    const/4 v0, 0x1

    .line 5120
    .local v0, "activeWindowGone":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 5121
    .local v4, "windowCount":I
    if-lez v4, :cond_8e

    .line 5122
    const/4 v1, 0x0

    :goto_35
    if-ge v1, v4, :cond_60

    .line 5123
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 5124
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    .line 5125
    .local v5, "windowId":I
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_52

    .line 5126
    iput v5, p0, mFocusedWindowId:I

    .line 5127
    iget-boolean v6, p0, mTouchInteractionInProgress:Z

    if-nez v6, :cond_5a

    .line 5128
    iput v5, p0, mActiveWindowId:I

    .line 5129
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 5134
    :cond_52
    :goto_52
    iget-object v6, p0, mWindows:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5122
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 5130
    :cond_5a
    iget v6, p0, mActiveWindowId:I

    if-ne v5, v6, :cond_52

    .line 5131
    const/4 v0, 0x0

    goto :goto_52

    .line 5137
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v5    # "windowId":I
    :cond_60
    iget-boolean v6, p0, mTouchInteractionInProgress:Z

    if-eqz v6, :cond_6a

    if-eqz v0, :cond_6a

    .line 5138
    iget v6, p0, mFocusedWindowId:I

    iput v6, p0, mActiveWindowId:I

    .line 5143
    :cond_6a
    const/4 v1, 0x0

    :goto_6b
    if-ge v1, v4, :cond_8e

    .line 5144
    iget-object v6, p0, mWindows:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 5145
    .restart local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    iget v7, p0, mActiveWindowId:I

    if-ne v6, v7, :cond_80

    .line 5146
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 5148
    :cond_80
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    iget v7, p0, mAccessibilityFocusedWindowId:I

    if-ne v6, v7, :cond_8b

    .line 5149
    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 5143
    :cond_8b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 5154
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_8e
    invoke-direct {p0}, notifyWindowsChanged()V

    .line 5155
    return-void
.end method
