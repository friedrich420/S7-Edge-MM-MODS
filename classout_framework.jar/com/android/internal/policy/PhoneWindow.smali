.class public Lcom/android/internal/policy/PhoneWindow;
.super Landroid/view/Window;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$FloatingMenuButton;,
        Lcom/android/internal/policy/PhoneWindow$ColorViewState;,
        Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;,
        Lcom/android/internal/policy/PhoneWindow$RotationWatcher;,
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$DecorView;,
        Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_TAG:Ljava/lang/String; = "android:ActionBar"

.field private static final CUSTOM_TITLE_COMPATIBLE_FEATURES:I = 0x34c1

.field private static final DEFAULT_BACKGROUND_FADE_DURATION_MS:I = 0x12c

.field private static final EXTRA_LAUNCHER_ACTION:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field static final FLAG_RESOURCE_SET_ICON:I = 0x1

.field static final FLAG_RESOURCE_SET_ICON_FALLBACK:I = 0x4

.field static final FLAG_RESOURCE_SET_LOGO:I = 0x2

.field private static final FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field private static final MENU_LONG_POLICY_LAUNCH_SFINDER:Ljava/lang/String; = "SFINDER"

.field private static final PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final SWEEP_OPEN_MENU:Z = false

.field private static final TAG:Ljava/lang/String; = "PhoneWindow"

.field private static final USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final VIEWS_TAG:Ljava/lang/String; = "android:views"

.field private static mSFinderEnabled:Z

.field private static mSFinderFeatureCached:Z

.field private static penState:Z

.field static final sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;


# instance fields
.field private badgeIcon:Landroid/graphics/drawable/Drawable;

.field private mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

.field private mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field private mAlwaysReadCloseOnTouchAttr:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundFadeDurationMillis:J

.field private mBackgroundFallbackResource:I

.field private mBackgroundResource:I

.field private mCircularProgressBar:Landroid/widget/ProgressBar;

.field private mClipToOutline:Z

.field private mClosingActionMenu:Z

.field private mContentParent:Landroid/view/ViewGroup;

.field private mContentRoot:Landroid/view/ViewGroup;

.field private mContentScene:Landroid/transition/Scene;

.field private mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

.field private mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

.field private mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

.field private mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

.field private mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mExitTransition:Landroid/transition/Transition;

.field mFixedHeightMajor:Landroid/util/TypedValue;

.field mFixedHeightMinor:Landroid/util/TypedValue;

.field mFixedWidthMajor:Landroid/util/TypedValue;

.field mFixedWidthMinor:Landroid/util/TypedValue;

.field private mForcedNavigationBarColor:Z

.field private mForcedStatusBarColor:Z

.field private mFrameResource:I

.field private mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field mIconRes:I

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mIsFloating:Z

.field private mIsStartingWindow:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastBackgroundResource:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftIconView:Landroid/widget/ImageView;

.field mLogoRes:I

.field private mMediaController:Landroid/media/session/MediaController;

.field final mMinWidthMajor:Landroid/util/TypedValue;

.field final mMinWidthMinor:Landroid/util/TypedValue;

.field private mNavigationBarColor:I

.field mOutsetBottom:Landroid/util/TypedValue;

.field private mOutsets:Landroid/graphics/Rect;

.field private mPanelChordingKey:I

.field private mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

.field private mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field private mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field private mReenterTransition:Landroid/transition/Transition;

.field mResourcesSetFlags:I

.field private mReturnTransition:Landroid/transition/Transition;

.field private mRightIconView:Landroid/widget/ImageView;

.field private mSharedElementEnterTransition:Landroid/transition/Transition;

.field private mSharedElementExitTransition:Landroid/transition/Transition;

.field private mSharedElementReenterTransition:Landroid/transition/Transition;

.field private mSharedElementReturnTransition:Landroid/transition/Transition;

.field private mSharedElementsUseOverlay:Ljava/lang/Boolean;

.field private mStatusBarColor:I

.field mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTextColor:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTransitionManager:Landroid/transition/TransitionManager;

.field private mUiOptions:I

.field private mVolumeControlStreamType:I

