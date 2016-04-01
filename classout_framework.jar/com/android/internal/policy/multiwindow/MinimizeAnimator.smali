.class public Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;,
        Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;,
        Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;,
        Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static DEBUG_MINIMIZE_REMOVE_ANIM:Z = false

.field private static final DRAG_AND_DROP_TIMER_TIME:I = 0x2bc

.field private static final MESSAGE_REQUEST_MAXIMIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MinimizeAnimator"

.field private static final bDSSEnabled:Z = true


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAnimating:Z

.field private mAnimationCancelByMaximize:Z

.field private mContentRootContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDocking:Lcom/android/internal/policy/multiwindow/Docking;

.field private mDragMode:Z

.field private mDssScale:F

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private mHandler:Landroid/os/Handler;

.field private mInitPositionX:I

.field private mInitPositionY:I

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mIsMoving:Z

.field private mIsSupportSimplificationUI:Z

.field private mIsTouchDown:Z

.field private mLastPositionX:F

.field private mLastPositionY:F

.field private mLastRotation:I

.field private mMinimizedIcon:Landroid/view/View;

.field private final mMinimizedIconDefaultSize:I

.field private mMinimizedIconHeight:I

.field private mMinimizedIconWidth:I

.field private mMinimizedWindowListener:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;

.field private mMoveInterval:I

.field private final mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mReadyToShow:Z

.field private mRemoveLayoutHeight:I

.field private mStatusBarHeight:I

.field private mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

.field private mToken:Landroid/os/IBinder;

.field private final mTouchableRegion:Landroid/graphics/Region;

.field private mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

