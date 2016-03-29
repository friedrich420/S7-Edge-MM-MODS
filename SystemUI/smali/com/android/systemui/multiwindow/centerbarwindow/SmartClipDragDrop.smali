.class public Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;
.super Landroid/app/SallyService;
.source "SmartClipDragDrop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;,
        Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$ShadowBuilder;
    }
.end annotation


# static fields
.field private static DRAG_SHADOW_BORDER_LINE_THICK:I

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I


# instance fields
.field mAm:Landroid/app/IActivityManager;

.field private mAppContext:Landroid/content/Context;

.field mAppListExpandReceiver:Landroid/content/BroadcastReceiver;

.field private mCenterBarSize:I

.field final mForegroundToken:Landroid/os/IBinder;

.field private final mHandler:Landroid/os/Handler;

.field private mHasCocktailBar:Z

.field private mIsDragging:Z

.field mLastTouchX:I

.field mLastTouchY:I

.field private mMainFrame:Landroid/widget/FrameLayout;

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field mMultiWindowStatusReceiver:Landroid/content/BroadcastReceiver;

.field mRecentsReceiver:Landroid/content/BroadcastReceiver;

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mServiceHandler:Landroid/os/Handler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mServiceRunning:Z

.field private mSmartClipNewFileName:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;

.field private mThread:Landroid/os/HandlerThread;

.field mUsageStats:Landroid/app/usage/IUsageStatsManager;

.field private mUsageStatsWatcher:Landroid/app/usage/IUsageStatsWatcher$Stub;