.field private mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 208
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 368
    sput-boolean v1, penState:Z

    .line 383
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;-><init>()V

    sput-object v0, sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    .line 5890
    sput-boolean v1, mSFinderFeatureCached:Z

    .line 5891
    sput-boolean v1, mSFinderEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 386
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 214
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;I)V

    iput-object v0, p0, mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    .line 216
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, mMinWidthMajor:Landroid/util/TypedValue;

    .line 217
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, mMinWidthMinor:Landroid/util/TypedValue;

    .line 291
    iput v2, p0, mLastBackgroundResource:I

    .line 292
    iput v2, p0, mBackgroundResource:I

    .line 293
    iput v2, p0, mBackgroundFallbackResource:I

    .line 302
    iput v2, p0, mFrameResource:I

    .line 304
    iput v2, p0, mTextColor:I

    .line 305
    iput v2, p0, mStatusBarColor:I

    .line 306
    iput v2, p0, mNavigationBarColor:I

    .line 307
    iput-boolean v2, p0, mForcedStatusBarColor:Z

    .line 308
    iput-boolean v2, p0, mForcedNavigationBarColor:Z

    .line 310
    iput-object v3, p0, mTitle:Ljava/lang/CharSequence;

    .line 312
    iput v2, p0, mTitleColor:I

    .line 314
    iput-boolean v2, p0, mAlwaysReadCloseOnTouchAttr:Z

    .line 320
    const/high16 v0, -0x80000000

    iput v0, p0, mVolumeControlStreamType:I

    .line 330
    iput v2, p0, mUiOptions:I

    .line 337
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$1;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v0, p0, mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 349
    iput-object v3, p0, mEnterTransition:Landroid/transition/Transition;

    .line 350
    sget-object v0, USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, mReturnTransition:Landroid/transition/Transition;

    .line 351
    iput-object v3, p0, mExitTransition:Landroid/transition/Transition;

    .line 352
    sget-object v0, USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, mReenterTransition:Landroid/transition/Transition;

    .line 353
    iput-object v3, p0, mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 354
    sget-object v0, USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 355
    iput-object v3, p0, mSharedElementExitTransition:Landroid/transition/Transition;

    .line 356
    sget-object v0, USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 359
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mBackgroundFadeDurationMillis:J

    .line 363
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mOutsets:Landroid/graphics/Rect;

    .line 376
    iput-object v3, p0, badgeIcon:Landroid/graphics/drawable/Drawable;

    .line 387
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, mLayoutInflater:Landroid/view/LayoutInflater;

    .line 388
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/PhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    iget v0, p0, mInvalidatePanelMenuFeatures:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/PhoneWindow;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 194
    iput p1, p0, mInvalidatePanelMenuFeatures:I

    return p1
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/PhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    iget v0, p0, mPanelChordingKey:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/PhoneWindow;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 194
    iput p1, p0, mPanelChordingKey:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/PhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, mInvalidatePanelMenuPosted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    iget-object v0, p0, mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/KeyEvent;
    .param p4, "x4"    # I

    .prologue
    .line 194
    invoke-direct {p0, p1, p2, p3, p4}, performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/PhoneWindow;IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1402(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 194
    sput-boolean p0, penState:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    iget-object v0, p0, mOutsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    iget-object v0, p0, mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/view/menu/ContextMenuBuilder;

    .prologue
    .line 194
    iput-object p1, p0, mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    iget-object v0, p0, mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/view/menu/MenuDialogHelper;

    .prologue
    .line 194
    iput-object p1, p0, mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/PhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    iget-boolean v0, p0, mIsFloating:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/PhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    iget v0, p0, mNavigationBarColor:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/PhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    iget v0, p0, mStatusBarColor:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/PhoneWindow;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 194
    iput-object p1, p0, mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/PhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    invoke-virtual {p0}, getLocalFeatures()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/PhoneWindow;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 194
    invoke-virtual {p0, p1}, setDefaultWindowFormat(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    invoke-direct {p0}, openPanelsAfterRestore()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    invoke-direct {p0}, dismissContextMenu()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/PhoneWindow;ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p3, "x3"    # Landroid/view/Menu;

    .prologue
    .line 194
    invoke-direct {p0, p1, p2, p3}, callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    iget-object v0, p0, mContentRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    iget-object v0, p0, mContentParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    iget-object v0, p0, badgeIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/PhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 194
    iput-object p1, p0, badgeIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/PhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 194
    iget v0, p0, mLastBackgroundResource:I

    return v0
.end method

.method private adjustVolumeControlStreamTypeForKnox(I)I
    .registers 5
    .param p1, "val"    # I

    .prologue
    .line 1903
    move v1, p1

    .line 1905
    .local v1, "ret":I
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 1906
    .local v0, "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v0, :cond_12

    .line 1907
    invoke-virtual {v0}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;->getVolumeControlStream()I

    move-result v2

    packed-switch v2, :pswitch_data_1c

    .line 1921
    .end local v1    # "ret":I
    :cond_12
    :goto_12
    return v1

    .line 1909
    .restart local v1    # "ret":I
    :pswitch_13
    const/4 v1, 0x1

    goto :goto_12

    .line 1911
    :pswitch_15
    const/4 v1, 0x2

    goto :goto_12

    .line 1913
    :pswitch_17
    const/4 v1, 0x3

    goto :goto_12

    .line 1915
    :pswitch_19
    const/4 v1, 0x5

    goto :goto_12

    .line 1907
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_13
        :pswitch_15
        :pswitch_17
        :pswitch_19
    .end packed-switch
.end method

.method private adjustVolumeForRotation(I)I
    .registers 9
    .param p1, "val"    # I

    .prologue
    const/4 v6, 0x2

    .line 1879
    move v1, p1

    .line 1881
    .local v1, "ret":I
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 1882
    .local v0, "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;->getVolumeButtonRotationState()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1883
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1884
    .local v3, "windowService":Landroid/view/WindowManager;
    if-eqz v3, :cond_40

    .line 1885
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 1886
    .local v2, "rot":I
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_41

    .line 1887
    const/4 v4, 0x1

    if-eq v2, v4, :cond_3e

    if-ne v2, v6, :cond_40

    .line 1888
    :cond_3e
    mul-int/lit8 v1, v1, -0x1

    .line 1898
    .end local v2    # "rot":I
    .end local v3    # "windowService":Landroid/view/WindowManager;
    :cond_40
    :goto_40
    return v1

    .line 1891
    .restart local v2    # "rot":I
    .restart local v3    # "windowService":Landroid/view/WindowManager;
    :cond_41
    if-eq v2, v6, :cond_46

    const/4 v4, 0x3

    if-ne v2, v4, :cond_40

    .line 1892
    :cond_46
    mul-int/lit8 v1, v1, -0x1

    goto :goto_40
.end method

.method private callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 5154
    invoke-virtual {p0}, getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 5155
    .local v0, "cb":Landroid/view/Window$Callback;
    if-nez v0, :cond_7

    .line 5180
    :cond_6
    :goto_6
    return-void

    .line 5159
    :cond_7
    if-nez p3, :cond_1a

    .line 5161
    if-nez p2, :cond_16

    .line 5162
    if-ltz p1, :cond_16

    iget-object v1, p0, mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    array-length v1, v1

    if-ge p1, v1, :cond_16

    .line 5163
    iget-object v1, p0, mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    aget-object p2, v1, p1

    .line 5167
    :cond_16
    if-eqz p2, :cond_1a

    .line 5169
    iget-object p3, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 5174
    :cond_1a
    if-eqz p2, :cond_20

    iget-boolean v1, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_6

    .line 5177
    :cond_20
    invoke-virtual {p0}, isDestroyed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 5178
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_6
.end method

.method private static clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V
    .registers 2
    .param p0, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    .line 747
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 752
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    .line 753
    return-void
.end method

.method private declared-synchronized closeContextMenu()V
    .registers 2

    .prologue
    .line 1169
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_d

    .line 1170
    iget-object v0, p0, mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    .line 1171
    invoke-direct {p0}, dismissContextMenu()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 1173
    :cond_d
    monitor-exit p0

    return-void

    .line 1169
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dismissContextMenu()V
    .registers 2

    .prologue
    .line 1180
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 1182
    iget-object v0, p0, mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_10

    .line 1183
    iget-object v0, p0, mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 1184
    const/4 v0, 0x0

    iput-object v0, p0, mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 1186
    :cond_10
    monitor-exit p0

    return-void

    .line 1180
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static ensureSFinderFeatureCached(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5894
    if-eqz p0, :cond_15

    sget-boolean v0, mSFinderFeatureCached:Z

    if-nez v0, :cond_15

    .line 5895
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.findo"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, mSFinderEnabled:Z

    .line 5896
    const/4 v0, 0x1

    sput-boolean v0, mSFinderFeatureCached:Z

    .line 5898
    :cond_15
    return-void
.end method

.method private getActivityCount(Landroid/content/Intent;)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2130
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2131
    .local v1, "manager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2133
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    return v2
.end method

.method private getCircularProgressBar(Z)Landroid/widget/ProgressBar;
    .registers 4
    .param p1, "shouldInstallDecor"    # Z

    .prologue
    .line 5064
    iget-object v0, p0, mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    .line 5065
    iget-object v0, p0, mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 5074
    :goto_6
    return-object v0

    .line 5067
    :cond_7
    iget-object v0, p0, mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 5068
    invoke-direct {p0}, installDecor()V

    .line 5070
    :cond_10
    const v0, 0x102046c

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 5071
    iget-object v0, p0, mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_25

    .line 5072
    iget-object v0, p0, mCircularProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5074
    :cond_25
    iget-object v0, p0, mCircularProgressBar:Landroid/widget/ProgressBar;

    goto :goto_6
.end method

.method private getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .registers 9
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    const/4 v5, 0x0

    .line 4896
    invoke-virtual {p0}, getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_16

    .line 4897
    if-nez p2, :cond_e

    .line 4898
    const/4 v2, 0x0

    .line 4916
    :cond_d
    :goto_d
    return-object v2

    .line 4900
    :cond_e
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4904
    :cond_16
    iget-object v0, p0, mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .local v0, "ar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_1d

    array-length v3, v0

    if-gt v3, p1, :cond_2a

    .line 4905
    :cond_1d
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .line 4906
    .local v1, "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_27

    .line 4907
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4909
    :cond_27
    move-object v0, v1

    iput-object v1, p0, mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .line 4912
    .end local v1    # "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_2a
    aget-object v2, v0, p1

    .line 4913
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-nez v2, :cond_d

    .line 4914
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;-><init>(I)V

    .restart local v2    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    aput-object v2, v0, p1

    goto :goto_d
.end method

.method private getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;
    .registers 4
    .param p1, "shouldInstallDecor"    # Z

    .prologue
    .line 5078
    iget-object v0, p0, mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    .line 5079
    iget-object v0, p0, mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 5088
    :goto_6
    return-object v0

    .line 5081
    :cond_7
    iget-object v0, p0, mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 5082
    invoke-direct {p0}, installDecor()V

    .line 5084
    :cond_10
    const v0, 0x102046d

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 5085
    iget-object v0, p0, mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_25

    .line 5086
    iget-object v0, p0, mHorizontalProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5088
    :cond_25
    iget-object v0, p0, mHorizontalProgressBar:Landroid/widget/ProgressBar;

    goto :goto_6
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .prologue
    .line 2138
    iget-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_12

    .line 2139
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2142
    :cond_12
    iget-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getLeftIconView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 5046
    iget-object v0, p0, mLeftIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 5047
    iget-object v0, p0, mLeftIconView:Landroid/widget/ImageView;

    .line 5052
    :goto_6
    return-object v0

    .line 5049
    :cond_7
    iget-object v0, p0, mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    .line 5050
    invoke-direct {p0}, installDecor()V

    .line 5052
    :cond_e
    const v0, 0x102003e

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, mLeftIconView:Landroid/widget/ImageView;

    goto :goto_6
.end method

.method private getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    .line 4928
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .registers 10
    .param p1, "featureId"    # I
    .param p2, "required"    # Z
    .param p3, "convertPanelState"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v5, 0x0

    .line 4943
    invoke-virtual {p0}, getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_16

    .line 4944
    if-nez p2, :cond_e

    .line 4945
    const/4 v2, 0x0

    .line 4965
    :cond_d
    :goto_d
    return-object v2

    .line 4947
    :cond_e
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4951
    :cond_16
    iget-object v0, p0, mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .local v0, "ar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_1d

    array-length v3, v0

    if-gt v3, p1, :cond_2a

    .line 4952
    :cond_1d
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 4953
    .local v1, "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_27

    .line 4954
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4956
    :cond_27
    move-object v0, v1

    iput-object v1, p0, mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 4959
    .end local v1    # "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2a
    aget-object v2, v0, p1

    .line 4960
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_d

    .line 4961
    if-eqz p3, :cond_34

    move-object v2, p3

    :goto_31
    aput-object v2, v0, p1

    goto :goto_d

    :cond_34
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;-><init>(I)V

    goto :goto_31
.end method

.method private getRightIconView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 5092
    iget-object v0, p0, mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 5093
    iget-object v0, p0, mRightIconView:Landroid/widget/ImageView;

    .line 5098
    :goto_6
    return-object v0

    .line 5095
    :cond_7
    iget-object v0, p0, mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    .line 5096
    invoke-direct {p0}, installDecor()V

    .line 5098
    :cond_e
    const v0, 0x1020040

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, mRightIconView:Landroid/widget/ImageView;

    goto :goto_6
.end method

.method private getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .registers 9
    .param p1, "currentValue"    # Landroid/transition/Transition;
    .param p2, "defaultValue"    # Landroid/transition/Transition;
    .param p3, "id"    # I

    .prologue
    const/4 v4, -0x1

    .line 4869
    if-eq p1, p2, :cond_4

    .line 4882
    .end local p1    # "currentValue":Landroid/transition/Transition;
    :goto_3
    return-object p1

    .line 4872
    .restart local p1    # "currentValue":Landroid/transition/Transition;
    :cond_4
    invoke-virtual {p0}, getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, p3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 4873
    .local v2, "transitionId":I
    move-object v1, p2

    .line 4874
    .local v1, "transition":Landroid/transition/Transition;
    if-eq v2, v4, :cond_2d

    const/high16 v3, 0x10f0000

    if-eq v2, v3, :cond_2d

    .line 4875
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 4876
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 4877
    instance-of v3, v1, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_2d

    move-object v3, v1

    check-cast v3, Landroid/transition/TransitionSet;

    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_2d

    .line 4879
    const/4 v1, 0x0

    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    :cond_2d
    move-object p1, v1

    .line 4882
    goto :goto_3
.end method

.method private getViewRootImpl()Landroid/view/ViewRootImpl;
    .registers 4

    .prologue
    .line 1832
    iget-object v1, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v1, :cond_d

    .line 1833
    iget-object v1, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1834
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_d

    .line 1835
    return-object v0

    .line 1838
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "view not added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getZoomKeyController()Lcom/android/internal/policy/samsung/ZoomKeyController;
    .registers 3

    .prologue
    .line 5882
    iget-object v0, p0, mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    if-nez v0, :cond_f

    .line 5883
    new-instance v0, Lcom/android/internal/policy/samsung/ZoomKeyController;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/policy/samsung/ZoomKeyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    .line 5885
    :cond_f
    iget-object v0, p0, mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    return-object v0
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .registers 8
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v4, 0x4

    .line 1755
    invoke-virtual {p0}, getLocalFeatures()I

    move-result v1

    .line 1756
    .local v1, "features":I
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1757
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1758
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_27

    if-eqz p2, :cond_27

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_27

    .line 1761
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1762
    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1764
    :cond_27
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_39

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_39

    .line 1766
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1767
    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1769
    :cond_39
    return-void
.end method

.method private installDecor()V
    .registers 23

    .prologue
    .line 4674
    move-object/from16 v0, p0

    iget-object v0, v0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    if-nez v18, :cond_47

    .line 4675
    invoke-virtual/range {p0 .. p0}, generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    .line 4676
    move-object/from16 v0, p0

    iget-object v0, v0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    const/high16 v19, 0x40000

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setDescendantFocusability(I)V

    .line 4677
    move-object/from16 v0, p0

    iget-object v0, v0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setIsRootNamespace(Z)V

    .line 4678
    move-object/from16 v0, p0

    iget-boolean v0, v0, mInvalidatePanelMenuPosted:Z

    move/from16 v18, v0

    if-nez v18, :cond_47

    move-object/from16 v0, p0

    iget v0, v0, mInvalidatePanelMenuFeatures:I

    move/from16 v18, v0

    if-eqz v18, :cond_47

    .line 4679
    move-object/from16 v0, p0

    iget-object v0, v0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/PhoneWindow$DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4682
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, mContentParent:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    if-nez v18, :cond_3d5

    .line 4683
    move-object/from16 v0, p0

    iget-object v0, v0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mContentParent:Landroid/view/ViewGroup;

    .line 4686
    move-object/from16 v0, p0

    iget-object v0, v0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/PhoneWindow$DecorView;->makeOptionalFitsSystemWindows()V

    .line 4688
    move-object/from16 v0, p0

    iget-object v0, v0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    const v19, 0x102046e

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/PhoneWindow$DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/DecorContentParent;

    .line 4691
    .local v9, "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    if-eqz v9, :cond_419

    .line 4692
    move-object/from16 v0, p0

    iput-object v9, v0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 4693
    move-object/from16 v0, p0

    iget-object v0, v0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, getCallback()Landroid/view/Window$Callback;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 4694
    move-object/from16 v0, p0

    iget-object v0, v0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/widget/DecorContentParent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v18

    if-nez v18, :cond_a9

    .line 4695
    move-object/from16 v0, p0

    iget-object v0, v0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTitle:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 4698
    :cond_a9
    invoke-virtual/range {p0 .. p0}, getLocalFeatures()I

    move-result v13

    .line 4699
    .local v13, "localFeatures":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_ae
    const/16 v18, 0xd

    move/from16 v0, v18

    if-ge v11, v0, :cond_ca

    .line 4700
    const/16 v18, 0x1

    shl-int v18, v18, v11

    and-int v18, v18, v13

    if-eqz v18, :cond_c7

    .line 4701
    move-object/from16 v0, p0

    iget-object v0, v0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Lcom/android/internal/widget/DecorContentParent;->initFeature(I)V

    .line 4699
    :cond_c7
    add-int/lit8 v11, v11, 0x1

    goto :goto_ae

    .line 4705
    :cond_ca
    move-object/from16 v0, p0

    iget-object v0, v0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, mUiOptions:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/widget/DecorContentParent;->setUiOptions(I)V

    .line 4707
    move-object/from16 v0, p0

    iget v0, v0, mResourcesSetFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_f7

    move-object/from16 v0, p0

    iget v0, v0, mIconRes:I

    move/from16 v18, v0

    if-eqz v18, :cond_3d6

    move-object/from16 v0, p0

    iget-object v0, v0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v18

    if-nez v18, :cond_3d6

    .line 4709
    :cond_f7
    move-object/from16 v0, p0

    iget-object v0, v0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, mIconRes:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 4716
    :cond_106
    :goto_106
    move-object/from16 v0, p0

    iget v0, v0, mResourcesSetFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x2

    if-nez v18, :cond_124

    move-object/from16 v0, p0

    iget v0, v0, mLogoRes:I

    move/from16 v18, v0

    if-eqz v18, :cond_133

    move-object/from16 v0, p0

    iget-object v0, v0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v18

    if-nez v18, :cond_133

    .line 4718
    :cond_124
    move-object/from16 v0, p0

    iget-object v0, v0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, mLogoRes:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 4726
    :cond_133
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v15

    .line 4727
    .local v15, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual/range {p0 .. p0}, isDestroyed()Z

    move-result v18

    if-nez v18, :cond_160

    if-eqz v15, :cond_14f

    iget-object v0, v15, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    move-object/from16 v18, v0

    if-nez v18, :cond_160

    :cond_14f
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsStartingWindow:Z

    move/from16 v18, v0

    if-nez v18, :cond_160

    .line 4728
    const/16 v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, invalidatePanelMenu(I)V

    .line 4751
    .end local v11    # "i":I
    .end local v13    # "localFeatures":I
    .end local v15    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_160
    :goto_160
    move-object/from16 v0, p0

    iget-object v0, v0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    if-nez v18, :cond_183

    move-object/from16 v0, p0

    iget v0, v0, mBackgroundFallbackResource:I

    move/from16 v18, v0

    if-eqz v18, :cond_183

    .line 4752
    move-object/from16 v0, p0

    iget-object v0, v0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, mBackgroundFallbackResource:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setBackgroundFallback(I)V

    .line 4757
    :cond_183
    const/16 v18, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, hasFeature(I)Z

    move-result v18

    if-eqz v18, :cond_31e

    .line 4758
    move-object/from16 v0, p0

    iget-object v0, v0, mTransitionManager:Landroid/transition/TransitionManager;

    move-object/from16 v18, v0

    if-nez v18, :cond_1c1

    .line 4759
    invoke-virtual/range {p0 .. p0}, getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v18

    const/16 v19, 0x1b

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 4762
    .local v17, "transitionRes":I
    if-eqz v17, :cond_49f

    .line 4763
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v12

    .line 4764
    .local v12, "inflater":Landroid/transition/TransitionInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, mContentParent:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/transition/TransitionInflater;->inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mTransitionManager:Landroid/transition/TransitionManager;

    .line 4771
    .end local v12    # "inflater":Landroid/transition/TransitionInflater;
    .end local v17    # "transitionRes":I
    :cond_1c1
    :goto_1c1
    move-object/from16 v0, p0

    iget-object v0, v0, mEnterTransition:Landroid/transition/Transition;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1c

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mEnterTransition:Landroid/transition/Transition;

    .line 4773
    move-object/from16 v0, p0

    iget-object v0, v0, mReturnTransition:Landroid/transition/Transition;

    move-object/from16 v18, v0

    sget-object v19, USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v20, 0x28

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mReturnTransition:Landroid/transition/Transition;

    .line 4775
    move-object/from16 v0, p0

    iget-object v0, v0, mExitTransition:Landroid/transition/Transition;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1d

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mExitTransition:Landroid/transition/Transition;

    .line 4777
    move-object/from16 v0, p0

    iget-object v0, v0, mReenterTransition:Landroid/transition/Transition;

    move-object/from16 v18, v0

    sget-object v19, USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v20, 0x29

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mReenterTransition:Landroid/transition/Transition;

    .line 4779
    move-object/from16 v0, p0

    iget-object v0, v0, mSharedElementEnterTransition:Landroid/transition/Transition;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 4781
    move-object/from16 v0, p0

    iget-object v0, v0, mSharedElementReturnTransition:Landroid/transition/Transition;

    move-object/from16 v18, v0

    sget-object v19, USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v20, 0x2a

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 4784
    move-object/from16 v0, p0

    iget-object v0, v0, mSharedElementExitTransition:Landroid/transition/Transition;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1f

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mSharedElementExitTransition:Landroid/transition/Transition;

    .line 4786
    move-object/from16 v0, p0

    iget-object v0, v0, mSharedElementReenterTransition:Landroid/transition/Transition;

    move-object/from16 v18, v0

    sget-object v19, USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v20, 0x2b

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 4789
    move-object/from16 v0, p0

    iget-object v0, v0, mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    if-nez v18, :cond_2bf

    .line 4790
    invoke-virtual/range {p0 .. p0}, getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v18

    const/16 v19, 0x21

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 4793
    :cond_2bf
    move-object/from16 v0, p0

    iget-object v0, v0, mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    if-nez v18, :cond_2dd

    .line 4794
    invoke-virtual/range {p0 .. p0}, getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v18

    const/16 v19, 0x20

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 4797
    :cond_2dd
    move-object/from16 v0, p0

    iget-wide v0, v0, mBackgroundFadeDurationMillis:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-gez v18, :cond_300

    .line 4798
    invoke-virtual/range {p0 .. p0}, getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v18

    const/16 v19, 0x25

    const/16 v20, 0x12c

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, mBackgroundFadeDurationMillis:J

    .line 4802
    :cond_300
    move-object/from16 v0, p0

    iget-object v0, v0, mSharedElementsUseOverlay:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    if-nez v18, :cond_31e

    .line 4803
    invoke-virtual/range {p0 .. p0}, getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v18

    const/16 v19, 0x2c

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 4810
    :cond_31e
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v7

    .line 4811
    .local v7, "context":Landroid/content/Context;
    const/4 v8, 0x0

    .line 4813
    .local v8, "coverMode":I
    :try_start_323
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x80

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 4815
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_34c

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_34c

    .line 4816
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "com.sec.android.sdk.cover.MODE"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_348
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_323 .. :try_end_348} :catch_4ac

    move-result v6

    .line 4818
    .local v6, "cm":I
    if-eqz v6, :cond_34c

    .line 4819
    move v8, v6

    .line 4825
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "cm":I
    :cond_34c
    :goto_34c
    if-nez v8, :cond_39a

    .line 4826
    instance-of v0, v7, Landroid/app/Activity;

    move/from16 v18, v0

    if-nez v18, :cond_360

    instance-of v0, v7, Landroid/content/ContextWrapper;

    move/from16 v18, v0

    if-eqz v18, :cond_360

    .line 4827
    check-cast v7, Landroid/content/ContextWrapper;

    .end local v7    # "context":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    .line 4829
    .restart local v7    # "context":Landroid/content/Context;
    :cond_360
    if-eqz v7, :cond_39a

    instance-of v0, v7, Landroid/app/Activity;

    move/from16 v18, v0

    if-eqz v18, :cond_39a

    .line 4831
    :try_start_368
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    new-instance v19, Landroid/content/ComponentName;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v7, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v20, 0x80

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 4835
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v4, :cond_39a

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_39a

    .line 4836
    invoke-virtual/range {p0 .. p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 4837
    .local v14, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "com.sec.android.sdk.cover.MODE"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_396
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_368 .. :try_end_396} :catch_4b2
    .catch Ljava/lang/NullPointerException; {:try_start_368 .. :try_end_396} :catch_4b8

    move-result v6

    .line 4839
    .restart local v6    # "cm":I
    if-eqz v6, :cond_39a

    .line 4840
    move v8, v6

    .line 4850
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "cm":I
    .end local v14    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_39a
    :goto_39a
    if-eqz v8, :cond_3a2

    .line 4851
    invoke-virtual/range {p0 .. p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 4852
    .restart local v14    # "lp":Landroid/view/WindowManager$LayoutParams;
    iput v8, v14, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 4859
    .end local v14    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_3a2
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewConfiguration;->hasFakeMenuKey()Z

    move-result v18

    if-nez v18, :cond_3d5

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFloating:Z

    move/from16 v18, v0

    if-nez v18, :cond_3d5

    invoke-virtual/range {p0 .. p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3d5

    .line 4862
    move-object/from16 v0, p0

    iget-object v0, v0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setFloatingMenuEnabled(Z)V

    .line 4866
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "coverMode":I
    .end local v9    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    :cond_3d5
    return-void

    .line 4710
    .restart local v9    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    .restart local v11    # "i":I
    .restart local v13    # "localFeatures":I
    :cond_3d6
    move-object/from16 v0, p0

    iget v0, v0, mResourcesSetFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_106

    move-object/from16 v0, p0

    iget v0, v0, mIconRes:I

    move/from16 v18, v0

    if-nez v18, :cond_106

    move-object/from16 v0, p0

    iget-object v0, v0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v18

    if-nez v18, :cond_106

    .line 4712
    move-object/from16 v0, p0

    iget-object v0, v0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 4714
    move-object/from16 v0, p0

    iget v0, v0, mResourcesSetFlags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mResourcesSetFlags:I

    goto/16 :goto_106

    .line 4731
    .end local v11    # "i":I
    .end local v13    # "localFeatures":I
    :cond_419
    const v18, 0x1020016

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mTitleView:Landroid/widget/TextView;

    .line 4732
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_160

    .line 4733
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getLayoutDirection()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 4734
    invoke-virtual/range {p0 .. p0}, getLocalFeatures()I

    move-result v18

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_48e

    .line 4735
    const v18, 0x1020041

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 4737
    .local v16, "titleContainer":Landroid/view/View;
    if-eqz v16, :cond_482

    .line 4738
    const/16 v18, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4742
    :goto_465
    move-object/from16 v0, p0

    iget-object v0, v0, mContentParent:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v18, v0

    if-eqz v18, :cond_160

    .line 4743
    move-object/from16 v0, p0

    iget-object v0, v0, mContentParent:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/FrameLayout;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_160

    .line 4740
    :cond_482
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_465

    .line 4746
    .end local v16    # "titleContainer":Landroid/view/View;
    :cond_48e
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTitle:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_160

    .line 4767
    .restart local v17    # "transitionRes":I
    :cond_49f
    new-instance v18, Landroid/transition/TransitionManager;

    invoke-direct/range {v18 .. v18}, Landroid/transition/TransitionManager;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mTransitionManager:Landroid/transition/TransitionManager;

    goto/16 :goto_1c1

    .line 4822
    .end local v17    # "transitionRes":I
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v8    # "coverMode":I
    :catch_4ac
    move-exception v10

    .line 4823
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_34c

    .line 4843
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_4b2
    move-exception v10

    .line 4844
    .restart local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_39a

    .line 4845
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_4b8
    move-exception v10

    .line 4846
    .local v10, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_39a
.end method

.method private launchDefaultSearch(Landroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5190
    invoke-virtual {p0}, getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 5191
    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_c

    invoke-virtual {p0}, isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 5192
    :cond_c
    const/4 v4, 0x0

    .line 5208
    .local v4, "result":Z
    :goto_d
    if-nez v4, :cond_46

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0xf

    const/4 v7, 0x4

    if-ne v6, v7, :cond_46

    .line 5211
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5212
    .local v0, "args":Landroid/os/Bundle;
    const-string v6, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5213
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "search"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SearchManager;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v6, v7, v8, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v4

    .line 5216
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v4    # "result":Z
    :cond_46
    return v4

    .line 5194
    :cond_47
    const-string/jumbo v6, "search"

    invoke-virtual {p0, v6}, sendCloseSystemWindows(Ljava/lang/String;)V

    .line 5195
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    .line 5196
    .local v2, "deviceId":I
    const/4 v5, 0x0

    .line 5197
    .local v5, "searchEvent":Landroid/view/SearchEvent;
    if-eqz v2, :cond_5d

    .line 5198
    new-instance v5, Landroid/view/SearchEvent;

    .end local v5    # "searchEvent":Landroid/view/SearchEvent;
    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/SearchEvent;-><init>(Landroid/view/InputDevice;)V

    .line 5201
    .restart local v5    # "searchEvent":Landroid/view/SearchEvent;
    :cond_5d
    :try_start_5d
    invoke-interface {v1, v5}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z
    :try_end_60
    .catch Ljava/lang/AbstractMethodError; {:try_start_5d .. :try_end_60} :catch_62

    move-result v4

    .restart local v4    # "result":Z
    goto :goto_d

    .line 5202
    .end local v4    # "result":Z
    :catch_62
    move-exception v3

    .line 5203
    .local v3, "e":Ljava/lang/AbstractMethodError;
    const-string v6, "PhoneWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WindowCallback "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not implement"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " method onSearchRequested(SearchEvent); fa"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5205
    invoke-interface {v1}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v4

    .restart local v4    # "result":Z
    goto/16 :goto_d
.end method

.method private loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 4887
    :try_start_1
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v1

    .line 4892
    :goto_12
    return-object v1

    .line 4889
    :catch_13
    move-exception v0

    .line 4890
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V
    .registers 21
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 770
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_c

    invoke-virtual/range {p0 .. p0}, isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 894
    :cond_c
    :goto_c
    return-void

    .line 776
    :cond_d
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v4, :cond_40

    .line 777
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v13

    .line 778
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 779
    .local v12, "config":Landroid/content/res/Configuration;
    iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5d

    const/4 v15, 0x1

    .line 781
    .local v15, "isXLarge":Z
    :goto_27
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_5f

    const/4 v14, 0x1

    .line 784
    .local v14, "isHoneycombApp":Z
    :goto_32
    if-eqz v15, :cond_40

    if-eqz v14, :cond_40

    invoke-static {v13}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 789
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "isHoneycombApp":Z
    .end local v15    # "isXLarge":Z
    :cond_40
    invoke-virtual/range {p0 .. p0}, getCallback()Landroid/view/Window$Callback;

    move-result-object v11

    .line 790
    .local v11, "cb":Landroid/view/Window$Callback;
    if-eqz v11, :cond_61

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v11, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 792
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_c

    .line 779
    .end local v11    # "cb":Landroid/view/Window$Callback;
    .restart local v12    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "context":Landroid/content/Context;
    :cond_5d
    const/4 v15, 0x0

    goto :goto_27

    .line 781
    .restart local v15    # "isXLarge":Z
    :cond_5f
    const/4 v14, 0x0

    goto :goto_32

    .line 796
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v15    # "isXLarge":Z
    .restart local v11    # "cb":Landroid/view/Window$Callback;
    :cond_61
    invoke-virtual/range {p0 .. p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    .line 797
    .local v17, "wm":Landroid/view/WindowManager;
    if-eqz v17, :cond_c

    .line 802
    invoke-virtual/range {p0 .. p2}, preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 806
    const/4 v3, -0x2

    .line 807
    .local v3, "width":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v4, :cond_7a

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_17f

    .line 808
    :cond_7a
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-nez v4, :cond_160

    .line 810
    invoke-virtual/range {p0 .. p1}, initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v4, :cond_c

    .line 818
    :cond_8c
    :goto_8c
    invoke-virtual/range {p0 .. p1}, initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 822
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 823
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_a9

    .line 824
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 828
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_a9
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_179

    .line 831
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 832
    .local v10, "backgroundResId":I
    const/4 v3, -0x1

    .line 837
    :goto_b3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 840
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    .line 841
    .local v16, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v16, :cond_dd

    move-object/from16 v0, v16

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_dd

    .line 842
    check-cast v16, Landroid/view/ViewGroup;

    .end local v16    # "shownPanelParent":Landroid/view/ViewParent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 844
    :cond_dd
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v4

    if-eqz v4, :cond_fe

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_fe

    .line 846
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutDirection(I)V

    .line 848
    :cond_fe
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 854
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_11a

    .line 855
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 873
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "backgroundResId":I
    :cond_11a
    :goto_11a
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 875
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->y:I

    const/16 v7, 0x3eb

    const/high16 v8, 0x820000

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget v9, v9, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDefaultOpacity:I

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 882
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v4, :cond_1b6

    .line 883
    invoke-virtual/range {p0 .. p0}, getOptionsPanelGravity()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 884
    sget-object v4, sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 889
    :goto_14a
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 891
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    goto/16 :goto_c

    .line 812
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_160
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_8c

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_8c

    .line 814
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeAllViews()V

    goto/16 :goto_8c

    .line 835
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_179
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->background:I

    .restart local v10    # "backgroundResId":I
    goto/16 :goto_b3

    .line 858
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "backgroundResId":I
    :cond_17f
    invoke-virtual/range {p0 .. p1}, initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_18b

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-nez v4, :cond_195

    .line 859
    :cond_18b
    const-string v4, "PhoneWindow"

    const-string/jumbo v5, "openPanel() : menu is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 862
    :cond_195
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v4

    if-nez v4, :cond_19e

    .line 863
    const/4 v3, -0x1

    goto/16 :goto_11a

    .line 864
    :cond_19e
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v4, :cond_11a

    .line 867
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 868
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_11a

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_11a

    .line 869
    const/4 v3, -0x1

    goto/16 :goto_11a

    .line 886
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1b6
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_14a
.end method

.method private openPanelsAfterRestore()V
    .registers 5

    .prologue
    .line 2416
    iget-object v1, p0, mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2418
    .local v1, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_5

    .line 2436
    :cond_4
    return-void

    .line 2423
    :cond_5
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_4

    .line 2424
    aget-object v2, v1, v0

    .line 2428
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_21

    .line 2429
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    .line 2430
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_21

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    if-eqz v3, :cond_21

    .line 2431
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 2432
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 2423
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method private performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .registers 8
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    const/4 v2, 0x1

    .line 1195
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-nez v1, :cond_9

    if-nez p1, :cond_b

    .line 1196
    :cond_9
    const/4 v0, 0x0

    .line 1218
    :cond_a
    :goto_a
    return v0

    .line 1199
    :cond_b
    const/4 v0, 0x0

    .line 1203
    .local v0, "handled":Z
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_16

    invoke-virtual {p0, p1, p3}, preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_16
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_20

    .line 1205
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1208
    :cond_20
    if-eqz v0, :cond_a

    .line 1210
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1213
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_a

    iget-object v1, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v1, :cond_a

    .line 1214
    invoke-virtual {p0, p1, v2}, closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_a
.end method

.method private registerSwipeCallbacks()V
    .registers 3

    .prologue
    .line 5102
    const v1, 0x1020002

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SwipeDismissLayout;

    .line 5104
    .local v0, "swipeDismiss":Lcom/android/internal/widget/SwipeDismissLayout;
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$2;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnDismissedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;)V

    .line 5110
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$3;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnSwipeProgressChangedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;)V

    .line 5140
    return-void
.end method

.method private reopenMenu(Z)V
    .registers 10
    .param p1, "toggleMenuMode"    # Z

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1270
    iget-object v6, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v6, :cond_8e

    iget-object v6, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v6}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v6

    if-eqz v6, :cond_8e

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    if-eqz v6, :cond_26

    iget-object v6, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v6}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 1273
    :cond_26
    invoke-virtual {p0}, getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 1274
    .local v1, "cb":Landroid/view/Window$Callback;
    iget-object v4, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v4

    if-eqz v4, :cond_34

    if-nez p1, :cond_75

    .line 1275
    :cond_34
    if-eqz v1, :cond_74

    invoke-virtual {p0}, isDestroyed()Z

    move-result v4

    if-nez v4, :cond_74

    .line 1277
    iget-boolean v4, p0, mInvalidatePanelMenuPosted:Z

    if-eqz v4, :cond_52

    iget v4, p0, mInvalidatePanelMenuFeatures:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_52

    .line 1279
    iget-object v4, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v6, p0, mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1280
    iget-object v4, p0, mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1283
    :cond_52
    invoke-direct {p0, v5, v5}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 1287
    .local v3, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_74

    iget-object v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_74

    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-nez v4, :cond_74

    iget-object v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v6, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v1, v5, v4, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 1289
    iget-object v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v1, v7, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1290
    iget-object v4, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 1326
    .end local v1    # "cb":Landroid/view/Window$Callback;
    .end local v3    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_74
    :goto_74
    return-void

    .line 1294
    .restart local v1    # "cb":Landroid/view/Window$Callback;
    :cond_75
    iget-object v4, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1295
    invoke-direct {p0, v5, v5}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 1296
    .restart local v3    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_74

    if-eqz v1, :cond_74

    invoke-virtual {p0}, isDestroyed()Z

    move-result v4

    if-nez v4, :cond_74

    .line 1297
    iget-object v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v1, v7, v4}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_74

    .line 1304
    .end local v1    # "cb":Landroid/view/Window$Callback;
    .end local v3    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_8e
    invoke-virtual {p0}, getCallback()Landroid/view/Window$Callback;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_a2

    .line 1305
    invoke-virtual {p0}, getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1306
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    if-nez v6, :cond_74

    .line 1310
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_a2
    invoke-direct {p0, v5, v5}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 1312
    .restart local v3    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_74

    .line 1317
    if-eqz p1, :cond_bd

    iget-boolean v6, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-nez v6, :cond_bb

    move v2, v4

    .line 1319
    .local v2, "newExpandedMode":Z
    :goto_af
    iput-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1320
    invoke-virtual {p0, v3, v5}, closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1323
    iput-boolean v2, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1325
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_74

    .end local v2    # "newExpandedMode":Z
    :cond_bb
    move v2, v5

    .line 1317
    goto :goto_af

    :cond_bd
    iget-boolean v2, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    goto :goto_af
.end method

.method private restorePanelState(Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2392
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_23

    .line 2393
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 2394
    .local v0, "curFeatureId":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2395
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_16

    .line 2392
    :goto_13
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 2400
    :cond_16
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2401
    invoke-virtual {p0, v0}, invalidatePanelMenu(I)V

    goto :goto_13

    .line 2408
    .end local v0    # "curFeatureId":I
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_23
    return-void
.end method

.method private savePanelState(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2372
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2373
    .local v1, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_5

    .line 2382
    :cond_4
    return-void

    .line 2377
    :cond_5
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, "curFeatureId":I
    :goto_8
    if-ltz v0, :cond_4

    .line 2378
    aget-object v2, v1, v0

    if-eqz v2, :cond_17

    .line 2379
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2377
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method public static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 5840
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5842
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 5846
    :cond_d
    :goto_d
    return-void

    .line 5843
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .registers 7
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v3, 0x0

    .line 1742
    invoke-virtual {p0}, getLocalFeatures()I

    move-result v0

    .line 1743
    .local v0, "features":I
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_15

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_15

    .line 1745
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1748
    :cond_15
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_26

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_26

    .line 1750
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1752
    :cond_26
    return-void
.end method

.method private transitionTo(Landroid/transition/Scene;)V
    .registers 3
    .param p1, "scene"    # Landroid/transition/Scene;

    .prologue
    .line 531
    iget-object v0, p0, mContentScene:Landroid/transition/Scene;

    if-nez v0, :cond_a

    .line 532
    invoke-virtual {p1}, Landroid/transition/Scene;->enter()V

    .line 536
    :goto_7
    iput-object p1, p0, mContentScene:Landroid/transition/Scene;

    .line 537
    return-void

    .line 534
    :cond_a
    iget-object v0, p0, mTransitionManager:Landroid/transition/TransitionManager;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionManager;->transitionTo(Landroid/transition/Scene;)V

    goto :goto_7
.end method

.method private updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V
    .registers 8
    .param p1, "featureId"    # I
    .param p2, "st"    # Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .param p3, "fromResume"    # Z

    .prologue
    .line 4989
    iget-object v2, p0, mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_5

    .line 5020
    :cond_4
    :goto_4
    return-void

    .line 4993
    :cond_5
    const/4 v2, 0x1

    shl-int v1, v2, p1

    .line 4995
    .local v1, "featureMask":I
    invoke-virtual {p0}, getFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_11

    if-eqz p3, :cond_4

    .line 4999
    :cond_11
    const/4 v0, 0x0

    .line 5000
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_1e

    .line 5001
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 5002
    if-nez v0, :cond_1a

    .line 5003
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 5004
    :cond_1a
    if-nez v0, :cond_1e

    .line 5005
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 5007
    :cond_1e
    invoke-virtual {p0}, getLocalFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_3b

    .line 5008
    invoke-virtual {p0}, getContainer()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 5009
    invoke-virtual {p0}, isActive()Z

    move-result v2

    if-nez v2, :cond_33

    if-eqz p3, :cond_4

    .line 5010
    :cond_33
    invoke-virtual {p0}, getContainer()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 5013
    :cond_3b
    if-eqz p2, :cond_4

    iget-object v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    if-ne v2, v0, :cond_47

    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v3, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v2, v3, :cond_4

    .line 5016
    :cond_47
    iput-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    .line 5017
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    iput v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    .line 5018
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    invoke-virtual {p0, p1, v0, v2}, onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V

    goto :goto_4
.end method

.method private updateInt(IIZ)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "value"    # I
    .param p3, "fromResume"    # Z

    .prologue
    .line 5026
    iget-object v1, p0, mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_5

    .line 5043
    :cond_4
    :goto_4
    return-void

    .line 5030
    :cond_5
    const/4 v1, 0x1

    shl-int v0, v1, p1

    .line 5032
    .local v0, "featureMask":I
    invoke-virtual {p0}, getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_11

    if-eqz p3, :cond_4

    .line 5036
    :cond_11
    invoke-virtual {p0}, getLocalFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_26

    .line 5037
    invoke-virtual {p0}, getContainer()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5038
    invoke-virtual {p0}, getContainer()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    goto :goto_4

    .line 5041
    :cond_26
    invoke-virtual {p0, p1, p2}, onIntChanged(II)V

    goto :goto_4
.end method

.method private updateProgressBars(I)V
    .registers 12
    .param p1, "value"    # I

    .prologue
    const/16 v9, 0x8

    const/16 v8, 0x2710

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1665
    invoke-direct {p0, v7}, getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v0

    .line 1666
    .local v0, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0, v7}, getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v2

    .line 1668
    .local v2, "horizontalProgressBar":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, getLocalFeatures()I

    move-result v1

    .line 1669
    .local v1, "features":I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_47

    .line 1670
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2b

    .line 1671
    if-eqz v2, :cond_37

    .line 1672
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    .line 1673
    .local v3, "level":I
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v6

    if-nez v6, :cond_27

    if-ge v3, v8, :cond_35

    :cond_27
    move v4, v5

    .line 1675
    .local v4, "visibility":I
    :goto_28
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1680
    .end local v3    # "level":I
    .end local v4    # "visibility":I
    :cond_2b
    :goto_2b
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_34

    .line 1681
    if-eqz v0, :cond_3f

    .line 1682
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1739
    :cond_34
    :goto_34
    return-void

    .line 1673
    .restart local v3    # "level":I
    :cond_35
    const/4 v4, 0x4

    goto :goto_28

    .line 1677
    .end local v3    # "level":I
    :cond_37
    const-string v6, "PhoneWindow"

    const-string v7, "Horizontal progress bar not located in current window decor"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 1684
    :cond_3f
    const-string v5, "PhoneWindow"

    const-string v6, "Circular progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 1687
    :cond_47
    const/4 v6, -0x2

    if-ne p1, v6, :cond_6d

    .line 1688
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_53

    .line 1689
    if-eqz v2, :cond_5d

    .line 1690
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1695
    :cond_53
    :goto_53
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_34

    .line 1696
    if-eqz v0, :cond_65

    .line 1697
    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_34

    .line 1692
    :cond_5d
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 1699
    :cond_65
    const-string v5, "PhoneWindow"

    const-string v6, "Circular progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 1702
    :cond_6d
    const/4 v6, -0x3

    if-ne p1, v6, :cond_7e

    .line 1703
    if-eqz v2, :cond_76

    .line 1704
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_34

    .line 1706
    :cond_76
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 1708
    :cond_7e
    const/4 v6, -0x4

    if-ne p1, v6, :cond_8f

    .line 1709
    if-eqz v2, :cond_87

    .line 1710
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_34

    .line 1712
    :cond_87
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 1714
    :cond_8f
    if-ltz p1, :cond_ac

    if-gt p1, v8, :cond_ac

    .line 1718
    if-eqz v2, :cond_a0

    .line 1719
    add-int/lit8 v5, p1, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1724
    :goto_9a
    if-ge p1, v8, :cond_a8

    .line 1725
    invoke-direct {p0, v2, v0}, showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_34

    .line 1721
    :cond_a0
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    .line 1727
    :cond_a8
    invoke-direct {p0, v2, v0}, hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_34

    .line 1729
    :cond_ac
    const/16 v5, 0x4e20

    if-gt v5, p1, :cond_34

    const/16 v5, 0x7530

    if-gt p1, v5, :cond_34

    .line 1730
    if-eqz v2, :cond_c0

    .line 1731
    add-int/lit16 v5, p1, -0x4e20

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1736
    :goto_bb
    invoke-direct {p0, v2, v0}, showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto/16 :goto_34

    .line 1733
    :cond_c0
    const-string v5, "PhoneWindow"

    const-string v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 515
    iget-object v1, p0, mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_7

    .line 516
    invoke-direct {p0}, installDecor()V

    .line 518
    :cond_7
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 520
    const-string v1, "PhoneWindow"

    const-string v2, "addContentView does not support content transitions"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_16
    iget-object v1, p0, mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    iget-object v1, p0, mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 524
    invoke-virtual {p0}, getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 525
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2f

    invoke-virtual {p0}, isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 526
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 528
    :cond_2f
    return-void
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .registers 2

    .prologue
    .line 4670
    const/4 v0, 0x1

    iput-boolean v0, p0, mAlwaysReadCloseOnTouchAttr:Z

    .line 4671
    return-void
.end method

.method checkCloseActionMenu(Landroid/view/Menu;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 964
    iget-boolean v1, p0, mClosingActionMenu:Z

    if-eqz v1, :cond_5

    .line 975
    :goto_4
    return-void

    .line 968
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, mClosingActionMenu:Z

    .line 969
    iget-object v1, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 970
    invoke-virtual {p0}, getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 971
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 972
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 974
    :cond_1e
    const/4 v1, 0x0

    iput-boolean v1, p0, mClosingActionMenu:Z

    goto :goto_4
.end method

.method public final closeAllPanels()V
    .registers 7

    .prologue
    .line 1147
    invoke-virtual {p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 1148
    .local v4, "wm":Landroid/view/ViewManager;
    if-nez v4, :cond_7

    .line 1162
    :goto_6
    return-void

    .line 1152
    :cond_7
    iget-object v3, p0, mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1153
    .local v3, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_1a

    array-length v0, v3

    .line 1154
    .local v0, "N":I
    :goto_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1c

    .line 1155
    aget-object v2, v3, v1

    .line 1156
    .local v2, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_17

    .line 1157
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1154
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1153
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1a
    const/4 v0, 0x0

    goto :goto_c

    .line 1161
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_1c
    invoke-direct {p0}, closeContextMenu()V

    goto :goto_6
.end method

.method public final closePanel(I)V
    .registers 4
    .param p1, "featureId"    # I

    .prologue
    const/4 v1, 0x1

    .line 898
    if-nez p1, :cond_23

    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_23

    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_23

    .line 901
    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 907
    :goto_22
    return-void

    .line 902
    :cond_23
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2a

    .line 903
    invoke-direct {p0}, closeContextMenu()V

    goto :goto_22

    .line 905
    :cond_2a
    invoke-direct {p0, p1, v1}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_22
.end method

.method public final closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V
    .registers 7
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 922
    if-eqz p2, :cond_1a

    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v1, :cond_1a

    iget-object v1, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_1a

    iget-object v1, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 924
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v1}, checkCloseActionMenu(Landroid/view/Menu;)V

    .line 961
    :cond_19
    :goto_19
    return-void

    .line 928
    :cond_1a
    invoke-virtual {p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 929
    .local v0, "wm":Landroid/view/ViewManager;
    if-eqz v0, :cond_3d

    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_3d

    .line 930
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v1, :cond_36

    .line 931
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 933
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v1, :cond_36

    .line 934
    sget-object v1, sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 938
    :cond_36
    if-eqz p2, :cond_3d

    .line 939
    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {p0, v1, p1, v3}, callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    .line 943
    :cond_3d
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 944
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 945
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 948
    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 950
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v1, :cond_4e

    .line 953
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 954
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 957
    :cond_4e
    iget-object v1, p0, mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-ne v1, p1, :cond_19

    .line 958
    iput-object v3, p0, mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 959
    iput v2, p0, mPanelChordingKey:I

    goto :goto_19
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 5057
    invoke-super {p0, p1}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 5058
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_e

    .line 5059
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$3900(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 5061
    :cond_e
    return-void
.end method

.method doInvalidatePanelMenu(I)V
    .registers 7
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1005
    invoke-direct {p0, p1, v3}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1006
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_9

    .line 1032
    :cond_8
    :goto_8
    return-void

    .line 1009
    :cond_9
    const/4 v0, 0x0

    .line 1010
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_2a

    .line 1011
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1012
    .restart local v0    # "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1013
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_20

    .line 1014
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1017
    :cond_20
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1018
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 1020
    :cond_2a
    iput-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 1021
    iput-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1024
    const/16 v2, 0x8

    if-eq p1, v2, :cond_34

    if-nez p1, :cond_8

    :cond_34
    iget-object v2, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_8

    .line 1026
    invoke-direct {p0, v3, v3}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1027
    if-eqz v1, :cond_8

    .line 1028
    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1029
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    goto :goto_8
.end method

.method doPendingInvalidatePanelMenu()V
    .registers 3

    .prologue
    .line 998
    iget-boolean v0, p0, mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_10

    .line 999
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v1, p0, mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1000
    iget-object v0, p0, mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1002
    :cond_10
    return-void
.end method

.method public findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .registers 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1243
    iget-object v3, p0, mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1244
    .local v3, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_11

    array-length v0, v3

    .line 1245
    .local v0, "N":I
    :goto_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_16

    .line 1246
    aget-object v2, v3, v1

    .line 1247
    .local v2, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_13

    iget-object v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_13

    .line 1251
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :goto_10
    return-object v2

    .line 1244
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v0, 0x0

    goto :goto_5

    .line 1245
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1251
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_16
    const/4 v2, 0x0

    goto :goto_10
.end method

.method protected generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;
    .registers 4

    .prologue
    .line 4329
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .registers 27
    .param p1, "decor"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 4350
    invoke-virtual/range {p0 .. p0}, getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v3

    .line 4362
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v21, 0x4

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsFloating:Z

    .line 4363
    const v21, 0x10100

    invoke-virtual/range {p0 .. p0}, getForcedWindowFlags()I

    move-result v22

    xor-int/lit8 v22, v22, -0x1

    and-int v8, v21, v22

    .line 4365
    .local v8, "flagsToUpdate":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFloating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4e6

    .line 4366
    const/16 v21, -0x2

    const/16 v22, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, setLayout(II)V

    .line 4367
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v8}, setFlags(II)V

    .line 4372
    :goto_3f
    const/16 v21, 0x3

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_4f2

    .line 4373
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, requestFeature(I)Z

    .line 4379
    :cond_56
    :goto_56
    const/16 v21, 0x11

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_6d

    .line 4380
    const/16 v21, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, requestFeature(I)Z

    .line 4383
    :cond_6d
    const/16 v21, 0x10

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_84

    .line 4384
    const/16 v21, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, requestFeature(I)Z

    .line 4387
    :cond_84
    const/16 v21, 0x19

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_9b

    .line 4388
    const/16 v21, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, requestFeature(I)Z

    .line 4391
    :cond_9b
    const/16 v21, 0x9

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_c0

    .line 4392
    const/16 v21, 0x400

    invoke-virtual/range {p0 .. p0}, getForcedWindowFlags()I

    move-result v22

    xor-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, setFlags(II)V

    .line 4395
    :cond_c0
    const/16 v21, 0x17

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_e3

    .line 4397
    const/high16 v21, 0x4000000

    const/high16 v22, 0x4000000

    invoke-virtual/range {p0 .. p0}, getForcedWindowFlags()I

    move-result v23

    xor-int/lit8 v23, v23, -0x1

    and-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, setFlags(II)V

    .line 4401
    :cond_e3
    const/16 v21, 0x18

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_106

    .line 4403
    const/high16 v21, 0x8000000

    const/high16 v22, 0x8000000

    invoke-virtual/range {p0 .. p0}, getForcedWindowFlags()I

    move-result v23

    xor-int/lit8 v23, v23, -0x1

    and-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, setFlags(II)V

    .line 4407
    :cond_106
    const/16 v21, 0x16

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_129

    .line 4408
    const/high16 v21, 0x2000000

    const/high16 v22, 0x2000000

    invoke-virtual/range {p0 .. p0}, getForcedWindowFlags()I

    move-result v23

    xor-int/lit8 v23, v23, -0x1

    and-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, setFlags(II)V

    .line 4411
    :cond_129
    const/16 v21, 0xe

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_14c

    .line 4412
    const/high16 v21, 0x100000

    const/high16 v22, 0x100000

    invoke-virtual/range {p0 .. p0}, getForcedWindowFlags()I

    move-result v23

    xor-int/lit8 v23, v23, -0x1

    and-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, setFlags(II)V

    .line 4415
    :cond_14c
    const/16 v22, 0x12

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v21, v0

    const/16 v23, 0xb

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_50b

    const/16 v21, 0x1

    :goto_166
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_185

    .line 4418
    const/high16 v21, 0x800000

    const/high16 v22, 0x800000

    invoke-virtual/range {p0 .. p0}, getForcedWindowFlags()I

    move-result v23

    xor-int/lit8 v23, v23, -0x1

    and-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, setFlags(II)V

    .line 4421
    :cond_185
    const/16 v21, 0x13

    move-object/from16 v0, p0

    iget-object v0, v0, mMinWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4422
    const/16 v21, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, mMinWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4423
    const/16 v21, 0x31

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_1cf

    .line 4424
    move-object/from16 v0, p0

    iget-object v0, v0, mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v21, v0

    if-nez v21, :cond_1c0

    new-instance v21, Landroid/util/TypedValue;

    invoke-direct/range {v21 .. v21}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mFixedWidthMajor:Landroid/util/TypedValue;

    .line 4425
    :cond_1c0
    const/16 v21, 0x31

    move-object/from16 v0, p0

    iget-object v0, v0, mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4428
    :cond_1cf
    const/16 v21, 0x33

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_1fb

    .line 4429
    move-object/from16 v0, p0

    iget-object v0, v0, mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v21, v0

    if-nez v21, :cond_1ec

    new-instance v21, Landroid/util/TypedValue;

    invoke-direct/range {v21 .. v21}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mFixedWidthMinor:Landroid/util/TypedValue;

    .line 4430
    :cond_1ec
    const/16 v21, 0x33

    move-object/from16 v0, p0

    iget-object v0, v0, mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4433
    :cond_1fb
    const/16 v21, 0x34

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_227

    .line 4434
    move-object/from16 v0, p0

    iget-object v0, v0, mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v21, v0

    if-nez v21, :cond_218

    new-instance v21, Landroid/util/TypedValue;

    invoke-direct/range {v21 .. v21}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mFixedHeightMajor:Landroid/util/TypedValue;

    .line 4435
    :cond_218
    const/16 v21, 0x34

    move-object/from16 v0, p0

    iget-object v0, v0, mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4438
    :cond_227
    const/16 v21, 0x32

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_253

    .line 4439
    move-object/from16 v0, p0

    iget-object v0, v0, mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v21, v0

    if-nez v21, :cond_244

    new-instance v21, Landroid/util/TypedValue;

    invoke-direct/range {v21 .. v21}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mFixedHeightMinor:Landroid/util/TypedValue;

    .line 4440
    :cond_244
    const/16 v21, 0x32

    move-object/from16 v0, p0

    iget-object v0, v0, mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 4443
    :cond_253
    const/16 v21, 0x1a

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_26a

    .line 4444
    const/16 v21, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, requestFeature(I)Z

    .line 4446
    :cond_26a
    const/16 v21, 0x2d

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_281

    .line 4447
    const/16 v21, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, requestFeature(I)Z

    .line 4450
    :cond_281
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v6

    .line 4451
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v20, v0

    .line 4452
    .local v20, "targetSdk":I
    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_50f

    const/16 v17, 0x1

    .line 4453
    .local v17, "targetPreHoneycomb":Z
    :goto_299
    const/16 v21, 0xe

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_513

    const/16 v18, 0x1

    .line 4454
    .local v18, "targetPreIcs":Z
    :goto_2a3
    const/16 v21, 0x15

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_517

    const/16 v19, 0x1

    .line 4455
    .local v19, "targetPreL":Z
    :goto_2ad
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x112000c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 4457
    .local v16, "targetHcNeedsOptions":Z
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, hasFeature(I)Z

    move-result v21

    if-eqz v21, :cond_2d0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, hasFeature(I)Z

    move-result v21

    if-eqz v21, :cond_51b

    :cond_2d0
    const/4 v12, 0x1

    .line 4459
    .local v12, "noActionBar":Z
    :goto_2d1
    if-nez v17, :cond_2d9

    if-eqz v18, :cond_51e

    if-eqz v16, :cond_51e

    if-eqz v12, :cond_51e

    .line 4460
    :cond_2d9
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, setNeedsMenuKey(I)V

    .line 4467
    :goto_2e2
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFloating:Z

    move/from16 v21, v0

    if-nez v21, :cond_30f

    .line 4468
    if-nez v19, :cond_30f

    const/16 v21, 0x22

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_30f

    .line 4471
    const/high16 v21, -0x80000000

    const/high16 v22, -0x80000000

    invoke-virtual/range {p0 .. p0}, getForcedWindowFlags()I

    move-result v23

    xor-int/lit8 v23, v23, -0x1

    and-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, setFlags(II)V

    .line 4475
    :cond_30f
    move-object/from16 v0, p0

    iget-boolean v0, v0, mForcedStatusBarColor:Z

    move/from16 v21, v0

    if-nez v21, :cond_329

    .line 4476
    const/16 v21, 0x23

    const/high16 v22, -0x1000000

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mStatusBarColor:I

    .line 4478
    :cond_329
    move-object/from16 v0, p0

    iget-boolean v0, v0, mForcedNavigationBarColor:Z

    move/from16 v21, v0

    if-nez v21, :cond_343

    .line 4479
    const/16 v21, 0x24

    const/high16 v22, -0x1000000

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mNavigationBarColor:I

    .line 4481
    :cond_343
    const/16 v21, 0x2e

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_362

    .line 4482
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getSystemUiVisibility()I

    move-result v21

    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x2000

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setSystemUiVisibility(I)V

    .line 4486
    :cond_362
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAlwaysReadCloseOnTouchAttr:Z

    move/from16 v21, v0

    if-nez v21, :cond_380

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v21, v0

    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_397

    .line 4488
    :cond_380
    const/16 v21, 0x15

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_397

    .line 4491
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, setCloseOnTouchOutsideIfNotSet(Z)V

    .line 4495
    :cond_397
    invoke-virtual/range {p0 .. p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 4497
    .local v13, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, hasSoftInputMode()Z

    move-result v21

    if-nez v21, :cond_3b3

    .line 4498
    const/16 v21, 0xd

    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    move/from16 v0, v21

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4503
    :cond_3b3
    const/16 v21, 0xb

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFloating:Z

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_3ed

    .line 4506
    invoke-virtual/range {p0 .. p0}, getForcedWindowFlags()I

    move-result v21

    and-int/lit8 v21, v21, 0x2

    if-nez v21, :cond_3d7

    .line 4507
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4509
    :cond_3d7
    invoke-virtual/range {p0 .. p0}, haveDimAmount()Z

    move-result v21

    if-nez v21, :cond_3ed

    .line 4510
    const/16 v21, 0x0

    const/high16 v22, 0x3f000000    # 0.5f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v21

    move/from16 v0, v21

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4515
    :cond_3ed
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move/from16 v21, v0

    if-nez v21, :cond_403

    .line 4516
    const/16 v21, 0x8

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 4522
    :cond_403
    invoke-virtual/range {p0 .. p0}, getContainer()Landroid/view/Window;

    move-result-object v21

    if-nez v21, :cond_493

    .line 4523
    move-object/from16 v0, p0

    iget-object v0, v0, mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_45d

    .line 4524
    move-object/from16 v0, p0

    iget v0, v0, mBackgroundResource:I

    move/from16 v21, v0

    if-nez v21, :cond_431

    .line 4525
    const/16 v21, 0x1

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mLastBackgroundResource:I

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mBackgroundResource:I

    .line 4528
    :cond_431
    move-object/from16 v0, p0

    iget v0, v0, mFrameResource:I

    move/from16 v21, v0

    if-nez v21, :cond_44b

    .line 4529
    const/16 v21, 0x2

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mFrameResource:I

    .line 4531
    :cond_44b
    const/16 v21, 0x2f

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mBackgroundFallbackResource:I

    .line 4539
    :cond_45d
    const/16 v21, 0x26

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mElevation:F

    .line 4540
    const/16 v21, 0x27

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, mClipToOutline:Z

    .line 4541
    const/16 v21, 0x7

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mTextColor:I

    .line 4547
    :cond_493
    invoke-virtual/range {p0 .. p0}, getLocalFeatures()I

    move-result v7

    .line 4549
    .local v7, "features":I
    and-int/lit16 v0, v7, 0x800

    move/from16 v21, v0

    if-eqz v21, :cond_529

    .line 4550
    const v11, 0x10900ea

    .line 4606
    .local v11, "layoutResource":I
    :goto_4a0
    move-object/from16 v0, p0

    iget-object v0, v0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startChanging()V

    .line 4608
    move-object/from16 v0, p0

    iget-object v0, v0, mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 4609
    .local v10, "in":Landroid/view/View;
    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-direct/range {v21 .. v23}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4610
    check-cast v10, Landroid/view/ViewGroup;

    .end local v10    # "in":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v10, v0, mContentRoot:Landroid/view/ViewGroup;

    .line 4612
    const v21, 0x1020002

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 4613
    .local v5, "contentParent":Landroid/view/ViewGroup;
    if-nez v5, :cond_5ff

    .line 4614
    new-instance v21, Ljava/lang/RuntimeException;

    const-string v22, "Window couldn\'t find content container view"

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 4369
    .end local v5    # "contentParent":Landroid/view/ViewGroup;
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "features":I
    .end local v11    # "layoutResource":I
    .end local v12    # "noActionBar":Z
    .end local v13    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v16    # "targetHcNeedsOptions":Z
    .end local v17    # "targetPreHoneycomb":Z
    .end local v18    # "targetPreIcs":Z
    .end local v19    # "targetPreL":Z
    .end local v20    # "targetSdk":I
    :cond_4e6
    const v21, 0x10100

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v8}, setFlags(II)V

    goto/16 :goto_3f

    .line 4374
    :cond_4f2
    const/16 v21, 0xf

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    if-eqz v21, :cond_56

    .line 4376
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, requestFeature(I)Z

    goto/16 :goto_56

    .line 4415
    :cond_50b
    const/16 v21, 0x0

    goto/16 :goto_166

    .line 4452
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v20    # "targetSdk":I
    :cond_50f
    const/16 v17, 0x0

    goto/16 :goto_299

    .line 4453
    .restart local v17    # "targetPreHoneycomb":Z
    :cond_513
    const/16 v18, 0x0

    goto/16 :goto_2a3

    .line 4454
    .restart local v18    # "targetPreIcs":Z
    :cond_517
    const/16 v19, 0x0

    goto/16 :goto_2ad

    .line 4457
    .restart local v16    # "targetHcNeedsOptions":Z
    .restart local v19    # "targetPreL":Z
    :cond_51b
    const/4 v12, 0x0

    goto/16 :goto_2d1

    .line 4462
    .restart local v12    # "noActionBar":Z
    :cond_51e
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, setNeedsMenuKey(I)V

    goto/16 :goto_2e2

    .line 4551
    .restart local v7    # "features":I
    .restart local v13    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_529
    and-int/lit8 v21, v7, 0x18

    if-eqz v21, :cond_561

    .line 4552
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFloating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_55d

    .line 4553
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 4554
    .local v15, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v21

    const v22, 0x116002a

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4556
    iget v11, v15, Landroid/util/TypedValue;->resourceId:I

    .line 4561
    .end local v15    # "res":Landroid/util/TypedValue;
    .restart local v11    # "layoutResource":I
    :goto_552
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, removeFeature(I)V

    goto/16 :goto_4a0

    .line 4558
    .end local v11    # "layoutResource":I
    :cond_55d
    const v11, 0x10900ec

    .restart local v11    # "layoutResource":I
    goto :goto_552

    .line 4563
    .end local v11    # "layoutResource":I
    :cond_561
    and-int/lit8 v21, v7, 0x24

    if-eqz v21, :cond_570

    and-int/lit16 v0, v7, 0x100

    move/from16 v21, v0

    if-nez v21, :cond_570

    .line 4567
    const v11, 0x10900e7

    .restart local v11    # "layoutResource":I
    goto/16 :goto_4a0

    .line 4569
    .end local v11    # "layoutResource":I
    :cond_570
    and-int/lit16 v0, v7, 0x80

    move/from16 v21, v0

    if-eqz v21, :cond_5aa

    .line 4572
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFloating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5a6

    .line 4573
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 4574
    .restart local v15    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v21

    const v22, 0x116002b

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4576
    iget v11, v15, Landroid/util/TypedValue;->resourceId:I

    .line 4581
    .end local v15    # "res":Landroid/util/TypedValue;
    .restart local v11    # "layoutResource":I
    :goto_59b
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, removeFeature(I)V

    goto/16 :goto_4a0

    .line 4578
    .end local v11    # "layoutResource":I
    :cond_5a6
    const v11, 0x10900e6

    .restart local v11    # "layoutResource":I
    goto :goto_59b

    .line 4582
    .end local v11    # "layoutResource":I
    :cond_5aa
    and-int/lit8 v21, v7, 0x2

    if-nez v21, :cond_5ef

    .line 4585
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFloating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5d5

    .line 4586
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 4587
    .restart local v15    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v21

    const v22, 0x116002c

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4589
    iget v11, v15, Landroid/util/TypedValue;->resourceId:I

    .line 4590
    .restart local v11    # "layoutResource":I
    goto/16 :goto_4a0

    .end local v11    # "layoutResource":I
    .end local v15    # "res":Landroid/util/TypedValue;
    :cond_5d5
    and-int/lit16 v0, v7, 0x100

    move/from16 v21, v0

    if-eqz v21, :cond_5ea

    .line 4591
    const/16 v21, 0x30

    const v22, 0x10900e5

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .restart local v11    # "layoutResource":I
    goto/16 :goto_4a0

    .line 4595
    .end local v11    # "layoutResource":I
    :cond_5ea
    const v11, 0x10900eb

    .restart local v11    # "layoutResource":I
    goto/16 :goto_4a0

    .line 4598
    .end local v11    # "layoutResource":I
    :cond_5ef
    and-int/lit16 v0, v7, 0x400

    move/from16 v21, v0

    if-eqz v21, :cond_5fa

    .line 4599
    const v11, 0x10900e9

    .restart local v11    # "layoutResource":I
    goto/16 :goto_4a0

    .line 4602
    .end local v11    # "layoutResource":I
    :cond_5fa
    const v11, 0x10900e8

    .restart local v11    # "layoutResource":I
    goto/16 :goto_4a0

    .line 4617
    .restart local v5    # "contentParent":Landroid/view/ViewGroup;
    :cond_5ff
    and-int/lit8 v21, v7, 0x20

    if-eqz v21, :cond_616

    .line 4618
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v14

    .line 4619
    .local v14, "progress":Landroid/widget/ProgressBar;
    if-eqz v14, :cond_616

    .line 4620
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 4624
    .end local v14    # "progress":Landroid/widget/ProgressBar;
    :cond_616
    and-int/lit16 v0, v7, 0x800

    move/from16 v21, v0

    if-eqz v21, :cond_61f

    .line 4625
    invoke-direct/range {p0 .. p0}, registerSwipeCallbacks()V

    .line 4630
    :cond_61f
    invoke-virtual/range {p0 .. p0}, getContainer()Landroid/view/Window;

    move-result-object v21

    if-nez v21, :cond_6c9

    .line 4632
    move-object/from16 v0, p0

    iget v0, v0, mBackgroundResource:I

    move/from16 v21, v0

    if-eqz v21, :cond_6d3

    .line 4635
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, mBackgroundResource:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4640
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    :goto_649
    move-object/from16 v0, p0

    iget-object v0, v0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4643
    move-object/from16 v0, p0

    iget v0, v0, mFrameResource:I

    move/from16 v21, v0

    if-eqz v21, :cond_6d9

    .line 4644
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, mFrameResource:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 4648
    .local v9, "frame":Landroid/graphics/drawable/Drawable;
    :goto_66a
    move-object/from16 v0, p0

    iget-object v0, v0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    .line 4650
    move-object/from16 v0, p0

    iget-object v0, v0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mElevation:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setElevation(F)V

    .line 4651
    move-object/from16 v0, p0

    iget-object v0, v0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mClipToOutline:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setClipToOutline(Z)V

    .line 4653
    move-object/from16 v0, p0

    iget-object v0, v0, mTitle:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6a8

    .line 4654
    move-object/from16 v0, p0

    iget-object v0, v0, mTitle:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, setTitle(Ljava/lang/CharSequence;)V

    .line 4657
    :cond_6a8
    move-object/from16 v0, p0

    iget v0, v0, mTitleColor:I

    move/from16 v21, v0

    if-nez v21, :cond_6bc

    .line 4658
    move-object/from16 v0, p0

    iget v0, v0, mTextColor:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mTitleColor:I

    .line 4660
    :cond_6bc
    move-object/from16 v0, p0

    iget v0, v0, mTitleColor:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, setTitleColor(I)V

    .line 4663
    .end local v4    # "background":Landroid/graphics/drawable/Drawable;
    .end local v9    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_6c9
    move-object/from16 v0, p0

    iget-object v0, v0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/PhoneWindow$DecorView;->finishChanging()V

    .line 4665
    return-object v5

    .line 4638
    :cond_6d3
    move-object/from16 v0, p0

    iget-object v4, v0, mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v4    # "background":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_649

    .line 4646
    :cond_6d9
    const/4 v9, 0x0

    .restart local v9    # "frame":Landroid/graphics/drawable/Drawable;
    goto :goto_66a
.end method

.method public getAllowEnterTransitionOverlap()Z
    .registers 2

    .prologue
    .line 5330
    iget-object v0, p0, mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5
.end method

.method public getAllowReturnTransitionOverlap()Z
    .registers 2

    .prologue
    .line 5340
    iget-object v0, p0, mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .prologue
    .line 2146
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_12

    .line 2147
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    .line 2149
    :cond_12
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, mContentScene:Landroid/transition/Scene;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_b

    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->findFocus()Landroid/view/View;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final getDecorView()Landroid/view/View;
    .registers 2

    .prologue
    .line 2262
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-nez v0, :cond_7

    .line 2263
    invoke-direct {p0}, installDecor()V

    .line 2265
    :cond_7
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    return-object v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .registers 2

    .prologue
    .line 5281
    iget-object v0, p0, mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .registers 2

    .prologue
    .line 5292
    iget-object v0, p0, mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 566
    iget-object v0, p0, mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .registers 2

    .prologue
    .line 5236
    iget-object v0, p0, mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public getNavigationBarColor()I
    .registers 2

    .prologue
    .line 5864
    iget v0, p0, mNavigationBarColor:I

    return v0
.end method

.method protected getOptionsPanelGravity()I
    .registers 7

    .prologue
    .line 1413
    :try_start_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1414
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600bd

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1415
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1417
    .local v2, "smallestScreenWidthDp":I
    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_31

    const/16 v3, 0x258

    if-lt v2, v3, :cond_31

    .line 1418
    sget-object v3, Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravityTablet()I

    move-result v3

    .line 1424
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "smallestScreenWidthDp":I
    :goto_30
    return v3

    .line 1420
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "smallestScreenWidthDp":I
    :cond_31
    sget-object v3, Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity()I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_36} :catch_38

    move-result v3

    goto :goto_30

    .line 1422
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "smallestScreenWidthDp":I
    :catch_38
    move-exception v0

    .line 1423
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "PhoneWindow"

    const-string v4, "Couldn\'t getOptionsPanelGravity; using default"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1424
    const/16 v3, 0x51

    goto :goto_30
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .registers 3

    .prologue
    .line 5297
    iget-object v0, p0, mReenterTransition:Landroid/transition/Transition;

    sget-object v1, USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, mReenterTransition:Landroid/transition/Transition;

    goto :goto_a
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .registers 3

    .prologue
    .line 5286
    iget-object v0, p0, mReturnTransition:Landroid/transition/Transition;

    sget-object v1, USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, mReturnTransition:Landroid/transition/Transition;

    goto :goto_a
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .registers 2

    .prologue
    .line 5303
    iget-object v0, p0, mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementExitTransition()Landroid/transition/Transition;
    .registers 2

    .prologue
    .line 5314
    iget-object v0, p0, mSharedElementExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementReenterTransition()Landroid/transition/Transition;
    .registers 3

    .prologue
    .line 5319
    iget-object v0, p0, mSharedElementReenterTransition:Landroid/transition/Transition;

    sget-object v1, USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, mSharedElementReenterTransition:Landroid/transition/Transition;

    goto :goto_a
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .registers 3

    .prologue
    .line 5308
    iget-object v0, p0, mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v1, USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, mSharedElementReturnTransition:Landroid/transition/Transition;

    goto :goto_a
.end method

.method public getSharedElementsUseOverlay()Z
    .registers 2

    .prologue
    .line 5364
    iget-object v0, p0, mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mSharedElementsUseOverlay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5
.end method

.method public getStatusBarColor()I
    .registers 2

    .prologue
    .line 5850
    iget v0, p0, mStatusBarColor:I

    return v0
.end method

.method public getTransitionBackgroundFadeDuration()J
    .registers 5

    .prologue
    .line 5345
    iget-wide v0, p0, mBackgroundFadeDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    const-wide/16 v0, 0x12c

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, mBackgroundFadeDurationMillis:J

    goto :goto_a
.end method

.method public getTransitionManager()Landroid/transition/TransitionManager;
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, mTransitionManager:Landroid/transition/TransitionManager;

    return-object v0
.end method

.method public getVolumeControlStream()I
    .registers 2

    .prologue
    .line 5226
    iget v0, p0, mVolumeControlStreamType:I

    return v0
.end method

.method protected initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .registers 8
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1452
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v2, :cond_c

    .line 1453
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move v2, v3

    .line 1479
    :goto_b
    return v2

    .line 1457
    :cond_c
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_12

    move v2, v4

    .line 1458
    goto :goto_b

    .line 1461
    :cond_12
    iget-object v2, p0, mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    if-nez v2, :cond_1e

    .line 1462
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$1;)V

    iput-object v2, p0, mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    .line 1465
    :cond_1e
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v5}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .local v1, "menuView":Lcom/android/internal/view/menu/MenuView;
    :goto_2e
    move-object v2, v1

    .line 1469
    check-cast v2, Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1471
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v2, :cond_4c

    .line 1473
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    move-result v0

    .line 1474
    .local v0, "defaultAnimations":I
    if-eqz v0, :cond_3f

    .line 1475
    iput v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    :cond_3f
    move v2, v3

    .line 1477
    goto :goto_b

    .line 1465
    .end local v0    # "defaultAnimations":I
    .end local v1    # "menuView":Lcom/android/internal/view/menu/MenuView;
    :cond_41
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v5}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    goto :goto_2e

    .restart local v1    # "menuView":Lcom/android/internal/view/menu/MenuView;
    :cond_4c
    move v2, v4

    .line 1479
    goto :goto_b
