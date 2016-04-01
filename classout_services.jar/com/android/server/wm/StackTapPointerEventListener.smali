.class public Lcom/android/server/wm/StackTapPointerEventListener;
.super Ljava/lang/Object;
.source "StackTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/StackTapPointerEventListener$1;,
        Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;
    }
.end annotation


# static fields
.field private static final TAG_DUALSCREEN:Ljava/lang/String;

.field private static final TAP_MOTION_SLOP_INCHES:F = 0.125f

.field private static final TAP_TIMEOUT_MSEC:I = 0x12c


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDownX:F

.field private mDownY:F

.field private mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mMotionSlop:I

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mPointerId:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DUALSCREEN] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG_DUALSCREEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, mTouchExcludeRegion:Landroid/graphics/Region;

    .line 73
    iput-object v2, p0, mGestureDetector:Landroid/view/GestureDetector;

    .line 74
    iput-object v2, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 80
    iput-object p1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    .line 81
    iput-object p2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 82
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 83
    .local v0, "info":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x3e000000    # 0.125f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, mMotionSlop:I

    .line 86
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "multiwindow_facade"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v1, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 89
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/StackTapPointerEventListener;FFZ)Lcom/android/server/wm/WindowState;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/wm/StackTapPointerEventListener;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/StackTapPointerEventListener;

    .prologue
    .line 55
    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/StackTapPointerEventListener;

    .prologue
    .line 55
    iget-object v0, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/StackTapPointerEventListener;

    .prologue
    .line 55
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/StackTapPointerEventListener;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/StackTapPointerEventListener;

    .prologue
    .line 55
    iget v0, p0, mDownX:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/StackTapPointerEventListener;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/StackTapPointerEventListener;

    .prologue
    .line 55
    iget v0, p0, mDownY:F

    return v0
.end method

