.class public Lcom/android/server/statusbar/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    }
.end annotation


# static fields
.field private static final SPEW:Z = false

.field private static final TAG:Ljava/lang/String; = "StatusBarManagerService"


# instance fields
.field private volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field private volatile mBars:[Lcom/android/internal/statusbar/IStatusBar;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field mDisableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabled1:I

.field private mDisabled2:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mHandler:Landroid/os/Handler;

.field private mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

.field private mImeBackDisposition:I

.field private mImeToken:Landroid/os/IBinder;

.field private mImeWindowVis:I

.field private final mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private mLock:Ljava/lang/Object;

.field private mMenuVisible:Z

.field private mMenuVisibles:[Z

.field private mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelExpandState:Z

.field private mQsPanelExpandState:Z

.field private mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

.field private mShowImeSwitcher:Z

.field private mSysUiVisToken:Landroid/os/IBinder;

.field private mSystemUiVisibilities:[I

.field private mSystemUiVisibility:I

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 131
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    .line 73
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, mHandler:Landroid/os/Handler;

    .line 76
    new-instance v2, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v2}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    iput-object v2, p0, mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    .line 78
    iput-object v3, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mDisableRecords:Ljava/util/ArrayList;

    .line 91
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, mSysUiVisToken:Landroid/os/IBinder;

    .line 92
    iput v4, p0, mDisabled1:I

    .line 93
    iput v4, p0, mDisabled2:I

    .line 95
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, mLock:Ljava/lang/Object;

    .line 97
    iput v4, p0, mSystemUiVisibility:I

    .line 98
    iput-boolean v4, p0, mMenuVisible:Z

    .line 99
    iput v4, p0, mImeWindowVis:I

    .line 102
    iput-object v3, p0, mImeToken:Landroid/os/IBinder;

    .line 104
    iput-boolean v4, p0, mPanelExpandState:Z

    .line 105
    iput-boolean v4, p0, mQsPanelExpandState:Z

    .line 108
    new-array v2, v5, [Lcom/android/internal/statusbar/IStatusBar;

    iput-object v2, p0, mBars:[Lcom/android/internal/statusbar/IStatusBar;

    .line 109
    new-array v2, v5, [I

    iput-object v2, p0, mSystemUiVisibilities:[I

    .line 110
    new-array v2, v5, [Z

    iput-object v2, p0, mMenuVisibles:[Z

    .line 151
    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/statusbar/StatusBarManagerService$1;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v2, p0, mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mDisableList:Ljava/util/ArrayList;

    .line 1170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mNotificationList:Ljava/util/ArrayList;

    .line 132
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 133
    iput-object p2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 136
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    const v3, 0x107000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/statusbar/StatusBarIconList;->defineSlots([Ljava/lang/String;)V

    .line 138
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v3, p0, mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_78
    if-ge v0, v5, :cond_85

    .line 142
    iget-object v2, p0, mSystemUiVisibilities:[I

    aput v4, v2, v0

    .line 143
    iget-object v2, p0, mMenuVisibles:[Z

    aput-boolean v4, v2, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 146
    :cond_85
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/notification/NotificationDelegate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .prologue
    .line 67
    iget-object v0, p0, mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)Lcom/android/server/notification/NotificationDelegate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationDelegate;

    .prologue
    .line 67
    iput-object p1, p0, mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .prologue
    .line 67
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/statusbar/StatusBarManagerService;)[Lcom/android/internal/statusbar/IStatusBar;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .prologue
    .line 67
    iget-object v0, p0, mBars:[Lcom/android/internal/statusbar/IStatusBar;

    return-object v0
.end method

.method private disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "whichFlag"    # I

    .prologue
    .line 329
    invoke-virtual/range {p0 .. p5}, manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 332
    iget v2, p0, mCurrentUserId:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, gatherDisableActionsLocked(II)I

    move-result v0

    .line 333
    .local v0, "net1":I
    iget v2, p0, mCurrentUserId:I

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, gatherDisableActionsLocked(II)I

    move-result v1

    .line 334
    .local v1, "net2":I
    iget v2, p0, mDisabled1:I

    if-ne v0, v2, :cond_19

    iget v2, p0, mDisabled2:I

    if-eq v1, v2, :cond_30

    .line 335
    :cond_19
    iput v0, p0, mDisabled1:I

    .line 336
    iput v1, p0, mDisabled2:I

    .line 337
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-direct {v3, p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService$2;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    iget-object v2, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v2, :cond_30

    .line 344
    :try_start_2b
    iget-object v2, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->disable(II)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31

    .line 349
    :cond_30
    :goto_30
    return-void

    .line 345
    :catch_31
    move-exception v2

    goto :goto_30
.end method

.method private enforceExpandStatusBar()V
    .registers 4

    .prologue
    .line 721
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method private enforceStatusBar()V
    .registers 4

    .prologue
    .line 716
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method private enforceStatusBarService()V
    .registers 4

    .prologue
    .line 726
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    return-void
.end method

.method private getService()Landroid/app/enterprise/IRestrictionPolicy;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

    if-nez v0, :cond_11

    .line 83
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

    .line 86
    :cond_11
    iget-object v0, p0, mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

    return-object v0
.end method

.method private updateUiVisibilityLocked(II)V
    .registers 5
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 565
    iget v0, p0, mSystemUiVisibility:I

    if-eq v0, p1, :cond_10

    .line 566
    iput p1, p0, mSystemUiVisibility:I

    .line 567
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$6;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 578
    :cond_10
    return-void
.end method

.method private updateUiVisibilityLockedToDisplay(III)V
    .registers 6
    .param p1, "vis"    # I
    .param p2, "mask"    # I
    .param p3, "displayId"    # I

    .prologue
    .line 582
    iget-object v0, p0, mSystemUiVisibilities:[I

    aget v0, v0, p3

    if-eq v0, p1, :cond_14

    .line 583
    iget-object v0, p0, mSystemUiVisibilities:[I

    aput p1, v0, p3

    .line 584
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$7;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$7;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 595
    :cond_14
    return-void
.end method


# virtual methods
.method public appTransitionCancelled()V
    .registers 2

    .prologue
    .line 680
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 682
    :try_start_4
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionCancelled()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 685
    :cond_9
    :goto_9
    return-void

    .line 683
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public appTransitionPending()V
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 673
    :try_start_4
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionPending()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 676
    :cond_9
    :goto_9
    return-void

    .line 674
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public appTransitionStarting(JJ)V
    .registers 6
    .param p1, "statusBarAnimationsStartTime"    # J
    .param p3, "statusBarAnimationsDuration"    # J

    .prologue
    .line 690
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 692
    :try_start_4
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionStarting(JJ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 696
    :cond_9
    :goto_9
    return-void

    .line 694
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public applyEDMPolicy()V
    .registers 2

    .prologue
    .line 553
    invoke-direct {p0}, enforceStatusBarService()V

    .line 555
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 557
    :try_start_7
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->applyEDMPolicy()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 561
    :cond_c
    :goto_c
    return-void

    .line 558
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public cancelPreloadRecentApps()V
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 631
    :try_start_4
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->cancelPreloadRecentApps()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 634
    :cond_9
    :goto_9
    return-void

    .line 632
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public clearNotificationEffects()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 800
    invoke-direct {p0}, enforceStatusBarService()V

    .line 801
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 803
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 805
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    return-void

    .line 805
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public collapsePanels()V
    .registers 2

    .prologue
    .line 254
    invoke-direct {p0}, enforceExpandStatusBar()V

    .line 256
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 258
    :try_start_7
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 262
    :cond_c
    :goto_c
    return-void

    .line 259
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 286
    iget v0, p0, mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 287
    return-void
.end method

.method public disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 306
    iget v0, p0, mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 307
    return-void
.end method

.method public disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 317
    invoke-direct {p0}, enforceStatusBar()V

    .line 319
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 320
    const/4 v5, 0x2

    move-object v0, p0

    move v1, p4

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_c
    invoke-direct/range {v0 .. v5}, disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 321
    monitor-exit v6

    .line 322
    return-void

    .line 321
    :catchall_11
    move-exception v0

    monitor-exit v6
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_11

    throw v0
.end method

.method public disableAsUser(IILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    .line 280
    invoke-virtual {p0, p2, p3, p4, p1}, disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 281
    return-void
.end method

.method public disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 291
    invoke-direct {p0}, enforceStatusBar()V

    .line 293
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 294
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p4

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_c
    invoke-direct/range {v0 .. v5}, disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 295
    monitor-exit v6

    .line 296
    return-void

    .line 295
    :catchall_11
    move-exception v0

    monitor-exit v6
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_11

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1121
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_33

    .line 1123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1166
    :goto_32
    return-void

    .line 1129
    :cond_33
    iget-object v4, p0, mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v4

    .line 1130
    :try_start_36
    iget-object v3, p0, mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v3, p2}, Lcom/android/internal/statusbar/StatusBarIconList;->dump(Ljava/io/PrintWriter;)V

    .line 1131
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_fb

    .line 1133
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1134
    :try_start_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisabled1=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, mDisabled1:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisabled2=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, mDisabled2:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1136
    iget-object v3, p0, mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1137
    .local v0, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisableRecords.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_94
    if-ge v1, v0, :cond_fe

    .line 1139
    iget-object v3, p0, mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1140
    .local v2, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] userId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " what1=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " what2=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " pkg="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " token="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f8
    .catchall {:try_start_3f .. :try_end_f8} :catchall_14c

    .line 1138
    add-int/lit8 v1, v1, 0x1

    goto :goto_94

    .line 1131
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :catchall_fb
    move-exception v3

    :try_start_fc
    monitor-exit v4
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fb

    throw v3

    .line 1146
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_fe
    :try_start_fe
    monitor-exit v4
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_14c

    .line 1149
    iget-object v4, p0, mDisableList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1150
    :try_start_102
    iget-object v3, p0, mDisableList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisableList.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1152
    const/4 v1, 0x0

    :goto_11f
    if-ge v1, v0, :cond_14f

    .line 1153
    iget-object v3, p0, mDisableList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1154
    .local v2, "tok":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_149
    .catchall {:try_start_102 .. :try_end_149} :catchall_19d

    .line 1152
    add-int/lit8 v1, v1, 0x1

    goto :goto_11f

    .line 1146
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "tok":Ljava/lang/String;
    :catchall_14c
    move-exception v3

    :try_start_14d
    monitor-exit v4
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14c

    throw v3

    .line 1156
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_14f
    :try_start_14f
    monitor-exit v4
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_19d

    .line 1157
    iget-object v4, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1158
    :try_start_153
    iget-object v3, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mNotificationList.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1160
    const/4 v1, 0x0

    :goto_170
    if-ge v1, v0, :cond_1a0

    .line 1161
    iget-object v3, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1162
    .restart local v2    # "tok":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_19a
    .catchall {:try_start_153 .. :try_end_19a} :catchall_1a3

    .line 1160
    add-int/lit8 v1, v1, 0x1

    goto :goto_170

    .line 1156
    .end local v2    # "tok":Ljava/lang/String;
    :catchall_19d
    move-exception v3

    :try_start_19e
    monitor-exit v4
    :try_end_19f
    .catchall {:try_start_19e .. :try_end_19f} :catchall_19d

    throw v3

    .line 1164
    :cond_1a0
    :try_start_1a0
    monitor-exit v4

    goto/16 :goto_32

    :catchall_1a3
    move-exception v3

    monitor-exit v4
    :try_end_1a5
    .catchall {:try_start_1a0 .. :try_end_1a5} :catchall_1a3

    throw v3
.end method

.method public enableSignals(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 610
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 612
    :try_start_4
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->enableSignals(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 615
    :cond_9
    :goto_9
    return-void

    .line 613
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public expandNotificationsPanel()V
    .registers 2

    .prologue
    .line 239
    invoke-direct {p0}, enforceExpandStatusBar()V

    .line 241
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_c

    .line 242
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTransientBars()V

    .line 244
    :cond_c
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_15

    .line 246
    :try_start_10
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16

    .line 250
    :cond_15
    :goto_15
    return-void

    .line 247
    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public expandSettingsPanel()V
    .registers 2

    .prologue
    .line 266
    invoke-direct {p0}, enforceExpandStatusBar()V

    .line 268
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_c

    .line 269
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTransientBars()V

    .line 271
    :cond_c
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_15

    .line 273
    :try_start_10
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16

    .line 277
    :cond_15
    :goto_15
    return-void

    .line 274
    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method gatherDisableActionsLocked(II)I
    .registers 11
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x1

    .line 1092
    iget-object v6, p0, mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1094
    .local v0, "N":I
    const/4 v4, 0x0

    .line 1095
    .local v4, "net":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_22

    .line 1096
    iget-object v6, p0, mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1097
    .local v5, "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget v6, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v6, p1, :cond_1c

    .line 1098
    if-ne p2, v7, :cond_1f

    iget v6, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    :goto_1b
    or-int/2addr v4, v6

    .line 1095
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1098
    :cond_1f
    iget v6, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    goto :goto_1b

    .line 1102
    .end local v5    # "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_22
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1105
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :try_start_2d
    invoke-direct {p0}, getService()Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v6

    if-eqz v6, :cond_3c

    iget-object v6, p0, mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

    const/4 v7, 0x1

    invoke-interface {v6, v7, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v6

    if-eqz v6, :cond_48

    :cond_3c
    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_45} :catch_4c

    move-result v6

    if-eqz v6, :cond_4b

    .line 1107
    :cond_48
    const/high16 v6, 0x10000

    or-int/2addr v4, v6

    .line 1113
    :cond_4b
    :goto_4b
    return v4

    .line 1109
    :catch_4c
    move-exception v1

    .line 1110
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "StatusBarManagerService"

    const-string v7, "Failed talking with restriction policy"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b
.end method

.method public getDisableFlags()I
    .registers 4

    .prologue
    .line 355
    const-string v0, "StatusBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisabled=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mDisabled1:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget v0, p0, mDisabled1:I

    return v0
.end method

.method public getPanelExpandState()Z
    .registers 2

    .prologue
    .line 976
    iget-boolean v0, p0, mPanelExpandState:Z

    return v0
.end method

.method public getQuickSettingPanelExpandState()Z
    .registers 2

    .prologue
    .line 1005
    iget-boolean v0, p0, mQsPanelExpandState:Z

    return v0
.end method

.method public hideRecentApps(ZZ)V
    .registers 4
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 647
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 649
    :try_start_4
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 652
    :cond_9
    :goto_9
    return-void

    .line 650
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "which"    # I

    .prologue
    const/4 v9, 0x0

    .line 1028
    const-string v6, "StatusBarManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "manageDisableList userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " what=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1033
    .local v2, "flagdbg":Ljava/lang/StringBuilder;
    const/high16 v6, 0x10000

    and-int/2addr v6, p2

    if-eqz v6, :cond_d2

    const-string v6, "EXPAND "

    :goto_3e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    const/high16 v6, 0x20000

    and-int/2addr v6, p2

    if-eqz v6, :cond_d6

    const-string v6, "ICONS "

    :goto_48
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    const/high16 v6, 0x40000

    and-int/2addr v6, p2

    if-eqz v6, :cond_da

    const-string v6, "ALERTS "

    :goto_52
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    const/high16 v6, 0x80000

    and-int/2addr v6, p2

    if-eqz v6, :cond_de

    const-string v6, "TICKER "

    :goto_5c
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    const/high16 v6, 0x100000

    and-int/2addr v6, p2

    if-eqz v6, :cond_e2

    const-string v6, "SYSTEM_INFO "

    :goto_66
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    const/high16 v6, 0x400000

    and-int/2addr v6, p2

    if-eqz v6, :cond_e5

    const-string v6, "BACK "

    :goto_70
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    const/high16 v6, 0x200000

    and-int/2addr v6, p2

    if-eqz v6, :cond_e8

    const-string v6, "HOME "

    :goto_7a
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    const/high16 v6, 0x1000000

    and-int/2addr v6, p2

    if-eqz v6, :cond_eb

    const-string v6, "RECENT "

    :goto_84
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    const/high16 v6, 0x800000

    and-int/2addr v6, p2

    if-eqz v6, :cond_ee

    const-string v6, "CLOCK "

    :goto_8e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    const/high16 v6, 0x2000000

    and-int/2addr v6, p2

    if-eqz v6, :cond_f1

    const-string v6, "SEARCH "

    :goto_98
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    if-nez p2, :cond_a2

    .line 1044
    const-string v6, "CLEAR"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    :cond_a2
    iget-object v6, p0, mDisableList:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    :goto_c2
    iget-object v6, p0, mDisableList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x32

    if-le v6, v7, :cond_f4

    .line 1048
    iget-object v6, p0, mDisableList:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_c2

    .line 1033
    :cond_d2
    const-string v6, ""

    goto/16 :goto_3e

    .line 1034
    :cond_d6
    const-string v6, ""

    goto/16 :goto_48

    .line 1035
    :cond_da
    const-string v6, ""

    goto/16 :goto_52

    .line 1036
    :cond_de
    const-string v6, ""

    goto/16 :goto_5c

    .line 1037
    :cond_e2
    const-string v6, ""

    goto :goto_66

    .line 1038
    :cond_e5
    const-string v6, ""

    goto :goto_70

    .line 1039
    :cond_e8
    const-string v6, ""

    goto :goto_7a

    .line 1040
    :cond_eb
    const-string v6, ""

    goto :goto_84

    .line 1041
    :cond_ee
    const-string v6, ""

    goto :goto_8e

    .line 1042
    :cond_f1
    const-string v6, ""

    goto :goto_98

    .line 1053
    :cond_f4
    iget-object v6, p0, mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1054
    .local v0, "N":I
    const/4 v5, 0x0

    .line 1056
    .local v5, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_fc
    if-ge v3, v0, :cond_10f

    .line 1057
    iget-object v6, p0, mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1058
    .local v4, "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget-object v6, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v6, p3, :cond_124

    iget v6, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v6, p1, :cond_124

    .line 1059
    move-object v5, v4

    .line 1063
    .end local v4    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_10f
    if-eqz p2, :cond_117

    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v6

    if-nez v6, :cond_127

    .line 1064
    :cond_117
    if-eqz v5, :cond_123

    .line 1065
    iget-object v6, p0, mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1066
    iget-object v6, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v6, v5, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1088
    :cond_123
    :goto_123
    return-void

    .line 1056
    .restart local v4    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_124
    add-int/lit8 v3, v3, 0x1

    goto :goto_fc

    .line 1069
    .end local v4    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_127
    if-nez v5, :cond_13a

    .line 1070
    new-instance v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .end local v5    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V

    .line 1071
    .restart local v5    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iput p1, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    .line 1073
    const/4 v6, 0x0

    :try_start_132
    invoke-interface {p3, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_135
    .catch Landroid/os/RemoteException; {:try_start_132 .. :try_end_135} :catch_144

    .line 1078
    iget-object v6, p0, mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    :cond_13a
    const/4 v6, 0x1

    if-ne p5, v6, :cond_146

    .line 1081
    iput p2, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    .line 1085
    :goto_13f
    iput-object p3, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 1086
    iput-object p4, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    goto :goto_123

    .line 1075
    :catch_144
    move-exception v1

    .line 1076
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_123

    .line 1083
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_146
    iput p2, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    goto :goto_13f
.end method

.method public notifyRecentPanelVisiblity(Z)V
    .registers 3
    .param p1, "state"    # Z

    .prologue
    .line 947
    invoke-direct {p0}, enforceStatusBar()V

    .line 949
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 951
    :try_start_7
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->notifyRecentPanelVisiblity(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 955
    :cond_c
    :goto_c
    return-void

    .line 952
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public onClearAllNotifications(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 905
    invoke-direct {p0}, enforceStatusBarService()V

    .line 906
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 907
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 908
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 910
    .local v2, "identity":J
    :try_start_f
    iget-object v4, p0, mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v1, v0, p1}, Lcom/android/server/notification/NotificationDelegate;->onClearAll(III)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 912
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 914
    return-void

    .line 912
    :catchall_18
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onNotificationActionClick(Ljava/lang/String;I)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "actionIndex"    # I

    .prologue
    .line 835
    invoke-direct {p0}, enforceStatusBarService()V

    .line 836
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 837
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 838
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 840
    .local v2, "identity":J
    :try_start_f
    iget-object v4, p0, mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v1, v0, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationActionClick(IILjava/lang/String;I)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 843
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 845
    return-void

    .line 843
    :catchall_18
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 15
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    .line 865
    invoke-direct {p0}, enforceStatusBarService()V

    .line 866
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 867
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 868
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 870
    .local v8, "identity":J
    :try_start_f
    iget-object v0, p0, mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClear(IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1c

    .line 872
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 874
    return-void

    .line 872
    :catchall_1c
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationClearWithReason(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .param p5, "reasonClear"    # I

    .prologue
    .line 982
    invoke-direct {p0}, enforceStatusBarService()V

    .line 983
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 984
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 985
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 987
    .local v8, "identity":J
    :try_start_f
    iget-object v0, p0, mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClear(IILjava/lang/String;Ljava/lang/String;III)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1d

    .line 990
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 992
    return-void

    .line 990
    :catchall_1d
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationClick(Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 822
    invoke-direct {p0}, enforceStatusBarService()V

    .line 823
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 824
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 825
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 827
    .local v2, "identity":J
    :try_start_f
    iget-object v4, p0, mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v1, v0, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClick(IILjava/lang/String;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 829
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 831
    return-void

    .line 829
    :catchall_18
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 20
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "uid"    # I
    .param p5, "initialPid"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .prologue
    .line 850
    invoke-direct {p0}, enforceStatusBarService()V

    .line 851
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 852
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 853
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 856
    .local v10, "identity":J
    :try_start_f
    iget-object v0, p0, mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v0 .. v9}, Lcom/android/server/notification/NotificationDelegate;->onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_23

    .line 859
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 861
    return-void

    .line 859
    :catchall_23
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 893
    invoke-direct {p0}, enforceStatusBarService()V

    .line 894
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 896
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/notification/NotificationDelegate;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 899
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 901
    return-void

    .line 899
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 6
    .param p1, "newlyVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 880
    invoke-direct {p0}, enforceStatusBarService()V

    .line 881
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 883
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 886
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 888
    return-void

    .line 886
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onPanelHidden()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 811
    invoke-direct {p0}, enforceStatusBarService()V

    .line 812
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 814
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->onPanelHidden()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 816
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 818
    return-void

    .line 816
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onPanelRevealed(ZI)V
    .registers 6
    .param p1, "clearNotificationEffects"    # Z
    .param p2, "numItems"    # I

    .prologue
    .line 789
    invoke-direct {p0}, enforceStatusBarService()V

    .line 790
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 792
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onPanelRevealed(ZI)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 794
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 796
    return-void

    .line 794
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public preloadRecentApps()V
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 622
    :try_start_4
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 625
    :cond_9
    :goto_9
    return-void

    .line 623
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V
    .registers 11
    .param p1, "bar"    # Lcom/android/internal/statusbar/IStatusBar;
    .param p2, "iconList"    # Lcom/android/internal/statusbar/StatusBarIconList;
    .param p3, "switches"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            "[I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 736
    invoke-direct {p0}, enforceStatusBarService()V

    .line 738
    const-string v2, "StatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerStatusBar bar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iput-object p1, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 740
    iget-object v2, p0, mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 741
    :try_start_23
    iget-object v3, p0, mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {p2, v3}, Lcom/android/internal/statusbar/StatusBarIconList;->copyFrom(Lcom/android/internal/statusbar/StatusBarIconList;)V

    .line 742
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_65

    .line 743
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 744
    const/4 v2, 0x0

    :try_start_2d
    iget v4, p0, mCurrentUserId:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, gatherDisableActionsLocked(II)I

    move-result v4

    aput v4, p3, v2

    .line 745
    const/4 v2, 0x1

    iget v4, p0, mSystemUiVisibility:I

    aput v4, p3, v2

    .line 746
    const/4 v4, 0x2

    iget-boolean v2, p0, mMenuVisible:Z

    if-eqz v2, :cond_68

    move v2, v0

    :goto_41
    aput v2, p3, v4

    .line 747
    const/4 v2, 0x3

    iget v4, p0, mImeWindowVis:I

    aput v4, p3, v2

    .line 748
    const/4 v2, 0x4

    iget v4, p0, mImeBackDisposition:I

    aput v4, p3, v2

    .line 749
    const/4 v2, 0x5

    iget-boolean v4, p0, mShowImeSwitcher:Z

    if-eqz v4, :cond_6a

    :goto_52
    aput v0, p3, v2

    .line 750
    const/4 v0, 0x6

    iget v1, p0, mCurrentUserId:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, gatherDisableActionsLocked(II)I

    move-result v1

    aput v1, p3, v0

    .line 751
    iget-object v0, p0, mImeToken:Landroid/os/IBinder;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_2d .. :try_end_64} :catchall_6c

    .line 753
    return-void

    .line 742
    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v0

    :cond_68
    move v2, v1

    .line 746
    goto :goto_41

    :cond_6a
    move v0, v1

    .line 749
    goto :goto_52

    .line 752
    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v0
.end method

.method public registerStatusBarToDisplay(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;I)V
    .registers 12
    .param p1, "bar"    # Lcom/android/internal/statusbar/IStatusBar;
    .param p2, "iconList"    # Lcom/android/internal/statusbar/StatusBarIconList;
    .param p3, "switches"    # [I
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            "[I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p4, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 759
    invoke-direct {p0}, enforceStatusBarService()V

    .line 761
    const-string v2, "StatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerStatusBarToDisplay("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") bar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v2, p0, mBars:[Lcom/android/internal/statusbar/IStatusBar;

    aput-object p1, v2, p5

    .line 764
    iget-object v2, p0, mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 765
    :try_start_2f
    iget-object v3, p0, mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {p2, v3}, Lcom/android/internal/statusbar/StatusBarIconList;->copyFrom(Lcom/android/internal/statusbar/StatusBarIconList;)V

    .line 766
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_70

    .line 767
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 768
    const/4 v2, 0x0

    :try_start_39
    iget v4, p0, mCurrentUserId:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, gatherDisableActionsLocked(II)I

    move-result v4

    aput v4, p3, v2

    .line 769
    const/4 v2, 0x1

    iget-object v4, p0, mSystemUiVisibilities:[I

    aget v4, v4, p5

    aput v4, p3, v2

    .line 770
    const/4 v4, 0x2

    iget-object v2, p0, mMenuVisibles:[Z

    aget-boolean v2, v2, p5

    if-eqz v2, :cond_73

    move v2, v0

    :goto_51
    aput v2, p3, v4

    .line 771
    const/4 v2, 0x3

    iget v4, p0, mImeWindowVis:I

    aput v4, p3, v2

    .line 772
    const/4 v2, 0x4

    iget v4, p0, mImeBackDisposition:I

    aput v4, p3, v2

    .line 773
    const/4 v2, 0x5

    iget-boolean v4, p0, mShowImeSwitcher:Z

    if-eqz v4, :cond_75

    :goto_62
    aput v0, p3, v2

    .line 774
    iget-object v0, p0, mImeToken:Landroid/os/IBinder;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_39 .. :try_end_6a} :catchall_77

    .line 778
    if-nez p5, :cond_6f

    .line 779
    invoke-virtual {p0, p1, p2, p3, p4}, registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V

    .line 780
    :cond_6f
    return-void

    .line 766
    :catchall_70
    move-exception v0

    :try_start_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v0

    :cond_73
    move v2, v1

    .line 770
    goto :goto_51

    :cond_75
    move v0, v1

    .line 773
    goto :goto_62

    .line 775
    :catchall_77
    move-exception v0

    :try_start_78
    monitor-exit v3
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v0
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 7
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-direct {p0}, enforceStatusBar()V

    .line 419
    iget-object v2, p0, mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 420
    :try_start_6
    iget-object v1, p0, mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    .line 421
    .local v0, "index":I
    if-gez v0, :cond_2b

    .line 422
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid status bar icon slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    .end local v0    # "index":I
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v1

    .line 425
    .restart local v0    # "index":I
    :cond_2b
    :try_start_2b
    iget-object v1, p0, mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->removeIcon(I)V

    .line 427
    const-string v1, "StatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeIcon slot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v1, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_4b
    .catchall {:try_start_2b .. :try_end_4b} :catchall_28

    if-eqz v1, :cond_52

    .line 430
    :try_start_4d
    iget-object v1, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(I)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_52} :catch_54
    .catchall {:try_start_4d .. :try_end_52} :catchall_28

    .line 434
    :cond_52
    :goto_52
    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_28

    .line 435
    return-void

    .line 431
    :catch_54
    move-exception v1

    goto :goto_52
.end method

.method public requestStatusBarOpen()V
    .registers 2

    .prologue
    .line 1014
    invoke-direct {p0}, enforceExpandStatusBar()V

    .line 1015
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_c

    .line 1016
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTransientBars()V

    .line 1018
    :cond_c
    return-void
.end method

.method public setCallBackground(I)V
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 935
    invoke-direct {p0}, enforceStatusBar()V

    .line 937
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 939
    :try_start_7
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setCallBackground(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 943
    :cond_c
    :goto_c
    return-void

    .line 940
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public setCurrentUser(I)V
    .registers 2
    .param p1, "newUserId"    # I

    .prologue
    .line 657
    iput p1, p0, mCurrentUserId:I

    .line 658
    return-void
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 15
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPackage"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "iconLevel"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-direct {p0}, enforceStatusBar()V

    .line 365
    iget-object v8, p0, mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v8

    .line 366
    :try_start_6
    iget-object v1, p0, mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v7

    .line 367
    .local v7, "index":I
    if-gez v7, :cond_2b

    .line 368
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid status bar icon slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    .end local v7    # "index":I
    :catchall_28
    move-exception v1

    monitor-exit v8
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v1

    .line 371
    .restart local v7    # "index":I
    :cond_2b
    :try_start_2b
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 374
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    const-string v1, "StatusBarManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIcon slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, v7, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 377
    iget-object v1, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_6b
    .catchall {:try_start_2b .. :try_end_6b} :catchall_28

    if-eqz v1, :cond_72

    .line 379
    :try_start_6d
    iget-object v1, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v7, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_72} :catch_74
    .catchall {:try_start_6d .. :try_end_72} :catchall_28

    .line 383
    :cond_72
    :goto_72
    :try_start_72
    monitor-exit v8
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_28

    .line 384
    return-void

    .line 380
    :catch_74
    move-exception v1

    goto :goto_72
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 388
    invoke-direct {p0}, enforceStatusBar()V

    .line 390
    iget-object v3, p0, mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v3

    .line 391
    :try_start_6
    iget-object v2, p0, mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v1

    .line 392
    .local v1, "index":I
    if-gez v1, :cond_2b

    .line 393
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid status bar icon slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    .end local v1    # "index":I
    :catchall_28
    move-exception v2

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v2

    .line 396
    .restart local v1    # "index":I
    :cond_2b
    :try_start_2b
    iget-object v2, p0, mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .line 397
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v0, :cond_35

    .line 398
    monitor-exit v3

    .line 413
    :goto_34
    return-void

    .line 401
    :cond_35
    const-string v2, "StatusBarManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setIconVisibility slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-boolean v2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eq v2, p2, :cond_67

    .line 403
    iput-boolean p2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 405
    iget-object v2, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_60
    .catchall {:try_start_2b .. :try_end_60} :catchall_28

    if-eqz v2, :cond_67

    .line 407
    :try_start_62
    iget-object v2, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_67} :catch_69
    .catchall {:try_start_62 .. :try_end_67} :catchall_28

    .line 412
    :cond_67
    :goto_67
    :try_start_67
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_28

    goto :goto_34

    .line 408
    :catch_69
    move-exception v2

    goto :goto_67
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 489
    invoke-direct {p0}, enforceStatusBar()V

    .line 495
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 499
    :try_start_6
    iput p2, p0, mImeWindowVis:I

    .line 500
    iput p3, p0, mImeBackDisposition:I

    .line 501
    iput-object p1, p0, mImeToken:Landroid/os/IBinder;

    .line 502
    iput-boolean p4, p0, mShowImeSwitcher:Z

    .line 503
    iget-object v7, p0, mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService$5;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/os/IBinder;IIZ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    monitor-exit v6

    .line 514
    return-void

    .line 513
    :catchall_1f
    move-exception v0

    monitor-exit v6
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public setMultiWindowBg(Z)V
    .registers 5
    .param p1, "on"    # Z

    .prologue
    .line 959
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_35

    .line 961
    :try_start_4
    const-string v1, "StatusBarManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mw p:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",o:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_36

    const-string/jumbo v0, "t"

    :goto_25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setMultiWindowBg(Z)V

    .line 966
    :cond_35
    :goto_35
    return-void

    .line 961
    :cond_36
    const-string/jumbo v0, "f"
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_39} :catch_3a

    goto :goto_25

    .line 963
    :catch_3a
    move-exception v0

    goto :goto_35
.end method

.method public setPanelExpandState(Z)V
    .registers 2
    .param p1, "state"    # Z

    .prologue
    .line 971
    iput-boolean p1, p0, mPanelExpandState:Z

    .line 972
    return-void
.end method

.method public setQuickSettingPanelExpandState(Z)V
    .registers 2
    .param p1, "state"    # Z

    .prologue
    .line 999
    iput-boolean p1, p0, mQsPanelExpandState:Z

    .line 1000
    return-void
.end method

.method public setSystemUiVisibility(IILjava/lang/String;)V
    .registers 11
    .param p1, "vis"    # I
    .param p2, "mask"    # I
    .param p3, "cause"    # Ljava/lang/String;

    .prologue
    .line 519
    invoke-direct {p0}, enforceStatusBarService()V

    .line 523
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 524
    :try_start_6
    invoke-direct {p0, p1, p2}, updateUiVisibilityLocked(II)V

    .line 525
    iget v1, p0, mCurrentUserId:I

    const/high16 v0, 0x3ff0000

    and-int v2, p1, v0

    iget-object v3, p0, mSysUiVisToken:Landroid/os/IBinder;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 530
    monitor-exit v6

    .line 531
    return-void

    .line 530
    :catchall_19
    move-exception v0

    monitor-exit v6
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public setSystemUiVisibilityToDisplay(IILjava/lang/String;I)V
    .registers 12
    .param p1, "vis"    # I
    .param p2, "mask"    # I
    .param p3, "cause"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    .prologue
    .line 536
    invoke-direct {p0}, enforceStatusBarService()V

    .line 540
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 541
    :try_start_6
    invoke-direct {p0, p1, p2, p4}, updateUiVisibilityLockedToDisplay(III)V

    .line 542
    iget v1, p0, mCurrentUserId:I

    const/high16 v0, 0x3ff0000

    and-int v2, p1, v0

    iget-object v3, p0, mSysUiVisToken:Landroid/os/IBinder;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 547
    monitor-exit v6

    .line 548
    return-void

    .line 547
    :catchall_19
    move-exception v0

    monitor-exit v6
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public setWindowState(II)V
    .registers 4
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 662
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 664
    :try_start_4
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->setWindowState(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 667
    :cond_9
    :goto_9
    return-void

    .line 665
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public setWindowStateToDisplay(III)V
    .registers 5
    .param p1, "window"    # I
    .param p2, "state"    # I
    .param p3, "displayId"    # I

    .prologue
    .line 708
    iget-object v0, p0, mBars:[Lcom/android/internal/statusbar/IStatusBar;

    aget-object v0, v0, p3

    if-eqz v0, :cond_d

    .line 710
    :try_start_6
    iget-object v0, p0, mBars:[Lcom/android/internal/statusbar/IStatusBar;

    aget-object v0, v0, p3

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->setWindowState(II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 713
    :cond_d
    :goto_d
    return-void

    .line 711
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public showRecentApps(Z)V
    .registers 3
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 638
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 640
    :try_start_4
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showRecentApps(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 643
    :cond_9
    :goto_9
    return-void

    .line 641
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 700
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 702
    :try_start_4
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->startAssist(Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 705
    :cond_9
    :goto_9
    return-void

    .line 703
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public toggleNotificationPanel()V
    .registers 2

    .prologue
    .line 920
    invoke-direct {p0}, enforceExpandStatusBar()V

    .line 922
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_c

    .line 923
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTransientBars()V

    .line 925
    :cond_c
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_15

    .line 927
    :try_start_10
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleNotificationPanel()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16

    .line 931
    :cond_15
    :goto_15
    return-void

    .line 928
    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public toggleRecentApps()V
    .registers 2

    .prologue
    .line 600
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 602
    :try_start_4
    iget-object v0, p0, mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleRecentApps()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 605
    :cond_9
    :goto_9
    return-void

    .line 603
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public topAppWindowChanged(Z)V
    .registers 5
    .param p1, "menuVisible"    # Z

    .prologue
    .line 444
    invoke-direct {p0}, enforceStatusBar()V

    .line 448
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 449
    :try_start_6
    iput-boolean p1, p0, mMenuVisible:Z

    .line 450
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$3;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 460
    monitor-exit v1

    .line 461
    return-void

    .line 460
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public topAppWindowChangedToDisplay(ZI)V
    .registers 6
    .param p1, "menuVisible"    # Z
    .param p2, "displayId"    # I

    .prologue
    .line 466
    invoke-direct {p0}, enforceStatusBar()V

    .line 470
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_6
    iget-object v0, p0, mMenuVisibles:[Z

    aput-boolean p1, v0, p2

    .line 472
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/statusbar/StatusBarManagerService$4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;IZ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    monitor-exit v1

    .line 483
    return-void

    .line 482
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw v0
.end method