.end method

.method protected initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .registers 10
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v7, 0x0

    .line 1388
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;I)V

    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    .line 1389
    const/16 v2, 0x51

    iput v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    .line 1390
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1391
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Window:[I

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1393
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x26

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 1394
    .local v1, "elevation":F
    cmpl-float v2, v1, v7

    if-eqz v2, :cond_36

    .line 1395
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setElevation(F)V

    .line 1397
    :cond_36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1399
    const/4 v2, 0x1

    return v2
.end method

.method protected initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .registers 12
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    const v9, 0x1010397

    const/4 v8, 0x1

    .line 1338
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    .line 1341
    .local v1, "context":Landroid/content/Context;
    iget v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_12

    iget v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_63

    :cond_12
    iget-object v6, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v6, :cond_63

    .line 1343
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1344
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1345
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    const v6, 0x1010431

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1347
    const/4 v5, 0x0

    .line 1348
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_6f

    .line 1349
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1350
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1351
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1352
    invoke-virtual {v5, v9, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1359
    :goto_3d
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_53

    .line 1360
    if-nez v5, :cond_4e

    .line 1361
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1362
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1364
    :cond_4e
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1367
    :cond_53
    if-eqz v5, :cond_63

    .line 1368
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1369
    .end local v1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v1, v2

    .line 1373
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_63
    new-instance v3, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v3, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1374
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1375
    invoke-virtual {p1, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 1377
    return v8

    .line 1355
    .end local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    .restart local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_6f
    invoke-virtual {v0, v9, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_3d
.end method

.method public injectInputEvent(Landroid/view/InputEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 1828
    invoke-direct {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 1829
    return-void
.end method

.method public invalidatePanelMenu(I)V
    .registers 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 989
    iget v0, p0, mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, mInvalidatePanelMenuFeatures:I

    .line 991
    iget-boolean v0, p0, mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_19

    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_19

    .line 992
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v1, p0, mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 993
    iput-boolean v2, p0, mInvalidatePanelMenuPosted:Z

    .line 995
    :cond_19
    return-void
.end method

.method public isFloating()Z
    .registers 2

    .prologue
    .line 555
    iget-boolean v0, p0, mIsFloating:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 4982
    invoke-direct {p0, v1, v1}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 4983
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_14

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method protected onActive()V
    .registers 1

    .prologue
    .line 2258
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 705
    iget-object v2, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v2, :cond_42

    .line 706
    invoke-direct {p0, v3, v3}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 707
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_42

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_42

    .line 708
    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_43

    .line 710
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 711
    .local v1, "state":Landroid/os/Bundle;
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_21

    .line 712
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 714
    :cond_21
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_2a

    .line 715
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 720
    :cond_2a
    invoke-static {v0}, clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    .line 723
    invoke-direct {p0, v3}, reopenMenu(Z)V

    .line 726
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_39

    .line 727
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 729
    :cond_39
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_42

    .line 730
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 740
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .end local v1    # "state":Landroid/os/Bundle;
    :cond_42
    :goto_42
    return-void

    .line 736
    .restart local v0    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_43
    invoke-static {v0}, clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    goto :goto_42
.end method

.method protected onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "alpha"    # I

    .prologue
    .line 1610
    const/4 v1, 0x3

    if-ne p1, v1, :cond_14

    .line 1611
    invoke-direct {p0}, getLeftIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1618
    .local v0, "view":Landroid/widget/ImageView;
    :goto_7
    if-eqz p2, :cond_1c

    .line 1619
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1620
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1621
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1625
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_13
    :goto_13
    return-void

    .line 1612
    :cond_14
    const/4 v1, 0x4

    if-ne p1, v1, :cond_13

    .line 1613
    invoke-direct {p0}, getRightIconView()Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0    # "view":Landroid/widget/ImageView;
    goto :goto_7

    .line 1623
    :cond_1c
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_13
.end method

.method protected onIntChanged(II)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 1635
    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v1, 0x5

    if-ne p1, v1, :cond_a

    .line 1636
    :cond_6
    invoke-direct {p0, p2}, updateProgressBars(I)V

    .line 1643
    :cond_9
    :goto_9
    return-void

    .line 1637
    :cond_a
    const/4 v1, 0x7

    if-ne p1, v1, :cond_9

    .line 1638
    const v1, 0x1020041

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1639
    .local v0, "titleContainer":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_9

    .line 1640
    iget-object v1, p0, mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_9
.end method

.method protected onKeyDown(IILandroid/view/KeyEvent;)Z
    .registers 15
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v10, 0x800000

    const/high16 v9, 0x10000000

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1947
    iget-object v8, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v8, :cond_14

    iget-object v8, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1952
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_10
    sparse-switch p2, :sswitch_data_172

    .line 2125
    .end local p1    # "featureId":I
    :cond_13
    :goto_13
    return v6

    .line 1947
    .end local v1    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    .restart local p1    # "featureId":I
    :cond_14
    const/4 v1, 0x0

    goto :goto_10

    .line 1958
    .restart local v1    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :sswitch_16
    const/4 v0, 0x0

    .line 1959
    .local v0, "direction":I
    sparse-switch p2, :sswitch_data_1d8

    .line 1974
    :goto_1a
    iget v5, p0, mVolumeControlStreamType:I

    .line 1977
    .local v5, "volumeControlStreamType":I
    invoke-direct {p0, v0}, adjustVolumeForRotation(I)I

    move-result v0

    .line 1978
    iget v6, p0, mVolumeControlStreamType:I

    invoke-direct {p0, v6}, adjustVolumeControlStreamTypeForKnox(I)I

    move-result v5

    .line 1983
    iget-object v6, p0, mMediaController:Landroid/media/session/MediaController;

    if-eqz v6, :cond_38

    .line 1984
    iget-object v6, p0, mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v6, v0, v7}, Landroid/media/session/MediaController;->adjustVolume(II)V

    :goto_2f
    move v6, v7

    .line 1991
    goto :goto_13

    .line 1961
    .end local v5    # "volumeControlStreamType":I
    :sswitch_31
    const/4 v0, 0x1

    .line 1962
    goto :goto_1a

    .line 1964
    :sswitch_33
    const/4 v0, -0x1

    .line 1965
    goto :goto_1a

    .line 1967
    :sswitch_35
    const/16 v0, 0x65

    goto :goto_1a

    .line 1986
    .restart local v5    # "volumeControlStreamType":I
    :cond_38
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v6

    iget v8, p0, mVolumeControlStreamType:I

    const/16 v9, 0x1011

    invoke-virtual {v6, v8, v0, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    goto :goto_2f

    .line 2006
    .end local v0    # "direction":I
    .end local v5    # "volumeControlStreamType":I
    :sswitch_48
    iget-object v8, p0, mMediaController:Landroid/media/session/MediaController;

    if-eqz v8, :cond_13

    .line 2007
    iget-object v8, p0, mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v8, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_13

    move v6, v7

    .line 2008
    goto :goto_13

    .line 2015
    :sswitch_56
    if-gez p1, :cond_59

    move p1, v6

    .end local p1    # "featureId":I
    :cond_59
    invoke-virtual {p0, p1, p3}, onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    move v6, v7

    .line 2016
    goto :goto_13

    .line 2020
    .restart local p1    # "featureId":I
    :sswitch_5e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-gtz v8, :cond_13

    .line 2021
    if-ltz p1, :cond_13

    .line 2023
    if-eqz v1, :cond_6b

    .line 2024
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_6b
    move v6, v7

    .line 2026
    goto :goto_13

    :sswitch_6d
    move v6, v7

    .line 2031
    goto :goto_13

    .line 2035
    :sswitch_6f
    invoke-direct {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_13

    if-eqz v1, :cond_13

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-gtz v8, :cond_13

    .line 2040
    const-string v6, "android.intent.action.MAIN"

    const-string v8, "android.intent.category.APP_EMAIL"

    invoke-static {v6, v8}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 2041
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2042
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2045
    :try_start_8f
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_96
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8f .. :try_end_96} :catch_99

    :goto_96
    move v6, v7

    .line 2050
    goto/16 :goto_13

    .line 2046
    :catch_99
    move-exception v2

    .line 2047
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "PhoneWindow"

    const-string v8, "No activity to launch email"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_96

    .line 2054
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :sswitch_a2
    invoke-direct {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_13

    if-eqz v1, :cond_13

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-gtz v8, :cond_13

    .line 2058
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2059
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "com.android.mms"

    const-string v8, "com.android.mms.ui.ConversationComposer"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2060
    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2061
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2062
    invoke-direct {p0, v4}, getActivityCount(Landroid/content/Intent;)I

    move-result v6

    if-lez v6, :cond_d3

    .line 2064
    :try_start_cc
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_d3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_cc .. :try_end_d3} :catch_d6

    :cond_d3
    :goto_d3
    move v6, v7

    .line 2069
    goto/16 :goto_13

    .line 2065
    :catch_d6
    move-exception v2

    .line 2066
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "PhoneWindow"

    const-string v8, "No activity to launch mms ConversationComposer."

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d3

    .line 2073
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :sswitch_df
    invoke-direct {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_13

    if-eqz v1, :cond_13

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-gtz v8, :cond_13

    .line 2077
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2078
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2079
    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2080
    const-string/jumbo v6, "sec.android.intent.extra.LAUNCHER_ACTION"

    const-string v8, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2082
    :try_start_108
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_10f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_108 .. :try_end_10f} :catch_16f

    :goto_10f
    move v6, v7

    .line 2086
    goto/16 :goto_13

    .line 2090
    .end local v4    # "intent":Landroid/content/Intent;
    :sswitch_112
    invoke-direct {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_13

    if-eqz v1, :cond_13

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-gtz v8, :cond_13

    .line 2094
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "input_method"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 2096
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_135

    .line 2097
    invoke-virtual {v3, v6, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_135
    move v6, v7

    .line 2099
    goto/16 :goto_13

    .line 2103
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_138
    invoke-direct {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_13

    if-eqz v1, :cond_13

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-gtz v8, :cond_13

    .line 2107
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2108
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "com.google.android.googlequicksearchbox"

    const-string v8, "com.google.android.googlequicksearchbox.VoiceSearchActivity"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2110
    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2111
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2112
    invoke-direct {p0, v4}, getActivityCount(Landroid/content/Intent;)I

    move-result v6

    if-lez v6, :cond_169

    .line 2113
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V

    :cond_169
    move v6, v7

    .line 2115
    goto/16 :goto_13

    .end local v4    # "intent":Landroid/content/Intent;
    :sswitch_16c
    move v6, v7

    .line 2119
    goto/16 :goto_13

    .line 2083
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_16f
    move-exception v6

    goto :goto_10f

    .line 1952
    nop

    :sswitch_data_172
    .sparse-switch
        0x4 -> :sswitch_5e
        0x18 -> :sswitch_16
        0x19 -> :sswitch_16
        0x4f -> :sswitch_48
        0x52 -> :sswitch_56
        0x55 -> :sswitch_48
        0x56 -> :sswitch_48
        0x57 -> :sswitch_48
        0x58 -> :sswitch_48
        0x59 -> :sswitch_48
        0x5a -> :sswitch_48
        0x5b -> :sswitch_48
        0x7e -> :sswitch_48
        0x7f -> :sswitch_48
        0x82 -> :sswitch_48
        0xa4 -> :sswitch_16
        0x3ea -> :sswitch_df
        0x3ee -> :sswitch_112
        0x3ef -> :sswitch_138
        0x3f0 -> :sswitch_6f
        0x3f1 -> :sswitch_16c
        0x3f2 -> :sswitch_6d
        0x3f5 -> :sswitch_a2
        0x3fb -> :sswitch_16
        0x3fc -> :sswitch_16
    .end sparse-switch

    .line 1959
    :sswitch_data_1d8
    .sparse-switch
        0x18 -> :sswitch_31
        0x19 -> :sswitch_33
        0xa4 -> :sswitch_35
    .end sparse-switch
.end method

.method public final onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 1041
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1043
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1c

    .line 1045
    iput v0, p0, mPanelChordingKey:I

    .line 1047
    invoke-direct {p0, p1, v2}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1048
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_1b

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_1b

    .line 1049
    invoke-virtual {p0, v1, p2}, preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1068
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1b
    :goto_1b
    return v2

    .line 1053
    :cond_1c
    iget v3, p0, mPanelChordingKey:I

    if-ne v3, v0, :cond_1b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1b

    .line 1056
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, ensureSFinderFeatureCached(Landroid/content/Context;)V

    .line 1057
    sget-boolean v3, mSFinderEnabled:Z

    if-nez v3, :cond_1b

    .line 1063
    iput v2, p0, mPanelChordingKey:I

    .line 1064
    invoke-direct {p0, p2}, launchDefaultSearch(Landroid/view/KeyEvent;)Z

    goto :goto_1b
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v7, 0x1014

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2159
    iget-object v5, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v5, :cond_17

    iget-object v5, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 2161
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_e
    if-eqz v0, :cond_13

    .line 2162
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 2167
    :cond_13
    sparse-switch p2, :sswitch_data_94

    .line 2253
    .end local p1    # "featureId":I
    :cond_16
    :goto_16
    return v3

    .line 2159
    .end local v0    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    .restart local p1    # "featureId":I
    :cond_17
    const/4 v0, 0x0

    goto :goto_e

    .line 2172
    .restart local v0    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :sswitch_19
    const/16 v1, 0x1014

    .line 2176
    .local v1, "flags":I
    iget-object v5, p0, mMediaController:Landroid/media/session/MediaController;

    if-eqz v5, :cond_26

    .line 2177
    iget-object v5, p0, mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v5, v3, v7}, Landroid/media/session/MediaController;->adjustVolume(II)V

    :goto_24
    move v3, v4

    .line 2182
    goto :goto_16

    .line 2179
    :cond_26
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v5

    iget v6, p0, mVolumeControlStreamType:I

    invoke-virtual {v5, v6, v3, v7}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    goto :goto_24

    .line 2190
    .end local v1    # "flags":I
    :sswitch_34
    invoke-virtual {p0}, getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    iget v5, p0, mVolumeControlStreamType:I

    invoke-virtual {v3, p3, v5}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    move v3, v4

    .line 2191
    goto :goto_16

    .line 2206
    :sswitch_3f
    iget-object v5, p0, mMediaController:Landroid/media/session/MediaController;

    if-eqz v5, :cond_16

    .line 2207
    iget-object v5, p0, mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v5, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_16

    move v3, v4

    .line 2208
    goto :goto_16

    .line 2215
    :sswitch_4d
    if-gez p1, :cond_50

    move p1, v3

    .end local p1    # "featureId":I
    :cond_50
    invoke-virtual {p0, p1, p3}, onKeyUpPanel(ILandroid/view/KeyEvent;)V

    move v3, v4

    .line 2217
    goto :goto_16

    .line 2221
    .restart local p1    # "featureId":I
    :sswitch_55
    if-ltz p1, :cond_16

    .line 2222
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_16

    .line 2223
    if-nez p1, :cond_74

    .line 2224
    invoke-direct {p0, p1, v3}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2225
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_74

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v3, :cond_74

    .line 2228
    invoke-direct {p0, v4}, reopenMenu(Z)V

    move v3, v4

    .line 2229
    goto :goto_16

    .line 2232
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_74
    invoke-virtual {p0, p1}, closePanel(I)V

    move v3, v4

    .line 2233
    goto :goto_16

    .line 2243
    :sswitch_79
    invoke-direct {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-nez v5, :cond_16

    .line 2246
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_92

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_92

    .line 2247
    invoke-direct {p0, p3}, launchDefaultSearch(Landroid/view/KeyEvent;)Z

    :cond_92
    move v3, v4

    .line 2249
    goto :goto_16

    .line 2167
    :sswitch_data_94
    .sparse-switch
        0x4 -> :sswitch_55
        0x18 -> :sswitch_19
        0x19 -> :sswitch_19
        0x4f -> :sswitch_3f
        0x52 -> :sswitch_4d
        0x54 -> :sswitch_79
        0x55 -> :sswitch_3f
        0x56 -> :sswitch_3f
        0x57 -> :sswitch_3f
        0x58 -> :sswitch_3f
        0x59 -> :sswitch_3f
        0x5a -> :sswitch_3f
        0x5b -> :sswitch_3f
        0x7e -> :sswitch_3f
        0x7f -> :sswitch_3f
        0x82 -> :sswitch_3f
        0xa4 -> :sswitch_34
        0x3fb -> :sswitch_19
        0x3fc -> :sswitch_19
        0x3fd -> :sswitch_34
    .end sparse-switch
.end method

.method public final onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .registers 8
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 1078
    iget v3, p0, mPanelChordingKey:I

    if-eqz v3, :cond_1f

    .line 1079
    iput v4, p0, mPanelChordingKey:I

    .line 1081
    invoke-direct {p0, p1, v4}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1083
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_1f

    iget-object v3, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v3, :cond_1d

    iget-object v3, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v3

    if-nez v3, :cond_1f

    :cond_1d
    if-nez v2, :cond_20

    .line 1143
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1f
    :goto_1f
    return-void

    .line 1088
    .restart local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_20
    const/4 v0, 0x0

    .line 1089
    .local v0, "playSoundEffect":Z
    if-nez p1, :cond_5f

    iget-object v3, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_5f

    iget-object v3, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_5f

    .line 1092
    iget-object v3, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    if-nez v3, :cond_58

    .line 1093
    invoke-virtual {p0}, isDestroyed()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {p0, v2, p2}, preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1094
    iget-object v3, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v0

    goto :goto_1f

    .line 1097
    :cond_58
    iget-object v3, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v0

    goto :goto_1f

    .line 1100
    :cond_5f
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_67

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    if-eqz v3, :cond_6e

    .line 1104
    :cond_67
    iget-boolean v0, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1107
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_1f

    .line 1109
    :cond_6e
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_1f

    .line 1110
    const/4 v1, 0x1

    .line 1111
    .local v1, "show":Z
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v3, :cond_7d

    .line 1114
    iput-boolean v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1115
    invoke-virtual {p0, v2, p2}, preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1118
    :cond_7d
    if-eqz v1, :cond_1f

    .line 1120
    const v3, 0xc351

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1123
    invoke-direct {p0, v2, p2}, openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1125
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1255
    invoke-virtual {p0}, getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1256
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1257
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1258
    .local v1, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_1d

    .line 1259
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 1262
    .end local v1    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 1266
    const/4 v0, 0x1

    invoke-direct {p0, v0}, reopenMenu(Z)V

    .line 1267
    return-void
.end method

.method onOptionsPanelRotationChanged()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1429
    invoke-direct {p0, v3, v3}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1430
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_8

    .line 1441
    :cond_7
    :goto_7
    return-void

    .line 1432
    :cond_8
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v3, :cond_29

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    move-object v0, v3

    .line 1434
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_15
    if-eqz v0, :cond_7

    .line 1435
    invoke-virtual {p0}, getOptionsPanelGravity()I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1436
    invoke-virtual {p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 1437
    .local v2, "wm":Landroid/view/ViewManager;
    if-eqz v2, :cond_7

    .line 1438
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 1432
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "wm":Landroid/view/ViewManager;
    :cond_29
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final openPanel(ILandroid/view/KeyEvent;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 757
    if-nez p1, :cond_22

    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_22

    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_22

    .line 760
    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 764
    :goto_21
    return-void

    .line 762
    :cond_22
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_21
.end method

.method public final peekDecorView()Landroid/view/View;
    .registers 2

    .prologue
    .line 2270
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1485
    iget-object v0, p0, mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_b

    iget-object v0, p0, mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public performPanelIdentifierAction(III)Z
    .registers 9
    .param p1, "featureId"    # I
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1224
    invoke-direct {p0, p1, v4}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1225
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x52

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1, v2}, preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1239
    :cond_13
    :goto_13
    return v0

    .line 1228
    :cond_14
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_13

    .line 1232
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    .line 1235
    .local v0, "res":Z
    iget-object v2, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v2, :cond_13

    .line 1236
    invoke-virtual {p0, v1, v4}, closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_13
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    .line 1190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public final preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 598
    invoke-virtual {p0}, isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 699
    :cond_9
    :goto_9
    return v5

    .line 603
    :cond_a
    iget-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_10

    move v5, v4

    .line 604
    goto :goto_9

    .line 607
    :cond_10
    iget-object v3, p0, mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v3, :cond_1d

    iget-object v3, p0, mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eq v3, p1, :cond_1d

    .line 609
    iget-object v3, p0, mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {p0, v3, v5}, closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 612
    :cond_1d
    invoke-virtual {p0}, getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 614
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2b

    .line 615
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 618
    :cond_2b
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_35

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_98

    :cond_35
    move v1, v4

    .line 621
    .local v1, "isActionBarMenu":Z
    :goto_36
    if-eqz v1, :cond_41

    iget-object v3, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_41

    .line 624
    iget-object v3, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 627
    :cond_41
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v3, :cond_ed

    .line 629
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_4d

    iget-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v3, :cond_9c

    .line 630
    :cond_4d
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v3, :cond_5b

    .line 631
    invoke-virtual {p0, p1}, initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_9

    .line 636
    :cond_5b
    if-eqz v1, :cond_75

    iget-object v3, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_75

    .line 637
    iget-object v3, p0, mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    if-nez v3, :cond_6c

    .line 638
    new-instance v3, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-direct {v3, p0, v8}, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$1;)V

    iput-object v3, p0, mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    .line 640
    :cond_6c
    iget-object v3, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v7, p0, mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 647
    :cond_75
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 648
    if-eqz v0, :cond_86

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 650
    :cond_86
    invoke-virtual {p1, v8}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 652
    if-eqz v1, :cond_9

    iget-object v3, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_9

    .line 654
    iget-object v3, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v4, p0, mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    goto/16 :goto_9

    .end local v1    # "isActionBarMenu":Z
    :cond_98
    move v1, v5

    .line 618
    goto :goto_36

    .line 660
    .restart local v1    # "isActionBarMenu":Z
    :cond_9a
    iput-boolean v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 667
    :cond_9c
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 671
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v3, :cond_ae

    .line 672
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 673
    iput-object v8, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 676
    :cond_ae
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v7, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_ce

    .line 677
    if-eqz v1, :cond_c7

    iget-object v3, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_c7

    .line 680
    iget-object v3, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v4, p0, mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 682
    :cond_c7
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_9

    .line 687
    :cond_ce
    if-eqz p2, :cond_f6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    :goto_d4
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 689
    .local v2, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    if-eq v3, v4, :cond_f8

    move v3, v4

    :goto_df
    iput-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    .line 690
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-boolean v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 691
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 695
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_ed
    iput-boolean v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 696
    iput-boolean v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 697
    iput-object p1, p0, mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move v5, v4

    .line 699
    goto/16 :goto_9

    .line 687
    :cond_f6
    const/4 v3, -0x1

    goto :goto_d4

    .restart local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_f8
    move v3, v5

    .line 689
    goto :goto_df
.end method

.method public requestFeature(I)Z
    .registers 7
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 397
    iget-object v2, p0, mContentParent:Landroid/view/ViewGroup;

    if-eqz v2, :cond_10

    .line 398
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v3, "requestFeature() must be called before adding content"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 400
    :cond_10
    invoke-virtual {p0}, getFeatures()I

    move-result v0

    .line 401
    .local v0, "features":I
    shl-int v2, v4, p1

    or-int v1, v0, v2

    .line 402
    .local v1, "newFeatures":I
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_28

    and-int/lit16 v2, v1, -0x34c2

    if-eqz v2, :cond_28

    .line 406
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine custom titles with other title features"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 409
    :cond_28
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_30

    if-ne p1, v3, :cond_30

    .line 410
    const/4 v2, 0x0

    .line 430
    :goto_2f
    return v2

    .line 412
    :cond_30
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_39

    if-ne p1, v4, :cond_39

    .line 414
    invoke-virtual {p0, v3}, removeFeature(I)V

    .line 417
    :cond_39
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_49

    const/16 v2, 0xb

    if-ne p1, v2, :cond_49

    .line 418
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine swipe dismissal and the action bar."

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 421
    :cond_49
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_57

    if-ne p1, v3, :cond_57

    .line 422
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine swipe dismissal and the action bar."

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 426
    :cond_57
    const/4 v2, 0x5

    if-ne p1, v2, :cond_72

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 428
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot use indeterminate progress on a watch."

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 430
    :cond_72
    invoke-super {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v2

    goto :goto_2f
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 2322
    iget-object v5, p0, mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_6

    .line 2362
    :cond_5
    :goto_5
    return-void

    .line 2326
    :cond_6
    const-string v5, "android:views"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 2328
    .local v4, "savedStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_13

    .line 2329
    iget-object v5, p0, mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 2333
    :cond_13
    const-string v5, "android:focusedViewId"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2334
    .local v1, "focusedViewId":I
    if-eq v1, v6, :cond_26

    .line 2335
    iget-object v5, p0, mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2336
    .local v2, "needsFocus":Landroid/view/View;
    if-eqz v2, :cond_46

    .line 2337
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2346
    .end local v2    # "needsFocus":Landroid/view/View;
    :cond_26
    :goto_26
    const-string v5, "android:Panels"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 2347
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_31

    .line 2348
    invoke-direct {p0, v3}, restorePanelState(Landroid/util/SparseArray;)V

    .line 2351
    :cond_31
    iget-object v5, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v5, :cond_5

    .line 2352
    const-string v5, "android:ActionBar"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2354
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_65

    .line 2355
    invoke-virtual {p0}, doPendingInvalidatePanelMenu()V

    .line 2356
    iget-object v5, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5, v0}, Lcom/android/internal/widget/DecorContentParent;->restoreToolbarHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_5

    .line 2339
    .end local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .end local v3    # "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v2    # "needsFocus":Landroid/view/View;
    :cond_46
    const-string v5, "PhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Previously focused view reported id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " during save, but can\'t be found during restore."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 2358
    .end local v2    # "needsFocus":Landroid/view/View;
    .restart local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v3    # "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_65
    const-string v5, "PhoneWindow"

    const-string v6, "Missing saved instance states for action bar views! State will not be restored."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .registers 8

    .prologue
    .line 2281
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2282
    .local v2, "outState":Landroid/os/Bundle;
    iget-object v5, p0, mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_a

    .line 2316
    :cond_9
    :goto_9
    return-object v2

    .line 2286
    :cond_a
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 2287
    .local v4, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2288
    const-string v5, "android:views"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2291
    iget-object v5, p0, mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2292
    .local v1, "focusedView":Landroid/view/View;
    if-eqz v1, :cond_31

    .line 2293
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_31

    .line 2294
    const-string v5, "android:focusedViewId"

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2304
    :cond_31
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2305
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, v3}, savePanelState(Landroid/util/SparseArray;)V

    .line 2306
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_44

    .line 2307
    const-string v5, "android:Panels"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2310
    :cond_44
    iget-object v5, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v5, :cond_9

    .line 2311
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2312
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5, v0}, Lcom/android/internal/widget/DecorContentParent;->saveToolbarHierarchyState(Landroid/util/SparseArray;)V

    .line 2313
    const-string v5, "android:ActionBar"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_9
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .prologue
    .line 5832
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5833
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 5836
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5837
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .registers 3
    .param p1, "allow"    # Z

    .prologue
    .line 5325
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 5326
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .registers 3
    .param p1, "allowExitTransitionOverlap"    # Z

    .prologue
    .line 5335
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 5336
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 1507
    iget-object v1, p0, mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_9

    iget v1, p0, mBackgroundResource:I

    if-eqz v1, :cond_21

    .line 1508
    :cond_9
    iput v0, p0, mBackgroundResource:I

    .line 1509
    iput-object p1, p0, mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1510
    iget-object v1, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v1, :cond_16

    .line 1511
    iget-object v1, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1513
    :cond_16
    iget v1, p0, mBackgroundFallbackResource:I

    if-eqz v1, :cond_21

    .line 1514
    iget-object v1, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz p1, :cond_22

    :goto_1e
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setBackgroundFallback(I)V

    .line 1517
    :cond_21
    return-void

    .line 1514
    :cond_22
    iget v0, p0, mBackgroundFallbackResource:I

    goto :goto_1e
.end method

.method public final setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4970
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 4971
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 4972
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 4973
    return-void
.end method

.method public final setChildInt(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 4977
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, updateInt(IIZ)V

    .line 4978
    return-void
.end method

.method public final setClipToOutline(Z)V
    .registers 3
    .param p1, "clipToOutline"    # Z

    .prologue
    .line 1499
    iput-boolean p1, p0, mClipToOutline:Z

    .line 1500
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_b

    .line 1501
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setClipToOutline(Z)V

    .line 1503
    :cond_b
    return-void
.end method

.method public final setContainer(Landroid/view/Window;)V
    .registers 2
    .param p1, "container"    # Landroid/view/Window;

    .prologue
    .line 392
    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 393
    return-void
.end method

.method public setContentView(I)V
    .registers 6
    .param p1, "layoutResID"    # I

    .prologue
    const/16 v3, 0xc

    .line 463
    iget-object v2, p0, mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_31

    .line 464
    invoke-direct {p0}, installDecor()V

    .line 469
    :cond_9
    :goto_9
    invoke-virtual {p0, v3}, hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 470
    iget-object v2, p0, mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, p1, v3}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v1

    .line 472
    .local v1, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v1}, transitionTo(Landroid/transition/Scene;)V

    .line 476
    .end local v1    # "newScene":Landroid/transition/Scene;
    :goto_1c
    iget-object v2, p0, mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 477
    invoke-virtual {p0}, getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 478
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_30

    invoke-virtual {p0}, isDestroyed()Z

    move-result v2

    if-nez v2, :cond_30

    .line 479
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 481
    :cond_30
    return-void

    .line 465
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_31
    invoke-virtual {p0, v3}, hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 466
    iget-object v2, p0, mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_9

    .line 474
    :cond_3d
    iget-object v2, p0, mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1c
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 485
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/16 v3, 0xc

    .line 493
    iget-object v2, p0, mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_31

    .line 494
    invoke-direct {p0}, installDecor()V

    .line 499
    :cond_9
    :goto_9
    invoke-virtual {p0, v3}, hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 500
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    new-instance v1, Landroid/transition/Scene;

    iget-object v2, p0, mContentParent:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 502
    .local v1, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v1}, transitionTo(Landroid/transition/Scene;)V

    .line 506
    .end local v1    # "newScene":Landroid/transition/Scene;
    :goto_1c
    iget-object v2, p0, mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 507
    invoke-virtual {p0}, getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 508
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_30

    invoke-virtual {p0}, isDestroyed()Z

    move-result v2

    if-nez v2, :cond_30

    .line 509
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 511
    :cond_30
    return-void

    .line 495
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_31
    invoke-virtual {p0, v3}, hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 496
    iget-object v2, p0, mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_9

    .line 504
    :cond_3d
    iget-object v2, p0, mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1c
.end method

.method public setDefaultIcon(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 1783
    iget v0, p0, mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    .line 1798
    :cond_6
    :goto_6
    return-void

    .line 1786
    :cond_7
    iput p1, p0, mIconRes:I

    .line 1787
    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_6

    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 1789
    :cond_1b
    if-eqz p1, :cond_29

    .line 1790
    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1791
    iget v0, p0, mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, mResourcesSetFlags:I

    goto :goto_6

    .line 1793
    :cond_29
    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1795
    iget v0, p0, mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, mResourcesSetFlags:I

    goto :goto_6
.end method

.method public setDefaultLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 1811
    iget v0, p0, mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 1818
    :cond_6
    :goto_6
    return-void

    .line 1814
    :cond_7
    iput p1, p0, mLogoRes:I

    .line 1815
    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_6

    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1816
    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    goto :goto_6
.end method

.method public final setElevation(F)V
    .registers 3
    .param p1, "elevation"    # F

    .prologue
    .line 1490
    iput p1, p0, mElevation:F

    .line 1491
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_b

    .line 1492
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setElevation(F)V

    .line 1494
    :cond_b
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1495
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 5241
    iput-object p1, p0, mEnterTransition:Landroid/transition/Transition;

    .line 5242
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 5251
    iput-object p1, p0, mExitTransition:Landroid/transition/Transition;

    .line 5252
    return-void
.end method

.method protected final setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1570
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1571
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_f

    .line 1572
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 1573
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1575
    :cond_f
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 1551
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1552
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1553
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1554
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_14

    .line 1555
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1556
    invoke-direct {p0, p1, v0, v2}, updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1558
    :cond_14
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 1562
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1563
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v1, p2, :cond_f

    .line 1564
    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    .line 1565
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1567
    :cond_f
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1521
    if-eqz p2, :cond_1f

    .line 1522
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1523
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    if-eq v1, p2, :cond_1e

    .line 1524
    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1525
    iput-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1526
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1527
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1532
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_1e
    :goto_1e
    return-void

    .line 1530
    :cond_1f
    invoke-virtual {p0, p1, v2}, setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1e
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1536
    if-eqz p2, :cond_22

    .line 1537
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1538
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1539
    :cond_14
    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1540
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1541
    invoke-direct {p0, p2}, loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1542
    invoke-direct {p0, p1, v0, v2}, updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1547
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_21
    :goto_21
    return-void

    .line 1545
    :cond_22
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_21
.end method

.method protected setFeatureFromAttrs(ILandroid/content/res/TypedArray;II)V
    .registers 9
    .param p1, "featureId"    # I
    .param p2, "attrs"    # Landroid/content/res/TypedArray;
    .param p3, "drawableAttr"    # I
    .param p4, "alphaAttr"    # I

    .prologue
    .line 4334
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4335
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_c

    .line 4336
    invoke-virtual {p0, p1}, requestFeature(I)Z

    .line 4337
    invoke-virtual {p0, p1, v1}, setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 4339
    :cond_c
    invoke-virtual {p0}, getFeatures()I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1f

    .line 4340
    const/4 v2, -0x1

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 4341
    .local v0, "alpha":I
    if-ltz v0, :cond_1f

    .line 4342
    invoke-virtual {p0, p1, v0}, setFeatureDrawableAlpha(II)V

    .line 4345
    .end local v0    # "alpha":I
    :cond_1f
    return-void
.end method

.method public final setFeatureInt(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 1581
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, updateInt(IIZ)V

    .line 1582
    return-void
.end method

.method public setIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 1773
    iput p1, p0, mIconRes:I

    .line 1774
    iget v0, p0, mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, mResourcesSetFlags:I

    .line 1775
    iget v0, p0, mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, mResourcesSetFlags:I

    .line 1776
    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_17

    .line 1777
    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1779
    :cond_17
    return-void
.end method

.method public setIsStartingWindow(Z)V
    .registers 2
    .param p1, "isStartingWindow"    # Z

    .prologue
    .line 5877
    iput-boolean p1, p0, mIsStartingWindow:Z

    .line 5878
    return-void
.end method

.method public setLocalFocus(ZZ)V
    .registers 4
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    .line 1822
    invoke-direct {p0}, getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->windowFocusChanged(ZZ)V

    .line 1824
    return-void
.end method

.method public setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 1802
    iput p1, p0, mLogoRes:I

    .line 1803
    iget v0, p0, mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, mResourcesSetFlags:I

    .line 1804
    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_11

    .line 1805
    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 1807
    :cond_11
    return-void
.end method

.method public setMediaController(Landroid/media/session/MediaController;)V
    .registers 2
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 5231
    iput-object p1, p0, mMediaController:Landroid/media/session/MediaController;

    .line 5232
    return-void
.end method

.method public setNavigationBarColor(I)V
    .registers 5
    .param p1, "color"    # I

    .prologue
    .line 5869
    iput p1, p0, mNavigationBarColor:I

    .line 5870
    const/4 v0, 0x1

    iput-boolean v0, p0, mForcedNavigationBarColor:Z

    .line 5871
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_10

    .line 5872
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$3900(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 5874
    :cond_10
    return-void
.end method

.method public setNavigationGuardVisibility(I)V
    .registers 3
    .param p1, "vis"    # I

    .prologue
    .line 5932
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_11

    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 5933
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5935
    :cond_11
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 5256
    iput-object p1, p0, mReenterTransition:Landroid/transition/Transition;

    .line 5257
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 5246
    iput-object p1, p0, mReturnTransition:Landroid/transition/Transition;

    .line 5247
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "sharedElementEnterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 5261
    iput-object p1, p0, mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 5262
    return-void
.end method

.method public setSharedElementExitTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "sharedElementExitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 5271
    iput-object p1, p0, mSharedElementExitTransition:Landroid/transition/Transition;

    .line 5272
    return-void
.end method

.method public setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 5276
    iput-object p1, p0, mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 5277
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 5266
    iput-object p1, p0, mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 5267
    return-void
.end method

.method public setSharedElementsUseOverlay(Z)V
    .registers 3
    .param p1, "sharedElementsUseOverlay"    # Z

    .prologue
    .line 5359
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 5360
    return-void
.end method

.method public setStatusBarColor(I)V
    .registers 5
    .param p1, "color"    # I

    .prologue
    .line 5855
    iput p1, p0, mStatusBarColor:I

    .line 5856
    const/4 v0, 0x1

    iput-boolean v0, p0, mForcedStatusBarColor:Z

    .line 5857
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_10

    .line 5858
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$3900(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 5860
    :cond_10
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 571
    iget-object v0, p0, mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 572
    iget-object v0, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    :cond_9
    :goto_9
    iput-object p1, p0, mTitle:Ljava/lang/CharSequence;

    .line 577
    return-void

    .line 573
    :cond_c
    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_9

    .line 574
    iget-object v0, p0, mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method public setTitleColor(I)V
    .registers 3
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 583
    iget-object v0, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 585
    :cond_9
    iput p1, p0, mTitleColor:I

    .line 586
    return-void
.end method

.method public setTransientCocktailBar(Z)V
    .registers 5
    .param p1, "disable"    # Z

    .prologue
    .line 5903
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5904
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_e

    .line 5905
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 5909
    :goto_d
    return-void

    .line 5907
    :cond_e
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_d
.end method

.method public setTransitionBackgroundFadeDuration(J)V
    .registers 6
    .param p1, "fadeDurationMillis"    # J

    .prologue
    .line 5351
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_f

    .line 5352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative durations are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5354
    :cond_f
    iput-wide p1, p0, mBackgroundFadeDurationMillis:J

    .line 5355
    return-void
.end method

.method public setTransitionManager(Landroid/transition/TransitionManager;)V
    .registers 2
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .prologue
    .line 450
    iput-object p1, p0, mTransitionManager:Landroid/transition/TransitionManager;

    .line 451
    return-void
.end method

.method public setUiOptions(I)V
    .registers 2
    .param p1, "uiOptions"    # I

    .prologue
    .line 435
    iput p1, p0, mUiOptions:I

    .line 436
    return-void
.end method

.method public setUiOptions(II)V
    .registers 5
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .prologue
    .line 440
    iget v0, p0, mUiOptions:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, mUiOptions:I

    .line 441
    return-void
.end method

.method public setVolumeControlStream(I)V
    .registers 2
    .param p1, "streamType"    # I

    .prologue
    .line 5221
    iput p1, p0, mVolumeControlStreamType:I

    .line 5222
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1873
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1853
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1858
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1863
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1868
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/InputQueue$Callback;

    .prologue
    .line 550
    iput-object p1, p0, mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 551
    return-void
.end method

.method public takeKeyEvents(Z)V
    .registers 3
    .param p1, "get"    # Z

    .prologue
    .line 1848
    iget-object v0, p0, mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setFocusable(Z)V

    .line 1849
    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback2;

    .prologue
    .line 546
    iput-object p1, p0, mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 547
    return-void
.end method

.method public final togglePanel(ILandroid/view/KeyEvent;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 979
    invoke-direct {p0, p1, v2}, getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 980
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_d

    .line 981
    invoke-virtual {p0, v0, v2}, closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 985
    :goto_c
    return-void

    .line 983
    :cond_d
    invoke-direct {p0, v0, p2}, openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_c
.end method

.method protected final updateDrawable(IZ)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "fromActive"    # Z

    .prologue
    .line 1594
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1595
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_a

    .line 1596
    invoke-direct {p0, p1, v0, p2}, updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1598
    :cond_a
    return-void
.end method