.field private mUsingSelectiveOrientation:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    sput-boolean v0, DEBUG:Z

    .line 78
    sget-boolean v0, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v0, :cond_8

    :cond_8
    const/4 v0, 0x0

    sput-boolean v0, DEBUG_MINIMIZE_REMOVE_ANIM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/MultiPhoneWindow;F)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "multiPhoneWindow"    # Lcom/android/internal/policy/MultiPhoneWindow;
    .param p3, "dssScale"    # F

    .prologue
    const v3, 0x10502c5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v0, p0, mUsingSelectiveOrientation:Z

    .line 84
    iput-boolean v0, p0, mAnimationCancelByMaximize:Z

    .line 85
    iput-boolean v0, p0, mDragMode:Z

    .line 87
    iput v0, p0, mStatusBarHeight:I

    .line 88
    iput v0, p0, mRemoveLayoutHeight:I

    .line 90
    iput v0, p0, mMinimizedIconHeight:I

    .line 91
    iput v0, p0, mMinimizedIconWidth:I

    .line 101
    iput-object v2, p0, mActivity:Landroid/app/Activity;

    .line 102
    iput-object v2, p0, mToken:Landroid/os/IBinder;

    .line 103
    iput-object v2, p0, mWindow:Landroid/view/Window;

    .line 107
    iput v1, p0, mLastPositionX:F

    .line 108
    iput v1, p0, mLastPositionY:F

    .line 109
    iput v0, p0, mMoveInterval:I

    .line 110
    iput v1, p0, mFirstDownX:F

    .line 111
    iput v1, p0, mFirstDownY:F

    .line 112
    iput-boolean v0, p0, mIsMoving:Z

    .line 113
    iput-boolean v0, p0, mIsTouchDown:Z

    .line 114
    iput-boolean v0, p0, mAnimating:Z

    .line 115
    iput-boolean v0, p0, mReadyToShow:Z

    .line 116
    const/4 v0, -0x1

    iput v0, p0, mLastRotation:I

    .line 120
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, mDssScale:F

    .line 125
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, mTouchableRegion:Landroid/graphics/Region;

    .line 126
    new-instance v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V

    iput-object v0, p0, mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 140
    new-instance v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$2;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 152
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 153
    iput p3, p0, mDssScale:F

    .line 154
    iget-object v0, p0, mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_5b

    .line 155
    iget-object v0, p0, mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, mActivity:Landroid/app/Activity;

    .line 157
    :cond_5b
    iget-object v0, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, mToken:Landroid/os/IBinder;

    .line 158
    iput-object p2, p0, mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

    .line 159
    invoke-virtual {p2}, Lcom/android/internal/policy/MultiPhoneWindow;->getDockingInstance()Lcom/android/internal/policy/multiwindow/Docking;

    move-result-object v0

    iput-object v0, p0, mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    .line 161
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    .line 162
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 164
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, mIsSupportSimplificationUI:Z

    .line 166
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mStatusBarHeight:I

    .line 167
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mRemoveLayoutHeight:I

    .line 168
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mMinimizedIconDefaultSize:I

    .line 169
    iget v0, p0, mMinimizedIconDefaultSize:I

    iput v0, p0, mMinimizedIconWidth:I

    iput v0, p0, mMinimizedIconHeight:I

    .line 171
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, mRemoveLayoutHeight:I

    .line 173
    new-instance v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V

    iput-object v0, p0, mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/graphics/Region;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-object v0, p0, mTouchableRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/MultiPhoneWindow;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-object v0, p0, mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget v0, p0, mInitPositionY:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget v0, p0, mMinimizedIconWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget v0, p0, mMinimizedIconHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, setTouchableRegion(Landroid/graphics/Rect;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-object v0, p0, mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-object v0, p0, mMinimizedIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, adjustMinimizedBoundary(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-boolean v0, p0, mAnimating:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, mAnimating:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-boolean v0, p0, mIsMoving:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, mIsMoving:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-object v0, p0, mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/android/internal/policy/multiwindow/Docking;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-object v0, p0, mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-boolean v0, p0, mIsTouchDown:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, mIsTouchDown:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget v0, p0, mLastPositionX:F

    return v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 76
    iput p1, p0, mLastPositionX:F

    return p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget v0, p0, mFirstDownX:F

    return v0
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 76
    iput p1, p0, mFirstDownX:F

    return p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget v0, p0, mLastPositionY:F

    return v0
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 76
    iput p1, p0, mLastPositionY:F

    return p1
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget v0, p0, mFirstDownY:F

    return v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 76
    iput p1, p0, mFirstDownY:F

    return p1
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-boolean v0, p0, mAnimationCancelByMaximize:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, mAnimationCancelByMaximize:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Point;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Landroid/graphics/Point;

    .prologue
    .line 76
    invoke-direct {p0, p1}, getDisplaySize(Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget v0, p0, mMoveInterval:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, mMoveInterval:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-boolean v0, p0, mIsSupportSimplificationUI:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget v0, p0, mMinimizedIconDefaultSize:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget v0, p0, mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget v0, p0, mRemoveLayoutHeight:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget v0, p0, mDssScale:F

    return v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    invoke-direct {p0}, hide()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 76
    invoke-direct {p0, p1}, isOutOfDisplay(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-boolean v0, p0, mDragMode:Z

    return v0
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 76
    sget-boolean v0, DEBUG:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-boolean v0, p0, mUsingSelectiveOrientation:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, mUsingSelectiveOrientation:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Landroid/view/WindowManager$LayoutParams;
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$4300()Z
    .registers 1

    .prologue
    .line 76
    sget-boolean v0, DEBUG_MINIMIZE_REMOVE_ANIM:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-object v0, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-object v0, p0, mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/Window;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-object v0, p0, mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget-boolean v0, p0, mReadyToShow:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, mReadyToShow:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    .prologue
    .line 76
    iget v0, p0, mInitPositionX:I

    return v0
.end method

.method private addWindow()Landroid/view/Window;
    .registers 12

    .prologue
    const/4 v10, -0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 309
    iget-object v6, p0, mActivity:Landroid/app/Activity;

    if-eqz v6, :cond_2f

    iget-object v6, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->isWindowAdded()Z

    move-result v6

    if-nez v6, :cond_2f

    .line 310
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_2d

    .line 311
    const-string v6, "MinimizeAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip add MinimizeAnimator Window, DecorWindow is not added, token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    move-object v3, v5

    .line 343
    :goto_2e
    return-object v3

    .line 315
    :cond_2f
    iget-object v6, p0, mWindow:Landroid/view/Window;

    if-eqz v6, :cond_54

    .line 316
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_51

    .line 317
    const-string v6, "MinimizeAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MinimizeAnimator::addWindow(), MinimizeAnimator already has mWindow, mWindow should be recreated, token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_51
    invoke-virtual {p0}, removeWindow()V

    .line 322
    :cond_54
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_58

    .line 326
    :cond_58
    invoke-direct {p0, v9}, createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 327
    .local v4, "newWindowAttributes":Landroid/view/WindowManager$LayoutParams;
    new-instance v3, Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 328
    .local v3, "newWindow":Landroid/view/Window;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 329
    iget-object v6, p0, mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v3, v6, v5, v5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 330
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 332
    .local v2, "newDecor":Landroid/view/View;
    new-instance v5, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentRootContainer;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/content/Context;)V

    iput-object v5, p0, mContentRootContainer:Landroid/view/ViewGroup;

    .line 333
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_82
    move-object v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_a0

    move-object v5, v2

    .line 334
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "content":Landroid/view/View;
    move-object v5, v2

    .line 335
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 336
    iget-object v5, p0, mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_82

    .end local v0    # "content":Landroid/view/View;
    :cond_a0
    move-object v5, v2

    .line 338
    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, mContentRootContainer:Landroid/view/ViewGroup;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    invoke-virtual {v2, v9}, Landroid/view/View;->setLayoutDirection(I)V

    .line 341
    iget-object v5, p0, mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5, v2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2e
.end method

.method private adjustMinimizedBoundary(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 13
    .param p1, "stackBound"    # Landroid/graphics/Rect;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 780
    const/4 v2, 0x0

    .line 781
    .local v2, "outOfBound":Z
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 782
    .local v4, "screenSize":Landroid/graphics/Point;
    invoke-direct {p0, v4}, getDisplaySize(Landroid/graphics/Point;)Z

    .line 784
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, mMinimizedIconWidth:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 785
    .local v1, "left":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 787
    .local v5, "top":I
    iget v6, p0, mMinimizedIconWidth:I

    add-int v3, v1, v6

    .line 788
    .local v3, "right":I
    iget v6, p0, mMinimizedIconHeight:I

    add-int v0, v5, v6

    .line 789
    .local v0, "bottom":I
    invoke-virtual {p2, v1, v5, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 791
    if-gez v1, :cond_5f

    .line 792
    iget v6, p2, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 793
    const/4 v2, 0x1

    .line 799
    :cond_2d
    :goto_2d
    iget v6, v4, Landroid/graphics/Point;->y:I

    if-le v0, v6, :cond_6b

    .line 800
    iget v6, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v0

    invoke-virtual {p2, v9, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 801
    const/4 v2, 0x1

    .line 806
    :cond_38
    :goto_38
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_5e

    .line 807
    const-string v6, "MinimizeAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjustMinimizedBoundary StackBound="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OutBound="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_5e
    return v2

    .line 794
    :cond_5f
    iget v6, v4, Landroid/graphics/Point;->x:I

    if-le v3, v6, :cond_2d

    .line 795
    iget v6, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v3

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 796
    const/4 v2, 0x1

    goto :goto_2d

    .line 802
    :cond_6b
    iget v6, p0, mStatusBarHeight:I

    if-ge v5, v6, :cond_38

    .line 803
    iget v6, p0, mStatusBarHeight:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-virtual {p2, v9, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 804
    const/4 v2, 0x1

    goto :goto_38
.end method

.method private createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    .registers 7
    .param p1, "showTrash"    # Z

    .prologue
    const/4 v4, -0x1

    .line 421
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_5

    .line 425
    :cond_5
    const/4 v1, 0x2

    .line 428
    .local v1, "windowType":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1000528

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 434
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 435
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit16 v2, v2, 0x609

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 440
    iget-boolean v2, p0, mIsSupportSimplificationUI:Z

    if-eqz v2, :cond_27

    if-eqz p1, :cond_27

    .line 441
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 444
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MinimizeAnimator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 445
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 446
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 447
    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 448
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 450
    return-object v0
.end method

.method private getDisplaySize(Landroid/graphics/Point;)Z
    .registers 8
    .param p1, "outbound"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 505
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 506
    .local v0, "display":Landroid/view/Display;
    iget-object v5, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v5, :cond_2d

    .line 507
    iget-object v5, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 508
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_2d

    .line 509
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 510
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRealSize(Landroid/graphics/Rect;Landroid/view/DisplayInfo;)Z

    .line 511
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->x:I

    .line 512
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->y:I

    .line 522
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :goto_2c
    return v3

    .line 517
    :cond_2d
    if-eqz v0, :cond_33

    .line 518
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_2c

    :cond_33
    move v3, v4

    .line 522
    goto :goto_2c
.end method

.method private getScreenRotation()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 526
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 527
    .local v0, "display":Landroid/view/Display;
    iget-object v3, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v3, :cond_18

    .line 528
    iget-object v3, p0, mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 529
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_18

    .line 530
    iget v2, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 538
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_17
    :goto_17
    return v2

    .line 534
    :cond_18
    if-eqz v0, :cond_17

    .line 535
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    goto :goto_17
.end method

.method private hide()V
    .registers 4

    .prologue
    .line 409
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_b

    .line 410
    const-string v1, "MinimizeAnimator"

    const-string v2, "hide"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_b
    iget-object v1, p0, mWindow:Landroid/view/Window;

    if-eqz v1, :cond_34

    iget-object v1, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 414
    iget-object v1, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 415
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 416
    iget-object v1, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 418
    .end local v0    # "viewTreeObserver":Landroid/view/ViewTreeObserver;
    :cond_34
    return-void
.end method

.method private isOutOfDisplay(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 773
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 774
    .local v1, "ds":Landroid/graphics/Point;
    invoke-direct {p0, v1}, getDisplaySize(Landroid/graphics/Point;)Z

    .line 775
    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, p0, mStatusBarHeight:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 776
    .local v0, "dis":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    return v2
.end method

.method private makeAnimation(FF)Landroid/view/animation/AnimationSet;
    .registers 14
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F

    .prologue
    .line 454
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 456
    .local v10, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 457
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 458
    new-instance v1, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 459
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 461
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 462
    .local v9, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 463
    new-instance v1, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 464
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 466
    return-object v10
.end method

.method private makeMinimizeIconWindow(Landroid/view/View;Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "thumbnail"    # Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .prologue
    .line 192
    invoke-direct {p0}, addWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, mWindow:Landroid/view/Window;

    .line 193
    iget-object v1, p0, mWindow:Landroid/view/Window;

    if-nez v1, :cond_b

    .line 306
    :cond_a
    :goto_a
    return-void

    .line 197
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, mReadyToShow:Z

    .line 199
    if-nez p1, :cond_1bc

    .line 200
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mMinimizedIcon:Landroid/view/View;

    .line 201
    iget v1, p0, mMinimizedIconDefaultSize:I

    iput v1, p0, mMinimizedIconWidth:I

    iput v1, p0, mMinimizedIconHeight:I

    .line 202
    if-nez p2, :cond_1b0

    .line 203
    iget-object v1, p0, mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    move-result-object v1

    iput-object v1, p0, mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 208
    :goto_29
    iget-object v1, p0, mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->isUsedTheme()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 209
    iget-object v1, p0, mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    iget-object v2, p0, mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v2}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->loadIconForResolveTheme()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :cond_3c
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_1b4

    .line 213
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 214
    .local v0, "personaManager":Landroid/os/PersonaManager;
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v2}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string/jumbo v3, "multiwindow"

    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Landroid/os/PersonaManager;->getCustomBadgedIconifRequired(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 219
    .end local v0    # "personaManager":Landroid/os/PersonaManager;
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_6e
    iget-object v1, p0, mMinimizedIcon:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v1, p0, mMinimizedIcon:Landroid/view/View;

    iget-object v2, p0, mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v2}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 228
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_80
    iget-object v1, p0, mMinimizedWindowListener:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;

    if-nez v1, :cond_8c

    .line 229
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;)V

    iput-object v1, p0, mMinimizedWindowListener:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;

    .line 231
    :cond_8c
    iget-object v1, p0, mMinimizedIcon:Landroid/view/View;

    iget-object v2, p0, mMinimizedWindowListener:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 232
    iget-object v1, p0, mMinimizedIcon:Landroid/view/View;

    iget-object v2, p0, mMinimizedWindowListener:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$MinimizedWindowListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 233
    iget-object v1, p0, mMinimizedIcon:Landroid/view/View;

    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$ContentFrameDragListener;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Lcom/android/internal/policy/multiwindow/MinimizeAnimator$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 234
    iget-object v1, p0, mMinimizedIcon:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 236
    iget-object v1, p0, mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v8

    .line 237
    .local v8, "initPosition":Landroid/graphics/Rect;
    iget-object v1, p0, mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getRotationOfStackBound()I

    move-result v1

    iput v1, p0, mLastRotation:I

    .line 240
    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, mDssScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, mDssScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, mMinimizedIconWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, mInitPositionX:I

    .line 241
    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, mDssScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, mMinimizedIconHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, mInitPositionY:I

    .line 247
    iget v1, p0, mInitPositionY:I

    iget v2, p0, mStatusBarHeight:I

    if-ge v1, v2, :cond_e9

    .line 248
    iget v1, p0, mStatusBarHeight:I

    iput v1, p0, mInitPositionY:I

    .line 250
    :cond_e9
    iget-object v1, p0, mMinimizedIcon:Landroid/view/View;

    iget v2, p0, mInitPositionX:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 251
    iget-object v1, p0, mMinimizedIcon:Landroid/view/View;

    iget v2, p0, mInitPositionY:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 253
    iget-object v1, p0, mWindow:Landroid/view/Window;

    iget-object v2, p0, mMinimizedIcon:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, mMinimizedIconWidth:I

    iget v5, p0, mMinimizedIconHeight:I

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v1, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 257
    iget-object v1, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 258
    invoke-direct {p0}, show()V

    .line 260
    iget v1, p0, mInitPositionX:I

    int-to-float v1, v1

    iget v2, p0, mMinimizedIconWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v9, v1, v2

    .line 261
    .local v9, "pivotX":F
    iget v1, p0, mInitPositionY:I

    int-to-float v1, v1

    iget v2, p0, mMinimizedIconHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v10, v1, v2

    .line 263
    .local v10, "pivotY":F
    invoke-direct {p0, v9, v10}, makeAnimation(FF)Landroid/view/animation/AnimationSet;

    move-result-object v6

    .line 264
    .local v6, "a":Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V

    invoke-virtual {v6, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 301
    iget-object v1, p0, mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 302
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_a

    .line 303
    const-string v1, "MinimizeAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeMinimizeIconWindow componentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v1, "MinimizeAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeMinimizeIconWindow StackBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " X="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mInitPositionX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mInitPositionY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pivotX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pivotY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 205
    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v8    # "initPosition":Landroid/graphics/Rect;
    .end local v9    # "pivotX":F
    .end local v10    # "pivotY":F
    :cond_1b0
    iput-object p2, p0, mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    goto/16 :goto_29

    .line 216
    :cond_1b4
    iget-object v1, p0, mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-virtual {v1}, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .restart local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_6e

    .line 222
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1bc
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, mMinimizedIconWidth:I

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, mMinimizedIconHeight:I

    .line 225
    iput-object p1, p0, mMinimizedIcon:Landroid/view/View;

    goto/16 :goto_80
.end method

.method private setTouchableRegion(Landroid/graphics/Rect;I)V
    .registers 9
    .param p1, "region"    # Landroid/graphics/Rect;
    .param p2, "delayedTime"    # I

    .prologue
    .line 470
    iget-object v1, p0, mMinimizedIcon:Landroid/view/View;

    if-nez v1, :cond_5

    .line 502
    :goto_4
    return-void

    .line 474
    :cond_5
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_3b

    .line 475
    const-string v1, "MinimizeAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTouchableRegion() touchableRegion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delaytedTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_3b
    move-object v0, p1

    .line 480
    .local v0, "touchableRegion":Landroid/graphics/Rect;
    if-lez p2, :cond_4a

    .line 481
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$4;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$4;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;)V

    int-to-long v4, p2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 499
    :cond_4a
    iget-object v1, p0, mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 500
    iget-object v1, p0, mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_4
.end method

.method private show()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 391
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_d

    .line 392
    const-string v2, "MinimizeAnimator"

    const-string/jumbo v3, "show"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_d
    iget-object v2, p0, mWindow:Landroid/view/Window;

    if-eqz v2, :cond_57

    iget-object v2, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 396
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 397
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-direct {p0, v0}, getDisplaySize(Landroid/graphics/Point;)Z

    .line 398
    iget-object v2, p0, mTouchableRegion:Landroid/graphics/Region;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    .line 399
    iget-object v2, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 400
    .local v1, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 401
    iget-object v2, p0, mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 402
    iget-object v2, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_57

    .line 403
    iget-object v2, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 406
    .end local v0    # "displaySize":Landroid/graphics/Point;
    .end local v1    # "viewTreeObserver":Landroid/view/ViewTreeObserver;
    :cond_57
    return-void
.end method

.method private updateRotationChanged(Landroid/graphics/Rect;)V
    .registers 19
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    .line 813
    invoke-direct/range {p0 .. p0}, getScreenRotation()I

    move-result v2

    .line 814
    .local v2, "currentRotation":I
    move-object/from16 v0, p0

    iget v13, v0, mLastRotation:I

    sub-int v3, v2, v13

    .line 815
    .local v3, "delta":I
    if-gez v3, :cond_e

    .line 816
    add-int/lit8 v3, v3, 0x4

    .line 818
    :cond_e
    move-object/from16 v0, p0

    iput v2, v0, mLastRotation:I

    .line 820
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 821
    .local v9, "screenSize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, getDisplaySize(Landroid/graphics/Point;)Z

    .line 822
    new-instance v6, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v15, v9, Landroid/graphics/Point;->x:I

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v6, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 823
    .local v6, "displaySize":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getX()F

    move-result v13

    float-to-int v8, v13

    .line 824
    .local v8, "left":I
    move-object/from16 v0, p0

    iget-object v13, v0, mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v13

    float-to-int v10, v13

    .line 825
    .local v10, "top":I
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v13, v0, mMinimizedIconWidth:I

    add-int/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, mMinimizedIconHeight:I

    add-int/2addr v14, v10

    invoke-direct {v7, v8, v10, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 826
    .local v7, "lastMinimizedBound":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 828
    .local v1, "currentMinimizedBound":Landroid/graphics/Rect;
    packed-switch v3, :pswitch_data_194

    .line 867
    :goto_54
    move-object/from16 v0, p0

    iget-boolean v13, v0, mReadyToShow:Z

    if-eqz v13, :cond_67

    .line 868
    const-string v13, "MinimizeAnimator"

    const-string/jumbo v14, "updateRotationChanged : ready to show"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mReadyToShow:Z

    .line 871
    :cond_67
    move-object/from16 v0, p0

    iget-object v13, v0, mMinimizedIcon:Landroid/view/View;

    iget v14, v1, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setX(F)V

    .line 872
    move-object/from16 v0, p0

    iget-object v13, v0, mMinimizedIcon:Landroid/view/View;

    iget v14, v1, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setY(F)V

    .line 873
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, setTouchableRegion(Landroid/graphics/Rect;I)V

    .line 875
    move-object/from16 v0, p0

    iget-object v13, v0, mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getX()F

    move-result v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, mMinimizedIconWidth:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    int-to-float v14, v14

    sub-float v4, v13, v14

    .line 876
    .local v4, "diffX":F
    move-object/from16 v0, p0

    iget-object v13, v0, mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v15, v0, mMinimizedIconHeight:I

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    int-to-float v14, v14

    sub-float v5, v13, v14

    .line 877
    .local v5, "diffY":F
    move-object/from16 v0, p0

    iget-object v13, v0, mMultiPhoneWindow:Lcom/android/internal/policy/MultiPhoneWindow;

    float-to-int v14, v4

    float-to-int v15, v5

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/internal/policy/MultiPhoneWindow;->moveStackBound(IIZ)Z

    .line 879
    sget-boolean v13, DEBUG:Z

    if-eqz v13, :cond_e7

    .line 880
    const-string v13, "MinimizeAnimator"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateRotationChanged rotation="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Minimized Bound="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_e7
    return-void

    .line 833
    .end local v4    # "diffX":F
    .end local v5    # "diffY":F
    :pswitch_e8
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, mDssScale:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, mDssScale:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, mMinimizedIconWidth:I

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    add-int v11, v13, v14

    .line 835
    .local v11, "x":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, mDssScale:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget v14, v0, mMinimizedIconHeight:I

    div-int/lit8 v14, v14, 0x2

    sub-int v12, v13, v14

    .line 842
    .local v12, "y":I
    move-object/from16 v0, p0

    iget v13, v0, mStatusBarHeight:I

    if-ge v12, v13, :cond_124

    .line 843
    move-object/from16 v0, p0

    iget v12, v0, mStatusBarHeight:I

    .line 845
    :cond_124
    move-object/from16 v0, p0

    iget v13, v0, mMinimizedIconWidth:I

    add-int/2addr v13, v11

    move-object/from16 v0, p0

    iget v14, v0, mMinimizedIconHeight:I

    add-int/2addr v14, v12

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_54

    .line 848
    .end local v11    # "x":I
    .end local v12    # "y":I
    :pswitch_133
    iget v13, v6, Landroid/graphics/Rect;->bottom:I

    iget v14, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->top:I

    .line 849
    iget v13, v7, Landroid/graphics/Rect;->top:I

    iput v13, v1, Landroid/graphics/Rect;->left:I

    .line 850
    iget v13, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->right:I

    .line 851
    iget v13, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_54

    .line 854
    :pswitch_152
    iget v13, v6, Landroid/graphics/Rect;->bottom:I

    iget v14, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->top:I

    .line 855
    iget v13, v6, Landroid/graphics/Rect;->right:I

    iget v14, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->left:I

    .line 856
    iget v13, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->right:I

    .line 857
    iget v13, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_54

    .line 860
    :pswitch_174
    iget v13, v7, Landroid/graphics/Rect;->left:I

    iput v13, v1, Landroid/graphics/Rect;->top:I

    .line 861
    iget v13, v6, Landroid/graphics/Rect;->right:I

    iget v14, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->left:I

    .line 862
    iget v13, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->right:I

    .line 863
    iget v13, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_54

    .line 828
    nop

    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_e8
        :pswitch_133
        :pswitch_152
        :pswitch_174
    .end packed-switch
.end method


# virtual methods
.method public isMinimizeIconVisible()Z
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, mWindow:Landroid/view/Window;

    if-eqz v0, :cond_12

    iget-object v0, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public makeMinimizeIconWindow()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, v0, v0}, makeMinimizeIconWindow(Landroid/view/View;Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V

    .line 189
    return-void
.end method

.method public makeMinimizeIconWindow(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, makeMinimizeIconWindow(Landroid/view/View;Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V

    .line 179
    return-void
.end method

.method public makeMinimizeIconWindow(Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V
    .registers 3
    .param p1, "thumbnail"    # Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, makeMinimizeIconWindow(Landroid/view/View;Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V

    .line 184
    return-void
.end method

.method public removeWindow()V
    .registers 2

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, removeWindow(Z)V

    .line 349
    return-void
.end method

.method public removeWindow(Z)V
    .registers 7
    .param p1, "immediate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 353
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_39

    .line 354
    const-string v1, "MinimizeAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeWindow mWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", immediate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_39
    iget-object v1, p0, mWindow:Landroid/view/Window;

    if-eqz v1, :cond_63

    .line 358
    iget-object v1, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 359
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4c

    .line 360
    invoke-direct {p0}, hide()V

    .line 363
    :cond_4c
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 364
    if-eqz p1, :cond_7f

    .line 365
    iget-object v1, p0, mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 370
    :goto_61
    iput-object v4, p0, mWindow:Landroid/view/Window;

    .line 373
    .end local v0    # "decorView":Landroid/view/View;
    :cond_63
    iget-object v1, p0, mMinimizedIcon:Landroid/view/View;

    if-eqz v1, :cond_78

    .line 374
    iget-object v1, p0, mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 375
    iget-object v1, p0, mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 376
    iget-object v1, p0, mMinimizedIcon:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 377
    iput-object v4, p0, mMinimizedIcon:Landroid/view/View;

    .line 380
    :cond_78
    iget-object v1, p0, mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    if-eqz v1, :cond_7e

    .line 381
    iput-object v4, p0, mThumbnail:Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    .line 383
    :cond_7e
    return-void

    .line 367
    .restart local v0    # "decorView":Landroid/view/View;
    :cond_7f
    iget-object v1, p0, mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_61
.end method

.method public setDragAndDropMode(Z)V
    .registers 2
    .param p1, "mode"    # Z

    .prologue
    .line 909
    iput-boolean p1, p0, mDragMode:Z

    .line 910
    return-void
.end method

.method public updateMultiWindowConfigurationChanged()V
    .registers 2

    .prologue
    .line 887
    iget-object v0, p0, mMinimizedIcon:Landroid/view/View;

    if-nez v0, :cond_4

    .line 890
    :cond_4
    return-void
.end method

.method public updateMultiWindowStyleChanged(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    .line 894
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1d

    .line 895
    const-string v0, "MinimizeAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMultiWindowStyleChanged StackBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_1d
    iget-object v0, p0, mMinimizedIcon:Landroid/view/View;

    if-nez v0, :cond_22

    .line 906
    :goto_21
    return-void

    .line 900
    :cond_22
    if-nez p1, :cond_29

    .line 901
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, removeWindow(Z)V

    goto :goto_21

    .line 903
    :cond_29
    iget-object v0, p0, mTrashAnimationEffect:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    invoke-virtual {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->hideTrash()V

    .line 904
    invoke-direct {p0, p1}, updateRotationChanged(Landroid/graphics/Rect;)V

    goto :goto_21
.end method
