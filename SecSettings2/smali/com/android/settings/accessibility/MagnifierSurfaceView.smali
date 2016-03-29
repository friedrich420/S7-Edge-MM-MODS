.class public Lcom/android/settings/accessibility/MagnifierSurfaceView;
.super Ljava/lang/Object;
.source "MagnifierSurfaceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;,
        Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierTouchGestureListener;
    }
.end annotation


# static fields
.field private static mPM:Landroid/os/PowerManager;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field initialTouchX:F

.field initialTouchY:F

.field layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

.field layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

.field layoutParamsScreenChange:Landroid/view/WindowManager$LayoutParams;

.field private mContext:Landroid/content/Context;

.field mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

.field mCursorX:F

.field mCursorY:F

.field mDeviceWidth:F

.field mDeviceheight:F

.field private mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mImageViewClose:Landroid/widget/ImageView;

.field private mImageViewCloseWidth:I

.field private mImageViewMagnifierPad:Landroid/widget/ImageView;

.field private mImageViewScreenChange:Landroid/widget/ImageView;

.field private mImageViewScreenChangeWidth:I

.field mIsDualScreenFeatureEnabled:Z

.field mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

.field private final mMagnifierHandler:Landroid/os/Handler;

.field mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field mTouchDownX:F

.field mTouchDownY:F

.field private mTouchGestureDetector:Landroid/view/GestureDetector;

.field mTouchUpX:F

.field mTouchUpY:F

.field private mWindowManager:Landroid/view/WindowManager;

.field magSize:I

.field xPosition:F