.field private mVibrator:Landroid/os/SystemVibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x14

    sput v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    .line 93
    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->DRAG_SHADOW_BORDER_LINE_THICK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/SallyService;-><init>()V

    .line 95
    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mMainFrame:Landroid/widget/FrameLayout;

    .line 96
    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;

    .line 97
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceRunning:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mIsDragging:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mHasCocktailBar:Z

    .line 101
    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 102
    iput v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mCenterBarSize:I

    .line 104
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mForegroundToken:Landroid/os/IBinder;

    .line 105
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAm:Landroid/app/IActivityManager;

    .line 107
    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mSmartClipNewFileName:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;

    .line 156
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$1;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppListExpandReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$2;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mMultiWindowStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$3;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mRecentsReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$4;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$5;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mUsageStatsWatcher:Landroid/app/usage/IUsageStatsWatcher$Stub;

    .line 245
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SmartClipDragDropThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mThread:Landroid/os/HandlerThread;

    .line 246
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mHandler:Landroid/os/Handler;

    .line 352
    iput v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mLastTouchX:I

    .line 353
    iput v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mLastTouchY:I

    .line 909
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->DRAG_SHADOW_BORDER_LINE_THICK:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->notifyStartDragMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;
    .param p1, "x1"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getTextSelectionMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/graphics/Rect;
    .param p4, "x4"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->startTextDrag(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/graphics/Rect;
    .param p3, "x3"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->startImageDrag(Landroid/view/View;Landroid/graphics/Rect;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->stopSmartClipDragDropThread()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->cropScreen(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->saveImageFile(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceRunning:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->minimize()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mIsDragging:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getSmartClipData(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;
    .param p1, "x1"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getTextMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;
    .param p1, "x1"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getUrlMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private adjustCropRectForReduceScreen(Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 596
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "any_screen_running"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    .line 597
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "any_screen_running_scale"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    .line 598
    .local v3, "scale":F
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "any_screen_running_offset_x"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 599
    .local v1, "offsetX":I
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "any_screen_running_offset_y"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 600
    .local v2, "offsetY":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 601
    .local v4, "w":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 603
    .local v0, "h":I
    cmpl-float v5, v3, v8

    if-lez v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_0

    .line 604
    int-to-float v5, v1

    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 605
    int-to-float v5, v2

    iget v6, p1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 606
    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    int-to-float v6, v4

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 607
    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    int-to-float v6, v0

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 609
    :cond_0
    const-string v5, "SmartClipDragDrop"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "any_screen_running : Crope rect : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", scale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", offsetX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", offsetY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .end local v0    # "h":I
    .end local v1    # "offsetX":I
    .end local v2    # "offsetY":I
    .end local v3    # "scale":F
    .end local v4    # "w":I
    :cond_1
    return-void
.end method

.method private cropScreen(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "cropRect"    # Landroid/graphics/Rect;
    .param p2, "layerToCapture"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 615
    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 616
    .local v6, "windowManager":Landroid/view/WindowManager;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 617
    .local v2, "displaySize":Landroid/graphics/Point;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 618
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 620
    :cond_0
    iget v5, v2, Landroid/graphics/Point;->x:I

    .line 621
    .local v5, "scrWidth":I
    iget v4, v2, Landroid/graphics/Point;->y:I

    .line 624
    .local v4, "scrHeight":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-gtz v8, :cond_2

    :cond_1
    move-object v1, v7

    .line 643
    :goto_0
    return-object v1

    .line 626
    :cond_2
    invoke-virtual {p1, v11, v11, v5, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 627
    const-string v8, "SmartClipDragDrop"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cropScreen : Crope rect : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-direct {p0, p2}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getFullScreenShotBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 631
    .local v3, "fullscreenBitmap":Landroid/graphics/Bitmap;
    if-nez v3, :cond_3

    .line 632
    const-string v8, "SmartClipDragDrop"

    const-string v9, "Cannot capture the screen!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    .line 633
    goto :goto_0

    .line 636
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->adjustCropRectForReduceScreen(Landroid/graphics/Rect;)V

    .line 639
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 640
    .local v1, "croppedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 641
    .local v0, "canvasForCrop":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v8, v11, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3, p1, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 744
    packed-switch p1, :pswitch_data_0

    .line 752
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 746
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 748
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 750
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 744
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getFullScreenShotBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "layer"    # I

    .prologue
    .line 647
    const/16 v0, 0x4e20

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getFullScreenShotBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getFullScreenShotBitmap(II)Landroid/graphics/Bitmap;
    .locals 24
    .param p1, "minLayer"    # I
    .param p2, "maxLayer"    # I

    .prologue
    .line 651
    const-string v2, "SmartClipDragDrop"

    const-string v5, "getFullScreenShotBitmap"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    .line 655
    .local v14, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    .line 656
    .local v17, "mDisplay":Landroid/view/Display;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 658
    invoke-virtual/range {v17 .. v17}, Landroid/view/Display;->getRotation()I

    move-result v13

    .line 661
    .local v13, "currentRotation":I
    iget v2, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v22

    .line 662
    .local v22, "screenWidth":I
    iget v2, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v21

    .line 663
    .local v21, "screenHeight":I
    move/from16 v10, v22

    .line 664
    .local v10, "appWidth":I
    move/from16 v9, v21

    .line 665
    .local v9, "appHeight":I
    const/4 v12, 0x0

    .line 667
    .local v12, "cocktailBarSize":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mHasCocktailBar:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 668
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v10, v2, Landroid/view/DisplayInfo;->appWidth:I

    .line 669
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v9, v2, Landroid/view/DisplayInfo;->appHeight:I

    .line 671
    move/from16 v0, v22

    if-eq v0, v10, :cond_4

    .line 672
    sub-int v12, v22, v10

    .line 678
    :cond_0
    :goto_0
    move/from16 v3, v22

    .line 679
    .local v3, "lcdWidth":I
    move/from16 v4, v21

    .line 681
    .local v4, "lcdHeight":I
    packed-switch v13, :pswitch_data_0

    .line 692
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mHasCocktailBar:Z

    if-eqz v2, :cond_1

    .line 693
    move/from16 v22, v10

    .line 694
    move/from16 v21, v9

    .line 698
    :cond_1
    const/16 v20, 0x0

    .line 701
    .local v20, "screenBitmap":Landroid/graphics/Bitmap;
    if-gez p1, :cond_2

    .line 702
    const/16 p1, 0x4e20

    .line 705
    :cond_2
    if-gez p2, :cond_3

    .line 706
    const p2, 0x30d40

    .line 712
    :cond_3
    :try_start_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v2 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 719
    :goto_2
    if-nez v20, :cond_5

    .line 720
    const-string v2, "SmartClipDragDrop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not capture the screen! lcdWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lcdHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v2, 0x0

    .line 740
    :goto_3
    return-object v2

    .line 674
    .end local v3    # "lcdWidth":I
    .end local v4    # "lcdHeight":I
    .end local v20    # "screenBitmap":Landroid/graphics/Bitmap;
    :cond_4
    sub-int v12, v21, v9

    goto :goto_0

    .line 684
    .restart local v3    # "lcdWidth":I
    .restart local v4    # "lcdHeight":I
    :pswitch_1
    move/from16 v3, v21

    .line 685
    move/from16 v4, v22

    .line 686
    goto :goto_1

    .line 715
    .restart local v20    # "screenBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v16

    .line 716
    .local v16, "e":Ljava/lang/Exception;
    const-string v2, "SmartClipDragDrop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFullScreenShotBitmap : failed to invoke screenshot() method : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 725
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_5
    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mHasCocktailBar:Z

    if-eqz v2, :cond_7

    .line 726
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getDegreesForRotation(I)F

    move-result v19

    .line 727
    .local v19, "rotationDegrees":F
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 728
    .local v18, "rotatedBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 729
    .local v11, "c":Landroid/graphics/Canvas;
    new-instance v23, Landroid/graphics/Point;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 730
    .local v23, "srcBmpCenter":Landroid/graphics/Point;
    new-instance v15, Landroid/graphics/Point;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v15, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 732
    .local v15, "dstBmpCenter":Landroid/graphics/Point;
    iget v2, v15, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v5, v15, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    move/from16 v0, v19

    invoke-virtual {v11, v0, v2, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 733
    iget v2, v15, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v5

    div-int/lit8 v5, v12, 0x2

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, v15, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v2, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 737
    move-object/from16 v20, v18

    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v15    # "dstBmpCenter":Landroid/graphics/Point;
    .end local v18    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "rotationDegrees":F
    .end local v23    # "srcBmpCenter":Landroid/graphics/Point;
    :cond_7
    move-object/from16 v2, v20

    .line 740
    goto/16 :goto_3

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSmartClipData(Landroid/view/View;II)V
    .locals 6
    .param p1, "touchView"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 820
    move-object v2, p1

    .line 821
    .local v2, "view":Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceRunning:Z

    if-nez v3, :cond_0

    .line 822
    const-string v3, "SmartClipDragDrop"

    const-string v4, "onTouch : SmartClipDragDrop service is already stopped"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->stopSmartClipDragDropThread()V

    .line 897
    :goto_0
    return-void

    .line 828
    :cond_0
    const-string v3, "spengestureservice"

    invoke-virtual {p0, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 829
    .local v1, "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, 0x1

    invoke-direct {v3, p2, p3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/smartclip/SpenGestureManager;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v0

    .line 830
    .local v0, "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$8;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private getTextMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    .locals 8
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    const/4 v5, 0x0

    .line 538
    const-string v6, "plain_text"

    invoke-virtual {p1, v6}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v3

    .line 539
    .local v3, "tags":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    const-string v4, ""

    .line 541
    .local v4, "textMetaValue":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 542
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 543
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 544
    .local v2, "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 546
    .end local v2    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 547
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 553
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    return-object v5

    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object v5, v4

    .line 550
    goto :goto_1
.end method

.method private getTextSelectionMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    .locals 8
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    const/4 v5, 0x0

    .line 558
    const-string v6, "text_selection"

    invoke-virtual {p1, v6}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v3

    .line 560
    .local v3, "tags":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    const-string v4, ""

    .line 562
    .local v4, "textSelectionMetaValue":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 563
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 564
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 565
    .local v2, "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 567
    .end local v2    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 568
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 574
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    return-object v5

    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object v5, v4

    .line 571
    goto :goto_1
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 792
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;

    const v3, 0x1090108

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 795
    .local v0, "shadowView":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 796
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to inflate text drag thumbnail"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 799
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget v3, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    if-le v2, v3, :cond_1

    .line 800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    invoke-interface {p1, v5, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 802
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 805
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 806
    const v2, -0xbbbbbc

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 808
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 812
    .local v1, "size":I
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 814
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 815
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 816
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method private getUrlMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    .locals 2
    .param p1, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    .line 579
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v0

    .line 581
    .local v0, "tags":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 582
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 584
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private minimize()V
    .locals 6

    .prologue
    .line 519
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 523
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 524
    const/4 v3, 0x0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 525
    const/4 v3, 0x0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 526
    const/4 v3, 0x0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 527
    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 528
    invoke-virtual {p0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 530
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 531
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .end local v1    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    :goto_0
    return-void

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SmartClipDragDrop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyStartDragMode()V
    .locals 2

    .prologue
    .line 443
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 444
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.action.NOTIFY_START_DRAG_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->sendBroadcast(Landroid/content/Intent;)V

    .line 446
    return-void
.end method

.method private saveImageFile(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 17
    .param p1, "bitmapToSave"    # Landroid/graphics/Bitmap;

    .prologue
    .line 756
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;

    sget-object v13, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 757
    .local v2, "availableFilePhth":Ljava/io/File;
    if-nez v2, :cond_0

    .line 758
    const/4 v8, 0x0

    .line 788
    :goto_0
    return-object v8

    .line 760
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 761
    .local v6, "imageDir":Ljava/lang/String;
    const-string v12, "DragImage[%d].png"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mSmartClipNewFileName:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;

    sget-object v16, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName$IndexMode;->DRAGDRAP:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName$IndexMode;

    invoke-virtual/range {v15 .. v16}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->getIndex(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName$IndexMode;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 762
    .local v7, "imageFileName":Ljava/lang/String;
    const-string v12, "%s/%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    aput-object v7, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 765
    .local v8, "imageFilePath":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 766
    .local v10, "savingStartTime":J
    const-string v12, "SmartClipDragDrop"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "saveImageFile : Saving the image file to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 769
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 770
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 773
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 775
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 776
    .local v9, "out":Ljava/io/FileOutputStream;
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x64

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 777
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 778
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 780
    const-string v12, "SmartClipDragDrop"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "saveImageFile : Encoding and file save finished. elapsed time = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 781
    .end local v3    # "dir":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .end local v10    # "savingStartTime":J
    :catch_0
    move-exception v4

    .line 782
    .local v4, "e":Ljava/lang/Exception;
    const-string v12, "SmartClipDragDrop"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "saveImageFile : File saving failed : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 785
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private startImageDrag(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rectToCrop"    # Landroid/graphics/Rect;
    .param p3, "layerToCapture"    # I

    .prologue
    .line 512
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 513
    .local v0, "saveImageTread":Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$SaveImageFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 515
    return-void
.end method

.method private startTextDrag(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "textToDrag"    # Ljava/lang/String;
    .param p3, "rectToCrop"    # Landroid/graphics/Rect;
    .param p4, "layerToCapture"    # I

    .prologue
    const/4 v4, 0x0

    .line 464
    const-string v2, "Multiwindow drag and drop text"

    invoke-static {v2, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 466
    .local v1, "dragData":Landroid/content/ClipData;
    if-eqz v1, :cond_0

    .line 483
    const/4 v0, 0x0

    .line 485
    .local v0, "dragBitmap":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_1

    .line 486
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->cropScreen(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 488
    if-nez v0, :cond_1

    .line 489
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_1

    .line 490
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;

    const v3, 0x7f0d048c

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 508
    .end local v0    # "dragBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 496
    .restart local v0    # "dragBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 497
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->minimize()V

    .line 499
    if-eqz v0, :cond_2

    .line 501
    new-instance v2, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$ShadowBuilder;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$ShadowBuilder;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1, v2, p1, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0

    .line 504
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    move-result-object v2

    invoke-virtual {p1, v1, v2, p1, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0
.end method

.method private stopSmartClipDragDropThread()V
    .locals 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 907
    return-void
.end method


# virtual methods
.method public initDragDrop()V
    .locals 2

    .prologue
    .line 356
    const v0, 0x7f0e00c5

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mMainFrame:Landroid/widget/FrameLayout;

    .line 357
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mMainFrame:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$6;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mMainFrame:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$7;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 440
    return-void
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 250
    invoke-super {p0}, Landroid/app/SallyService;->onCreate()V

    .line 252
    const-string v6, "SmartClipDragDrop"

    const-string v7, "onCreate()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;

    .line 255
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mWindowManager:Landroid/view/WindowManager;

    .line 256
    iput-boolean v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceRunning:Z

    .line 258
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    const-string v7, "multiwindow_facade"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 259
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c028b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mCenterBarSize:I

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 262
    .local v2, "l":Landroid/view/WindowManager$LayoutParams;
    const/16 v6, 0x89c

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x106000d

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 266
    const v6, 0x7f040012

    invoke-virtual {p0, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->setContentView(I)V

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->initDragDrop()V

    .line 272
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAm:Landroid/app/IActivityManager;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const/4 v9, 0x1

    invoke-interface {v6, v7, v8, v9}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "com.sec.android.intent.action.APPLIST_OPENED"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "appListExpandFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppListExpandReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 282
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "com.samsung.android.intent.action.ACTION_RECENTS"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 283
    .local v4, "recentsReceiver":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mRecentsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 287
    .local v5, "screenOffReceiver":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 291
    .local v3, "multiwindowStatusFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mMultiWindowStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;

    const-string v7, "vibrator"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/SystemVibrator;

    iput-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mVibrator:Landroid/os/SystemVibrator;

    .line 295
    new-instance v6, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mSmartClipNewFileName:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;

    .line 298
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mHasCocktailBar:Z

    .line 300
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->registerUsageStatsWatcher()V

    .line 301
    return-void

    .line 273
    .end local v0    # "appListExpandFilter":Landroid/content/IntentFilter;
    .end local v3    # "multiwindowStatusFilter":Landroid/content/IntentFilter;
    .end local v4    # "recentsReceiver":Landroid/content/IntentFilter;
    .end local v5    # "screenOffReceiver":Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "SmartClipDragDrop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate : Exception - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 306
    iget-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceRunning:Z

    if-eqz v2, :cond_0

    .line 307
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 308
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->sendBroadcast(Landroid/content/Intent;)V

    .line 310
    iput-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceRunning:Z

    .line 314
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppListExpandReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppListExpandReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 316
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAppListExpandReceiver:Landroid/content/BroadcastReceiver;

    .line 319
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mMultiWindowStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2

    .line 320
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mMultiWindowStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 321
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mMultiWindowStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 324
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mRecentsReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    .line 325
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mRecentsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 326
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mRecentsReceiver:Landroid/content/BroadcastReceiver;

    .line 329
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_4

    .line 330
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 331
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 334
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->unregisterUsageStatsWatcher()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mAm:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mSmartClipNewFileName:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;

    sget-object v3, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName$IndexMode;->DRAGDRAP:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName$IndexMode;

    invoke-virtual {v2, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName;->saveIndex(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipNewFileName$IndexMode;)V

    .line 348
    invoke-super {p0}, Landroid/app/SallyService;->onDestroy()V

    .line 349
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SmartClipDragDrop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroy : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 343
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SmartClipDragDrop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 590
    invoke-super {p0, p1, p2, p3}, Landroid/app/SallyService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method registerUsageStatsWatcher()V
    .locals 4

    .prologue
    .line 221
    const-string v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mUsageStats:Landroid/app/usage/IUsageStatsManager;

    .line 222
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mUsageStats:Landroid/app/usage/IUsageStatsManager;

    if-eqz v1, :cond_0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mUsageStats:Landroid/app/usage/IUsageStatsManager;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mUsageStatsWatcher:Landroid/app/usage/IUsageStatsWatcher$Stub;

    invoke-interface {v1, v2}, Landroid/app/usage/IUsageStatsManager;->registerUsageStatsWatcher(Landroid/app/usage/IUsageStatsWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartClipDragDrop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : registerUsageStatsWatcher - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopService()V
    .locals 3

    .prologue
    .line 451
    iget-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mIsDragging:Z

    if-nez v1, :cond_0

    .line 452
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 453
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->sendBroadcast(Landroid/content/Intent;)V

    .line 456
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mServiceRunning:Z

    .line 458
    invoke-super {p0}, Landroid/app/SallyService;->stopService()V

    .line 459
    const-string v1, "SmartClipDragDrop"

    const-string v2, "SmartClipDragDrop service finished."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method unregisterUsageStatsWatcher()V
    .locals 4

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mUsageStats:Landroid/app/usage/IUsageStatsManager;

    if-eqz v1, :cond_0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mUsageStats:Landroid/app/usage/IUsageStatsManager;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->mUsageStatsWatcher:Landroid/app/usage/IUsageStatsWatcher$Stub;

    invoke-interface {v1, v2}, Landroid/app/usage/IUsageStatsManager;->unregisterUsageStatsWatcher(Landroid/app/usage/IUsageStatsWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartClipDragDrop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : unregisterUsageStatsWatcher - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
