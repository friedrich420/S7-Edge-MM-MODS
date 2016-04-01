.class public Lcom/android/internal/policy/PhoneWindow$DecorView;
.super Landroid/widget/FrameLayout;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DecorView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;
    }
.end annotation


# static fields
.field private static final FLOATING_MENU_BOTTOM_MARGIN:F = 48.0f

.field private static final FLOATING_MENU_TOUCH_THRESHOLD:F = 6.0f

.field private static final isElasticEnabled:Z = true


# instance fields
.field boundaryTouchX:F

.field initialTouchX:F

.field initialTouchY:F

.field private final mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private final mBackgroundPadding:Landroid/graphics/Rect;

.field private final mBarEnterExitDuration:I

.field private mChanging:Z

.field mDefaultOpacity:I

.field private mDisableSpenGesture:I

.field private mDownY:I

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mFadeAnim:Landroid/animation/ObjectAnimator;

.field private final mFeatureId:I

.field private mFloatingActionMode:Landroid/view/ActionMode;

.field private mFloatingActionModeOriginatingView:Landroid/view/View;

.field private mFloatingMenuBtn:Landroid/widget/ImageButton;

.field private mFloatingMenuFakeKeyDownRunnable:Ljava/lang/Runnable;

.field private mFloatingMenuFakeKeyUpRunnable:Ljava/lang/Runnable;

.field private mFloatingMenuLastUpdateTime:J

.field private mFloatingMenuTouchedButtonPos:[I

.field private mFloatingMenuTouchedPos:[I

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mFrameOffsets:Landroid/graphics/Rect;

.field private final mFramePadding:Landroid/graphics/Rect;

.field private final mHideInterpolator:Landroid/view/animation/Interpolator;

.field private mIsPenSelectionMode:Z

.field private mLastBottomInset:I

.field private mLastHasBottomStableInset:Z

.field private mLastHasRightStableInset:Z

.field private mLastHasTopStableInset:Z

.field private mLastRightInset:I

.field private mLastTopInset:I

.field private mLastWindowFlags:I

.field private mMenuBackground:Landroid/graphics/drawable/Drawable;

.field protected final mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

.field protected mNavigationGuard:Landroid/view/View;

.field private mPrimaryActionMode:Landroid/view/ActionMode;

.field private mPrimaryActionModePopup:Landroid/widget/PopupWindow;

.field private mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private mRootScrollY:I

.field private final mShowInterpolator:Landroid/view/animation/Interpolator;

.field private mShowPrimaryActionModePopup:Ljava/lang/Runnable;

.field private mSpenUspLevel:I

.field protected final mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

.field protected mStatusGuard:Landroid/view/View;

.field private mWatchingForMenu:Z

.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;I)V
    .registers 13
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "featureId"    # I

    .prologue
    .line 2570
    iput-object p1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    .line 2571
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2490
    const/4 v0, -0x1

    iput v0, p0, mDefaultOpacity:I

    .line 2495
    const/4 v0, 0x0

    iput v0, p0, initialTouchX:F

    .line 2496
    const/4 v0, 0x0

    iput v0, p0, boundaryTouchX:F

    .line 2497
    const/4 v0, 0x0

    iput v0, p0, initialTouchY:F

    .line 2500
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mDrawingBounds:Landroid/graphics/Rect;

    .line 2502
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mBackgroundPadding:Landroid/graphics/Rect;

    .line 2504
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mFramePadding:Landroid/graphics/Rect;

    .line 2506
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mFrameOffsets:Landroid/graphics/Rect;

    .line 2531
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    const/4 v1, 0x4

    const/high16 v2, 0x4000000

    const/16 v3, 0x30

    const/4 v4, 0x3

    const-string v5, "android:status:background"

    const v6, 0x102002f

    const/16 v7, 0x400

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/PhoneWindow$ColorViewState;-><init>(IIIILjava/lang/String;II)V

    iput-object v0, p0, mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    .line 2538
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    const/4 v1, 0x2

    const/high16 v2, 0x8000000

    const/16 v3, 0x50

    const/4 v4, 0x5

    const-string v5, "android:navigation:background"

    const v6, 0x1020030

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/PhoneWindow$ColorViewState;-><init>(IIIILjava/lang/String;II)V

    iput-object v0, p0, mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    .line 2547
    const/4 v0, 0x0

    iput v0, p0, mDisableSpenGesture:I

    .line 2555
    const/4 v0, -0x1

    iput v0, p0, mSpenUspLevel:I

    .line 2557
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsPenSelectionMode:Z

    .line 2558
    new-instance v0, Lcom/android/internal/widget/BackgroundFallback;

    invoke-direct {v0}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    iput-object v0, p0, mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    .line 2560
    const/4 v0, 0x0

    iput v0, p0, mLastTopInset:I

    .line 2561
    const/4 v0, 0x0

    iput v0, p0, mLastBottomInset:I

    .line 2562
    const/4 v0, 0x0

    iput v0, p0, mLastRightInset:I

    .line 2563
    const/4 v0, 0x0

    iput-boolean v0, p0, mLastHasTopStableInset:Z

    .line 2564
    const/4 v0, 0x0

    iput-boolean v0, p0, mLastHasBottomStableInset:Z

    .line 2565
    const/4 v0, 0x0

    iput-boolean v0, p0, mLastHasRightStableInset:Z

    .line 2566
    const/4 v0, 0x0

    iput v0, p0, mLastWindowFlags:I

    .line 2568
    const/4 v0, 0x0

    iput v0, p0, mRootScrollY:I

    .line 3887
    const/4 v0, 0x0

    iput-object v0, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    .line 3888
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, mFloatingMenuTouchedPos:[I

    .line 3889
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, mFloatingMenuTouchedButtonPos:[I

    .line 3890
    const/4 v0, 0x0

    iput-object v0, p0, mFloatingMenuFakeKeyDownRunnable:Ljava/lang/Runnable;

    .line 3891
    const/4 v0, 0x0

    iput-object v0, p0, mFloatingMenuFakeKeyUpRunnable:Ljava/lang/Runnable;

    .line 3892
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mFloatingMenuLastUpdateTime:J

    .line 2572
    iput p3, p0, mFeatureId:I

    .line 2574
    const v0, 0x10c000e

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 2576
    const v0, 0x10c000f

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 2579
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, mBarEnterExitDuration:I

    .line 2583
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_pen_gesture"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, mDisableSpenGesture:I

    .line 2586
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 2587
    .local v8, "pm":Landroid/content/pm/PackageManager;
    if-eqz v8, :cond_d3

    .line 2588
    const-string v0, "com.sec.feature.spen_usp"

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mSpenUspLevel:I

    .line 2592
    :cond_d3
    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/PhoneWindow$DecorView;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, mFloatingMenuTouchedPos:[I

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/PhoneWindow$DecorView;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, mFloatingMenuTouchedButtonPos:[I

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/PhoneWindow$DecorView;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-wide v0, p0, mFloatingMenuLastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/android/internal/policy/PhoneWindow$DecorView;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "x1"    # J

    .prologue
    .line 2488
    iput-wide p1, p0, mFloatingMenuLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, mFloatingMenuFakeKeyDownRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, mPrimaryActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, mFloatingMenuFakeKeyUpRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 2488
    iput-object p1, p0, mPrimaryActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/PhoneWindow$DecorView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    invoke-direct {p0}, endOnGoingFadeAnimation()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 2488
    iput-object p1, p0, mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, mFloatingActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 2488
    iput-object p1, p0, mFloatingActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    iget-object v0, p0, mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/PhoneWindow$DecorView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 2488
    invoke-direct {p0}, cleanupFloatingActionModeViews()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/view/WindowInsets;
    .param p2, "x2"    # Z

    .prologue
    .line 2488
    invoke-direct {p0, p1, p2}, updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method private cleanupFloatingActionModeViews()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3314
    iget-object v0, p0, mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    if-eqz v0, :cond_c

    .line 3315
    iget-object v0, p0, mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 3316
    iput-object v2, p0, mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 3318
    :cond_c
    iget-object v0, p0, mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_23

    .line 3319
    iget-object v0, p0, mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_21

    .line 3320
    iget-object v0, p0, mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3322
    iput-object v2, p0, mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 3324
    :cond_21
    iput-object v2, p0, mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 3326
    :cond_23
    return-void
.end method

.method private cleanupPrimaryActionMode()V
    .registers 2

    .prologue
    .line 3304
    iget-object v0, p0, mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_c

    .line 3305
    iget-object v0, p0, mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 3306
    const/4 v0, 0x0

    iput-object v0, p0, mPrimaryActionMode:Landroid/view/ActionMode;

    .line 3308
    :cond_c
    iget-object v0, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_15

    .line 3309
    iget-object v0, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 3311
    :cond_15
    return-void
.end method

.method private createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;
    .registers 5
    .param p1, "type"    # I
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;

    .prologue
    .line 4025
    sparse-switch p1, :sswitch_data_14

    .line 4028
    invoke-direct {p0, p2}, createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 4032
    :goto_7
    return-object v0

    .line 4030
    :sswitch_8
    invoke-direct {p0, p3, p2}, createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_7

    .line 4032
    :sswitch_d
    const/4 v0, 0x1

    invoke-direct {p0, p3, p2, v0}, createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;Z)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_7

    .line 4025
    nop

    :sswitch_data_14
    .sparse-switch
        0x1 -> :sswitch_8
        0x63 -> :sswitch_d
    .end sparse-switch
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .registers 4
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;

    .prologue
    .line 4178
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;Z)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;Z)Landroid/view/ActionMode;
    .registers 6
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "useSamsungToolbar"    # Z

    .prologue
    .line 4183
    iget-object v1, p0, mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_9

    .line 4184
    iget-object v1, p0, mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 4186
    :cond_9
    invoke-direct {p0}, cleanupFloatingActionModeViews()V

    .line 4187
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1, p3}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Z)V

    .line 4189
    .local v0, "mode":Lcom/android/internal/view/FloatingActionMode;
    iput-object p1, p0, mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 4190
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$DecorView$8;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView$8;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v1, p0, mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 4198
    return-object v0