.field yPosition:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceheight:F

    .line 41
    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceWidth:F

    .line 43
    iput-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    .line 44
    iput-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 47
    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    .line 48
    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    .line 51
    iput v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    .line 53
    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initialTouchX:F

    .line 54
    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initialTouchY:F

    .line 56
    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mTouchDownX:F

    .line 57
    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mTouchDownY:F

    .line 58
    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mTouchUpX:F

    .line 59
    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mTouchUpY:F

    .line 61
    iput v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    .line 62
    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->xPosition:F

    .line 63
    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->yPosition:F

    .line 74
    iput-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 77
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .line 79
    iput v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewScreenChangeWidth:I

    .line 430
    new-instance v1, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;-><init>(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagnifierHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreen;-><init>()V

    .line 88
    .local v0, "mDualScreen":Lcom/samsung/android/sdk/dualscreen/SDualScreen;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->isFeatureEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mIsDualScreenFeatureEnabled:Z

    .line 90
    iput-object p1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->init()V

    .line 92
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/MagnifierSurfaceView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/MagnifierSurfaceView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/MagnifierSurfaceView;)Lcom/android/settings/accessibility/MagnifierDisplayPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/MagnifierSurfaceView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/MagnifierSurfaceView;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/MagnifierSurfaceView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateMagnificationSpec(FF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/MagnifierSurfaceView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateMagnifierLayoutParams()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/MagnifierSurfaceView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateViewLayout()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/MagnifierSurfaceView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->handleTimeout()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/MagnifierSurfaceView;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/MagnifierSurfaceView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->injectAccessibilityMotionEvent(IZ)V

    return-void
.end method

.method private addMagnifierView()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mIsDualScreenFeatureEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewScreenChange:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewScreenChange:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsScreenChange:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    :cond_2
    return-void
.end method

.method private handleTimeout()V
    .locals 1

    .prologue
    .line 487
    monitor-enter p0

    .line 488
    :try_start_0
    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 490
    :cond_0
    monitor-exit p0

    .line 491
    return-void

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 6

    .prologue
    const v3, 0x7f0c02fe

    const/4 v5, 0x0

    .line 95
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    const-string v2, "magnifier_pref"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mSharedPref:Landroid/content/SharedPreferences;

    .line 96
    new-instance v1, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    .line 97
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    .line 98
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    .line 99
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    .line 100
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewScreenChange:Landroid/widget/ImageView;

    .line 101
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewScreenChangeWidth:I

    .line 103
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierTouchGestureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierTouchGestureListener;-><init>(Lcom/android/settings/accessibility/MagnifierSurfaceView;Lcom/android/settings/accessibility/MagnifierSurfaceView$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mTouchGestureDetector:Landroid/view/GestureDetector;

    .line 104
    const-string v1, "display"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    .line 116
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initializeDisplayInfo()V

    .line 118
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_magnifier_size"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    .line 119
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    sput-object v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPM:Landroid/os/PowerManager;

    .line 120
    sget-object v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPM:Landroid/os/PowerManager;

    const v2, 0x1000001a

    const-string v3, "Magnifier Window"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 122
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initMagnifierUIParams()V
    .locals 13

    .prologue
    const/16 v3, 0x830

    const/16 v12, 0x33

    const/16 v4, 0x8

    const/4 v5, -0x3

    .line 233
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    iget v6, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v2, v0, v6

    .line 234
    .local v2, "height":I
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    iget v6, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v1, v0, v6

    .line 236
    .local v1, "width":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    .line 242
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 244
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    iget v8, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    .line 250
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 252
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mIsDualScreenFeatureEnabled:Z

    if-eqz v0, :cond_0

    .line 253
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    iget v8, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsScreenChange:Landroid/view/WindowManager$LayoutParams;

    .line 259
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsScreenChange:Landroid/view/WindowManager$LayoutParams;

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 261
    :cond_0
    return-void
.end method

.method private initializeDisplayInfo()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 125
    new-instance v2, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    .line 126
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 127
    .local v1, "screen_size":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 128
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 129
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceheight:F

    .line 130
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceWidth:F

    .line 132
    iget-boolean v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mIsDualScreenFeatureEnabled:Z

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "display"

    const-string v4, "MAIN"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "mDeviceDisplay":Ljava/lang/String;
    const-string v2, "SUB"

    if-ne v0, v2, :cond_0

    .line 135
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    iput-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .line 136
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->getWindowManager(Landroid/content/Context;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/WindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v2, v3}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getDefaultDisplayInfo(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/DisplayInfo;

    .line 146
    .end local v0    # "mDeviceDisplay":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "pos_x"

    iget v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceWidth:F

    div-float/2addr v4, v5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    .line 147
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "pos_y"

    iget v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceheight:F

    div-float/2addr v4, v5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    .line 151
    :goto_2
    return-void

    .line 138
    .restart local v0    # "mDeviceDisplay":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    iput-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .line 139
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->getWindowManager(Landroid/content/Context;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/WindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0

    .line 143
    .end local v0    # "mDeviceDisplay":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    goto :goto_1

    .line 150
    :cond_2
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "pos_y"

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c02fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    goto :goto_2
.end method

.method private injectAccessibilityMotionEvent(IZ)V
    .locals 2
    .param p1, "eventAction"    # I
    .param p2, "isDouble"    # Z

    .prologue
    .line 494
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/accessibility/MagnifierSurfaceView$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView$2;-><init>(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 551
    return-void
.end method

.method private removeMagnifierView()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewScreenChange:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewScreenChange:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewScreenChange:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 314
    :cond_2
    return-void
.end method

.method private saveInSharedPreference()V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pos_x"

    iget v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pos_y"

    iget v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mIsDualScreenFeatureEnabled:Z

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    if-ne v0, v1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "display"

    const-string v2, "SUB"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "display"

    const-string v2, "MAIN"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setEventListener()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mIsDualScreenFeatureEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewScreenChange:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewScreenChange:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :cond_0
    return-void
.end method

.method private updateMagnificationSpec(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 317
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 318
    .local v0, "spec":Landroid/view/MagnificationSpec;
    iput p1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 319
    iput p2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 320
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getDisplayInfo(Landroid/view/MagnificationSpec;)Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    .line 321
    return-void
.end method

.method private updateMagnifierLayoutParams()V
    .locals 7

    .prologue
    .line 264
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 265
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 266
    .local v1, "left":I
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 267
    .local v2, "right":I
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 269
    .local v3, "top":I
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v5, v5, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    iget v6, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v5, v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 270
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v5, v5, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    iget v6, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v5, v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 271
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 272
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 274
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    sub-int v5, v2, v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 275
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 276
    iget-boolean v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mIsDualScreenFeatureEnabled:Z

    if-eqz v4, :cond_0

    .line 277
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsScreenChange:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 278
    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsScreenChange:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 280
    :cond_0
    return-void
.end method

.method private updateViewLayout()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mIsDualScreenFeatureEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewScreenChange:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewScreenChange:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsScreenChange:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    :cond_2
    return-void
.end method


# virtual methods
.method public configurationChange()V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagnifierHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 167
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mIsDualScreenFeatureEnabled:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->checkUpdateDisplayInfo(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Z

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 173
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceheight:F

    .line 174
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceWidth:F

    .line 175
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 409
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 411
    .local v0, "mIv":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_magnifier"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mIsDualScreenFeatureEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewScreenChange:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    :goto_1
    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .line 416
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    if-ne v1, v2, :cond_3

    .line 417
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->getWindowManager(Landroid/content/Context;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/WindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    .line 421
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->saveInSharedPreference()V

    .line 422
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagnifierHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 424
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->removeMagnifierView()V

    .line 425
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->addMagnifierView()V

    .line 426
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->setEventListener()V

    goto :goto_0

    .line 414
    :cond_2
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_1

    .line 419
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->getWindowManager(Landroid/content/Context;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/WindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 327
    .local v9, "pad_bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v12, v0, Landroid/graphics/Rect;->left:I

    .line 328
    .local v12, "pad_left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v13, v0, Landroid/graphics/Rect;->right:I

    .line 329
    .local v13, "pad_right":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v14, v0, Landroid/graphics/Rect;->top:I

    .line 332
    .local v14, "pad_top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getPointOffset()Landroid/graphics/Point;

    move-result-object v22

    move-object/from16 v0, v22

    iget v15, v0, Landroid/graphics/Point;->x:I

    .line 333
    .local v15, "refer_point_x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getPointOffset()Landroid/graphics/Point;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    .line 336
    .local v16, "refer_point_y":I
    sub-int v22, v13, v12

    div-int/lit8 v22, v22, 0x2

    add-int v10, v12, v22

    .line 337
    .local v10, "pad_center_x":I
    sub-int v22, v9, v14

    div-int/lit8 v22, v22, 0x2

    add-int v11, v14, v22

    .line 340
    .local v11, "pad_center_y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getScale()F

    move-result v18

    .line 341
    .local v18, "scale":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v22

    int-to-float v0, v10

    move/from16 v23, v0

    sub-float v22, v22, v23

    div-float v22, v22, v18

    int-to-float v0, v15

    move/from16 v23, v0

    add-float v20, v22, v23

    .line 342
    .local v20, "touch_x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v22

    int-to-float v0, v11

    move/from16 v23, v0

    sub-float v22, v22, v23

    div-float v22, v22, v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v21, v22, v23

    .line 344
    .local v21, "touch_y":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    .line 404
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mTouchGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    return v22

    .line 346
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initialTouchX:F

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initialTouchY:F

    .line 349
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mTouchDownX:F

    .line 350
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mTouchDownY:F

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->pokeWakelock()V

    goto :goto_0

    .line 356
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 357
    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 358
    .local v6, "left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    .line 359
    .local v17, "right":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    .line 361
    .local v19, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 365
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mIsDualScreenFeatureEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsScreenChange:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    sub-int v23, v17, v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsScreenChange:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 370
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateViewLayout()V

    .line 372
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->xPosition:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    .line 373
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->yPosition:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    .line 375
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->saveInSharedPreference()V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagnifierHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 377
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagnifierHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x1b58

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 379
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mTouchUpX:F

    .line 380
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mTouchUpY:F

    goto/16 :goto_0

    .line 385
    .end local v4    # "bottom":I
    .end local v6    # "left":I
    .end local v8    # "msg":Landroid/os/Message;
    .end local v17    # "right":I
    .end local v19    # "top":I
    :pswitch_2
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v7

    .line 386
    .local v7, "mSpec":Landroid/view/MagnificationSpec;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    move/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v23

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initialTouchX:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->xPosition:F

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    move/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initialTouchY:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->yPosition:F

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->xPosition:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_1

    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    iput v0, v7, Landroid/view/MagnificationSpec;->offsetX:F

    .line 389
    iget v0, v7, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->xPosition:F

    .line 390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->yPosition:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_3

    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    iput v0, v7, Landroid/view/MagnificationSpec;->offsetY:F

    .line 391
    iget v0, v7, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->yPosition:F

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getDisplayInfo(Landroid/view/MagnificationSpec;)Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    .line 395
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 396
    :catch_0
    move-exception v5

    .line 397
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 388
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->xPosition:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceWidth:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceWidth:F

    move/from16 v22, v0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->xPosition:F

    move/from16 v22, v0

    goto :goto_1

    .line 390
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->yPosition:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceheight:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceheight:F

    move/from16 v22, v0

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->yPosition:F

    move/from16 v22, v0

    goto :goto_2

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pokeWakelock()V
    .locals 2

    .prologue
    .line 470
    monitor-enter p0

    .line 471
    :try_start_0
    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 472
    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagnifierHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    :cond_1
    monitor-exit p0

    .line 478
    return-void

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->disableMagnifier()V

    .line 155
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->removeMagnifierView()V

    .line 157
    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 158
    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 160
    :cond_0
    sput-object v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 162
    :cond_1
    sput-object v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPM:Landroid/os/PowerManager;

    .line 163
    return-void
.end method

.method public showView()V
    .locals 4

    .prologue
    .line 201
    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPM:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPM:Landroid/os/PowerManager;

    .line 203
    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "Magnifier Window"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagnifierHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 208
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initMagnifierUIParams()V

    .line 209
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateMagnifierLayoutParams()V

    .line 210
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->addMagnifierView()V

    .line 211
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->setEventListener()V

    .line 212
    return-void
.end method

.method public update(II)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "scaleSize"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 178
    iput p1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    .line 179
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mIsDualScreenFeatureEnabled:Z

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v1, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    iget v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v2, v2, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    iget v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v2, v2, v3

    int-to-float v3, p2

    add-float/2addr v3, v5

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->enableMagnifierByDisplayID(IIFI)V

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v1, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    iget v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v2, v2, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    iget v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v2, v2, v3

    int-to-float v3, p2

    add-float/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->updateSettings(IIF)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;

    iget v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    iget v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->showMagnifier(FF)V

    .line 190
    iget v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    iget v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateMagnificationSpec(FF)V

    .line 191
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateMagnifierLayoutParams()V

    .line 192
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateViewLayout()V

    .line 193
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v1, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    iget v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v2, v2, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    iget v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v2, v2, v3

    int-to-float v3, p2

    add-float/2addr v3, v5

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->enableMagnifierByDisplayID(IIFI)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v1, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    iget v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v2, v2, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    iget v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v2, v2, v3

    int-to-float v3, p2

    add-float/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->enableMagnifier(IIF)V

    goto :goto_0
.end method
