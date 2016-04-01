.class public final Landroid/view/WindowManagerGlobal;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"


# static fields
.field public static final ADD_APP_EXITING:I = -0x4

.field public static final ADD_BAD_APP_TOKEN:I = -0x1

.field public static final ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final ADD_BLOCK_BY_MIRROR_LINK:I = -0x64

.field public static final ADD_DUPLICATE_ADD:I = -0x5

.field public static final ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final ADD_INVALID_DISPLAY:I = -0x9

.field public static final ADD_INVALID_TYPE:I = -0xa

.field public static final ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final ADD_NOT_APP_TOKEN:I = -0x3

.field public static final ADD_OKAY:I = 0x0

.field public static final ADD_PERMISSION_DENIED:I = -0x8

.field public static final ADD_STARTING_NOT_NEEDED:I = -0x6

.field public static final RELAYOUT_DEFER_SURFACE_DESTROY:I = 0x2

.field public static final RELAYOUT_INSETS_PENDING:I = 0x1

.field public static final RELAYOUT_RES_FIRST_TIME:I = 0x2

.field public static final RELAYOUT_RES_IN_TOUCH_MODE:I = 0x1

.field public static final RELAYOUT_RES_SURFACE_CHANGED:I = 0x4

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

.field private static sWindowManagerService:Landroid/view/IWindowManager;

.field private static sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field private final mDyingViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemPropertyUpdater:Ljava/lang/Runnable;

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 61
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, SAFE_DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mViews:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mRoots:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mParams:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mDyingViews:Landroid/util/ArraySet;

    .line 128
    return-void
.end method

.method static synthetic access$000(Landroid/view/WindowManagerGlobal;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/view/WindowManagerGlobal;

    .prologue
    .line 58
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/WindowManagerGlobal;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/view/WindowManagerGlobal;

    .prologue
    .line 58
    iget-object v0, p0, mRoots:Ljava/util/ArrayList;

    return-object v0
.end method

.method private doTrimForeground()V
    .registers 6

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "hasVisibleWindows":Z
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 501
    :try_start_4
    iget-object v3, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_31

    .line 502
    iget-object v3, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 503
    .local v2, "root":Landroid/view/ViewRootImpl;
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_2a

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v3

    if-nez v3, :cond_2a

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v3, :cond_2a

    .line 505
    const/4 v0, 0x1

    .line 501
    :goto_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 507
    :cond_2a
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    goto :goto_27

    .line 510
    .end local v1    # "i":I
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    :catchall_2e
    move-exception v3

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v3

    .restart local v1    # "i":I
    :cond_31
    :try_start_31
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2e

    .line 511
    if-nez v0, :cond_39

    .line 512
    const/16 v3, 0x50

    invoke-static {v3}, Landroid/view/HardwareRenderer;->trimMemory(I)V

    .line 515
    :cond_39
    return-void
.end method

.method private findViewLocked(Landroid/view/View;Z)I
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "required"    # Z

    .prologue
    .line 449
    iget-object v1, p0, mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 450
    .local v0, "index":I
    if-eqz p2, :cond_29

    if-gez v0, :cond_29

    .line 451
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not attached to window manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :cond_29
    return v0
.end method

.method public static getInstance()Landroid/view/WindowManagerGlobal;
    .registers 2

    .prologue
    .line 135
    const-class v1, Landroid/view/WindowManagerGlobal;

    monitor-enter v1

    .line 136
    :try_start_3
    sget-object v0, sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    if-nez v0, :cond_e

    .line 137
    new-instance v0, Landroid/view/WindowManagerGlobal;

    invoke-direct {v0}, <init>()V

    sput-object v0, sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    .line 139
    :cond_e
    sget-object v0, sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    monitor-exit v1

    return-object v0

    .line 140
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public static getWindowManagerService()Landroid/view/IWindowManager;
    .registers 4

    .prologue
    .line 144
    const-class v2, Landroid/view/WindowManagerGlobal;

    monitor-enter v2

    .line 145
    :try_start_3
    sget-object v1, sWindowManagerService:Landroid/view/IWindowManager;

    if-nez v1, :cond_23

    .line 146
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, sWindowManagerService:Landroid/view/IWindowManager;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_30

    .line 149
    :try_start_14
    invoke-static {}, getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, sWindowManagerService:Landroid/view/IWindowManager;

    .line 150
    sget-object v1, sWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getCurrentAnimatorScale()F

    move-result v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_27
    .catchall {:try_start_14 .. :try_end_23} :catchall_30

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    :try_start_23
    sget-object v1, sWindowManagerService:Landroid/view/IWindowManager;

    monitor-exit v2

    return-object v1

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_27
    move-exception v0

    .line 152
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v3, "Failed to get WindowManagerService, cannot set animator scale"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 156
    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private static getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .registers 3
    .param p0, "root"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWindowSession()Landroid/view/IWindowSession;
    .registers 7

    .prologue
    .line 160
    const-class v4, Landroid/view/WindowManagerGlobal;

    monitor-enter v4

    .line 161
    :try_start_3
    sget-object v3, sWindowSession:Landroid/view/IWindowSession;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2f

    if-nez v3, :cond_22

    .line 163
    :try_start_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 164
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 165
    .local v2, "windowManager":Landroid/view/IWindowManager;
    new-instance v3, Landroid/view/WindowManagerGlobal$1;

    invoke-direct {v3}, Landroid/view/WindowManagerGlobal$1;-><init>()V

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getClient()Lcom/android/internal/view/IInputMethodClient;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v6

    invoke-interface {v2, v3, v5, v6}, Landroid/view/IWindowManager;->openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v3

    sput-object v3, sWindowSession:Landroid/view/IWindowSession;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_22} :catch_26
    .catchall {:try_start_7 .. :try_end_22} :catchall_2f

    .line 177
    .end local v2    # "windowManager":Landroid/view/IWindowManager;
    :cond_22
    :goto_22
    :try_start_22
    sget-object v3, sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v4

    return-object v3

    .line 173
    :catch_26
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "Failed to open window session"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 178
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2f
    move-exception v3

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_2f

    throw v3