.end method

.method private createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 14
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 4047
    invoke-direct {p0}, endOnGoingFadeAnimation()V

    .line 4048
    invoke-direct {p0}, cleanupPrimaryActionMode()V

    .line 4049
    iget-object v7, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v7, :cond_98

    .line 4050
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v7

    if-eqz v7, :cond_b7

    .line 4052
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 4053
    .local v5, "outValue":Landroid/util/TypedValue;
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 4054
    .local v2, "baseTheme":Landroid/content/res/Resources$Theme;
    const v7, 0x1010431

    invoke-virtual {v2, v7, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4057
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_b4

    .line 4058
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 4059
    .local v1, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 4060
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v7, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 4062
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v7, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 4063
    .local v0, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 4068
    .end local v1    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    :goto_4a
    new-instance v7, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v7, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 4069
    new-instance v7, Landroid/widget/PopupWindow;

    const v10, 0x1160020

    invoke-direct {v7, v0, v4, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, p0, mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 4071
    iget-object v7, p0, mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 4073
    iget-object v7, p0, mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    iget-object v10, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4074
    iget-object v7, p0, mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4076
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v10, 0x10102eb

    invoke-virtual {v7, v10, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4078
    iget v7, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    .line 4080
    .local v3, "height":I
    iget-object v7, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 4081
    iget-object v7, p0, mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, -0x2

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4082
    new-instance v7, Lcom/android/internal/policy/PhoneWindow$DecorView$6;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$6;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    iput-object v7, p0, mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    .line 4123
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v3    # "height":I
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_98
    :goto_98
    iget-object v7, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_b3

    .line 4124
    iget-object v7, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 4125
    new-instance v4, Lcom/android/internal/view/StandaloneActionMode;

    iget-object v7, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v7, p0, mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-nez v7, :cond_cb

    move v7, v8

    :goto_b0
    invoke-direct {v4, v10, v11, p1, v7}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 4130
    :cond_b3
    return-object v4

    .line 4065
    .restart local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v5    # "outValue":Landroid/util/TypedValue;
    :cond_b4
    iget-object v0, p0, mContext:Landroid/content/Context;

    .restart local v0    # "actionBarContext":Landroid/content/Context;
    goto :goto_4a

    .line 4116
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_b7
    const v7, 0x1020469

    invoke-virtual {p0, v7}, findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    .line 4118
    .local v6, "stub":Landroid/view/ViewStub;
    if-eqz v6, :cond_98

    .line 4119
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v7, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    goto :goto_98

    .end local v6    # "stub":Landroid/view/ViewStub;
    :cond_cb
    move v7, v9

    .line 4125
    goto :goto_b0
.end method

.method private drawableChanged()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    .line 3688
    iget-boolean v5, p0, mChanging:Z

    if-eqz v5, :cond_6

    .line 3745
    :cond_5
    :goto_5
    return-void

    .line 3692
    :cond_6
    iget-object v5, p0, mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, mBackgroundPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, mFramePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, mBackgroundPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget-object v7, p0, mFramePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, mBackgroundPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget-object v8, p0, mFramePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, mBackgroundPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v5, v6, v7, v8}, setPadding(IIII)V

    .line 3695
    invoke-virtual {p0}, requestLayout()V

    .line 3696
    invoke-virtual {p0}, invalidate()V

    .line 3698
    const/4 v4, -0x1

    .line 3704
    .local v4, "opacity":I
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3705
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3706
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_44

    .line 3707
    if-nez v2, :cond_50

    .line 3708
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    .line 3741
    :cond_44
    :goto_44
    iput v4, p0, mDefaultOpacity:I

    .line 3742
    iget v5, p0, mFeatureId:I

    if-gez v5, :cond_5

    .line 3743
    iget-object v5, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # invokes: Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V
    invoke-static {v5, v4}, Lcom/android/internal/policy/PhoneWindow;->access$2300(Lcom/android/internal/policy/PhoneWindow;I)V

    goto :goto_5

    .line 3709
    :cond_50
    iget-object v5, p0, mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gtz v5, :cond_83

    iget-object v5, p0, mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gtz v5, :cond_83

    iget-object v5, p0, mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-gtz v5, :cond_83

    iget-object v5, p0, mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-gtz v5, :cond_83

    .line 3713
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .line 3714
    .local v3, "fop":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .line 3717
    .local v1, "bop":I
    if-eq v3, v10, :cond_74

    if-ne v1, v10, :cond_76

    .line 3718
    :cond_74
    const/4 v4, -0x1

    goto :goto_44

    .line 3719
    :cond_76
    if-nez v3, :cond_7a

    .line 3720
    move v4, v1

    goto :goto_44

    .line 3721
    :cond_7a
    if-nez v1, :cond_7e

    .line 3722
    move v4, v3

    goto :goto_44

    .line 3724
    :cond_7e
    invoke-static {v3, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    goto :goto_44

    .line 3732
    .end local v1    # "bop":I
    .end local v3    # "fop":I
    :cond_83
    const/4 v4, -0x3

    goto :goto_44
.end method

.method private endOnGoingFadeAnimation()V
    .registers 2

    .prologue
    .line 4134
    iget-object v0, p0, mFadeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 4135
    iget-object v0, p0, mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 4137
    :cond_9
    return-void
.end method

.method private isFloatingMenuEnabled()Z
    .registers 2

    .prologue
    .line 4016
    iget-object v0, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_e

    iget-object v0, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    .line 4017
    const/4 v0, 0x1

    .line 4019
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isOutOfBounds(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, -0x5

    .line 2848
    if-lt p1, v0, :cond_15

    if-lt p2, v0, :cond_15

    invoke-virtual {p0}, getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_15

    invoke-virtual {p0}, getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private setHandledActionMode(Landroid/view/ActionMode;)V
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x1

    .line 4037
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    if-nez v0, :cond_b

    .line 4038
    invoke-direct {p0, p1}, setHandledPrimaryActionMode(Landroid/view/ActionMode;)V

    .line 4044
    :cond_a
    :goto_a
    return-void

    .line 4039
    :cond_b
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    if-ne v0, v2, :cond_16

    .line 4040
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, setHandledFloatingActionMode(Landroid/view/ActionMode;Z)V

    goto :goto_a

    .line 4041
    :cond_16
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_a

    .line 4042
    invoke-direct {p0, p1, v2}, setHandledFloatingActionMode(Landroid/view/ActionMode;Z)V

    goto :goto_a
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .registers 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 4202
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, setHandledFloatingActionMode(Landroid/view/ActionMode;Z)V

    .line 4203
    return-void
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;Z)V
    .registers 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "isSamsung"    # Z

    .prologue
    .line 4206
    iput-object p1, p0, mFloatingActionMode:Landroid/view/ActionMode;

    .line 4207
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/view/Window;Z)V

    iput-object v0, p0, mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 4208
    iget-object v0, p0, mFloatingActionMode:Landroid/view/ActionMode;

    check-cast v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/FloatingToolbar;)V

    .line 4209
    iget-object v0, p0, mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 4210
    iget-object v0, p0, mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4212
    return-void
.end method

.method private setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 4140
    invoke-direct {p0}, endOnGoingFadeAnimation()V

    .line 4141
    iput-object p1, p0, mPrimaryActionMode:Landroid/view/ActionMode;

    .line 4142
    iget-object v0, p0, mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 4143
    iget-object v0, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v1, p0, mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 4144
    iget-object v0, p0, mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_22

    .line 4145
    iget-object v0, p0, mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    .line 4172
    :goto_1a
    iget-object v0, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 4174
    return-void

    .line 4147
    :cond_22
    iget-object v0, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_42

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, mFadeAnim:Landroid/animation/ObjectAnimator;

    .line 4148
    iget-object v0, p0, mFadeAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/internal/policy/PhoneWindow$DecorView$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$7;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4170
    iget-object v0, p0, mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1a

    .line 4147
    :array_42
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 9
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    .line 3259
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    invoke-direct {v2, p0, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V

    .line 3260
    .local v2, "wrappedCallback":Landroid/view/ActionMode$Callback2;
    const/4 v1, 0x0

    .line 3261
    .local v1, "mode":Landroid/view/ActionMode;
    iget-object v3, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    if-eqz v3, :cond_20

    iget-object v3, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_20

    .line 3263
    :try_start_16
    iget-object v3, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, v2, p3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_1f
    .catch Ljava/lang/AbstractMethodError; {:try_start_16 .. :try_end_1f} :catch_49

    move-result-object v1

    .line 3275
    :cond_20
    :goto_20
    if-eqz v1, :cond_72

    .line 3276
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v3

    if-nez v3, :cond_57

    .line 3277
    invoke-direct {p0}, cleanupPrimaryActionMode()V

    .line 3278
    iput-object v1, p0, mPrimaryActionMode:Landroid/view/ActionMode;

    .line 3293
    :cond_2d
    :goto_2d
    if-eqz v1, :cond_48

    iget-object v3, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    if-eqz v3, :cond_48

    iget-object v3, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_48

    .line 3295
    :try_start_3f
    iget-object v3, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_48
    .catch Ljava/lang/AbstractMethodError; {:try_start_3f .. :try_end_48} :catch_88

    .line 3300
    :cond_48
    :goto_48
    return-object v1

    .line 3264
    :catch_49
    move-exception v0

    .line 3266
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    if-nez p3, :cond_20

    .line 3268
    :try_start_4c
    iget-object v3, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_55
    .catch Ljava/lang/AbstractMethodError; {:try_start_4c .. :try_end_55} :catch_8a

    move-result-object v1

    goto :goto_20

    .line 3279
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    :cond_57
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_66

    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v3

    const/16 v4, 0x63

    if-ne v3, v4, :cond_2d

    .line 3280
    :cond_66
    iget-object v3, p0, mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_6f

    .line 3281
    iget-object v3, p0, mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 3283
    :cond_6f
    iput-object v1, p0, mFloatingActionMode:Landroid/view/ActionMode;

    goto :goto_2d

    .line 3286
    :cond_72
    invoke-direct {p0, p3, v2, p1}, createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;

    move-result-object v1

    .line 3287
    if-eqz v1, :cond_86

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 3288
    invoke-direct {p0, v1}, setHandledActionMode(Landroid/view/ActionMode;)V

    goto :goto_2d

    .line 3290
    :cond_86
    const/4 v1, 0x0

    goto :goto_2d

    .line 3296
    :catch_88
    move-exception v3

    goto :goto_48

    .line 3269
    .restart local v0    # "ame":Ljava/lang/AbstractMethodError;
    :catch_8a
    move-exception v3

    goto :goto_20
.end method

.method private updateColorViewTranslations()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 3579
    iget v0, p0, mRootScrollY:I

    .line 3580
    .local v0, "rootScrollY":I
    iget-object v1, p0, mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_13

    .line 3581
    iget-object v1, p0, mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-lez v0, :cond_24

    int-to-float v1, v0

    :goto_10
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3583
    :cond_13
    iget-object v1, p0, mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_23

    .line 3584
    iget-object v1, p0, mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-gez v0, :cond_20

    int-to-float v2, v0

    :cond_20
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 3586
    :cond_23
    return-void

    :cond_24
    move v1, v2

    .line 3581
    goto :goto_10
.end method

.method private updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .registers 29
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    .prologue
    .line 3392
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 3393
    .local v16, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual/range {p0 .. p0}, getWindowSystemUiVisibility()I

    move-result v3

    or-int v4, v2, v3

    .line 3395
    .local v4, "sysUiVisibility":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$1800(Lcom/android/internal/policy/PhoneWindow;)Z

    move-result v2

    if-nez v2, :cond_112

    .line 3396
    invoke-virtual/range {p0 .. p0}, isLaidOut()Z

    move-result v2

    if-nez v2, :cond_1b4

    const/16 v20, 0x1

    .line 3397
    .local v20, "disallowAnimate":Z
    :goto_24
    move-object/from16 v0, p0

    iget v2, v0, mLastWindowFlags:I

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v2, v3

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1b8

    const/4 v2, 0x1

    :goto_33
    or-int v20, v20, v2

    .line 3399
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    iput v2, v0, mLastWindowFlags:I

    .line 3401
    if-eqz p1, :cond_ba

    .line 3402
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mLastTopInset:I

    .line 3404
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mLastBottomInset:I

    .line 3406
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mLastRightInset:I

    .line 3412
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    if-eqz v2, :cond_1bb

    const/16 v23, 0x1

    .line 3413
    .local v23, "hasTopStableInset":Z
    :goto_77
    move-object/from16 v0, p0

    iget-boolean v2, v0, mLastHasTopStableInset:Z

    move/from16 v0, v23

    if-eq v0, v2, :cond_1bf

    const/4 v2, 0x1

    :goto_80
    or-int v20, v20, v2

    .line 3414
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, mLastHasTopStableInset:Z

    .line 3416
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v2

    if-eqz v2, :cond_1c2

    const/16 v21, 0x1

    .line 3417
    .local v21, "hasBottomStableInset":Z
    :goto_90
    move-object/from16 v0, p0

    iget-boolean v2, v0, mLastHasBottomStableInset:Z

    move/from16 v0, v21

    if-eq v0, v2, :cond_1c6

    const/4 v2, 0x1

    :goto_99
    or-int v20, v20, v2

    .line 3418
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, mLastHasBottomStableInset:Z

    .line 3420
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    if-eqz v2, :cond_1c9

    const/16 v22, 0x1

    .line 3421
    .local v22, "hasRightStableInset":Z
    :goto_a9
    move-object/from16 v0, p0

    iget-boolean v2, v0, mLastHasRightStableInset:Z

    move/from16 v0, v22

    if-eq v0, v2, :cond_1cd

    const/4 v2, 0x1

    :goto_b2
    or-int v20, v20, v2

    .line 3422
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, mLastHasRightStableInset:Z

    .line 3425
    .end local v21    # "hasBottomStableInset":Z
    .end local v22    # "hasRightStableInset":Z
    .end local v23    # "hasTopStableInset":Z
    :cond_ba
    move-object/from16 v0, p0

    iget v2, v0, mLastBottomInset:I

    if-nez v2, :cond_1d0

    move-object/from16 v0, p0

    iget v2, v0, mLastRightInset:I

    if-lez v2, :cond_1d0

    const/4 v7, 0x1

    .line 3426
    .local v7, "navBarToRightEdge":Z
    :goto_c7
    if-eqz v7, :cond_1d3

    move-object/from16 v0, p0

    iget v6, v0, mLastRightInset:I

    .line 3427
    .local v6, "navBarSize":I
    :goto_cd
    move-object/from16 v0, p0

    iget-object v3, v0, mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$1900(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v5

    const/4 v8, 0x0

    if-eqz p2, :cond_1d9

    if-nez v20, :cond_1d9

    const/4 v9, 0x1

    :goto_df
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V

    .line 3431
    if-eqz v7, :cond_1dc

    move-object/from16 v0, p0

    iget-object v2, v0, mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-boolean v2, v2, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->present:Z

    if-eqz v2, :cond_1dc

    const/16 v25, 0x1

    .line 3433
    .local v25, "statusBarNeedsRightInset":Z
    :goto_f0
    if-eqz v25, :cond_1e0

    move-object/from16 v0, p0

    iget v14, v0, mLastRightInset:I

    .line 3434
    .local v14, "statusBarRightInset":I
    :goto_f6
    move-object/from16 v0, p0

    iget-object v9, v0, mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$2000(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, mLastTopInset:I

    const/4 v13, 0x0

    if-eqz p2, :cond_10b

    if-nez v20, :cond_10b

    :cond_10b
    const/4 v15, 0x0

    move-object/from16 v8, p0

    move v10, v4

    invoke-virtual/range {v8 .. v15}, updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V

    .line 3443
    .end local v6    # "navBarSize":I
    .end local v7    # "navBarToRightEdge":Z
    .end local v14    # "statusBarRightInset":I
    .end local v20    # "disallowAnimate":Z
    .end local v25    # "statusBarNeedsRightInset":Z
    :cond_112
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1e3

    and-int/lit16 v2, v4, 0x200

    if-nez v2, :cond_1e3

    and-int/lit8 v2, v4, 0x2

    if-nez v2, :cond_1e3

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    if-nez v2, :cond_1e3

    const/16 v19, 0x1

    .line 3449
    .local v19, "consumingNavBar":Z
    :goto_12b
    if-eqz v19, :cond_1e7

    move-object/from16 v0, p0

    iget v0, v0, mLastRightInset:I

    move/from16 v18, v0

    .line 3450
    .local v18, "consumedRight":I
    :goto_133
    if-eqz v19, :cond_1eb

    move-object/from16 v0, p0

    iget v0, v0, mLastBottomInset:I

    move/from16 v17, v0

    .line 3452
    .local v17, "consumedBottom":I
    :goto_13b
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$600(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_1ad

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$600(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1ad

    .line 3454
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$600(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3455
    .local v24, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v24

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v0, v18

    if-ne v2, v0, :cond_173

    move-object/from16 v0, v24

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v0, v17

    if-eq v2, v0, :cond_191

    .line 3456
    :cond_173
    move/from16 v0, v18

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3457
    move/from16 v0, v17

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3458
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$600(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3460
    if-nez p1, :cond_191

    .line 3463
    invoke-virtual/range {p0 .. p0}, requestApplyInsets()V

    .line 3466
    :cond_191
    if-eqz p1, :cond_1ad

    .line 3467
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    sub-int v5, v5, v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v8

    sub-int v8, v8, v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v8}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 3475
    .end local v24    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1ad
    if-eqz p1, :cond_1b3

    .line 3476
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 3478
    :cond_1b3
    return-object p1

    .line 3396
    .end local v17    # "consumedBottom":I
    .end local v18    # "consumedRight":I
    .end local v19    # "consumingNavBar":Z
    :cond_1b4
    const/16 v20, 0x0

    goto/16 :goto_24

    .line 3397
    .restart local v20    # "disallowAnimate":Z
    :cond_1b8
    const/4 v2, 0x0

    goto/16 :goto_33

    .line 3412
    :cond_1bb
    const/16 v23, 0x0

    goto/16 :goto_77

    .line 3413
    .restart local v23    # "hasTopStableInset":Z
    :cond_1bf
    const/4 v2, 0x0

    goto/16 :goto_80

    .line 3416
    :cond_1c2
    const/16 v21, 0x0

    goto/16 :goto_90

    .line 3417
    .restart local v21    # "hasBottomStableInset":Z
    :cond_1c6
    const/4 v2, 0x0

    goto/16 :goto_99

    .line 3420
    :cond_1c9
    const/16 v22, 0x0

    goto/16 :goto_a9

    .line 3421
    .restart local v22    # "hasRightStableInset":Z
    :cond_1cd
    const/4 v2, 0x0

    goto/16 :goto_b2

    .line 3425
    .end local v21    # "hasBottomStableInset":Z
    .end local v22    # "hasRightStableInset":Z
    .end local v23    # "hasTopStableInset":Z
    :cond_1d0
    const/4 v7, 0x0

    goto/16 :goto_c7

    .line 3426
    .restart local v7    # "navBarToRightEdge":Z
    :cond_1d3
    move-object/from16 v0, p0

    iget v6, v0, mLastBottomInset:I

    goto/16 :goto_cd

    .line 3427
    .restart local v6    # "navBarSize":I
    :cond_1d9
    const/4 v9, 0x0

    goto/16 :goto_df

    .line 3431
    :cond_1dc
    const/16 v25, 0x0

    goto/16 :goto_f0

    .line 3433
    .restart local v25    # "statusBarNeedsRightInset":Z
    :cond_1e0
    const/4 v14, 0x0

    goto/16 :goto_f6

    .line 3443
    .end local v6    # "navBarSize":I
    .end local v7    # "navBarToRightEdge":Z
    .end local v20    # "disallowAnimate":Z
    .end local v25    # "statusBarNeedsRightInset":Z
    :cond_1e3
    const/16 v19, 0x0

    goto/16 :goto_12b

    .line 3449
    .restart local v19    # "consumingNavBar":Z
    :cond_1e7
    const/16 v18, 0x0

    goto/16 :goto_133

    .line 3450
    .restart local v18    # "consumedRight":I
    :cond_1eb
    const/16 v17, 0x0

    goto/16 :goto_13b
.end method

.method private updateNavigationGuard(Landroid/view/WindowInsets;)V
    .registers 10
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 3660
    iget-object v2, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_72

    .line 3662
    iget-object v2, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 3663
    iget-object v2, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3d

    .line 3664
    iget-object v2, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3666
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3667
    iget-object v2, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3671
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3d
    iget-object v2, p0, mNavigationGuard:Landroid/view/View;

    if-nez v2, :cond_73

    .line 3672
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, mNavigationGuard:Landroid/view/View;

    .line 3673
    iget-object v2, p0, mNavigationGuard:Landroid/view/View;

    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1060032

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3675
    iget-object v2, p0, mNavigationGuard:Landroid/view/View;

    iget-object v3, p0, mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, indexOfChild(Landroid/view/View;)I

    move-result v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v6

    const v7, 0x800053

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v2, v3, v4}, addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3685
    :cond_72
    :goto_72
    return-void

    .line 3680
    :cond_73
    iget-object v2, p0, mNavigationGuard:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3681
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3682
    iget-object v2, p0, mNavigationGuard:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_72
.end method

.method private updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 15
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 3589
    const/4 v6, 0x0

    .line 3591
    .local v6, "showStatusGuard":Z
    iget-object v7, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_aa

    .line 3592
    iget-object v7, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_aa

    .line 3594
    iget-object v7, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3596
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v2, 0x0

    .line 3597
    .local v2, "mlpChanged":Z
    iget-object v7, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 3598
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$2100(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_32

    .line 3599
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    # setter for: Lcom/android/internal/policy/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7, v8}, Lcom/android/internal/policy/PhoneWindow;->access$2102(Lcom/android/internal/policy/PhoneWindow;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 3601
    :cond_32
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$2100(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    .line 3605
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, p1, v5}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    .line 3606
    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-nez v7, :cond_b7

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    .line 3607
    .local v3, "newMargin":I
    :goto_49
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v3, :cond_87

    .line 3608
    const/4 v2, 0x1

    .line 3609
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3611
    iget-object v7, p0, mStatusGuard:Landroid/view/View;

    if-nez v7, :cond_b9

    .line 3612
    new-instance v7, Landroid/view/View;

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, mStatusGuard:Landroid/view/View;

    .line 3613
    iget-object v7, p0, mStatusGuard:Landroid/view/View;

    iget-object v8, p0, mContext:Landroid/content/Context;

    const v9, 0x1060032

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3615
    iget-object v7, p0, mStatusGuard:Landroid/view/View;

    iget-object v8, p0, mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v8, v8, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v8}, indexOfChild(Landroid/view/View;)I

    move-result v8

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v12, 0x800033

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v7, v8, v9}, addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3630
    :cond_87
    :goto_87
    iget-object v7, p0, mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_d1

    const/4 v6, 0x1

    .line 3636
    :goto_8c
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # invokes: Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$2200(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v7

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_d3

    const/4 v4, 0x1

    .line 3638
    .local v4, "nonOverlay":Z
    :goto_97
    const/4 v8, 0x0

    if-eqz v4, :cond_d5

    if-eqz v6, :cond_d5

    const/4 v7, 0x1

    :goto_9d
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v7, v9, v10}, Landroid/view/WindowInsets;->consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;

    move-result-object p1

    .line 3647
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_a3
    :goto_a3
    if-eqz v2, :cond_aa

    .line 3648
    iget-object v7, p0, mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3652
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_aa
    iget-object v7, p0, mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_b6

    .line 3653
    iget-object v8, p0, mStatusGuard:Landroid/view/View;

    if-eqz v6, :cond_e0

    const/4 v7, 0x0

    :goto_b3
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3655
    :cond_b6
    return-object p1

    .line 3606
    .restart local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "mlpChanged":Z
    .restart local v5    # "rect":Landroid/graphics/Rect;
    :cond_b7
    const/4 v3, 0x0

    goto :goto_49

    .line 3619
    .restart local v3    # "newMargin":I
    :cond_b9
    iget-object v7, p0, mStatusGuard:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3621
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v8, :cond_87

    .line 3622
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3623
    iget-object v7, p0, mStatusGuard:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_87

    .line 3630
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_d1
    const/4 v6, 0x0

    goto :goto_8c

    .line 3636
    :cond_d3
    const/4 v4, 0x0

    goto :goto_97

    .line 3638
    .restart local v4    # "nonOverlay":Z
    :cond_d5
    const/4 v7, 0x0

    goto :goto_9d

    .line 3642
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_d7
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v7, :cond_a3

    .line 3643
    const/4 v2, 0x1

    .line 3644
    const/4 v7, 0x0

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_a3

    .line 3653
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_e0
    const/16 v7, 0x8

    goto :goto_b3
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2805
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2806
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_19

    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, mFeatureId:I

    if-gez v1, :cond_19

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_18
    return v1

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_18
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2672
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 2673
    .local v4, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2674
    .local v0, "action":I
    if-nez v0, :cond_2c

    move v3, v5

    .line 2676
    .local v3, "isDown":Z
    :goto_d
    if-eqz v3, :cond_4e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_4e

    .line 2679
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$1000(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v7

    if-lez v7, :cond_2e

    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$1000(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v7

    if-eq v7, v4, :cond_2e

    .line 2680
    invoke-virtual {p0, p1}, dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2681
    .local v2, "handled":Z
    if-eqz v2, :cond_2e

    .line 2717
    .end local v2    # "handled":Z
    :cond_2b
    :goto_2b
    return v5

    .end local v3    # "isDown":Z
    :cond_2c
    move v3, v6

    .line 2674
    goto :goto_d

    .line 2688
    .restart local v3    # "isDown":Z
    :cond_2e
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v7

    if-eqz v7, :cond_4e

    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v7, :cond_4e

    .line 2689
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v8, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v8}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v8

    # invokes: Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v7, v8, v4, p1, v6}, Lcom/android/internal/policy/PhoneWindow;->access$1200(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v7

    if-nez v7, :cond_2b

    .line 2695
    :cond_4e
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v7

    if-nez v7, :cond_79

    .line 2696
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 2697
    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_74

    iget v7, p0, mFeatureId:I

    if-gez v7, :cond_74

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2699
    .restart local v2    # "handled":Z
    :goto_66
    if-eqz v2, :cond_79

    .line 2700
    const/16 v7, 0x52

    if-ne v4, v7, :cond_2b

    if-nez v3, :cond_2b

    .line 2701
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # setter for: Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7, v6}, Lcom/android/internal/policy/PhoneWindow;->access$1002(Lcom/android/internal/policy/PhoneWindow;I)I

    goto :goto_2b

    .line 2697
    .end local v2    # "handled":Z
    :cond_74
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_66

    .line 2717
    .end local v1    # "cb":Landroid/view/Window$Callback;
    :cond_79
    if-eqz v3, :cond_88

    iget-object v5, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    iget v6, p0, mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_2b

    :cond_88
    iget-object v5, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    iget v6, p0, mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_2b
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2725
    iget-object v5, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-eqz v5, :cond_2d

    .line 2726
    iget-object v5, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    # invokes: Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v6, v7, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->access$1200(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 2728
    .local v1, "handled":Z
    if-eqz v1, :cond_2d

    .line 2729
    iget-object v4, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 2730
    iget-object v4, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v4

    iput-boolean v3, v4, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 2758
    :cond_2c
    :goto_2c
    return v3

    .line 2737
    .end local v1    # "handled":Z
    :cond_2d
    iget-object v5, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2738
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_6c

    iget-object v5, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_6c

    iget v5, p0, mFeatureId:I

    if-gez v5, :cond_6c

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2740
    .restart local v1    # "handled":Z
    :goto_45
    if-nez v1, :cond_2c

    .line 2748
    iget-object v5, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # invokes: Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v5, v4, v4}, Lcom/android/internal/policy/PhoneWindow;->access$1300(Lcom/android/internal/policy/PhoneWindow;IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2749
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_6a

    iget-object v5, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-nez v5, :cond_6a

    .line 2750
    iget-object v5, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v2, p1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 2751
    iget-object v5, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    # invokes: Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v2, v6, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->access$1200(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 2753
    iput-boolean v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 2754
    if-nez v1, :cond_2c

    :cond_6a
    move v3, v4

    .line 2758
    goto :goto_2c

    .line 2738
    .end local v1    # "handled":Z
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_6c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_45
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3038
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3039
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_18

    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 3040
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3041
    const/4 v1, 0x1

    .line 3044
    :goto_17
    return v1

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_17
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 2764
    iget v2, p0, mSpenUspLevel:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_14

    .line 2765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2766
    .local v0, "action":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    .line 2767
    packed-switch v0, :pswitch_data_5c

    .line 2791
    .end local v0    # "action":I
    :cond_14
    :goto_14
    iget-object v2, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 2792
    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_57

    iget-object v2, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_57

    iget v2, p0, mFeatureId:I

    if-gez v2, :cond_57

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_2c
    return v2

    .line 2769
    .end local v1    # "cb":Landroid/view/Window$Callback;
    .restart local v0    # "action":I
    :pswitch_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_3e

    .line 2770
    const/4 v2, 0x1

    iput-boolean v2, p0, mIsPenSelectionMode:Z

    .line 2771
    const/16 v2, 0xd3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_14

    .line 2773
    :cond_3e
    iput-boolean v4, p0, mIsPenSelectionMode:Z

    goto :goto_14

    .line 2777
    :pswitch_41
    iget-boolean v2, p0, mIsPenSelectionMode:Z

    if-eqz v2, :cond_14

    .line 2778
    const/16 v2, 0xd5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_14

    .line 2781
    :pswitch_4b
    iget-boolean v2, p0, mIsPenSelectionMode:Z

    if-eqz v2, :cond_54

    .line 2782
    const/16 v2, 0xd4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2783
    :cond_54
    iput-boolean v4, p0, mIsPenSelectionMode:Z

    goto :goto_14

    .line 2792
    .end local v0    # "action":I
    .restart local v1    # "cb":Landroid/view/Window$Callback;
    :cond_57
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_2c

    .line 2767
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_4b
        :pswitch_41
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2798
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2799
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_19

    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, mFeatureId:I

    if-gez v1, :cond_19

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_18
    return v1

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_18
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3205
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3207
    iget-object v0, p0, mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 3208
    iget-object v0, p0, mMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3210
    :cond_c
    return-void
.end method

.method protected drawKnoxBadge(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, -0x1

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 2607
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_1d

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-static {v7}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 2633
    :cond_1d
    :goto_1d
    return-void

    .line 2609
    :cond_1e
    invoke-static {}, Landroid/os/PersonaManager;->isKnoxMultiwindowsSupported()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 2611
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v7, v9, :cond_1d

    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v7, v9, :cond_1d

    .line 2615
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$800(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_51

    .line 2616
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-virtual {p0, v8}, getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    # setter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7, v8}, Lcom/android/internal/policy/PhoneWindow;->access$802(Lcom/android/internal/policy/PhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2618
    :cond_51
    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v6

    .line 2619
    .local v6, "width":I
    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v3

    .line 2620
    .local v3, "height":I
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$800(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 2621
    .local v1, "badgeW":I
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$800(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 2623
    .local v0, "badgeH":I
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_bc

    .line 2624
    invoke-virtual {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2625
    .local v2, "bounds":Landroid/graphics/Rect;
    int-to-float v7, v0

    int-to-float v8, v3

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float v4, v7, v8

    .line 2626
    .local v4, "resizedHeight":F
    int-to-float v7, v1

    int-to-float v8, v6

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float v5, v7, v8

    .line 2627
    .local v5, "resizedWidth":F
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$800(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    float-to-double v8, v5

    add-double/2addr v8, v12

    double-to-int v8, v8

    sub-int v8, v6, v8

    float-to-double v10, v4

    add-double/2addr v10, v12

    double-to-int v9, v10

    sub-int v9, v3, v9

    invoke-virtual {v7, v8, v9, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2631
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "resizedHeight":F
    .end local v5    # "resizedWidth":F
    :goto_b1
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$800(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1d

    .line 2629
    :cond_bc
    iget-object v7, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->badgeIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->access$800(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    sub-int v8, v6, v1

    sub-int v9, v3, v0

    invoke-virtual {v7, v8, v9, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_b1
.end method

.method public finishChanging()V
    .registers 2

    .prologue
    .line 3333
    const/4 v0, 0x0

    iput-boolean v0, p0, mChanging:Z

    .line 3334
    invoke-direct {p0}, drawableChanged()V

    .line 3335
    return-void
.end method

.method protected getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const v4, 0x10803ee

    .line 2636
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2637
    .local v0, "mUm":Landroid/os/UserManager;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "knox_name"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2638
    .local v1, "userName":Ljava/lang/String;
    if-eqz v1, :cond_43

    .line 2639
    sget-object v2, Landroid/os/PersonaManager;->SECOND_KNOX_NAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2640
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10803ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2645
    :goto_35
    return-object v2

    .line 2642
    :cond_36
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_35

    .line 2645
    :cond_43
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_35
.end method

.method public isTransitionGroup()Z
    .registers 2

    .prologue
    .line 3388
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 3376
    iget-object v0, p0, mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3377
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object p1

    .line 3378
    invoke-direct {p0, p1}, updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 3379
    invoke-direct {p0, p1}, updateNavigationGuard(Landroid/view/WindowInsets;)V

    .line 3380
    invoke-virtual {p0}, getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 3381
    invoke-direct {p0}, drawableChanged()V

    .line 3383
    :cond_1e
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3778
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 3780
    invoke-virtual {p0}, updateWindowResizeState()V

    .line 3782
    iget-object v2, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3783
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1e

    iget-object v2, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1e

    iget v2, p0, mFeatureId:I

    if-gez v2, :cond_1e

    .line 3784
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 3787
    :cond_1e
    iget v2, p0, mFeatureId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_28

    .line 3795
    iget-object v2, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # invokes: Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$2400(Lcom/android/internal/policy/PhoneWindow;)V

    .line 3799
    :cond_28
    invoke-direct {p0}, isFloatingMenuEnabled()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 3801
    invoke-virtual {p0}, getRootView()Landroid/view/View;

    move-result-object v1

    .line 3802
    .local v1, "rootView":Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v2, :cond_40

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 3804
    invoke-virtual {p0, v4}, setFloatingMenuEnabled(Z)V

    .line 3817
    .end local v1    # "rootView":Landroid/view/View;
    :cond_3f
    :goto_3f
    return-void

    .line 3808
    .restart local v1    # "rootView":Landroid/view/View;
    :cond_40
    invoke-virtual {p0}, getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3f

    iget-object v2, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 3809
    const-string v2, "PhoneWindow"

    const-string v3, "Change the child order of the floating menu button."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    iget-object v2, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, removeView(Landroid/view/View;)V

    .line 3812
    iget-object v2, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, addView(Landroid/view/View;)V

    goto :goto_3f
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 3852
    iget v0, p0, mFeatureId:I

    if-ltz v0, :cond_9

    .line 3853
    iget-object v0, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->closeAllPanels()V

    .line 3855
    :cond_9
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2651
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2654
    iget-object v4, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mLastBackgroundResource:I
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow;->access$900(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v4

    const v5, 0x10809cd

    if-ne v4, v5, :cond_3e

    .line 2655
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2656
    .local v0, "currWindowBackground":Landroid/graphics/drawable/Drawable;
    instance-of v4, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v4, :cond_3e

    move-object v2, v0

    .line 2657
    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    .line 2658
    .local v2, "statefulWindowBackground":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v3

    .line 2659
    .local v3, "states":[I
    if-eqz v3, :cond_3e

    array-length v4, v3

    if-lez v4, :cond_3e

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_3e

    .line 2660
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mLastBackgroundResource:I
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->access$900(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2661
    .local v1, "newBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3e

    .line 2662
    invoke-virtual {p0, v1}, setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2668
    .end local v0    # "currWindowBackground":Landroid/graphics/drawable/Drawable;
    .end local v1    # "newBackground":Landroid/graphics/drawable/Drawable;
    .end local v2    # "statefulWindowBackground":Landroid/graphics/drawable/StateListDrawable;
    .end local v3    # "states":[I
    :cond_3e
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3821
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 3823
    iget-object v2, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3824
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_14

    iget v2, p0, mFeatureId:I

    if-gez v2, :cond_14

    .line 3825
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 3828
    :cond_14
    iget-object v2, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$2500(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 3829
    iget-object v2, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$2500(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 3832
    :cond_25
    iget-object v2, p0, mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_3d

    .line 3833
    iget-object v2, p0, mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3834
    iget-object v2, p0, mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3835
    iget-object v2, p0, mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3837
    :cond_3b
    iput-object v4, p0, mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 3839
    :cond_3d
    iget-object v2, p0, mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    if-eqz v2, :cond_48

    .line 3840
    iget-object v2, p0, mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 3841
    iput-object v4, p0, mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 3844
    :cond_48
    iget-object v2, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # invokes: Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-static {v2, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->access$1300(Lcom/android/internal/policy/PhoneWindow;IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 3845
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_5d

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_5d

    iget v2, p0, mFeatureId:I

    if-gez v2, :cond_5d

    .line 3846
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 3848
    :cond_5d
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 2601
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2602
    iget-object v0, p0, mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$600(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/BackgroundFallback;->draw(Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 2603
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2855
    const-string/jumbo v11, "sugar"

    const-string/jumbo v12, "ro.build.scafe.syrup"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_33

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_33

    .line 2856
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "input_method"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 2858
    .local v5, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_80

    .line 2859
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/view/inputmethod/InputMethodManager;->setWACOMPen(Z)V

    .line 2860
    const/4 v11, 0x1

    # setter for: Lcom/android/internal/policy/PhoneWindow;->penState:Z
    invoke-static {v11}, Lcom/android/internal/policy/PhoneWindow;->access$1402(Z)Z

    .line 2870
    .end local v5    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_33
    :goto_33
    iget v11, p0, mDisableSpenGesture:I

    if-nez v11, :cond_54

    .line 2871
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_54

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_54

    .line 2874
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    const/16 v12, 0xd4

    if-ne v11, v12, :cond_54

    .line 2875
    const/16 v11, 0xd6

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2887
    :cond_54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    and-int/lit16 v11, v11, 0xff

    packed-switch v11, :pswitch_data_128

    .line 2941
    :cond_5d
    :goto_5d
    :pswitch_5d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2942
    .local v0, "action":I
    iget v11, p0, mFeatureId:I

    if-ltz v11, :cond_125

    .line 2943
    if-nez v0, :cond_125

    .line 2944
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v9, v11

    .line 2945
    .local v9, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v10, v11

    .line 2946
    .local v10, "y":I
    invoke-direct {p0, v9, v10}, isOutOfBounds(II)Z

    move-result v11

    if-eqz v11, :cond_125

    .line 2947
    iget-object v11, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    iget v12, p0, mFeatureId:I

    invoke-virtual {v11, v12}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 2948
    const/4 v11, 0x1

    .line 2954
    .end local v9    # "x":I
    .end local v10    # "y":I
    :goto_7f
    return v11

    .line 2862
    .end local v0    # "action":I
    .restart local v5    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_80
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_33

    .line 2863
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/view/inputmethod/InputMethodManager;->setWACOMPen(Z)V

    .line 2864
    const/4 v11, 0x0

    # setter for: Lcom/android/internal/policy/PhoneWindow;->penState:Z
    invoke-static {v11}, Lcom/android/internal/policy/PhoneWindow;->access$1402(Z)Z

    goto :goto_33

    .line 2892
    .end local v5    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    iput v11, p0, initialTouchX:F

    goto :goto_5d

    .line 2897
    :pswitch_98
    const/4 v11, 0x0

    iput v11, p0, initialTouchX:F

    .line 2898
    iget v11, p0, boundaryTouchX:F

    const/high16 v12, 0x42c80000    # 100.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_5d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5d

    .line 2899
    const/4 v3, 0x0

    .line 2900
    .local v3, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 2901
    .local v6, "list":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2902
    .local v1, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Lcom/android/internal/policy/PhoneWindow$DecorView$1;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$1;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    .line 2908
    .local v7, "mFileNameFilter":Ljava/io/FilenameFilter;
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    sget-object v11, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v11}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2910
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3, v7}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v6

    .line 2911
    if-eqz v6, :cond_5d

    .line 2912
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2913
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\."

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2914
    .local v8, "splits":[Ljava/lang/String;
    array-length v11, v8

    add-int/lit8 v11, v11, -0x1

    aget-object v11, v8, v11

    invoke-interface {v1, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5d

    .line 2915
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.app.elastic"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2916
    .local v4, "i":Landroid/content/Intent;
    const-string v11, "appDir"

    array-length v12, v8

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v8, v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2917
    const/high16 v11, 0x10000000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2918
    const/high16 v11, 0x20000000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2919
    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2921
    :try_start_102
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11, v4}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_107
    .catch Landroid/content/ActivityNotFoundException; {:try_start_102 .. :try_end_107} :catch_109

    goto/16 :goto_5d

    .line 2922
    :catch_109
    move-exception v2

    .line 2923
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v11, "PhoneWindow"

    const-string v12, "No activity to launch elastic."

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5d

    .line 2932
    .end local v1    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "i":Landroid/content/Intent;
    .end local v6    # "list":[Ljava/lang/String;
    .end local v7    # "mFileNameFilter":Ljava/io/FilenameFilter;
    .end local v8    # "splits":[Ljava/lang/String;
    :pswitch_113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5d

    .line 2933
    iget v11, p0, initialTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    sub-float/2addr v11, v12

    iput v11, p0, boundaryTouchX:F

    goto/16 :goto_5d

    .line 2954
    .restart local v0    # "action":I
    :cond_125
    const/4 v11, 0x0

    goto/16 :goto_7f

    .line 2887
    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_5d
        :pswitch_113
        :pswitch_5d
        :pswitch_5d
        :pswitch_91
        :pswitch_98
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 3193
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 3194
    iget-object v0, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, getOutsets(Landroid/graphics/Rect;)V

    .line 3195
    iget-object v0, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_22

    .line 3196
    iget-object v0, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, offsetLeftAndRight(I)V

    .line 3198
    :cond_22
    iget-object v0, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_38

    .line 3199
    iget-object v0, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, offsetTopAndBottom(I)V

    .line 3201
    :cond_38
    return-void
.end method

.method protected onMeasure(II)V
    .registers 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 3093
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 3094
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1b8

    const/4 v7, 0x1

    .line 3096
    .local v7, "isPortrait":Z
    :goto_1b
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 3097
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 3099
    .local v5, "heightMode":I
    const/4 v2, 0x0

    .line 3100
    .local v2, "fixedWidth":Z
    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_66

    .line 3101
    if-eqz v7, :cond_1bb

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 3102
    .local v14, "tvw":Landroid/util/TypedValue;
    :goto_38
    if-eqz v14, :cond_66

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    if-eqz v19, :cond_66

    .line 3104
    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c7

    .line 3105
    invoke-virtual {v14, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .line 3112
    .local v15, "w":I
    :goto_53
    if-lez v15, :cond_66

    .line 3113
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 3114
    .local v18, "widthSize":I
    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 3116
    const/4 v2, 0x1

    .line 3121
    .end local v14    # "tvw":Landroid/util/TypedValue;
    .end local v15    # "w":I
    .end local v18    # "widthSize":I
    :cond_66
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v5, v0, :cond_a3

    .line 3122
    if-eqz v7, :cond_1f5

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 3123
    .local v13, "tvh":Landroid/util/TypedValue;
    :goto_78
    if-eqz v13, :cond_a3

    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    if-eqz v19, :cond_a3

    .line 3125
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_201

    .line 3126
    invoke-virtual {v13, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v3, v0

    .line 3132
    .local v3, "h":I
    :goto_93
    if-lez v3, :cond_a3

    .line 3133
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 3134
    .local v6, "heightSize":I
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3140
    .end local v3    # "h":I
    .end local v6    # "heightSize":I
    .end local v13    # "tvh":Landroid/util/TypedValue;
    :cond_a3
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, getOutsets(Landroid/graphics/Rect;)V

    .line 3141
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    if-gtz v19, :cond_d8

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    if-lez v19, :cond_10c

    .line 3142
    :cond_d8
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 3143
    .local v11, "mode":I
    if-eqz v11, :cond_10c

    .line 3144
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 3145
    .local v4, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v19, v19, v4

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3149
    .end local v4    # "height":I
    .end local v11    # "mode":I
    :cond_10c
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    if-gtz v19, :cond_130

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    if-lez v19, :cond_164

    .line 3150
    :cond_130
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 3151
    .restart local v11    # "mode":I
    if-eqz v11, :cond_164

    .line 3152
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 3153
    .local v16, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v16

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/PhoneWindow;->access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 3158
    .end local v11    # "mode":I
    .end local v16    # "width":I
    :cond_164
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 3160
    invoke-virtual/range {p0 .. p0}, getMeasuredWidth()I

    move-result v16

    .line 3161
    .restart local v16    # "width":I
    const/4 v8, 0x0

    .line 3163
    .local v8, "measure":Z
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 3165
    if-nez v2, :cond_1b2

    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1b2

    .line 3166
    if-eqz v7, :cond_22f

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 3167
    .local v12, "tv":Landroid/util/TypedValue;
    :goto_18c
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    if-eqz v19, :cond_1b2

    .line 3169
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_23b

    .line 3170
    invoke-virtual {v12, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v10, v0

    .line 3177
    .local v10, "min":I
    :goto_1a5
    move/from16 v0, v16

    if-ge v0, v10, :cond_1b2

    .line 3178
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 3179
    const/4 v8, 0x1

    .line 3186
    .end local v10    # "min":I
    .end local v12    # "tv":Landroid/util/TypedValue;
    :cond_1b2
    if-eqz v8, :cond_1b7

    .line 3187
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 3189
    :cond_1b7
    return-void

    .line 3094
    .end local v2    # "fixedWidth":Z
    .end local v5    # "heightMode":I
    .end local v7    # "isPortrait":Z
    .end local v8    # "measure":Z
    .end local v16    # "width":I
    .end local v17    # "widthMode":I
    :cond_1b8
    const/4 v7, 0x0

    goto/16 :goto_1b

    .line 3101
    .restart local v2    # "fixedWidth":Z
    .restart local v5    # "heightMode":I
    .restart local v7    # "isPortrait":Z
    .restart local v17    # "widthMode":I
    :cond_1bb
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_38

    .line 3106
    .restart local v14    # "tvw":Landroid/util/TypedValue;
    :cond_1c7
    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1f2

    .line 3107
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .restart local v15    # "w":I
    goto/16 :goto_53

    .line 3109
    .end local v15    # "w":I
    :cond_1f2
    const/4 v15, 0x0

    .restart local v15    # "w":I
    goto/16 :goto_53

    .line 3122
    .end local v14    # "tvw":Landroid/util/TypedValue;
    .end local v15    # "w":I
    :cond_1f5
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    goto/16 :goto_78

    .line 3127
    .restart local v13    # "tvh":Landroid/util/TypedValue;
    :cond_201
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_22c

    .line 3128
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v3, v0

    .restart local v3    # "h":I
    goto/16 :goto_93

    .line 3130
    .end local v3    # "h":I
    :cond_22c
    const/4 v3, 0x0

    .restart local v3    # "h":I
    goto/16 :goto_93

    .line 3166
    .end local v3    # "h":I
    .end local v13    # "tvh":Landroid/util/TypedValue;
    .restart local v8    # "measure":Z
    .restart local v16    # "width":I
    :cond_22f
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_18c

    .line 3171
    .restart local v12    # "tv":Landroid/util/TypedValue;
    :cond_23b
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_266

    .line 3172
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v10, v0

    .restart local v10    # "min":I
    goto/16 :goto_1a5

    .line 3174
    .end local v10    # "min":I
    :cond_266
    const/4 v10, 0x0

    .restart local v10    # "min":I
    goto/16 :goto_1a5
.end method

.method public onRootViewScrollYChanged(I)V
    .registers 2
    .param p1, "rootScrollY"    # I

    .prologue
    .line 3880
    iput p1, p0, mRootScrollY:I

    .line 3881
    invoke-direct {p0}, updateColorViewTranslations()V

    .line 3882
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2844
    invoke-virtual {p0, p1}, onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3749
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 3753
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    if-nez p1, :cond_1b

    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1000(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v1

    if-eqz v1, :cond_1b

    .line 3754
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 3757
    :cond_1b
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3758
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_32

    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_32

    iget v1, p0, mFeatureId:I

    if-gez v1, :cond_32

    .line 3759
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 3762
    :cond_32
    iget-object v1, p0, mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3b

    .line 3763
    iget-object v1, p0, mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 3765
    :cond_3b
    iget-object v1, p0, mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_44

    .line 3766
    iget-object v1, p0, mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 3768
    :cond_44
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .registers 4
    .param p1, "visible"    # I

    .prologue
    .line 3371
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 3372
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 4
    .param p1, "eventType"    # I

    .prologue
    .line 3018
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3034
    :goto_c
    return-void

    .line 3025
    :cond_d
    iget v0, p0, mFeatureId:I

    if-eqz v0, :cond_20

    iget v0, p0, mFeatureId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_20

    iget v0, p0, mFeatureId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    iget v0, p0, mFeatureId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_30

    :cond_20
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 3030
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_c

    .line 3032
    :cond_30
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_c
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3351
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3352
    invoke-virtual {p0}, getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3353
    invoke-virtual {p0}, updateWindowResizeState()V

    .line 3355
    :cond_c
    return-void
.end method

.method public setBackgroundFallback(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 2595
    iget-object v1, p0, mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    if-eqz p1, :cond_22

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_c
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2596
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_24

    iget-object v0, p0, mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p0, v0}, setWillNotDraw(Z)V

    .line 2597
    return-void

    .line 2595
    :cond_22
    const/4 v0, 0x0

    goto :goto_c

    .line 2596
    :cond_24
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public setFloatingMenuEnabled(Z)V
    .registers 9
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 3896
    const-string v2, "PhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*FMB* setFloatingMenuEnabled enable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFloatingMenuBtn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3897
    if-eqz p1, :cond_90

    .line 3898
    iget-object v2, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_32

    .line 3899
    iget-object v2, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4013
    :cond_31
    :goto_31
    return-void

    .line 3901
    :cond_32
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$FloatingMenuButton;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/PhoneWindow$FloatingMenuButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    .line 3902
    iget-object v2, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    const v3, 0x108092e

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3903
    iget-object v2, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3904
    iget-object v2, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 3905
    iget-object v2, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 3906
    iget-object v2, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/PhoneWindow$DecorView$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$3;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3987
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DecorView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$4;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    iput-object v2, p0, mFloatingMenuFakeKeyDownRunnable:Ljava/lang/Runnable;

    .line 3992
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DecorView$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$5;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    iput-object v2, p0, mFloatingMenuFakeKeyUpRunnable:Ljava/lang/Runnable;

    .line 3999
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42400000    # 48.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 4002
    .local v0, "bottomMargin":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4003
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x55

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4004
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 4005
    iget-object v2, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2, v1}, addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_31

    .line 4009
    .end local v0    # "bottomMargin":I
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_90
    iget-object v2, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_31

    .line 4010
    iget-object v2, p0, mFloatingMenuBtn:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_31
.end method

.method protected setFrame(IIII)Z
    .registers 14
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 3049
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v1

    .line 3050
    .local v1, "changed":Z
    if-eqz v1, :cond_65

    .line 3051
    iget-object v2, p0, mDrawingBounds:Landroid/graphics/Rect;

    .line 3052
    .local v2, "drawingBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, getDrawingRect(Landroid/graphics/Rect;)V

    .line 3054
    invoke-virtual {p0}, getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3055
    .local v3, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_5c

    .line 3056
    iget-object v4, p0, mFrameOffsets:Landroid/graphics/Rect;

    .line 3057
    .local v4, "frameOffsets":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 3058
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 3059
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 3060
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 3061
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3062
    iget-object v5, p0, mFramePadding:Landroid/graphics/Rect;

    .line 3063
    .local v5, "framePadding":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 3064
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 3065
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 3066
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 3069
    .end local v4    # "frameOffsets":Landroid/graphics/Rect;
    .end local v5    # "framePadding":Landroid/graphics/Rect;
    :cond_5c
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3070
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_65

    .line 3071
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3088
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawingBounds":Landroid/graphics/Rect;
    .end local v3    # "fg":Landroid/graphics/drawable/Drawable;
    :cond_65
    return v1
.end method

.method public setSurfaceFormat(I)V
    .registers 3
    .param p1, "format"    # I

    .prologue
    .line 3870
    iget-object v0, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setFormat(I)V

    .line 3871
    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .registers 4
    .param p1, "keepOn"    # Z

    .prologue
    const/16 v1, 0x80

    .line 3874
    if-eqz p1, :cond_a

    iget-object v0, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->addFlags(I)V

    .line 3876
    :goto_9
    return-void

    .line 3875
    :cond_a
    iget-object v0, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->clearFlags(I)V

    goto :goto_9
.end method

.method public setSurfaceType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 3866
    iget-object v0, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 3867
    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3338
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_13

    .line 3339
    invoke-virtual {p0, p1}, setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3340
    if-eqz p1, :cond_14

    .line 3341
    iget-object v0, p0, mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3345
    :goto_10
    invoke-direct {p0}, drawableChanged()V

    .line 3347
    :cond_13
    return-void

    .line 3343
    :cond_14
    iget-object v0, p0, mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_10
.end method

.method public setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3358
    invoke-virtual {p0}, getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_13

    .line 3359
    invoke-virtual {p0, p1}, setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 3360
    if-eqz p1, :cond_14

    .line 3361
    iget-object v0, p0, mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3365
    :goto_10
    invoke-direct {p0}, drawableChanged()V

    .line 3367
    :cond_13
    return-void

    .line 3363
    :cond_14
    iget-object v0, p0, mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_10
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 6
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 3215
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    if-nez v1, :cond_43

    .line 3216
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->access$1602(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 3217
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 3222
    :goto_23
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    .line 3224
    .local v0, "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    if-eqz v0, :cond_4d

    .line 3225
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 3231
    :cond_3a
    :goto_3a
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # setter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->access$1702(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 3232
    if-eqz v0, :cond_5f

    const/4 v1, 0x1

    :goto_42
    return v1

    .line 3219
    .end local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_43
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    goto :goto_23

    .line 3226
    .restart local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_4d
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1700(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 3229
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$1700(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    goto :goto_3a

    .line 3232
    :cond_5f
    const/4 v1, 0x0

    goto :goto_42
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 3249
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 3254
    invoke-direct {p0, p0, p1, p2}, startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 3238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    .line 3244
    invoke-direct {p0, p1, p2, p3}, startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startChanging()V
    .registers 2

    .prologue
    .line 3329
    const/4 v0, 0x1

    iput-boolean v0, p0, mChanging:Z

    .line 3330
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2839
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 2812
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_18

    .line 2813
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2815
    .local v0, "action":I
    iget-object v2, p0, mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_18

    .line 2816
    if-ne v0, v1, :cond_17

    .line 2817
    iget-object v2, p0, mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 2823
    .end local v0    # "action":I
    :cond_17
    :goto_17
    return v1

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_17
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2827
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2831
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2835
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V
    .registers 22
    .param p1, "state"    # Lcom/android/internal/policy/PhoneWindow$ColorViewState;
    .param p2, "sysUiVis"    # I
    .param p3, "color"    # I
    .param p4, "size"    # I
    .param p5, "verticalBar"    # Z
    .param p6, "rightMargin"    # I
    .param p7, "animate"    # Z

    .prologue
    .line 3499
    if-lez p4, :cond_b0

    iget v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->systemUiHideFlag:I

    and-int v10, v10, p2

    if-nez v10, :cond_b0

    iget-object v10, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v11, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->hideWindowFlag:I

    and-int/2addr v10, v11

    if-nez v10, :cond_b0

    iget-object v10, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, -0x80000000

    and-int/2addr v10, v11

    if-eqz v10, :cond_b0

    const/4 v10, 0x1

    :goto_23
    iput-boolean v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->present:Z

    .line 3502
    iget-boolean v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->present:Z

    if-eqz v10, :cond_b3

    const/high16 v10, -0x1000000

    and-int v10, v10, p3

    if-eqz v10, :cond_b3

    iget-object v10, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v11, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->translucentFlag:I

    and-int/2addr v10, v11

    if-nez v10, :cond_b3

    const/4 v6, 0x1

    .line 3506
    .local v6, "show":Z
    :goto_3d
    const/4 v9, 0x0

    .line 3507
    .local v9, "visibilityChanged":Z
    iget-object v7, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .line 3509
    .local v7, "view":Landroid/view/View;
    if-eqz p5, :cond_b5

    const/4 v4, -0x1

    .line 3510
    .local v4, "resolvedHeight":I
    :goto_43
    if-eqz p5, :cond_b8

    move/from16 v5, p4

    .line 3511
    .local v5, "resolvedWidth":I
    :goto_47
    if-eqz p5, :cond_ba

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->horizontalGravity:I

    .line 3513
    .local v3, "resolvedGravity":I
    :goto_4b
    if-nez v7, :cond_bd

    .line 3514
    if-eqz v6, :cond_7e

    .line 3515
    new-instance v7, Landroid/view/View;

    .end local v7    # "view":Landroid/view/View;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .restart local v7    # "view":Landroid/view/View;
    iput-object v7, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .line 3516
    move/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3517
    iget-object v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->transitionName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 3518
    iget v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->id:I

    invoke-virtual {v7, v10}, Landroid/view/View;->setId(I)V

    .line 3519
    const/4 v9, 0x1

    .line 3520
    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3521
    const/4 v10, 0x0

    iput v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    .line 3523
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 3525
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, p6

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3526
    invoke-virtual {p0, v7, v2}, addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3527
    invoke-direct {p0}, updateColorViewTranslations()V

    .line 3546
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7e
    :goto_7e
    if-eqz v9, :cond_af

    .line 3547
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3548
    if-eqz p7, :cond_117

    .line 3549
    if-eqz v6, :cond_f8

    .line 3550
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_99

    .line 3551
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3552
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setAlpha(F)V

    .line 3554
    :cond_99
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget-object v11, p0, mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget v11, p0, mBarEnterExitDuration:I

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 3574
    :cond_af
    :goto_af
    return-void

    .line 3499
    .end local v3    # "resolvedGravity":I
    .end local v4    # "resolvedHeight":I
    .end local v5    # "resolvedWidth":I
    .end local v6    # "show":Z
    .end local v7    # "view":Landroid/view/View;
    .end local v9    # "visibilityChanged":Z
    :cond_b0
    const/4 v10, 0x0

    goto/16 :goto_23

    .line 3502
    :cond_b3
    const/4 v6, 0x0

    goto :goto_3d

    .restart local v6    # "show":Z
    .restart local v7    # "view":Landroid/view/View;
    .restart local v9    # "visibilityChanged":Z
    :cond_b5
    move/from16 v4, p4

    .line 3509
    goto :goto_43

    .line 3510
    .restart local v4    # "resolvedHeight":I
    :cond_b8
    const/4 v5, -0x1

    goto :goto_47

    .line 3511
    .restart local v5    # "resolvedWidth":I
    :cond_ba
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->verticalGravity:I

    goto :goto_4b

    .line 3530
    .restart local v3    # "resolvedGravity":I
    :cond_bd
    if-eqz v6, :cond_f4

    const/4 v8, 0x0

    .line 3531
    .local v8, "vis":I
    :goto_c0
    iget v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    if-eq v10, v8, :cond_f6

    const/4 v9, 0x1

    .line 3532
    :goto_c5
    iput v8, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    .line 3533
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 3534
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v10, v4, :cond_df

    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v10, v5, :cond_df

    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v10, v3, :cond_df

    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v0, p6

    if-eq v10, v0, :cond_ec

    .line 3536
    :cond_df
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3537
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3538
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3539
    move/from16 v0, p6

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3540
    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3542
    :cond_ec
    if-eqz v6, :cond_7e

    .line 3543
    move/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_7e

    .line 3530
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "vis":I
    :cond_f4
    const/4 v8, 0x4

    goto :goto_c0

    .line 3531
    .restart local v8    # "vis":I
    :cond_f6
    const/4 v9, 0x0

    goto :goto_c5

    .line 3557
    .end local v8    # "vis":I
    :cond_f8
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget-object v11, p0, mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget v11, p0, mBarEnterExitDuration:I

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    new-instance v11, Lcom/android/internal/policy/PhoneWindow$DecorView$2;

    invoke-direct {v11, p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView$2;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Lcom/android/internal/policy/PhoneWindow$ColorViewState;)V

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_af

    .line 3570
    :cond_117
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v7, v10}, Landroid/view/View;->setAlpha(F)V

    .line 3571
    if-eqz v6, :cond_123

    const/4 v10, 0x0

    :goto_11f
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_af

    :cond_123
    const/4 v10, 0x4

    goto :goto_11f
.end method

.method updateWindowResizeState()V
    .registers 4

    .prologue
    .line 3771
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3772
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    :cond_d
    const/4 v1, 0x1

    :goto_e
    invoke-virtual {p0, v1}, hackTurnOffWindowResizeAnim(Z)V

    .line 3774
    return-void

    .line 3772
    :cond_12
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .registers 2

    .prologue
    .line 3862
    iget v0, p0, mFeatureId:I

    if-gez v0, :cond_9

    iget-object v0, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .registers 2

    .prologue
    .line 3858
    iget v0, p0, mFeatureId:I

    if-gez v0, :cond_9

    iget-object v0, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
