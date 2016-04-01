.class public Lcom/android/internal/policy/MultiPhoneWindow;
.super Lcom/android/internal/policy/PhoneWindow;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;,
        Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;,
        Lcom/android/internal/policy/MultiPhoneWindow$DragModeBroadcastReceiver;,
        Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;,
        Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final DEBUG_FLOATING_BGCOLOR:Z

.field static final DEBUG_FLOATING_CYCLE:Z

.field static final DEBUG_FLOATING_SIZE:Z

.field static final DEBUG_GUIDEVIEW:Z = false

.field public static final DEBUG_MINIMIZE_ANIM:Z

.field static final DEBUG_ORIENTATION:Z

.field static final DEBUG_RESIZE_VISUAL_CUE:Z

.field static final DEBUG_TAB:Z

.field private static final LOGGING_REASON_DOCKING:I = 0x1

.field private static final STATE_FLOATING:I = 0x2

.field private static final STATE_MINIMIZED_FLOATING:I = 0x4

.field private static final STATE_NONE:I = -0x1

.field private static final STATE_NORMAL:I = 0x1

.field private static final STATE_SCALED_FLOATING:I = 0x3

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindow"

.field private static final bDSSEnabled:Z = true


# instance fields
.field private final NOT_SET:I

.field protected final TEMP_TOAST_HEIGHT:I

.field private badgeIcon:Landroid/graphics/drawable/Drawable;

.field private mActivity:Landroid/app/Activity;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBlackColor:Landroid/graphics/drawable/ColorDrawable;

.field private mBorder:Lcom/android/internal/policy/multiwindow/Border;

.field private mContentLayoutGenerated:Z

.field private mContentRootContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

.field private mCustomMinimizedView:Landroid/view/View;

.field private mDismissGuideByDockingCanceled:Z

.field private mDocking:Lcom/android/internal/policy/multiwindow/Docking;

.field private mDragMode:Z

.field mDragModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDssScale:F

.field private mFloatingFlag:I

.field private mFloatingMenuRightMargin:I

.field private mFocusedViewId:I

.field private mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

.field private mHScale:F

.field mHandler:Landroid/os/Handler;

.field private mHasStackFocus:Z

.field private mHeaderButtonSoundId:I

.field private mInitialFlag:I

.field private mIsAttachedToWindow:Z

.field private mIsBorderShown:Z

.field private mIsFinishing:Z

.field private mIsFullScreen:Z

.field private mIsMinimizeDisabled:Z

.field private mIsPenButtonPressed:Z

.field private mIsSecure:Z

.field private final mIsSupportDiagonalResizable:Z

.field private final mIsSupportMinimizeAnimation:Z

.field private final mIsSupportSimplificationUI:Z

.field private mLastHoverIcon:I

.field private mLastOrientation:I

.field private mLastRotated:Z

.field private mLastStackBound:Landroid/graphics/Rect;

.field private mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

.field private mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

.field private mMaxSizeRatio:F

.field private mMinStackBoundForLand:Landroid/graphics/Rect;

.field private mMinStackBoundForPort:Landroid/graphics/Rect;

.field private mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

.field private mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

.field private mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mResizablePadding:Landroid/graphics/Rect;

.field private mRotation:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStackBound:Landroid/graphics/Rect;

.field private mStatusBarHeight:I

.field private mSubWindow:Landroid/view/Window;

.field private mTargetSdkVersion:I

.field private mThickness:I

.field private mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

.field private mTitleBarHeight:I

.field private mTmpBound:Landroid/graphics/Rect;

.field private mToken:Landroid/os/IBinder;

.field private mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

.field private mVScale:F

.field private mVideoCapabilityDialog:Landroid/app/AlertDialog;

.field private mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