.method private findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    .registers 17
    .param p1, "xf"    # F
    .param p2, "yf"    # F
    .param p3, "exceptInternnalWindow"    # Z

    .prologue
    .line 263
    const/4 v4, 0x0

    .line 264
    .local v4, "touchedWin":Lcom/android/server/wm/WindowState;
    float-to-int v7, p1

    .line 265
    .local v7, "x":I
    float-to-int v8, p2

    .line 266
    .local v8, "y":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 267
    .local v2, "tmpRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 269
    .local v3, "touchableRegion":Landroid/graphics/Region;
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 270
    :try_start_12
    iget-object v9, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v6

    .line 272
    .local v6, "windows":Lcom/android/server/wm/WindowList;
    sget-boolean v9, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG_WM:Z

    if-eqz v9, :cond_58

    .line 273
    const/4 v9, 0x1

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "otherAppTouched"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_58

    .line 274
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, TAG_DUALSCREEN:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " findTargetWindow() : mDisplayContent="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " windows.size()="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_58
    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_5e
    if-ltz v1, :cond_ee

    .line 281
    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 283
    .local v5, "win":Lcom/android/server/wm/WindowState;
    sget-boolean v9, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG_WM:Z

    if-eqz v9, :cond_a2

    .line 284
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, TAG_DUALSCREEN:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " window #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_a2
    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 289
    .local v0, "flags":I
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v9

    if-nez v9, :cond_af

    .line 280
    :cond_ac
    add-int/lit8 v1, v1, -0x1

    goto :goto_5e

    .line 293
    :cond_af
    and-int/lit8 v9, v0, 0x10

    if-nez v9, :cond_ac

    .line 299
    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x8ca

    if-eq v9, v11, :cond_ac

    .line 305
    if-eqz p3, :cond_c6

    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v11, -0x80000000

    and-int/2addr v9, v11

    if-nez v9, :cond_ac

    .line 313
    :cond_c6
    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 314
    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 315
    invoke-virtual {v2, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_ac

    .line 316
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    const/high16 v11, 0x800000

    invoke-virtual {v9, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_f0

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v9

    iget v9, v9, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget-object v11, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v11, v11, Lcom/android/server/wm/WindowManagerService;->mTabFrontStack:I

    if-eq v9, v11, :cond_f0

    .line 326
    .end local v0    # "flags":I
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    :cond_ee
    :goto_ee
    monitor-exit v10

    .line 327
    return-object v4

    .line 322
    .restart local v0    # "flags":I
    .restart local v5    # "win":Lcom/android/server/wm/WindowState;
    :cond_f0
    move-object v4, v5

    .line 323
    goto :goto_ee

    .line 326
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    .end local v6    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_f2
    move-exception v9

    monitor-exit v10
    :try_end_f4
    .catchall {:try_start_12 .. :try_end_f4} :catchall_f2

    throw v9
.end method

.method private needCloseMultiWindowPanel(FF)Z
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 213
    invoke-direct {p0, p1, p2, v3}, findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 214
    .local v2, "targetWin":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v5, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v1

    .line 216
    .local v1, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v2, :cond_49

    if-nez v1, :cond_49

    .line 217
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_49

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 218
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 221
    .local v0, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v4

    if-eqz v4, :cond_49

    const/high16 v4, 0x4000000

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_49

    .line 222
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4a

    iget-object v4, p0, mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    if-eqz v4, :cond_4a

    iget-object v4, p0, mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->isEdge()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 231
    .end local v0    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_49
    :goto_49
    return v3

    .line 226
    .restart local v0    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_4a
    iget-object v3, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->closeMultiWindowPanel()Z

    move-result v3

    goto :goto_49
.end method

.method private otherAppTouched(FFZ)Z
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "exceptInternnalWindow"    # Z

    .prologue
    .line 235
    invoke-direct {p0, p1, p2, p3}, findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 236
    .local v0, "targetWin":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_22

    .line 254
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_22

    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v1, v2, :cond_22

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    if-nez v1, :cond_22

    .line 256
    const/4 v1, 0x1

    .line 259
    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method


# virtual methods
.method public init()V
    .registers 5

    .prologue
    .line 93
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;-><init>(Lcom/android/server/wm/StackTapPointerEventListener;Lcom/android/server/wm/StackTapPointerEventListener$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, mGestureDetector:Landroid/view/GestureDetector;

    .line 94
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 95
    new-instance v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    .line 97
    :cond_26
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x1f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 114
    .local v0, "action":I
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mReduceScreenRunning:Z

    if-eqz v3, :cond_18

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v3

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_18

    .line 155
    :cond_17
    :goto_17
    return-void

    .line 122
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_17

    .line 128
    and-int/lit16 v3, v0, 0xff

    if-nez v3, :cond_45

    .line 129
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, mPointerId:I

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, mDownX:F

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, mDownY:F

    .line 134
    :cond_45
    iget-object v3, p0, mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    if-eqz v3, :cond_8e

    iget-object v3, p0, mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_17

    iget-object v3, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mMultiWindowGestureDetector:Lcom/android/server/wm/MultiWindowPointerEventListener;

    invoke-virtual {v3}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isValidMotion()Z

    move-result v3

    if-nez v3, :cond_17

    .line 137
    iget v3, p0, mDownX:F

    iget v4, p0, mDownY:F

    invoke-direct {p0, v3, v4}, needCloseMultiWindowPanel(FF)Z

    .line 138
    iget v3, p0, mDownX:F

    iget v4, p0, mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v5

    if-eqz v5, :cond_8c

    :goto_72
    invoke-direct {p0, v3, v4, v1}, otherAppTouched(FFZ)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 139
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget v2, p0, mDownX:F

    float-to-int v2, v2

    iget v3, p0, mDownY:F

    float-to-int v3, v3

    iget-object v4, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v6, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_17

    :cond_8c
    move v1, v2

    .line 138
    goto :goto_72

    .line 145
    :cond_8e
    iget-object v3, p0, mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 149
    and-int/lit16 v3, v0, 0xff

    if-nez v3, :cond_17

    .line 150
    iget v3, p0, mDownX:F

    iget v4, p0, mDownY:F

    invoke-direct {p0, v3, v4}, needCloseMultiWindowPanel(FF)Z

    .line 151
    iget v3, p0, mDownX:F

    iget v4, p0, mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v5

    if-eqz v5, :cond_c6

    :goto_ab
    invoke-direct {p0, v3, v4, v1}, otherAppTouched(FFZ)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 152
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget v2, p0, mDownX:F

    float-to-int v2, v2

    iget v3, p0, mDownY:F

    float-to-int v3, v3

    iget-object v4, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v6, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_17

    :cond_c6
    move v1, v2

    .line 151
    goto :goto_ab
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "newRegion"    # Landroid/graphics/Region;

    .prologue
    .line 206
    monitor-enter p0

    .line 207
    :try_start_1
    iget-object v0, p0, mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 208
    monitor-exit p0

    .line 209
    return-void

    .line 208
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