.end method

.method public static initialize()V
    .registers 0

    .prologue
    .line 131
    invoke-static {}, getWindowManagerService()Landroid/view/IWindowManager;

    .line 132
    return-void
.end method

.method public static peekWindowSession()Landroid/view/IWindowSession;
    .registers 2

    .prologue
    .line 182
    const-class v1, Landroid/view/WindowManagerGlobal;

    monitor-enter v1

    .line 183
    :try_start_3
    sget-object v0, sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v1

    return-object v0

    .line 184
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private removeViewLocked(IZ)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 415
    iget-object v4, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 416
    .local v2, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    .line 418
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_23

    .line 419
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 420
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_23

    .line 421
    iget-object v4, p0, mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    .line 424
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_23
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->die(Z)Z

    move-result v0

    .line 425
    .local v0, "deferred":Z
    if-eqz v3, :cond_34

    .line 426
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 427
    if-eqz v0, :cond_34

    .line 428
    iget-object v4, p0, mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_34
    return-void
.end method

.method public static shouldDestroyEglContext(I)Z
    .registers 3
    .param p0, "trimLevel"    # I

    .prologue
    const/4 v0, 0x1

    .line 459
    const/16 v1, 0x50

    if-lt p0, v1, :cond_6

    .line 466
    :cond_5
    :goto_5
    return v0

    .line 462
    :cond_6
    const/16 v1, 0x3c

    if-lt p0, v1, :cond_10

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 466
    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static trimForeground()V
    .registers 2

    .prologue
    .line 492
    sget-boolean v1, Landroid/view/HardwareRenderer;->sTrimForeground:Z

    if-eqz v1, :cond_11

    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 493
    invoke-static {}, getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    .line 494
    .local v0, "wm":Landroid/view/WindowManagerGlobal;
    invoke-direct {v0}, doTrimForeground()V

    .line 496
    :cond_11
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V
    .registers 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "parentWindow"    # Landroid/view/Window;

    .prologue
    .line 244
    if-nez p1, :cond_b

    .line 245
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "view must not be null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 247
    :cond_b
    if-nez p3, :cond_15

    .line 248
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "display must not be null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 250
    :cond_15
    move-object/from16 v0, p2

    instance-of v10, v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v10, :cond_23

    .line 251
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Params must be WindowManager.LayoutParams"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_23
    move-object/from16 v9, p2

    .line 254
    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    .line 255
    .local v9, "wparams":Landroid/view/WindowManager$LayoutParams;
    if-eqz p4, :cond_91

    .line 256
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/Window;->adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V

    .line 269
    :cond_2e
    :goto_2e
    const/4 v7, 0x0

    .line 271
    .local v7, "panelParentView":Landroid/view/View;
    iget-object v11, p0, mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 273
    :try_start_32
    iget-object v10, p0, mSystemPropertyUpdater:Ljava/lang/Runnable;

    if-nez v10, :cond_42

    .line 274
    new-instance v10, Landroid/view/WindowManagerGlobal$2;

    invoke-direct {v10, p0}, Landroid/view/WindowManagerGlobal$2;-><init>(Landroid/view/WindowManagerGlobal;)V

    iput-object v10, p0, mSystemPropertyUpdater:Ljava/lang/Runnable;

    .line 283
    iget-object v10, p0, mSystemPropertyUpdater:Ljava/lang/Runnable;

    invoke-static {v10}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 286
    :cond_42
    const/4 v10, 0x0

    invoke-direct {p0, p1, v10}, findViewLocked(Landroid/view/View;Z)I

    move-result v5

    .line 287
    .local v5, "index":I
    if-ltz v5, :cond_5c

    .line 288
    iget-object v10, p0, mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v10, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_aa

    .line 290
    iget-object v10, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewRootImpl;

    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->doDie()V

    .line 300
    :cond_5c
    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x3e8

    if-lt v10, v12, :cond_109

    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7cf

    if-gt v10, v12, :cond_109

    .line 302
    const/4 v6, -0x1

    .line 303
    .local v6, "miniDialogParentIndex":I
    iget-object v10, p0, mViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 304
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_70
    if-ge v4, v2, :cond_ea

    .line 305
    iget-object v10, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v10}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    iget-object v12, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v10, v12, :cond_cc

    .line 306
    iget-object v10, p0, mViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/view/View;

    move-object v7, v0
    :try_end_8e
    .catchall {:try_start_32 .. :try_end_8e} :catchall_c9

    .line 304
    :cond_8e
    :goto_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_70

    .line 260
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v6    # "miniDialogParentIndex":I
    .end local v7    # "panelParentView":Landroid/view/View;
    :cond_91
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 261
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x20000000

    and-int/2addr v10, v11

    if-eqz v10, :cond_2e

    .line 264
    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, 0x1000000

    or-int/2addr v10, v11

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2e

    .line 292
    .end local v1    # "context":Landroid/content/Context;
    .restart local v5    # "index":I
    .restart local v7    # "panelParentView":Landroid/view/View;
    :cond_aa
    :try_start_aa
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "View "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " has already been added to the window manager."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 333
    .end local v5    # "index":I
    :catchall_c9
    move-exception v10

    monitor-exit v11
    :try_end_cb
    .catchall {:try_start_aa .. :try_end_cb} :catchall_c9

    throw v10

    .line 309
    .restart local v2    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "index":I
    .restart local v6    # "miniDialogParentIndex":I
    :cond_cc
    :try_start_cc
    iget-object v10, p0, mParams:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x835

    if-eq v10, v12, :cond_e8

    iget-object v10, p0, mParams:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x837

    if-ne v10, v12, :cond_8e

    .line 312
    :cond_e8
    move v6, v4

    goto :goto_8e

    .line 318
    :cond_ea
    if-nez v7, :cond_109

    const/4 v10, -0x1

    if-eq v6, v10, :cond_109

    .line 319
    iget-object v10, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v10}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    iput-object v10, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 320
    iget-object v10, p0, mViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/view/View;

    move-object v7, v0

    .line 326
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v6    # "miniDialogParentIndex":I
    :cond_109
    new-instance v8, Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-direct {v8, v10, v0}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 328
    .local v8, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {p1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v10, p0, mViews:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v10, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v10, p0, mParams:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    monitor-exit v11
    :try_end_127
    .catchall {:try_start_cc .. :try_end_127} :catchall_c9

    .line 337
    :try_start_127
    invoke-virtual {v8, p1, v9, v7}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    :try_end_12a
    .catch Ljava/lang/RuntimeException; {:try_start_127 .. :try_end_12a} :catch_12b

    .line 348
    return-void

    .line 338
    :catch_12b
    move-exception v3

    .line 340
    .local v3, "e":Ljava/lang/RuntimeException;
    iget-object v11, p0, mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 341
    const/4 v10, 0x0

    :try_start_130
    invoke-direct {p0, p1, v10}, findViewLocked(Landroid/view/View;Z)I

    move-result v5

    .line 342
    if-ltz v5, :cond_13a

    .line 343
    const/4 v10, 0x1

    invoke-direct {p0, v5, v10}, removeViewLocked(IZ)V

    .line 345
    :cond_13a
    monitor-exit v11
    :try_end_13b
    .catchall {:try_start_130 .. :try_end_13b} :catchall_13c

    .line 346
    throw v3

    .line 345
    :catchall_13c
    move-exception v10

    :try_start_13d
    monitor-exit v11
    :try_end_13e
    .catchall {:try_start_13d .. :try_end_13e} :catchall_13c

    throw v10
.end method

.method public changeCanvasOpacity(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opaque"    # Z

    .prologue
    .line 596
    if-nez p1, :cond_3

    .line 607
    :goto_2
    return-void

    .line 599
    :cond_3
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 600
    :try_start_6
    iget-object v1, p0, mParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_2f

    .line 601
    iget-object v1, p0, mParams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_2c

    .line 602
    iget-object v1, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    invoke-virtual {v1, p2}, Landroid/view/ViewRootImpl;->changeCanvasOpacity(Z)V

    .line 603
    monitor-exit v2

    goto :goto_2

    .line 606
    .end local v0    # "i":I
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v1

    .line 600
    .restart local v0    # "i":I
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 606
    :cond_2f
    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_29

    goto :goto_2
.end method

.method public closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 391
    :try_start_3
    iget-object v4, p0, mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 393
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_6d

    .line 396
    if-eqz p1, :cond_1a

    iget-object v4, p0, mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_6a

    .line 397
    :cond_1a
    iget-object v4, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 400
    .local v3, "root":Landroid/view/ViewRootImpl;
    if-eqz p2, :cond_66

    .line 401
    new-instance v2, Landroid/view/WindowLeaked;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " has leaked window "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " that was originally added here"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    .line 404
    .local v2, "leak":Landroid/view/WindowLeaked;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getLocation()Landroid/view/WindowLeaked;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 405
    const-string v4, "WindowManager"

    const-string v6, ""

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    .end local v2    # "leak":Landroid/view/WindowLeaked;
    :cond_66
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, removeViewLocked(IZ)V

    .line 393
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 411
    :cond_6d
    monitor-exit v5

    .line 412
    return-void

    .line 411
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_6f
    move-exception v4

    monitor-exit v5
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw v4
.end method

.method doRemoveView(Landroid/view/ViewRootImpl;)V
    .registers 6
    .param p1, "root"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 434
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 435
    :try_start_3
    iget-object v2, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 436
    .local v0, "index":I
    if-ltz v0, :cond_22

    .line 437
    iget-object v2, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 438
    iget-object v2, p0, mParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 439
    iget-object v2, p0, mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 440
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 442
    .end local v1    # "view":Landroid/view/View;
    :cond_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_31

    .line 443
    sget-boolean v2, Landroid/view/HardwareRenderer;->sTrimForeground:Z

    if-eqz v2, :cond_30

    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 444
    invoke-direct {p0}, doTrimForeground()V

    .line 446
    :cond_30
    return-void

    .line 442
    .end local v0    # "index":I
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 518
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 519
    .local v4, "fout":Ljava/io/FileOutputStream;
    new-instance v8, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v8, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 521
    .local v8, "pw":Ljava/io/PrintWriter;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v13, v0, mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_f0

    .line 522
    :try_start_11
    move-object/from16 v0, p0

    iget-object v12, v0, mViews:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 524
    .local v2, "count":I
    const-string v12, "Profile data in ms:"

    invoke-virtual {v8, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    if-ge v5, v2, :cond_59

    .line 527
    move-object/from16 v0, p0

    iget-object v12, v0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewRootImpl;

    .line 528
    .local v10, "root":Landroid/view/ViewRootImpl;
    invoke-static {v10}, getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v7

    .line 529
    .local v7, "name":Ljava/lang/String;
    const-string v12, "\n\t%s (visibility=%d)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 531
    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v12

    iget-object v12, v12, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v12, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 533
    .local v9, "renderer":Landroid/view/HardwareRenderer;
    if-eqz v9, :cond_56

    .line 534
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v9, v8, v0, v1}, Landroid/view/HardwareRenderer;->dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 526
    :cond_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 538
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "renderer":Landroid/view/HardwareRenderer;
    .end local v10    # "root":Landroid/view/ViewRootImpl;
    :cond_59
    const-string v12, "\nView hierarchy:\n"

    invoke-virtual {v8, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    const/4 v11, 0x0

    .line 541
    .local v11, "viewsCount":I
    const/4 v3, 0x0

    .line 542
    .local v3, "displayListsSize":I
    const/4 v12, 0x2

    new-array v6, v12, [I

    .line 544
    .local v6, "info":[I
    const/4 v5, 0x0

    :goto_64
    if-ge v5, v2, :cond_b4

    .line 545
    move-object/from16 v0, p0

    iget-object v12, v0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewRootImpl;

    .line 546
    .restart local v10    # "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v10, v6}, Landroid/view/ViewRootImpl;->dumpGfxInfo([I)V

    .line 548
    invoke-static {v10}, getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v7

    .line 549
    .restart local v7    # "name":Ljava/lang/String;
    const-string v12, "  %s\n  %d views, %.2f kB of display lists"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    aget v16, v6, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x1

    aget v16, v6, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x44800000    # 1024.0f

    div-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 551
    const-string v12, "\n\n"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 553
    const/4 v12, 0x0

    aget v12, v6, v12

    add-int/2addr v11, v12

    .line 554
    const/4 v12, 0x1

    aget v12, v6, v12

    add-int/2addr v3, v12

    .line 544
    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 557
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "root":Landroid/view/ViewRootImpl;
    :cond_b4
    const-string v12, "\nTotal ViewRootImpl: %d\n"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 558
    const-string v12, "Total Views:        %d\n"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 559
    const-string v12, "Total DisplayList:  %.2f kB\n\n"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    int-to-float v0, v3

    move/from16 v16, v0

    const/high16 v17, 0x44800000    # 1024.0f

    div-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v8, v12, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 560
    monitor-exit v13
    :try_end_e9
    .catchall {:try_start_11 .. :try_end_e9} :catchall_ed

    .line 562
    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    .line 564
    return-void

    .line 560
    .end local v2    # "count":I
    .end local v3    # "displayListsSize":I
    .end local v5    # "i":I
    .end local v6    # "info":[I
    .end local v11    # "viewsCount":I
    :catchall_ed
    move-exception v12

    :try_start_ee
    monitor-exit v13
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    :try_start_ef
    throw v12
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_f0

    .line 562
    :catchall_f0
    move-exception v12

    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    throw v12
.end method

.method public getRootView(Ljava/lang/String;)Landroid/view/View;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 233
    :try_start_3
    iget-object v2, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_28

    .line 234
    iget-object v2, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    .line 235
    .local v1, "root":Landroid/view/ViewRootImpl;
    invoke-static {v1}, getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    monitor-exit v3

    .line 239
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :goto_24
    return-object v2

    .line 233
    .restart local v1    # "root":Landroid/view/ViewRootImpl;
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 237
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :cond_28
    monitor-exit v3

    .line 239
    const/4 v2, 0x0

    goto :goto_24

    .line 237
    .end local v0    # "i":I
    :catchall_2b
    move-exception v2

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v7, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    iget-object v9, p0, mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 201
    :try_start_8
    iget-object v8, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 202
    .local v3, "numRoots":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v3, :cond_63

    .line 203
    iget-object v8, p0, mParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 204
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v8, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v8, :cond_20

    .line 202
    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 207
    :cond_20
    iget-object v8, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eq v8, p1, :cond_53

    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, "isChild":Z
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x3e8

    if-lt v8, v10, :cond_51

    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7cf

    if-gt v8, v10, :cond_51

    .line 211
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_32
    if-ge v2, v3, :cond_51

    .line 212
    iget-object v8, p0, mViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 213
    .local v6, "viewj":Landroid/view/View;
    iget-object v8, p0, mParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 214
    .local v5, "paramsj":Landroid/view/WindowManager$LayoutParams;
    iget-object v8, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-ne v8, v10, :cond_60

    iget-object v8, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v8, p1, :cond_60

    .line 216
    const/4 v1, 0x1

    .line 221
    .end local v2    # "j":I
    .end local v5    # "paramsj":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "viewj":Landroid/view/View;
    :cond_51
    if-eqz v1, :cond_1d

    .line 225
    .end local v1    # "isChild":Z
    :cond_53
    iget-object v8, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 227
    .end local v0    # "i":I
    .end local v3    # "numRoots":I
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    :catchall_5d
    move-exception v8

    monitor-exit v9
    :try_end_5f
    .catchall {:try_start_8 .. :try_end_5f} :catchall_5d

    throw v8

    .line 211
    .restart local v0    # "i":I
    .restart local v1    # "isChild":Z
    .restart local v2    # "j":I
    .restart local v3    # "numRoots":I
    .restart local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "paramsj":Landroid/view/WindowManager$LayoutParams;
    .restart local v6    # "viewj":Landroid/view/View;
    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 227
    .end local v1    # "isChild":Z
    .end local v2    # "j":I
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "paramsj":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "viewj":Landroid/view/View;
    :cond_63
    :try_start_63
    monitor-exit v9
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_5d

    .line 228
    return-object v7
.end method

.method public getViewRootNames()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 188
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 189
    :try_start_3
    iget-object v3, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 190
    .local v2, "numRoots":I
    new-array v1, v2, [Ljava/lang/String;

    .line 191
    .local v1, "mViewRoots":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v2, :cond_1f

    .line 192
    iget-object v3, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    invoke-static {v3}, getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 194
    :cond_1f
    monitor-exit v4

    return-object v1

    .line 195
    .end local v0    # "i":I
    .end local v1    # "mViewRoots":[Ljava/lang/String;
    .end local v2    # "numRoots":I
    :catchall_21
    move-exception v3

    monitor-exit v4
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v3
.end method

.method public removeView(Landroid/view/View;Z)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "immediate"    # Z

    .prologue
    .line 372
    if-nez p1, :cond_b

    .line 373
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "view must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 376
    :cond_b
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 377
    const/4 v2, 0x1

    :try_start_f
    invoke-direct {p0, p1, v2}, findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 378
    .local v1, "index":I
    iget-object v2, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 379
    .local v0, "curView":Landroid/view/View;
    invoke-direct {p0, v1, p2}, removeViewLocked(IZ)V

    .line 380
    if-ne v0, p1, :cond_26

    .line 381
    monitor-exit v3

    return-void

    .line 384
    :cond_26
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling with view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but the ViewAncestor is attached to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 386
    .end local v0    # "curView":Landroid/view/View;
    .end local v1    # "index":I
    :catchall_49
    move-exception v2

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_49

    throw v2
.end method

.method public reportNewConfiguration(Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 584
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 585
    :try_start_3
    iget-object v4, p0, mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 586
    .local v1, "count":I
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_21

    .line 587
    .end local p1    # "config":Landroid/content/res/Configuration;
    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_1f

    .line 588
    :try_start_11
    iget-object v4, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 589
    .local v3, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->requestUpdateConfiguration(Landroid/content/res/Configuration;)V

    .line 587
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 591
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :cond_1f
    monitor-exit v5
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_24

    .line 592
    return-void

    .line 591
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .restart local p1    # "config":Landroid/content/res/Configuration;
    :catchall_21
    move-exception v4

    :goto_22
    :try_start_22
    monitor-exit v5
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v4

    .end local p1    # "config":Landroid/content/res/Configuration;
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :catchall_24
    move-exception v4

    move-object p1, v0

    .end local v0    # "config":Landroid/content/res/Configuration;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    goto :goto_22
.end method

.method public setMultiWindowScale(FF)V
    .registers 7
    .param p1, "hScale"    # F
    .param p2, "vScale"    # F

    .prologue
    .line 612
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 613
    :try_start_3
    iget-object v2, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1b

    .line 614
    iget-object v2, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    .line 615
    .local v1, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewRootImpl;->setMultiWindowScale(FF)V

    .line 613
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 617
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :cond_1b
    monitor-exit v3

    .line 618
    return-void

    .line 617
    .end local v0    # "i":I
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method public setResources(Landroid/os/IBinder;Landroid/content/res/Resources;)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "newResources"    # Landroid/content/res/Resources;

    .prologue
    .line 627
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v3, :cond_c

    .line 628
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 629
    if-eqz p1, :cond_b

    if-nez p2, :cond_d

    .line 630
    :cond_b
    :try_start_b
    monitor-exit v4

    .line 644
    :cond_c
    :goto_c
    return-void

    .line 632
    :cond_d
    invoke-virtual {p0, p1}, getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v2

    .line 633
    .local v2, "rootViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    .line 634
    .local v1, "rootView":Landroid/view/ViewRootImpl;
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 635
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/Context;->setResources(Landroid/content/res/Resources;)V

    .line 636
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_15

    .line 637
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setResources, v="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", param="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 642
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "rootView":Landroid/view/ViewRootImpl;
    .end local v2    # "rootViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    :catchall_76
    move-exception v3

    monitor-exit v4
    :try_end_78
    .catchall {:try_start_b .. :try_end_78} :catchall_76

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "rootViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    :cond_79
    :try_start_79
    monitor-exit v4
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_76

    goto :goto_c
.end method

.method public setStoppedState(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "stopped"    # Z

    .prologue
    .line 572
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 573
    :try_start_3
    iget-object v3, p0, mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 574
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_28

    .line 575
    if-eqz p1, :cond_1a

    iget-object v3, p0, mParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_25

    .line 576
    :cond_1a
    iget-object v3, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 577
    .local v2, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->setWindowStopped(Z)V

    .line 574
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 580
    :cond_28
    monitor-exit v4

    .line 581
    return-void

    .line 580
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_2a
    move-exception v3

    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v3
.end method

.method public trimMemory(I)V
    .registers 5
    .param p1, "level"    # I

    .prologue
    .line 470
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 471
    invoke-static {p1}, shouldDestroyEglContext(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 474
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 475
    :try_start_f
    iget-object v1, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_17
    if-ltz v0, :cond_27

    .line 476
    iget-object v1, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 475
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 478
    :cond_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_35

    .line 480
    const/16 p1, 0x50

    .line 483
    .end local v0    # "i":I
    :cond_2a
    invoke-static {p1}, Landroid/view/HardwareRenderer;->trimMemory(I)V

    .line 485
    sget-boolean v1, Landroid/view/HardwareRenderer;->sTrimForeground:Z

    if-eqz v1, :cond_34

    .line 486
    invoke-direct {p0}, doTrimForeground()V

    .line 489
    :cond_34
    return-void

    .line 478
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 351
    if-nez p1, :cond_b

    .line 352
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "view must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 354
    :cond_b
    instance-of v3, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v3, :cond_17

    .line 355
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Params must be WindowManager.LayoutParams"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_17
    move-object v2, p2

    .line 358
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 360
    .local v2, "wparams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 363
    const/4 v3, 0x1

    :try_start_21
    invoke-direct {p0, p1, v3}, findViewLocked(Landroid/view/View;Z)I

    move-result v0

    .line 364
    .local v0, "index":I
    iget-object v3, p0, mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    .line 365
    .local v1, "root":Landroid/view/ViewRootImpl;
    iget-object v3, p0, mParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 366
    iget-object v3, p0, mParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 367
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 368
    monitor-exit v4

    .line 369
    return-void

    .line 368
    .end local v0    # "index":I
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :catchall_3d
    move-exception v3

    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_21 .. :try_end_3f} :catchall_3d

    throw v3
.end method