.field private userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 129
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, DEBUG:Z

    .line 130
    sget-boolean v0, DEBUG:Z

    sput-boolean v0, DEBUG_FLOATING_CYCLE:Z

    .line 131
    sget-boolean v0, DEBUG:Z

    sput-boolean v0, DEBUG_FLOATING_SIZE:Z

    .line 132
    sget-boolean v0, DEBUG:Z

    sput-boolean v0, DEBUG_FLOATING_BGCOLOR:Z

    .line 133
    sget-boolean v0, DEBUG:Z

    sput-boolean v0, DEBUG_TAB:Z

    .line 134
    sget-boolean v0, DEBUG:Z

    sput-boolean v0, DEBUG_ORIENTATION:Z

    .line 136
    sget-boolean v0, DEBUG:Z

    sput-boolean v0, DEBUG_RESIZE_VISUAL_CUE:Z

    .line 137
    sget-boolean v0, DEBUG:Z

    sput-boolean v0, DEBUG_MINIMIZE_ANIM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 256
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 140
    iput v1, p0, mDssScale:F

    .line 149
    iput-object v3, p0, mToken:Landroid/os/IBinder;

    .line 151
    iput-object v3, p0, mActivity:Landroid/app/Activity;

    .line 152
    iput-boolean v2, p0, mIsFinishing:Z

    .line 160
    iput v4, p0, NOT_SET:I

    .line 161
    iput-boolean v2, p0, mIsSecure:Z

    .line 163
    iput v4, p0, mFocusedViewId:I

    .line 168
    iput-boolean v2, p0, mIsMinimizeDisabled:Z

    .line 169
    iput-object v3, p0, mCustomMinimizedView:Landroid/view/View;

    .line 170
    iput-object v3, p0, mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 177
    iput-boolean v2, p0, mContentLayoutGenerated:Z

    .line 179
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mResizablePadding:Landroid/graphics/Rect;

    .line 180
    iput v1, p0, mMaxSizeRatio:F

    .line 186
    iput v1, p0, mHScale:F

    .line 187
    iput v1, p0, mVScale:F

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mStackBound:Landroid/graphics/Rect;

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mLastStackBound:Landroid/graphics/Rect;

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mMinStackBoundForPort:Landroid/graphics/Rect;

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mMinStackBoundForLand:Landroid/graphics/Rect;

    .line 198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    .line 199
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    .line 201
    iput v2, p0, mLastOrientation:I

    .line 202
    iput-boolean v2, p0, mLastRotated:Z

    .line 203
    iput v2, p0, mRotation:I

    .line 206
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTmpBound:Landroid/graphics/Rect;

    .line 218
    const/16 v0, 0x28

    iput v0, p0, TEMP_TOAST_HEIGHT:I

    .line 222
    iput-boolean v2, p0, mIsAttachedToWindow:Z

    .line 223
    iput-boolean v2, p0, mHasStackFocus:Z

    .line 225
    iput-boolean v2, p0, mDragMode:Z

    .line 227
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    .line 228
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, mBlackColor:Landroid/graphics/drawable/ColorDrawable;

    .line 233
    iput-boolean v2, p0, mIsPenButtonPressed:Z

    .line 234
    iput v4, p0, mLastHoverIcon:I

    .line 238
    iput v4, p0, mHeaderButtonSoundId:I

    .line 246
    iput-boolean v2, p0, mIsFullScreen:Z

    .line 247
    iput-object v3, p0, mVideoCapabilityDialog:Landroid/app/AlertDialog;

    .line 250
    iput-object v3, p0, badgeIcon:Landroid/graphics/drawable/Drawable;

    .line 251
    iput v2, p0, userId:I

    .line 253
    new-instance v0, Lcom/android/internal/policy/MultiPhoneWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiPhoneWindow$1;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 2490
    iput-object v3, p0, mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 2491
    iput-object v3, p0, mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    .line 2492
    iput-object v3, p0, mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 2640
    new-instance v0, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iput-object v0, p0, mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    .line 2684
    iput-object v3, p0, mDragModeReceiver:Landroid/content/BroadcastReceiver;

    .line 258
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, userId:I

    .line 260
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 261
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    .line 262
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, mIsSupportDiagonalResizable:Z

    .line 263
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMinimizeAnimation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, mIsSupportMinimizeAnimation:Z

    .line 264
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, mIsSupportSimplificationUI:Z

    .line 265
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, mTargetSdkVersion:I

    .line 267
    iget-object v0, p0, mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_122

    .line 268
    iget-object v0, p0, mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, mActivity:Landroid/app/Activity;

    .line 269
    iget-object v0, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, mToken:Landroid/os/IBinder;

    .line 270
    iget-object v0, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-direct {p0, v0}, updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 273
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->dssScale:F

    iput v0, p0, mDssScale:F

    .line 275
    new-instance v0, Lcom/android/internal/policy/multiwindow/Docking;

    iget-object v1, p0, mActivity:Landroid/app/Activity;

    iget-object v2, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget v3, p0, mDssScale:F

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/multiwindow/Docking;-><init>(Landroid/app/Activity;Lcom/samsung/android/multiwindow/MultiWindowFacade;F)V

    iput-object v0, p0, mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    .line 277
    iget-object v0, p0, mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    new-instance v1, Lcom/android/internal/policy/MultiPhoneWindow$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/MultiPhoneWindow$2;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/Docking;->setOnDockingListener(Lcom/android/internal/policy/multiwindow/Docking$OnDockingListener;)V

    .line 295
    :cond_122
    invoke-direct {p0}, updateRestricedStackBounds()V

    .line 296
    invoke-direct {p0}, initResource()V

    .line 297
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    invoke-direct {p0}, getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-boolean v0, p0, mDismissGuideByDockingCanceled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-boolean v0, p0, mContentLayoutGenerated:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, mDismissGuideByDockingCanceled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-boolean v0, p0, mIsSupportSimplificationUI:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/MultiPhoneWindow;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, requestState(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/Rect;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 127
    invoke-direct {p0, p1}, validateStackBound(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/Rect;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, checkMaxStackSize(Landroid/graphics/Rect;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/MultiPhoneWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    invoke-direct {p0}, adjustScaleFactor()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/Point;Z)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Point;
    .param p2, "x2"    # Z

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, getDisplaySize(Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/MultiPhoneWindow;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget v0, p0, mMaxSizeRatio:F

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mMinStackBoundForPort:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mTmpBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mMinStackBoundForLand:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget v0, p0, mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mVideoCapabilityDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 127
    iput-object p1, p0, mVideoCapabilityDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-boolean v0, p0, mIsBorderShown:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, mIsBorderShown:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/multiwindow/Border;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mBorder:Lcom/android/internal/policy/multiwindow/Border;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-boolean v0, p0, mHasStackFocus:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget v0, p0, mThickness:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, badgeIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 127
    iput-object p1, p0, badgeIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-boolean v0, p0, mIsSupportDiagonalResizable:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget v0, p0, mLastHoverIcon:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/internal/policy/MultiPhoneWindow;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, mLastHoverIcon:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    invoke-direct {p0}, isInputMethodShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mVideoCapabilityReceiver:Lcom/android/internal/policy/MultiPhoneWindow$VideoCapabilityReceiver;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-boolean v0, p0, mIsFullScreen:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, mIsFullScreen:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/MultiPhoneWindow;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, refreshUI(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-boolean v0, p0, mIsAttachedToWindow:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, mIsAttachedToWindow:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 127
    iput-object p1, p0, mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/MultiPhoneWindow;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget v0, p0, mDssScale:F

    return v0
.end method

.method static synthetic access$4400(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-boolean v0, p0, mDragMode:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, mDragMode:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, mIsMinimizeDisabled:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget v0, p0, mTitleBarHeight:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-boolean v0, p0, mIsFinishing:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, mIsFinishing:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/android/internal/policy/multiwindow/Docking;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/internal/policy/MultiPhoneWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    invoke-direct {p0}, updateIsFullScreen()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget v0, p0, mHeaderButtonSoundId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mResizablePadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/media/AudioManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget v0, p0, mFloatingMenuRightMargin:I

    return v0
.end method

.method static synthetic access$6202(Lcom/android/internal/policy/MultiPhoneWindow;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, mFloatingMenuRightMargin:I

    return p1
.end method

.method static synthetic access$6800(Lcom/android/internal/policy/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget v0, p0, mTargetSdkVersion:I

    return v0
.end method

.method static synthetic access$6900(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-object v0, p0, mStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    iget-boolean v0, p0, mIsPenButtonPressed:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, mIsPenButtonPressed:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/MultiPhoneWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    invoke-direct {p0}, initStackBound()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow;

    .prologue
    .line 127
    invoke-direct {p0}, forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method private adjustMinimizedStackBound(Landroid/graphics/Rect;)Z
    .registers 10
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 1657
    const/4 v2, 0x0

    .line 1658
    .local v2, "outOfBound":Z
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10502aa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1660
    .local v1, "originPixelSize":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1661
    .local v4, "screenSize":Landroid/graphics/Point;
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 1663
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int v3, v5, v1

    .line 1664
    .local v3, "right":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int v0, v5, v1

    .line 1666
    .local v0, "bottom":I
    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_37

    .line 1667
    iget v5, p1, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 1668
    const/4 v2, 0x1

    .line 1674
    :cond_2b
    :goto_2b
    iget v5, v4, Landroid/graphics/Point;->y:I

    if-le v0, v5, :cond_43

    .line 1675
    iget v5, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1676
    const/4 v2, 0x1

    .line 1681
    :cond_36
    :goto_36
    return v2

    .line 1669
    :cond_37
    iget v5, v4, Landroid/graphics/Point;->x:I

    if-le v3, v5, :cond_2b

    .line 1670
    iget v5, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v3

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 1671
    const/4 v2, 0x1

    goto :goto_2b

    .line 1677
    :cond_43
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p0, mStatusBarHeight:I

    if-ge v5, v6, :cond_36

    .line 1678
    iget v5, p0, mStatusBarHeight:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1679
    const/4 v2, 0x1

    goto :goto_36
.end method

.method private adjustScaleFactor()V
    .registers 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1626
    iput v3, p0, mHScale:F

    .line 1627
    iput v3, p0, mVScale:F

    .line 1628
    invoke-direct {p0}, getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_91

    .line 1629
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1630
    .local v1, "size":Landroid/graphics/Point;
    invoke-direct {p0, v1}, getDisplaySize(Landroid/graphics/Point;)Z

    .line 1631
    iget-object v3, p0, mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_46

    .line 1632
    iget-object v3, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-gt v3, v4, :cond_3e

    :cond_28
    iget-object v3, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-nez v3, :cond_36

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-lt v3, v4, :cond_3e

    :cond_36
    iget-object v3, p0, mStackBound:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, validateStackBound(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 1635
    :cond_3e
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 1636
    .local v2, "temp":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 1637
    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 1641
    .end local v2    # "temp":I
    :cond_46
    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, mHScale:F

    .line 1642
    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, p0, mTitleBarHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, mVScale:F

    .line 1643
    sget-boolean v3, DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_91

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustScaleFactor mStackBound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    .end local v1    # "size":Landroid/graphics/Point;
    :cond_91
    sget-boolean v3, DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_bb

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustScaleFactor result hScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mHScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",vScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mVScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :cond_bb
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget v4, p0, mHScale:F

    iget v5, p0, mVScale:F

    invoke-virtual {v3, v4, v5}, Landroid/view/WindowManagerGlobal;->setMultiWindowScale(FF)V

    .line 1650
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1651
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_dd

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    if-eqz v3, :cond_dd

    .line 1652
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    iget v4, p0, mHScale:F

    iget v5, p0, mVScale:F

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewRootImpl;->setMultiWindowScale(FF)V

    .line 1654
    :cond_dd
    return-void
.end method

.method private adjustStackBound(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    .line 1685
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v0, v4, 0x3

    .line 1686
    .local v0, "boundaryX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v1, v4, 0x3

    .line 1687
    .local v1, "boundaryY":I
    const/4 v2, 0x0

    .line 1688
    .local v2, "headerWindowMargin":I
    iget-boolean v4, p0, mContentLayoutGenerated:Z

    if-eqz v4, :cond_34

    .line 1689
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v5}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v5

    add-int v0, v4, v5

    .line 1690
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1691
    iget-object v4, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    .line 1693
    :cond_34
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1694
    .local v3, "maxSize":Landroid/graphics/Point;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 1696
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v0

    if-le v4, v5, :cond_5c

    .line 1697
    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v0

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1702
    :cond_4c
    :goto_4c
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v1

    if-le v4, v5, :cond_6c

    .line 1703
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1707
    :cond_5b
    :goto_5b
    return-void

    .line 1698
    :cond_5c
    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-ge v4, v0, :cond_4c

    .line 1699
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v0, v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_4c

    .line 1704
    :cond_6c
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p0, mStatusBarHeight:I

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_5b

    .line 1705
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, mStatusBarHeight:I

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_5b
.end method

.method private checkMaxStackSize(Landroid/graphics/Rect;I)Z
    .registers 22
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "orientation"    # I

    .prologue
    .line 1389
    const/4 v7, 0x0

    .line 1390
    .local v7, "isFixed":Z
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1391
    .local v1, "d":Landroid/graphics/Point;
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v12}, getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 1393
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    .local v11, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 1394
    .local v6, "h":I
    iget v12, v1, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, mMaxSizeRatio:F

    mul-float/2addr v12, v13

    float-to-int v4, v12

    .local v4, "dw":I
    iget v12, v1, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, mMaxSizeRatio:F

    mul-float/2addr v12, v13

    float-to-int v3, v12

    .line 1397
    .local v3, "dh":I
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_d3

    .line 1398
    move-object/from16 v0, p0

    iget-object v12, v0, mMinStackBoundForPort:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 1399
    .local v10, "mw":I
    move-object/from16 v0, p0

    iget-object v12, v0, mMinStackBoundForPort:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 1405
    .local v9, "mh":I
    :goto_3b
    const/4 v8, 0x0

    .line 1406
    .local v8, "isSelective":Z
    sget-boolean v12, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v12, :cond_76

    .line 1407
    move-object/from16 v0, p0

    iget-object v12, v0, mActivity:Landroid/app/Activity;

    if-eqz v12, :cond_76

    .line 1408
    move-object/from16 v0, p0

    iget-object v12, v0, mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v8

    .line 1409
    if-eqz v8, :cond_76

    .line 1410
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_e5

    .line 1411
    move-object/from16 v0, p0

    iget-object v12, v0, mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 1412
    move-object/from16 v0, p0

    iget-object v12, v0, mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 1418
    :goto_65
    invoke-virtual/range {p0 .. p0}, getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v2, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    move-object v12, v2

    .line 1419
    check-cast v12, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I
    invoke-static {v12, v10}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->access$4102(Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;I)I

    .line 1420
    check-cast v2, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    .end local v2    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    # setter for: Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I
    invoke-static {v2, v9}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->access$4202(Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;I)I

    .line 1425
    :cond_76
    if-lt v11, v10, :cond_80

    if-lt v6, v9, :cond_80

    sget-boolean v12, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v12, :cond_9d

    if-eqz v8, :cond_9d

    .line 1426
    :cond_80
    sub-int v12, v10, v11

    div-int/lit8 v5, v12, 0x2

    .line 1427
    .local v5, "gapWidth":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v5

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v10

    sub-int/2addr v14, v5

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 1429
    .end local v5    # "gapWidth":I
    :cond_9d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 1430
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 1432
    if-le v11, v4, :cond_f7

    .line 1433
    const/4 v7, 0x1

    .line 1434
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v4

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v6

    move/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    int-to-float v0, v11

    move/from16 v18, v0

    div-float v17, v17, v18

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 1439
    :cond_d2
    :goto_d2
    return v7

    .line 1401
    .end local v8    # "isSelective":Z
    .end local v9    # "mh":I
    .end local v10    # "mw":I
    :cond_d3
    move-object/from16 v0, p0

    iget-object v12, v0, mMinStackBoundForLand:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 1402
    .restart local v10    # "mw":I
    move-object/from16 v0, p0

    iget-object v12, v0, mMinStackBoundForLand:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v9

    .restart local v9    # "mh":I
    goto/16 :goto_3b

    .line 1414
    .restart local v8    # "isSelective":Z
    :cond_e5
    move-object/from16 v0, p0

    iget-object v12, v0, mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 1415
    move-object/from16 v0, p0

    iget-object v12, v0, mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v9

    goto/16 :goto_65

    .line 1435
    :cond_f7
    if-le v6, v3, :cond_d2

    .line 1436
    const/4 v7, 0x1

    .line 1437
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->left:I

    int-to-float v15, v11

    int-to-float v0, v3

    move/from16 v16, v0

    int-to-float v0, v6

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v15, v15, v16

    float-to-int v15, v15

    add-int/2addr v14, v15

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_d2
.end method

.method private checkRotationNeeded(I)Z
    .registers 9
    .param p1, "requestedOrientation"    # I

    .prologue
    const/4 v6, -0x1

    .line 1809
    iget-object v5, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getExpectedOrientation()I

    move-result v1

    .line 1810
    .local v1, "expectedOrientation":I
    invoke-direct {p0, v1}, getExplicitOrientation(I)I

    move-result v0

    .line 1811
    .local v0, "expectedExplicitOrientation":I
    invoke-virtual {p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    invoke-direct {p0, v5}, isRotated(I)Z

    move-result v3

    .line 1812
    .local v3, "rotated":Z
    const/4 v4, 0x0

    .line 1813
    .local v4, "rotationNeeded":Z
    if-eq v0, v6, :cond_28

    .line 1814
    const/4 v5, 0x1

    if-ne v1, v5, :cond_23

    if-nez v3, :cond_27

    :cond_23
    if-nez v1, :cond_28

    if-nez v3, :cond_28

    .line 1816
    :cond_27
    const/4 v4, 0x1

    .line 1819
    :cond_28
    invoke-direct {p0, p1}, getExplicitOrientation(I)I

    move-result v2

    .line 1820
    .local v2, "requestedExplicitOrientation":I
    if-nez v4, :cond_33

    if-eq v2, v6, :cond_33

    if-eq v2, v0, :cond_33

    .line 1823
    const/4 v4, 0x0

    .line 1825
    .end local v4    # "rotationNeeded":Z
    :cond_33
    return v4
.end method

.method private dismissWritingBuddy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2457
    iget-boolean v2, p0, mContentLayoutGenerated:Z

    if-nez v2, :cond_6

    .line 2469
    :cond_5
    :goto_5
    return-void

    .line 2460
    :cond_6
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2461
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2462
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2463
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v1

    .line 2464
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_5

    invoke-virtual {v1, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2465
    invoke-virtual {v1, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish(Z)V

    goto :goto_5
.end method

.method private forceHideInputMethod()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 1270
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 1272
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x0

    .line 1273
    .local v4, "res":Z
    if-eqz v3, :cond_26

    .line 1274
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v4

    .line 1276
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1277
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v1, :cond_27

    move v2, v1

    .line 1279
    .local v2, "haveHardKeyboard":Z
    :goto_1c
    if-eqz v2, :cond_29

    iget v6, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_29

    .line 1283
    .local v1, "hardKeyShown":Z
    :goto_23
    if-eqz v1, :cond_26

    .line 1284
    const/4 v4, 0x0

    .line 1287
    .end local v0    # "conf":Landroid/content/res/Configuration;
    .end local v1    # "hardKeyShown":Z
    .end local v2    # "haveHardKeyboard":Z
    :cond_26
    return v4

    .restart local v0    # "conf":Landroid/content/res/Configuration;
    :cond_27
    move v2, v5

    .line 1277
    goto :goto_1c

    .restart local v2    # "haveHardKeyboard":Z
    :cond_29
    move v1, v5

    .line 1279
    goto :goto_23
.end method

.method private generatePenWindowLayout()V
    .registers 8

    .prologue
    .line 1191
    iget-boolean v4, p0, mIsSupportMinimizeAnimation:Z

    if-eqz v4, :cond_f

    .line 1192
    new-instance v4, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v5, p0, mContext:Landroid/content/Context;

    iget v6, p0, mDssScale:F

    invoke-direct {v4, v5, p0, v6}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/MultiPhoneWindow;F)V

    iput-object v4, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .line 1195
    :cond_f
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1215
    :goto_17
    return-void

    .line 1199
    :cond_18
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1200
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090095

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, mContentRootContainer:Landroid/view/ViewGroup;

    .line 1202
    new-instance v4, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    iput-object v4, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    .line 1203
    iget-object v4, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->generateLayout()V

    .line 1205
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v1, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    move-object v4, v1

    .line 1206
    check-cast v4, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->updateMultiPhoneWindowLayout()V

    .line 1207
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_43
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_58

    .line 1208
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1209
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeView(Landroid/view/View;)V

    .line 1210
    iget-object v4, p0, mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1207
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 1212
    .end local v0    # "content":Landroid/view/View;
    :cond_58
    iget-object v4, p0, mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;)V

    .line 1214
    const/4 v4, 0x1

    iput-boolean v4, p0, mContentLayoutGenerated:Z

    goto :goto_17
.end method

.method private getDisplaySize(Landroid/graphics/Point;)Z
    .registers 3
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    .line 1352
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, getDisplaySize(Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method private getDisplaySize(Landroid/graphics/Point;Z)Z
    .registers 8
    .param p1, "outbound"    # Landroid/graphics/Point;
    .param p2, "isReal"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1356
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1357
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1359
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_49

    .line 1360
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1365
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v3, :cond_36

    if-eqz p2, :cond_36

    iget-object v3, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v3, :cond_36

    .line 1366
    iget-object v3, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1367
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_36

    .line 1368
    iget-object v3, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRealSize(Landroid/graphics/Rect;Landroid/view/DisplayInfo;)Z

    .line 1369
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 1370
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 1380
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_36
    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, mDssScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 1381
    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, mDssScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 1385
    const/4 v3, 0x1

    :cond_49
    return v3
.end method

.method private getExplicitOrientation(I)I
    .registers 3
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 1829
    packed-switch p1, :pswitch_data_a

    .line 1843
    :pswitch_3
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 1834
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1840
    :pswitch_7
    const/4 v0, 0x0

    goto :goto_4

    .line 1829
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private getState()I
    .registers 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 2123
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2124
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_22

    .line 2135
    :goto_d
    :pswitch_d
    return v1

    .line 2128
    :pswitch_e
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    .line 2129
    goto :goto_d

    .line 2130
    :cond_16
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2131
    const/4 v1, 0x3

    goto :goto_d

    .line 2133
    :cond_20
    const/4 v1, 0x2

    goto :goto_d

    .line 2124
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private initFocusedView()V
    .registers 2

    .prologue
    .line 1266
    const/4 v0, -0x1

    iput v0, p0, mFocusedViewId:I

    .line 1267
    return-void
.end method

.method private initResource()V
    .registers 5

    .prologue
    const v2, 0x10502bf

    const/4 v3, 0x1

    .line 1171
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, mTitleBarHeight:I

    .line 1172
    iget-object v0, p0, mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1173
    iget-boolean v0, p0, mIsSupportDiagonalResizable:Z

    if-eqz v0, :cond_53

    .line 1174
    iget-object v0, p0, mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1175
    iget-object v0, p0, mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1176
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, mMaxSizeRatio:F

    .line 1178
    :cond_53
    iget-object v0, p0, mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1179
    iget-object v0, p0, mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1180
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mStatusBarHeight:I

    .line 1181
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mThickness:I

    .line 1182
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportCenterbarClickSound(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 1183
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v3, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, mSoundPool:Landroid/media/SoundPool;

    .line 1184
    iget-object v0, p0, mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const v2, 0x1100022

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, mHeaderButtonSoundId:I

    .line 1188
    :goto_9e
    return-void

    .line 1186
    :cond_9f
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    goto :goto_9e
.end method

.method private initStackBound()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 1496
    iget-object v3, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1497
    .local v0, "bound":Landroid/graphics/Rect;
    if-eqz v0, :cond_1e

    .line 1498
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v3, v4, :cond_1f

    move v1, v2

    .line 1499
    .local v1, "isStackHasPortRatio":Z
    :goto_16
    if-eqz v1, :cond_21

    :goto_18
    invoke-direct {p0, v0, v2}, checkMaxStackSize(Landroid/graphics/Rect;I)Z

    .line 1500
    invoke-virtual {p0, v0}, setStackBound(Landroid/graphics/Rect;)V

    .line 1502
    .end local v1    # "isStackHasPortRatio":Z
    :cond_1e
    return-void

    .line 1498
    :cond_1f
    const/4 v1, 0x0

    goto :goto_16

    .line 1499
    .restart local v1    # "isStackHasPortRatio":Z
    :cond_21
    const/4 v2, 0x2

    goto :goto_18
.end method

.method private isInputMethodShown()Z
    .registers 3

    .prologue
    .line 1291
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1292
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_b

    .line 1293
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    .line 1295
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private isRotated(I)Z
    .registers 3
    .param p1, "rotation"    # I

    .prologue
    const/4 v0, 0x1

    .line 1307
    packed-switch p1, :pswitch_data_8

    .line 1315
    :goto_4
    :pswitch_4
    return v0

    .line 1310
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 1307
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private refreshBorder()V
    .registers 4

    .prologue
    .line 2434
    invoke-direct {p0}, getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_36

    .line 2435
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    .line 2436
    .local v0, "decorView":Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    iget-boolean v1, p0, mContentLayoutGenerated:Z

    if-eqz v1, :cond_1c

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->mIsResize:Z
    invoke-static {v0}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;->access$4300(Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 2437
    iget-object v1, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateBackground()V

    .line 2439
    :cond_1c
    iget-object v1, p0, mBorder:Lcom/android/internal/policy/multiwindow/Border;

    if-eqz v1, :cond_35

    .line 2440
    iget-object v1, p0, mBorder:Lcom/android/internal/policy/multiwindow/Border;

    iget-boolean v2, p0, mHasStackFocus:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/multiwindow/Border;->setFocus(Z)V

    .line 2441
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 2442
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2447
    .end local v0    # "decorView":Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;
    :cond_35
    :goto_35
    return-void

    .line 2444
    :cond_36
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2445
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_35
.end method

.method private refreshUI(I)V
    .registers 12
    .param p1, "forceState"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2186
    iget-boolean v3, p0, mContentLayoutGenerated:Z

    if-nez v3, :cond_9

    .line 2308
    :cond_8
    :goto_8
    return-void

    .line 2188
    :cond_9
    iget-boolean v3, p0, mContentLayoutGenerated:Z

    if-eqz v3, :cond_22

    iget-object v3, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_22

    .line 2189
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "MultiPhoneWindow"

    const-string/jumbo v4, "token is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2193
    :cond_22
    iput-boolean v6, p0, mIsBorderShown:Z

    .line 2194
    const/4 v2, -0x1

    .line 2195
    .local v2, "state":I
    if-eq p1, v9, :cond_62

    .line 2196
    move v2, p1

    .line 2200
    :goto_28
    sget-boolean v3, DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_45

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refreshUI state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    :cond_45
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2203
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eq v2, v8, :cond_67

    .line 2204
    iget-boolean v3, p0, mIsSecure:Z

    if-eqz v3, :cond_55

    .line 2205
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2214
    :cond_55
    :goto_55
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2216
    .local v1, "flags":I
    packed-switch v2, :pswitch_data_16e

    .line 2305
    :goto_5a
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v3, :cond_8

    .line 2306
    invoke-virtual {p0, v0}, setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_8

    .line 2198
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "flags":I
    :cond_62
    invoke-direct {p0}, getState()I

    move-result v2

    goto :goto_28

    .line 2208
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_67
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_55

    .line 2209
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2210
    iput-boolean v7, p0, mIsSecure:Z

    goto :goto_55

    .line 2218
    .restart local v1    # "flags":I
    :pswitch_76
    iget-object v3, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_7f

    .line 2219
    iget-object v3, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    .line 2221
    :cond_7f
    iget-boolean v3, p0, mContentLayoutGenerated:Z

    if-eqz v3, :cond_ad

    .line 2222
    iget-object v3, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    if-eqz v3, :cond_9f

    iget-object v3, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 2223
    iget-object v3, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 2224
    iget-object v3, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    .line 2226
    :cond_9f
    iget-object v3, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2227
    iget-boolean v3, p0, mIsSupportSimplificationUI:Z

    if-eqz v3, :cond_ad

    .line 2228
    iget-object v3, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    .line 2232
    :cond_ad
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2233
    invoke-direct {p0}, initFocusedView()V

    .line 2234
    iget v3, p0, mInitialFlag:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_c3

    .line 2235
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x201

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2238
    :cond_c3
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 2239
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_5a

    .line 2244
    :pswitch_d2
    iget-boolean v3, p0, mIsMinimizeDisabled:Z

    if-eqz v3, :cond_e0

    .line 2245
    const-string v3, "MultiPhoneWindow"

    const-string/jumbo v4, "minimize function is disabled. do not minimize."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2249
    :cond_e0
    iget-object v3, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_f6

    iget-object v3, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->isMinimizeIconVisible()Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 2250
    const-string v3, "MultiPhoneWindow"

    const-string/jumbo v4, "minimize icon is already visible."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2254
    :cond_f6
    iget v3, p0, mFloatingFlag:I

    if-ne v3, v9, :cond_fc

    .line 2255
    iput v1, p0, mFloatingFlag:I

    .line 2258
    :cond_fc
    invoke-direct {p0, v8}, requestState(I)V

    .line 2260
    iget-object v3, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_106

    .line 2261
    invoke-direct {p0}, showMinimizedIconWindow()V

    .line 2263
    :cond_106
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2264
    invoke-direct {p0}, saveFocusedView()V

    .line 2265
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2266
    invoke-direct {p0}, adjustScaleFactor()V

    goto/16 :goto_5a

    .line 2271
    :pswitch_11b
    iget-object v3, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_124

    .line 2272
    iget-object v3, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    .line 2275
    :cond_124
    iput-boolean v7, p0, mIsBorderShown:Z

    .line 2276
    invoke-direct {p0}, adjustScaleFactor()V

    .line 2278
    iget-boolean v3, p0, mContentLayoutGenerated:Z

    if-eqz v3, :cond_132

    .line 2279
    iget-object v3, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v7}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2282
    :cond_132
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2283
    invoke-direct {p0}, restoreFocusedView()V

    .line 2284
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2285
    invoke-direct {p0}, refreshBorder()V

    goto/16 :goto_5a

    .line 2290
    :pswitch_147
    iget-object v3, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_150

    .line 2291
    iget-object v3, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->removeWindow()V

    .line 2293
    :cond_150
    invoke-direct {p0}, adjustScaleFactor()V

    .line 2294
    iget-boolean v3, p0, mContentLayoutGenerated:Z

    if-eqz v3, :cond_15c

    .line 2295
    iget-object v3, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v7}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2298
    :cond_15c
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2299
    invoke-direct {p0}, initFocusedView()V

    .line 2300
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_5a

    .line 2216
    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_76
        :pswitch_147
        :pswitch_11b
        :pswitch_d2
    .end packed-switch
.end method

.method private requestState(I)V
    .registers 11
    .param p1, "state"    # I

    .prologue
    const/16 v8, 0x800

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2139
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2140
    .local v0, "requestStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 2141
    sget-boolean v1, DEBUG_FLOATING_CYCLE:Z

    if-eqz v1, :cond_4f

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestState state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",currentState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    :cond_4f
    packed-switch p1, :pswitch_data_ba

    .line 2183
    :cond_52
    :goto_52
    return-void

    .line 2145
    :pswitch_53
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 2146
    iget-object v1, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_52

    .line 2150
    :pswitch_5e
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 2151
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 2152
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2153
    invoke-virtual {v0, v8, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2154
    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2155
    iget-object v1, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_52

    .line 2159
    :pswitch_77
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 2160
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 2161
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2162
    invoke-virtual {v0, v8, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2163
    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2164
    iget-object v1, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_52

    .line 2168
    :pswitch_90
    iget-boolean v1, p0, mIsMinimizeDisabled:Z

    if-eqz v1, :cond_9d

    .line 2169
    const-string v1, "MultiPhoneWindow"

    const-string/jumbo v2, "minimize function is disabled. do not minimize"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 2173
    :cond_9d
    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_52

    .line 2174
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-eq v1, v5, :cond_af

    .line 2175
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 2176
    invoke-virtual {v0, v8, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2178
    :cond_af
    invoke-virtual {v0, v7, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2179
    iget-object v1, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_52

    .line 2143
    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_53
        :pswitch_5e
        :pswitch_77
        :pswitch_90
    .end packed-switch
.end method

.method private restoreFocusedView()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 1249
    iget v1, p0, mFocusedViewId:I

    if-eq v1, v3, :cond_16

    .line 1250
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, mFocusedViewId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1251
    .local v0, "needsFocus":Landroid/view/View;
    if-eqz v0, :cond_14

    .line 1252
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1254
    :cond_14
    iput v3, p0, mFocusedViewId:I

    .line 1256
    .end local v0    # "needsFocus":Landroid/view/View;
    :cond_16
    return-void
.end method

.method private saveFocusedView()V
    .registers 3

    .prologue
    .line 1259
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1260
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_10

    .line 1261
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, mFocusedViewId:I

    .line 1263
    :cond_10
    return-void
.end method

.method private setStackBoundByStackId(ILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "stackId"    # I
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 1545
    if-nez p2, :cond_3

    .line 1554
    :cond_2
    :goto_2
    return-void

    .line 1548
    :cond_3
    invoke-direct {p0}, getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    .line 1549
    invoke-direct {p0, p2}, adjustStackBound(Landroid/graphics/Rect;)V

    .line 1551
    :cond_d
    iget-object v0, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1552
    iget-object v0, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setStackBoundByStackId(ILandroid/graphics/Rect;)V

    goto :goto_2
.end method

.method private setStackBoundInScreen(IIZ)V
    .registers 11
    .param p1, "leftBoundary"    # I
    .param p2, "topBoundary"    # I
    .param p3, "isMinimizing"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1557
    const/4 v0, 0x0

    .line 1559
    .local v0, "adjustBound":Z
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1560
    .local v2, "screenSize":Landroid/graphics/Point;
    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 1561
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1563
    .local v1, "currStackBound":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-ge v4, p1, :cond_20

    .line 1564
    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int v4, p1, v4

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1565
    const/4 v0, 0x1

    .line 1567
    :cond_20
    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-ge v4, p2, :cond_2c

    .line 1568
    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, p2, v4

    invoke-virtual {v1, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1569
    const/4 v0, 0x1

    .line 1572
    :cond_2c
    if-nez p3, :cond_5e

    .line 1573
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    if-le v4, v5, :cond_3d

    .line 1574
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1575
    const/4 v0, 0x1

    .line 1577
    :cond_3d
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_4c

    .line 1578
    iget v4, v2, Landroid/graphics/Point;->y:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1579
    const/4 v0, 0x1

    .line 1582
    :cond_4c
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1583
    .local v3, "tempStackBound":Landroid/graphics/Rect;
    invoke-direct {p0, v3}, adjustStackBound(Landroid/graphics/Rect;)V

    .line 1584
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 1585
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1586
    const/4 v0, 0x1

    .line 1590
    .end local v3    # "tempStackBound":Landroid/graphics/Rect;
    :cond_5e
    if-eqz v0, :cond_63

    .line 1591
    invoke-virtual {p0, v1}, setStackBound(Landroid/graphics/Rect;)V

    .line 1593
    :cond_63
    return-void
.end method

.method private setStackBoundsInternel(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "newBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1601
    if-eqz p1, :cond_82

    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 1602
    const/4 v1, 0x0

    .line 1603
    .local v1, "sizeChanged":Z
    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_29

    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_2a

    .line 1604
    :cond_29
    const/4 v1, 0x1

    .line 1606
    :cond_2a
    iget-object v2, p0, mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1607
    iget-object v2, p0, mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1608
    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1609
    invoke-virtual {p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, mRotation:I

    .line 1610
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v2, :cond_69

    .line 1611
    iget-object v2, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v2, :cond_69

    iget-object v2, p0, mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_69

    iget-object v2, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 1612
    iget-object v2, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1613
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_69

    .line 1614
    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    iput v2, p0, mRotation:I

    .line 1618
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_69
    iget-boolean v2, p0, mContentLayoutGenerated:Z

    if-eqz v2, :cond_82

    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_82

    if-eqz v1, :cond_82

    iget-object v2, p0, mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v2, :cond_82

    .line 1620
    iget-object v2, p0, mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    .line 1623
    .end local v1    # "sizeChanged":Z
    :cond_82
    return-void
.end method

.method private setStackFocus(Z)V
    .registers 4
    .param p1, "focus"    # Z

    .prologue
    .line 2112
    iget-boolean v0, p0, mHasStackFocus:Z

    if-ne v0, p1, :cond_5

    .line 2120
    :goto_4
    return-void

    .line 2115
    :cond_5
    iput-boolean p1, p0, mHasStackFocus:Z

    .line 2116
    iget-object v0, p0, mSubWindow:Landroid/view/Window;

    if-eqz v0, :cond_12

    .line 2117
    iget-object v0, p0, mSubWindow:Landroid/view/Window;

    iget-boolean v1, p0, mHasStackFocus:Z

    invoke-virtual {v0, v1}, Landroid/view/Window;->changeStackFocus(Z)V

    .line 2119
    :cond_12
    invoke-direct {p0}, refreshBorder()V

    goto :goto_4
.end method

.method private showGuide(Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 2376
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 2377
    iget-object v4, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    .line 2378
    iget-object v4, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->setMultiWindowFlags(I)V

    .line 2381
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v4

    iget-object v5, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v6, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2383
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2384
    .local v3, "scaledRect":Landroid/graphics/Rect;
    iget v4, p0, mDssScale:F

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->scale(F)V

    .line 2388
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 2389
    iget-object v4, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->getGuideState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_61

    .line 2390
    if-eqz v0, :cond_4f

    .line 2391
    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    sub-int v2, v4, v5

    .line 2392
    .local v2, "paddingRight":I
    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    sub-int v1, v4, v5

    .line 2393
    .local v1, "paddingBottom":I
    iget-object v4, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4, v6, v6, v2, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuidePadding(IIII)V

    .line 2412
    .end local v1    # "paddingBottom":I
    .end local v2    # "paddingRight":I
    :cond_4f
    :goto_4f
    iget-object v4, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    .line 2415
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v3    # "scaledRect":Landroid/graphics/Rect;
    :cond_60
    return-void

    .line 2397
    .restart local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v3    # "scaledRect":Landroid/graphics/Rect;
    :cond_61
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_88

    .line 2398
    if-eqz v0, :cond_4f

    .line 2399
    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, mHScale:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 2400
    .restart local v2    # "paddingRight":I
    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, mVScale:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 2401
    .restart local v1    # "paddingBottom":I
    iget-object v4, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4, v6, v6, v2, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuidePadding(IIII)V

    goto :goto_4f

    .line 2405
    .end local v1    # "paddingBottom":I
    .end local v2    # "paddingRight":I
    :cond_88
    iget-object v4, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4, v6, v6, v6, v6}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuidePadding(IIII)V

    goto :goto_4f
.end method

.method private showMinimizedIconWindow()V
    .registers 3

    .prologue
    .line 2311
    iget-boolean v0, p0, mContentLayoutGenerated:Z

    if-nez v0, :cond_5

    .line 2331
    :goto_4
    return-void

    .line 2316
    :cond_5
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "MultiPhoneWindow"

    const-string/jumbo v1, "showMinimizedIconWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    :cond_11
    iget-boolean v0, p0, mContentLayoutGenerated:Z

    if-eqz v0, :cond_1e

    .line 2319
    iget-boolean v0, p0, mIsSupportSimplificationUI:Z

    if-eqz v0, :cond_1e

    .line 2320
    iget-object v0, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    .line 2324
    :cond_1e
    iget-object v0, p0, mCustomMinimizedView:Landroid/view/View;

    if-eqz v0, :cond_2a

    .line 2325
    iget-object v0, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v1, p0, mCustomMinimizedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow(Landroid/view/View;)V

    goto :goto_4

    .line 2326
    :cond_2a
    iget-object v0, p0, mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-eqz v0, :cond_36

    .line 2327
    iget-object v0, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    iget-object v1, p0, mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow(Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V

    goto :goto_4

    .line 2329
    :cond_36
    iget-object v0, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow()V

    goto :goto_4
.end method

.method private updateIsFullScreen()V
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 2422
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 2423
    const/4 v0, 0x0

    .line 2424
    .local v0, "isFullScreen":Z
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v2, :cond_54

    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_54

    const/4 v0, 0x1

    .line 2426
    :goto_25
    iget-boolean v1, p0, mIsFullScreen:Z

    if-eq v1, v0, :cond_53

    .line 2427
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_51

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh mIsFullScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mIsFullScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    :cond_51
    iput-boolean v0, p0, mIsFullScreen:Z

    .line 2431
    .end local v0    # "isFullScreen":Z
    :cond_53
    return-void

    .line 2424
    .restart local v0    # "isFullScreen":Z
    :cond_54
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 6
    .param p1, "newStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v3, 0x1

    .line 1721
    sget-boolean v0, DEBUG_FLOATING_CYCLE:Z

    if-eqz v0, :cond_2c

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMultiWindowStyle style:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",newStyle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    :cond_2c
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1724
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 1725
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(IZ)V

    .line 1726
    invoke-direct {p0}, dismissWritingBuddy()V

    .line 1728
    :cond_4b
    return-void
.end method

.method private updateRestricedStackBounds()V
    .registers 15

    .prologue
    const/4 v8, 0x1

    const/high16 v12, 0x447a0000    # 1000.0f

    const/4 v9, 0x0

    .line 301
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 302
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-direct {p0, v1}, getDisplaySize(Landroid/graphics/Point;)Z

    .line 304
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v0, v10, Landroid/content/res/Configuration;->orientation:I

    .line 305
    .local v0, "configOrientation":I
    if-ne v0, v8, :cond_20

    iget v10, v1, Landroid/graphics/Point;->x:I

    iget v11, v1, Landroid/graphics/Point;->y:I

    if-gt v10, v11, :cond_29

    :cond_20
    const/4 v10, 0x2

    if-ne v0, v10, :cond_fa

    iget v10, v1, Landroid/graphics/Point;->y:I

    iget v11, v1, Landroid/graphics/Point;->x:I

    if-le v10, v11, :cond_fa

    :cond_29
    move v7, v8

    .line 308
    .local v7, "toggle":Z
    :goto_2a
    if-eqz v7, :cond_34

    .line 309
    iget v6, v1, Landroid/graphics/Point;->x:I

    .line 310
    .local v6, "temp":I
    iget v10, v1, Landroid/graphics/Point;->y:I

    iput v10, v1, Landroid/graphics/Point;->x:I

    .line 311
    iput v6, v1, Landroid/graphics/Point;->y:I

    .line 314
    .end local v6    # "temp":I
    :cond_34
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e010b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 316
    .local v2, "floatingMinimumSizeRatioPercentage":I
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e010e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 318
    .local v3, "floatingMinimumSizeSelectiveRatioPercentage":I
    new-instance v5, Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v10, v2

    int-to-float v10, v10

    div-float/2addr v10, v12

    float-to-int v10, v10

    iget v11, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v11, v2

    int-to-float v11, v11

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-direct {v5, v9, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 320
    .local v5, "minSize":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v10, v3

    int-to-float v10, v10

    div-float/2addr v10, v12

    float-to-int v10, v10

    iget v11, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v11, v3

    int-to-float v11, v11

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-direct {v4, v9, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 322
    .local v4, "maxSize":Landroid/graphics/Rect;
    if-ne v0, v8, :cond_fd

    .line 323
    iget-object v8, p0, mMinStackBoundForPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 324
    iget-object v8, p0, mMinStackBoundForLand:Landroid/graphics/Rect;

    iget v9, v5, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 326
    iget-object v8, p0, mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v8, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 327
    iget-object v8, p0, mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 337
    :goto_aa
    sget-boolean v8, DEBUG:Z

    if-eqz v8, :cond_f9

    .line 338
    const-string v8, "MultiPhoneWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateRestricedStackBounds, r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mMinPort="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mMinStackBoundForPort:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mMinLand="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mMinStackBoundForLand:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mMaxPortSelective="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mMaxLandSelective="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_f9
    return-void

    .end local v2    # "floatingMinimumSizeRatioPercentage":I
    .end local v3    # "floatingMinimumSizeSelectiveRatioPercentage":I
    .end local v4    # "maxSize":Landroid/graphics/Rect;
    .end local v5    # "minSize":Landroid/graphics/Rect;
    .end local v7    # "toggle":Z
    :cond_fa
    move v7, v9

    .line 305
    goto/16 :goto_2a

    .line 330
    .restart local v2    # "floatingMinimumSizeRatioPercentage":I
    .restart local v3    # "floatingMinimumSizeSelectiveRatioPercentage":I
    .restart local v4    # "maxSize":Landroid/graphics/Rect;
    .restart local v5    # "minSize":Landroid/graphics/Rect;
    .restart local v7    # "toggle":Z
    :cond_fd
    iget-object v8, p0, mMinStackBoundForPort:Landroid/graphics/Rect;

    iget v9, v5, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 332
    iget-object v8, p0, mMinStackBoundForLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 333
    iget-object v8, p0, mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 335
    iget-object v8, p0, mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v8, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_aa
.end method

.method private validateStackBound(Landroid/graphics/Rect;)Z
    .registers 9
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 1848
    if-nez p1, :cond_5

    move v3, v4

    .line 1864
    :goto_4
    return v3

    .line 1852
    :cond_5
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1853
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1854
    .local v2, "screenWidth":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1856
    .local v1, "screenHeight":I
    if-ge v2, v1, :cond_21

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lt v3, v5, :cond_2d

    :cond_21
    if-le v2, v1, :cond_2f

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v3, v5, :cond_2f

    .line 1858
    :cond_2d
    const/4 v3, 0x1

    goto :goto_4

    .line 1860
    :cond_2f
    sget-boolean v3, DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_96

    const-string v5, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "validateStackBound "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_99

    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_4f
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", bound=Point("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", screenSize=("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    move v3, v4

    .line 1864
    goto/16 :goto_4

    .line 1860
    :cond_99
    const-string v3, ""

    goto :goto_4f
.end method


# virtual methods
.method public arrangeScaleStackBound()V
    .registers 14

    .prologue
    const/4 v8, 0x1

    .line 1743
    iget-object v9, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isResumed()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v9

    if-nez v9, :cond_14

    .line 1806
    :cond_13
    :goto_13
    return-void

    .line 1747
    :cond_14
    iget-object v9, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v9

    invoke-direct {p0, v9}, checkRotationNeeded(I)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1751
    const/4 v0, 0x0

    .line 1752
    .local v0, "bChangedStack":Z
    iget-object v9, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v10, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1754
    .local v7, "stackBound":Landroid/graphics/Rect;
    if-eqz v7, :cond_13

    .line 1755
    iget-object v9, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v6

    .line 1756
    .local v6, "requestedOrientation":I
    packed-switch v6, :pswitch_data_b0

    .line 1775
    :cond_34
    :goto_34
    :pswitch_34
    if-eqz v0, :cond_13

    .line 1776
    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    .line 1777
    .local v4, "oldRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/graphics/Rect;->left:I

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    iget v12, v4, Landroid/graphics/Rect;->right:I

    invoke-direct {v3, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1778
    .local v3, "newRect":Landroid/graphics/Rect;
    sget-boolean v9, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v9, :cond_7d

    .line 1781
    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1783
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1784
    .local v2, "displaySize":Landroid/graphics/Point;
    invoke-direct {p0, v2, v8}, getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 1785
    iget v9, v2, Landroid/graphics/Point;->y:I

    iget v10, v2, Landroid/graphics/Point;->x:I

    if-le v9, v10, :cond_ac

    move v1, v8

    .line 1787
    .local v1, "displayOrientation":I
    :goto_65
    iget-object v9, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v5

    .line 1788
    .local v5, "preferredOrientation":I
    sget-boolean v9, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v9, :cond_7a

    iget-object v9, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v9

    if-eqz v9, :cond_7a

    .line 1790
    if-ne v1, v8, :cond_ae

    .line 1791
    const/4 v1, 0x2

    .line 1796
    :cond_7a
    :goto_7a
    invoke-direct {p0, v3, v1}, checkMaxStackSize(Landroid/graphics/Rect;I)Z

    .line 1798
    .end local v1    # "displayOrientation":I
    .end local v2    # "displaySize":Landroid/graphics/Point;
    .end local v5    # "preferredOrientation":I
    :cond_7d
    invoke-virtual {p0, v3}, setStackBound(Landroid/graphics/Rect;)V

    .line 1799
    invoke-direct {p0}, initStackBound()V

    .line 1800
    invoke-direct {p0}, adjustScaleFactor()V

    .line 1801
    iget-boolean v8, p0, mContentLayoutGenerated:Z

    if-eqz v8, :cond_13

    iget-object v8, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-eqz v8, :cond_13

    .line 1802
    iget-object v8, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v8}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->updatePosition()V

    goto :goto_13

    .line 1761
    .end local v3    # "newRect":Landroid/graphics/Rect;
    .end local v4    # "oldRect":Landroid/graphics/Rect;
    :pswitch_94
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-le v9, v10, :cond_34

    const/4 v0, 0x1

    goto :goto_34

    .line 1768
    :pswitch_a0
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v9, v10, :cond_34

    const/4 v0, 0x1

    goto :goto_34

    .line 1785
    .restart local v2    # "displaySize":Landroid/graphics/Point;
    .restart local v3    # "newRect":Landroid/graphics/Rect;
    .restart local v4    # "oldRect":Landroid/graphics/Rect;
    :cond_ac
    const/4 v1, 0x2

    goto :goto_65

    .line 1793
    .restart local v1    # "displayOrientation":I
    .restart local v5    # "preferredOrientation":I
    :cond_ae
    const/4 v1, 0x1

    goto :goto_7a

    .line 1756
    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_94
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_a0
        :pswitch_94
        :pswitch_a0
        :pswitch_94
        :pswitch_34
        :pswitch_a0
        :pswitch_94
    .end packed-switch
.end method

.method public disableMultiWindowTrayBar(Z)V
    .registers 4
    .param p1, "disable"    # Z

    .prologue
    .line 2584
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2585
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_10

    .line 2586
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 2590
    :goto_c
    invoke-virtual {p0, v0}, setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2591
    return-void

    .line 2588
    :cond_10
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    goto :goto_c
.end method

.method public dismissGuide()V
    .registers 2

    .prologue
    .line 2359
    iget-object v0, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-eqz v0, :cond_e

    .line 2360
    iget-object v0, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->hide()V

    .line 2361
    iget-object v0, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    .line 2363
    :cond_e
    return-void
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1342
    iget-boolean v0, p0, mContentLayoutGenerated:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_20

    iget-object v0, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1343
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_20

    .line 1344
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1348
    :cond_20
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1349
    return-void
.end method

.method public exitByCloseBtn()V
    .registers 5

    .prologue
    .line 2472
    iget-object v1, p0, mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_18

    .line 2473
    iget-object v1, p0, mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    if-eqz v1, :cond_19

    iget-object v1, p0, mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    invoke-interface {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;->onWindowExit()Z

    move-result v1

    if-nez v1, :cond_19

    .line 2475
    const-string v1, "MultiPhoneWindow"

    const-string/jumbo v2, "onWindowExit return false"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    :cond_18
    :goto_18
    return-void

    .line 2479
    :cond_19
    :try_start_19
    iget-object v1, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1e} :catch_28

    .line 2483
    :goto_1e
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "SPLW"

    const-string v3, "CLOSE"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 2480
    :catch_28
    move-exception v0

    .line 2481
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1e
.end method

.method protected generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;
    .registers 4

    .prologue
    .line 1135
    new-instance v0, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/MultiPhoneWindow$MultiPhoneDecorView;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .registers 7
    .param p1, "decor"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 1140
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 1142
    .local v1, "ret":Landroid/view/ViewGroup;
    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1143
    iget-object v2, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v3, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1144
    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_94

    .line 1145
    invoke-direct {p0, v0}, setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1146
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_43

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateLayout(), local setBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_43
    :goto_43
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, p0, mInitialFlag:I

    .line 1154
    const/4 v2, -0x1

    iput v2, p0, mFloatingFlag:I

    .line 1155
    invoke-virtual {p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-direct {p0, v2}, isRotated(I)Z

    move-result v2

    iput-boolean v2, p0, mLastRotated:Z

    .line 1156
    iget-object v2, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, mLastOrientation:I

    .line 1158
    iget-object v2, p0, mBorder:Lcom/android/internal/policy/multiwindow/Border;

    if-nez v2, :cond_7f

    .line 1159
    new-instance v2, Lcom/android/internal/policy/multiwindow/Border;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/multiwindow/Border;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v2, p0, mBorder:Lcom/android/internal/policy/multiwindow/Border;

    .line 1161
    :cond_7f
    invoke-direct {p0}, generatePenWindowLayout()V

    .line 1163
    iget-object v2, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-nez v2, :cond_93

    .line 1164
    new-instance v2, Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8d4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/view/View;I)V

    iput-object v2, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    .line 1167
    :cond_93
    return-object v1

    .line 1148
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_94
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_43

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateLayout(), bounds is null, mActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method public getContentRootContainer()Landroid/view/View;
    .registers 2

    .prologue
    .line 1219
    iget-object v0, p0, mContentRootContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDockingInstance()Lcom/android/internal/policy/multiwindow/Docking;
    .registers 2

    .prologue
    .line 2355
    iget-object v0, p0, mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    return-object v0
.end method

.method public getMultiPhoneWindowEvent()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 1444
    return-object p0
.end method

.method public getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 3

    .prologue
    .line 1448
    iget-object v1, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v1, :cond_15

    iget-object v1, p0, mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_15

    .line 1449
    iget-object v1, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1450
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iput-object v1, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 1452
    .end local v0    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_15
    iget-object v1, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v1
.end method

.method public getOptionsPanelGravity()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1462
    iget-object v3, p0, mContext:Landroid/content/Context;

    if-eqz v3, :cond_3c

    iget-object v3, p0, mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_3c

    .line 1463
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 1464
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1465
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    .line 1466
    .local v2, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v3, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 1467
    .local v1, "requestOrientation":I
    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3c

    if-ne v1, v5, :cond_3c

    if-eqz v0, :cond_3c

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    if-eq v3, v5, :cond_39

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3c

    .line 1470
    :cond_39
    const/16 v3, 0x51

    .line 1473
    .end local v0    # "di":Landroid/view/DisplayInfo;
    .end local v1    # "requestOrientation":I
    .end local v2    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_3b
    return v3

    :cond_3c
    invoke-super {p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    goto :goto_3b
.end method

.method public getRotationOfStackBound()I
    .registers 2

    .prologue
    .line 2351
    iget v0, p0, mRotation:I

    return v0
.end method

.method public getScaleInfo()Landroid/graphics/PointF;
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2559
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2560
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 2561
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v1

    .line 2563
    :goto_16
    return-object v1

    :cond_17
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_16
.end method

.method public getStackBound()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1505
    iget-object v0, p0, mStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handlePause()V
    .registers 7

    .prologue
    const/4 v3, 0x2

    .line 1223
    iget-object v2, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-eqz v2, :cond_39

    iget-object v2, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    if-eqz v2, :cond_39

    .line 1226
    const/4 v1, 0x1

    .line 1227
    .local v1, "isScreenOn":Z
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 1228
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1229
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_23

    .line 1230
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    if-ne v2, v3, :cond_3a

    const/4 v1, 0x1

    .line 1234
    .end local v0    # "display":Landroid/view/Display;
    :cond_23
    :goto_23
    iget-object v2, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v3, :cond_39

    if-eqz v1, :cond_39

    .line 1235
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/MultiPhoneWindow$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/MultiPhoneWindow$3;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1246
    .end local v1    # "isScreenOn":Z
    :cond_39
    return-void

    .line 1230
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "isScreenOn":Z
    :cond_3a
    const/4 v1, 0x0

    goto :goto_23
.end method

.method public hasStackFocus()Z
    .registers 2

    .prologue
    .line 1457
    iget-boolean v0, p0, mHasStackFocus:Z

    return v0
.end method

.method protected isFloatingWindow()Z
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 1299
    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v1, :cond_13

    .line 1301
    const/4 v0, 0x1

    .line 1303
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isTouchBlocked()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x1

    .line 1478
    iget-object v3, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v3, :cond_1c

    iget-object v3, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v2, :cond_1b

    iget-object v3, p0, mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v4, 0x1000

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1492
    :cond_1b
    :goto_1b
    return v1

    .line 1482
    :cond_1c
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1483
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_47

    .line 1484
    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1b

    move v1, v2

    .line 1485
    goto :goto_1b

    .line 1488
    :cond_47
    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1b

    move v1, v2

    .line 1489
    goto :goto_1b
.end method

.method public minimizeWindow(IZ)V
    .registers 6
    .param p1, "windowMode"    # I
    .param p2, "hide"    # Z

    .prologue
    .line 2536
    invoke-direct {p0}, getState()I

    move-result v0

    .line 2537
    .local v0, "state":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 2544
    :cond_7
    :goto_7
    return-void

    .line 2541
    :cond_8
    iget-object v1, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_7

    .line 2542
    iget-object v1, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->minimizeWindow(Landroid/os/IBinder;)V

    goto :goto_7
.end method

.method public moveStackBound(IIZ)Z
    .registers 7
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "moving"    # Z

    .prologue
    .line 1710
    const/4 v0, 0x0

    .line 1711
    .local v0, "outOfBound":Z
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1712
    .local v1, "stackBound":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 1714
    invoke-direct {p0, v1}, adjustStackBound(Landroid/graphics/Rect;)V

    .line 1716
    invoke-virtual {p0, v1}, setStackBound(Landroid/graphics/Rect;)V

    .line 1717
    return v0
.end method

.method public moveWindow(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2518
    iget-object v0, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2519
    return-void
.end method

.method public multiWindow(IZ)V
    .registers 4
    .param p1, "windowMode"    # I
    .param p2, "pinup"    # Z

    .prologue
    .line 2527
    const/4 v0, 0x2

    invoke-direct {p0, v0}, requestState(I)V

    .line 2528
    return-void
.end method

.method protected needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .registers 4
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v0, 0x0

    .line 2450
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2453
    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, isFloatingWindow()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public normalWindow(I)V
    .registers 3
    .param p1, "windowMode"    # I

    .prologue
    .line 2551
    const/4 v0, 0x1

    invoke-direct {p0, v0}, requestState(I)V

    .line 2552
    return-void
.end method

.method public onMultiWindowConfigurationChanged(I)V
    .registers 24
    .param p1, "configDiff"    # I

    .prologue
    .line 1957
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 1959
    invoke-direct/range {p0 .. p0}, updateRestricedStackBounds()V

    .line 1962
    :cond_b
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-nez v18, :cond_14

    .line 2092
    :cond_13
    :goto_13
    return-void

    .line 1966
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    .line 1970
    invoke-direct/range {p0 .. p0}, getState()I

    move-result v7

    .line 1971
    .local v7, "mwState":I
    sget-boolean v18, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v18, :cond_54

    .line 1972
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_54

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v10

    .line 1974
    .local v10, "preferredOrientation":I
    invoke-virtual/range {p0 .. p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFakeTarget(I)Z

    move-result v18

    if-eqz v18, :cond_54

    .line 1975
    move-object/from16 v0, p0

    iget-boolean v0, v0, mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    goto :goto_13

    .line 1983
    .end local v10    # "preferredOrientation":I
    :cond_54
    invoke-virtual/range {p0 .. p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    .line 1984
    .local v9, "oldRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1985
    .local v8, "newRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastOrientation:I

    .line 1987
    sget-boolean v18, DEBUG_ORIENTATION:Z

    if-eqz v18, :cond_bf

    const-string v19, "MultiPhoneWindow"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "onMultiWindowConfigurationChanged "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    if-eqz v18, :cond_129

    invoke-virtual/range {p0 .. p0}, getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v18

    :goto_9b
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, "oldRect="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :cond_bf
    invoke-virtual/range {p0 .. p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Display;->getRotation()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, isRotated(I)Z

    move-result v15

    .line 1991
    .local v15, "rotated":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, mLastRotated:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v15, :cond_eb

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_eb

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v7, v0, :cond_13

    .line 1994
    :cond_eb
    move-object/from16 v0, p0

    iput-boolean v15, v0, mLastRotated:Z

    .line 1996
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v7, v0, :cond_fb

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v7, v0, :cond_12d

    .line 1997
    :cond_fb
    move-object/from16 v0, p0

    iget-boolean v0, v0, mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11f

    .line 1998
    move-object/from16 v0, p0

    iget-object v0, v0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11f

    .line 2000
    move-object/from16 v0, p0

    iget-object v0, v0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowConfigurationChanged()V

    .line 2003
    :cond_11f
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mDismissGuideByDockingCanceled:Z

    goto/16 :goto_13

    .line 1987
    .end local v15    # "rotated":Z
    :cond_129
    const-string v18, ""

    goto/16 :goto_9b

    .line 2007
    .restart local v15    # "rotated":Z
    :cond_12d
    packed-switch v7, :pswitch_data_374

    goto/16 :goto_13

    .line 2009
    :pswitch_132
    move-object/from16 v0, p0

    iget-object v0, v0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mToken:Landroid/os/IBinder;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_13

    .line 2014
    :pswitch_14b
    const/4 v11, 0x0

    .line 2015
    .local v11, "relativeL":F
    const/4 v13, 0x0

    .line 2016
    .local v13, "relativeT":F
    const/4 v12, 0x0

    .line 2017
    .local v12, "relativeR":F
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 2018
    .local v6, "maxSize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, getDisplaySize(Landroid/graphics/Point;)Z

    .line 2020
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mDismissGuideByDockingCanceled:Z

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v14

    .line 2023
    .local v14, "requestOrientation":I
    if-eqz v14, :cond_172

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_2cc

    :cond_172
    move-object/from16 v0, p0

    iget-object v0, v0, mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    const/high16 v19, 0x400000

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_2cc

    .line 2026
    invoke-virtual/range {p0 .. p0}, getDecorView()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v17

    .line 2027
    .local v17, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v17, :cond_194

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v18

    if-eqz v18, :cond_1b2

    :cond_194
    move-object/from16 v0, p0

    iget-object v0, v0, mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    if-eqz v18, :cond_1b2

    move-object/from16 v0, p0

    iget-object v0, v0, mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-nez v18, :cond_13

    .line 2038
    :cond_1b2
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 2039
    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v12, v18, v19

    .line 2040
    const/16 v18, 0x0

    cmpl-float v18, v12, v18

    if-lez v18, :cond_212

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    sub-int v18, v18, v19

    if-lez v18, :cond_212

    .line 2041
    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v18, v18, v11

    add-float v19, v11, v12

    div-float v11, v18, v19

    .line 2043
    :cond_212
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v13, v18, v19

    .line 2044
    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3851b717    # 5.0E-5f

    add-float v19, v19, v11

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3851b717    # 5.0E-5f

    add-float v20, v20, v13

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2045
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 2046
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 2051
    .end local v17    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_273
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_294

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_294

    move-object/from16 v0, p0

    iget-boolean v0, v0, mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_294

    .line 2052
    move-object/from16 v0, p0

    iget-object v0, v0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2055
    :cond_294
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 2058
    move-object/from16 v0, p0

    iget v0, v0, mLastOrientation:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v8, v1}, checkMaxStackSize(Landroid/graphics/Rect;I)Z

    .line 2059
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, setStackBound(Landroid/graphics/Rect;)V

    .line 2060
    invoke-direct/range {p0 .. p0}, adjustScaleFactor()V

    .line 2061
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    .line 2062
    move-object/from16 v0, p0

    iget-object v0, v0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    goto/16 :goto_13

    .line 2048
    :cond_2cc
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "newRect":Landroid/graphics/Rect;
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v8    # "newRect":Landroid/graphics/Rect;
    goto :goto_273

    .line 2067
    .end local v6    # "maxSize":Landroid/graphics/Point;
    .end local v11    # "relativeL":F
    .end local v12    # "relativeR":F
    .end local v13    # "relativeT":F
    .end local v14    # "requestOrientation":I
    :pswitch_2ea
    invoke-direct/range {p0 .. p0}, initStackBound()V

    .line 2068
    invoke-virtual/range {p0 .. p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    .line 2070
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 2071
    .local v16, "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, getDisplaySize(Landroid/graphics/Point;)Z

    .line 2072
    const/4 v4, 0x0

    .line 2073
    .local v4, "dx":I
    const/4 v5, 0x0

    .line 2074
    .local v5, "dy":I
    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2076
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    if-gez v18, :cond_339

    .line 2077
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v4, v0

    .line 2081
    :cond_30f
    :goto_30f
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, mStatusBarHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_356

    .line 2082
    move-object/from16 v0, p0

    iget v0, v0, mStatusBarHeight:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 2086
    :cond_32b
    :goto_32b
    if-nez v4, :cond_32f

    if-eqz v5, :cond_332

    .line 2087
    :cond_32f
    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2089
    :cond_332
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_13

    .line 2078
    :cond_339
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_30f

    .line 2079
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    goto :goto_30f

    .line 2083
    :cond_356
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_32b

    .line 2084
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    goto :goto_32b

    .line 2007
    nop

    :pswitch_data_374
    .packed-switch 0x1
        :pswitch_132
        :pswitch_2ea
        :pswitch_14b
        :pswitch_14b
    .end packed-switch
.end method

.method public onMultiWindowFocusChanged(IZZ)V
    .registers 7
    .param p1, "notifyReason"    # I
    .param p2, "focus"    # Z
    .param p3, "keepInputMethod"    # Z

    .prologue
    .line 2095
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_43

    if-eqz p2, :cond_43

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :cond_43
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_4f

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_4f

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_52

    .line 2100
    :cond_4f
    invoke-direct {p0, p2}, setStackFocus(Z)V

    .line 2102
    :cond_52
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_66

    if-nez p2, :cond_66

    .line 2103
    invoke-virtual {p0}, closeAllPanels()V

    .line 2104
    if-nez p3, :cond_66

    .line 2105
    invoke-direct {p0}, forceHideInputMethod()Z

    .line 2109
    :cond_66
    return-void
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .registers 13
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "notifyReason"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x4

    .line 1868
    sget-boolean v3, DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_49

    const-string v3, "MultiPhoneWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMultiWindowStyleChanged, reason=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newStyle"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", oldStyle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mActivity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    :cond_49
    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_54

    .line 1872
    invoke-direct {p0, v7}, requestState(I)V

    .line 1873
    invoke-direct {p0, v7}, refreshUI(I)V

    .line 1951
    :cond_53
    :goto_53
    return-void

    .line 1878
    :cond_54
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_98

    .line 1879
    const/high16 v3, 0x20000

    invoke-virtual {p1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1880
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3}, setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1881
    invoke-direct {p0, v7}, refreshUI(I)V

    goto :goto_53

    .line 1882
    :cond_6b
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v9, :cond_53

    .line 1883
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 1886
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_81

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v3

    if-eqz v3, :cond_89

    :cond_81
    iget-object v3, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_53

    .line 1887
    :cond_89
    invoke-direct {p0}, getState()I

    move-result v1

    .line 1888
    .local v1, "state":I
    if-eq v1, v7, :cond_53

    .line 1889
    if-eq v1, v9, :cond_94

    const/4 v3, 0x3

    if-ne v1, v3, :cond_53

    .line 1890
    :cond_94
    invoke-direct {p0, v7}, refreshUI(I)V

    goto :goto_53

    .line 1898
    .end local v1    # "state":I
    .end local v2    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_98
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_b6

    .line 1899
    iget-object v3, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_b6

    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_b6

    invoke-virtual {p1, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_b6

    .line 1901
    iget-object v3, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowStyleChanged(Landroid/graphics/Rect;)V

    .line 1906
    :cond_b6
    iget-object v3, p0, mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v3, :cond_d4

    .line 1907
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-eq v3, v5, :cond_10a

    .line 1908
    iget-object v5, p0, mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_108

    move v3, v4

    :goto_d1
    invoke-interface {v5, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onModeChanged(Z)V

    .line 1915
    :cond_d4
    :goto_d4
    const/4 v0, 0x0

    .line 1916
    .local v0, "currStackBounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_122

    .line 1917
    invoke-direct {p0}, getState()I

    move-result v1

    .line 1918
    .restart local v1    # "state":I
    invoke-direct {p0, p1}, updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1921
    iget-object v3, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v5, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1922
    invoke-direct {p0, v0}, setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1924
    iget-object v3, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    if-eqz v3, :cond_fe

    and-int/lit16 v3, p2, 0x100

    if-eqz v3, :cond_fe

    .line 1926
    iget-object v3, p0, mMinimizeAnimator:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->updateMultiWindowStyleChanged(Landroid/graphics/Rect;)V

    .line 1929
    :cond_fe
    if-ne v1, v4, :cond_103

    .line 1930
    invoke-direct {p0, v8}, refreshUI(I)V

    .line 1932
    :cond_103
    invoke-virtual {p0}, dismissGuide()V

    goto/16 :goto_53

    .line 1908
    .end local v0    # "currStackBounds":Landroid/graphics/Rect;
    .end local v1    # "state":I
    :cond_108
    const/4 v3, 0x0

    goto :goto_d1

    .line 1909
    :cond_10a
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-eq v3, v5, :cond_d4

    .line 1910
    iget-object v3, p0, mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onZoneChanged(I)V

    goto :goto_d4

    .line 1937
    .restart local v0    # "currStackBounds":Landroid/graphics/Rect;
    :cond_122
    invoke-direct {p0, p1}, updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1940
    invoke-virtual {p0}, dismissGuide()V

    .line 1943
    iget-object v3, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1944
    invoke-direct {p0, v0}, setStackBoundsInternel(Landroid/graphics/Rect;)V

    .line 1947
    iget-boolean v3, p0, mContentLayoutGenerated:Z

    if-eqz v3, :cond_53

    .line 1948
    iget-object v3, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->invalidate()V

    .line 1949
    invoke-direct {p0, v8}, refreshUI(I)V

    goto/16 :goto_53
.end method

.method public onVisibilityChanged(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 1319
    iget-object v0, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    if-eqz v0, :cond_c

    iget-object v0, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1339
    :cond_c
    :goto_c
    return-void

    .line 1321
    :cond_d
    invoke-direct {p0}, getState()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    goto :goto_c

    .line 1324
    :pswitch_15
    iget-object v0, p0, mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 1325
    if-nez p1, :cond_c

    .line 1326
    invoke-virtual {p0}, dismissGuide()V

    goto :goto_c

    .line 1330
    :pswitch_20
    if-eqz p1, :cond_c

    .line 1331
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 1332
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 1321
    nop

    :pswitch_data_36
    .packed-switch 0x2
        :pswitch_15
        :pswitch_15
        :pswitch_20
    .end packed-switch
.end method

.method public requestMaximize()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2334
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2335
    .local v0, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2336
    sget-boolean v1, DEBUG_FLOATING_CYCLE:Z

    if-eqz v1, :cond_17

    const-string v1, "MultiPhoneWindow"

    const-string v2, "Minimized->Floating"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    :cond_17
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2339
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2340
    const/16 v1, 0x800

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2341
    const/4 v1, 0x1

    invoke-direct {p0, v1}, requestState(I)V

    .line 2348
    :cond_2b
    :goto_2b
    return-void

    .line 2343
    :cond_2c
    invoke-direct {p0, v3, v3, v3}, setStackBoundInScreen(IIZ)V

    .line 2344
    invoke-direct {p0}, getState()I

    move-result v1

    invoke-direct {p0, v1}, requestState(I)V

    .line 2345
    invoke-virtual {p0}, getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2b
.end method

.method public setAppRequestOrientation(I)V
    .registers 6
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 1732
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v0

    .line 1733
    .local v0, "prevOrientation":I
    if-eq v0, p1, :cond_45

    .line 1734
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(IZ)V

    .line 1735
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_45

    .line 1736
    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAppRequestOrientation(), prev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :cond_45
    return-void
.end method

.method public setExitListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;)Z
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .prologue
    .line 2505
    iput-object p1, p0, mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 2506
    const/4 v0, 0x1

    return v0
.end method

.method public setIsolatedCenterPoint(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 2571
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2572
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v1, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_13

    .line 2573
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 2574
    invoke-direct {p0, v0}, updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2575
    iget-object v1, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 2577
    :cond_13
    return-void
.end method

.method public setMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 2598
    if-nez p1, :cond_6

    .line 2599
    iput-object v1, p0, mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 2609
    :goto_5
    return-void

    .line 2601
    :cond_6
    iget-object v0, p0, mCustomMinimizedView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 2602
    iput-object v1, p0, mCustomMinimizedView:Landroid/view/View;

    .line 2604
    :cond_c
    iget-object v0, p0, mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-nez v0, :cond_18

    .line 2605
    iget-object v0, p0, mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 2607
    :cond_18
    iget-object v0, p0, mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5
.end method

.method public setMinimizeView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 2616
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2637
    :goto_a
    return-void

    .line 2620
    :cond_b
    if-nez p1, :cond_10

    .line 2621
    iput-object v2, p0, mCustomMinimizedView:Landroid/view/View;

    goto :goto_a

    .line 2623
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2624
    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMinimizeView : request view is already added >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2627
    :cond_30
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v1, :cond_40

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v1, :cond_49

    .line 2629
    :cond_40
    const-string v0, "MultiPhoneWindow"

    const-string/jumbo v1, "setMinimizeView : view width and height must be WRAP_CONTENT."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2632
    :cond_49
    iget-object v0, p0, mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-eqz v0, :cond_4f

    .line 2633
    iput-object v2, p0, mCustomMinimizedThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 2635
    :cond_4f
    iput-object p1, p0, mCustomMinimizedView:Landroid/view/View;

    goto :goto_a
.end method

.method protected setStackBound(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "requestBound"    # Landroid/graphics/Rect;

    .prologue
    .line 1509
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1542
    :cond_8
    :goto_8
    return-void

    .line 1512
    :cond_9
    invoke-direct {p0}, getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_17

    invoke-direct {p0}, getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    .line 1514
    :cond_17
    invoke-direct {p0, p1}, adjustStackBound(Landroid/graphics/Rect;)V

    .line 1517
    :cond_1a
    iget-object v2, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v2, :cond_8

    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1519
    const/4 v1, 0x0

    .line 1520
    .local v1, "sizeChanged":Z
    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_45

    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_46

    .line 1522
    :cond_45
    const/4 v1, 0x1

    .line 1524
    :cond_46
    iget-object v2, p0, mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1525
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_74

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStackBounds, requestBound="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_74
    iget-object v2, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v3, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 1527
    iget-object v2, p0, mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1528
    invoke-virtual {p0}, getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1529
    invoke-virtual {p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, mRotation:I

    .line 1530
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v2, :cond_b9

    .line 1531
    iget-object v2, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v2, :cond_b9

    iget-object v2, p0, mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_b9

    iget-object v2, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isSelectiveOrientationState()Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 1532
    iget-object v2, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1533
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_b9

    .line 1534
    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    iput v2, p0, mRotation:I

    .line 1538
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_b9
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v1, :cond_8

    iget-object v2, p0, mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v2, :cond_8

    .line 1539
    iget-object v2, p0, mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    goto/16 :goto_8
.end method

.method public setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;)Z
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .prologue
    .line 2495
    iput-object p1, p0, mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 2496
    const/4 v0, 0x1

    return v0
.end method

.method public setStateChangeListener2(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;)Z
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    .prologue
    .line 2500
    iput-object p1, p0, mMultiWindowListener2:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener2;

    .line 2501
    const/4 v0, 0x1

    return v0
.end method

.method public showGuide(Landroid/graphics/Rect;I)V
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "type"    # I

    .prologue
    .line 2366
    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    iget-boolean v0, p0, mHasStackFocus:Z

    if-eqz v0, :cond_1d

    :cond_7
    iget-boolean v0, p0, mIsAttachedToWindow:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2370
    iget-object v0, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 2371
    invoke-direct {p0, p1}, showGuide(Landroid/graphics/Rect;)V

    .line 2373
    :cond_1d
    return-void
.end method
